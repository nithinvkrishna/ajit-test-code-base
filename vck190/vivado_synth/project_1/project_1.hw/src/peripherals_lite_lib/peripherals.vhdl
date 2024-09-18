library ieee;
use ieee.std_logic_1164.all;
package peripherals_Type_Package is -- 
  subtype unsigned_35_downto_0 is std_logic_vector(35 downto 0);
  subtype unsigned_0_downto_0 is std_logic_vector(0 downto 0);
  subtype unsigned_14_downto_0 is std_logic_vector(14 downto 0);
  subtype unsigned_1_downto_0 is std_logic_vector(1 downto 0);
  subtype unsigned_8_downto_0 is std_logic_vector(8 downto 0);
  subtype unsigned_2_downto_0 is std_logic_vector(2 downto 0);
  subtype unsigned_3_downto_0 is std_logic_vector(3 downto 0);
  subtype unsigned_4_downto_0 is std_logic_vector(4 downto 0);
  subtype unsigned_5_downto_0 is std_logic_vector(5 downto 0);
  -- 
end package;
library ahir;
use ahir.BaseComponents.all;
use ahir.Utilities.all;
use ahir.Subprograms.all;
use ahir.OperatorPackage.all;
use ahir.BaseComponents.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library peripherals_lite_lib;
use peripherals_lite_lib.peripherals_Type_Package.all;
entity interruptVectorGen is  -- 
  port (-- 
    EXTERNAL_INTR: in std_logic_vector(0 downto 0);
    IV: out std_logic_vector(14 downto 0);
    SERIAL_INTR: in std_logic_vector(0 downto 0);
    TIMER_INTR: in std_logic_vector(0 downto 0);
    clk, reset: in std_logic); --
  --
end entity interruptVectorGen;
architecture rtlThreadArch of interruptVectorGen is --
  type ThreadState is (s_ivg_i_state);
  signal current_thread_state : ThreadState;
  signal IV_buffer: unsigned_14_downto_0;
  constant z1: unsigned_0_downto_0 := "0";
  constant z2: unsigned_1_downto_0 := "00";
  constant z9: unsigned_8_downto_0 := "000000000";
  --
begin -- 
  IV <= IV_buffer;
  process(clk, reset, current_thread_state , EXTERNAL_INTR, SERIAL_INTR, TIMER_INTR) --
    -- declared variables and implied variables 
    variable next_thread_state : ThreadState;
    --
  begin -- 
    -- default values 
    next_thread_state := current_thread_state;
    -- default initializations... 
    --  $now  IV := ( ( ( ( ( (  z1 &&  EXTERNAL_INTR)  &&  z1)  &&  SERIAL_INTR)  &&  z1)  &&  TIMER_INTR)  &&  z9) 
    IV_buffer <= ((((((z1 & EXTERNAL_INTR) & z1) & SERIAL_INTR) & z1) & TIMER_INTR) & z9);
    -- case statement 
    case current_thread_state is -- 
      when s_ivg_i_state => -- 
        next_thread_state := s_ivg_i_state;
        next_thread_state := s_ivg_i_state;
        --
      --
    end case;
    if (clk'event and clk = '1') then -- 
      if (reset = '1') then -- 
        current_thread_state <= s_ivg_i_state;
        -- 
      else -- 
        current_thread_state <= next_thread_state; 
        -- objects to be updated under tick.
        -- specified tick assignments. 
        -- 
      end if; 
      -- 
    end if; 
    --
  end process; 
  --
end rtlThreadArch;
library ahir;
use ahir.BaseComponents.all;
use ahir.Utilities.all;
use ahir.Subprograms.all;
use ahir.OperatorPackage.all;
use ahir.BaseComponents.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library peripherals_lite_lib;
use peripherals_lite_lib.peripherals_Type_Package.all;
entity tapConfigurator is  -- 
  port (-- 
    GPIO_ADDR_MAX: out std_logic_vector(35 downto 0);
    GPIO_ADDR_MIN: out std_logic_vector(35 downto 0);
    I2C_ADDR_MAX: out std_logic_vector(35 downto 0);
    I2C_ADDR_MIN: out std_logic_vector(35 downto 0);
    IRC_ADDR_MAX: out std_logic_vector(35 downto 0);
    IRC_ADDR_MIN: out std_logic_vector(35 downto 0);
    PERFC_ADDR_MAX: out std_logic_vector(35 downto 0);
    PERFC_ADDR_MIN: out std_logic_vector(35 downto 0);
    SCRATCH_PAD_ADDR_MAX: out std_logic_vector(35 downto 0);
    SCRATCH_PAD_ADDR_MIN: out std_logic_vector(35 downto 0);
    SERIAL_ADDR_MAX: out std_logic_vector(35 downto 0);
    SERIAL_ADDR_MIN: out std_logic_vector(35 downto 0);
    SPI_ADDR_MAX: out std_logic_vector(35 downto 0);
    SPI_ADDR_MIN: out std_logic_vector(35 downto 0);
    TIMER_ADDR_MAX: out std_logic_vector(35 downto 0);
    TIMER_ADDR_MIN: out std_logic_vector(35 downto 0);
    clk, reset: in std_logic); --
  --
end entity tapConfigurator;
architecture rtlThreadArch of tapConfigurator is --
  type ThreadState is (s_tc_i_state);
  signal current_thread_state : ThreadState;
  signal GPIO_ADDR_MAX_buffer: unsigned_35_downto_0;
  signal GPIO_ADDR_MIN_buffer: unsigned_35_downto_0;
  signal I2C_ADDR_MAX_buffer: unsigned_35_downto_0;
  signal I2C_ADDR_MIN_buffer: unsigned_35_downto_0;
  signal IRC_ADDR_MAX_buffer: unsigned_35_downto_0;
  signal IRC_ADDR_MIN_buffer: unsigned_35_downto_0;
  signal PERFC_ADDR_MAX_buffer: unsigned_35_downto_0;
  signal PERFC_ADDR_MIN_buffer: unsigned_35_downto_0;
  signal SCRATCH_PAD_ADDR_MAX_buffer: unsigned_35_downto_0;
  signal SCRATCH_PAD_ADDR_MIN_buffer: unsigned_35_downto_0;
  signal SERIAL_ADDR_MAX_buffer: unsigned_35_downto_0;
  signal SERIAL_ADDR_MIN_buffer: unsigned_35_downto_0;
  signal SPI_ADDR_MAX_buffer: unsigned_35_downto_0;
  signal SPI_ADDR_MIN_buffer: unsigned_35_downto_0;
  signal TIMER_ADDR_MAX_buffer: unsigned_35_downto_0;
  signal TIMER_ADDR_MIN_buffer: unsigned_35_downto_0;
  --
begin -- 
  GPIO_ADDR_MAX <= GPIO_ADDR_MAX_buffer;
  GPIO_ADDR_MIN <= GPIO_ADDR_MIN_buffer;
  I2C_ADDR_MAX <= I2C_ADDR_MAX_buffer;
  I2C_ADDR_MIN <= I2C_ADDR_MIN_buffer;
  IRC_ADDR_MAX <= IRC_ADDR_MAX_buffer;
  IRC_ADDR_MIN <= IRC_ADDR_MIN_buffer;
  PERFC_ADDR_MAX <= PERFC_ADDR_MAX_buffer;
  PERFC_ADDR_MIN <= PERFC_ADDR_MIN_buffer;
  SCRATCH_PAD_ADDR_MAX <= SCRATCH_PAD_ADDR_MAX_buffer;
  SCRATCH_PAD_ADDR_MIN <= SCRATCH_PAD_ADDR_MIN_buffer;
  SERIAL_ADDR_MAX <= SERIAL_ADDR_MAX_buffer;
  SERIAL_ADDR_MIN <= SERIAL_ADDR_MIN_buffer;
  SPI_ADDR_MAX <= SPI_ADDR_MAX_buffer;
  SPI_ADDR_MIN <= SPI_ADDR_MIN_buffer;
  TIMER_ADDR_MAX <= TIMER_ADDR_MAX_buffer;
  TIMER_ADDR_MIN <= TIMER_ADDR_MIN_buffer;
  process(clk, reset, current_thread_state ) --
    -- declared variables and implied variables 
    variable next_thread_state : ThreadState;
    --
  begin -- 
    -- default values 
    next_thread_state := current_thread_state;
    -- default initializations... 
    --  $now  IRC_ADDR_MIN :=  ( $unsigned<36> )  000011111111111111110011000000000000 
    IRC_ADDR_MIN_buffer <= "000011111111111111110011000000000000";
    --  $now  IRC_ADDR_MAX :=  ( $unsigned<36> )  000011111111111111110011000011111111 
    IRC_ADDR_MAX_buffer <= "000011111111111111110011000011111111";
    --  $now  TIMER_ADDR_MIN :=  ( $unsigned<36> )  000011111111111111110011000100000000 
    TIMER_ADDR_MIN_buffer <= "000011111111111111110011000100000000";
    --  $now  TIMER_ADDR_MAX :=  ( $unsigned<36> )  000011111111111111110011000100011100 
    TIMER_ADDR_MAX_buffer <= "000011111111111111110011000100011100";
    --  $now  SERIAL_ADDR_MIN :=  ( $unsigned<36> )  000011111111111111110011001000000000 
    SERIAL_ADDR_MIN_buffer <= "000011111111111111110011001000000000";
    --  $now  SERIAL_ADDR_MAX :=  ( $unsigned<36> )  000011111111111111110011001000010011 
    SERIAL_ADDR_MAX_buffer <= "000011111111111111110011001000010011";
    --  $now  SCRATCH_PAD_ADDR_MIN :=  ( $unsigned<36> )  000011111111111111110010110000000000 
    SCRATCH_PAD_ADDR_MIN_buffer <= "000011111111111111110010110000000000";
    --  $now  SCRATCH_PAD_ADDR_MAX :=  ( $unsigned<36> )  000011111111111111110010111111111100 
    SCRATCH_PAD_ADDR_MAX_buffer <= "000011111111111111110010111111111100";
    --  $now  GPIO_ADDR_MIN :=  ( $unsigned<36> )  000011111111111111110011010000000000 
    GPIO_ADDR_MIN_buffer <= "000011111111111111110011010000000000";
    --  $now  GPIO_ADDR_MAX :=  ( $unsigned<36> )  000011111111111111110011010000001100 
    GPIO_ADDR_MAX_buffer <= "000011111111111111110011010000001100";
    --  $now  SPI_ADDR_MIN :=  ( $unsigned<36> )  000011111111111111110011001100000000 
    SPI_ADDR_MIN_buffer <= "000011111111111111110011001100000000";
    --  $now  SPI_ADDR_MAX :=  ( $unsigned<36> )  000011111111111111110011001100001100 
    SPI_ADDR_MAX_buffer <= "000011111111111111110011001100001100";
    --  $now  PERFC_ADDR_MIN :=  ( $unsigned<36> )  000011111111111111110100000000000000 
    PERFC_ADDR_MIN_buffer <= "000011111111111111110100000000000000";
    --  $now  PERFC_ADDR_MAX :=  ( $unsigned<36> )  000011111111111111110100011111111111 
    PERFC_ADDR_MAX_buffer <= "000011111111111111110100011111111111";
    --  $now  I2C_ADDR_MIN :=  ( $unsigned<36> )  000011111111111111110011011000000000 
    I2C_ADDR_MIN_buffer <= "000011111111111111110011011000000000";
    --  $now  I2C_ADDR_MAX :=  ( $unsigned<36> )  000011111111111111110011011000001000 
    I2C_ADDR_MAX_buffer <= "000011111111111111110011011000001000";
    -- case statement 
    case current_thread_state is -- 
      when s_tc_i_state => -- 
        next_thread_state := s_tc_i_state;
        next_thread_state := s_tc_i_state;
        --
      --
    end case;
    if (clk'event and clk = '1') then -- 
      if (reset = '1') then -- 
        current_thread_state <= s_tc_i_state;
        -- 
      else -- 
        current_thread_state <= next_thread_state; 
        -- objects to be updated under tick.
        -- specified tick assignments. 
        -- 
      end if; 
      -- 
    end if; 
    --
  end process; 
  --
end rtlThreadArch;
library ahir;
use ahir.BaseComponents.all;
use ahir.Utilities.all;
use ahir.Subprograms.all;
use ahir.OperatorPackage.all;
use ahir.BaseComponents.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-->>>>>
library peripherals_lite_lib;
use peripherals_lite_lib.peripherals_Type_Package.all;
--<<<<<
-->>>>>
library GenericCoreAddOnLib;
library GlueModules;
library simpleI2CLib;
library GlueModules;
library GlueModules;
library GlueModules;
library performance_counters_lib;
library GlueModules;
library GlueModules;
library GlueModules;
library GlueModules;
library GlueModules;
library GenericCoreAddOnLib;
library GlueModules;
library GlueModules;
library GlueModules;
--<<<<<
entity peripherals is -- 
  port( -- 
    AFB_BUS_REQUEST_pipe_write_data : in std_logic_vector(73 downto 0);
    AFB_BUS_REQUEST_pipe_write_req  : in std_logic_vector(0  downto 0);
    AFB_BUS_REQUEST_pipe_write_ack  : out std_logic_vector(0  downto 0);
    AFB_PERIPHERAL_EXTENSION_RESPONSE_pipe_write_data : in std_logic_vector(32 downto 0);
    AFB_PERIPHERAL_EXTENSION_RESPONSE_pipe_write_req  : in std_logic_vector(0  downto 0);
    AFB_PERIPHERAL_EXTENSION_RESPONSE_pipe_write_ack  : out std_logic_vector(0  downto 0);
    CONSOLE_to_SERIAL_RX_pipe_write_data : in std_logic_vector(7 downto 0);
    CONSOLE_to_SERIAL_RX_pipe_write_req  : in std_logic_vector(0  downto 0);
    CONSOLE_to_SERIAL_RX_pipe_write_ack  : out std_logic_vector(0  downto 0);
    CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_write_data : in std_logic_vector(9 downto 0);
    CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_write_req  : in std_logic_vector(0  downto 0);
    CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_write_ack  : out std_logic_vector(0  downto 0);
    EXTERNAL_INTERRUPT : in std_logic_vector(0 downto 0);
    GPIO_DIN : in std_logic_vector(31 downto 0);
    I2C_SCL_IN : in std_logic_vector(0 downto 0);
    I2C_SDA_IN : in std_logic_vector(0 downto 0);
    SPI_MISO : in std_logic_vector(0 downto 0);
    AFB_BUS_RESPONSE_pipe_read_data : out std_logic_vector(32 downto 0);
    AFB_BUS_RESPONSE_pipe_read_req  : in std_logic_vector(0  downto 0);
    AFB_BUS_RESPONSE_pipe_read_ack  : out std_logic_vector(0  downto 0);
    AFB_PERIPHERAL_EXTENSION_REQUEST_pipe_read_data : out std_logic_vector(73 downto 0);
    AFB_PERIPHERAL_EXTENSION_REQUEST_pipe_read_req  : in std_logic_vector(0  downto 0);
    AFB_PERIPHERAL_EXTENSION_REQUEST_pipe_read_ack  : out std_logic_vector(0  downto 0);
    GPIO_DOUT : out std_logic_vector(31 downto 0);
    I2C_SCL_PULL_DOWN : out std_logic_vector(0 downto 0);
    I2C_SDA_PULL_DOWN : out std_logic_vector(0 downto 0);
    INTR_LEVEL_0_0 : out std_logic_vector(3 downto 0);
    SERIAL_TX_to_CONSOLE_pipe_read_data : out std_logic_vector(7 downto 0);
    SERIAL_TX_to_CONSOLE_pipe_read_req  : in std_logic_vector(0  downto 0);
    SERIAL_TX_to_CONSOLE_pipe_read_ack  : out std_logic_vector(0  downto 0);
    SPI_CLK : out std_logic_vector(0 downto 0);
    SPI_CS_L : out std_logic_vector(7 downto 0);
    SPI_MOSI : out std_logic_vector(0 downto 0);
    UART_BAUD_FREQ : out std_logic_vector(31 downto 0);
    UART_BAUD_LIMIT : out std_logic_vector(31 downto 0);
    UART_SOFT_RESET : out std_logic_vector(0 downto 0);
    clk, reset: in std_logic 
    -- 
  );
  --
end entity peripherals;
architecture struct of peripherals is -- 
  signal hsys_tie_low, hsys_tie_high: std_logic;
  signal AFB_REQUEST_TO_GPIO_pipe_write_data: std_logic_vector(73 downto 0);
  signal AFB_REQUEST_TO_GPIO_pipe_write_req : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_GPIO_pipe_write_ack : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_GPIO_pipe_read_data: std_logic_vector(73 downto 0);
  signal AFB_REQUEST_TO_GPIO_pipe_read_req : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_GPIO_pipe_read_ack : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_GPIO_SPI_pipe_write_data: std_logic_vector(73 downto 0);
  signal AFB_REQUEST_TO_GPIO_SPI_pipe_write_req : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_GPIO_SPI_pipe_write_ack : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_GPIO_SPI_pipe_read_data: std_logic_vector(73 downto 0);
  signal AFB_REQUEST_TO_GPIO_SPI_pipe_read_req : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_GPIO_SPI_pipe_read_ack : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_I2C_pipe_write_data: std_logic_vector(73 downto 0);
  signal AFB_REQUEST_TO_I2C_pipe_write_req : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_I2C_pipe_write_ack : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_I2C_pipe_read_data: std_logic_vector(73 downto 0);
  signal AFB_REQUEST_TO_I2C_pipe_read_req : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_I2C_pipe_read_ack : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_I2C_GPIO_pipe_write_data: std_logic_vector(73 downto 0);
  signal AFB_REQUEST_TO_I2C_GPIO_pipe_write_req : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_I2C_GPIO_pipe_write_ack : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_I2C_GPIO_pipe_read_data: std_logic_vector(73 downto 0);
  signal AFB_REQUEST_TO_I2C_GPIO_pipe_read_req : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_I2C_GPIO_pipe_read_ack : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_IRC_pipe_write_data: std_logic_vector(73 downto 0);
  signal AFB_REQUEST_TO_IRC_pipe_write_req : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_IRC_pipe_write_ack : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_IRC_pipe_read_data: std_logic_vector(73 downto 0);
  signal AFB_REQUEST_TO_IRC_pipe_read_req : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_IRC_pipe_read_ack : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_PERFC_pipe_write_data: std_logic_vector(73 downto 0);
  signal AFB_REQUEST_TO_PERFC_pipe_write_req : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_PERFC_pipe_write_ack : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_PERFC_pipe_read_data: std_logic_vector(73 downto 0);
  signal AFB_REQUEST_TO_PERFC_pipe_read_req : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_PERFC_pipe_read_ack : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_PERFC_EXTENSION_pipe_write_data: std_logic_vector(73 downto 0);
  signal AFB_REQUEST_TO_PERFC_EXTENSION_pipe_write_req : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_PERFC_EXTENSION_pipe_write_ack : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_PERFC_EXTENSION_pipe_read_data: std_logic_vector(73 downto 0);
  signal AFB_REQUEST_TO_PERFC_EXTENSION_pipe_read_req : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_PERFC_EXTENSION_pipe_read_ack : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_SCRATCH_PAD_pipe_write_data: std_logic_vector(73 downto 0);
  signal AFB_REQUEST_TO_SCRATCH_PAD_pipe_write_req : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_SCRATCH_PAD_pipe_write_ack : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_SCRATCH_PAD_pipe_read_data: std_logic_vector(73 downto 0);
  signal AFB_REQUEST_TO_SCRATCH_PAD_pipe_read_req : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_SCRATCH_PAD_pipe_read_ack : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_SCRATCH_PAD_GPIO_pipe_write_data: std_logic_vector(73 downto 0);
  signal AFB_REQUEST_TO_SCRATCH_PAD_GPIO_pipe_write_req : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_SCRATCH_PAD_GPIO_pipe_write_ack : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_SCRATCH_PAD_GPIO_pipe_read_data: std_logic_vector(73 downto 0);
  signal AFB_REQUEST_TO_SCRATCH_PAD_GPIO_pipe_read_req : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_SCRATCH_PAD_GPIO_pipe_read_ack : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_SERIAL_pipe_write_data: std_logic_vector(73 downto 0);
  signal AFB_REQUEST_TO_SERIAL_pipe_write_req : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_SERIAL_pipe_write_ack : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_SERIAL_pipe_read_data: std_logic_vector(73 downto 0);
  signal AFB_REQUEST_TO_SERIAL_pipe_read_req : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_SERIAL_pipe_read_ack : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_SERIAL_SCRATCH_PAD_pipe_write_data: std_logic_vector(73 downto 0);
  signal AFB_REQUEST_TO_SERIAL_SCRATCH_PAD_pipe_write_req : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_SERIAL_SCRATCH_PAD_pipe_write_ack : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_SERIAL_SCRATCH_PAD_pipe_read_data: std_logic_vector(73 downto 0);
  signal AFB_REQUEST_TO_SERIAL_SCRATCH_PAD_pipe_read_req : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_SERIAL_SCRATCH_PAD_pipe_read_ack : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_SPI_pipe_write_data: std_logic_vector(73 downto 0);
  signal AFB_REQUEST_TO_SPI_pipe_write_req : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_SPI_pipe_write_ack : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_SPI_pipe_read_data: std_logic_vector(73 downto 0);
  signal AFB_REQUEST_TO_SPI_pipe_read_req : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_SPI_pipe_read_ack : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_SPI_PERFC_pipe_write_data: std_logic_vector(73 downto 0);
  signal AFB_REQUEST_TO_SPI_PERFC_pipe_write_req : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_SPI_PERFC_pipe_write_ack : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_SPI_PERFC_pipe_read_data: std_logic_vector(73 downto 0);
  signal AFB_REQUEST_TO_SPI_PERFC_pipe_read_req : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_SPI_PERFC_pipe_read_ack : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_TIMER_pipe_write_data: std_logic_vector(73 downto 0);
  signal AFB_REQUEST_TO_TIMER_pipe_write_req : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_TIMER_pipe_write_ack : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_TIMER_pipe_read_data: std_logic_vector(73 downto 0);
  signal AFB_REQUEST_TO_TIMER_pipe_read_req : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_TIMER_pipe_read_ack : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_TIMER_SERIAL_pipe_write_data: std_logic_vector(73 downto 0);
  signal AFB_REQUEST_TO_TIMER_SERIAL_pipe_write_req : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_TIMER_SERIAL_pipe_write_ack : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_TIMER_SERIAL_pipe_read_data: std_logic_vector(73 downto 0);
  signal AFB_REQUEST_TO_TIMER_SERIAL_pipe_read_req : std_logic_vector(0  downto 0);
  signal AFB_REQUEST_TO_TIMER_SERIAL_pipe_read_ack : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_GPIO_pipe_write_data: std_logic_vector(32 downto 0);
  signal AFB_RESPONSE_FROM_GPIO_pipe_write_req : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_GPIO_pipe_write_ack : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_GPIO_pipe_read_data: std_logic_vector(32 downto 0);
  signal AFB_RESPONSE_FROM_GPIO_pipe_read_req : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_GPIO_pipe_read_ack : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_GPIO_SPI_pipe_write_data: std_logic_vector(32 downto 0);
  signal AFB_RESPONSE_FROM_GPIO_SPI_pipe_write_req : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_GPIO_SPI_pipe_write_ack : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_GPIO_SPI_pipe_read_data: std_logic_vector(32 downto 0);
  signal AFB_RESPONSE_FROM_GPIO_SPI_pipe_read_req : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_GPIO_SPI_pipe_read_ack : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_I2C_pipe_write_data: std_logic_vector(32 downto 0);
  signal AFB_RESPONSE_FROM_I2C_pipe_write_req : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_I2C_pipe_write_ack : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_I2C_pipe_read_data: std_logic_vector(32 downto 0);
  signal AFB_RESPONSE_FROM_I2C_pipe_read_req : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_I2C_pipe_read_ack : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_I2C_GPIO_pipe_write_data: std_logic_vector(32 downto 0);
  signal AFB_RESPONSE_FROM_I2C_GPIO_pipe_write_req : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_I2C_GPIO_pipe_write_ack : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_I2C_GPIO_pipe_read_data: std_logic_vector(32 downto 0);
  signal AFB_RESPONSE_FROM_I2C_GPIO_pipe_read_req : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_I2C_GPIO_pipe_read_ack : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_IRC_pipe_write_data: std_logic_vector(32 downto 0);
  signal AFB_RESPONSE_FROM_IRC_pipe_write_req : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_IRC_pipe_write_ack : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_IRC_pipe_read_data: std_logic_vector(32 downto 0);
  signal AFB_RESPONSE_FROM_IRC_pipe_read_req : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_IRC_pipe_read_ack : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_PERFC_pipe_write_data: std_logic_vector(32 downto 0);
  signal AFB_RESPONSE_FROM_PERFC_pipe_write_req : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_PERFC_pipe_write_ack : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_PERFC_pipe_read_data: std_logic_vector(32 downto 0);
  signal AFB_RESPONSE_FROM_PERFC_pipe_read_req : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_PERFC_pipe_read_ack : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_PERFC_EXTENSION_pipe_write_data: std_logic_vector(32 downto 0);
  signal AFB_RESPONSE_FROM_PERFC_EXTENSION_pipe_write_req : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_PERFC_EXTENSION_pipe_write_ack : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_PERFC_EXTENSION_pipe_read_data: std_logic_vector(32 downto 0);
  signal AFB_RESPONSE_FROM_PERFC_EXTENSION_pipe_read_req : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_PERFC_EXTENSION_pipe_read_ack : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_SCRATCH_PAD_pipe_write_data: std_logic_vector(32 downto 0);
  signal AFB_RESPONSE_FROM_SCRATCH_PAD_pipe_write_req : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_SCRATCH_PAD_pipe_write_ack : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_SCRATCH_PAD_pipe_read_data: std_logic_vector(32 downto 0);
  signal AFB_RESPONSE_FROM_SCRATCH_PAD_pipe_read_req : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_SCRATCH_PAD_pipe_read_ack : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_SCRATCH_PAD_GPIO_pipe_write_data: std_logic_vector(32 downto 0);
  signal AFB_RESPONSE_FROM_SCRATCH_PAD_GPIO_pipe_write_req : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_SCRATCH_PAD_GPIO_pipe_write_ack : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_SCRATCH_PAD_GPIO_pipe_read_data: std_logic_vector(32 downto 0);
  signal AFB_RESPONSE_FROM_SCRATCH_PAD_GPIO_pipe_read_req : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_SCRATCH_PAD_GPIO_pipe_read_ack : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_SERIAL_pipe_write_data: std_logic_vector(32 downto 0);
  signal AFB_RESPONSE_FROM_SERIAL_pipe_write_req : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_SERIAL_pipe_write_ack : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_SERIAL_pipe_read_data: std_logic_vector(32 downto 0);
  signal AFB_RESPONSE_FROM_SERIAL_pipe_read_req : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_SERIAL_pipe_read_ack : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_SERIAL_SCRATCH_PAD_pipe_write_data: std_logic_vector(32 downto 0);
  signal AFB_RESPONSE_FROM_SERIAL_SCRATCH_PAD_pipe_write_req : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_SERIAL_SCRATCH_PAD_pipe_write_ack : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_SERIAL_SCRATCH_PAD_pipe_read_data: std_logic_vector(32 downto 0);
  signal AFB_RESPONSE_FROM_SERIAL_SCRATCH_PAD_pipe_read_req : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_SERIAL_SCRATCH_PAD_pipe_read_ack : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_SPI_pipe_write_data: std_logic_vector(32 downto 0);
  signal AFB_RESPONSE_FROM_SPI_pipe_write_req : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_SPI_pipe_write_ack : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_SPI_pipe_read_data: std_logic_vector(32 downto 0);
  signal AFB_RESPONSE_FROM_SPI_pipe_read_req : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_SPI_pipe_read_ack : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_SPI_PERFC_pipe_write_data: std_logic_vector(32 downto 0);
  signal AFB_RESPONSE_FROM_SPI_PERFC_pipe_write_req : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_SPI_PERFC_pipe_write_ack : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_SPI_PERFC_pipe_read_data: std_logic_vector(32 downto 0);
  signal AFB_RESPONSE_FROM_SPI_PERFC_pipe_read_req : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_SPI_PERFC_pipe_read_ack : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_TIMER_pipe_write_data: std_logic_vector(32 downto 0);
  signal AFB_RESPONSE_FROM_TIMER_pipe_write_req : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_TIMER_pipe_write_ack : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_TIMER_pipe_read_data: std_logic_vector(32 downto 0);
  signal AFB_RESPONSE_FROM_TIMER_pipe_read_req : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_TIMER_pipe_read_ack : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_TIMER_SERIAL_pipe_write_data: std_logic_vector(32 downto 0);
  signal AFB_RESPONSE_FROM_TIMER_SERIAL_pipe_write_req : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_TIMER_SERIAL_pipe_write_ack : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_TIMER_SERIAL_pipe_read_data: std_logic_vector(32 downto 0);
  signal AFB_RESPONSE_FROM_TIMER_SERIAL_pipe_read_req : std_logic_vector(0  downto 0);
  signal AFB_RESPONSE_FROM_TIMER_SERIAL_pipe_read_ack : std_logic_vector(0  downto 0);
  signal GPIO_ADDR_MAX : std_logic_vector(35 downto 0);
  signal GPIO_ADDR_MIN : std_logic_vector(35 downto 0);
  signal I2C_ADDR_MAX : std_logic_vector(35 downto 0);
  signal I2C_ADDR_MIN : std_logic_vector(35 downto 0);
  signal INTERRUPT_VECTOR : std_logic_vector(14 downto 0);
  signal IRC_ADDR_MAX : std_logic_vector(35 downto 0);
  signal IRC_ADDR_MIN : std_logic_vector(35 downto 0);
  signal PERFC_ADDR_MAX : std_logic_vector(35 downto 0);
  signal PERFC_ADDR_MIN : std_logic_vector(35 downto 0);
  signal SCRATCH_PAD_ADDR_MAX : std_logic_vector(35 downto 0);
  signal SCRATCH_PAD_ADDR_MIN : std_logic_vector(35 downto 0);
  signal SERIAL_ADDR_MAX : std_logic_vector(35 downto 0);
  signal SERIAL_ADDR_MIN : std_logic_vector(35 downto 0);
  signal SERIAL_INTR : std_logic_vector(0 downto 0);
  signal SPI_ADDR_MAX : std_logic_vector(35 downto 0);
  signal SPI_ADDR_MIN : std_logic_vector(35 downto 0);
  signal TIMER_ADDR_MAX : std_logic_vector(35 downto 0);
  signal TIMER_ADDR_MIN : std_logic_vector(35 downto 0);
  signal TIMER_INTR : std_logic_vector(0 downto 0);
  component afb_gpio is -- 
    port( -- 
      AFB_GPIO_REQUEST_pipe_write_data : in std_logic_vector(73 downto 0);
      AFB_GPIO_REQUEST_pipe_write_req  : in std_logic_vector(0  downto 0);
      AFB_GPIO_REQUEST_pipe_write_ack  : out std_logic_vector(0  downto 0);
      GPIO_DIN : in std_logic_vector(31 downto 0);
      GPIO_AFB_RESPONSE_pipe_read_data : out std_logic_vector(32 downto 0);
      GPIO_AFB_RESPONSE_pipe_read_req  : in std_logic_vector(0  downto 0);
      GPIO_AFB_RESPONSE_pipe_read_ack  : out std_logic_vector(0  downto 0);
      GPIO_DOUT : out std_logic_vector(31 downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for gpio_inst :  afb_gpio -- 
    use entity GenericCoreAddOnLib.afb_gpio; -- 
  --<<<<<
  component afb_fast_tap is -- 
    port( -- 
      AFB_BUS_REQUEST_pipe_write_data : in std_logic_vector(73 downto 0);
      AFB_BUS_REQUEST_pipe_write_req  : in std_logic_vector(0  downto 0);
      AFB_BUS_REQUEST_pipe_write_ack  : out std_logic_vector(0  downto 0);
      AFB_BUS_RESPONSE_TAP_pipe_write_data : in std_logic_vector(32 downto 0);
      AFB_BUS_RESPONSE_TAP_pipe_write_req  : in std_logic_vector(0  downto 0);
      AFB_BUS_RESPONSE_TAP_pipe_write_ack  : out std_logic_vector(0  downto 0);
      AFB_BUS_RESPONSE_THROUGH_pipe_write_data : in std_logic_vector(32 downto 0);
      AFB_BUS_RESPONSE_THROUGH_pipe_write_req  : in std_logic_vector(0  downto 0);
      AFB_BUS_RESPONSE_THROUGH_pipe_write_ack  : out std_logic_vector(0  downto 0);
      MAX_ADDR_TAP : in std_logic_vector(35 downto 0);
      MIN_ADDR_TAP : in std_logic_vector(35 downto 0);
      AFB_BUS_REQUEST_TAP_pipe_read_data : out std_logic_vector(73 downto 0);
      AFB_BUS_REQUEST_TAP_pipe_read_req  : in std_logic_vector(0  downto 0);
      AFB_BUS_REQUEST_TAP_pipe_read_ack  : out std_logic_vector(0  downto 0);
      AFB_BUS_REQUEST_THROUGH_pipe_read_data : out std_logic_vector(73 downto 0);
      AFB_BUS_REQUEST_THROUGH_pipe_read_req  : in std_logic_vector(0  downto 0);
      AFB_BUS_REQUEST_THROUGH_pipe_read_ack  : out std_logic_vector(0  downto 0);
      AFB_BUS_RESPONSE_pipe_read_data : out std_logic_vector(32 downto 0);
      AFB_BUS_RESPONSE_pipe_read_req  : in std_logic_vector(0  downto 0);
      AFB_BUS_RESPONSE_pipe_read_ack  : out std_logic_vector(0  downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for gpio_tap_inst :  afb_fast_tap -- 
    use entity GlueModules.afb_fast_tap; -- 
  --<<<<<
  component afb_i2c_master is -- 
    port( -- 
      AFB_BUS_REQUEST_pipe_write_data : in std_logic_vector(73 downto 0);
      AFB_BUS_REQUEST_pipe_write_req  : in std_logic_vector(0  downto 0);
      AFB_BUS_REQUEST_pipe_write_ack  : out std_logic_vector(0  downto 0);
      scl_in : in std_logic_vector(0 downto 0);
      sda_in : in std_logic_vector(0 downto 0);
      AFB_BUS_RESPONSE_pipe_read_data : out std_logic_vector(32 downto 0);
      AFB_BUS_RESPONSE_pipe_read_req  : in std_logic_vector(0  downto 0);
      AFB_BUS_RESPONSE_pipe_read_ack  : out std_logic_vector(0  downto 0);
      scl_pull_down : out std_logic_vector(0 downto 0);
      sda_pull_down : out std_logic_vector(0 downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for i2c_inst :  afb_i2c_master -- 
    use entity simpleI2CLib.afb_i2c_master; -- 
  --<<<<<
  -->>>>>
  for i2c_tap_inst :  afb_fast_tap -- 
    use entity GlueModules.afb_fast_tap; -- 
  --<<<<<
  component afb_1x1_interrupt_controller is -- 
    port( -- 
      AFB_BUS_REQUEST_pipe_write_data : in std_logic_vector(73 downto 0);
      AFB_BUS_REQUEST_pipe_write_req  : in std_logic_vector(0  downto 0);
      AFB_BUS_REQUEST_pipe_write_ack  : out std_logic_vector(0  downto 0);
      INTERRUPT_VECTOR : in std_logic_vector(14 downto 0);
      AFB_BUS_RESPONSE_pipe_read_data : out std_logic_vector(32 downto 0);
      AFB_BUS_RESPONSE_pipe_read_req  : in std_logic_vector(0  downto 0);
      AFB_BUS_RESPONSE_pipe_read_ack  : out std_logic_vector(0  downto 0);
      INTR_LEVEL_0_0 : out std_logic_vector(3 downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for irc_inst :  afb_1x1_interrupt_controller -- 
    use entity GlueModules.afb_1x1_interrupt_controller; -- 
  --<<<<<
  -->>>>>
  for irc_tap_inst :  afb_fast_tap -- 
    use entity GlueModules.afb_fast_tap; -- 
  --<<<<<
  component afb_performance_counters_1x1 is -- 
    port( -- 
      AFB_PERFORMANCE_COUNTER_REQUEST_pipe_write_data : in std_logic_vector(73 downto 0);
      AFB_PERFORMANCE_COUNTER_REQUEST_pipe_write_req  : in std_logic_vector(0  downto 0);
      AFB_PERFORMANCE_COUNTER_REQUEST_pipe_write_ack  : out std_logic_vector(0  downto 0);
      CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_write_data : in std_logic_vector(9 downto 0);
      CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_write_req  : in std_logic_vector(0  downto 0);
      CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_write_ack  : out std_logic_vector(0  downto 0);
      AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_read_data : out std_logic_vector(32 downto 0);
      AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_read_req  : in std_logic_vector(0  downto 0);
      AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_read_ack  : out std_logic_vector(0  downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for perf_counters_inst :  afb_performance_counters_1x1 -- 
    use entity performance_counters_lib.afb_performance_counters_1x1; -- 
  --<<<<<
  -->>>>>
  for perfc_tap_inst :  afb_fast_tap -- 
    use entity GlueModules.afb_fast_tap; -- 
  --<<<<<
  component afb_scratch_pad is -- 
    port( -- 
      AFB_BUS_REQUEST_pipe_write_data : in std_logic_vector(73 downto 0);
      AFB_BUS_REQUEST_pipe_write_req  : in std_logic_vector(0  downto 0);
      AFB_BUS_REQUEST_pipe_write_ack  : out std_logic_vector(0  downto 0);
      AFB_BUS_RESPONSE_pipe_read_data : out std_logic_vector(32 downto 0);
      AFB_BUS_RESPONSE_pipe_read_req  : in std_logic_vector(0  downto 0);
      AFB_BUS_RESPONSE_pipe_read_ack  : out std_logic_vector(0  downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for scratch_pad_inst :  afb_scratch_pad -- 
    use entity GlueModules.afb_scratch_pad; -- 
  --<<<<<
  -->>>>>
  for scratch_pad_tap_inst :  afb_fast_tap -- 
    use entity GlueModules.afb_fast_tap; -- 
  --<<<<<
  component afb_serial_with_bcw_adapter is -- 
    port( -- 
      AFB_BUS_REQUEST_pipe_write_data : in std_logic_vector(73 downto 0);
      AFB_BUS_REQUEST_pipe_write_req  : in std_logic_vector(0  downto 0);
      AFB_BUS_REQUEST_pipe_write_ack  : out std_logic_vector(0  downto 0);
      CONSOLE_to_SERIAL_RX_pipe_write_data : in std_logic_vector(7 downto 0);
      CONSOLE_to_SERIAL_RX_pipe_write_req  : in std_logic_vector(0  downto 0);
      CONSOLE_to_SERIAL_RX_pipe_write_ack  : out std_logic_vector(0  downto 0);
      AFB_BUS_RESPONSE_pipe_read_data : out std_logic_vector(32 downto 0);
      AFB_BUS_RESPONSE_pipe_read_req  : in std_logic_vector(0  downto 0);
      AFB_BUS_RESPONSE_pipe_read_ack  : out std_logic_vector(0  downto 0);
      SERIAL_TX_to_CONSOLE_pipe_read_data : out std_logic_vector(7 downto 0);
      SERIAL_TX_to_CONSOLE_pipe_read_req  : in std_logic_vector(0  downto 0);
      SERIAL_TX_to_CONSOLE_pipe_read_ack  : out std_logic_vector(0  downto 0);
      SERIAL_to_IRC_INT : out std_logic_vector(0 downto 0);
      UART_BAUD_FREQ : out std_logic_vector(31 downto 0);
      UART_BAUD_LIMIT : out std_logic_vector(31 downto 0);
      UART_SOFT_RESET : out std_logic_vector(0 downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for serial_inst :  afb_serial_with_bcw_adapter -- 
    use entity GlueModules.afb_serial_with_bcw_adapter; -- 
  --<<<<<
  -->>>>>
  for serial_tap_inst :  afb_fast_tap -- 
    use entity GlueModules.afb_fast_tap; -- 
  --<<<<<
  component afb_spi_master is -- 
    port( -- 
      AFB_SPI_MASTER_COMMAND_pipe_write_data : in std_logic_vector(73 downto 0);
      AFB_SPI_MASTER_COMMAND_pipe_write_req  : in std_logic_vector(0  downto 0);
      AFB_SPI_MASTER_COMMAND_pipe_write_ack  : out std_logic_vector(0  downto 0);
      spi_miso : in std_logic_vector(0 downto 0);
      AFB_SPI_MASTER_RESPONSE_pipe_read_data : out std_logic_vector(32 downto 0);
      AFB_SPI_MASTER_RESPONSE_pipe_read_req  : in std_logic_vector(0  downto 0);
      AFB_SPI_MASTER_RESPONSE_pipe_read_ack  : out std_logic_vector(0  downto 0);
      spi_clk : out std_logic_vector(0 downto 0);
      spi_cs_n : out std_logic_vector(7 downto 0);
      spi_mosi : out std_logic_vector(0 downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for spi_inst :  afb_spi_master -- 
    use entity GenericCoreAddOnLib.afb_spi_master; -- 
  --<<<<<
  -->>>>>
  for spi_tap_inst :  afb_fast_tap -- 
    use entity GlueModules.afb_fast_tap; -- 
  --<<<<<
  component afb_timer is -- 
    port( -- 
      AFB_BUS_REQUEST_pipe_write_data : in std_logic_vector(73 downto 0);
      AFB_BUS_REQUEST_pipe_write_req  : in std_logic_vector(0  downto 0);
      AFB_BUS_REQUEST_pipe_write_ack  : out std_logic_vector(0  downto 0);
      AFB_BUS_RESPONSE_pipe_read_data : out std_logic_vector(32 downto 0);
      AFB_BUS_RESPONSE_pipe_read_req  : in std_logic_vector(0  downto 0);
      AFB_BUS_RESPONSE_pipe_read_ack  : out std_logic_vector(0  downto 0);
      TIMER_to_IRC_INT : out std_logic_vector(0 downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for timer_inst :  afb_timer -- 
    use entity GlueModules.afb_timer; -- 
  --<<<<<
  -->>>>>
  for timer_tap_inst :  afb_fast_tap -- 
    use entity GlueModules.afb_fast_tap; -- 
  --<<<<<
  component tapConfigurator is  -- 
    port (-- 
      GPIO_ADDR_MAX: out std_logic_vector(35 downto 0);
      GPIO_ADDR_MIN: out std_logic_vector(35 downto 0);
      I2C_ADDR_MAX: out std_logic_vector(35 downto 0);
      I2C_ADDR_MIN: out std_logic_vector(35 downto 0);
      IRC_ADDR_MAX: out std_logic_vector(35 downto 0);
      IRC_ADDR_MIN: out std_logic_vector(35 downto 0);
      PERFC_ADDR_MAX: out std_logic_vector(35 downto 0);
      PERFC_ADDR_MIN: out std_logic_vector(35 downto 0);
      SCRATCH_PAD_ADDR_MAX: out std_logic_vector(35 downto 0);
      SCRATCH_PAD_ADDR_MIN: out std_logic_vector(35 downto 0);
      SERIAL_ADDR_MAX: out std_logic_vector(35 downto 0);
      SERIAL_ADDR_MIN: out std_logic_vector(35 downto 0);
      SPI_ADDR_MAX: out std_logic_vector(35 downto 0);
      SPI_ADDR_MIN: out std_logic_vector(35 downto 0);
      TIMER_ADDR_MAX: out std_logic_vector(35 downto 0);
      TIMER_ADDR_MIN: out std_logic_vector(35 downto 0);
      clk, reset: in std_logic); --
    --
  end component;
  -->>>>>
  for tap_config_str :  tapConfigurator -- 
    use entity peripherals_lite_lib.tapConfigurator; -- 
  --<<<<<
  component interruptVectorGen is  -- 
    port (-- 
      EXTERNAL_INTR: in std_logic_vector(0 downto 0);
      IV: out std_logic_vector(14 downto 0);
      SERIAL_INTR: in std_logic_vector(0 downto 0);
      TIMER_INTR: in std_logic_vector(0 downto 0);
      clk, reset: in std_logic); --
    --
  end component;
  -->>>>>
  for ivg_str :  interruptVectorGen -- 
    use entity peripherals_lite_lib.interruptVectorGen; -- 
  --<<<<<
  -- 
begin -- 
  hsys_tie_low  <= '0';
  hsys_tie_high <= '1';
  gpio_inst: afb_gpio
  port map ( --
    AFB_GPIO_REQUEST_pipe_write_data => AFB_REQUEST_TO_GPIO_pipe_read_data,
    AFB_GPIO_REQUEST_pipe_write_req => AFB_REQUEST_TO_GPIO_pipe_read_ack,
    AFB_GPIO_REQUEST_pipe_write_ack => AFB_REQUEST_TO_GPIO_pipe_read_req,
    GPIO_AFB_RESPONSE_pipe_read_data => AFB_RESPONSE_FROM_GPIO_pipe_write_data,
    GPIO_AFB_RESPONSE_pipe_read_req => AFB_RESPONSE_FROM_GPIO_pipe_write_ack,
    GPIO_AFB_RESPONSE_pipe_read_ack => AFB_RESPONSE_FROM_GPIO_pipe_write_req,
    GPIO_DIN => GPIO_DIN,
    GPIO_DOUT => GPIO_DOUT,
    clk => clk,  reset => reset
    ); -- 
  gpio_tap_inst: afb_fast_tap
  port map ( --
    AFB_BUS_REQUEST_pipe_write_data => AFB_REQUEST_TO_GPIO_SPI_pipe_read_data,
    AFB_BUS_REQUEST_pipe_write_req => AFB_REQUEST_TO_GPIO_SPI_pipe_read_ack,
    AFB_BUS_REQUEST_pipe_write_ack => AFB_REQUEST_TO_GPIO_SPI_pipe_read_req,
    AFB_BUS_REQUEST_TAP_pipe_read_data => AFB_REQUEST_TO_GPIO_pipe_write_data,
    AFB_BUS_REQUEST_TAP_pipe_read_req => AFB_REQUEST_TO_GPIO_pipe_write_ack,
    AFB_BUS_REQUEST_TAP_pipe_read_ack => AFB_REQUEST_TO_GPIO_pipe_write_req,
    AFB_BUS_REQUEST_THROUGH_pipe_read_data => AFB_REQUEST_TO_SPI_PERFC_pipe_write_data,
    AFB_BUS_REQUEST_THROUGH_pipe_read_req => AFB_REQUEST_TO_SPI_PERFC_pipe_write_ack,
    AFB_BUS_REQUEST_THROUGH_pipe_read_ack => AFB_REQUEST_TO_SPI_PERFC_pipe_write_req,
    AFB_BUS_RESPONSE_pipe_read_data => AFB_RESPONSE_FROM_GPIO_SPI_pipe_write_data,
    AFB_BUS_RESPONSE_pipe_read_req => AFB_RESPONSE_FROM_GPIO_SPI_pipe_write_ack,
    AFB_BUS_RESPONSE_pipe_read_ack => AFB_RESPONSE_FROM_GPIO_SPI_pipe_write_req,
    AFB_BUS_RESPONSE_TAP_pipe_write_data => AFB_RESPONSE_FROM_GPIO_pipe_read_data,
    AFB_BUS_RESPONSE_TAP_pipe_write_req => AFB_RESPONSE_FROM_GPIO_pipe_read_ack,
    AFB_BUS_RESPONSE_TAP_pipe_write_ack => AFB_RESPONSE_FROM_GPIO_pipe_read_req,
    AFB_BUS_RESPONSE_THROUGH_pipe_write_data => AFB_RESPONSE_FROM_SPI_PERFC_pipe_read_data,
    AFB_BUS_RESPONSE_THROUGH_pipe_write_req => AFB_RESPONSE_FROM_SPI_PERFC_pipe_read_ack,
    AFB_BUS_RESPONSE_THROUGH_pipe_write_ack => AFB_RESPONSE_FROM_SPI_PERFC_pipe_read_req,
    MAX_ADDR_TAP => GPIO_ADDR_MAX,
    MIN_ADDR_TAP => GPIO_ADDR_MIN,
    clk => clk,  reset => reset
    ); -- 
  i2c_inst: afb_i2c_master
  port map ( --
    AFB_BUS_REQUEST_pipe_write_data => AFB_REQUEST_TO_I2C_pipe_read_data,
    AFB_BUS_REQUEST_pipe_write_req => AFB_REQUEST_TO_I2C_pipe_read_ack,
    AFB_BUS_REQUEST_pipe_write_ack => AFB_REQUEST_TO_I2C_pipe_read_req,
    AFB_BUS_RESPONSE_pipe_read_data => AFB_RESPONSE_FROM_I2C_pipe_write_data,
    AFB_BUS_RESPONSE_pipe_read_req => AFB_RESPONSE_FROM_I2C_pipe_write_ack,
    AFB_BUS_RESPONSE_pipe_read_ack => AFB_RESPONSE_FROM_I2C_pipe_write_req,
    scl_in => I2C_SCL_IN,
    scl_pull_down => I2C_SCL_PULL_DOWN,
    sda_in => I2C_SDA_IN,
    sda_pull_down => I2C_SDA_PULL_DOWN,
    clk => clk,  reset => reset
    ); -- 
  i2c_tap_inst: afb_fast_tap
  port map ( --
    AFB_BUS_REQUEST_pipe_write_data => AFB_REQUEST_TO_I2C_GPIO_pipe_read_data,
    AFB_BUS_REQUEST_pipe_write_req => AFB_REQUEST_TO_I2C_GPIO_pipe_read_ack,
    AFB_BUS_REQUEST_pipe_write_ack => AFB_REQUEST_TO_I2C_GPIO_pipe_read_req,
    AFB_BUS_REQUEST_TAP_pipe_read_data => AFB_REQUEST_TO_I2C_pipe_write_data,
    AFB_BUS_REQUEST_TAP_pipe_read_req => AFB_REQUEST_TO_I2C_pipe_write_ack,
    AFB_BUS_REQUEST_TAP_pipe_read_ack => AFB_REQUEST_TO_I2C_pipe_write_req,
    AFB_BUS_REQUEST_THROUGH_pipe_read_data => AFB_REQUEST_TO_GPIO_SPI_pipe_write_data,
    AFB_BUS_REQUEST_THROUGH_pipe_read_req => AFB_REQUEST_TO_GPIO_SPI_pipe_write_ack,
    AFB_BUS_REQUEST_THROUGH_pipe_read_ack => AFB_REQUEST_TO_GPIO_SPI_pipe_write_req,
    AFB_BUS_RESPONSE_pipe_read_data => AFB_RESPONSE_FROM_I2C_GPIO_pipe_write_data,
    AFB_BUS_RESPONSE_pipe_read_req => AFB_RESPONSE_FROM_I2C_GPIO_pipe_write_ack,
    AFB_BUS_RESPONSE_pipe_read_ack => AFB_RESPONSE_FROM_I2C_GPIO_pipe_write_req,
    AFB_BUS_RESPONSE_TAP_pipe_write_data => AFB_RESPONSE_FROM_I2C_pipe_read_data,
    AFB_BUS_RESPONSE_TAP_pipe_write_req => AFB_RESPONSE_FROM_I2C_pipe_read_ack,
    AFB_BUS_RESPONSE_TAP_pipe_write_ack => AFB_RESPONSE_FROM_I2C_pipe_read_req,
    AFB_BUS_RESPONSE_THROUGH_pipe_write_data => AFB_RESPONSE_FROM_GPIO_SPI_pipe_read_data,
    AFB_BUS_RESPONSE_THROUGH_pipe_write_req => AFB_RESPONSE_FROM_GPIO_SPI_pipe_read_ack,
    AFB_BUS_RESPONSE_THROUGH_pipe_write_ack => AFB_RESPONSE_FROM_GPIO_SPI_pipe_read_req,
    MAX_ADDR_TAP => I2C_ADDR_MAX,
    MIN_ADDR_TAP => I2C_ADDR_MIN,
    clk => clk,  reset => reset
    ); -- 
  irc_inst: afb_1x1_interrupt_controller
  port map ( --
    AFB_BUS_REQUEST_pipe_write_data => AFB_REQUEST_TO_IRC_pipe_read_data,
    AFB_BUS_REQUEST_pipe_write_req => AFB_REQUEST_TO_IRC_pipe_read_ack,
    AFB_BUS_REQUEST_pipe_write_ack => AFB_REQUEST_TO_IRC_pipe_read_req,
    AFB_BUS_RESPONSE_pipe_read_data => AFB_RESPONSE_FROM_IRC_pipe_write_data,
    AFB_BUS_RESPONSE_pipe_read_req => AFB_RESPONSE_FROM_IRC_pipe_write_ack,
    AFB_BUS_RESPONSE_pipe_read_ack => AFB_RESPONSE_FROM_IRC_pipe_write_req,
    INTERRUPT_VECTOR => INTERRUPT_VECTOR,
    INTR_LEVEL_0_0 => INTR_LEVEL_0_0,
    clk => clk,  reset => reset
    ); -- 
  irc_tap_inst: afb_fast_tap
  port map ( --
    AFB_BUS_REQUEST_pipe_write_data => AFB_BUS_REQUEST_pipe_write_data,
    AFB_BUS_REQUEST_pipe_write_req => AFB_BUS_REQUEST_pipe_write_req,
    AFB_BUS_REQUEST_pipe_write_ack => AFB_BUS_REQUEST_pipe_write_ack,
    AFB_BUS_REQUEST_TAP_pipe_read_data => AFB_REQUEST_TO_IRC_pipe_write_data,
    AFB_BUS_REQUEST_TAP_pipe_read_req => AFB_REQUEST_TO_IRC_pipe_write_ack,
    AFB_BUS_REQUEST_TAP_pipe_read_ack => AFB_REQUEST_TO_IRC_pipe_write_req,
    AFB_BUS_REQUEST_THROUGH_pipe_read_data => AFB_REQUEST_TO_TIMER_SERIAL_pipe_write_data,
    AFB_BUS_REQUEST_THROUGH_pipe_read_req => AFB_REQUEST_TO_TIMER_SERIAL_pipe_write_ack,
    AFB_BUS_REQUEST_THROUGH_pipe_read_ack => AFB_REQUEST_TO_TIMER_SERIAL_pipe_write_req,
    AFB_BUS_RESPONSE_pipe_read_data => AFB_BUS_RESPONSE_pipe_read_data,
    AFB_BUS_RESPONSE_pipe_read_req => AFB_BUS_RESPONSE_pipe_read_req,
    AFB_BUS_RESPONSE_pipe_read_ack => AFB_BUS_RESPONSE_pipe_read_ack,
    AFB_BUS_RESPONSE_TAP_pipe_write_data => AFB_RESPONSE_FROM_IRC_pipe_read_data,
    AFB_BUS_RESPONSE_TAP_pipe_write_req => AFB_RESPONSE_FROM_IRC_pipe_read_ack,
    AFB_BUS_RESPONSE_TAP_pipe_write_ack => AFB_RESPONSE_FROM_IRC_pipe_read_req,
    AFB_BUS_RESPONSE_THROUGH_pipe_write_data => AFB_RESPONSE_FROM_TIMER_SERIAL_pipe_read_data,
    AFB_BUS_RESPONSE_THROUGH_pipe_write_req => AFB_RESPONSE_FROM_TIMER_SERIAL_pipe_read_ack,
    AFB_BUS_RESPONSE_THROUGH_pipe_write_ack => AFB_RESPONSE_FROM_TIMER_SERIAL_pipe_read_req,
    MAX_ADDR_TAP => IRC_ADDR_MAX,
    MIN_ADDR_TAP => IRC_ADDR_MIN,
    clk => clk,  reset => reset
    ); -- 
  perf_counters_inst: afb_performance_counters_1x1
  port map ( --
    AFB_PERFORMANCE_COUNTER_REQUEST_pipe_write_data => AFB_REQUEST_TO_PERFC_pipe_read_data,
    AFB_PERFORMANCE_COUNTER_REQUEST_pipe_write_req => AFB_REQUEST_TO_PERFC_pipe_read_ack,
    AFB_PERFORMANCE_COUNTER_REQUEST_pipe_write_ack => AFB_REQUEST_TO_PERFC_pipe_read_req,
    AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_read_data => AFB_RESPONSE_FROM_PERFC_pipe_write_data,
    AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_read_req => AFB_RESPONSE_FROM_PERFC_pipe_write_ack,
    AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_read_ack => AFB_RESPONSE_FROM_PERFC_pipe_write_req,
    CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_write_data => CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_write_data,
    CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_write_req => CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_write_req,
    CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_write_ack => CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_write_ack,
    clk => clk,  reset => reset
    ); -- 
  perfc_tap_inst: afb_fast_tap
  port map ( --
    AFB_BUS_REQUEST_pipe_write_data => AFB_REQUEST_TO_PERFC_EXTENSION_pipe_read_data,
    AFB_BUS_REQUEST_pipe_write_req => AFB_REQUEST_TO_PERFC_EXTENSION_pipe_read_ack,
    AFB_BUS_REQUEST_pipe_write_ack => AFB_REQUEST_TO_PERFC_EXTENSION_pipe_read_req,
    AFB_BUS_REQUEST_TAP_pipe_read_data => AFB_REQUEST_TO_PERFC_pipe_write_data,
    AFB_BUS_REQUEST_TAP_pipe_read_req => AFB_REQUEST_TO_PERFC_pipe_write_ack,
    AFB_BUS_REQUEST_TAP_pipe_read_ack => AFB_REQUEST_TO_PERFC_pipe_write_req,
    AFB_BUS_REQUEST_THROUGH_pipe_read_data => AFB_PERIPHERAL_EXTENSION_REQUEST_pipe_read_data,
    AFB_BUS_REQUEST_THROUGH_pipe_read_req => AFB_PERIPHERAL_EXTENSION_REQUEST_pipe_read_req,
    AFB_BUS_REQUEST_THROUGH_pipe_read_ack => AFB_PERIPHERAL_EXTENSION_REQUEST_pipe_read_ack,
    AFB_BUS_RESPONSE_pipe_read_data => AFB_RESPONSE_FROM_PERFC_EXTENSION_pipe_write_data,
    AFB_BUS_RESPONSE_pipe_read_req => AFB_RESPONSE_FROM_PERFC_EXTENSION_pipe_write_ack,
    AFB_BUS_RESPONSE_pipe_read_ack => AFB_RESPONSE_FROM_PERFC_EXTENSION_pipe_write_req,
    AFB_BUS_RESPONSE_TAP_pipe_write_data => AFB_RESPONSE_FROM_PERFC_pipe_read_data,
    AFB_BUS_RESPONSE_TAP_pipe_write_req => AFB_RESPONSE_FROM_PERFC_pipe_read_ack,
    AFB_BUS_RESPONSE_TAP_pipe_write_ack => AFB_RESPONSE_FROM_PERFC_pipe_read_req,
    AFB_BUS_RESPONSE_THROUGH_pipe_write_data => AFB_PERIPHERAL_EXTENSION_RESPONSE_pipe_write_data,
    AFB_BUS_RESPONSE_THROUGH_pipe_write_req => AFB_PERIPHERAL_EXTENSION_RESPONSE_pipe_write_req,
    AFB_BUS_RESPONSE_THROUGH_pipe_write_ack => AFB_PERIPHERAL_EXTENSION_RESPONSE_pipe_write_ack,
    MAX_ADDR_TAP => PERFC_ADDR_MAX,
    MIN_ADDR_TAP => PERFC_ADDR_MIN,
    clk => clk,  reset => reset
    ); -- 
  scratch_pad_inst: afb_scratch_pad
  port map ( --
    AFB_BUS_REQUEST_pipe_write_data => AFB_REQUEST_TO_SCRATCH_PAD_pipe_read_data,
    AFB_BUS_REQUEST_pipe_write_req => AFB_REQUEST_TO_SCRATCH_PAD_pipe_read_ack,
    AFB_BUS_REQUEST_pipe_write_ack => AFB_REQUEST_TO_SCRATCH_PAD_pipe_read_req,
    AFB_BUS_RESPONSE_pipe_read_data => AFB_RESPONSE_FROM_SCRATCH_PAD_pipe_write_data,
    AFB_BUS_RESPONSE_pipe_read_req => AFB_RESPONSE_FROM_SCRATCH_PAD_pipe_write_ack,
    AFB_BUS_RESPONSE_pipe_read_ack => AFB_RESPONSE_FROM_SCRATCH_PAD_pipe_write_req,
    clk => clk,  reset => reset
    ); -- 
  scratch_pad_tap_inst: afb_fast_tap
  port map ( --
    AFB_BUS_REQUEST_pipe_write_data => AFB_REQUEST_TO_SCRATCH_PAD_GPIO_pipe_read_data,
    AFB_BUS_REQUEST_pipe_write_req => AFB_REQUEST_TO_SCRATCH_PAD_GPIO_pipe_read_ack,
    AFB_BUS_REQUEST_pipe_write_ack => AFB_REQUEST_TO_SCRATCH_PAD_GPIO_pipe_read_req,
    AFB_BUS_REQUEST_TAP_pipe_read_data => AFB_REQUEST_TO_SCRATCH_PAD_pipe_write_data,
    AFB_BUS_REQUEST_TAP_pipe_read_req => AFB_REQUEST_TO_SCRATCH_PAD_pipe_write_ack,
    AFB_BUS_REQUEST_TAP_pipe_read_ack => AFB_REQUEST_TO_SCRATCH_PAD_pipe_write_req,
    AFB_BUS_REQUEST_THROUGH_pipe_read_data => AFB_REQUEST_TO_I2C_GPIO_pipe_write_data,
    AFB_BUS_REQUEST_THROUGH_pipe_read_req => AFB_REQUEST_TO_I2C_GPIO_pipe_write_ack,
    AFB_BUS_REQUEST_THROUGH_pipe_read_ack => AFB_REQUEST_TO_I2C_GPIO_pipe_write_req,
    AFB_BUS_RESPONSE_pipe_read_data => AFB_RESPONSE_FROM_SCRATCH_PAD_GPIO_pipe_write_data,
    AFB_BUS_RESPONSE_pipe_read_req => AFB_RESPONSE_FROM_SCRATCH_PAD_GPIO_pipe_write_ack,
    AFB_BUS_RESPONSE_pipe_read_ack => AFB_RESPONSE_FROM_SCRATCH_PAD_GPIO_pipe_write_req,
    AFB_BUS_RESPONSE_TAP_pipe_write_data => AFB_RESPONSE_FROM_SCRATCH_PAD_pipe_read_data,
    AFB_BUS_RESPONSE_TAP_pipe_write_req => AFB_RESPONSE_FROM_SCRATCH_PAD_pipe_read_ack,
    AFB_BUS_RESPONSE_TAP_pipe_write_ack => AFB_RESPONSE_FROM_SCRATCH_PAD_pipe_read_req,
    AFB_BUS_RESPONSE_THROUGH_pipe_write_data => AFB_RESPONSE_FROM_I2C_GPIO_pipe_read_data,
    AFB_BUS_RESPONSE_THROUGH_pipe_write_req => AFB_RESPONSE_FROM_I2C_GPIO_pipe_read_ack,
    AFB_BUS_RESPONSE_THROUGH_pipe_write_ack => AFB_RESPONSE_FROM_I2C_GPIO_pipe_read_req,
    MAX_ADDR_TAP => SCRATCH_PAD_ADDR_MAX,
    MIN_ADDR_TAP => SCRATCH_PAD_ADDR_MIN,
    clk => clk,  reset => reset
    ); -- 
  serial_inst: afb_serial_with_bcw_adapter
  port map ( --
    AFB_BUS_REQUEST_pipe_write_data => AFB_REQUEST_TO_SERIAL_pipe_read_data,
    AFB_BUS_REQUEST_pipe_write_req => AFB_REQUEST_TO_SERIAL_pipe_read_ack,
    AFB_BUS_REQUEST_pipe_write_ack => AFB_REQUEST_TO_SERIAL_pipe_read_req,
    AFB_BUS_RESPONSE_pipe_read_data => AFB_RESPONSE_FROM_SERIAL_pipe_write_data,
    AFB_BUS_RESPONSE_pipe_read_req => AFB_RESPONSE_FROM_SERIAL_pipe_write_ack,
    AFB_BUS_RESPONSE_pipe_read_ack => AFB_RESPONSE_FROM_SERIAL_pipe_write_req,
    CONSOLE_to_SERIAL_RX_pipe_write_data => CONSOLE_to_SERIAL_RX_pipe_write_data,
    CONSOLE_to_SERIAL_RX_pipe_write_req => CONSOLE_to_SERIAL_RX_pipe_write_req,
    CONSOLE_to_SERIAL_RX_pipe_write_ack => CONSOLE_to_SERIAL_RX_pipe_write_ack,
    SERIAL_TX_to_CONSOLE_pipe_read_data => SERIAL_TX_to_CONSOLE_pipe_read_data,
    SERIAL_TX_to_CONSOLE_pipe_read_req => SERIAL_TX_to_CONSOLE_pipe_read_req,
    SERIAL_TX_to_CONSOLE_pipe_read_ack => SERIAL_TX_to_CONSOLE_pipe_read_ack,
    SERIAL_to_IRC_INT => SERIAL_INTR,
    UART_BAUD_FREQ => UART_BAUD_FREQ,
    UART_BAUD_LIMIT => UART_BAUD_LIMIT,
    UART_SOFT_RESET => UART_SOFT_RESET,
    clk => clk,  reset => reset
    ); -- 
  serial_tap_inst: afb_fast_tap
  port map ( --
    AFB_BUS_REQUEST_pipe_write_data => AFB_REQUEST_TO_SERIAL_SCRATCH_PAD_pipe_read_data,
    AFB_BUS_REQUEST_pipe_write_req => AFB_REQUEST_TO_SERIAL_SCRATCH_PAD_pipe_read_ack,
    AFB_BUS_REQUEST_pipe_write_ack => AFB_REQUEST_TO_SERIAL_SCRATCH_PAD_pipe_read_req,
    AFB_BUS_REQUEST_TAP_pipe_read_data => AFB_REQUEST_TO_SERIAL_pipe_write_data,
    AFB_BUS_REQUEST_TAP_pipe_read_req => AFB_REQUEST_TO_SERIAL_pipe_write_ack,
    AFB_BUS_REQUEST_TAP_pipe_read_ack => AFB_REQUEST_TO_SERIAL_pipe_write_req,
    AFB_BUS_REQUEST_THROUGH_pipe_read_data => AFB_REQUEST_TO_SCRATCH_PAD_GPIO_pipe_write_data,
    AFB_BUS_REQUEST_THROUGH_pipe_read_req => AFB_REQUEST_TO_SCRATCH_PAD_GPIO_pipe_write_ack,
    AFB_BUS_REQUEST_THROUGH_pipe_read_ack => AFB_REQUEST_TO_SCRATCH_PAD_GPIO_pipe_write_req,
    AFB_BUS_RESPONSE_pipe_read_data => AFB_RESPONSE_FROM_SERIAL_SCRATCH_PAD_pipe_write_data,
    AFB_BUS_RESPONSE_pipe_read_req => AFB_RESPONSE_FROM_SERIAL_SCRATCH_PAD_pipe_write_ack,
    AFB_BUS_RESPONSE_pipe_read_ack => AFB_RESPONSE_FROM_SERIAL_SCRATCH_PAD_pipe_write_req,
    AFB_BUS_RESPONSE_TAP_pipe_write_data => AFB_RESPONSE_FROM_SERIAL_pipe_read_data,
    AFB_BUS_RESPONSE_TAP_pipe_write_req => AFB_RESPONSE_FROM_SERIAL_pipe_read_ack,
    AFB_BUS_RESPONSE_TAP_pipe_write_ack => AFB_RESPONSE_FROM_SERIAL_pipe_read_req,
    AFB_BUS_RESPONSE_THROUGH_pipe_write_data => AFB_RESPONSE_FROM_SCRATCH_PAD_GPIO_pipe_read_data,
    AFB_BUS_RESPONSE_THROUGH_pipe_write_req => AFB_RESPONSE_FROM_SCRATCH_PAD_GPIO_pipe_read_ack,
    AFB_BUS_RESPONSE_THROUGH_pipe_write_ack => AFB_RESPONSE_FROM_SCRATCH_PAD_GPIO_pipe_read_req,
    MAX_ADDR_TAP => SERIAL_ADDR_MAX,
    MIN_ADDR_TAP => SERIAL_ADDR_MIN,
    clk => clk,  reset => reset
    ); -- 
  spi_inst: afb_spi_master
  port map ( --
    AFB_SPI_MASTER_COMMAND_pipe_write_data => AFB_REQUEST_TO_SPI_pipe_read_data,
    AFB_SPI_MASTER_COMMAND_pipe_write_req => AFB_REQUEST_TO_SPI_pipe_read_ack,
    AFB_SPI_MASTER_COMMAND_pipe_write_ack => AFB_REQUEST_TO_SPI_pipe_read_req,
    AFB_SPI_MASTER_RESPONSE_pipe_read_data => AFB_RESPONSE_FROM_SPI_pipe_write_data,
    AFB_SPI_MASTER_RESPONSE_pipe_read_req => AFB_RESPONSE_FROM_SPI_pipe_write_ack,
    AFB_SPI_MASTER_RESPONSE_pipe_read_ack => AFB_RESPONSE_FROM_SPI_pipe_write_req,
    spi_clk => SPI_CLK,
    spi_cs_n => SPI_CS_L,
    spi_miso => SPI_MISO,
    spi_mosi => SPI_MOSI,
    clk => clk,  reset => reset
    ); -- 
  spi_tap_inst: afb_fast_tap
  port map ( --
    AFB_BUS_REQUEST_pipe_write_data => AFB_REQUEST_TO_SPI_PERFC_pipe_read_data,
    AFB_BUS_REQUEST_pipe_write_req => AFB_REQUEST_TO_SPI_PERFC_pipe_read_ack,
    AFB_BUS_REQUEST_pipe_write_ack => AFB_REQUEST_TO_SPI_PERFC_pipe_read_req,
    AFB_BUS_REQUEST_TAP_pipe_read_data => AFB_REQUEST_TO_SPI_pipe_write_data,
    AFB_BUS_REQUEST_TAP_pipe_read_req => AFB_REQUEST_TO_SPI_pipe_write_ack,
    AFB_BUS_REQUEST_TAP_pipe_read_ack => AFB_REQUEST_TO_SPI_pipe_write_req,
    AFB_BUS_REQUEST_THROUGH_pipe_read_data => AFB_REQUEST_TO_PERFC_EXTENSION_pipe_write_data,
    AFB_BUS_REQUEST_THROUGH_pipe_read_req => AFB_REQUEST_TO_PERFC_EXTENSION_pipe_write_ack,
    AFB_BUS_REQUEST_THROUGH_pipe_read_ack => AFB_REQUEST_TO_PERFC_EXTENSION_pipe_write_req,
    AFB_BUS_RESPONSE_pipe_read_data => AFB_RESPONSE_FROM_SPI_PERFC_pipe_write_data,
    AFB_BUS_RESPONSE_pipe_read_req => AFB_RESPONSE_FROM_SPI_PERFC_pipe_write_ack,
    AFB_BUS_RESPONSE_pipe_read_ack => AFB_RESPONSE_FROM_SPI_PERFC_pipe_write_req,
    AFB_BUS_RESPONSE_TAP_pipe_write_data => AFB_RESPONSE_FROM_SPI_pipe_read_data,
    AFB_BUS_RESPONSE_TAP_pipe_write_req => AFB_RESPONSE_FROM_SPI_pipe_read_ack,
    AFB_BUS_RESPONSE_TAP_pipe_write_ack => AFB_RESPONSE_FROM_SPI_pipe_read_req,
    AFB_BUS_RESPONSE_THROUGH_pipe_write_data => AFB_RESPONSE_FROM_PERFC_EXTENSION_pipe_read_data,
    AFB_BUS_RESPONSE_THROUGH_pipe_write_req => AFB_RESPONSE_FROM_PERFC_EXTENSION_pipe_read_ack,
    AFB_BUS_RESPONSE_THROUGH_pipe_write_ack => AFB_RESPONSE_FROM_PERFC_EXTENSION_pipe_read_req,
    MAX_ADDR_TAP => SPI_ADDR_MAX,
    MIN_ADDR_TAP => SPI_ADDR_MIN,
    clk => clk,  reset => reset
    ); -- 
  timer_inst: afb_timer
  port map ( --
    AFB_BUS_REQUEST_pipe_write_data => AFB_REQUEST_TO_TIMER_pipe_read_data,
    AFB_BUS_REQUEST_pipe_write_req => AFB_REQUEST_TO_TIMER_pipe_read_ack,
    AFB_BUS_REQUEST_pipe_write_ack => AFB_REQUEST_TO_TIMER_pipe_read_req,
    AFB_BUS_RESPONSE_pipe_read_data => AFB_RESPONSE_FROM_TIMER_pipe_write_data,
    AFB_BUS_RESPONSE_pipe_read_req => AFB_RESPONSE_FROM_TIMER_pipe_write_ack,
    AFB_BUS_RESPONSE_pipe_read_ack => AFB_RESPONSE_FROM_TIMER_pipe_write_req,
    TIMER_to_IRC_INT => TIMER_INTR,
    clk => clk,  reset => reset
    ); -- 
  timer_tap_inst: afb_fast_tap
  port map ( --
    AFB_BUS_REQUEST_pipe_write_data => AFB_REQUEST_TO_TIMER_SERIAL_pipe_read_data,
    AFB_BUS_REQUEST_pipe_write_req => AFB_REQUEST_TO_TIMER_SERIAL_pipe_read_ack,
    AFB_BUS_REQUEST_pipe_write_ack => AFB_REQUEST_TO_TIMER_SERIAL_pipe_read_req,
    AFB_BUS_REQUEST_TAP_pipe_read_data => AFB_REQUEST_TO_TIMER_pipe_write_data,
    AFB_BUS_REQUEST_TAP_pipe_read_req => AFB_REQUEST_TO_TIMER_pipe_write_ack,
    AFB_BUS_REQUEST_TAP_pipe_read_ack => AFB_REQUEST_TO_TIMER_pipe_write_req,
    AFB_BUS_REQUEST_THROUGH_pipe_read_data => AFB_REQUEST_TO_SERIAL_SCRATCH_PAD_pipe_write_data,
    AFB_BUS_REQUEST_THROUGH_pipe_read_req => AFB_REQUEST_TO_SERIAL_SCRATCH_PAD_pipe_write_ack,
    AFB_BUS_REQUEST_THROUGH_pipe_read_ack => AFB_REQUEST_TO_SERIAL_SCRATCH_PAD_pipe_write_req,
    AFB_BUS_RESPONSE_pipe_read_data => AFB_RESPONSE_FROM_TIMER_SERIAL_pipe_write_data,
    AFB_BUS_RESPONSE_pipe_read_req => AFB_RESPONSE_FROM_TIMER_SERIAL_pipe_write_ack,
    AFB_BUS_RESPONSE_pipe_read_ack => AFB_RESPONSE_FROM_TIMER_SERIAL_pipe_write_req,
    AFB_BUS_RESPONSE_TAP_pipe_write_data => AFB_RESPONSE_FROM_TIMER_pipe_read_data,
    AFB_BUS_RESPONSE_TAP_pipe_write_req => AFB_RESPONSE_FROM_TIMER_pipe_read_ack,
    AFB_BUS_RESPONSE_TAP_pipe_write_ack => AFB_RESPONSE_FROM_TIMER_pipe_read_req,
    AFB_BUS_RESPONSE_THROUGH_pipe_write_data => AFB_RESPONSE_FROM_SERIAL_SCRATCH_PAD_pipe_read_data,
    AFB_BUS_RESPONSE_THROUGH_pipe_write_req => AFB_RESPONSE_FROM_SERIAL_SCRATCH_PAD_pipe_read_ack,
    AFB_BUS_RESPONSE_THROUGH_pipe_write_ack => AFB_RESPONSE_FROM_SERIAL_SCRATCH_PAD_pipe_read_req,
    MAX_ADDR_TAP => TIMER_ADDR_MAX,
    MIN_ADDR_TAP => TIMER_ADDR_MIN,
    clk => clk,  reset => reset
    ); -- 
  tap_config_str: tapConfigurator -- 
    port map ( -- 
      GPIO_ADDR_MAX => GPIO_ADDR_MAX,
      GPIO_ADDR_MIN => GPIO_ADDR_MIN,
      I2C_ADDR_MAX => I2C_ADDR_MAX,
      I2C_ADDR_MIN => I2C_ADDR_MIN,
      IRC_ADDR_MAX => IRC_ADDR_MAX,
      IRC_ADDR_MIN => IRC_ADDR_MIN,
      PERFC_ADDR_MAX => PERFC_ADDR_MAX,
      PERFC_ADDR_MIN => PERFC_ADDR_MIN,
      SCRATCH_PAD_ADDR_MAX => SCRATCH_PAD_ADDR_MAX,
      SCRATCH_PAD_ADDR_MIN => SCRATCH_PAD_ADDR_MIN,
      SERIAL_ADDR_MAX => SERIAL_ADDR_MAX,
      SERIAL_ADDR_MIN => SERIAL_ADDR_MIN,
      SPI_ADDR_MAX => SPI_ADDR_MAX,
      SPI_ADDR_MIN => SPI_ADDR_MIN,
      TIMER_ADDR_MAX => TIMER_ADDR_MAX,
      TIMER_ADDR_MIN => TIMER_ADDR_MIN,
      clk => clk, reset => reset--
    ); -- 
  ivg_str: interruptVectorGen -- 
    port map ( -- 
      EXTERNAL_INTR => EXTERNAL_INTERRUPT,
      IV => INTERRUPT_VECTOR,
      SERIAL_INTR => SERIAL_INTR,
      TIMER_INTR => TIMER_INTR,
      clk => clk, reset => reset--
    ); -- 
  AFB_REQUEST_TO_GPIO_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe AFB_REQUEST_TO_GPIO",
      num_reads => 1,
      num_writes => 1,
      data_width => 74,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => AFB_REQUEST_TO_GPIO_pipe_read_req,
      read_ack => AFB_REQUEST_TO_GPIO_pipe_read_ack,
      read_data => AFB_REQUEST_TO_GPIO_pipe_read_data,
      write_req => AFB_REQUEST_TO_GPIO_pipe_write_req,
      write_ack => AFB_REQUEST_TO_GPIO_pipe_write_ack,
      write_data => AFB_REQUEST_TO_GPIO_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  AFB_REQUEST_TO_GPIO_SPI_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe AFB_REQUEST_TO_GPIO_SPI",
      num_reads => 1,
      num_writes => 1,
      data_width => 74,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => AFB_REQUEST_TO_GPIO_SPI_pipe_read_req,
      read_ack => AFB_REQUEST_TO_GPIO_SPI_pipe_read_ack,
      read_data => AFB_REQUEST_TO_GPIO_SPI_pipe_read_data,
      write_req => AFB_REQUEST_TO_GPIO_SPI_pipe_write_req,
      write_ack => AFB_REQUEST_TO_GPIO_SPI_pipe_write_ack,
      write_data => AFB_REQUEST_TO_GPIO_SPI_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  AFB_REQUEST_TO_I2C_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe AFB_REQUEST_TO_I2C",
      num_reads => 1,
      num_writes => 1,
      data_width => 74,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => AFB_REQUEST_TO_I2C_pipe_read_req,
      read_ack => AFB_REQUEST_TO_I2C_pipe_read_ack,
      read_data => AFB_REQUEST_TO_I2C_pipe_read_data,
      write_req => AFB_REQUEST_TO_I2C_pipe_write_req,
      write_ack => AFB_REQUEST_TO_I2C_pipe_write_ack,
      write_data => AFB_REQUEST_TO_I2C_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  AFB_REQUEST_TO_I2C_GPIO_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe AFB_REQUEST_TO_I2C_GPIO",
      num_reads => 1,
      num_writes => 1,
      data_width => 74,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => AFB_REQUEST_TO_I2C_GPIO_pipe_read_req,
      read_ack => AFB_REQUEST_TO_I2C_GPIO_pipe_read_ack,
      read_data => AFB_REQUEST_TO_I2C_GPIO_pipe_read_data,
      write_req => AFB_REQUEST_TO_I2C_GPIO_pipe_write_req,
      write_ack => AFB_REQUEST_TO_I2C_GPIO_pipe_write_ack,
      write_data => AFB_REQUEST_TO_I2C_GPIO_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  AFB_REQUEST_TO_IRC_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe AFB_REQUEST_TO_IRC",
      num_reads => 1,
      num_writes => 1,
      data_width => 74,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => AFB_REQUEST_TO_IRC_pipe_read_req,
      read_ack => AFB_REQUEST_TO_IRC_pipe_read_ack,
      read_data => AFB_REQUEST_TO_IRC_pipe_read_data,
      write_req => AFB_REQUEST_TO_IRC_pipe_write_req,
      write_ack => AFB_REQUEST_TO_IRC_pipe_write_ack,
      write_data => AFB_REQUEST_TO_IRC_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  AFB_REQUEST_TO_PERFC_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe AFB_REQUEST_TO_PERFC",
      num_reads => 1,
      num_writes => 1,
      data_width => 74,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => AFB_REQUEST_TO_PERFC_pipe_read_req,
      read_ack => AFB_REQUEST_TO_PERFC_pipe_read_ack,
      read_data => AFB_REQUEST_TO_PERFC_pipe_read_data,
      write_req => AFB_REQUEST_TO_PERFC_pipe_write_req,
      write_ack => AFB_REQUEST_TO_PERFC_pipe_write_ack,
      write_data => AFB_REQUEST_TO_PERFC_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  AFB_REQUEST_TO_PERFC_EXTENSION_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe AFB_REQUEST_TO_PERFC_EXTENSION",
      num_reads => 1,
      num_writes => 1,
      data_width => 74,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => AFB_REQUEST_TO_PERFC_EXTENSION_pipe_read_req,
      read_ack => AFB_REQUEST_TO_PERFC_EXTENSION_pipe_read_ack,
      read_data => AFB_REQUEST_TO_PERFC_EXTENSION_pipe_read_data,
      write_req => AFB_REQUEST_TO_PERFC_EXTENSION_pipe_write_req,
      write_ack => AFB_REQUEST_TO_PERFC_EXTENSION_pipe_write_ack,
      write_data => AFB_REQUEST_TO_PERFC_EXTENSION_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  AFB_REQUEST_TO_SCRATCH_PAD_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe AFB_REQUEST_TO_SCRATCH_PAD",
      num_reads => 1,
      num_writes => 1,
      data_width => 74,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => AFB_REQUEST_TO_SCRATCH_PAD_pipe_read_req,
      read_ack => AFB_REQUEST_TO_SCRATCH_PAD_pipe_read_ack,
      read_data => AFB_REQUEST_TO_SCRATCH_PAD_pipe_read_data,
      write_req => AFB_REQUEST_TO_SCRATCH_PAD_pipe_write_req,
      write_ack => AFB_REQUEST_TO_SCRATCH_PAD_pipe_write_ack,
      write_data => AFB_REQUEST_TO_SCRATCH_PAD_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  AFB_REQUEST_TO_SCRATCH_PAD_GPIO_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe AFB_REQUEST_TO_SCRATCH_PAD_GPIO",
      num_reads => 1,
      num_writes => 1,
      data_width => 74,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => AFB_REQUEST_TO_SCRATCH_PAD_GPIO_pipe_read_req,
      read_ack => AFB_REQUEST_TO_SCRATCH_PAD_GPIO_pipe_read_ack,
      read_data => AFB_REQUEST_TO_SCRATCH_PAD_GPIO_pipe_read_data,
      write_req => AFB_REQUEST_TO_SCRATCH_PAD_GPIO_pipe_write_req,
      write_ack => AFB_REQUEST_TO_SCRATCH_PAD_GPIO_pipe_write_ack,
      write_data => AFB_REQUEST_TO_SCRATCH_PAD_GPIO_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  AFB_REQUEST_TO_SERIAL_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe AFB_REQUEST_TO_SERIAL",
      num_reads => 1,
      num_writes => 1,
      data_width => 74,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => AFB_REQUEST_TO_SERIAL_pipe_read_req,
      read_ack => AFB_REQUEST_TO_SERIAL_pipe_read_ack,
      read_data => AFB_REQUEST_TO_SERIAL_pipe_read_data,
      write_req => AFB_REQUEST_TO_SERIAL_pipe_write_req,
      write_ack => AFB_REQUEST_TO_SERIAL_pipe_write_ack,
      write_data => AFB_REQUEST_TO_SERIAL_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  AFB_REQUEST_TO_SERIAL_SCRATCH_PAD_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe AFB_REQUEST_TO_SERIAL_SCRATCH_PAD",
      num_reads => 1,
      num_writes => 1,
      data_width => 74,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => AFB_REQUEST_TO_SERIAL_SCRATCH_PAD_pipe_read_req,
      read_ack => AFB_REQUEST_TO_SERIAL_SCRATCH_PAD_pipe_read_ack,
      read_data => AFB_REQUEST_TO_SERIAL_SCRATCH_PAD_pipe_read_data,
      write_req => AFB_REQUEST_TO_SERIAL_SCRATCH_PAD_pipe_write_req,
      write_ack => AFB_REQUEST_TO_SERIAL_SCRATCH_PAD_pipe_write_ack,
      write_data => AFB_REQUEST_TO_SERIAL_SCRATCH_PAD_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  AFB_REQUEST_TO_SPI_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe AFB_REQUEST_TO_SPI",
      num_reads => 1,
      num_writes => 1,
      data_width => 74,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => AFB_REQUEST_TO_SPI_pipe_read_req,
      read_ack => AFB_REQUEST_TO_SPI_pipe_read_ack,
      read_data => AFB_REQUEST_TO_SPI_pipe_read_data,
      write_req => AFB_REQUEST_TO_SPI_pipe_write_req,
      write_ack => AFB_REQUEST_TO_SPI_pipe_write_ack,
      write_data => AFB_REQUEST_TO_SPI_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  AFB_REQUEST_TO_SPI_PERFC_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe AFB_REQUEST_TO_SPI_PERFC",
      num_reads => 1,
      num_writes => 1,
      data_width => 74,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => AFB_REQUEST_TO_SPI_PERFC_pipe_read_req,
      read_ack => AFB_REQUEST_TO_SPI_PERFC_pipe_read_ack,
      read_data => AFB_REQUEST_TO_SPI_PERFC_pipe_read_data,
      write_req => AFB_REQUEST_TO_SPI_PERFC_pipe_write_req,
      write_ack => AFB_REQUEST_TO_SPI_PERFC_pipe_write_ack,
      write_data => AFB_REQUEST_TO_SPI_PERFC_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  AFB_REQUEST_TO_TIMER_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe AFB_REQUEST_TO_TIMER",
      num_reads => 1,
      num_writes => 1,
      data_width => 74,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => AFB_REQUEST_TO_TIMER_pipe_read_req,
      read_ack => AFB_REQUEST_TO_TIMER_pipe_read_ack,
      read_data => AFB_REQUEST_TO_TIMER_pipe_read_data,
      write_req => AFB_REQUEST_TO_TIMER_pipe_write_req,
      write_ack => AFB_REQUEST_TO_TIMER_pipe_write_ack,
      write_data => AFB_REQUEST_TO_TIMER_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  AFB_REQUEST_TO_TIMER_SERIAL_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe AFB_REQUEST_TO_TIMER_SERIAL",
      num_reads => 1,
      num_writes => 1,
      data_width => 74,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => AFB_REQUEST_TO_TIMER_SERIAL_pipe_read_req,
      read_ack => AFB_REQUEST_TO_TIMER_SERIAL_pipe_read_ack,
      read_data => AFB_REQUEST_TO_TIMER_SERIAL_pipe_read_data,
      write_req => AFB_REQUEST_TO_TIMER_SERIAL_pipe_write_req,
      write_ack => AFB_REQUEST_TO_TIMER_SERIAL_pipe_write_ack,
      write_data => AFB_REQUEST_TO_TIMER_SERIAL_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  AFB_RESPONSE_FROM_GPIO_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe AFB_RESPONSE_FROM_GPIO",
      num_reads => 1,
      num_writes => 1,
      data_width => 33,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => AFB_RESPONSE_FROM_GPIO_pipe_read_req,
      read_ack => AFB_RESPONSE_FROM_GPIO_pipe_read_ack,
      read_data => AFB_RESPONSE_FROM_GPIO_pipe_read_data,
      write_req => AFB_RESPONSE_FROM_GPIO_pipe_write_req,
      write_ack => AFB_RESPONSE_FROM_GPIO_pipe_write_ack,
      write_data => AFB_RESPONSE_FROM_GPIO_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  AFB_RESPONSE_FROM_GPIO_SPI_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe AFB_RESPONSE_FROM_GPIO_SPI",
      num_reads => 1,
      num_writes => 1,
      data_width => 33,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => AFB_RESPONSE_FROM_GPIO_SPI_pipe_read_req,
      read_ack => AFB_RESPONSE_FROM_GPIO_SPI_pipe_read_ack,
      read_data => AFB_RESPONSE_FROM_GPIO_SPI_pipe_read_data,
      write_req => AFB_RESPONSE_FROM_GPIO_SPI_pipe_write_req,
      write_ack => AFB_RESPONSE_FROM_GPIO_SPI_pipe_write_ack,
      write_data => AFB_RESPONSE_FROM_GPIO_SPI_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  AFB_RESPONSE_FROM_I2C_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe AFB_RESPONSE_FROM_I2C",
      num_reads => 1,
      num_writes => 1,
      data_width => 33,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => AFB_RESPONSE_FROM_I2C_pipe_read_req,
      read_ack => AFB_RESPONSE_FROM_I2C_pipe_read_ack,
      read_data => AFB_RESPONSE_FROM_I2C_pipe_read_data,
      write_req => AFB_RESPONSE_FROM_I2C_pipe_write_req,
      write_ack => AFB_RESPONSE_FROM_I2C_pipe_write_ack,
      write_data => AFB_RESPONSE_FROM_I2C_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  AFB_RESPONSE_FROM_I2C_GPIO_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe AFB_RESPONSE_FROM_I2C_GPIO",
      num_reads => 1,
      num_writes => 1,
      data_width => 33,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => AFB_RESPONSE_FROM_I2C_GPIO_pipe_read_req,
      read_ack => AFB_RESPONSE_FROM_I2C_GPIO_pipe_read_ack,
      read_data => AFB_RESPONSE_FROM_I2C_GPIO_pipe_read_data,
      write_req => AFB_RESPONSE_FROM_I2C_GPIO_pipe_write_req,
      write_ack => AFB_RESPONSE_FROM_I2C_GPIO_pipe_write_ack,
      write_data => AFB_RESPONSE_FROM_I2C_GPIO_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  AFB_RESPONSE_FROM_IRC_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe AFB_RESPONSE_FROM_IRC",
      num_reads => 1,
      num_writes => 1,
      data_width => 33,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => AFB_RESPONSE_FROM_IRC_pipe_read_req,
      read_ack => AFB_RESPONSE_FROM_IRC_pipe_read_ack,
      read_data => AFB_RESPONSE_FROM_IRC_pipe_read_data,
      write_req => AFB_RESPONSE_FROM_IRC_pipe_write_req,
      write_ack => AFB_RESPONSE_FROM_IRC_pipe_write_ack,
      write_data => AFB_RESPONSE_FROM_IRC_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  AFB_RESPONSE_FROM_PERFC_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe AFB_RESPONSE_FROM_PERFC",
      num_reads => 1,
      num_writes => 1,
      data_width => 33,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => AFB_RESPONSE_FROM_PERFC_pipe_read_req,
      read_ack => AFB_RESPONSE_FROM_PERFC_pipe_read_ack,
      read_data => AFB_RESPONSE_FROM_PERFC_pipe_read_data,
      write_req => AFB_RESPONSE_FROM_PERFC_pipe_write_req,
      write_ack => AFB_RESPONSE_FROM_PERFC_pipe_write_ack,
      write_data => AFB_RESPONSE_FROM_PERFC_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  AFB_RESPONSE_FROM_PERFC_EXTENSION_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe AFB_RESPONSE_FROM_PERFC_EXTENSION",
      num_reads => 1,
      num_writes => 1,
      data_width => 33,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => AFB_RESPONSE_FROM_PERFC_EXTENSION_pipe_read_req,
      read_ack => AFB_RESPONSE_FROM_PERFC_EXTENSION_pipe_read_ack,
      read_data => AFB_RESPONSE_FROM_PERFC_EXTENSION_pipe_read_data,
      write_req => AFB_RESPONSE_FROM_PERFC_EXTENSION_pipe_write_req,
      write_ack => AFB_RESPONSE_FROM_PERFC_EXTENSION_pipe_write_ack,
      write_data => AFB_RESPONSE_FROM_PERFC_EXTENSION_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  AFB_RESPONSE_FROM_SCRATCH_PAD_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe AFB_RESPONSE_FROM_SCRATCH_PAD",
      num_reads => 1,
      num_writes => 1,
      data_width => 33,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => AFB_RESPONSE_FROM_SCRATCH_PAD_pipe_read_req,
      read_ack => AFB_RESPONSE_FROM_SCRATCH_PAD_pipe_read_ack,
      read_data => AFB_RESPONSE_FROM_SCRATCH_PAD_pipe_read_data,
      write_req => AFB_RESPONSE_FROM_SCRATCH_PAD_pipe_write_req,
      write_ack => AFB_RESPONSE_FROM_SCRATCH_PAD_pipe_write_ack,
      write_data => AFB_RESPONSE_FROM_SCRATCH_PAD_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  AFB_RESPONSE_FROM_SCRATCH_PAD_GPIO_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe AFB_RESPONSE_FROM_SCRATCH_PAD_GPIO",
      num_reads => 1,
      num_writes => 1,
      data_width => 33,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => AFB_RESPONSE_FROM_SCRATCH_PAD_GPIO_pipe_read_req,
      read_ack => AFB_RESPONSE_FROM_SCRATCH_PAD_GPIO_pipe_read_ack,
      read_data => AFB_RESPONSE_FROM_SCRATCH_PAD_GPIO_pipe_read_data,
      write_req => AFB_RESPONSE_FROM_SCRATCH_PAD_GPIO_pipe_write_req,
      write_ack => AFB_RESPONSE_FROM_SCRATCH_PAD_GPIO_pipe_write_ack,
      write_data => AFB_RESPONSE_FROM_SCRATCH_PAD_GPIO_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  AFB_RESPONSE_FROM_SERIAL_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe AFB_RESPONSE_FROM_SERIAL",
      num_reads => 1,
      num_writes => 1,
      data_width => 33,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => AFB_RESPONSE_FROM_SERIAL_pipe_read_req,
      read_ack => AFB_RESPONSE_FROM_SERIAL_pipe_read_ack,
      read_data => AFB_RESPONSE_FROM_SERIAL_pipe_read_data,
      write_req => AFB_RESPONSE_FROM_SERIAL_pipe_write_req,
      write_ack => AFB_RESPONSE_FROM_SERIAL_pipe_write_ack,
      write_data => AFB_RESPONSE_FROM_SERIAL_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  AFB_RESPONSE_FROM_SERIAL_SCRATCH_PAD_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe AFB_RESPONSE_FROM_SERIAL_SCRATCH_PAD",
      num_reads => 1,
      num_writes => 1,
      data_width => 33,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => AFB_RESPONSE_FROM_SERIAL_SCRATCH_PAD_pipe_read_req,
      read_ack => AFB_RESPONSE_FROM_SERIAL_SCRATCH_PAD_pipe_read_ack,
      read_data => AFB_RESPONSE_FROM_SERIAL_SCRATCH_PAD_pipe_read_data,
      write_req => AFB_RESPONSE_FROM_SERIAL_SCRATCH_PAD_pipe_write_req,
      write_ack => AFB_RESPONSE_FROM_SERIAL_SCRATCH_PAD_pipe_write_ack,
      write_data => AFB_RESPONSE_FROM_SERIAL_SCRATCH_PAD_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  AFB_RESPONSE_FROM_SPI_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe AFB_RESPONSE_FROM_SPI",
      num_reads => 1,
      num_writes => 1,
      data_width => 33,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => AFB_RESPONSE_FROM_SPI_pipe_read_req,
      read_ack => AFB_RESPONSE_FROM_SPI_pipe_read_ack,
      read_data => AFB_RESPONSE_FROM_SPI_pipe_read_data,
      write_req => AFB_RESPONSE_FROM_SPI_pipe_write_req,
      write_ack => AFB_RESPONSE_FROM_SPI_pipe_write_ack,
      write_data => AFB_RESPONSE_FROM_SPI_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  AFB_RESPONSE_FROM_SPI_PERFC_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe AFB_RESPONSE_FROM_SPI_PERFC",
      num_reads => 1,
      num_writes => 1,
      data_width => 33,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => AFB_RESPONSE_FROM_SPI_PERFC_pipe_read_req,
      read_ack => AFB_RESPONSE_FROM_SPI_PERFC_pipe_read_ack,
      read_data => AFB_RESPONSE_FROM_SPI_PERFC_pipe_read_data,
      write_req => AFB_RESPONSE_FROM_SPI_PERFC_pipe_write_req,
      write_ack => AFB_RESPONSE_FROM_SPI_PERFC_pipe_write_ack,
      write_data => AFB_RESPONSE_FROM_SPI_PERFC_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  AFB_RESPONSE_FROM_TIMER_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe AFB_RESPONSE_FROM_TIMER",
      num_reads => 1,
      num_writes => 1,
      data_width => 33,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => AFB_RESPONSE_FROM_TIMER_pipe_read_req,
      read_ack => AFB_RESPONSE_FROM_TIMER_pipe_read_ack,
      read_data => AFB_RESPONSE_FROM_TIMER_pipe_read_data,
      write_req => AFB_RESPONSE_FROM_TIMER_pipe_write_req,
      write_ack => AFB_RESPONSE_FROM_TIMER_pipe_write_ack,
      write_data => AFB_RESPONSE_FROM_TIMER_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  AFB_RESPONSE_FROM_TIMER_SERIAL_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe AFB_RESPONSE_FROM_TIMER_SERIAL",
      num_reads => 1,
      num_writes => 1,
      data_width => 33,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => AFB_RESPONSE_FROM_TIMER_SERIAL_pipe_read_req,
      read_ack => AFB_RESPONSE_FROM_TIMER_SERIAL_pipe_read_ack,
      read_data => AFB_RESPONSE_FROM_TIMER_SERIAL_pipe_read_data,
      write_req => AFB_RESPONSE_FROM_TIMER_SERIAL_pipe_write_req,
      write_ack => AFB_RESPONSE_FROM_TIMER_SERIAL_pipe_write_ack,
      write_data => AFB_RESPONSE_FROM_TIMER_SERIAL_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- 
end struct;
