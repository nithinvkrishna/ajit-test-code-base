library ieee;
use ieee.std_logic_1164.all;
package mcore_1x1x32_lite_Type_Package is -- 
  subtype unsigned_7_downto_0 is std_logic_vector(7 downto 0);
  subtype unsigned_3_downto_0 is std_logic_vector(3 downto 0);
  subtype unsigned_0_downto_0 is std_logic_vector(0 downto 0);
  subtype unsigned_31_downto_0 is std_logic_vector(31 downto 0);
  subtype unsigned_29_downto_0 is std_logic_vector(29 downto 0);
  subtype unsigned_35_downto_0 is std_logic_vector(35 downto 0);
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
library ajit_mcore_lib;
use ajit_mcore_lib.mcore_1x1x32_lite_Type_Package.all;
entity debugStub is  -- 
  port (-- 
    CSE: out std_logic_vector(0 downto 0);
    INVPIPE: out std_logic_vector(29 downto 0);
    INVPIPE_pipe_write_req: out std_logic_vector(0 downto 0);
    INVPIPE_pipe_write_ack: in std_logic_vector(0 downto 0);
    REQPIPE: in std_logic_vector(31 downto 0);
    REQPIPE_pipe_read_req: out std_logic_vector(0 downto 0);
    REQPIPE_pipe_read_ack: in std_logic_vector(0 downto 0);
    RESPPIPE: out std_logic_vector(31 downto 0);
    RESPPIPE_pipe_write_req: out std_logic_vector(0 downto 0);
    RESPPIPE_pipe_write_ack: in std_logic_vector(0 downto 0);
    clk, reset: in std_logic); --
  --
end entity debugStub;
architecture rtlThreadArch of debugStub is --
  type ThreadState is (s_cc_i_state);
  signal current_thread_state : ThreadState;
  signal CSE_buffer: unsigned_0_downto_0;
  signal INVPIPE_buffer: unsigned_29_downto_0;
  signal RESPPIPE_buffer: unsigned_31_downto_0;
  constant z1: unsigned_0_downto_0 := "0";
  constant z32: unsigned_31_downto_0 := "00000000000000000000000000000000";
  --
begin -- 
  CSE <= CSE_buffer;
  INVPIPE <= INVPIPE_buffer;
  RESPPIPE <= RESPPIPE_buffer;
  process(clk, reset, current_thread_state , INVPIPE_pipe_write_ack, REQPIPE, REQPIPE_pipe_read_ack, RESPPIPE_pipe_write_ack) --
    -- declared variables and implied variables 
    variable n_e_x_t_INVPIPE: unsigned_29_downto_0;
    variable next_thread_state : ThreadState;
    --
  begin -- 
    -- default values 
    next_thread_state := current_thread_state;
    -- default initializations for output buffer ..... 
    n_e_x_t_INVPIPE := INVPIPE_buffer;
    -- default initializations... 
    --  $now  REQPIPE$req  :=  z1
    REQPIPE_pipe_read_req <= z1;
    --  $now  RESPPIPE$req  :=  z1
    RESPPIPE_pipe_write_req <= z1;
    --  $now  RESPPIPE :=  z32
    RESPPIPE_buffer <= z32;
    --  $now  INVPIPE$req  :=  z1
    INVPIPE_pipe_write_req <= z1;
    --  $now  CSE :=  z1
    CSE_buffer <= z1;
    -- case statement 
    case current_thread_state is -- 
      when s_cc_i_state => -- 
        next_thread_state := s_cc_i_state;
        next_thread_state := s_cc_i_state;
        --
      --
    end case;
    if (clk'event and clk = '1') then -- 
      if (reset = '1') then -- 
        current_thread_state <= s_cc_i_state;
        -- 
      else -- 
        current_thread_state <= next_thread_state; 
        -- objects to be updated under tick.
        INVPIPE_buffer <= n_e_x_t_INVPIPE;
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
library ajit_mcore_lib;
use ajit_mcore_lib.mcore_1x1x32_lite_Type_Package.all;
entity irlPmodeConverter is  -- 
  port (-- 
    IRL4: in std_logic_vector(3 downto 0);
    IRL8: out std_logic_vector(7 downto 0);
    PMODE: in std_logic_vector(7 downto 0);
    PMODE_pipe_read_req: out std_logic_vector(0 downto 0);
    PMODE_pipe_read_ack: in std_logic_vector(0 downto 0);
    PMODES: out std_logic_vector(3 downto 0);
    clk, reset: in std_logic); --
  --
end entity irlPmodeConverter;
architecture rtlThreadArch of irlPmodeConverter is --
  type ThreadState is (s_cccc_r_state, s_cccc_i_state);
  signal current_thread_state : ThreadState;
  signal IRL8_buffer: unsigned_7_downto_0;
  signal PMODES_buffer: unsigned_3_downto_0;
  constant o1: unsigned_0_downto_0 := "1";
  constant z4: unsigned_3_downto_0 := "0000";
  --
begin -- 
  IRL8 <= IRL8_buffer;
  PMODES <= PMODES_buffer;
  process(clk, reset, current_thread_state , IRL4, PMODE, PMODE_pipe_read_ack) --
    -- declared variables and implied variables 
    variable n_e_x_t_PMODES: unsigned_3_downto_0;
    variable ra: unsigned_0_downto_0;
    variable next_thread_state : ThreadState;
    --
  begin -- 
    -- default values 
    next_thread_state := current_thread_state;
    -- default initializations for output buffer ..... 
    n_e_x_t_PMODES := PMODES_buffer;
    -- default initializations... 
    --  $now  IRL8 := (  z4 &&  IRL4) 
    IRL8_buffer <= (z4 & IRL4);
    --  $now  PMODE$req  :=  o1
    PMODE_pipe_read_req <= o1;
    -- case statement 
    case current_thread_state is -- 
      when s_cccc_r_state => -- 
        next_thread_state := s_cccc_i_state;
        --  PMODES :=  z4
        n_e_x_t_PMODES := z4;
        next_thread_state := s_cccc_i_state;
        --
      when s_cccc_i_state => -- 
        next_thread_state := s_cccc_i_state;
        --  ra :=  PMODE$ack 
        ra := PMODE_pipe_read_ack;
        if (isTrue(ra)) then  -- 
          --  PMODES := ($slice  PMODE 3 0) 
          n_e_x_t_PMODES := PMODE(3 downto 0);
          --
        end if;
        next_thread_state := s_cccc_i_state;
        --
      --
    end case;
    if (clk'event and clk = '1') then -- 
      if (reset = '1') then -- 
        current_thread_state <= s_cccc_r_state;
        -- 
      else -- 
        current_thread_state <= next_thread_state; 
        -- objects to be updated under tick.
        PMODES_buffer <= n_e_x_t_PMODES;
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
library ajit_mcore_lib;
use ajit_mcore_lib.mcore_1x1x32_lite_Type_Package.all;
entity resetConverter is  -- 
  port (-- 
    RST4: in std_logic_vector(3 downto 0);
    RST8: out std_logic_vector(7 downto 0);
    clk, reset: in std_logic); --
  --
end entity resetConverter;
architecture rtlThreadArch of resetConverter is --
  type ThreadState is (s_rc_rst_state);
  signal current_thread_state : ThreadState;
  signal RST8_buffer: unsigned_7_downto_0;
  constant z4: unsigned_3_downto_0 := "0000";
  --
begin -- 
  RST8 <= RST8_buffer;
  process(clk, reset, current_thread_state , RST4) --
    -- declared variables and implied variables 
    variable next_thread_state : ThreadState;
    --
  begin -- 
    -- default values 
    next_thread_state := current_thread_state;
    -- default initializations... 
    --  $now  RST8 := (  z4 &&  RST4) 
    RST8_buffer <= (z4 & RST4);
    -- case statement 
    case current_thread_state is -- 
      when s_rc_rst_state => -- 
        next_thread_state := s_rc_rst_state;
        next_thread_state := s_rc_rst_state;
        --
      --
    end case;
    if (clk'event and clk = '1') then -- 
      if (reset = '1') then -- 
        current_thread_state <= s_rc_rst_state;
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
library ajit_mcore_lib;
use ajit_mcore_lib.mcore_1x1x32_lite_Type_Package.all;
entity setConfiguration is  -- 
  port (-- 
    CORE_ID: out std_logic_vector(7 downto 0);
    IO_MAX_ADDR: out std_logic_vector(35 downto 0);
    IO_MIN_ADDR: out std_logic_vector(35 downto 0);
    clk, reset: in std_logic); --
  --
end entity setConfiguration;
architecture rtlThreadArch of setConfiguration is --
  type ThreadState is (s_sc_i_state);
  signal current_thread_state : ThreadState;
  signal CORE_ID_buffer: unsigned_7_downto_0;
  signal IO_MAX_ADDR_buffer: unsigned_35_downto_0;
  signal IO_MIN_ADDR_buffer: unsigned_35_downto_0;
  --
begin -- 
  CORE_ID <= CORE_ID_buffer;
  IO_MAX_ADDR <= IO_MAX_ADDR_buffer;
  IO_MIN_ADDR <= IO_MIN_ADDR_buffer;
  process(clk, reset, current_thread_state ) --
    -- declared variables and implied variables 
    variable next_thread_state : ThreadState;
    --
  begin -- 
    -- default values 
    next_thread_state := current_thread_state;
    -- default initializations... 
    --  $now  CORE_ID :=  ( $unsigned<8> )  00000000 
    CORE_ID_buffer <= "00000000";
    --  $now  IO_MIN_ADDR :=  ( $unsigned<36> )  000011111111111111110000000000000000 
    IO_MIN_ADDR_buffer <= "000011111111111111110000000000000000";
    --  $now  IO_MAX_ADDR :=  ( $unsigned<36> )  000011111111111111111111111111111111 
    IO_MAX_ADDR_buffer <= "000011111111111111111111111111111111";
    -- case statement 
    case current_thread_state is -- 
      when s_sc_i_state => -- 
        next_thread_state := s_sc_i_state;
        next_thread_state := s_sc_i_state;
        --
      --
    end case;
    if (clk'event and clk = '1') then -- 
      if (reset = '1') then -- 
        current_thread_state <= s_sc_i_state;
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
library ajit_mcore_lib;
use ajit_mcore_lib.mcore_1x1x32_lite_Type_Package.all;
--<<<<<
-->>>>>
library GlueModules;
library ajit_core_lib;
library GlueModules;
library GlueModules;
--<<<<<
entity mcore_1x1x32_lite is -- 
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
end entity mcore_1x1x32_lite;
architecture struct of mcore_1x1x32_lite is -- 
  signal hsys_tie_low, hsys_tie_high: std_logic;
  signal CACHE_STALL_ENABLE : std_logic_vector(0 downto 0);
  signal CORE_BUS_REQUEST_pipe_write_data: std_logic_vector(109 downto 0);
  signal CORE_BUS_REQUEST_pipe_write_req : std_logic_vector(0  downto 0);
  signal CORE_BUS_REQUEST_pipe_write_ack : std_logic_vector(0  downto 0);
  signal CORE_BUS_REQUEST_pipe_read_data: std_logic_vector(109 downto 0);
  signal CORE_BUS_REQUEST_pipe_read_req : std_logic_vector(0  downto 0);
  signal CORE_BUS_REQUEST_pipe_read_ack : std_logic_vector(0  downto 0);
  signal CORE_BUS_RESPONSE_pipe_write_data: std_logic_vector(64 downto 0);
  signal CORE_BUS_RESPONSE_pipe_write_req : std_logic_vector(0  downto 0);
  signal CORE_BUS_RESPONSE_pipe_write_ack : std_logic_vector(0  downto 0);
  signal CORE_BUS_RESPONSE_pipe_read_data: std_logic_vector(64 downto 0);
  signal CORE_BUS_RESPONSE_pipe_read_req : std_logic_vector(0  downto 0);
  signal CORE_BUS_RESPONSE_pipe_read_ack : std_logic_vector(0  downto 0);
  signal CORE_ID : std_logic_vector(7 downto 0);
  signal DEBUG_COMMAND_0_0_pipe_write_data: std_logic_vector(31 downto 0);
  signal DEBUG_COMMAND_0_0_pipe_write_req : std_logic_vector(0  downto 0);
  signal DEBUG_COMMAND_0_0_pipe_write_ack : std_logic_vector(0  downto 0);
  signal DEBUG_COMMAND_0_0_pipe_read_data: std_logic_vector(31 downto 0);
  signal DEBUG_COMMAND_0_0_pipe_read_req : std_logic_vector(0  downto 0);
  signal DEBUG_COMMAND_0_0_pipe_read_ack : std_logic_vector(0  downto 0);
  signal DEBUG_COMMAND_STUB_0_1_pipe_write_data: std_logic_vector(31 downto 0);
  signal DEBUG_COMMAND_STUB_0_1_pipe_write_req : std_logic_vector(0  downto 0);
  signal DEBUG_COMMAND_STUB_0_1_pipe_write_ack : std_logic_vector(0  downto 0);
  signal DEBUG_COMMAND_STUB_0_1_pipe_read_data: std_logic_vector(31 downto 0);
  signal DEBUG_COMMAND_STUB_0_1_pipe_read_req : std_logic_vector(0  downto 0);
  signal DEBUG_COMMAND_STUB_0_1_pipe_read_ack : std_logic_vector(0  downto 0);
  signal DEBUG_RESPONSE_0_0_pipe_write_data: std_logic_vector(31 downto 0);
  signal DEBUG_RESPONSE_0_0_pipe_write_req : std_logic_vector(0  downto 0);
  signal DEBUG_RESPONSE_0_0_pipe_write_ack : std_logic_vector(0  downto 0);
  signal DEBUG_RESPONSE_0_0_pipe_read_data: std_logic_vector(31 downto 0);
  signal DEBUG_RESPONSE_0_0_pipe_read_req : std_logic_vector(0  downto 0);
  signal DEBUG_RESPONSE_0_0_pipe_read_ack : std_logic_vector(0  downto 0);
  signal DEBUG_RESPONSE_STUB_0_1_pipe_write_data: std_logic_vector(31 downto 0);
  signal DEBUG_RESPONSE_STUB_0_1_pipe_write_req : std_logic_vector(0  downto 0);
  signal DEBUG_RESPONSE_STUB_0_1_pipe_write_ack : std_logic_vector(0  downto 0);
  signal DEBUG_RESPONSE_STUB_0_1_pipe_read_data: std_logic_vector(31 downto 0);
  signal DEBUG_RESPONSE_STUB_0_1_pipe_read_req : std_logic_vector(0  downto 0);
  signal DEBUG_RESPONSE_STUB_0_1_pipe_read_ack : std_logic_vector(0  downto 0);
  signal INVALIDATE_TO_CORE_pipe_write_data: std_logic_vector(29 downto 0);
  signal INVALIDATE_TO_CORE_pipe_write_req : std_logic_vector(0  downto 0);
  signal INVALIDATE_TO_CORE_pipe_write_ack : std_logic_vector(0  downto 0);
  signal INVALIDATE_TO_CORE_pipe_read_data: std_logic_vector(29 downto 0);
  signal INVALIDATE_TO_CORE_pipe_read_req : std_logic_vector(0  downto 0);
  signal INVALIDATE_TO_CORE_pipe_read_ack : std_logic_vector(0  downto 0);
  signal IO_MAX_ADDR : std_logic_vector(35 downto 0);
  signal IO_MIN_ADDR : std_logic_vector(35 downto 0);
  signal IRL8_0_0 : std_logic_vector(7 downto 0);
  signal PERIPH_MEM_REQUEST_pipe_write_data: std_logic_vector(109 downto 0);
  signal PERIPH_MEM_REQUEST_pipe_write_req : std_logic_vector(0  downto 0);
  signal PERIPH_MEM_REQUEST_pipe_write_ack : std_logic_vector(0  downto 0);
  signal PERIPH_MEM_REQUEST_pipe_read_data: std_logic_vector(109 downto 0);
  signal PERIPH_MEM_REQUEST_pipe_read_req : std_logic_vector(0  downto 0);
  signal PERIPH_MEM_REQUEST_pipe_read_ack : std_logic_vector(0  downto 0);
  signal PERIPH_MEM_RESPONSE_pipe_write_data: std_logic_vector(64 downto 0);
  signal PERIPH_MEM_RESPONSE_pipe_write_req : std_logic_vector(0  downto 0);
  signal PERIPH_MEM_RESPONSE_pipe_write_ack : std_logic_vector(0  downto 0);
  signal PERIPH_MEM_RESPONSE_pipe_read_data: std_logic_vector(64 downto 0);
  signal PERIPH_MEM_RESPONSE_pipe_read_req : std_logic_vector(0  downto 0);
  signal PERIPH_MEM_RESPONSE_pipe_read_ack : std_logic_vector(0  downto 0);
  signal PMODE_0_0_pipe_write_data: std_logic_vector(7 downto 0);
  signal PMODE_0_0_pipe_write_req : std_logic_vector(0  downto 0);
  signal PMODE_0_0_pipe_write_ack : std_logic_vector(0  downto 0);
  signal PMODE_0_0_pipe_read_data: std_logic_vector(7 downto 0);
  signal PMODE_0_0_pipe_read_req : std_logic_vector(0  downto 0);
  signal PMODE_0_0_pipe_read_ack : std_logic_vector(0  downto 0);
  signal THREAD_RESET_8 : std_logic_vector(7 downto 0);
  component acb_afb_bridge is -- 
    port( -- 
      AFB_BUS_RESPONSE_pipe_write_data : in std_logic_vector(32 downto 0);
      AFB_BUS_RESPONSE_pipe_write_req  : in std_logic_vector(0  downto 0);
      AFB_BUS_RESPONSE_pipe_write_ack  : out std_logic_vector(0  downto 0);
      CORE_BUS_REQUEST_pipe_write_data : in std_logic_vector(109 downto 0);
      CORE_BUS_REQUEST_pipe_write_req  : in std_logic_vector(0  downto 0);
      CORE_BUS_REQUEST_pipe_write_ack  : out std_logic_vector(0  downto 0);
      AFB_BUS_REQUEST_pipe_read_data : out std_logic_vector(73 downto 0);
      AFB_BUS_REQUEST_pipe_read_req  : in std_logic_vector(0  downto 0);
      AFB_BUS_REQUEST_pipe_read_ack  : out std_logic_vector(0  downto 0);
      CORE_BUS_RESPONSE_pipe_read_data : out std_logic_vector(64 downto 0);
      CORE_BUS_RESPONSE_pipe_read_req  : in std_logic_vector(0  downto 0);
      CORE_BUS_RESPONSE_pipe_read_ack  : out std_logic_vector(0  downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for acb_afb_bridge_inst :  acb_afb_bridge -- 
    use entity GlueModules.acb_afb_bridge; -- 
  --<<<<<
  component core_1x32_no_fp_no_mmu is -- 
    port( -- 
      CACHE_STALL_ENABLE : in std_logic_vector(0 downto 0);
      CORE_BUS_RESPONSE_pipe_write_data : in std_logic_vector(64 downto 0);
      CORE_BUS_RESPONSE_pipe_write_req  : in std_logic_vector(0  downto 0);
      CORE_BUS_RESPONSE_pipe_write_ack  : out std_logic_vector(0  downto 0);
      CORE_ID : in std_logic_vector(7 downto 0);
      ENV_to_AJIT_debug_command_pipe_write_data : in std_logic_vector(31 downto 0);
      ENV_to_AJIT_debug_command_pipe_write_req  : in std_logic_vector(0  downto 0);
      ENV_to_AJIT_debug_command_pipe_write_ack  : out std_logic_vector(0  downto 0);
      ENV_to_AJIT_reset : in std_logic_vector(7 downto 0);
      ENV_to_CPU_irl : in std_logic_vector(7 downto 0);
      INVALIDATE_REQUEST_pipe_write_data : in std_logic_vector(29 downto 0);
      INVALIDATE_REQUEST_pipe_write_req  : in std_logic_vector(0  downto 0);
      INVALIDATE_REQUEST_pipe_write_ack  : out std_logic_vector(0  downto 0);
      AJIT_to_ENV_debug_response_pipe_read_data : out std_logic_vector(31 downto 0);
      AJIT_to_ENV_debug_response_pipe_read_req  : in std_logic_vector(0  downto 0);
      AJIT_to_ENV_debug_response_pipe_read_ack  : out std_logic_vector(0  downto 0);
      AJIT_to_ENV_logger_pipe_read_data : out std_logic_vector(31 downto 0);
      AJIT_to_ENV_logger_pipe_read_req  : in std_logic_vector(0  downto 0);
      AJIT_to_ENV_logger_pipe_read_ack  : out std_logic_vector(0  downto 0);
      AJIT_to_ENV_processor_mode_pipe_read_data : out std_logic_vector(7 downto 0);
      AJIT_to_ENV_processor_mode_pipe_read_req  : in std_logic_vector(0  downto 0);
      AJIT_to_ENV_processor_mode_pipe_read_ack  : out std_logic_vector(0  downto 0);
      CORE_BUS_REQUEST_pipe_read_data : out std_logic_vector(109 downto 0);
      CORE_BUS_REQUEST_pipe_read_req  : in std_logic_vector(0  downto 0);
      CORE_BUS_REQUEST_pipe_read_ack  : out std_logic_vector(0  downto 0);
      CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_read_data : out std_logic_vector(9 downto 0);
      CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_read_req  : in std_logic_vector(0  downto 0);
      CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_read_ack  : out std_logic_vector(0  downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for core_0_inst :  core_1x32_no_fp_no_mmu -- 
    use entity ajit_core_lib.core_1x32_no_fp_no_mmu; -- 
  --<<<<<
  component debug_aggregator_single_core is -- 
    port( -- 
      AJIT_to_ENV_debug_response_0_0_pipe_write_data : in std_logic_vector(31 downto 0);
      AJIT_to_ENV_debug_response_0_0_pipe_write_req  : in std_logic_vector(0  downto 0);
      AJIT_to_ENV_debug_response_0_0_pipe_write_ack  : out std_logic_vector(0  downto 0);
      AJIT_to_ENV_debug_response_0_1_pipe_write_data : in std_logic_vector(31 downto 0);
      AJIT_to_ENV_debug_response_0_1_pipe_write_req  : in std_logic_vector(0  downto 0);
      AJIT_to_ENV_debug_response_0_1_pipe_write_ack  : out std_logic_vector(0  downto 0);
      SOC_MONITOR_to_DEBUG_pipe_write_data : in std_logic_vector(7 downto 0);
      SOC_MONITOR_to_DEBUG_pipe_write_req  : in std_logic_vector(0  downto 0);
      SOC_MONITOR_to_DEBUG_pipe_write_ack  : out std_logic_vector(0  downto 0);
      ENV_to_AJIT_debug_command_0_0_pipe_read_data : out std_logic_vector(31 downto 0);
      ENV_to_AJIT_debug_command_0_0_pipe_read_req  : in std_logic_vector(0  downto 0);
      ENV_to_AJIT_debug_command_0_0_pipe_read_ack  : out std_logic_vector(0  downto 0);
      ENV_to_AJIT_debug_command_0_1_pipe_read_data : out std_logic_vector(31 downto 0);
      ENV_to_AJIT_debug_command_0_1_pipe_read_req  : in std_logic_vector(0  downto 0);
      ENV_to_AJIT_debug_command_0_1_pipe_read_ack  : out std_logic_vector(0  downto 0);
      SOC_DEBUG_to_MONITOR_pipe_read_data : out std_logic_vector(7 downto 0);
      SOC_DEBUG_to_MONITOR_pipe_read_req  : in std_logic_vector(0  downto 0);
      SOC_DEBUG_to_MONITOR_pipe_read_ack  : out std_logic_vector(0  downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for debug_aggr_inst :  debug_aggregator_single_core -- 
    use entity GlueModules.debug_aggregator_single_core; -- 
  --<<<<<
  component acb_fast_tap is -- 
    port( -- 
      CORE_BUS_REQUEST_pipe_write_data : in std_logic_vector(109 downto 0);
      CORE_BUS_REQUEST_pipe_write_req  : in std_logic_vector(0  downto 0);
      CORE_BUS_REQUEST_pipe_write_ack  : out std_logic_vector(0  downto 0);
      CORE_BUS_RESPONSE_TAP_pipe_write_data : in std_logic_vector(64 downto 0);
      CORE_BUS_RESPONSE_TAP_pipe_write_req  : in std_logic_vector(0  downto 0);
      CORE_BUS_RESPONSE_TAP_pipe_write_ack  : out std_logic_vector(0  downto 0);
      CORE_BUS_RESPONSE_THROUGH_pipe_write_data : in std_logic_vector(64 downto 0);
      CORE_BUS_RESPONSE_THROUGH_pipe_write_req  : in std_logic_vector(0  downto 0);
      CORE_BUS_RESPONSE_THROUGH_pipe_write_ack  : out std_logic_vector(0  downto 0);
      MAX_ADDR_TAP : in std_logic_vector(35 downto 0);
      MIN_ADDR_TAP : in std_logic_vector(35 downto 0);
      CORE_BUS_REQUEST_TAP_pipe_read_data : out std_logic_vector(109 downto 0);
      CORE_BUS_REQUEST_TAP_pipe_read_req  : in std_logic_vector(0  downto 0);
      CORE_BUS_REQUEST_TAP_pipe_read_ack  : out std_logic_vector(0  downto 0);
      CORE_BUS_REQUEST_THROUGH_pipe_read_data : out std_logic_vector(109 downto 0);
      CORE_BUS_REQUEST_THROUGH_pipe_read_req  : in std_logic_vector(0  downto 0);
      CORE_BUS_REQUEST_THROUGH_pipe_read_ack  : out std_logic_vector(0  downto 0);
      CORE_BUS_RESPONSE_pipe_read_data : out std_logic_vector(64 downto 0);
      CORE_BUS_RESPONSE_pipe_read_req  : in std_logic_vector(0  downto 0);
      CORE_BUS_RESPONSE_pipe_read_ack  : out std_logic_vector(0  downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for periph_tap_inst :  acb_fast_tap -- 
    use entity GlueModules.acb_fast_tap; -- 
  --<<<<<
  component resetConverter is  -- 
    port (-- 
      RST4: in std_logic_vector(3 downto 0);
      RST8: out std_logic_vector(7 downto 0);
      clk, reset: in std_logic); --
    --
  end component;
  -->>>>>
  for resetConv_str :  resetConverter -- 
    use entity ajit_mcore_lib.resetConverter; -- 
  --<<<<<
  component irlPmodeConverter is  -- 
    port (-- 
      IRL4: in std_logic_vector(3 downto 0);
      IRL8: out std_logic_vector(7 downto 0);
      PMODE: in std_logic_vector(7 downto 0);
      PMODE_pipe_read_req: out std_logic_vector(0 downto 0);
      PMODE_pipe_read_ack: in std_logic_vector(0 downto 0);
      PMODES: out std_logic_vector(3 downto 0);
      clk, reset: in std_logic); --
    --
  end component;
  -->>>>>
  for irlResetPmode_0_0 :  irlPmodeConverter -- 
    use entity ajit_mcore_lib.irlPmodeConverter; -- 
  --<<<<<
  component debugStub is  -- 
    port (-- 
      CSE: out std_logic_vector(0 downto 0);
      INVPIPE: out std_logic_vector(29 downto 0);
      INVPIPE_pipe_write_req: out std_logic_vector(0 downto 0);
      INVPIPE_pipe_write_ack: in std_logic_vector(0 downto 0);
      REQPIPE: in std_logic_vector(31 downto 0);
      REQPIPE_pipe_read_req: out std_logic_vector(0 downto 0);
      REQPIPE_pipe_read_ack: in std_logic_vector(0 downto 0);
      RESPPIPE: out std_logic_vector(31 downto 0);
      RESPPIPE_pipe_write_req: out std_logic_vector(0 downto 0);
      RESPPIPE_pipe_write_ack: in std_logic_vector(0 downto 0);
      clk, reset: in std_logic); --
    --
  end component;
  -->>>>>
  for DSTUB_0_1 :  debugStub -- 
    use entity ajit_mcore_lib.debugStub; -- 
  --<<<<<
  component setConfiguration is  -- 
    port (-- 
      CORE_ID: out std_logic_vector(7 downto 0);
      IO_MAX_ADDR: out std_logic_vector(35 downto 0);
      IO_MIN_ADDR: out std_logic_vector(35 downto 0);
      clk, reset: in std_logic); --
    --
  end component;
  -->>>>>
  for sCS :  setConfiguration -- 
    use entity ajit_mcore_lib.setConfiguration; -- 
  --<<<<<
  -- 
begin -- 
  hsys_tie_low  <= '0';
  hsys_tie_high <= '1';
  acb_afb_bridge_inst: acb_afb_bridge
  port map ( --
    AFB_BUS_REQUEST_pipe_read_data => AFB_BUS_REQUEST_pipe_read_data,
    AFB_BUS_REQUEST_pipe_read_req => AFB_BUS_REQUEST_pipe_read_req,
    AFB_BUS_REQUEST_pipe_read_ack => AFB_BUS_REQUEST_pipe_read_ack,
    AFB_BUS_RESPONSE_pipe_write_data => AFB_BUS_RESPONSE_pipe_write_data,
    AFB_BUS_RESPONSE_pipe_write_req => AFB_BUS_RESPONSE_pipe_write_req,
    AFB_BUS_RESPONSE_pipe_write_ack => AFB_BUS_RESPONSE_pipe_write_ack,
    CORE_BUS_REQUEST_pipe_write_data => PERIPH_MEM_REQUEST_pipe_read_data,
    CORE_BUS_REQUEST_pipe_write_req => PERIPH_MEM_REQUEST_pipe_read_ack,
    CORE_BUS_REQUEST_pipe_write_ack => PERIPH_MEM_REQUEST_pipe_read_req,
    CORE_BUS_RESPONSE_pipe_read_data => PERIPH_MEM_RESPONSE_pipe_write_data,
    CORE_BUS_RESPONSE_pipe_read_req => PERIPH_MEM_RESPONSE_pipe_write_ack,
    CORE_BUS_RESPONSE_pipe_read_ack => PERIPH_MEM_RESPONSE_pipe_write_req,
    clk => clk,  reset => reset
    ); -- 
  core_0_inst: core_1x32_no_fp_no_mmu
  port map ( --
    AJIT_to_ENV_debug_response_pipe_read_data => DEBUG_RESPONSE_0_0_pipe_write_data,
    AJIT_to_ENV_debug_response_pipe_read_req => DEBUG_RESPONSE_0_0_pipe_write_ack,
    AJIT_to_ENV_debug_response_pipe_read_ack => DEBUG_RESPONSE_0_0_pipe_write_req,
    AJIT_to_ENV_logger_pipe_read_data => TRACE_0_0_pipe_read_data,
    AJIT_to_ENV_logger_pipe_read_req => TRACE_0_0_pipe_read_req,
    AJIT_to_ENV_logger_pipe_read_ack => TRACE_0_0_pipe_read_ack,
    AJIT_to_ENV_processor_mode_pipe_read_data => PMODE_0_0_pipe_write_data,
    AJIT_to_ENV_processor_mode_pipe_read_req => PMODE_0_0_pipe_write_ack,
    AJIT_to_ENV_processor_mode_pipe_read_ack => PMODE_0_0_pipe_write_req,
    CACHE_STALL_ENABLE => CACHE_STALL_ENABLE,
    CORE_BUS_REQUEST_pipe_read_data => CORE_BUS_REQUEST_pipe_write_data,
    CORE_BUS_REQUEST_pipe_read_req => CORE_BUS_REQUEST_pipe_write_ack,
    CORE_BUS_REQUEST_pipe_read_ack => CORE_BUS_REQUEST_pipe_write_req,
    CORE_BUS_RESPONSE_pipe_write_data => CORE_BUS_RESPONSE_pipe_read_data,
    CORE_BUS_RESPONSE_pipe_write_req => CORE_BUS_RESPONSE_pipe_read_ack,
    CORE_BUS_RESPONSE_pipe_write_ack => CORE_BUS_RESPONSE_pipe_read_req,
    CORE_ID => CORE_ID,
    CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_read_data => CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_read_data,
    CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_read_req => CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_read_req,
    CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_read_ack => CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_read_ack,
    ENV_to_AJIT_debug_command_pipe_write_data => DEBUG_COMMAND_0_0_pipe_read_data,
    ENV_to_AJIT_debug_command_pipe_write_req => DEBUG_COMMAND_0_0_pipe_read_ack,
    ENV_to_AJIT_debug_command_pipe_write_ack => DEBUG_COMMAND_0_0_pipe_read_req,
    ENV_to_AJIT_reset => THREAD_RESET_8,
    ENV_to_CPU_irl => IRL8_0_0,
    INVALIDATE_REQUEST_pipe_write_data => INVALIDATE_TO_CORE_pipe_read_data,
    INVALIDATE_REQUEST_pipe_write_req => INVALIDATE_TO_CORE_pipe_read_ack,
    INVALIDATE_REQUEST_pipe_write_ack => INVALIDATE_TO_CORE_pipe_read_req,
    clk => clk,  reset => reset
    ); -- 
  debug_aggr_inst: debug_aggregator_single_core
  port map ( --
    AJIT_to_ENV_debug_response_0_0_pipe_write_data => DEBUG_RESPONSE_0_0_pipe_read_data,
    AJIT_to_ENV_debug_response_0_0_pipe_write_req => DEBUG_RESPONSE_0_0_pipe_read_ack,
    AJIT_to_ENV_debug_response_0_0_pipe_write_ack => DEBUG_RESPONSE_0_0_pipe_read_req,
    AJIT_to_ENV_debug_response_0_1_pipe_write_data => DEBUG_RESPONSE_STUB_0_1_pipe_read_data,
    AJIT_to_ENV_debug_response_0_1_pipe_write_req => DEBUG_RESPONSE_STUB_0_1_pipe_read_ack,
    AJIT_to_ENV_debug_response_0_1_pipe_write_ack => DEBUG_RESPONSE_STUB_0_1_pipe_read_req,
    ENV_to_AJIT_debug_command_0_0_pipe_read_data => DEBUG_COMMAND_0_0_pipe_write_data,
    ENV_to_AJIT_debug_command_0_0_pipe_read_req => DEBUG_COMMAND_0_0_pipe_write_ack,
    ENV_to_AJIT_debug_command_0_0_pipe_read_ack => DEBUG_COMMAND_0_0_pipe_write_req,
    ENV_to_AJIT_debug_command_0_1_pipe_read_data => DEBUG_COMMAND_STUB_0_1_pipe_write_data,
    ENV_to_AJIT_debug_command_0_1_pipe_read_req => DEBUG_COMMAND_STUB_0_1_pipe_write_ack,
    ENV_to_AJIT_debug_command_0_1_pipe_read_ack => DEBUG_COMMAND_STUB_0_1_pipe_write_req,
    SOC_DEBUG_to_MONITOR_pipe_read_data => SOC_DEBUG_to_MONITOR_pipe_read_data,
    SOC_DEBUG_to_MONITOR_pipe_read_req => SOC_DEBUG_to_MONITOR_pipe_read_req,
    SOC_DEBUG_to_MONITOR_pipe_read_ack => SOC_DEBUG_to_MONITOR_pipe_read_ack,
    SOC_MONITOR_to_DEBUG_pipe_write_data => SOC_MONITOR_to_DEBUG_pipe_write_data,
    SOC_MONITOR_to_DEBUG_pipe_write_req => SOC_MONITOR_to_DEBUG_pipe_write_req,
    SOC_MONITOR_to_DEBUG_pipe_write_ack => SOC_MONITOR_to_DEBUG_pipe_write_ack,
    clk => clk,  reset => reset
    ); -- 
  periph_tap_inst: acb_fast_tap
  port map ( --
    CORE_BUS_REQUEST_pipe_write_data => CORE_BUS_REQUEST_pipe_read_data,
    CORE_BUS_REQUEST_pipe_write_req => CORE_BUS_REQUEST_pipe_read_ack,
    CORE_BUS_REQUEST_pipe_write_ack => CORE_BUS_REQUEST_pipe_read_req,
    CORE_BUS_REQUEST_TAP_pipe_read_data => PERIPH_MEM_REQUEST_pipe_write_data,
    CORE_BUS_REQUEST_TAP_pipe_read_req => PERIPH_MEM_REQUEST_pipe_write_ack,
    CORE_BUS_REQUEST_TAP_pipe_read_ack => PERIPH_MEM_REQUEST_pipe_write_req,
    CORE_BUS_REQUEST_THROUGH_pipe_read_data => MAIN_MEM_REQUEST_pipe_read_data,
    CORE_BUS_REQUEST_THROUGH_pipe_read_req => MAIN_MEM_REQUEST_pipe_read_req,
    CORE_BUS_REQUEST_THROUGH_pipe_read_ack => MAIN_MEM_REQUEST_pipe_read_ack,
    CORE_BUS_RESPONSE_pipe_read_data => CORE_BUS_RESPONSE_pipe_write_data,
    CORE_BUS_RESPONSE_pipe_read_req => CORE_BUS_RESPONSE_pipe_write_ack,
    CORE_BUS_RESPONSE_pipe_read_ack => CORE_BUS_RESPONSE_pipe_write_req,
    CORE_BUS_RESPONSE_TAP_pipe_write_data => PERIPH_MEM_RESPONSE_pipe_read_data,
    CORE_BUS_RESPONSE_TAP_pipe_write_req => PERIPH_MEM_RESPONSE_pipe_read_ack,
    CORE_BUS_RESPONSE_TAP_pipe_write_ack => PERIPH_MEM_RESPONSE_pipe_read_req,
    CORE_BUS_RESPONSE_THROUGH_pipe_write_data => MAIN_MEM_RESPONSE_pipe_write_data,
    CORE_BUS_RESPONSE_THROUGH_pipe_write_req => MAIN_MEM_RESPONSE_pipe_write_req,
    CORE_BUS_RESPONSE_THROUGH_pipe_write_ack => MAIN_MEM_RESPONSE_pipe_write_ack,
    MAX_ADDR_TAP => IO_MAX_ADDR,
    MIN_ADDR_TAP => IO_MIN_ADDR,
    clk => clk,  reset => reset
    ); -- 
  resetConv_str: resetConverter -- 
    port map ( -- 
      RST4 => THREAD_RESET,
      RST8 => THREAD_RESET_8,
      clk => clk, reset => reset--
    ); -- 
  irlResetPmode_0_0: irlPmodeConverter -- 
    port map ( -- 
      IRL4 => IRL_0_0,
      IRL8 => IRL8_0_0,
      PMODE => PMODE_0_0_pipe_read_data,
      PMODE_pipe_read_req => PMODE_0_0_pipe_read_req,
      PMODE_pipe_read_ack => PMODE_0_0_pipe_read_ack,
      PMODES => TMODE_0_0,
      clk => clk, reset => reset--
    ); -- 
  DSTUB_0_1: debugStub -- 
    port map ( -- 
      CSE => CACHE_STALL_ENABLE,
      INVPIPE => INVALIDATE_TO_CORE_pipe_write_data,
      INVPIPE_pipe_write_req => INVALIDATE_TO_CORE_pipe_write_req,
      INVPIPE_pipe_write_ack => INVALIDATE_TO_CORE_pipe_write_ack,
      REQPIPE => DEBUG_COMMAND_STUB_0_1_pipe_read_data,
      REQPIPE_pipe_read_req => DEBUG_COMMAND_STUB_0_1_pipe_read_req,
      REQPIPE_pipe_read_ack => DEBUG_COMMAND_STUB_0_1_pipe_read_ack,
      RESPPIPE => DEBUG_RESPONSE_STUB_0_1_pipe_write_data,
      RESPPIPE_pipe_write_req => DEBUG_RESPONSE_STUB_0_1_pipe_write_req,
      RESPPIPE_pipe_write_ack => DEBUG_RESPONSE_STUB_0_1_pipe_write_ack,
      clk => clk, reset => reset--
    ); -- 
  sCS: setConfiguration -- 
    port map ( -- 
      CORE_ID => CORE_ID,
      IO_MAX_ADDR => IO_MAX_ADDR,
      IO_MIN_ADDR => IO_MIN_ADDR,
      clk => clk, reset => reset--
    ); -- 
  CORE_BUS_REQUEST_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe CORE_BUS_REQUEST",
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
      read_req => CORE_BUS_REQUEST_pipe_read_req,
      read_ack => CORE_BUS_REQUEST_pipe_read_ack,
      read_data => CORE_BUS_REQUEST_pipe_read_data,
      write_req => CORE_BUS_REQUEST_pipe_write_req,
      write_ack => CORE_BUS_REQUEST_pipe_write_ack,
      write_data => CORE_BUS_REQUEST_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  CORE_BUS_RESPONSE_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe CORE_BUS_RESPONSE",
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
      read_req => CORE_BUS_RESPONSE_pipe_read_req,
      read_ack => CORE_BUS_RESPONSE_pipe_read_ack,
      read_data => CORE_BUS_RESPONSE_pipe_read_data,
      write_req => CORE_BUS_RESPONSE_pipe_write_req,
      write_ack => CORE_BUS_RESPONSE_pipe_write_ack,
      write_data => CORE_BUS_RESPONSE_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  DEBUG_COMMAND_0_0_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe DEBUG_COMMAND_0_0",
      num_reads => 1,
      num_writes => 1,
      data_width => 32,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => DEBUG_COMMAND_0_0_pipe_read_req,
      read_ack => DEBUG_COMMAND_0_0_pipe_read_ack,
      read_data => DEBUG_COMMAND_0_0_pipe_read_data,
      write_req => DEBUG_COMMAND_0_0_pipe_write_req,
      write_ack => DEBUG_COMMAND_0_0_pipe_write_ack,
      write_data => DEBUG_COMMAND_0_0_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  DEBUG_COMMAND_STUB_0_1_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe DEBUG_COMMAND_STUB_0_1",
      num_reads => 1,
      num_writes => 1,
      data_width => 32,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => DEBUG_COMMAND_STUB_0_1_pipe_read_req,
      read_ack => DEBUG_COMMAND_STUB_0_1_pipe_read_ack,
      read_data => DEBUG_COMMAND_STUB_0_1_pipe_read_data,
      write_req => DEBUG_COMMAND_STUB_0_1_pipe_write_req,
      write_ack => DEBUG_COMMAND_STUB_0_1_pipe_write_ack,
      write_data => DEBUG_COMMAND_STUB_0_1_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  DEBUG_RESPONSE_0_0_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe DEBUG_RESPONSE_0_0",
      num_reads => 1,
      num_writes => 1,
      data_width => 32,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => DEBUG_RESPONSE_0_0_pipe_read_req,
      read_ack => DEBUG_RESPONSE_0_0_pipe_read_ack,
      read_data => DEBUG_RESPONSE_0_0_pipe_read_data,
      write_req => DEBUG_RESPONSE_0_0_pipe_write_req,
      write_ack => DEBUG_RESPONSE_0_0_pipe_write_ack,
      write_data => DEBUG_RESPONSE_0_0_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  DEBUG_RESPONSE_STUB_0_1_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe DEBUG_RESPONSE_STUB_0_1",
      num_reads => 1,
      num_writes => 1,
      data_width => 32,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => DEBUG_RESPONSE_STUB_0_1_pipe_read_req,
      read_ack => DEBUG_RESPONSE_STUB_0_1_pipe_read_ack,
      read_data => DEBUG_RESPONSE_STUB_0_1_pipe_read_data,
      write_req => DEBUG_RESPONSE_STUB_0_1_pipe_write_req,
      write_ack => DEBUG_RESPONSE_STUB_0_1_pipe_write_ack,
      write_data => DEBUG_RESPONSE_STUB_0_1_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  INVALIDATE_TO_CORE_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe INVALIDATE_TO_CORE",
      num_reads => 1,
      num_writes => 1,
      data_width => 30,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => INVALIDATE_TO_CORE_pipe_read_req,
      read_ack => INVALIDATE_TO_CORE_pipe_read_ack,
      read_data => INVALIDATE_TO_CORE_pipe_read_data,
      write_req => INVALIDATE_TO_CORE_pipe_write_req,
      write_ack => INVALIDATE_TO_CORE_pipe_write_ack,
      write_data => INVALIDATE_TO_CORE_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  PERIPH_MEM_REQUEST_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe PERIPH_MEM_REQUEST",
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
      read_req => PERIPH_MEM_REQUEST_pipe_read_req,
      read_ack => PERIPH_MEM_REQUEST_pipe_read_ack,
      read_data => PERIPH_MEM_REQUEST_pipe_read_data,
      write_req => PERIPH_MEM_REQUEST_pipe_write_req,
      write_ack => PERIPH_MEM_REQUEST_pipe_write_ack,
      write_data => PERIPH_MEM_REQUEST_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  PERIPH_MEM_RESPONSE_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe PERIPH_MEM_RESPONSE",
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
      read_req => PERIPH_MEM_RESPONSE_pipe_read_req,
      read_ack => PERIPH_MEM_RESPONSE_pipe_read_ack,
      read_data => PERIPH_MEM_RESPONSE_pipe_read_data,
      write_req => PERIPH_MEM_RESPONSE_pipe_write_req,
      write_ack => PERIPH_MEM_RESPONSE_pipe_write_ack,
      write_data => PERIPH_MEM_RESPONSE_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  PMODE_0_0_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe PMODE_0_0",
      num_reads => 1,
      num_writes => 1,
      data_width => 8,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 1 --
    )
    port map( -- 
      read_req => PMODE_0_0_pipe_read_req,
      read_ack => PMODE_0_0_pipe_read_ack,
      read_data => PMODE_0_0_pipe_read_data,
      write_req => PMODE_0_0_pipe_write_req,
      write_ack => PMODE_0_0_pipe_write_ack,
      write_data => PMODE_0_0_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- 
end struct;
