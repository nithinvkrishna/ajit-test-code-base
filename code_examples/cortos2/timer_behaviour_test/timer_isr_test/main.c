// Program for finding jitter using timer interrupts
#include <stdint.h>
#include <stdio.h>
#include <ajit_access_routines.h>
#include <ajit_mt_irc.h>
#include <cortos.h>

#define TIMERCOUNT 100000
#define COUNT TIMERCOUNT
#define TIMERINITVAL ((COUNT << 1) | 1)
#define MAX_TIMER_INTERRUPTS 3 // Changed from NSAMPLES=1024 to only 3 interrupts

// === Global Variables === //
volatile int volatile timer_interrupt_counter = 0;
volatile int volatile exit_flag = 0;
volatile uint64_t volatile last_time_64 = 0;
volatile uint64_t volatile min_interval = 10000000;
volatile uint64_t volatile max_interval = 0;
volatile uint32_t volatile countdown_value = 0xFFFFFFF0;
volatile uint32_t volatile timer_init_val = TIMERINITVAL;

// === "ISR Log" Variables === //
volatile uint32_t isr_written_value = 0;
volatile uint32_t isr_read_value    = 0;
volatile uint32_t isr_match_status  = 0;
volatile uint32_t verify_ready      = 0; // Signal for main to print

/////////////////////////////
///// UTILITY FUNCTIONS /////
/////////////////////////////

void clear_and_disable_timer() {
    __ajit_write_timer_control_register_via_vmap__(0x0);
}

void enable_and_write_timer(uint32_t countdown_value) {
    __ajit_write_timer_control_register_via_vmap__(countdown_value | 1);
}

uint32_t read_timer_reg() {
    return __ajit_read_timer_control_register_via_vmap__();
}

uint32_t read_icr() {
    return __ajit_read_irc_control_register_via_bypass__();
}

uint32_t generate_next_countdown_value()
{
    // Simple variation: subtract a constant on every interrupt
    // (must ensure it never becomes 0, or you can cycle it)
    countdown_value -= 0x100;  // Decrease by 256 each time
    if (countdown_value < 0x1000) {
        countdown_value = 0xFFFFFFF0;  // Reset to high value if too low
    }
    return countdown_value;
}

void run_timer_ISR_default_example() {
    // useful for jitter measurement.
    if (timer_interrupt_counter <= MAX_TIMER_INTERRUPTS) {
        uint64_t curr_time_64 = __ajit_get_clock_time();
        if (timer_interrupt_counter > 0) {
            uint64_t interval = (curr_time_64 - last_time_64);
            if (interval < min_interval) min_interval = interval;
            if (interval > max_interval) max_interval = interval;
        }
        last_time_64 = curr_time_64;
        timer_interrupt_counter++;
    }

    if (timer_interrupt_counter >= MAX_TIMER_INTERRUPTS) {
        exit_flag = 1;
    }
}

/////////////////////////////
///// INTERRUPT HANDLER /////
/////////////////////////////

void my_timer_interrupt_handler()
{
    clear_and_disable_timer();

    uint32_t next_countdown_val = generate_next_countdown_value();
    enable_and_write_timer(next_countdown_val);

    run_timer_ISR_default_example();

    // Collect ISR log data
    isr_written_value   = countdown_value;
    isr_read_value      = read_timer_reg();
    isr_match_status    = ((isr_read_value & 0xFFFFFFFE) == (isr_written_value & 0xFFFFFFFE)); // Mask LSB

    verify_ready = 1;  // Signal main loop to print
}

/////////////////////////////
///// PROGRAM UTILITIES /////
/////////////////////////////

void configure_serial_device() {
    __ajit_serial_configure_via_vmap__(1, 1, 1);
    __ajit_serial_set_baudrate_via_vmap__(115200, CLK_FREQUENCY);
    __ajit_serial_set_uart_reset_via_vmap__(0);
    cortos_printf("[MAIN] Serial configuration completed\n");
}

void print_isr_status()
{
    if (isr_match_status) {
        cortos_printf("[ISR] [PASS] Written=0x%08X Read=0x%08X\n", isr_written_value, isr_read_value);
    } else {
        cortos_printf("[ISR] [FAIL] Written=0x%08X Read=0x%08X\n", isr_written_value, isr_read_value);
    }
}

uint32_t verify_timer_write_read(uint32_t write_val)
{
    clear_and_disable_timer();
    enable_and_write_timer(write_val);
    uint32_t read_val = read_timer_reg();
    clear_and_disable_timer();

    uint32_t match = ((read_val & 0xFFFFFFFE) == (write_val & 0xFFFFFFFE));
    isr_written_value = write_val;
    isr_read_value = read_val;
    return match;
}

/////////////////////////////
///// TEST FUNCTIONS ////////
/////////////////////////////

void test_edge_case_0xFFFFFFFF()
{
    uint32_t result = verify_timer_write_read(0xFFFFFFFF);
    if (result)
        cortos_printf("[TEST] [PASS] Edge Case 0xFFFFFFFF: Written=0x%08X Read=0x%08X\n", isr_written_value, isr_read_value);
    else
        cortos_printf("[TEST] [FAIL] Edge Case 0xFFFFFFFF: Written=0x%08X Read=0x%08X\n", isr_written_value, isr_read_value);
}

void test_edge_case_0x00000001()
{
    uint32_t result = verify_timer_write_read(0x00000001);
    if (result)
        cortos_printf("[TEST] [PASS] Edge Case 0x00000001: Written=0x%08X Read=0x%08X\n", isr_written_value, isr_read_value);
    else
        cortos_printf("[TEST] [FAIL] Edge Case 0x00000001: Written=0x%08X Read=0x%08X\n", isr_written_value, isr_read_value);
}

void test_edge_case_0x00000000()
{
    uint32_t result = verify_timer_write_read(0x00000000);
    if (result)
        cortos_printf("[TEST] [PASS] Edge Case 0x00000000: Written=0x%08X Read=0x%08X\n", isr_written_value, isr_read_value);
    else
        cortos_printf("[TEST] [FAIL] Edge Case 0x00000000: Written=0x%08X Read=0x%08X\n", isr_written_value, isr_read_value);
}

void run_edge_case_test(const char* test_name, uint32_t test_val)
{
    uint32_t result = verify_timer_write_read(test_val);
    if (result)
        cortos_printf("[TEST] [PASS] %s: Written=0x%08X Read=0x%08X\n", test_name, isr_written_value, isr_read_value);
    else
        cortos_printf("[TEST] [FAIL] %s: Written=0x%08X Read=0x%08X\n", test_name, isr_written_value, isr_read_value);
}

void run_all_timer_edge_case_tests()
{
    run_edge_case_test("Edge Case 0xFFFFFFFF", 0xFFFFFFFF);
    run_edge_case_test("Edge Case 0x00000001", 0x00000001);
    run_edge_case_test("Edge Case 0x00000000", 0x00000000);
}

/////////////////////////
///// MAIN FUNCTION /////
/////////////////////////

int main()
{
    configure_serial_device();
    cortos_printf("[MAIN] Program starting...\n");

    enableInterruptControllerAndAllInterrupts(0,0);
    cortos_printf("[MAIN] Interrupt controller enabled\n");

    uint32_t init_rd_val = read_timer_reg();
    cortos_printf("[MAIN] [INIT] TimerRead=0x%08X\n", init_rd_val);

    uint32_t init_icr_rd_val = read_icr();
    cortos_printf("[MAIN] [INIT] ICRRead=0x%08X\n", init_icr_rd_val);

    enable_and_write_timer(timer_init_val);
    cortos_printf("[MAIN] [INIT] Timer initialized with: 0x%08X\n", timer_init_val);

    // Main polling loop
    while (!exit_flag)
    {
        if (verify_ready) {
            verify_ready = 0; // Clear the flag
            print_isr_status(); // Safe print after ISR
        }
    }

    run_all_timer_edge_case_tests();

    cortos_printf("[MAIN] Program execution completed\n");
    return 0;
}

