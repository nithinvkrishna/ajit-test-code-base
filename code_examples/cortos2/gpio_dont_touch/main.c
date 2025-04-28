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
void write_to_gpio_config_register (uint32_t val)
{
	*((uint32_t*) ADDR_GPIO_CONFIG) = val;
	//__ajit_store_word_mmu_bypass__(val, ADDR_GPIO_CONFIG);	
}
uint32_t read_from_gpio_config_register (){

	uint32_t ret_val = *((uint32_t*) ADDR_GPIO_CONFIG); 
	return(ret_val);
	
	//uint32_t val = __ajit_load_word_mmu_bypass__ (ADDR_GPIO_CONFIG);
	//return(val);
}
//DOUT---------------------------------------------------------------------------------
void write_to_gpio_dout_register (uint32_t val){
	
	//__ajit_store_word_mmu_bypass__(val, ADDR_GPIO_DOUT_REGISTER);
	*((uint32_t*) ADDR_GPIO_DOUT_REGISTER) = val;
	
}
uint32_t read_from_gpio_dout_register (){
	
	//uint32_t val = __ajit_load_word_mmu_bypass__ (ADDR_GPIO_DOUT_REGISTER);
	//return(val);
	uint32_t ret_val = *((uint32_t*) ADDR_GPIO_DOUT_REGISTER); 
	return(ret_val);
}
//DIN----------------------------------------------------------------------------------------------
uint32_t read_from_gpio_din_register ()
{
	//uint32_t val = *((uint32_t*) (ACCELERATOR_REGISTERS_BASE_ADDRESS + (reg_id << 2)));
	uint32_t val = __ajit_load_word_mmu_bypass__ (ADDR_GPIO_DIN_REGISTER);
	return(val);
	//uint32_t ret_val = *((uint32_t*) ADDR_GPIO_DIN_REGISTER); 
	//return(ret_val);
}



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
	cortos_printf ("Attention!! GPIO is being configured!!\n");
	//cortos_printf ("Writing to GPIO configuration register \n");
	write_to_gpio_config_register (0xf0);//11110000 1-output, 0-input (default should have all ins)
		
	cortos_printf("GPIO is configured with value = 0x%x\n",read_from_gpio_config_register());
	write_to_gpio_dout_register(0x45);	
	cortos_printf("DOUT Register value = 0x%x\n",read_from_gpio_dout_register());
		//write_to_gpio_dout_register(0x45);	
	cortos_printf("DIN Register value = 0x%x\n",read_from_gpio_din_register());
		
	//uint32_t count = 0;
	while(1){
		//uint32_t inval = read_from_gpio_din_register ();
	 	//write_to_gpio_dout_register(inval);
		cortos_printf("GPIO_IN = 0x%x \n", read_from_gpio_din_register());
	     	//count++;
	
	}
	cortos_printf("END of Program Execution\n");
}



