#include <stdint.h>
#include <stdio.h>
#include <ajit_access_routines.h>
#include <ajit_mt_irc.h>
#include <cortos.h>

//struct for comparison
typedef struct{
char *name;
uint8_t written;
uint8_t read;
uint8_t pass;

}gpio_test;




/////////////////////////////
///// INTERRUPT HANDLER /////
/////////////////////////////

void my_timer_interrupt_handler()
{
    // Do nothing. Timer interrupts are not used in this test.
}



////////////////////////////////////
//  DATA REGISTER WRITE FUNCTION
///////////////////////////////////

void gpio_write(uint32_t w) {


    __ajit_write_gpio_32_via_vmap__(w);

}


////////////////////////////////////
//  DATA REGISTER READ FUNCTION
///////////////////////////////////

uint32_t gpio_read() {

    return __ajit_read_gpio_32_via_vmap__();

    
}



/////////////////////////////
///// GPIO_Default read
/////////////////////////////
void check_default_gpio_value() {
    uint32_t default_val = gpio_read();
    cortos_printf("Default GPIO register value: 0x%08X\n", default_val);
}




///////////////////////////////////
// GPIO_DATA_REGISTER_COMPARE
///////////////////////////////////


 gpio_test gpio_compare( const char* name,uint8_t write_val) {
    gpio_test result = {name,write_val,0,0 };

    gpio_write(write_val);
    
  result.read = gpio_read();

    result.pass = (result.read == result.written);
   
  return result;
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

configure_serial_device();

    cortos_printf("Main function starts\n");
    check_default_gpio_value();

     
    uint32_t data_write = 0x1234;

    
    
    gpio_test test_result = gpio_compare("GPIO1", data_write);

    cortos_printf("Test Name: %s\n", test_result.name);
    
    cortos_printf("Written: 0x%02X\n", test_result.written);
    cortos_printf("Read: 0x%02X\n", test_result.read);
    cortos_printf("Pass: %s\n", test_result.pass ? "Yes" : "No");  
    cortos_printf("\nTest completed\n");
    return 0;
}

