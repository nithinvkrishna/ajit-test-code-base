// Program to test timer control reg read/write
#include <stdint.h>
#include <stdio.h>
#include <ajit_access_routines.h>
#include <ajit_mt_irc.h>
#include <cortos.h>

#define TIMERCOUNT 100000
#define COUNT TIMERCOUNT
#define TIMERINITVAL ((COUNT << 1) | 1)
#define TIME_SCALE_FACTOR (1.0/CLK_FREQUENCY)
//#define NSAMPLES  1024
#define NSAMPLES  100


volatile int volatile timer_interrupt_counter = 0;
volatile int volatile exit_flag  = 0;
volatile uint64_t volatile last_time_64 = 0;

volatile uint64_t volatile min_interval  = 10000000;
volatile uint64_t volatile max_interval  = 0;

// Function prototypes
uint32_t verify_timer_reg_value(uint32_t ref_val);
uint32_t verify_timer_zero_bit(uint32_t ref_val);

void my_timer_interrupt_handler()
{
    uint32_t disable_timer_val  = 0x0 | 0;
    uint32_t enable_timer_val   = 0xF0000000 | 1; 
    cortos_printf("\nmy_timer_interrupt_handler: Entered\n");
    uint32_t icr_disable_val = 0x0;

    // reading from interrupt control register
    uint32_t icr_val;
    uint32_t icr_val_vmap;

    icr_val = __ajit_read_irc_control_register_via_bypass__();
    cortos_printf("my_timer_interrupt_handler: Entered. Interrupt control reg value(bypass) = 0x%08X\n", icr_val);
    cortos_printf("Printing bitwise value for Interrupt control reg\n");
    print_bitwise_reg_32bit(icr_val);


    //icr_val_vmap = __ajit_read_irc_control_register_via_vmap__();
    //cortos_printf("my_timer_interrupt_handler: Entered. Interrupt control reg value (vmap) = 0x%08X\n", icr_val_vmap);

    // checking if timer value is 0
    // need to do this check at the beginning of my_timer_interrupt_handler since 
    // interrupt is triggered only when counter has reached 0 - Is this the only way interrupt is raised? 
    // Need to verify interrupt behaviour as well - TODO
    uint32_t timer_zero_status;
    timer_zero_status = verify_timer_reg_value(0x00000000); // passing ref value as 0, to ensure timer reg value is 0
    
    if(timer_zero_status) {
        cortos_printf("Timer reg is 0 when interrupt_handler is invoked! \n");
    }
    else {
        cortos_printf("ERROR: Timer reg is not 0 when interrupt_handler is invoked! \n");
    }

    cortos_printf("my_timer_interrupt_handler: Loop number: %0d\n", timer_interrupt_counter);
    cortos_printf("my_timer_interrupt_handler: NSAMPLES = %0d, exit_flag = %0b\n\n", NSAMPLES, exit_flag);

    //uint32_t disable_test_passed, enable_test_passed;

	uint32_t current_timer_val = __ajit_read_timer_control_register_via_vmap__();
    cortos_printf("Before disabling, Timer Register = 0x%08X\n", current_timer_val);

    // manually clearing ICR before disabling timer
    __ajit_write_irc_control_register_via_bypass__(icr_disable_val);
    icr_val = __ajit_read_irc_control_register_via_bypass__();
    cortos_printf("ICR cleared. ICR value = 0x%08X\n", icr_val);

	//__ajit_write_timer_control_register_via_vmap__ (0x0);
    cortos_printf("disable_timer_val = 0x%08X, enable_timer_val = 0x%08X\n", disable_timer_val, enable_timer_val);
	__ajit_write_timer_control_register_via_vmap__ (disable_timer_val);
    cortos_printf("my_timer_interrupt_handler: timer control reg written manually with entry 0x%08X\n",disable_timer_val);
    icr_val = __ajit_read_irc_control_register_via_bypass__();
    cortos_printf("my_timer_interrupt_handler: Timer control reg disabled! Interrupt control reg value (bypass) = 0x%08X\n", icr_val);
    cortos_printf("Printing bitwise value for Interrupt control reg\n");
    print_bitwise_reg_32bit(icr_val);
    //icr_val_vmap = __ajit_read_irc_control_register_via_vmap__();
    //cortos_printf("my_timer_interrupt_handler: Timer control reg disabled! Interrupt control reg value (vmap) = 0x%08X\n", icr_val_vmap);


	__ajit_write_timer_control_register_via_vmap__ (enable_timer_val);
    cortos_printf("my_timer_interrupt_handler: timer control reg written manually with entry 0x%08X\n",enable_timer_val);
    icr_val = __ajit_read_irc_control_register_via_bypass__();
    cortos_printf("my_timer_interrupt_handler: Timer control reg enabled! Interrupt control reg value (bypass) = 0x%08X\n", icr_val);
    cortos_printf("Printing bitwise value for Interrupt control reg\n");
    print_bitwise_reg_32bit(icr_val);
    //icr_val_vmap = __ajit_read_irc_control_register_via_vmap__();
    //cortos_printf("my_timer_interrupt_handler: Timer control reg disabled! Interrupt control reg value (vmap) = 0x%08X\n", icr_val_vmap);


    //cortos_printf("my_timer_interrupt_handler: timer control reg cleared manually\n");

    //disable_test_passed = verify_timer_zero_bit(0x0);

    //if(disable_test_passed) {
    //    cortos_printf("Timer reg is disabled correctly\n");
    //}
    //else {
    //    cortos_printf("ERROR: Timer reg is not disabled\n");
    //}

	//// reenable the timer, right away..
	//__ajit_write_timer_control_register_via_vmap__ (TIMERINITVAL);	

    //enable_test_passed = verify_timer_zero_bit(TIMERINITVAL);
    //if(enable_test_passed) {
    //    cortos_printf("Timer reg is enabled correctly\n");
    //}
    //else {
    //    cortos_printf("ERROR: Timer reg is not enabled\n");
    //}

	if(timer_interrupt_counter <= NSAMPLES) {

		uint64_t curr_time_64 = __ajit_get_clock_time();
		if(timer_interrupt_counter > 0)
		{
			uint64_t interval =  (curr_time_64 - last_time_64);
			if(interval < min_interval)
			{
				min_interval = interval;
			}

			if(interval > max_interval)
				max_interval = interval;
		}
		last_time_64 = curr_time_64;
		timer_interrupt_counter++;
	}

	if(timer_interrupt_counter >= NSAMPLES)
		exit_flag = 1;

}

void print_bitwise_reg_32bit (uint32_t reg_val) {
    int bit_pos = 31; // Start from MSB
    while (bit_pos >= 0) {
        cortos_printf("Bit %2d: %d\n", bit_pos, (reg_val >> bit_pos) & 1);
        bit_pos--; // Move to the next lower bit
    }
    cortos_printf("\n");
}

uint32_t verify_timer_reg_value(uint32_t ref_val) {
    cortos_printf("\nverify_timer_reg_value: Entered for ref value 0x%08X\n", ref_val);

    uint32_t reg_read_val;
    reg_read_val = __ajit_read_timer_control_register_via_vmap__();

    // ignoring the enable bit for value checking
    uint32_t passed = ((reg_read_val & 0xFFFFFFFE) == (ref_val & 0xFFFFFFFE));

    if(passed) {
        cortos_printf("Timer Register value = 0x%08X, is verified\n", ref_val);
    }
    else {
        cortos_printf("ERROR: Timer Register value verification failed! Expected = 0x%08X, Actual = 0x%08X\n", ref_val, reg_read_val);
    }
    return passed;
}

uint32_t verify_timer_zero_bit(uint32_t ref_val) {
    cortos_printf("\nverify_timer_zero_bit: Entered for value 0x%08X\n", ref_val);
    uint32_t reg_read_val;
    uint32_t expected_en_bit, actual_en_bit;

    reg_read_val    = __ajit_read_timer_control_register_via_vmap__();

    // only checking bit0 - enable bit
    actual_en_bit   = reg_read_val & 0x1; 
    expected_en_bit = ref_val & 0x1;

    // only checking the enable bit
    uint32_t passed = (expected_en_bit == actual_en_bit);

    if(passed) {
        cortos_printf("verify_timer_zero_bit: Timer Register zero bit is successfully verified\n");
    }
    else {
        cortos_printf("verify_timer_zero_bit: ERROR: Timer Register zero bit verification failed!\n"); 
    }
    return passed;
}

void timer_reg_read_after_write_test(uint32_t write_val) {
    cortos_printf("\ntimer_reg_read_after_write_test: Entered for value 0x%08X\n", write_val);
    uint32_t pass_status;

    // Write to timer register
    __ajit_write_timer_control_register_via_vmap__(write_val | 1);
    pass_status = verify_timer_reg_value(write_val);

    if(pass_status) {
        cortos_printf("timer_reg_read_after_write_test(0x%08X): PASSED!\n", write_val);
    }
    else {
        cortos_printf("timer_reg_read_after_write_test(0x%08X): ERROR: FAILED!\n", write_val);
    }
}

void timer_reg_countdown_test(uint32_t countdown_val) {
    cortos_printf("\ntimer_reg_countdown_test: Entered for value 0x%08X\n", countdown_val);

    uint32_t prev_val, curr_val;
    uint32_t enable_test_passed; // checks pass status of enable bit
    uint32_t countdown_working_correct;

    // Load count down value and enable timer
    __ajit_write_timer_control_register_via_vmap__(countdown_val | 1); // Enable timer

    // checks if the enable bit is working correctly
    enable_test_passed = verify_timer_zero_bit(countdown_val | 1);
    if(enable_test_passed) {
        cortos_printf("Timer reg is enabled correctly\n");
    }
    else {
        cortos_printf("ERROR: Timer reg is not enabled\n");
    }
                                                                       
    prev_val = countdown_val;
    cortos_printf("Previous value = 0x%08X\n", prev_val);

    uint32_t cval = 0;  

    while(cval<101) {
        // read the register and update current value
        curr_val = __ajit_read_timer_control_register_via_vmap__();
        //cortos_printf("Timer value = 0x%08X\n", curr_val);
        cortos_printf("Current value = 0x%08X\n", curr_val);

       /*
       if(curr_val == 0) {
            cortos_printf("Timer has counted down to 0!\n");
            break;
        }

        // only checking error condition. no check for working or equal condition
        // may need to explore - TODO
        if(curr_val > prev_val) {
            cortos_printf("\nERROR: Countdown not working correctly!\n");
            break;
        }

        // updating prev value at the end
        prev_val = curr_val;
        */
        cval++;
    }
}

int main() {
    // enable serial 0 device..  enable_tx, enable_rx, enable_interrupts    
    __ajit_serial_configure_via_vmap__ (1, 1, 1);

    // set baud rate.
    __ajit_serial_set_baudrate_via_vmap__ (115200, CLK_FREQUENCY);

    // bring uart out of reset.
    __ajit_serial_set_uart_reset_via_vmap__ (0);

    // enable interrupt controller for the current thread.
	enableInterruptControllerAndAllInterrupts(0,0);
	
    // enable interrupt controller for the current thread.
    cortos_printf("------------------------------\n");
    cortos_printf("Starting Timer Basic Tests...\n");
    cortos_printf("------------------------------\n\n");

    // Here in read after write tests, we are not enabling countdown
    timer_reg_read_after_write_test(0x045); // Min value test
    timer_reg_read_after_write_test(0x095); // Min value test
    //timer_reg_read_after_write_test(0x00000000); // Min value test
    //timer_reg_read_after_write_test(0xFFFFFFFE); // Max value test
    //timer_reg_read_after_write_test(0x00000002); // Value = 1, since bit0 is en bit
    //timer_reg_read_after_write_test(0x00000000); // Value = 0, since bit0 is en bit

    //// countdown explicitely enabled only here
    //timer_reg_countdown_test(0x0000000A);

    cortos_printf("------------------------------\n");
    cortos_printf("Timer Tests Completed.\n");
    cortos_printf("------------------------------\n\n");
    return(0);
}
