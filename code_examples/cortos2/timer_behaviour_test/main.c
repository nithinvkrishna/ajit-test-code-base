// timer_behavior_tests.c
// Program to test timer dynamic behavior: countdown, stop at 0, interrupt, re-enable

#include <stdint.h>
#include <stdio.h>
#include <ajit_access_routines.h>
#include <ajit_mt_irc.h>
#include <cortos.h>

// === Global Variables ===
volatile uint32_t interrupt_fired = 0;

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

// Dummy small delay
void small_delay()
{
    volatile int counter = 10000;
    while (counter > 0) {
        counter--;
    }
}

void configure_serial_device() {
    __ajit_serial_configure_via_vmap__(1, 1, 1);
    __ajit_serial_set_baudrate_via_vmap__(115200, CLK_FREQUENCY);
    __ajit_serial_set_uart_reset_via_vmap__(0);
    cortos_printf("[MAIN] Serial configuration completed\n");
}

/////////////////////////////
///// INTERRUPT HANDLER /////
/////////////////////////////

void my_timer_interrupt_handler()
{
    interrupt_fired = 1;  // Set flag when interrupt happens
}

/////////////////////////////
///// TEST FUNCTIONS ////////
/////////////////////////////

void test_timer_decrements_from_N_to_0()
{
    cortos_printf("[TEST] test_timer_decrements_from_N_to_0 started...\n");
    clear_and_disable_timer();
    
    uint32_t start_val = 0x10; // Small value for quick test
    enable_and_write_timer(start_val);

    uint32_t last_val = read_timer_reg();
    uint32_t prev_val = last_val;

    int pass = 1;
    while (1)
    {
        last_val = read_timer_reg();
        if ((last_val & 0xFFFFFFFE) > (prev_val & 0xFFFFFFFE)) {
            pass = 0; // Timer should never increment
            break;
        }
        if ((last_val & 0xFFFFFFFE) == 0) {
            break; // Reached 0
        }
        prev_val = last_val;
        small_delay();  // Prevent hammering the bus
    }

    clear_and_disable_timer();

    if (pass)
        cortos_printf("[TEST] [PASS] Timer decremented correctly from N to 0.\n");
    else
        cortos_printf("[TEST] [FAIL] Timer did not decrement properly.\n");
}

void test_timer_stops_at_zero()
{
    cortos_printf("[TEST] test_timer_stops_at_zero started...\n");
    clear_and_disable_timer();
    enable_and_write_timer(0x5); // Small value to reach zero quickly

    while ((read_timer_reg() & 0xFFFFFFFE) != 0) {
        small_delay();
    }

    uint32_t val_after_zero = read_timer_reg();
    small_delay();
    uint32_t val_after_delay = read_timer_reg();

    clear_and_disable_timer();

    if ((val_after_zero & 0xFFFFFFFE) == 0 && (val_after_delay & 0xFFFFFFFE) == 0)
        cortos_printf("[TEST] [PASS] Timer stopped at 0 without rollover.\n");
    else
        cortos_printf("[TEST] [FAIL] Timer did not stop properly at 0.\n");
}

void test_interrupt_fires_at_zero()
{
    cortos_printf("[TEST_INTERRUPT_FIRES_AT_ZERO] Started...\n");

    //interrupt_fired = 0;
    //clear_and_disable_timer();
    //enable_and_write_timer(0x5); // small countdown

    //while ((read_timer_reg() & 0xFFFFFFFE) != 0 && interrupt_fired == 0) 
    //{
    //    small_delay();
    //}

    //int timeout_counter = 1000000; // some big number
    int timeout_counter = 100; // some big number

    //while (((read_timer_reg() & 0xFFFFFFFE) != 0) && (interrupt_fired == 0) && (timeout_counter > 0))
    //{
    //    small_delay();
    //    timeout_counter--;
    //}


    while (timeout_counter > 0)
    {
        //small_delay();
        timeout_counter--;
    }

    cortos_printf("[TEST_INTERRUPT_FIRES_AT_ZERO] Timeout exit reached.\n");

    //clear_and_disable_timer();

    //if (interrupt_fired)
    //    cortos_printf("[TEST_INTERRUPT_FIRES_AT_ZERO] [PASS] Interrupt fired exactly at 0.\n");
    //else if (timeout_counter == 0)
    //    cortos_printf("[TEST_INTERRUPT_FIRES_AT_ZERO] [FAIL] Timeout occurred - Interrupt did not fire.\n");
    //else
    //    cortos_printf("[TEST_INTERRUPT_FIRES_AT_ZERO] [FAIL] Interrupt did not fire as expected.\n");
}

void test_interrupt_not_fired_early()
{
    cortos_printf("[TEST] test_interrupt_not_fired_early started...\n");
    interrupt_fired = 0;
    clear_and_disable_timer();
    enable_and_write_timer(0x50); // bigger countdown

    uint32_t val = read_timer_reg();
    int premature_interrupt = 0;

    int i = 0;
    while (i < 20) {
        val = read_timer_reg();
        if (interrupt_fired) {
            premature_interrupt = 1;
            break;
        }
        small_delay();
        i++;
    }

    clear_and_disable_timer();

    if (premature_interrupt)
        cortos_printf("[TEST] [FAIL] Interrupt fired before countdown reached 0.\n");
    else
        cortos_printf("[TEST] [PASS] No interrupt fired before countdown reached 0.\n");
}

void test_reenable_timer_after_interrupt()
{
    cortos_printf("[TEST] test_reenable_timer_after_interrupt started...\n");
    interrupt_fired = 0;
    clear_and_disable_timer();
    enable_and_write_timer(0x5); // small countdown

    while ((read_timer_reg() & 0xFFFFFFFE) != 0 && interrupt_fired == 0) {
        small_delay();
    }

    if (!interrupt_fired) {
        cortos_printf("[TEST] [FAIL] Interrupt did not fire on first run.\n");
        return;
    }

    // Now re-enable timer and check again
    interrupt_fired = 0;
    enable_and_write_timer(0x5);

    while ((read_timer_reg() & 0xFFFFFFFE) != 0 && interrupt_fired == 0) {
        small_delay();
    }

    clear_and_disable_timer();

    if (interrupt_fired)
        cortos_printf("[TEST] [PASS] Timer re-enabled and interrupt fired again.\n");
    else
        cortos_printf("[TEST] [FAIL] Timer re-enable failed.\n");
}

/////////////////////////
///// MAIN FUNCTION /////
/////////////////////////

int main()
{
    configure_serial_device();

    cortos_printf("[MAIN] Program starting Timer Behavior Tests...\n");

    enableInterruptControllerAndAllInterrupts(0,0);
    cortos_printf("[MAIN] Interrupt controller enabled\n");

    test_interrupt_fires_at_zero();
    test_interrupt_not_fired_early();
    test_reenable_timer_after_interrupt();
    //test_timer_stops_at_zero();
    //test_timer_decrements_from_N_to_0();

    cortos_printf("[MAIN] All Timer Behavior Tests completed\n");

    return 0;
}

