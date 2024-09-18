#include <stdint.h>
#include <ajit_access_routines.h>
#include <cortos.h>



void setup_serial()
{
	// enable serial 0 device..  enable_tx, enable_rx, enable_interrupts	
	__ajit_serial_configure__ (1, 1, 1);
	// set baud rate.
	__ajit_serial_set_baudrate__ (115200, CLK_FREQUENCY);
	// bring uart out of reset.
	__ajit_serial_set_uart_reset__ (0);
}



// The handler for sw trap 5.
void __t5_handler(uint32_t arg1, uint32_t arg2, uint32_t arg3)
{
	*((uint32_t*) arg2) = __ajit_load_word_from_physical_address__((uint64_t) arg1);
	cortos_printf("in __t5_handler(0x%x, 0x%x, 0x%x) = 0x%x\n", arg1, arg2, arg3, *((uint32_t*) arg2));
}

//
//
// This is the function you use to read a physical memory location 
//
void read_physical_memory (uint32_t address, uint32_t value_pointer)
{
	// create a trap.
	__AJIT_SW_TRAP(5);
}

int main()
{
	setup_serial();

	uint32_t addr;
	for(addr = 0; addr < 256; addr = addr + 4)
	{
		uint32_t val;
		read_physical_memory(addr, &val);

		cortos_printf("0x%x = phymem[0x%x]\n", val, addr);
	}

	cortos_printf("Done.\n");
	return(0);
}
