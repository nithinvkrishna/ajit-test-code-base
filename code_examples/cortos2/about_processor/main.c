#include <stdlib.h>
#include <stdint.h>
#include "ajit_access_routines.h"
#include <cortos.h>


void main_00 () 
{
	// intialize the serial device!
	__ajit_serial_configure__(1,0,0);
	__ajit_serial_set_baudrate__ (115200, 80000000);
	__ajit_serial_set_uart_reset__ (0);
	
	AjitHwThreadDescriptor descr;
	AjitPerThreadPerformanceCounters pctr;

	uint8_t core_id, thread_id;
	ajit_get_core_and_thread_id (&core_id, &thread_id);
	cortos_printf("core-id=%d, thread-id=%d\n", core_id, thread_id);

	// initialize them to 0.
	__ajit_init_thread_performance_counters(0,0,&pctr);

	uint64_t start_time = __ajit_get_clock_time();

	ajit_read_thread_descriptor(&descr);

	cortos_printf("processor descriptor: \n");
	cortos_printf("  l1-d-size : 0x%x  \n", descr.l1_dcache_size_in_KB);
	cortos_printf("  l1-i-size : 0x%x  \n", descr.l1_icache_size_in_KB);
	cortos_printf("  l1-d-assoc: 0x%x  \n", descr.log_dcache_associativity);
	cortos_printf("  l1-i-assoc: 0x%x  \n", descr.log_icache_associativity);

	__ajit_sample_thread_performance_counters (0,0, &pctr);
	cortos_printf("performance counters: \n");
	cortos_printf("   executed instr          = %d\n" , (uint32_t) pctr.executed_instruction_count); 
	cortos_printf("   skipped instr           = %d\n" , (uint32_t) pctr.skipped_instruction_count); 
	cortos_printf("   load count              = %d\n" , (uint32_t) pctr.load_count); 
	cortos_printf("   load miss count         = %d\n" , (uint32_t) pctr.load_miss_count); 
	cortos_printf("   store count             = %d\n" , (uint32_t) pctr.store_count); 
	cortos_printf("   store miss count        = %d\n" , (uint32_t) pctr.store_miss_count); 
	cortos_printf("   mispredict count        = %d\n" , (uint32_t) pctr.stream_mispredict_count); 
	cortos_printf("   trap count              = %d\n" , (uint32_t) pctr.trap_count); 
	cortos_printf("   icache access count     = %d\n" , (uint32_t) pctr.icache_access_count); 
	cortos_printf("   icache miss count       = %d\n" , (uint32_t) pctr.icache_miss_count); 

	uint64_t end_time = __ajit_get_clock_time();

	cortos_printf("\nElapsed time=%d cycles.\n", (uint32_t) (end_time - start_time));
	return(0);
	
}

