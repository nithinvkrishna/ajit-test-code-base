#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <ajit_access_routines.h>
#include <ajit_mt_irc.h>
#include <cortos.h>
#include <time.h>

#define MEM_SIZE 1048576  // 1 MB of memory
#define MEM_DIV 4096      // 4 KB blocks

#define MEM_BASE_ADDR 0x80000000  //  base address of memory

// Struct for comparison result
typedef struct {
    const char *name;
    uint8_t written;
    uint8_t read;
    uint8_t pass;
} mem_test;

// Memory operations
uint32_t mem_read(uint32_t* addr_read) {
    return *addr_read;
}

void mem_write(uint32_t data, uint32_t* addr_write) {
    *addr_write = data;
}

// Random number generator
uint32_t get_32bit_rand() {
    return ((uint32_t)rand() << 16) | (rand() & 0xFFFF);
}

// Memory compare function
mem_test mem_compare(const char* name, uint32_t write_val, uint32_t* addr) {
    mem_test result = {name, write_val, 0, 0};

    mem_write(write_val, addr);
    result.read = mem_read(addr);
    result.pass = (result.read == result.written);

    return result;
}

/////////////////////////////
///// INTERRUPT HANDLER /////
/////////////////////////////

void my_timer_interrupt_handler()
{
    // Do nothing. Timer interrupts are not used in this test.
}

/////////////////////////////////////////////////////
//UART CONFIGURATION
//////////////////////////////////////////////////

void configure_serial_device() {
    __ajit_serial_configure_via_vmap__(1, 1, 1);
    __ajit_serial_set_baudrate_via_vmap__(115200, CLK_FREQUENCY);
    __ajit_serial_set_uart_reset_via_vmap__(0);
}



// Perform memory operations
void perform_mem_operations() {
    srand(1234);  // Seed RNG

    static uint32_t i = 0;  // Persistent block counter
    uint32_t addr;
    for (addr = 0; addr < MEM_SIZE; addr += MEM_DIV) {
        uint32_t base = addr;

        uint32_t j;
        for (j = 0; j < 3; j++) {
            uint32_t rand_addr = base + rand() % MEM_DIV;
            uint32_t rand_data = get_32bit_rand();

            uint32_t* addr_ptr = (uint32_t*)(MEM_BASE_ADDR+rand_addr);

            mem_test test_result = mem_compare("memory", rand_data, addr_ptr);

            cortos_printf("Block %d, Random addr %d:%d , Write: 0x%X, Read: 0x%X, Pass: %s\n",
                          i, j, rand_addr, rand_data, test_result.read,
                          test_result.pass ? "Yes" : "No");
        }

        cortos_printf("mem_checks %d : %d\n", i, addr);
        i++;
    }
}

int main() {
    configure_serial_device();
    cortos_printf("Main function starts\n");
    perform_mem_operations();
    cortos_printf("end of execution\n");
    return 0;
}
