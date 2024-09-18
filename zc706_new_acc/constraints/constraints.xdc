
set_property PACKAGE_PIN H9 [get_ports clk_p]
set_property IOSTANDARD LVDS [get_ports clk_p]

set_property PACKAGE_PIN G9 [get_ports clk_n]
set_property IOSTANDARD LVDS [get_ports clk_n]


set_property VCCAUX_IO DONTCARE [get_ports {reset_clk}]
set_property SLEW FAST [get_ports {reset_clk}]
set_property IOSTANDARD LVCMOS25 [get_ports {reset_clk}]
set_property LOC AK25 [get_ports {reset_clk}]

set_property VCCAUX_IO DONTCARE [get_ports {reset}]
set_property SLEW FAST [get_ports {reset}]
set_property IOSTANDARD LVCMOS15 [get_ports {reset}]
set_property LOC K15 [get_ports {reset}]

#set_property PACKAGE_PIN C19 [get_ports {DEBUG_UART_TX}]					
#	set_property IOSTANDARD LVCMOS18 [get_ports {DEBUG_UART_TX}]
#set_property PACKAGE_PIN D18 [get_ports {DEBUG_UART_RX}]					
#	set_property IOSTANDARD LVCMOS18 [get_ports {DEBUG_UART_RX}]

set_property PACKAGE_PIN AB21 [get_ports {DEBUG_UART_TX}]			
	set_property IOSTANDARD LVCMOS25 [get_ports {DEBUG_UART_TX}]
set_property PACKAGE_PIN AB16 [get_ports {DEBUG_UART_RX}]			
	set_property IOSTANDARD LVCMOS25 [get_ports {DEBUG_UART_RX}]
	    
#LEDs
set_property PACKAGE_PIN Y21 [get_ports {CPU_MODE[1]}]					
	set_property IOSTANDARD LVCMOS25 [get_ports {CPU_MODE[1]}]
set_property PACKAGE_PIN W21 [get_ports {CPU_MODE[0]}]					
    set_property IOSTANDARD LVCMOS25 [get_ports {CPU_MODE[0]}]

#SERIAL Tx Rx on PMOD header.
# PMOD1_3 is for Rx, PMOD1_7 is for Tx
#
#set_property PACKAGE_PIN AB16 [get_ports {SERIAL_UART_RX}]			
#	set_property IOSTANDARD LVCMOS25 [get_ports {SERIAL_UART_RX}]
#set_property PACKAGE_PIN AC19 [get_ports {SERIAL_UART_TX}]			
#	set_property IOSTANDARD LVCMOS25 [get_ports {SERIAL_UART_TX}]


#Serial Tx Rx on P
#Tx XADC_GPIO_3
#Rx XADC_GPIO_0
set_property PACKAGE_PIN AC19 [get_ports {SERIAL_UART_RX}]			
	set_property IOSTANDARD LVCMOS15 [get_ports {SERIAL_UART_RX}]
set_property PACKAGE_PIN AC18 [get_ports {SERIAL_UART_TX}]			
	set_property IOSTANDARD LVCMOS15 [get_ports {SERIAL_UART_TX}]
