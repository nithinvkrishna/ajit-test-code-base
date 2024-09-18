set_property VCCAUX_IO DONTCARE [get_ports {reset_clk}]
set_property SLEW FAST [get_ports {reset_clk}]
set_property IOSTANDARD LVCMOS15 [get_ports {reset_clk}]
set_property LOC AA12 [get_ports {reset_clk}]

set_property VCCAUX_IO DONTCARE [get_ports {reset}]
set_property SLEW FAST [get_ports {reset}]
set_property IOSTANDARD LVCMOS15 [get_ports {reset}]
set_property LOC AG5 [get_ports {reset}]

set_property PACKAGE_PIN K24 [get_ports {DEBUG_UART_TX}]					
	set_property IOSTANDARD LVCMOS25 [get_ports {DEBUG_UART_TX}]
set_property PACKAGE_PIN M19 [get_ports {DEBUG_UART_RX}]					
	set_property IOSTANDARD LVCMOS25 [get_ports {DEBUG_UART_RX}]
	    
#LEDs
set_property PACKAGE_PIN E18 [get_ports {CPU_MODE[1]}]					
	set_property IOSTANDARD LVCMOS25 [get_ports {CPU_MODE[1]}]
set_property PACKAGE_PIN F16 [get_ports {CPU_MODE[0]}]					
    set_property IOSTANDARD LVCMOS25 [get_ports {CPU_MODE[0]}]

#SERIAL Tx Rx on XADC
#
#  on XADC header J46, we use the following pins
#     J46  pin 16      		VSS/GROUND	
#     J46  pin 17  (GPIO_1)     Rx		AA25 on FPGA
#     J46  pin 18  (GPIO_0)     Tx		AB25 on FPGA
set_property PACKAGE_PIN AA25 [get_ports {SERIAL_UART_RX}]			
	set_property IOSTANDARD LVCMOS25 [get_ports {SERIAL_UART_RX}]
set_property PACKAGE_PIN AB25 [get_ports {SERIAL_UART_TX}]			
	set_property IOSTANDARD LVCMOS25 [get_ports {SERIAL_UART_TX}]

