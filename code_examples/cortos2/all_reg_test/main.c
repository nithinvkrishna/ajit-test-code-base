#include <stdlib.h>
#include <stdint.h>
#include "ajit_access_routines.h"
#include "mp_printf.h"
#include <cortos.h>

// 16 words here.
//#define ADDR_GPIO_CONFIG 0xffff340d
//#define TEST_ARRAY_SIZE 16//

volatile int interrupt_counter = 0;
volatile int volatile interrupt_flag = 0;

//uint64_t  test_array[TEST_ARRAY_SIZE];

void setup()
{
	// configure uart
	__ajit_serial_configure__(1,0,0);
	__ajit_serial_set_baudrate__ (115200, 80000000);
	__ajit_serial_set_uart_reset__ (0);

	cortos_printf ("enabled serial.\n");

	// enable interrupt controller for the current thread.
	enableInterruptControllerAndAllInterrupts(0,0);
	//cortos_printf ("enabled interrupt controller.\n");
}
//CONFIG REGISTER-------------------------------------------------------------
void write_to_i2c_config_register (uint32_t val)
{
	*((uint32_t*) ADDR_I2C_MASTER_CONFIG_REGISTER) = val;
	//__ajit_store_word_mmu_bypass__(val, ADDR_GPIO_CONFIG);	
}
uint32_t read_from_i2c_config_register (){

	uint32_t ret_val = *((uint32_t*) ADDR_I2C_MASTER_CONFIG_REGISTER); 
	return(ret_val);
	
	//uint32_t val = __ajit_load_word_mmu_bypass__ (ADDR_GPIO_CONFIG);
	//return(val);
}
//DOUT---------------------------------------------------------------------------------




void my_external_interrupt_handler ()
{
	interrupt_counter++;

	// disable everything!
	//write_to_gpio_config_register(0x0);

	// make sure it is disabled, and set interrupt flag = 1.
	//interrupt_flag = (1 - read_from_gpio_config_register ());	
}

void main () 
{
	cortos_printf ("Attention!! I2C is being configured!!\n");
	//cortos_printf ("Writing to GPIO configuration register \n");
	write_to_i2c_config_register (0xff);//11110000 1-output, 0-input (default should have all ins)
		
	cortos_printf("I2C is configured with value = 0x%x\n",read_from_i2c_config_register());
	
	
	cortos_printf("END of Program Execution\n");
}



