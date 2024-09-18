// test the icache
//
#include <unistd.h>
#include <signal.h>
#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include <stdint.h>
#include <unistd.h>


#include <string.h>
#include "Pipes.h"
#include "pipeHandler.h"
#include "pthreadUtils.h"

#define TEST_MEM_SIZE_IN_DWORDS  8

uint32_t myLog2(uint32_t X)
{
	if(X == 1)
		return(0);
	else if(X == 2)
		return(1);


	uint32_t R = myLog2(X/2)  + 1;
	return(R);
}


// a bit of memory/
uint64_t mem_array[TEST_MEM_SIZE_IN_DWORDS];
		
void dumpMemory()
{
	fprintf(stderr,"Mem Dump.\n");
	uint32_t I;
	for(I = 0; I < TEST_MEM_SIZE_IN_DWORDS; I++)
	{
		fprintf(stderr," 0x%x 0x%llx \n", I, mem_array[I]);
	}
}

void init_memory ()
{
	int I;
	for(I = 0; I < TEST_MEM_SIZE_IN_DWORDS; I++)
		mem_array[I] = I;
}

void memoryDaemon ()
{
	while(1)
	{
		uint8_t write_bar = read_uint8("tester_mem_access_rwbar");

		// read but ignore for now..
		uint8_t byte_mask = read_uint8("tester_mem_access_bmask");

		uint32_t addr = read_uint32 ("tester_mem_access_address");
		uint64_t wdata = read_uint64 ("tester_mem_access_wdata");

		
		uint64_t rdata = 0;
		uint32_t I = (addr >> 3);
		rdata = mem_array[I];
		if(!write_bar)
		{
			mem_array[I] = wdata;
#ifdef DEBUG_PRINT
			fprintf(stderr,"memoryDaemon: mem[0x%x] = 0x%llx\n", I, wdata);
#endif
		}
		else
		{
			fprintf(stderr,"memoryDaemon: 0x%llx = mem[0x%x]\n", rdata, I);
		}

#ifdef DEBUG_PRINT
		fprintf(stderr,"memoryDaemon: 0x%x 0x%x 0x%llx 0x%llx\n",
					write_bar, addr, wdata, rdata);
#endif

		write_uint64 ("tester_mem_access_rdata", rdata);
	}
}
DEFINE_THREAD(memoryDaemon);


uint32_t accessAcceleratorRegisters (uint8_t write_bar,
					uint32_t reg_index,
					uint32_t reg_value)
{
	uint64_t cmd = write_bar;
	cmd = (cmd << 31) | reg_index;
	cmd = (cmd << 32) | reg_value;
	write_uint64 ("tester_control_command", cmd);
	uint32_t ret_val = read_uint32("tester_control_response");

#ifdef DEBUG_PRINT
	fprintf(stderr,"accessAcceleratorRegisters: 0x%x 0x%x 0x%x 0x%x\n",
					write_bar, reg_index, reg_value, ret_val);
#endif
	return(ret_val);
}


int main(int argc, char **argv)
{

	register_signal("ACCELERATOR_INTERRUPT_8",8);
	init_memory();

	// start mmu-daemon
	PTHREAD_DECL(memoryDaemon);
	PTHREAD_CREATE(memoryDaemon);

	

	accessAcceleratorRegisters(0,1, 0xffffffff);
	accessAcceleratorRegisters(0,2, 0xeeeeeeee);
	accessAcceleratorRegisters(0,3, 0xdddddddd);
	accessAcceleratorRegisters(0,4, 0xcccccccc);

	accessAcceleratorRegisters(0,5, 0x0);
	accessAcceleratorRegisters(0,6, TEST_MEM_SIZE_IN_DWORDS);

	int I;
	for(I = 0; I < 2; I++)
	{
		accessAcceleratorRegisters (0,0, 0x7);

		// wait until interrupt is 0.
		while(1)
		{
			if(!read_uint8("ACCELERATOR_INTERRUPT_8"))
				break;
			else 
				usleep(1000);
		}


		// wait until interrupt is 1
		while(1)
		{
			if(read_uint8("ACCELERATOR_INTERRUPT_8"))
				break;
			else 
				usleep(1000);
		}

		fprintf(stderr,"Post pass %d\n", I+1);
		dumpMemory();
	}

	// disable everything..
	accessAcceleratorRegisters (0,0, 0x0);

	return(0);
}

