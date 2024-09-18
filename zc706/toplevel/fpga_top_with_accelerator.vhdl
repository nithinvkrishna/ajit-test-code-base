library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library unisim;
use unisim.vcomponents.all; -- for 7-series FPGA's

library simpleI2CLib;
use simpleI2CLib.i2cBaseComponents.all;

library simpleUartLib;
use simpleUartLib.uartPackage.all;

library myUartLib;
use myUartLib.myUartPackage.all;

entity fpga_top is
port(
      DEBUG_UART_RX : in std_logic;
      DEBUG_UART_TX : out std_logic;
      SERIAL_UART_RX : in std_logic;
      SERIAL_UART_TX : out std_logic;
      CPU_MODE : out std_logic_vector(1 downto 0);
      clk_p,clk_n, reset,reset_clk: in std_logic);
end entity fpga_top;

architecture structure of fpga_top is

	component processor_1x1x32_lite is -- 
  		port(  
			-- Thread reset bits.
			--  (0) is power on reset.
    			THREAD_RESET : in std_logic_vector(3 downto 0);
			-- Thread mode bits (bottom 2 to be used).
			--   00 uninitialized, 01 in reset, 10 running, 11 error (halted)
    			PROCESSOR_MODE : out std_logic_vector(15 downto 0);
			-- accelerator memory access interface 
    			ACCELERATOR_MEM_REQUEST_pipe_write_data : in std_logic_vector(109 downto 0);
    			ACCELERATOR_MEM_REQUEST_pipe_write_req  : in std_logic_vector(0  downto 0);
    			ACCELERATOR_MEM_REQUEST_pipe_write_ack  : out std_logic_vector(0  downto 0);
    			ACCELERATOR_MEM_RESPONSE_pipe_read_data : out std_logic_vector(64 downto 0);
    			ACCELERATOR_MEM_RESPONSE_pipe_read_req  : in std_logic_vector(0  downto 0);
    			ACCELERATOR_MEM_RESPONSE_pipe_read_ack  : out std_logic_vector(0  downto 0);
    			EXTERNAL_INTERRUPT : in std_logic_vector(0 downto 0);
			-- additional peripherals in the address range 0xffff0000 to 0xffffffff.
    			AFB_PERIPHERAL_EXTENSION_REQUEST_pipe_read_data : out std_logic_vector(73 downto 0);
    			AFB_PERIPHERAL_EXTENSION_REQUEST_pipe_read_req  : in std_logic_vector(0  downto 0);
    			AFB_PERIPHERAL_EXTENSION_REQUEST_pipe_read_ack  : out std_logic_vector(0  downto 0);
    			AFB_PERIPHERAL_EXTENSION_RESPONSE_pipe_write_data : in std_logic_vector(32 downto 0);
    			AFB_PERIPHERAL_EXTENSION_RESPONSE_pipe_write_req  : in std_logic_vector(0  downto 0);
    			AFB_PERIPHERAL_EXTENSION_RESPONSE_pipe_write_ack  : out std_logic_vector(0  downto 0);
			-- serial console interface.
    			CONSOLE_to_SERIAL_RX_pipe_write_data : in std_logic_vector(7 downto 0);
    			CONSOLE_to_SERIAL_RX_pipe_write_req  : in std_logic_vector(0  downto 0);
    			CONSOLE_to_SERIAL_RX_pipe_write_ack  : out std_logic_vector(0  downto 0);
    			SERIAL_TX_to_CONSOLE_pipe_read_data : out std_logic_vector(7 downto 0);
    			SERIAL_TX_to_CONSOLE_pipe_read_req  : in std_logic_vector(0  downto 0);
    			SERIAL_TX_to_CONSOLE_pipe_read_ack  : out std_logic_vector(0  downto 0);
			-- I2C
    			I2C_SCL_PULL_DOWN : out std_logic_vector(0 downto 0);
    			I2C_SDA_PULL_DOWN : out std_logic_vector(0 downto 0);
    			I2C_SCL_IN : in std_logic_vector(0 downto 0);
    			I2C_SDA_IN : in std_logic_vector(0 downto 0);
			-- GPIO 32 + 32
    			GPIO_DIN : in std_logic_vector(31 downto 0);
    			GPIO_DOUT : out std_logic_vector(31 downto 0);
			-- SPI master
		        SPI_MISO : in std_logic_vector(0 downto 0);
 			SPI_CLK : out std_logic_vector(0 downto 0);
    			SPI_CS_L : out std_logic_vector(7 downto 0);
    			SPI_MOSI : out std_logic_vector(0 downto 0);
			-- Debugger UART interface..
    			SOC_MONITOR_to_DEBUG_pipe_write_data : in std_logic_vector(7 downto 0);
    			SOC_MONITOR_to_DEBUG_pipe_write_req  : in std_logic_vector(0  downto 0);
    			SOC_MONITOR_to_DEBUG_pipe_write_ack  : out std_logic_vector(0  downto 0);
    			SOC_DEBUG_to_MONITOR_pipe_read_data : out std_logic_vector(7 downto 0);
    			SOC_DEBUG_to_MONITOR_pipe_read_req  : in std_logic_vector(0  downto 0);
    			SOC_DEBUG_to_MONITOR_pipe_read_ack  : out std_logic_vector(0  downto 0);
			-- system memory interface..
    			SYS_MEM_RESPONSE_pipe_write_data : in std_logic_vector(64 downto 0);
    			SYS_MEM_RESPONSE_pipe_write_req  : in std_logic_vector(0  downto 0);
    			SYS_MEM_RESPONSE_pipe_write_ack  : out std_logic_vector(0  downto 0);
    			SYS_MEM_REQUEST_pipe_read_data : out std_logic_vector(109 downto 0);
    			SYS_MEM_REQUEST_pipe_read_req  : in std_logic_vector(0  downto 0);
    			SYS_MEM_REQUEST_pipe_read_ack  : out std_logic_vector(0  downto 0);
			-- UART control bits (use if uart accepts them)..
    			UART_BAUD_FREQ : out std_logic_vector(31 downto 0);
    			UART_BAUD_LIMIT : out std_logic_vector(31 downto 0);
    			UART_SOFT_RESET : out std_logic_vector(0 downto 0);
			-- clock (rising edge is used), reset active high.
    			clk, reset: in std_logic 
    			-- 
  			);
	end component processor_1x1x32_lite;

	component acb_sram_stub is -- 
    		generic(addr_width: integer := 15);
    	  port( -- 
      		CORE_BUS_REQUEST_PIPE_WRITE_DATA : in std_logic_vector(109 downto 0);
      		CORE_BUS_REQUEST_PIPE_WRITE_REQ : in std_logic_vector(0 downto 0);
      		CORE_BUS_REQUEST_PIPE_WRITE_ACK : out std_logic_vector(0 downto 0);
      		CORE_BUS_RESPONSE_PIPE_READ_DATA : out std_logic_vector(64 downto 0);
      		CORE_BUS_RESPONSE_PIPE_READ_REQ : in std_logic_vector(0 downto 0);
      		CORE_BUS_RESPONSE_PIPE_READ_ACK : out std_logic_vector(0 downto 0);
      		clk, reset: in std_logic 
      		-- 
    		);
    		--
	end component;

        component afb_null_stub is -- 
    	  port (-- 
      		clk : in std_logic;
      		reset : in std_logic;
      		AFB_BUS_REQUEST_pipe_write_data: in std_logic_vector(73 downto 0);
      		AFB_BUS_REQUEST_pipe_write_req : in std_logic_vector(0 downto 0);
      		AFB_BUS_REQUEST_pipe_write_ack : out std_logic_vector(0 downto 0);
      		AFB_BUS_RESPONSE_pipe_read_data: out std_logic_vector(32 downto 0);
      		AFB_BUS_RESPONSE_pipe_read_req : in std_logic_vector(0 downto 0);
      		AFB_BUS_RESPONSE_pipe_read_ack : out std_logic_vector(0 downto 0)); -- 
    		-- 
  	end component;

        component accelerator is  -- system 
  	  port (-- 
    		clk : in std_logic;
    		reset : in std_logic;
    		ACB_ACCELERATOR_MEM_REQUEST_pipe_read_data: out std_logic_vector(109 downto 0);
    		ACB_ACCELERATOR_MEM_REQUEST_pipe_read_req : in std_logic_vector(0 downto 0);
    		ACB_ACCELERATOR_MEM_REQUEST_pipe_read_ack : out std_logic_vector(0 downto 0);
    		ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_data: in std_logic_vector(64 downto 0);
    		ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_req : in std_logic_vector(0 downto 0);
    		ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_ack : out std_logic_vector(0 downto 0);
    		ACCELERATOR_INTERRUPT: out std_logic_vector(0 downto 0);
    		AFB_ACCELERATOR_REQUEST_pipe_write_data: in std_logic_vector(73 downto 0);
    		AFB_ACCELERATOR_REQUEST_pipe_write_req : in std_logic_vector(0 downto 0);
    		AFB_ACCELERATOR_REQUEST_pipe_write_ack : out std_logic_vector(0 downto 0);
    		AFB_ACCELERATOR_RESPONSE_pipe_read_data: out std_logic_vector(32 downto 0);
    		AFB_ACCELERATOR_RESPONSE_pipe_read_req : in std_logic_vector(0 downto 0);
    		AFB_ACCELERATOR_RESPONSE_pipe_read_ack : out std_logic_vector(0 downto 0)); -- 
	end component; 
	--------------------------------------------------------------
	-- reset, mode (note: ajit debug monitor will be in charge.
	--------------------------------------------------------------
    	signal THREAD_RESET : std_logic_vector(3 downto 0);
    	signal PROCESSOR_MODE : std_logic_vector(15 downto 0);

	--------------------------------------------------------------
	-- UART control..
	--------------------------------------------------------------
    	signal UART_BAUD_FREQ : std_logic_vector(31 downto 0);
    	signal UART_BAUD_LIMIT : std_logic_vector(31 downto 0);
    	signal UART_SOFT_RESET : std_logic_vector(0 downto 0);

	--------------------------------------------------------------
	-- External interrupt.
	--------------------------------------------------------------
    	signal EXTERNAL_INTERRUPT : std_logic_vector(0 downto 0);
	
	-------------------------------------------------------------------------
	-- SERIAL (FIFO from processor to UART)
	-------------------------------------------------------------------------
    	signal CONSOLE_to_SERIAL_RX_pipe_write_data :std_logic_vector(7 downto 0);
    	signal CONSOLE_to_SERIAL_RX_pipe_write_req  :std_logic_vector(0  downto 0);
    	signal CONSOLE_to_SERIAL_RX_pipe_write_ack  :std_logic_vector(0  downto 0);
    	signal SERIAL_TX_to_CONSOLE_pipe_read_data :std_logic_vector(7 downto 0);
    	signal SERIAL_TX_to_CONSOLE_pipe_read_req  :std_logic_vector(0  downto 0);
    	signal SERIAL_TX_to_CONSOLE_pipe_read_ack  :std_logic_vector(0  downto 0);
	-------------------------------------------------------------------------
	-- Debug comand FIFO (from debug UART to processor)
	-------------------------------------------------------------------------
    	signal SOC_MONITOR_to_DEBUG_pipe_write_data :std_logic_vector(7 downto 0);
    	signal SOC_MONITOR_to_DEBUG_pipe_write_req  :std_logic_vector(0  downto 0);
    	signal SOC_MONITOR_to_DEBUG_pipe_write_ack  :std_logic_vector(0  downto 0);
	-------------------------------------------------------------------------
	-- Debug response FIFO (from processor to debug UART)
	-------------------------------------------------------------------------
    	signal SOC_DEBUG_to_MONITOR_pipe_read_data :std_logic_vector(7 downto 0);
    	signal SOC_DEBUG_to_MONITOR_pipe_read_req  :std_logic_vector(0  downto 0);
    	signal SOC_DEBUG_to_MONITOR_pipe_read_ack  :std_logic_vector(0  downto 0);

	--------------------------------------------------------------
	-- 32-bit GPIO.
	--------------------------------------------------------------
    	signal GPIO_DIN : std_logic_vector(31 downto 0);
    	signal GPIO_DOUT : std_logic_vector(31 downto 0);

	--------------------------------------------------------------
	-- I2C master connections
	--------------------------------------------------------------
    	signal I2C_SCL_PULL_DOWN : std_logic;
    	signal I2C_SDA_PULL_DOWN : std_logic;

	signal I2C_SDA_RESOLVED : std_logic;
	signal I2C_SCL_RESOLVED : std_logic;

	signal I2C_SCL_SLAVE_OUT : std_logic;
	signal I2C_SDA_SLAVE_OUT : std_logic;

	--------------------------------------------------------------
	-- SPI master connections
	--------------------------------------------------------------
	signal SPI_MISO : std_logic_vector(0 downto 0);
	signal SPI_CLK  : std_logic_vector(0 downto 0);
	signal SPI_CS_L : std_logic_vector(7 downto 0);
	signal SPI_MOSI : std_logic_vector(0 downto 0);

	-------------------------------------------------------------------------------------
	-- Accelerator hookup to processor.
	-------------------------------------------------------------------------------------
	signal ACCELERATOR_MEM_REQUEST_pipe_write_data : std_logic_vector(109 downto 0);
    	signal ACCELERATOR_MEM_REQUEST_pipe_write_req  : std_logic_vector(0  downto 0);
    	signal ACCELERATOR_MEM_REQUEST_pipe_write_ack  : std_logic_vector(0  downto 0);
    	signal ACCELERATOR_MEM_RESPONSE_pipe_read_data : std_logic_vector(64 downto 0);
    	signal ACCELERATOR_MEM_RESPONSE_pipe_read_req  : std_logic_vector(0  downto 0);
    	signal ACCELERATOR_MEM_RESPONSE_pipe_read_ack  : std_logic_vector(0  downto 0);
    			
	-------------------------------------------------------------------------------------
	-- Extension bus to connect additional peripherals (accessible from CPU only)
	-------------------------------------------------------------------------------------
	signal AFB_PERIPHERAL_EXTENSION_REQUEST_pipe_read_data : std_logic_vector(73 downto 0);
    	signal AFB_PERIPHERAL_EXTENSION_REQUEST_pipe_read_req  : std_logic_vector(0  downto 0);
    	signal AFB_PERIPHERAL_EXTENSION_REQUEST_pipe_read_ack  : std_logic_vector(0  downto 0);
    	signal AFB_PERIPHERAL_EXTENSION_RESPONSE_pipe_write_data : std_logic_vector(32 downto 0);
    	signal AFB_PERIPHERAL_EXTENSION_RESPONSE_pipe_write_req  : std_logic_vector(0  downto 0);
    	signal AFB_PERIPHERAL_EXTENSION_RESPONSE_pipe_write_ack  : std_logic_vector(0  downto 0);

	-------------------------------------------------------------------------------------
	-- System memory bus (accessible to CPU as well as accelerator).
	-------------------------------------------------------------------------------------
    	signal SYS_MEM_RESPONSE_pipe_write_data : std_logic_vector(64 downto 0);
    	signal SYS_MEM_RESPONSE_pipe_write_req  : std_logic_vector(0  downto 0);
    	signal SYS_MEM_RESPONSE_pipe_write_ack  : std_logic_vector(0  downto 0);
    	signal SYS_MEM_REQUEST_pipe_read_data : std_logic_vector(109 downto 0);
    	signal SYS_MEM_REQUEST_pipe_read_req  : std_logic_vector(0  downto 0);
    	signal SYS_MEM_REQUEST_pipe_read_ack  : std_logic_vector(0  downto 0);

	component clockzc706_clk_wiz_0_0
  		port
   			 (
    clk_in1_n : in STD_LOGIC;
    clk_in1_p : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC;
    reset : in STD_LOGIC);
	end component;

	signal reset1,reset2,reset_sync, reset_sync_n: std_logic;
	signal CLK,lock:std_logic;
begin
	clocking : clockzc706_clk_wiz_0_0
   		port map ( 
  			-- Clock out ports  
   			clk_out1 => CLK,
  			-- Status and control signals                
   			reset => reset_clk,
   			locked => lock,
   			-- Clock in ports
   			clk_in1_p => clk_p,
   			clk_in1_n => clk_n
 		);

	processor_inst: processor_1x1x32_lite
		port map (
			-----------------------------------------------------------
			-- Thread reset bits.
			--  (0) is power on reset.
			-----------------------------------------------------------
    			THREAD_RESET => THREAD_RESET,
			-----------------------------------------------------------
			-- Thread mode bits (bottom 2 to be used).
			--   00 uninitialized, 01 in reset, 10 running, 11 error (halted)
			-----------------------------------------------------------
			PROCESSOR_MODE => PROCESSOR_MODE,
			-------------------------------------------------------------------------
			-- accelerator memory access interface 
			-------------------------------------------------------------------------
    			ACCELERATOR_MEM_REQUEST_pipe_write_data  => ACCELERATOR_MEM_REQUEST_pipe_write_data ,
    			ACCELERATOR_MEM_REQUEST_pipe_write_req  => ACCELERATOR_MEM_REQUEST_pipe_write_req ,
    			ACCELERATOR_MEM_REQUEST_pipe_write_ack  => ACCELERATOR_MEM_REQUEST_pipe_write_ack ,
    			ACCELERATOR_MEM_RESPONSE_pipe_read_data  => ACCELERATOR_MEM_RESPONSE_pipe_read_data ,
    			ACCELERATOR_MEM_RESPONSE_pipe_read_req   => ACCELERATOR_MEM_RESPONSE_pipe_read_req  ,
    			ACCELERATOR_MEM_RESPONSE_pipe_read_ack  => ACCELERATOR_MEM_RESPONSE_pipe_read_ack ,
    			EXTERNAL_INTERRUPT  => EXTERNAL_INTERRUPT ,
			-------------------------------------------------------------------------
			-- AFB interface to be used for configuring accelerator..
			-------------------------------------------------------------------------
    			AFB_PERIPHERAL_EXTENSION_REQUEST_pipe_read_data  => AFB_PERIPHERAL_EXTENSION_REQUEST_pipe_read_data ,
    			AFB_PERIPHERAL_EXTENSION_REQUEST_pipe_read_req   => AFB_PERIPHERAL_EXTENSION_REQUEST_pipe_read_req  ,
    			AFB_PERIPHERAL_EXTENSION_REQUEST_pipe_read_ack   => AFB_PERIPHERAL_EXTENSION_REQUEST_pipe_read_ack  ,
    			AFB_PERIPHERAL_EXTENSION_RESPONSE_pipe_write_data  => AFB_PERIPHERAL_EXTENSION_RESPONSE_pipe_write_data ,
    			AFB_PERIPHERAL_EXTENSION_RESPONSE_pipe_write_req   => AFB_PERIPHERAL_EXTENSION_RESPONSE_pipe_write_req  ,
    			AFB_PERIPHERAL_EXTENSION_RESPONSE_pipe_write_ack   => AFB_PERIPHERAL_EXTENSION_RESPONSE_pipe_write_ack  ,
			-------------------------------------------------------------------------
			-- system memory interface.	
			-------------------------------------------------------------------------
    			SYS_MEM_RESPONSE_pipe_write_data => SYS_MEM_RESPONSE_pipe_write_data ,
    			SYS_MEM_RESPONSE_pipe_write_req => SYS_MEM_RESPONSE_pipe_write_req ,
    			SYS_MEM_RESPONSE_pipe_write_ack => SYS_MEM_RESPONSE_pipe_write_ack ,
    			SYS_MEM_REQUEST_pipe_read_data => SYS_MEM_REQUEST_pipe_read_data ,
    			SYS_MEM_REQUEST_pipe_read_req => SYS_MEM_REQUEST_pipe_read_req ,
    			SYS_MEM_REQUEST_pipe_read_ack => SYS_MEM_REQUEST_pipe_read_ack ,
			-------------------------------------------------------------------------
			-- SERIAL  (FIFO from processor to UART)
			-------------------------------------------------------------------------
    			CONSOLE_to_SERIAL_RX_pipe_write_data => CONSOLE_to_SERIAL_RX_pipe_write_data ,
    			CONSOLE_to_SERIAL_RX_pipe_write_req  => CONSOLE_to_SERIAL_RX_pipe_write_req  ,
    			CONSOLE_to_SERIAL_RX_pipe_write_ack  => CONSOLE_to_SERIAL_RX_pipe_write_ack  ,
			-------------------------------------------------------------------------
			-- SERIAL  (FIFO from UART to processor)
			-------------------------------------------------------------------------
    			SERIAL_TX_to_CONSOLE_pipe_read_data  => SERIAL_TX_to_CONSOLE_pipe_read_data ,
    			SERIAL_TX_to_CONSOLE_pipe_read_req   => SERIAL_TX_to_CONSOLE_pipe_read_req  ,
    			SERIAL_TX_to_CONSOLE_pipe_read_ack   => SERIAL_TX_to_CONSOLE_pipe_read_ack  ,
			-------------------------------------------------------------------------
			-- Debug comand FIFO (from debug UART to processor)
			-------------------------------------------------------------------------
    			SOC_MONITOR_to_DEBUG_pipe_write_data => SOC_MONITOR_to_DEBUG_pipe_write_data ,
    			SOC_MONITOR_to_DEBUG_pipe_write_req  => SOC_MONITOR_to_DEBUG_pipe_write_req  ,
    			SOC_MONITOR_to_DEBUG_pipe_write_ack  => SOC_MONITOR_to_DEBUG_pipe_write_ack  ,
			-------------------------------------------------------------------------
			-- Debug response FIFO (from processor to debug UART)
			-------------------------------------------------------------------------
    			SOC_DEBUG_to_MONITOR_pipe_read_data  => SOC_DEBUG_to_MONITOR_pipe_read_data ,
    			SOC_DEBUG_to_MONITOR_pipe_read_req   => SOC_DEBUG_to_MONITOR_pipe_read_req  ,
    			SOC_DEBUG_to_MONITOR_pipe_read_ack   => SOC_DEBUG_to_MONITOR_pipe_read_ack  ,
			-------------------------------------------------------------------------
			-- GPIO
			-------------------------------------------------------------------------
    			GPIO_DIN => GPIO_DIN,
    			GPIO_DOUT  => GPIO_DOUT,
			-------------------------------------------------------------------------
			-- UART control..
			-------------------------------------------------------------------------
    			UART_BAUD_FREQ => UART_BAUD_FREQ,
    			UART_BAUD_LIMIT => UART_BAUD_LIMIT,
    			UART_SOFT_RESET => UART_SOFT_RESET,
			-------------------------------------------------------------------------
			-- I2C
			-------------------------------------------------------------------------
    			I2C_SCL_IN(0) => I2C_SCL_RESOLVED ,
    			I2C_SDA_IN(0) => I2C_SDA_RESOLVED ,
    			I2C_SCL_PULL_DOWN(0) => I2C_SCL_PULL_DOWN ,
    			I2C_SDA_PULL_DOWN(0) => I2C_SDA_PULL_DOWN ,
			-------------------------------------------------------------------------
			-- SPI
			-------------------------------------------------------------------------
			SPI_MISO => SPI_MISO,
			SPI_CLK  => SPI_CLK,
			SPI_CS_L => SPI_CS_L,
			SPI_MOSI => SPI_MOSI,
    			CLK => CLK, RESET => RESET_SYNC
		);

	-- fixed code to check.
	GPIO_DIN <= x"12345678";

	-- no SPI device..
	SPI_MISO(0) <= '0';
			
	-----------------------------------------------------------------
	-- reset, mode.
	-----------------------------------------------------------------
	CPU_MODE <= PROCESSOR_MODE(1 downto 0);
	THREAD_RESET(0) <= RESET_SYNC;
	THREAD_RESET(1) <= '0';
	THREAD_RESET(2) <= '0';
	THREAD_RESET(3) <= '0';
	

	-----------------------------------------------------------------
	-- I2C slave etc.
	-----------------------------------------------------------------
	i2c_slave_mem_inst: I2CSLAVEMEM
			port map (MCLK => clk,
					nRST => reset_sync_n,
					SDA_IN => I2C_SDA_RESOLVED,
					SCL_IN => I2C_SCL_RESOLVED,
					SDA_OUT => I2C_SDA_SLAVE_OUT,
					SCL_OUT => I2C_SCL_SLAVE_OUT);

	I2C_SDA_RESOLVED <= (not I2C_SDA_PULL_DOWN) and I2C_SDA_SLAVE_OUT;
	I2C_SCL_RESOLVED <= (not I2C_SCL_PULL_DOWN) and I2C_SCL_SLAVE_OUT;

	-----------------------------------------------------------------
	-- Debug uart
	-----------------------------------------------------------------
	debug_uart_inst:
		mySelfTuningUart
			port map (
					CLK => CLK, RESET => reset_sync,
					UART_RX(0) => DEBUG_UART_RX,
					UART_TX(0) => DEBUG_UART_TX,
					TX_to_CONSOLE_pipe_write_data => 
							SOC_DEBUG_to_MONITOR_pipe_read_data,
					TX_to_CONSOLE_pipe_write_req => 
							SOC_DEBUG_to_MONITOR_pipe_read_ack,
					TX_to_CONSOLE_pipe_write_ack => 
							SOC_DEBUG_to_MONITOR_pipe_read_req,
					CONSOLE_to_RX_pipe_read_data  => 
							SOC_MONITOR_to_DEBUG_pipe_write_data ,
					CONSOLE_to_RX_pipe_read_req  => 
							SOC_MONITOR_to_DEBUG_pipe_write_ack ,
					CONSOLE_to_RX_pipe_read_ack => 
							SOC_MONITOR_to_DEBUG_pipe_write_req
				);

	serial_uart_inst:
	 	uartTopPortConfigurableExt
			port map (
					CLK => CLK, RESET => RESET_SYNC,
					SOFT_RESET => UART_SOFT_RESET(0),
					serIn => SERIAL_UART_RX,
					serOut => SERIAL_UART_TX,
					baudFreq => UART_BAUD_FREQ,
					baudLimit => UART_BAUD_LIMIT,
					uart_tx_pipe_write_data => SERIAL_TX_to_CONSOLE_pipe_read_data,
					uart_tx_pipe_write_req  => SERIAL_TX_to_CONSOLE_pipe_read_ack,
					uart_tx_pipe_write_ack  => SERIAL_TX_to_CONSOLE_pipe_read_req,
					uart_rx_pipe_read_data  => CONSOLE_to_SERIAL_RX_pipe_write_data ,
					uart_rx_pipe_read_req   => CONSOLE_to_SERIAL_RX_pipe_write_ack ,
					uart_rx_pipe_read_ack   => CONSOLE_to_SERIAL_RX_pipe_write_req
				);


			
	-----------------------------------------------------------------
	-- ACB SRAM stub 
	-----------------------------------------------------------------
	sram_inst:
		acb_sram_stub
			-- 1024 KB
			generic map (addr_width => 20)
			port map 
			(
      				CORE_BUS_REQUEST_PIPE_WRITE_DATA  => SYS_MEM_REQUEST_pipe_read_data,
      				CORE_BUS_REQUEST_PIPE_WRITE_REQ   => SYS_MEM_REQUEST_pipe_read_ack,
      				CORE_BUS_REQUEST_PIPE_WRITE_ACK   => SYS_MEM_REQUEST_pipe_read_req,
      				CORE_BUS_RESPONSE_PIPE_READ_DATA  => SYS_MEM_RESPONSE_pipe_write_data,
      				CORE_BUS_RESPONSE_PIPE_READ_REQ   => SYS_MEM_RESPONSE_pipe_write_ack,
      				CORE_BUS_RESPONSE_PIPE_READ_ACK   => SYS_MEM_RESPONSE_pipe_write_req,
      				clk => clk, reset => reset_sync
			);

	-----------------------------------------------------------------
	-- Accelerator connections..  tied off.
	-----------------------------------------------------------------
        accelerator_inst:
		accelerator 
  	  	    port map (-- 
    				clk => clk, 
    				reset => reset_sync,
    				ACB_ACCELERATOR_MEM_REQUEST_pipe_read_data => ACCELERATOR_MEM_REQUEST_pipe_write_data,
    				ACB_ACCELERATOR_MEM_REQUEST_pipe_read_req  => ACCELERATOR_MEM_REQUEST_pipe_write_ack,
    				ACB_ACCELERATOR_MEM_REQUEST_pipe_read_ack  => ACCELERATOR_MEM_REQUEST_pipe_write_req,
    				ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_data => ACCELERATOR_MEM_RESPONSE_pipe_read_data,
    				ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_req  => ACCELERATOR_MEM_RESPONSE_pipe_read_ack,
    				ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_ack  => ACCELERATOR_MEM_RESPONSE_pipe_read_req,
    				ACCELERATOR_INTERRUPT => EXTERNAL_INTERRUPT,
    				AFB_ACCELERATOR_REQUEST_pipe_write_data => AFB_PERIPHERAL_EXTENSION_REQUEST_pipe_read_data,
    				AFB_ACCELERATOR_REQUEST_pipe_write_req  => AFB_PERIPHERAL_EXTENSION_REQUEST_pipe_read_ack,
    				AFB_ACCELERATOR_REQUEST_pipe_write_ack  => AFB_PERIPHERAL_EXTENSION_REQUEST_pipe_read_req,
    				AFB_ACCELERATOR_RESPONSE_pipe_read_data => AFB_PERIPHERAL_EXTENSION_RESPONSE_pipe_write_data,
    				AFB_ACCELERATOR_RESPONSE_pipe_read_req  => AFB_PERIPHERAL_EXTENSION_RESPONSE_pipe_write_ack,
    				AFB_ACCELERATOR_RESPONSE_pipe_read_ack  => AFB_PERIPHERAL_EXTENSION_RESPONSE_pipe_write_req
			);

	-----------------------------------------------------------------
	-- Reset synchronizer.
	-----------------------------------------------------------------
 	process (CLK)
  	begin
    		if (CLK'event and CLK = '1') then
			reset_sync <= reset2;
			reset2 <= reset1;
			reset1 <= reset;
    		end if;
       end process;
       reset_sync_n <= not reset_sync;

end structure;
