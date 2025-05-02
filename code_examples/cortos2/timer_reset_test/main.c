// timer_isr_test.c
// Program to verify Timer behavior using interrupts (continuous reprogramming test)

#include <stdint.h>
#include <stdio.h>
#include <ajit_access_routines.h>
#include <ajit_mt_irc.h>
#include <cortos.h>

// === Global Variables === //
volatile int volatile timer_interrupt_counter = 0;
volatile int volatile exit_flag = 0;
volatile uint32_t volatile countdown_value = 0xFFFFFFF0;

// Logging all data in data structures so that they can be accurately evaluated at the end of test
typedef struct {
    uint32_t init_val;              // Initial timer value programmed at start of program
    uint32_t init_wr_val;           // Initial written value
    uint32_t init_raw_val;          // Read after write val
    uint32_t init_raw_match_status; // Initial read after write match status
    uint32_t init_icr_rd_val;       // Initial ICR reg read value
} timer_init_config_t;

typedef struct {
    //uint32_t handler_exe_count;       // Which interrupt this is (1st, 2nd, etc.)
    uint32_t timer_val_after_entry;     // Timer value when handler was entered
    uint32_t timer_val_after_clear;     // Timer value after clearing
    uint32_t new_countdown_val;         // New value programmed into timer
    uint32_t timer_raw_val;             // Read-after-write value
    uint32_t raw_match_status;          // Read-after-write match status
    uint32_t icr_value_after_entry;     // Interrupt controller register value
    uint32_t icr_value_after_write;     // Interrupt controller register value
    uint32_t psr_value_after_entry;
    uint32_t psr_value_after_write;
    uint32_t time_spent_in_handler;  // Optional: time spent in handler if you have a cycle counter
} log_data_t;

#define MAX_TIMER_INTERRUPTS 3
timer_init_config_t init_config;
log_data_t          interrupt_logs[MAX_TIMER_INTERRUPTS]; // Array to store all log data
volatile uint8_t    current_log_index = 0;


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
    countdown_value -= 0x100; // Decrease by 256 each time
    if (countdown_value < 0x1000) {
        countdown_value = 0xFFFFFFF0;  // Reset to high value if too low
    }
    return countdown_value;
}

void run_timer_ISR()
{
    timer_interrupt_counter++;
    if (timer_interrupt_counter >= MAX_TIMER_INTERRUPTS) {
        exit_flag = 1;
    }
}

// Inline function to read PSR, assembly read to C variable
inline uint32_t read_psr() {
    uint32_t psr_val;
    __asm__ __volatile__("rd %%psr, %0" : "=r"(psr_val));  // Read PSR into C variable
    return psr_val;
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

void print_status(uint32_t status, const char* name)
{
    if (status) {
        cortos_printf("[%s] [PASS] Read after write test successful for this iteration\n", name);
    }
    else {
        cortos_printf("[%s] [ERROR] Read after write test failed for this iteration\n", name);
    }
}

/////////////////////////////
///// INTERRUPT HANDLER /////
/////////////////////////////

void my_timer_interrupt_handler()
{
    // Read from ICR 
    interrupt_logs[current_log_index].icr_value_after_entry = read_icr();
    // Read from PSR
    interrupt_logs[current_log_index].psr_value_after_entry = read_psr();

    // Read immediately after entering handler
    interrupt_logs[current_log_index].timer_val_after_entry = read_timer_reg();

    // Clear and disable timer and read cleared value
    clear_and_disable_timer();
    interrupt_logs[current_log_index].timer_val_after_clear = read_timer_reg();

    // Generate new countdown value
    interrupt_logs[current_log_index].new_countdown_val = (generate_next_countdown_value() | 1); // Keeps timer enabled always, when writing new value

    // Enable timer and write new countdown value
    enable_and_write_timer(interrupt_logs[current_log_index].new_countdown_val);
    // Read value immediately after write
    interrupt_logs[current_log_index].timer_raw_val = read_timer_reg();
    // Read ICR after write
    interrupt_logs[current_log_index].icr_value_after_write = read_icr();
    // Read from PSR after write
    interrupt_logs[current_log_index].psr_value_after_write = read_psr();

    run_timer_ISR();

    // Match the new countdown value written after reading back, and set flag
    interrupt_logs[current_log_index].raw_match_status = ((interrupt_logs[current_log_index].timer_raw_val & 0xFFFFFFFE) == (interrupt_logs[current_log_index].new_countdown_val & 0xFFFFFFFE)); // LSB masked 

    // Increment the handler loop index
    current_log_index++;

}

/////////////////////////////
///// MAIN FUNCTION /////////
/////////////////////////////

int main()
{
    configure_serial_device();
    cortos_printf("[MAIN] Program starting ISR Test...\n");

    enableInterruptControllerAndAllInterrupts(0,0);
    cortos_printf("[MAIN] Interrupt controller enabled\n");

    init_config.init_val        = read_timer_reg();
    init_config.init_icr_rd_val = read_icr();
    init_config.init_wr_val     = countdown_value;
    enable_and_write_timer(countdown_value);        // Note: since its first time, we are not clearing and disabling timer before en and write
    init_config.init_raw_val    = read_timer_reg();
    
    init_config.init_raw_match_status = ((init_config.init_wr_val & 0xFFFFFFFE) == (init_config.init_raw_val & 0xFFFFFFFE)); // LSB masked  

    cortos_printf("\n");
    int j = 0;
    while (!exit_flag)
    {
        // This logic is required to print this only once. else it will keep printing as long as current_log_index is high (which stays same for one handler function lifetime)
        if(j == current_log_index) {
            cortos_printf("Program is running. Max iteration = %0d.", MAX_TIMER_INTERRUPTS);
            cortos_printf(" Current loop number: %0d\n", (current_log_index + 1));
            j += 1; 
        }
    }

    cortos_printf("\n");
    cortos_printf("Max Timer iteration reached.\n"); 
    cortos_printf("\n");
    cortos_printf("------------------------------\n");
    cortos_printf("STARTING LOG ANALYSIS...\n");
    cortos_printf("------------------------------\n");
    cortos_printf("\n");

    // Printing initial configuration data
    cortos_printf("[INITIAL CONFIG DATA LOG] init_icr_rd_val   = 0x%08X\n", init_config.init_icr_rd_val);       
    cortos_printf("[INITIAL CONFIG DATA LOG] init_val          = 0x%08X\n", init_config.init_val);              
    cortos_printf("[INITIAL CONFIG DATA LOG] init_wr_val       = 0x%08X\n", init_config.init_wr_val);           
    cortos_printf("[INITIAL CONFIG DATA LOG] init_raw_val      = 0x%08X\n", init_config.init_raw_val);          
    print_status(init_config.init_raw_match_status, "INITIAL CONFIG DATA");
    cortos_printf("\n");

    int i = 0;
    while (i < MAX_TIMER_INTERRUPTS) {
        cortos_printf("[INTERRUPT HANDLER DATA LOG] [INDEX: %0d] timer_val_after_entry = 0x%08X\n", i, interrupt_logs[i].timer_val_after_entry);  
        cortos_printf("[INTERRUPT HANDLER DATA LOG] [INDEX: %0d] timer_val_after_clear = 0x%08X\n", i, interrupt_logs[i].timer_val_after_clear);  
        cortos_printf("[INTERRUPT HANDLER DATA LOG] [INDEX: %0d] new_countdown_val     = 0x%08X\n", i, interrupt_logs[i].new_countdown_val);     
        cortos_printf("[INTERRUPT HANDLER DATA LOG] [INDEX: %0d] timer_raw_val         = 0x%08X\n", i, interrupt_logs[i].timer_raw_val);          
        cortos_printf("[INTERRUPT HANDLER DATA LOG] [INDEX: %0d] raw_match_status      = %0d\n", i, interrupt_logs[i].raw_match_status);       
        cortos_printf("[INTERRUPT HANDLER DATA LOG] [INDEX: %0d] icr_value_after_entry = 0x%08X\n", i, interrupt_logs[i].icr_value_after_entry);              
        cortos_printf("[INTERRUPT HANDLER DATA LOG] [INDEX: %0d] icr_value_after_write = 0x%08X\n", i, interrupt_logs[i].icr_value_after_write);              
        cortos_printf("[INTERRUPT HANDLER DATA LOG] [INDEX: %0d] psr_value_after_entry = 0x%08X\n", i, interrupt_logs[i].psr_value_after_entry);              
        cortos_printf("[INTERRUPT HANDLER DATA LOG] [INDEX: %0d] psr_value_after_write = 0x%08X\n", i, interrupt_logs[i].psr_value_after_write);              
        print_status(interrupt_logs[i].raw_match_status, "READ AFTER WRITE TEST");
        //cortos_printf("[FINAL DATA LOG] [INDEX = %0d] time_spent_in_handler = \n", i, interrupt_logs[i].time_spent_in_handler);  
        cortos_printf("\n");
        i++;
    }
    cortos_printf("------------------------------\n");
    cortos_printf("LOG DATA ANALYSIS COMPLETED\n");
    cortos_printf("------------------------------\n");

    cortos_printf("\n");
    cortos_printf("[MAIN] Program execution completed\n");
    return 0;
}

