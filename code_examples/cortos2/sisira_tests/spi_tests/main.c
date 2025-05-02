#include <stdint.h>
#include <stdio.h>
#include <ajit_access_routines.h>
#include <ajit_mt_irc.h>
#include <cortos.h>



/////////////////////////////
///// INTERRUPT HANDLER /////
/////////////////////////////

void my_timer_interrupt_handler()
{
    // Do nothing. Timer interrupts are not used in this test.
}


///////////////////////////////////
// REGISTER IDS
///////////////////////////////////
#define DATA0_REG_ID    0   // Data low register
#define DATA1_REG_ID    1   // Data high register                           
#define STATUS_REG_ID   2   // Status/Command register
#define CONFIG_REG_ID   3   // Config register

uint8_t config_val = (1 << 4) | 0x5; // 8-bit xfer, clk_div = 5

//struct for comparison
typedef struct{
char *name;
uint8_t written;
uint8_t read;
uint8_t pass;

}spi_test;




///////////////////////////////////
// CHECK IF SPI IS BUSY (BUSY BIT AT POSITION 0)
///////////////////////////////////
void read_spi_busybit() {
    
    uint8_t status;
    do {
        status = __ajit_read_spi_master_register_via_vmap__(STATUS_REG_ID);
    } while (status & 0x01);  // Loop while busy bit is set
}

///////////////////////////////////
// WRITE TO SPI CONFIG REGISTER
///////////////////////////////////
void spi_config_wr(uint8_t config_data) {

    __ajit_write_spi_master_register_via_vmap__(CONFIG_REG_ID, config_data);
}


///////////////////////////////////
// READ FROM SPI CONFIG REGISTER
///////////////////////////////////
uint8_t spi_config_rd() {
    uint8_t val = __ajit_read_spi_master_register_via_vmap__(CONFIG_REG_ID);
    return val;
}


///////////////////////////////////
// WRITE COMMAND TO STATUS REGISTER
///////////////////////////////////
void spi_status_reg_wr() {
    uint8_t cmd = (0x1 << 3) | (1 << 1) | (1 << 0); // Slave = 001, Deselect = 1, Start = 1
    __ajit_write_spi_master_register_via_vmap__(STATUS_REG_ID, cmd);
}

////////////////////////////////////
//  DATA REGISTER WRITE FUNCTION
///////////////////////////////////

void spi_write_data(uint8_t reg_id, uint8_t data) {

// write data to spi_config register
    spi_config_wr(config_val);
// wait until master is free
    read_spi_busybit();
 // write to spi_data register
    __ajit_write_spi_master_register_via_vmap__(reg_id, data);
//write to spi status/control register
    spi_status_reg_wr();
    // when busy bit 0 - end of transfer
    read_spi_busybit();
}


////////////////////////////////////
//  DATA REGISTER READ FUNCTION
///////////////////////////////////

uint8_t spi_read_data(uint8_t reg_id) {

    
//wait until master is free
    read_spi_busybit();
// write into status/command register
    spi_status_reg_wr();
//wait until master is free
    read_spi_busybit();
// read value from SPI master
    return __ajit_read_spi_master_register_via_vmap__(reg_id);

    
}


///////////////////////////////////
// SPI_DATA_REGISTER_COMPARE
///////////////////////////////////


spi_test spi_data_compare(uint8_t reg_id, const char* name,uint8_t write_val) {
    spi_test result = {"DATA",write_val,0,0 };

    spi_write_data(DATA0_REG_ID,write_val);
    
    result.read = spi_read_data(DATA0_REG_ID);

    result.pass = (result.read == result.written);
   
}


///////////////////////////////////
// SPI_CONFIG_REG_COMPARE
///////////////////////////////////


spi_test spi_config_compare(uint8_t config_val) {
    spi_test result = {"CONFIG",config_val,0,0};
    
    spi_config_wr(config_val);
    
    result.read = spi_config_rd();

    result.pass = (result.read == result.written);

 }
//////////////////////////////////////
//PRINT RESULT FUNCTION
///////////////////////////////////////


void print_result(spi_test result) {
    if (result.pass)
        cortos_printf("SPI %s R/W PASS: 0x%02X == 0x%02X\n", result.name, result.written, result.read);
    else
        cortos_printf("SPI %s R/W FAIL: Wrote 0x%02X, Read 0x%02X\n", result.name, result.written, result.read);
}



/////////////////////////////////////////////////////
//UART CONFIGURATION
//////////////////////////////////////////////////

void configure_serial_device() {
    __ajit_serial_configure_via_vmap__(1, 1, 1);
    __ajit_serial_set_baudrate_via_vmap__(115200, CLK_FREQUENCY);
    __ajit_serial_set_uart_reset_via_vmap__(0);
}

///////////////////////////////////////////////////
//  MAIN FUNCTION 
///////////////////////////////////////////////////

int main() {
    cortos_printf("Main function starts\n");

    configure_serial_device();
    spi_test config_result = spi_config_compare(config_val);
    spi_test spi_data0_result = spi_data_compare(DATA0_REG_ID,"DATA0",0x23);
    spi_test spi_data1_result = spi_data_compare(DATA1_REG_ID,"DATA1",0x24);

    print_result(config_result);
    print_result(spi_data0_result);
    
    print_result(spi_data1_result);
    
    cortos_printf("\nTest completed\n");
    return 0;
}

