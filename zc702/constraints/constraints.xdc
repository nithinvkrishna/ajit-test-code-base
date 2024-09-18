
set_property PACKAGE_PIN C19 [get_ports clk_p]
set_property IOSTANDARD LVDS_25 [get_ports clk_p]

set_property PACKAGE_PIN D18 [get_ports clk_n]
set_property IOSTANDARD LVDS_25 [get_ports clk_n]

#SW Left = Clk Reset
set_property VCCAUX_IO DONTCARE [get_ports {reset_clk}]
set_property SLEW FAST [get_ports {reset_clk}]
set_property IOSTANDARD LVCMOS25 [get_ports {reset_clk}]
set_property LOC G19 [get_ports {reset_clk}]

#SW Right = Power Reset
set_property VCCAUX_IO DONTCARE [get_ports {reset}]
set_property SLEW FAST [get_ports {reset}]
set_property IOSTANDARD LVCMOS15 [get_ports {reset}]
set_property LOC F19 [get_ports {reset}] 


set_property PACKAGE_PIN P17 [get_ports {DEBUG_UART_TX}]			
	set_property IOSTANDARD LVCMOS25 [get_ports {DEBUG_UART_TX}]
set_property PACKAGE_PIN P18 [get_ports {DEBUG_UART_RX}]			
	set_property IOSTANDARD LVCMOS25 [get_ports {DEBUG_UART_RX}]
	    
#LEDs
set_property PACKAGE_PIN E15 [get_ports {CPU_MODE[1]}]					
	set_property IOSTANDARD LVCMOS25 [get_ports {CPU_MODE[1]}]
set_property PACKAGE_PIN D15 [get_ports {CPU_MODE[0]}]					
    set_property IOSTANDARD LVCMOS25 [get_ports {CPU_MODE[0]}]

#SERIAL Tx Rx on PMOD header.

set_property PACKAGE_PIN W17 [get_ports {SERIAL_UART_RX}]			
	set_property IOSTANDARD LVCMOS15 [get_ports {SERIAL_UART_RX}]
set_property PACKAGE_PIN W5 [get_ports {SERIAL_UART_TX}]			
	set_property IOSTANDARD LVCMOS15 [get_ports {SERIAL_UART_TX}]
