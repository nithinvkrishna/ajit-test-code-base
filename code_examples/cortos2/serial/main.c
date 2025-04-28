#include <stdint.h>
#include <stdio.h>
#include <ajit_access_routines.h>
#include <ajit_mt_irc.h>
#include <cortos.h>

#define TEST_STRING "hello123"
#define TEST_LEN 8  // length of string (excluding null)
#define CLK_FREQUENCY 100000000  // define if not defined elsewhere

char tx_data[] = TEST_STRING;
char rx_data[TEST_LEN + 1];  // +1 for null termination
                             //
// Needed for CoRTOS linker. We're not using interrupts, so it's empty.
void my_serial_interrupt_handler() {}

// Needed if your startup calls it.
void setup()
{
	__ajit_serial_configure__ (1, 1, 0);
	__ajit_serial_set_baudrate__ (115200, CLK_FREQUENCY);
	__ajit_serial_set_uart_reset__ (0);
}

int main()
{
	int i = 0;
	setup();
	cortos_printf("Starting serial loopback test...\n");
	cortos_printf("Test string: %s\n", tx_data);

	// Send the test string
	i = 0;
	while (i < TEST_LEN)
	{
		while (!__ajit_serial_putchar__(tx_data[i])) {
			// wait until TX is ready
		}
		i++;
	}

	// Receive the echoed string
	i = 0;
	while (i < TEST_LEN)
	{
		char c = 0;
		int received = 0;
		while (!received)
			received = __ajit_serial_getchar__(&c);

		rx_data[i] = c;
		i++;
	}
	rx_data[i] = 0;  // null terminate

	// Print received string
	cortos_printf("Received: %s\n", rx_data);

	// Compare
	int pass = 1;
	for (i = 0; i < TEST_LEN; i++)
	{
		if (rx_data[i] != tx_data[i])
		{
			pass = 0;
			break;
		}
	}

	if (pass)
		cortos_printf("PASS: TX == RX\n");
	else
		cortos_printf("FAIL: TX != RX\n");

	return 0;
}

