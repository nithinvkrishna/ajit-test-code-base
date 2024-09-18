#AJIT_IP constraints for Versal ACAP VCK190
#---------------------------------------------------------------------------
#Silicon Labs SI570BAB002038DG (10 MHz-945 MHz range,100.000 MHz default)

#set_property PACKAGE_PIN AE42 [get_ports {clk_p}]
#set_property IOSTANDARD DIFF_SSTL12 [get_ports {clk_p}]

#set_property PACKAGE_PIN AF43 [get_ports {clk_n}]
#set_property IOSTANDARD DIFF_SSTL12 [get_ports {clk_n}]
#----------------------------------------------------
#SW4-GPIO_PB0 (used for clk-reset)
set_property    PACKAGE_PIN G37         [get_ports {reset_clk}]                 
set_property    IOSTANDARD LVCMOS18     [get_ports {reset_clk}]              

#-----------------------------------------------------------------------------------
#SW5-GPIO_PB1  (used for power-reset)
set_property    PACKAGE_PIN G36         [get_ports {reset}]              
set_property    IOSTANDARD LVCMOS18     [get_ports {reset}]             

#------------------------------------------------------------------------------------------------------------------------
#PSMIO-46-47 UART1-ttyUSB1
#set_property PACKAGE_PIN  C17   [get_ports {DEBUG_UART_TX}]			
#	set_property IOSTANDARD LVCMOS18 [get_ports {DEBUG_UART_TX}]
#set_property PACKAGE_PIN E17 [get_ports {DEBUG_UART_RX}]			
	#set_property IOSTANDARD LVCMOS18 [get_ports {DEBUG_UART_RX}]
#---------------------------------------------------------------------------------------------	    
#LEDs

set_property PACKAGE_PIN L35 [get_ports {CPU_MODE[1]}]					
set_property IOSTANDARD LVCMOS18 [get_ports {CPU_MODE[1]}]
    
set_property PACKAGE_PIN K36 [get_ports {CPU_MODE[0]}]					
    set_property IOSTANDARD LVCMOS18 [get_ports {CPU_MODE[0]}]
#--------------------------------------------------------------------------------------------------------------------

#SERIAL Tx Rx on PMOD header.

#set_property PACKAGE_PIN W17 [get_ports {SERIAL_UART_RX}]			
#	set_property IOSTANDARD LVCMOS15 [get_ports {SERIAL_UART_RX}]
#set_property PACKAGE_PIN W5 [get_ports {SERIAL_UART_TX}]			
#	set_property IOSTANDARD LVCMOS15 [get_ports {SERIAL_UART_TX}]
#PPSMIO-42-43 UART1 - ttyUSB2	
#set_property    PACKAGE_PIN L33         [get_ports {SERIAL_UART_RX}] 
#set_property    IOSTANDARD LVCMOS18     [get_ports {SERIAL_UART_RX}]  
#set_property    PACKAGE_PIN K33         [get_ports {SERIAL_UART_TX}]      
#set_property    IOSTANDARD LVCMOS18     [get_ports {SERIAL_UART_TX}]  