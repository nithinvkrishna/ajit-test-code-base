// timer_edge_case_test.c
// Program to verify Timer behavior for edge case countdown values (manual write-read)

#include <stdint.h>
#include <stdio.h>
#include <ajit_access_routines.h>
#include <cortos.h>

// === Global Variables === //
volatile uint32_t ref_wr_data = 0;
volatile uint32_t actual_rd_data    = 0;

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

void configure_serial_device() {
    __ajit_serial_configure_via_vmap__(1, 1, 1);
    __ajit_serial_set_baudrate_via_vmap__(115200, CLK_FREQUENCY);
    __ajit_serial_set_uart_reset_via_vmap__(0);
    cortos_printf("[MAIN] Serial configuration completed\n");
}

uint32_t verify_timer_write_read(uint32_t write_val)
{
    clear_and_disable_timer();
    enable_and_write_timer(write_val);
    uint32_t read_val = read_timer_reg();
    clear_and_disable_timer();

    ref_wr_data     = write_val;
    actual_rd_data  = read_val;

    uint32_t match = ((read_val & 0xFFFFFFFE) == (write_val & 0xFFFFFFFE)); // LSB Masked
    return match;
}

void run_edge_case_test(const char* test_name, uint32_t test_val)
{
    uint32_t result = verify_timer_write_read(test_val);
    if (result)
        cortos_printf("[TEST] [PASS] [%s]: Written=0x%08X Read=0x%08X\n", test_name, ref_wr_data, actual_rd_data);
    else
        cortos_printf("[TEST] [FAIL] [%s]: Written=0x%08X Read=0x%08X\n", test_name, ref_wr_data, actual_rd_data);
}

void run_all_timer_edge_case_tests()
{
    run_edge_case_test("Edge Case 0xFFFFFFFF", 0xFFFFFFFF);
    run_edge_case_test("Edge Case 0x00000001", 0x00000001);
    run_edge_case_test("Edge Case 0x00000000", 0x00000000);
}

/////////////////////////////
///// INTERRUPT HANDLER /////
/////////////////////////////

void my_timer_interrupt_handler()
{
    // Do nothing. Timer interrupts are not used in this test.
}

/////////////////////////////
///// MAIN FUNCTION /////////
/////////////////////////////

int main()
{
    configure_serial_device();

    cortos_printf("[MAIN] Program starting Edge Case Tests...\n");

    run_all_timer_edge_case_tests();

    cortos_printf("[MAIN] Edge Case Tests completed\n");
    return 0;
}

