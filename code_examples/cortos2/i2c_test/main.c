#include <stdint.h>
#include <stdio.h>
#include "ajit_access_routines.h"

#define SYSTEM_CLOCK_FREQ 50000000 // Example 50 MHz
#define I2C_FREQ 100000 // Example 100 kHz
#define DEVICE_ADDRESS 0x50
#define REGISTER_ADDRESS 0x10
#define TEST_DATA 0xAB

void my_timer_interrupt_handler() {}

void main() {
    uint32_t config_status;
    uint8_t read_data;

    // Configure I2C master
    config_status = ajit_configure_i2c_master(SYSTEM_CLOCK_FREQ, I2C_FREQ);
    if (config_status != 0) {
        printf("I2C Configuration Failed\n");
        return;
    }
    printf("I2C Configured Successfully\n");

    // Write data to the register
    printf("Writing 0x%X to Device: 0x%X, Register: 0x%X\n", TEST_DATA, DEVICE_ADDRESS, REGISTER_ADDRESS);
    ajit_i2c_master_access_slave_memory_device(DEVICE_ADDRESS, 0, REGISTER_ADDRESS, TEST_DATA);

    // Wait for I2C Master to be ready
    while (!ajit_i2c_master_is_ready());

    // Read data from the register
    printf("Reading from Device: 0x%X, Register: 0x%X\n", DEVICE_ADDRESS, REGISTER_ADDRESS);
    read_data = ajit_i2c_master_access_slave_memory_device(DEVICE_ADDRESS, 1, REGISTER_ADDRESS, 0);

    // Validate the result
    printf("Read Data: 0x%X\n", read_data);
    if (read_data == TEST_DATA) {
        printf("PASS: Data matched!\n");
    } else {
        printf("FAIL: Data mismatch. Expected 0x%X, but read 0x%X\n", TEST_DATA, read_data);
    }
}

