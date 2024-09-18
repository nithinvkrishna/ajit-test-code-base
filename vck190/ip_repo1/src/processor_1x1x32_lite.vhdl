library ieee;
use ieee.std_logic_1164.all;
package processor_1x1x32_lite_Type_Package is -- 
  subtype unsigned_35_downto_0 is std_logic_vector(35 downto 0);
  subtype unsigned_0_downto_0 is std_logic_vector(0 downto 0);
  subtype unsigned_14_downto_0 is std_logic_vector(14 downto 0);
  subtype unsigned_1_downto_0 is std_logic_vector(1 downto 0);
  subtype unsigned_8_downto_0 is std_logic_vector(8 downto 0);
  subtype unsigned_2_downto_0 is std_logic_vector(2 downto 0);
  subtype unsigned_3_downto_0 is std_logic_vector(3 downto 0);
  subtype unsigned_4_downto_0 is std_logic_vector(4 downto 0);
  subtype unsigned_5_downto_0 is std_logic_vector(5 downto 0);
  subtype unsigned_7_downto_0 is std_logic_vector(7 downto 0);
  subtype unsigned_31_downto_0 is std_logic_vector(31 downto 0);
  subtype unsigned_29_downto_0 is std_logic_vector(29 downto 0);
  subtype unsigned_15_downto_0 is std_logic_vector(15 downto 0);
  subtype unsigned_9_downto_0 is std_logic_vector(9 downto 0);
  subtype unsigned_11_downto_0 is std_logic_vector(11 downto 0);
  subtype unsigned_13_downto_0 is std_logic_vector(13 downto 0);
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
library ajit_processor_lib;
use ajit_processor_lib.processor_1x1x32_lite_Type_Package.all;
entity pmodeGen is  -- 
  port (-- 
    PROCESSOR_MODE: out std_logic_vector(15 downto 0);
    TMODE_0_0: in std_logic_vector(3 downto 0);
    TMODE_0_1: in std_logic_vector(3 downto 0);
    TMODE_1_0: in std_logic_vector(3 downto 0);
    TMODE_1_1: in std_logic_vector(3 downto 0);
    TMODE_2_0: in std_logic_vector(3 downto 0);
    TMODE_2_1: in std_logic_vector(3 downto 0);
    TMODE_3_0: in std_logic_vector(3 downto 0);
    TMODE_3_1: in std_logic_vector(3 downto 0);
    clk, reset: in std_logic); --
  --
end entity pmodeGen;
architecture rtlThreadArch of pmodeGen is --
  type ThreadState is (s_pG_rst_state);
  signal current_thread_state : ThreadState;
  signal PROCESSOR_MODE_buffer: unsigned_15_downto_0;
  --
begin -- 
  PROCESSOR_MODE <= PROCESSOR_MODE_buffer;
  process(clk, reset, current_thread_state , TMODE_0_0, TMODE_0_1, TMODE_1_0, TMODE_1_1, TMODE_2_0, TMODE_2_1, TMODE_3_0, TMODE_3_1) --
    -- declared variables and implied variables 
    variable next_thread_state : ThreadState;
    --
  begin -- 
    -- default values 
    next_thread_state := current_thread_state;
    -- default initializations... 
    --  $now  PROCESSOR_MODE := ( ($slice  TMODE_3_1 1 0)  && ( ($slice  TMODE_3_0 1 0)  && ( ($slice  TMODE_2_1 1 0)  && ( ($slice  TMODE_2_0 1 0)  && ( ($slice  TMODE_1_1 1 0)  && ( ($slice  TMODE_1_0 1 0)  && ( ($slice  TMODE_0_1 1 0)  && ($slice  TMODE_0_0 1 0) ) ) ) ) ) ) ) 
    PROCESSOR_MODE_buffer <= (TMODE_3_1(1 downto 0) & (TMODE_3_0(1 downto 0) & (TMODE_2_1(1 downto 0) & (TMODE_2_0(1 downto 0) & (TMODE_1_1(1 downto 0) & (TMODE_1_0(1 downto 0) & (TMODE_0_1(1 downto 0) & TMODE_0_0(1 downto 0))))))));
    -- case statement 
    case current_thread_state is -- 
      when s_pG_rst_state => -- 
        next_thread_state := s_pG_rst_state;
        next_thread_state := s_pG_rst_state;
        --
      --
    end case;
    if (clk'event and clk = '1') then -- 
      if (reset = '1') then -- 
        current_thread_state <= s_pG_rst_state;
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
library ajit_processor_lib;
use ajit_processor_lib.processor_1x1x32_lite_Type_Package.all;
entity threadDummy is  -- 
  port (-- 
    tmode: out std_logic_vector(3 downto 0);
    clk, reset: in std_logic); --
  --
end entity threadDummy;
architecture rtlThreadArch of threadDummy is --
  type ThreadState is (s_cD_rst_state);
  signal current_thread_state : ThreadState;
  signal tmode_buffer: unsigned_3_downto_0;
  --
begin -- 
  tmode <= tmode_buffer;
  process(clk, reset, current_thread_state ) --
    -- declared variables and implied variables 
    variable next_thread_state : ThreadState;
    --
  begin -- 
    -- default values 
    next_thread_state := current_thread_state;
    -- default initializations... 
    --  $now  tmode :=  ( $unsigned<4> )  0000 
    tmode_buffer <= "0000";
    -- case statement 
    case current_thread_state is -- 
      when s_cD_rst_state => -- 
        next_thread_state := s_cD_rst_state;
        next_thread_state := s_cD_rst_state;
        --
      --
    end case;
    if (clk'event and clk = '1') then -- 
      if (reset = '1') then -- 
        current_thread_state <= s_cD_rst_state;
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
library ajit_processor_lib;
use ajit_processor_lib.processor_1x1x32_lite_Type_Package.all;
entity threadStubber is  -- 
  port (-- 
    ilvl: in std_logic_vector(3 downto 0);
    clk, reset: in std_logic); --
  --
end entity threadStubber;
architecture rtlThreadArch of threadStubber is --
  type ThreadState is (s_tS_rst_state);
  signal current_thread_state : ThreadState;
  --
begin -- 
  process(clk, reset, current_thread_state , ilvl) --
    -- declared variables and implied variables 
    variable svar: unsigned_3_downto_0;
    variable tvar: unsigned_3_downto_0;
    variable next_thread_state : ThreadState;
    --
  begin -- 
    -- default values 
    next_thread_state := current_thread_state;
    -- default initializations... 
    --  tvar :=  ilvl
    tvar := ilvl;
    -- case statement 
    case current_thread_state is -- 
      when s_tS_rst_state => -- 
        next_thread_state := s_tS_rst_state;
        next_thread_state := s_tS_rst_state;
        --
      --
    end case;
    if (clk'event and clk = '1') then -- 
      if (reset = '1') then -- 
        current_thread_state <= s_tS_rst_state;
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
library ajit_processor_lib;
use ajit_processor_lib.processor_1x1x32_lite_Type_Package.all;
entity traceStubber is  -- 
  port (-- 
    trace: in std_logic_vector(31 downto 0);
    trace_pipe_read_req: out std_logic_vector(0 downto 0);
    trace_pipe_read_ack: in std_logic_vector(0 downto 0);
    clk, reset: in std_logic); --
  --
end entity traceStubber;
architecture rtlThreadArch of traceStubber is --
  type ThreadState is (s_tS_rst_state);
  signal current_thread_state : ThreadState;
  --
begin -- 
  process(clk, reset, current_thread_state , trace, trace_pipe_read_ack) --
    -- declared variables and implied variables 
    variable next_thread_state : ThreadState;
    --
  begin -- 
    -- default values 
    next_thread_state := current_thread_state;
    -- default initializations... 
    --  $now  trace$req  :=  ( $unsigned<1> )  0 
    trace_pipe_read_req <= "0";
    -- case statement 
    case current_thread_state is -- 
      when s_tS_rst_state => -- 
        next_thread_state := s_tS_rst_state;
        next_thread_state := s_tS_rst_state;
        --
      --
    end case;
    if (clk'event and clk = '1') then -- 
      if (reset = '1') then -- 
        current_thread_state <= s_tS_rst_state;
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
library ajit_processor_lib;
use ajit_processor_lib.processor_1x1x32_lite_Type_Package.all;
--<<<<<
-->>>>>
library ajit_mcore_lib;
library peripherals_lite_lib;
library GlueModules;
--<<<<<
entity processor_1x1x32_lite is -- 
  port( -- 
    ACCELERATOR_MEM_REQUEST_pipe_write_data : in std_logic_vector(109 downto 0);
    ACCELERATOR_MEM_REQUEST_pipe_write_req  : in std_logic_vector(0  downto 0);
    ACCELERATOR_MEM_REQUEST_pipe_write_ack  : out std_logic_vector(0  downto 0);
    AFB_PERIPHERAL_EXTENSION_RESPONSE_pipe_write_data : in std_logic_vector(32 downto 0);
    AFB_PERIPHERAL_EXTENSION_RESPONSE_pipe_write_req  : in std_logic_vector(0  downto 0);
    AFB_PERIPHERAL_EXTENSION_RESPONSE_pipe_write_ack  : out std_logic_vector(0  downto 0);
    CONSOLE_to_SERIAL_RX_pipe_write_data : in std_logic_vector(7 downto 0);
    CONSOLE_to_SERIAL_RX_pipe_write_req  : in std_logic_vector(0  downto 0);
    CONSOLE_to_SERIAL_RX_pipe_write_ack  : out std_logic_vector(0  downto 0);
    EXTERNAL_INTERRUPT : in std_logic_vector(0 downto 0);
    GPIO_DIN : in std_logic_vector(31 downto 0);
    I2C_SCL_IN : in std_logic_vector(0 downto 0);
    I2C_SDA_IN : in std_logic_vector(0 downto 0);
    SOC_MONITOR_to_DEBUG_pipe_write_data : in std_logic_vector(7 downto 0);
    SOC_MONITOR_to_DEBUG_pipe_write_req  : in std_logic_vector(0  downto 0);
    SOC_MONITOR_to_DEBUG_pipe_write_ack  : out std_logic_vector(0  downto 0);
    SPI_MISO : in std_logic_vector(0 downto 0);
    SYS_MEM_RESPONSE_pipe_write_data : in std_logic_vector(64 downto 0);
    SYS_MEM_RESPONSE_pipe_write_req  : in std_logic_vector(0  downto 0);
    SYS_MEM_RESPONSE_pipe_write_ack  : out std_logic_vector(0  downto 0);
    THREAD_RESET : in std_logic_vector(3 downto 0);
    ACCELERATOR_MEM_RESPONSE_pipe_read_data : out std_logic_vector(64 downto 0);
    ACCELERATOR_MEM_RESPONSE_pipe_read_req  : in std_logic_vector(0  downto 0);
    ACCELERATOR_MEM_RESPONSE_pipe_read_ack  : out std_logic_vector(0  downto 0);
    AFB_PERIPHERAL_EXTENSION_REQUEST_pipe_read_data : out std_logic_vector(73 downto 0);
    AFB_PERIPHERAL_EXTENSION_REQUEST_pipe_read_req  : in std_logic_vector(0  downto 0);
    AFB_PERIPHERAL_EXTENSION_REQUEST_pipe_read_ack  : out std_logic_vector(0  downto 0);
    GPIO_DOUT : out std_logic_vector(31 downto 0);
    I2C_SCL_PULL_DOWN : out std_logic_vector(0 downto 0);
    I2C_SDA_PULL_DOWN : out std_logic_vector(0 downto 0);
    PROCESSOR_MODE : out std_logic_vector(15 downto 0);
    SERIAL_TX_to_CONSOLE_pipe_read_data : out std_logic_vector(7 downto 0);
    SERIAL_TX_to_CONSOLE_pipe_read_req  : in std_logic_vector(0  downto 0);
    SERIAL_TX_to_CONSOLE_pipe_read_ack  : out std_logic_vector(0  downto 0);
    SOC_DEBUG_to_MONITOR_pipe_read_data : out std_logic_vector(7 downto 0);
    SOC_DEBUG_to_MONITOR_pipe_read_req  : in std_logic_vector(0  downto 0);
    SOC_DEBUG_to_MONITOR_pipe_read_ack  : out std_logic_vector(0  downto 0);
    SPI_CLK : out std_logic_vector(0 downto 0);
    SPI_CS_L : out std_logic_vector(7 downto 0);
    SPI_MOSI : out std_logic_vector(0 downto 0);
    SYS_MEM_REQUEST_pipe_read_data : out std_logic_vector(109 downto 0);
    SYS_MEM_REQUEST_pipe_read_req  : in std_logic_vector(0  downto 0);
    SYS_MEM_REQUEST_pipe_read_ack  : out std_logic_vector(0  downto 0);
    UART_BAUD_FREQ : out std_logic_vector(31 downto 0);
    UART_BAUD_LIMIT : out std_logic_vector(31 downto 0);
    UART_SOFT_RESET : out std_logic_vector(0 downto 0);
    clk, reset: in std_logic 
    -- 
  );
  --
end entity processor_1x1x32_lite;
architecture struct of processor_1x1x32_lite is -- 
  signal hsys_tie_low, hsys_tie_high: std_logic;
  signal AFB_BUS_REQUEST_pipe_write_data: std_logic_vector(73 downto 0);
  signal AFB_BUS_REQUEST_pipe_write_req : std_logic_vector(0  downto 0);
  signal AFB_BUS_REQUEST_pipe_write_ack : std_logic_vector(0  downto 0);
  signal AFB_BUS_REQUEST_pipe_read_data: std_logic_vector(73 downto 0);
  signal AFB_BUS_REQUEST_pipe_read_req : std_logic_vector(0  downto 0);
  signal AFB_BUS_REQUEST_pipe_read_ack : std_logic_vector(0  downto 0);
  signal AFB_BUS_RESPONSE_pipe_write_data: std_logic_vector(32 downto 0);
  signal AFB_BUS_RESPONSE_pipe_write_req : std_logic_vector(0  downto 0);
  signal AFB_BUS_RESPONSE_pipe_write_ack : std_logic_vector(0  downto 0);
  signal AFB_BUS_RESPONSE_pipe_read_data: std_logic_vector(32 downto 0);
  signal AFB_BUS_RESPONSE_pipe_read_req : std_logic_vector(0  downto 0);
  signal AFB_BUS_RESPONSE_pipe_read_ack : std_logic_vector(0  downto 0);
  signal CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_write_data: std_logic_vector(9 downto 0);
  signal CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_write_req : std_logic_vector(0  downto 0);
  signal CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_write_ack : std_logic_vector(0  downto 0);
  signal CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_read_data: std_logic_vector(9 downto 0);
  signal CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_read_req : std_logic_vector(0  downto 0);
  signal CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_read_ack : std_logic_vector(0  downto 0);
  signal IRL_0_0 : std_logic_vector(3 downto 0);
  signal MAIN_MEM_REQUEST_pipe_write_data: std_logic_vector(109 downto 0);
  signal MAIN_MEM_REQUEST_pipe_write_req : std_logic_vector(0  downto 0);
  signal MAIN_MEM_REQUEST_pipe_write_ack : std_logic_vector(0  downto 0);
  signal MAIN_MEM_REQUEST_pipe_read_data: std_logic_vector(109 downto 0);
  signal MAIN_MEM_REQUEST_pipe_read_req : std_logic_vector(0  downto 0);
  signal MAIN_MEM_REQUEST_pipe_read_ack : std_logic_vector(0  downto 0);
  signal MAIN_MEM_RESPONSE_pipe_write_data: std_logic_vector(64 downto 0);
  signal MAIN_MEM_RESPONSE_pipe_write_req : std_logic_vector(0  downto 0);
  signal MAIN_MEM_RESPONSE_pipe_write_ack : std_logic_vector(0  downto 0);
  signal MAIN_MEM_RESPONSE_pipe_read_data: std_logic_vector(64 downto 0);
  signal MAIN_MEM_RESPONSE_pipe_read_req : std_logic_vector(0  downto 0);
  signal MAIN_MEM_RESPONSE_pipe_read_ack : std_logic_vector(0  downto 0);
  signal TMODE_0_0 : std_logic_vector(3 downto 0);
  signal TMODE_0_1 : std_logic_vector(3 downto 0);
  signal TMODE_1_0 : std_logic_vector(3 downto 0);
  signal TMODE_1_1 : std_logic_vector(3 downto 0);
  signal TMODE_2_0 : std_logic_vector(3 downto 0);
  signal TMODE_2_1 : std_logic_vector(3 downto 0);
  signal TMODE_3_0 : std_logic_vector(3 downto 0);
  signal TMODE_3_1 : std_logic_vector(3 downto 0);
  signal TRACE_0_0_pipe_write_data: std_logic_vector(31 downto 0);
  signal TRACE_0_0_pipe_write_req : std_logic_vector(0  downto 0);
  signal TRACE_0_0_pipe_write_ack : std_logic_vector(0  downto 0);
  signal TRACE_0_0_pipe_read_data: std_logic_vector(31 downto 0);
  signal TRACE_0_0_pipe_read_req : std_logic_vector(0  downto 0);
  signal TRACE_0_0_pipe_read_ack : std_logic_vector(0  downto 0);
  component mcore_1x1x32_lite is -- 
    port( -- 
      AFB_BUS_RESPONSE_pipe_write_data : in std_logic_vector(32 downto 0);
      AFB_BUS_RESPONSE_pipe_write_req  : in std_logic_vector(0  downto 0);
      AFB_BUS_RESPONSE_pipe_write_ack  : out std_logic_vector(0  downto 0);
      IRL_0_0 : in std_logic_vector(3 downto 0);
      MAIN_MEM_RESPONSE_pipe_write_data : in std_logic_vector(64 downto 0);
      MAIN_MEM_RESPONSE_pipe_write_req  : in std_logic_vector(0  downto 0);
      MAIN_MEM_RESPONSE_pipe_write_ack  : out std_logic_vector(0  downto 0);
      SOC_MONITOR_to_DEBUG_pipe_write_data : in std_logic_vector(7 downto 0);
      SOC_MONITOR_to_DEBUG_pipe_write_req  : in std_logic_vector(0  downto 0);
      SOC_MONITOR_to_DEBUG_pipe_write_ack  : out std_logic_vector(0  downto 0);
      THREAD_RESET : in std_logic_vector(3 downto 0);
      AFB_BUS_REQUEST_pipe_read_data : out std_logic_vector(73 downto 0);
      AFB_BUS_REQUEST_pipe_read_req  : in std_logic_vector(0  downto 0);
      AFB_BUS_REQUEST_pipe_read_ack  : out std_logic_vector(0  downto 0);
      CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_read_data : out std_logic_vector(9 downto 0);
      CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_read_req  : in std_logic_vector(0  downto 0);
      CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_read_ack  : out std_logic_vector(0  downto 0);
      MAIN_MEM_REQUEST_pipe_read_data : out std_logic_vector(109 downto 0);
      MAIN_MEM_REQUEST_pipe_read_req  : in std_logic_vector(0  downto 0);
      MAIN_MEM_REQUEST_pipe_read_ack  : out std_logic_vector(0  downto 0);
      SOC_DEBUG_to_MONITOR_pipe_read_data : out std_logic_vector(7 downto 0);
      SOC_DEBUG_to_MONITOR_pipe_read_req  : in std_logic_vector(0  downto 0);
      SOC_DEBUG_to_MONITOR_pipe_read_ack  : out std_logic_vector(0  downto 0);
      TMODE_0_0 : out std_logic_vector(3 downto 0);
      TRACE_0_0_pipe_read_data : out std_logic_vector(31 downto 0);
      TRACE_0_0_pipe_read_req  : in std_logic_vector(0  downto 0);
      TRACE_0_0_pipe_read_ack  : out std_logic_vector(0  downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for mcore_inst :  mcore_1x1x32_lite -- 
    use entity ajit_mcore_lib.mcore_1x1x32_lite; -- 
  --<<<<<
  component peripherals is -- 
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
  end component;
  -->>>>>
  for peripherals_inst :  peripherals -- 
    use entity peripherals_lite_lib.peripherals; -- 
  --<<<<<
  component acb_fast_mux is -- 
    port( -- 
      CORE_BUS_REQUEST_HIGH_pipe_write_data : in std_logic_vector(109 downto 0);
      CORE_BUS_REQUEST_HIGH_pipe_write_req  : in std_logic_vector(0  downto 0);
      CORE_BUS_REQUEST_HIGH_pipe_write_ack  : out std_logic_vector(0  downto 0);
      CORE_BUS_REQUEST_LOW_pipe_write_data : in std_logic_vector(109 downto 0);
      CORE_BUS_REQUEST_LOW_pipe_write_req  : in std_logic_vector(0  downto 0);
      CORE_BUS_REQUEST_LOW_pipe_write_ack  : out std_logic_vector(0  downto 0);
      CORE_BUS_RESPONSE_pipe_write_data : in std_logic_vector(64 downto 0);
      CORE_BUS_RESPONSE_pipe_write_req  : in std_logic_vector(0  downto 0);
      CORE_BUS_RESPONSE_pipe_write_ack  : out std_logic_vector(0  downto 0);
      CORE_BUS_REQUEST_pipe_read_data : out std_logic_vector(109 downto 0);
      CORE_BUS_REQUEST_pipe_read_req  : in std_logic_vector(0  downto 0);
      CORE_BUS_REQUEST_pipe_read_ack  : out std_logic_vector(0  downto 0);
      CORE_BUS_RESPONSE_HIGH_pipe_read_data : out std_logic_vector(64 downto 0);
      CORE_BUS_RESPONSE_HIGH_pipe_read_req  : in std_logic_vector(0  downto 0);
      CORE_BUS_RESPONSE_HIGH_pipe_read_ack  : out std_logic_vector(0  downto 0);
      CORE_BUS_RESPONSE_LOW_pipe_read_data : out std_logic_vector(64 downto 0);
      CORE_BUS_RESPONSE_LOW_pipe_read_req  : in std_logic_vector(0  downto 0);
      CORE_BUS_RESPONSE_LOW_pipe_read_ack  : out std_logic_vector(0  downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for sys_mem_mux :  acb_fast_mux -- 
    use entity GlueModules.acb_fast_mux; -- 
  --<<<<<
  component threadDummy is  -- 
    port (-- 
      tmode: out std_logic_vector(3 downto 0);
      clk, reset: in std_logic); --
    --
  end component;
  -->>>>>
  for threadDummy_01 :  threadDummy -- 
    use entity ajit_processor_lib.threadDummy; -- 
  --<<<<<
  -->>>>>
  for threadDummy_10 :  threadDummy -- 
    use entity ajit_processor_lib.threadDummy; -- 
  --<<<<<
  -->>>>>
  for threadDummy_11 :  threadDummy -- 
    use entity ajit_processor_lib.threadDummy; -- 
  --<<<<<
  -->>>>>
  for threadDummy_20 :  threadDummy -- 
    use entity ajit_processor_lib.threadDummy; -- 
  --<<<<<
  -->>>>>
  for threadDummy_21 :  threadDummy -- 
    use entity ajit_processor_lib.threadDummy; -- 
  --<<<<<
  -->>>>>
  for threadDummy_30 :  threadDummy -- 
    use entity ajit_processor_lib.threadDummy; -- 
  --<<<<<
  -->>>>>
  for threadDummy_31 :  threadDummy -- 
    use entity ajit_processor_lib.threadDummy; -- 
  --<<<<<
  component pmodeGen is  -- 
    port (-- 
      PROCESSOR_MODE: out std_logic_vector(15 downto 0);
      TMODE_0_0: in std_logic_vector(3 downto 0);
      TMODE_0_1: in std_logic_vector(3 downto 0);
      TMODE_1_0: in std_logic_vector(3 downto 0);
      TMODE_1_1: in std_logic_vector(3 downto 0);
      TMODE_2_0: in std_logic_vector(3 downto 0);
      TMODE_2_1: in std_logic_vector(3 downto 0);
      TMODE_3_0: in std_logic_vector(3 downto 0);
      TMODE_3_1: in std_logic_vector(3 downto 0);
      clk, reset: in std_logic); --
    --
  end component;
  -->>>>>
  for pmodeGenString :  pmodeGen -- 
    use entity ajit_processor_lib.pmodeGen; -- 
  --<<<<<
  component traceStubber is  -- 
    port (-- 
      trace: in std_logic_vector(31 downto 0);
      trace_pipe_read_req: out std_logic_vector(0 downto 0);
      trace_pipe_read_ack: in std_logic_vector(0 downto 0);
      clk, reset: in std_logic); --
    --
  end component;
  -->>>>>
  for traceStubber_00 :  traceStubber -- 
    use entity ajit_processor_lib.traceStubber; -- 
  --<<<<<
  -- 
begin -- 
  hsys_tie_low  <= '0';
  hsys_tie_high <= '1';
  mcore_inst: mcore_1x1x32_lite
  port map ( --
    AFB_BUS_REQUEST_pipe_read_data => AFB_BUS_REQUEST_pipe_write_data,
    AFB_BUS_REQUEST_pipe_read_req => AFB_BUS_REQUEST_pipe_write_ack,
    AFB_BUS_REQUEST_pipe_read_ack => AFB_BUS_REQUEST_pipe_write_req,
    AFB_BUS_RESPONSE_pipe_write_data => AFB_BUS_RESPONSE_pipe_read_data,
    AFB_BUS_RESPONSE_pipe_write_req => AFB_BUS_RESPONSE_pipe_read_ack,
    AFB_BUS_RESPONSE_pipe_write_ack => AFB_BUS_RESPONSE_pipe_read_req,
    CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_read_data => CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_write_data,
    CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_read_req => CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_write_ack,
    CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_read_ack => CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_write_req,
    IRL_0_0 => IRL_0_0,
    MAIN_MEM_REQUEST_pipe_read_data => MAIN_MEM_REQUEST_pipe_write_data,
    MAIN_MEM_REQUEST_pipe_read_req => MAIN_MEM_REQUEST_pipe_write_ack,
    MAIN_MEM_REQUEST_pipe_read_ack => MAIN_MEM_REQUEST_pipe_write_req,
    MAIN_MEM_RESPONSE_pipe_write_data => MAIN_MEM_RESPONSE_pipe_read_data,
    MAIN_MEM_RESPONSE_pipe_write_req => MAIN_MEM_RESPONSE_pipe_read_ack,
    MAIN_MEM_RESPONSE_pipe_write_ack => MAIN_MEM_RESPONSE_pipe_read_req,
    SOC_DEBUG_to_MONITOR_pipe_read_data => SOC_DEBUG_to_MONITOR_pipe_read_data,
    SOC_DEBUG_to_MONITOR_pipe_read_req => SOC_DEBUG_to_MONITOR_pipe_read_req,
    SOC_DEBUG_to_MONITOR_pipe_read_ack => SOC_DEBUG_to_MONITOR_pipe_read_ack,
    SOC_MONITOR_to_DEBUG_pipe_write_data => SOC_MONITOR_to_DEBUG_pipe_write_data,
    SOC_MONITOR_to_DEBUG_pipe_write_req => SOC_MONITOR_to_DEBUG_pipe_write_req,
    SOC_MONITOR_to_DEBUG_pipe_write_ack => SOC_MONITOR_to_DEBUG_pipe_write_ack,
    THREAD_RESET => THREAD_RESET,
    TMODE_0_0 => TMODE_0_0,
    TRACE_0_0_pipe_read_data => TRACE_0_0_pipe_write_data,
    TRACE_0_0_pipe_read_req => TRACE_0_0_pipe_write_ack,
    TRACE_0_0_pipe_read_ack => TRACE_0_0_pipe_write_req,
    clk => clk,  reset => reset
    ); -- 
  peripherals_inst: peripherals
  port map ( --
    AFB_BUS_REQUEST_pipe_write_data => AFB_BUS_REQUEST_pipe_read_data,
    AFB_BUS_REQUEST_pipe_write_req => AFB_BUS_REQUEST_pipe_read_ack,
    AFB_BUS_REQUEST_pipe_write_ack => AFB_BUS_REQUEST_pipe_read_req,
    AFB_BUS_RESPONSE_pipe_read_data => AFB_BUS_RESPONSE_pipe_write_data,
    AFB_BUS_RESPONSE_pipe_read_req => AFB_BUS_RESPONSE_pipe_write_ack,
    AFB_BUS_RESPONSE_pipe_read_ack => AFB_BUS_RESPONSE_pipe_write_req,
    AFB_PERIPHERAL_EXTENSION_REQUEST_pipe_read_data => AFB_PERIPHERAL_EXTENSION_REQUEST_pipe_read_data,
    AFB_PERIPHERAL_EXTENSION_REQUEST_pipe_read_req => AFB_PERIPHERAL_EXTENSION_REQUEST_pipe_read_req,
    AFB_PERIPHERAL_EXTENSION_REQUEST_pipe_read_ack => AFB_PERIPHERAL_EXTENSION_REQUEST_pipe_read_ack,
    AFB_PERIPHERAL_EXTENSION_RESPONSE_pipe_write_data => AFB_PERIPHERAL_EXTENSION_RESPONSE_pipe_write_data,
    AFB_PERIPHERAL_EXTENSION_RESPONSE_pipe_write_req => AFB_PERIPHERAL_EXTENSION_RESPONSE_pipe_write_req,
    AFB_PERIPHERAL_EXTENSION_RESPONSE_pipe_write_ack => AFB_PERIPHERAL_EXTENSION_RESPONSE_pipe_write_ack,
    CONSOLE_to_SERIAL_RX_pipe_write_data => CONSOLE_to_SERIAL_RX_pipe_write_data,
    CONSOLE_to_SERIAL_RX_pipe_write_req => CONSOLE_to_SERIAL_RX_pipe_write_req,
    CONSOLE_to_SERIAL_RX_pipe_write_ack => CONSOLE_to_SERIAL_RX_pipe_write_ack,
    CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_write_data => CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_read_data,
    CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_write_req => CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_read_ack,
    CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_write_ack => CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_read_req,
    EXTERNAL_INTERRUPT => EXTERNAL_INTERRUPT,
    GPIO_DIN => GPIO_DIN,
    GPIO_DOUT => GPIO_DOUT,
    I2C_SCL_IN => I2C_SCL_IN,
    I2C_SCL_PULL_DOWN => I2C_SCL_PULL_DOWN,
    I2C_SDA_IN => I2C_SDA_IN,
    I2C_SDA_PULL_DOWN => I2C_SDA_PULL_DOWN,
    INTR_LEVEL_0_0 => IRL_0_0,
    SERIAL_TX_to_CONSOLE_pipe_read_data => SERIAL_TX_to_CONSOLE_pipe_read_data,
    SERIAL_TX_to_CONSOLE_pipe_read_req => SERIAL_TX_to_CONSOLE_pipe_read_req,
    SERIAL_TX_to_CONSOLE_pipe_read_ack => SERIAL_TX_to_CONSOLE_pipe_read_ack,
    SPI_CLK => SPI_CLK,
    SPI_CS_L => SPI_CS_L,
    SPI_MISO => SPI_MISO,
    SPI_MOSI => SPI_MOSI,
    UART_BAUD_FREQ => UART_BAUD_FREQ,
    UART_BAUD_LIMIT => UART_BAUD_LIMIT,
    UART_SOFT_RESET => UART_SOFT_RESET,
    clk => clk,  reset => reset
    ); -- 
  sys_mem_mux: acb_fast_mux
  port map ( --
    CORE_BUS_REQUEST_pipe_read_data => SYS_MEM_REQUEST_pipe_read_data,
    CORE_BUS_REQUEST_pipe_read_req => SYS_MEM_REQUEST_pipe_read_req,
    CORE_BUS_REQUEST_pipe_read_ack => SYS_MEM_REQUEST_pipe_read_ack,
    CORE_BUS_REQUEST_HIGH_pipe_write_data => MAIN_MEM_REQUEST_pipe_read_data,
    CORE_BUS_REQUEST_HIGH_pipe_write_req => MAIN_MEM_REQUEST_pipe_read_ack,
    CORE_BUS_REQUEST_HIGH_pipe_write_ack => MAIN_MEM_REQUEST_pipe_read_req,
    CORE_BUS_REQUEST_LOW_pipe_write_data => ACCELERATOR_MEM_REQUEST_pipe_write_data,
    CORE_BUS_REQUEST_LOW_pipe_write_req => ACCELERATOR_MEM_REQUEST_pipe_write_req,
    CORE_BUS_REQUEST_LOW_pipe_write_ack => ACCELERATOR_MEM_REQUEST_pipe_write_ack,
    CORE_BUS_RESPONSE_pipe_write_data => SYS_MEM_RESPONSE_pipe_write_data,
    CORE_BUS_RESPONSE_pipe_write_req => SYS_MEM_RESPONSE_pipe_write_req,
    CORE_BUS_RESPONSE_pipe_write_ack => SYS_MEM_RESPONSE_pipe_write_ack,
    CORE_BUS_RESPONSE_HIGH_pipe_read_data => MAIN_MEM_RESPONSE_pipe_write_data,
    CORE_BUS_RESPONSE_HIGH_pipe_read_req => MAIN_MEM_RESPONSE_pipe_write_ack,
    CORE_BUS_RESPONSE_HIGH_pipe_read_ack => MAIN_MEM_RESPONSE_pipe_write_req,
    CORE_BUS_RESPONSE_LOW_pipe_read_data => ACCELERATOR_MEM_RESPONSE_pipe_read_data,
    CORE_BUS_RESPONSE_LOW_pipe_read_req => ACCELERATOR_MEM_RESPONSE_pipe_read_req,
    CORE_BUS_RESPONSE_LOW_pipe_read_ack => ACCELERATOR_MEM_RESPONSE_pipe_read_ack,
    clk => clk,  reset => reset
    ); -- 
  threadDummy_01: threadDummy -- 
    port map ( -- 
      tmode => TMODE_0_1,
      clk => clk, reset => reset--
    ); -- 
  threadDummy_10: threadDummy -- 
    port map ( -- 
      tmode => TMODE_1_0,
      clk => clk, reset => reset--
    ); -- 
  threadDummy_11: threadDummy -- 
    port map ( -- 
      tmode => TMODE_1_1,
      clk => clk, reset => reset--
    ); -- 
  threadDummy_20: threadDummy -- 
    port map ( -- 
      tmode => TMODE_2_0,
      clk => clk, reset => reset--
    ); -- 
  threadDummy_21: threadDummy -- 
    port map ( -- 
      tmode => TMODE_2_1,
      clk => clk, reset => reset--
    ); -- 
  threadDummy_30: threadDummy -- 
    port map ( -- 
      tmode => TMODE_3_0,
      clk => clk, reset => reset--
    ); -- 
  threadDummy_31: threadDummy -- 
    port map ( -- 
      tmode => TMODE_3_1,
      clk => clk, reset => reset--
    ); -- 
  pmodeGenString: pmodeGen -- 
    port map ( -- 
      PROCESSOR_MODE => PROCESSOR_MODE,
      TMODE_0_0 => TMODE_0_0,
      TMODE_0_1 => TMODE_0_1,
      TMODE_1_0 => TMODE_1_0,
      TMODE_1_1 => TMODE_1_1,
      TMODE_2_0 => TMODE_2_0,
      TMODE_2_1 => TMODE_2_1,
      TMODE_3_0 => TMODE_3_0,
      TMODE_3_1 => TMODE_3_1,
      clk => clk, reset => reset--
    ); -- 
  traceStubber_00: traceStubber -- 
    port map ( -- 
      trace => TRACE_0_0_pipe_read_data,
      trace_pipe_read_req => TRACE_0_0_pipe_read_req,
      trace_pipe_read_ack => TRACE_0_0_pipe_read_ack,
      clk => clk, reset => reset--
    ); -- 
  AFB_BUS_REQUEST_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe AFB_BUS_REQUEST",
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
      read_req => AFB_BUS_REQUEST_pipe_read_req,
      read_ack => AFB_BUS_REQUEST_pipe_read_ack,
      read_data => AFB_BUS_REQUEST_pipe_read_data,
      write_req => AFB_BUS_REQUEST_pipe_write_req,
      write_ack => AFB_BUS_REQUEST_pipe_write_ack,
      write_data => AFB_BUS_REQUEST_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  AFB_BUS_RESPONSE_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe AFB_BUS_RESPONSE",
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
      read_req => AFB_BUS_RESPONSE_pipe_read_req,
      read_ack => AFB_BUS_RESPONSE_pipe_read_ack,
      read_data => AFB_BUS_RESPONSE_pipe_read_data,
      write_req => AFB_BUS_RESPONSE_pipe_write_req,
      write_ack => AFB_BUS_RESPONSE_pipe_write_ack,
      write_data => AFB_BUS_RESPONSE_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0",
      num_reads => 1,
      num_writes => 1,
      data_width => 10,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_read_req,
      read_ack => CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_read_ack,
      read_data => CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_read_data,
      write_req => CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_write_req,
      write_ack => CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_write_ack,
      write_data => CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  MAIN_MEM_REQUEST_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe MAIN_MEM_REQUEST",
      num_reads => 1,
      num_writes => 1,
      data_width => 110,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => MAIN_MEM_REQUEST_pipe_read_req,
      read_ack => MAIN_MEM_REQUEST_pipe_read_ack,
      read_data => MAIN_MEM_REQUEST_pipe_read_data,
      write_req => MAIN_MEM_REQUEST_pipe_write_req,
      write_ack => MAIN_MEM_REQUEST_pipe_write_ack,
      write_data => MAIN_MEM_REQUEST_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  MAIN_MEM_RESPONSE_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe MAIN_MEM_RESPONSE",
      num_reads => 1,
      num_writes => 1,
      data_width => 65,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => MAIN_MEM_RESPONSE_pipe_read_req,
      read_ack => MAIN_MEM_RESPONSE_pipe_read_ack,
      read_data => MAIN_MEM_RESPONSE_pipe_read_data,
      write_req => MAIN_MEM_RESPONSE_pipe_write_req,
      write_ack => MAIN_MEM_RESPONSE_pipe_write_ack,
      write_data => MAIN_MEM_RESPONSE_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  TRACE_0_0_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe TRACE_0_0",
      num_reads => 1,
      num_writes => 1,
      data_width => 32,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 3 --
    )
    port map( -- 
      read_req => TRACE_0_0_pipe_read_req,
      read_ack => TRACE_0_0_pipe_read_ack,
      read_data => TRACE_0_0_pipe_read_data,
      write_req => TRACE_0_0_pipe_write_req,
      write_ack => TRACE_0_0_pipe_write_ack,
      write_data => TRACE_0_0_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- 
end struct;
