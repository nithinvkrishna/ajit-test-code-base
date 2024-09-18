library ieee;
use ieee.std_logic_1164.all;
package core_1x32_no_fp_no_mmu_Type_Package is -- 
  subtype unsigned_7_downto_0 is std_logic_vector(7 downto 0);
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
library ajit_core_lib;
use ajit_core_lib.core_1x32_no_fp_no_mmu_Type_Package.all;
entity SetThreadId is  -- 
  port (-- 
    null_thread_id: out std_logic_vector(7 downto 0);
    clk, reset: in std_logic); --
  --
end entity SetThreadId;
architecture rtlThreadArch of SetThreadId is --
  type ThreadState is (s_t_i_state);
  signal current_thread_state : ThreadState;
  signal null_thread_id_buffer: unsigned_7_downto_0;
  --
begin -- 
  null_thread_id <= null_thread_id_buffer;
  process(clk, reset, current_thread_state ) --
    -- declared variables and implied variables 
    variable next_thread_state : ThreadState;
    --
  begin -- 
    -- default values 
    next_thread_state := current_thread_state;
    -- default initializations... 
    --  $now  null_thread_id :=  ( $unsigned<8> )  00000000 
    null_thread_id_buffer <= "00000000";
    -- case statement 
    case current_thread_state is -- 
      when s_t_i_state => -- 
        next_thread_state := s_t_i_state;
        next_thread_state := s_t_i_state;
        --
      --
    end case;
    if (clk'event and clk = '1') then -- 
      if (reset = '1') then -- 
        current_thread_state <= s_t_i_state;
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
library ajit_core_lib;
use ajit_core_lib.core_1x32_no_fp_no_mmu_Type_Package.all;
--<<<<<
-->>>>>
library core_units;
library munit_lib;
--<<<<<
entity core_1x32_no_fp_no_mmu is -- 
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
end entity core_1x32_no_fp_no_mmu;
architecture struct of core_1x32_no_fp_no_mmu is -- 
  signal hsys_tie_low, hsys_tie_high: std_logic;
  signal DCACHE_to_CPU_reset_ack_pipe_write_data: std_logic_vector(0 downto 0);
  signal DCACHE_to_CPU_reset_ack_pipe_write_req : std_logic_vector(0  downto 0);
  signal DCACHE_to_CPU_reset_ack_pipe_write_ack : std_logic_vector(0  downto 0);
  signal DCACHE_to_CPU_reset_ack_pipe_read_data: std_logic_vector(0 downto 0);
  signal DCACHE_to_CPU_reset_ack_pipe_read_req : std_logic_vector(0  downto 0);
  signal DCACHE_to_CPU_reset_ack_pipe_read_ack : std_logic_vector(0  downto 0);
  signal DCACHE_to_CPU_response_pipe_write_data: std_logic_vector(71 downto 0);
  signal DCACHE_to_CPU_response_pipe_write_req : std_logic_vector(0  downto 0);
  signal DCACHE_to_CPU_response_pipe_write_ack : std_logic_vector(0  downto 0);
  signal DCACHE_to_CPU_response_pipe_read_data: std_logic_vector(71 downto 0);
  signal DCACHE_to_CPU_response_pipe_read_req : std_logic_vector(0  downto 0);
  signal DCACHE_to_CPU_response_pipe_read_ack : std_logic_vector(0  downto 0);
  signal DCACHE_to_CPU_slow_response_pipe_write_data: std_logic_vector(71 downto 0);
  signal DCACHE_to_CPU_slow_response_pipe_write_req : std_logic_vector(0  downto 0);
  signal DCACHE_to_CPU_slow_response_pipe_write_ack : std_logic_vector(0  downto 0);
  signal DCACHE_to_CPU_slow_response_pipe_read_data: std_logic_vector(71 downto 0);
  signal DCACHE_to_CPU_slow_response_pipe_read_req : std_logic_vector(0  downto 0);
  signal DCACHE_to_CPU_slow_response_pipe_read_ack : std_logic_vector(0  downto 0);
  signal ICACHE_to_CPU_reset_ack_pipe_write_data: std_logic_vector(0 downto 0);
  signal ICACHE_to_CPU_reset_ack_pipe_write_req : std_logic_vector(0  downto 0);
  signal ICACHE_to_CPU_reset_ack_pipe_write_ack : std_logic_vector(0  downto 0);
  signal ICACHE_to_CPU_reset_ack_pipe_read_data: std_logic_vector(0 downto 0);
  signal ICACHE_to_CPU_reset_ack_pipe_read_req : std_logic_vector(0  downto 0);
  signal ICACHE_to_CPU_reset_ack_pipe_read_ack : std_logic_vector(0  downto 0);
  signal ICACHE_to_CPU_response_pipe_write_data: std_logic_vector(89 downto 0);
  signal ICACHE_to_CPU_response_pipe_write_req : std_logic_vector(0  downto 0);
  signal ICACHE_to_CPU_response_pipe_write_ack : std_logic_vector(0  downto 0);
  signal ICACHE_to_CPU_response_pipe_read_data: std_logic_vector(89 downto 0);
  signal ICACHE_to_CPU_response_pipe_read_req : std_logic_vector(0  downto 0);
  signal ICACHE_to_CPU_response_pipe_read_ack : std_logic_vector(0  downto 0);
  signal MMU_to_CPU_reset_ack_pipe_write_data: std_logic_vector(0 downto 0);
  signal MMU_to_CPU_reset_ack_pipe_write_req : std_logic_vector(0  downto 0);
  signal MMU_to_CPU_reset_ack_pipe_write_ack : std_logic_vector(0  downto 0);
  signal MMU_to_CPU_reset_ack_pipe_read_data: std_logic_vector(0 downto 0);
  signal MMU_to_CPU_reset_ack_pipe_read_req : std_logic_vector(0  downto 0);
  signal MMU_to_CPU_reset_ack_pipe_read_ack : std_logic_vector(0  downto 0);
  signal NOBLOCK_CPU_to_DCACHE_command_pipe_write_data: std_logic_vector(142 downto 0);
  signal NOBLOCK_CPU_to_DCACHE_command_pipe_write_req : std_logic_vector(0  downto 0);
  signal NOBLOCK_CPU_to_DCACHE_command_pipe_write_ack : std_logic_vector(0  downto 0);
  signal NOBLOCK_CPU_to_DCACHE_command_pipe_read_data: std_logic_vector(142 downto 0);
  signal NOBLOCK_CPU_to_DCACHE_command_pipe_read_req : std_logic_vector(0  downto 0);
  signal NOBLOCK_CPU_to_DCACHE_command_pipe_read_ack : std_logic_vector(0  downto 0);
  signal NOBLOCK_CPU_to_DCACHE_reset_pipe_write_data: std_logic_vector(0 downto 0);
  signal NOBLOCK_CPU_to_DCACHE_reset_pipe_write_req : std_logic_vector(0  downto 0);
  signal NOBLOCK_CPU_to_DCACHE_reset_pipe_write_ack : std_logic_vector(0  downto 0);
  signal NOBLOCK_CPU_to_DCACHE_reset_pipe_read_data: std_logic_vector(0 downto 0);
  signal NOBLOCK_CPU_to_DCACHE_reset_pipe_read_req : std_logic_vector(0  downto 0);
  signal NOBLOCK_CPU_to_DCACHE_reset_pipe_read_ack : std_logic_vector(0  downto 0);
  signal NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_data: std_logic_vector(120 downto 0);
  signal NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_req : std_logic_vector(0  downto 0);
  signal NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_ack : std_logic_vector(0  downto 0);
  signal NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_data: std_logic_vector(120 downto 0);
  signal NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_req : std_logic_vector(0  downto 0);
  signal NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_ack : std_logic_vector(0  downto 0);
  signal NOBLOCK_CPU_to_ICACHE_command_pipe_write_data: std_logic_vector(40 downto 0);
  signal NOBLOCK_CPU_to_ICACHE_command_pipe_write_req : std_logic_vector(0  downto 0);
  signal NOBLOCK_CPU_to_ICACHE_command_pipe_write_ack : std_logic_vector(0  downto 0);
  signal NOBLOCK_CPU_to_ICACHE_command_pipe_read_data: std_logic_vector(40 downto 0);
  signal NOBLOCK_CPU_to_ICACHE_command_pipe_read_req : std_logic_vector(0  downto 0);
  signal NOBLOCK_CPU_to_ICACHE_command_pipe_read_ack : std_logic_vector(0  downto 0);
  signal NOBLOCK_CPU_to_ICACHE_reset_pipe_write_data: std_logic_vector(0 downto 0);
  signal NOBLOCK_CPU_to_ICACHE_reset_pipe_write_req : std_logic_vector(0  downto 0);
  signal NOBLOCK_CPU_to_ICACHE_reset_pipe_write_ack : std_logic_vector(0  downto 0);
  signal NOBLOCK_CPU_to_ICACHE_reset_pipe_read_data: std_logic_vector(0 downto 0);
  signal NOBLOCK_CPU_to_ICACHE_reset_pipe_read_req : std_logic_vector(0  downto 0);
  signal NOBLOCK_CPU_to_ICACHE_reset_pipe_read_ack : std_logic_vector(0  downto 0);
  signal NOBLOCK_CPU_to_MMU_reset_pipe_write_data: std_logic_vector(0 downto 0);
  signal NOBLOCK_CPU_to_MMU_reset_pipe_write_req : std_logic_vector(0  downto 0);
  signal NOBLOCK_CPU_to_MMU_reset_pipe_write_ack : std_logic_vector(0  downto 0);
  signal NOBLOCK_CPU_to_MMU_reset_pipe_read_data: std_logic_vector(0 downto 0);
  signal NOBLOCK_CPU_to_MMU_reset_pipe_read_req : std_logic_vector(0  downto 0);
  signal NOBLOCK_CPU_to_MMU_reset_pipe_read_ack : std_logic_vector(0  downto 0);
  signal NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_data: std_logic_vector(92 downto 0);
  signal NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_req : std_logic_vector(0  downto 0);
  signal NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_ack : std_logic_vector(0  downto 0);
  signal NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_data: std_logic_vector(92 downto 0);
  signal NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_req : std_logic_vector(0  downto 0);
  signal NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_ack : std_logic_vector(0  downto 0);
  signal NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_data: std_logic_vector(92 downto 0);
  signal NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_req : std_logic_vector(0  downto 0);
  signal NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_ack : std_logic_vector(0  downto 0);
  signal NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_data: std_logic_vector(92 downto 0);
  signal NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_req : std_logic_vector(0  downto 0);
  signal NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_ack : std_logic_vector(0  downto 0);
  signal THREAD_ID : std_logic_vector(7 downto 0);
  component cpu_no_fp is -- 
    port( -- 
      CORE_ID : in std_logic_vector(7 downto 0);
      DCACHE_to_CPU_reset_ack_pipe_write_data : in std_logic_vector(0 downto 0);
      DCACHE_to_CPU_reset_ack_pipe_write_req  : in std_logic_vector(0  downto 0);
      DCACHE_to_CPU_reset_ack_pipe_write_ack  : out std_logic_vector(0  downto 0);
      DCACHE_to_CPU_response_pipe_write_data : in std_logic_vector(71 downto 0);
      DCACHE_to_CPU_response_pipe_write_req  : in std_logic_vector(0  downto 0);
      DCACHE_to_CPU_response_pipe_write_ack  : out std_logic_vector(0  downto 0);
      DCACHE_to_CPU_slow_response_pipe_write_data : in std_logic_vector(71 downto 0);
      DCACHE_to_CPU_slow_response_pipe_write_req  : in std_logic_vector(0  downto 0);
      DCACHE_to_CPU_slow_response_pipe_write_ack  : out std_logic_vector(0  downto 0);
      ENV_to_AJIT_debug_command_pipe_write_data : in std_logic_vector(31 downto 0);
      ENV_to_AJIT_debug_command_pipe_write_req  : in std_logic_vector(0  downto 0);
      ENV_to_AJIT_debug_command_pipe_write_ack  : out std_logic_vector(0  downto 0);
      ENV_to_AJIT_reset : in std_logic_vector(7 downto 0);
      ENV_to_CPU_irl : in std_logic_vector(7 downto 0);
      ICACHE_to_CPU_reset_ack_pipe_write_data : in std_logic_vector(0 downto 0);
      ICACHE_to_CPU_reset_ack_pipe_write_req  : in std_logic_vector(0  downto 0);
      ICACHE_to_CPU_reset_ack_pipe_write_ack  : out std_logic_vector(0  downto 0);
      ICACHE_to_CPU_response_pipe_write_data : in std_logic_vector(89 downto 0);
      ICACHE_to_CPU_response_pipe_write_req  : in std_logic_vector(0  downto 0);
      ICACHE_to_CPU_response_pipe_write_ack  : out std_logic_vector(0  downto 0);
      MMU_to_CPU_reset_ack_pipe_write_data : in std_logic_vector(0 downto 0);
      MMU_to_CPU_reset_ack_pipe_write_req  : in std_logic_vector(0  downto 0);
      MMU_to_CPU_reset_ack_pipe_write_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_data : in std_logic_vector(92 downto 0);
      NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_data : in std_logic_vector(92 downto 0);
      NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_ack  : out std_logic_vector(0  downto 0);
      THREAD_ID : in std_logic_vector(7 downto 0);
      AJIT_to_ENV_debug_response_pipe_read_data : out std_logic_vector(31 downto 0);
      AJIT_to_ENV_debug_response_pipe_read_req  : in std_logic_vector(0  downto 0);
      AJIT_to_ENV_debug_response_pipe_read_ack  : out std_logic_vector(0  downto 0);
      AJIT_to_ENV_logger_pipe_read_data : out std_logic_vector(31 downto 0);
      AJIT_to_ENV_logger_pipe_read_req  : in std_logic_vector(0  downto 0);
      AJIT_to_ENV_logger_pipe_read_ack  : out std_logic_vector(0  downto 0);
      AJIT_to_ENV_processor_mode_pipe_read_data : out std_logic_vector(7 downto 0);
      AJIT_to_ENV_processor_mode_pipe_read_req  : in std_logic_vector(0  downto 0);
      AJIT_to_ENV_processor_mode_pipe_read_ack  : out std_logic_vector(0  downto 0);
      CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_read_data : out std_logic_vector(9 downto 0);
      CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_read_req  : in std_logic_vector(0  downto 0);
      CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_read_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_DCACHE_command_pipe_read_data : out std_logic_vector(142 downto 0);
      NOBLOCK_CPU_to_DCACHE_command_pipe_read_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_DCACHE_command_pipe_read_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_DCACHE_reset_pipe_read_data : out std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_DCACHE_reset_pipe_read_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_DCACHE_reset_pipe_read_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_data : out std_logic_vector(120 downto 0);
      NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_ICACHE_command_pipe_read_data : out std_logic_vector(40 downto 0);
      NOBLOCK_CPU_to_ICACHE_command_pipe_read_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_ICACHE_command_pipe_read_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_ICACHE_reset_pipe_read_data : out std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_ICACHE_reset_pipe_read_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_ICACHE_reset_pipe_read_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_MMU_reset_pipe_read_data : out std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_MMU_reset_pipe_read_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_MMU_reset_pipe_read_ack  : out std_logic_vector(0  downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for cpu_inst :  cpu_no_fp -- 
    use entity core_units.cpu_no_fp; -- 
  --<<<<<
  component munit_no_mmu is -- 
    port( -- 
      CACHE_STALL_ENABLE : in std_logic_vector(0 downto 0);
      CORE_BUS_RESPONSE_pipe_write_data : in std_logic_vector(64 downto 0);
      CORE_BUS_RESPONSE_pipe_write_req  : in std_logic_vector(0  downto 0);
      CORE_BUS_RESPONSE_pipe_write_ack  : out std_logic_vector(0  downto 0);
      INVALIDATE_REQUEST_pipe_write_data : in std_logic_vector(29 downto 0);
      INVALIDATE_REQUEST_pipe_write_req  : in std_logic_vector(0  downto 0);
      INVALIDATE_REQUEST_pipe_write_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_DCACHE_command_pipe_write_data : in std_logic_vector(142 downto 0);
      NOBLOCK_CPU_to_DCACHE_command_pipe_write_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_DCACHE_command_pipe_write_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_DCACHE_reset_pipe_write_data : in std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_DCACHE_reset_pipe_write_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_DCACHE_reset_pipe_write_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_data : in std_logic_vector(120 downto 0);
      NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_ICACHE_command_pipe_write_data : in std_logic_vector(40 downto 0);
      NOBLOCK_CPU_to_ICACHE_command_pipe_write_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_ICACHE_command_pipe_write_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_ICACHE_reset_pipe_write_data : in std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_ICACHE_reset_pipe_write_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_ICACHE_reset_pipe_write_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_MMU_reset_pipe_write_data : in std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_MMU_reset_pipe_write_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_MMU_reset_pipe_write_ack  : out std_logic_vector(0  downto 0);
      CORE_BUS_REQUEST_pipe_read_data : out std_logic_vector(109 downto 0);
      CORE_BUS_REQUEST_pipe_read_req  : in std_logic_vector(0  downto 0);
      CORE_BUS_REQUEST_pipe_read_ack  : out std_logic_vector(0  downto 0);
      DCACHE_to_CPU_reset_ack_pipe_read_data : out std_logic_vector(0 downto 0);
      DCACHE_to_CPU_reset_ack_pipe_read_req  : in std_logic_vector(0  downto 0);
      DCACHE_to_CPU_reset_ack_pipe_read_ack  : out std_logic_vector(0  downto 0);
      DCACHE_to_CPU_response_pipe_read_data : out std_logic_vector(71 downto 0);
      DCACHE_to_CPU_response_pipe_read_req  : in std_logic_vector(0  downto 0);
      DCACHE_to_CPU_response_pipe_read_ack  : out std_logic_vector(0  downto 0);
      DCACHE_to_CPU_slow_response_pipe_read_data : out std_logic_vector(71 downto 0);
      DCACHE_to_CPU_slow_response_pipe_read_req  : in std_logic_vector(0  downto 0);
      DCACHE_to_CPU_slow_response_pipe_read_ack  : out std_logic_vector(0  downto 0);
      ICACHE_to_CPU_reset_ack_pipe_read_data : out std_logic_vector(0 downto 0);
      ICACHE_to_CPU_reset_ack_pipe_read_req  : in std_logic_vector(0  downto 0);
      ICACHE_to_CPU_reset_ack_pipe_read_ack  : out std_logic_vector(0  downto 0);
      ICACHE_to_CPU_response_pipe_read_data : out std_logic_vector(89 downto 0);
      ICACHE_to_CPU_response_pipe_read_req  : in std_logic_vector(0  downto 0);
      ICACHE_to_CPU_response_pipe_read_ack  : out std_logic_vector(0  downto 0);
      MMU_to_CPU_reset_ack_pipe_read_data : out std_logic_vector(0 downto 0);
      MMU_to_CPU_reset_ack_pipe_read_req  : in std_logic_vector(0  downto 0);
      MMU_to_CPU_reset_ack_pipe_read_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_data : out std_logic_vector(92 downto 0);
      NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_data : out std_logic_vector(92 downto 0);
      NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_ack  : out std_logic_vector(0  downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for munit_inst :  munit_no_mmu -- 
    use entity munit_lib.munit_no_mmu; -- 
  --<<<<<
  component SetThreadId is  -- 
    port (-- 
      null_thread_id: out std_logic_vector(7 downto 0);
      clk, reset: in std_logic); --
    --
  end component;
  -->>>>>
  for threadConfigurator :  SetThreadId -- 
    use entity ajit_core_lib.SetThreadId; -- 
  --<<<<<
  -- 
begin -- 
  hsys_tie_low  <= '0';
  hsys_tie_high <= '1';
  cpu_inst: cpu_no_fp
  port map ( --
    AJIT_to_ENV_debug_response_pipe_read_data => AJIT_to_ENV_debug_response_pipe_read_data,
    AJIT_to_ENV_debug_response_pipe_read_req => AJIT_to_ENV_debug_response_pipe_read_req,
    AJIT_to_ENV_debug_response_pipe_read_ack => AJIT_to_ENV_debug_response_pipe_read_ack,
    AJIT_to_ENV_logger_pipe_read_data => AJIT_to_ENV_logger_pipe_read_data,
    AJIT_to_ENV_logger_pipe_read_req => AJIT_to_ENV_logger_pipe_read_req,
    AJIT_to_ENV_logger_pipe_read_ack => AJIT_to_ENV_logger_pipe_read_ack,
    AJIT_to_ENV_processor_mode_pipe_read_data => AJIT_to_ENV_processor_mode_pipe_read_data,
    AJIT_to_ENV_processor_mode_pipe_read_req => AJIT_to_ENV_processor_mode_pipe_read_req,
    AJIT_to_ENV_processor_mode_pipe_read_ack => AJIT_to_ENV_processor_mode_pipe_read_ack,
    CORE_ID => CORE_ID,
    CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_read_data => CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_read_data,
    CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_read_req => CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_read_req,
    CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_read_ack => CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_read_ack,
    DCACHE_to_CPU_reset_ack_pipe_write_data => DCACHE_to_CPU_reset_ack_pipe_read_data,
    DCACHE_to_CPU_reset_ack_pipe_write_req => DCACHE_to_CPU_reset_ack_pipe_read_ack,
    DCACHE_to_CPU_reset_ack_pipe_write_ack => DCACHE_to_CPU_reset_ack_pipe_read_req,
    DCACHE_to_CPU_response_pipe_write_data => DCACHE_to_CPU_response_pipe_read_data,
    DCACHE_to_CPU_response_pipe_write_req => DCACHE_to_CPU_response_pipe_read_ack,
    DCACHE_to_CPU_response_pipe_write_ack => DCACHE_to_CPU_response_pipe_read_req,
    DCACHE_to_CPU_slow_response_pipe_write_data => DCACHE_to_CPU_slow_response_pipe_read_data,
    DCACHE_to_CPU_slow_response_pipe_write_req => DCACHE_to_CPU_slow_response_pipe_read_ack,
    DCACHE_to_CPU_slow_response_pipe_write_ack => DCACHE_to_CPU_slow_response_pipe_read_req,
    ENV_to_AJIT_debug_command_pipe_write_data => ENV_to_AJIT_debug_command_pipe_write_data,
    ENV_to_AJIT_debug_command_pipe_write_req => ENV_to_AJIT_debug_command_pipe_write_req,
    ENV_to_AJIT_debug_command_pipe_write_ack => ENV_to_AJIT_debug_command_pipe_write_ack,
    ENV_to_AJIT_reset => ENV_to_AJIT_reset,
    ENV_to_CPU_irl => ENV_to_CPU_irl,
    ICACHE_to_CPU_reset_ack_pipe_write_data => ICACHE_to_CPU_reset_ack_pipe_read_data,
    ICACHE_to_CPU_reset_ack_pipe_write_req => ICACHE_to_CPU_reset_ack_pipe_read_ack,
    ICACHE_to_CPU_reset_ack_pipe_write_ack => ICACHE_to_CPU_reset_ack_pipe_read_req,
    ICACHE_to_CPU_response_pipe_write_data => ICACHE_to_CPU_response_pipe_read_data,
    ICACHE_to_CPU_response_pipe_write_req => ICACHE_to_CPU_response_pipe_read_ack,
    ICACHE_to_CPU_response_pipe_write_ack => ICACHE_to_CPU_response_pipe_read_req,
    MMU_to_CPU_reset_ack_pipe_write_data => MMU_to_CPU_reset_ack_pipe_read_data,
    MMU_to_CPU_reset_ack_pipe_write_req => MMU_to_CPU_reset_ack_pipe_read_ack,
    MMU_to_CPU_reset_ack_pipe_write_ack => MMU_to_CPU_reset_ack_pipe_read_req,
    NOBLOCK_CPU_to_DCACHE_command_pipe_read_data => NOBLOCK_CPU_to_DCACHE_command_pipe_write_data,
    NOBLOCK_CPU_to_DCACHE_command_pipe_read_req => NOBLOCK_CPU_to_DCACHE_command_pipe_write_ack,
    NOBLOCK_CPU_to_DCACHE_command_pipe_read_ack => NOBLOCK_CPU_to_DCACHE_command_pipe_write_req,
    NOBLOCK_CPU_to_DCACHE_reset_pipe_read_data => NOBLOCK_CPU_to_DCACHE_reset_pipe_write_data,
    NOBLOCK_CPU_to_DCACHE_reset_pipe_read_req => NOBLOCK_CPU_to_DCACHE_reset_pipe_write_ack,
    NOBLOCK_CPU_to_DCACHE_reset_pipe_read_ack => NOBLOCK_CPU_to_DCACHE_reset_pipe_write_req,
    NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_data => NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_data,
    NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_req => NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_ack,
    NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_ack => NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_req,
    NOBLOCK_CPU_to_ICACHE_command_pipe_read_data => NOBLOCK_CPU_to_ICACHE_command_pipe_write_data,
    NOBLOCK_CPU_to_ICACHE_command_pipe_read_req => NOBLOCK_CPU_to_ICACHE_command_pipe_write_ack,
    NOBLOCK_CPU_to_ICACHE_command_pipe_read_ack => NOBLOCK_CPU_to_ICACHE_command_pipe_write_req,
    NOBLOCK_CPU_to_ICACHE_reset_pipe_read_data => NOBLOCK_CPU_to_ICACHE_reset_pipe_write_data,
    NOBLOCK_CPU_to_ICACHE_reset_pipe_read_req => NOBLOCK_CPU_to_ICACHE_reset_pipe_write_ack,
    NOBLOCK_CPU_to_ICACHE_reset_pipe_read_ack => NOBLOCK_CPU_to_ICACHE_reset_pipe_write_req,
    NOBLOCK_CPU_to_MMU_reset_pipe_read_data => NOBLOCK_CPU_to_MMU_reset_pipe_write_data,
    NOBLOCK_CPU_to_MMU_reset_pipe_read_req => NOBLOCK_CPU_to_MMU_reset_pipe_write_ack,
    NOBLOCK_CPU_to_MMU_reset_pipe_read_ack => NOBLOCK_CPU_to_MMU_reset_pipe_write_req,
    NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_data => NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_data,
    NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_req => NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_ack,
    NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_ack => NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_req,
    NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_data => NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_data,
    NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_req => NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_ack,
    NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_ack => NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_req,
    THREAD_ID => THREAD_ID,
    clk => clk,  reset => reset
    ); -- 
  munit_inst: munit_no_mmu
  port map ( --
    CACHE_STALL_ENABLE => CACHE_STALL_ENABLE,
    CORE_BUS_REQUEST_pipe_read_data => CORE_BUS_REQUEST_pipe_read_data,
    CORE_BUS_REQUEST_pipe_read_req => CORE_BUS_REQUEST_pipe_read_req,
    CORE_BUS_REQUEST_pipe_read_ack => CORE_BUS_REQUEST_pipe_read_ack,
    CORE_BUS_RESPONSE_pipe_write_data => CORE_BUS_RESPONSE_pipe_write_data,
    CORE_BUS_RESPONSE_pipe_write_req => CORE_BUS_RESPONSE_pipe_write_req,
    CORE_BUS_RESPONSE_pipe_write_ack => CORE_BUS_RESPONSE_pipe_write_ack,
    DCACHE_to_CPU_reset_ack_pipe_read_data => DCACHE_to_CPU_reset_ack_pipe_write_data,
    DCACHE_to_CPU_reset_ack_pipe_read_req => DCACHE_to_CPU_reset_ack_pipe_write_ack,
    DCACHE_to_CPU_reset_ack_pipe_read_ack => DCACHE_to_CPU_reset_ack_pipe_write_req,
    DCACHE_to_CPU_response_pipe_read_data => DCACHE_to_CPU_response_pipe_write_data,
    DCACHE_to_CPU_response_pipe_read_req => DCACHE_to_CPU_response_pipe_write_ack,
    DCACHE_to_CPU_response_pipe_read_ack => DCACHE_to_CPU_response_pipe_write_req,
    DCACHE_to_CPU_slow_response_pipe_read_data => DCACHE_to_CPU_slow_response_pipe_write_data,
    DCACHE_to_CPU_slow_response_pipe_read_req => DCACHE_to_CPU_slow_response_pipe_write_ack,
    DCACHE_to_CPU_slow_response_pipe_read_ack => DCACHE_to_CPU_slow_response_pipe_write_req,
    ICACHE_to_CPU_reset_ack_pipe_read_data => ICACHE_to_CPU_reset_ack_pipe_write_data,
    ICACHE_to_CPU_reset_ack_pipe_read_req => ICACHE_to_CPU_reset_ack_pipe_write_ack,
    ICACHE_to_CPU_reset_ack_pipe_read_ack => ICACHE_to_CPU_reset_ack_pipe_write_req,
    ICACHE_to_CPU_response_pipe_read_data => ICACHE_to_CPU_response_pipe_write_data,
    ICACHE_to_CPU_response_pipe_read_req => ICACHE_to_CPU_response_pipe_write_ack,
    ICACHE_to_CPU_response_pipe_read_ack => ICACHE_to_CPU_response_pipe_write_req,
    INVALIDATE_REQUEST_pipe_write_data => INVALIDATE_REQUEST_pipe_write_data,
    INVALIDATE_REQUEST_pipe_write_req => INVALIDATE_REQUEST_pipe_write_req,
    INVALIDATE_REQUEST_pipe_write_ack => INVALIDATE_REQUEST_pipe_write_ack,
    MMU_to_CPU_reset_ack_pipe_read_data => MMU_to_CPU_reset_ack_pipe_write_data,
    MMU_to_CPU_reset_ack_pipe_read_req => MMU_to_CPU_reset_ack_pipe_write_ack,
    MMU_to_CPU_reset_ack_pipe_read_ack => MMU_to_CPU_reset_ack_pipe_write_req,
    NOBLOCK_CPU_to_DCACHE_command_pipe_write_data => NOBLOCK_CPU_to_DCACHE_command_pipe_read_data,
    NOBLOCK_CPU_to_DCACHE_command_pipe_write_req => NOBLOCK_CPU_to_DCACHE_command_pipe_read_ack,
    NOBLOCK_CPU_to_DCACHE_command_pipe_write_ack => NOBLOCK_CPU_to_DCACHE_command_pipe_read_req,
    NOBLOCK_CPU_to_DCACHE_reset_pipe_write_data => NOBLOCK_CPU_to_DCACHE_reset_pipe_read_data,
    NOBLOCK_CPU_to_DCACHE_reset_pipe_write_req => NOBLOCK_CPU_to_DCACHE_reset_pipe_read_ack,
    NOBLOCK_CPU_to_DCACHE_reset_pipe_write_ack => NOBLOCK_CPU_to_DCACHE_reset_pipe_read_req,
    NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_data => NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_data,
    NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_req => NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_ack,
    NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_ack => NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_req,
    NOBLOCK_CPU_to_ICACHE_command_pipe_write_data => NOBLOCK_CPU_to_ICACHE_command_pipe_read_data,
    NOBLOCK_CPU_to_ICACHE_command_pipe_write_req => NOBLOCK_CPU_to_ICACHE_command_pipe_read_ack,
    NOBLOCK_CPU_to_ICACHE_command_pipe_write_ack => NOBLOCK_CPU_to_ICACHE_command_pipe_read_req,
    NOBLOCK_CPU_to_ICACHE_reset_pipe_write_data => NOBLOCK_CPU_to_ICACHE_reset_pipe_read_data,
    NOBLOCK_CPU_to_ICACHE_reset_pipe_write_req => NOBLOCK_CPU_to_ICACHE_reset_pipe_read_ack,
    NOBLOCK_CPU_to_ICACHE_reset_pipe_write_ack => NOBLOCK_CPU_to_ICACHE_reset_pipe_read_req,
    NOBLOCK_CPU_to_MMU_reset_pipe_write_data => NOBLOCK_CPU_to_MMU_reset_pipe_read_data,
    NOBLOCK_CPU_to_MMU_reset_pipe_write_req => NOBLOCK_CPU_to_MMU_reset_pipe_read_ack,
    NOBLOCK_CPU_to_MMU_reset_pipe_write_ack => NOBLOCK_CPU_to_MMU_reset_pipe_read_req,
    NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_data => NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_data,
    NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_req => NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_ack,
    NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_ack => NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_req,
    NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_data => NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_data,
    NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_req => NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_ack,
    NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_ack => NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_req,
    clk => clk,  reset => reset
    ); -- 
  threadConfigurator: SetThreadId -- 
    port map ( -- 
      null_thread_id => THREAD_ID,
      clk => clk, reset => reset--
    ); -- 
  DCACHE_to_CPU_reset_ack_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe DCACHE_to_CPU_reset_ack",
      num_reads => 1,
      num_writes => 1,
      data_width => 1,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => DCACHE_to_CPU_reset_ack_pipe_read_req,
      read_ack => DCACHE_to_CPU_reset_ack_pipe_read_ack,
      read_data => DCACHE_to_CPU_reset_ack_pipe_read_data,
      write_req => DCACHE_to_CPU_reset_ack_pipe_write_req,
      write_ack => DCACHE_to_CPU_reset_ack_pipe_write_ack,
      write_data => DCACHE_to_CPU_reset_ack_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe DCACHE_to_CPU_response depth set to 0 since it is a P2P pipe.
  DCACHE_to_CPU_response_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe DCACHE_to_CPU_response",
      num_reads => 1,
      num_writes => 1,
      data_width => 72,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => true,
      depth => 0 --
    )
    port map( -- 
      read_req => DCACHE_to_CPU_response_pipe_read_req,
      read_ack => DCACHE_to_CPU_response_pipe_read_ack,
      read_data => DCACHE_to_CPU_response_pipe_read_data,
      write_req => DCACHE_to_CPU_response_pipe_write_req,
      write_ack => DCACHE_to_CPU_response_pipe_write_ack,
      write_data => DCACHE_to_CPU_response_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe DCACHE_to_CPU_slow_response depth set to 0 since it is a P2P pipe.
  DCACHE_to_CPU_slow_response_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe DCACHE_to_CPU_slow_response",
      num_reads => 1,
      num_writes => 1,
      data_width => 72,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => DCACHE_to_CPU_slow_response_pipe_read_req,
      read_ack => DCACHE_to_CPU_slow_response_pipe_read_ack,
      read_data => DCACHE_to_CPU_slow_response_pipe_read_data,
      write_req => DCACHE_to_CPU_slow_response_pipe_write_req,
      write_ack => DCACHE_to_CPU_slow_response_pipe_write_ack,
      write_data => DCACHE_to_CPU_slow_response_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  ICACHE_to_CPU_reset_ack_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe ICACHE_to_CPU_reset_ack",
      num_reads => 1,
      num_writes => 1,
      data_width => 1,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => ICACHE_to_CPU_reset_ack_pipe_read_req,
      read_ack => ICACHE_to_CPU_reset_ack_pipe_read_ack,
      read_data => ICACHE_to_CPU_reset_ack_pipe_read_data,
      write_req => ICACHE_to_CPU_reset_ack_pipe_write_req,
      write_ack => ICACHE_to_CPU_reset_ack_pipe_write_ack,
      write_data => ICACHE_to_CPU_reset_ack_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe ICACHE_to_CPU_response depth set to 0 since it is a P2P pipe.
  ICACHE_to_CPU_response_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe ICACHE_to_CPU_response",
      num_reads => 1,
      num_writes => 1,
      data_width => 90,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => true,
      depth => 0 --
    )
    port map( -- 
      read_req => ICACHE_to_CPU_response_pipe_read_req,
      read_ack => ICACHE_to_CPU_response_pipe_read_ack,
      read_data => ICACHE_to_CPU_response_pipe_read_data,
      write_req => ICACHE_to_CPU_response_pipe_write_req,
      write_ack => ICACHE_to_CPU_response_pipe_write_ack,
      write_data => ICACHE_to_CPU_response_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  MMU_to_CPU_reset_ack_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe MMU_to_CPU_reset_ack",
      num_reads => 1,
      num_writes => 1,
      data_width => 1,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => MMU_to_CPU_reset_ack_pipe_read_req,
      read_ack => MMU_to_CPU_reset_ack_pipe_read_ack,
      read_data => MMU_to_CPU_reset_ack_pipe_read_data,
      write_req => MMU_to_CPU_reset_ack_pipe_write_req,
      write_ack => MMU_to_CPU_reset_ack_pipe_write_ack,
      write_data => MMU_to_CPU_reset_ack_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe NOBLOCK_CPU_to_DCACHE_command depth set to 0 since it is a P2P pipe.
  -- this is marked as a non-blocking pipe... InputPorts should take care of it! 
  NOBLOCK_CPU_to_DCACHE_command_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe NOBLOCK_CPU_to_DCACHE_command",
      num_reads => 1,
      num_writes => 1,
      data_width => 143,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => true,
      depth => 0 --
    )
    port map( -- 
      read_req => NOBLOCK_CPU_to_DCACHE_command_pipe_read_req,
      read_ack => NOBLOCK_CPU_to_DCACHE_command_pipe_read_ack,
      read_data => NOBLOCK_CPU_to_DCACHE_command_pipe_read_data,
      write_req => NOBLOCK_CPU_to_DCACHE_command_pipe_write_req,
      write_ack => NOBLOCK_CPU_to_DCACHE_command_pipe_write_ack,
      write_data => NOBLOCK_CPU_to_DCACHE_command_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- this is marked as a non-blocking pipe... InputPorts should take care of it! 
  NOBLOCK_CPU_to_DCACHE_reset_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe NOBLOCK_CPU_to_DCACHE_reset",
      num_reads => 1,
      num_writes => 1,
      data_width => 1,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => NOBLOCK_CPU_to_DCACHE_reset_pipe_read_req,
      read_ack => NOBLOCK_CPU_to_DCACHE_reset_pipe_read_ack,
      read_data => NOBLOCK_CPU_to_DCACHE_reset_pipe_read_data,
      write_req => NOBLOCK_CPU_to_DCACHE_reset_pipe_write_req,
      write_ack => NOBLOCK_CPU_to_DCACHE_reset_pipe_write_ack,
      write_data => NOBLOCK_CPU_to_DCACHE_reset_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe NOBLOCK_CPU_to_DCACHE_slow_command depth set to 0 since it is a P2P pipe.
  -- this is marked as a non-blocking pipe... InputPorts should take care of it! 
  NOBLOCK_CPU_to_DCACHE_slow_command_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe NOBLOCK_CPU_to_DCACHE_slow_command",
      num_reads => 1,
      num_writes => 1,
      data_width => 121,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_req,
      read_ack => NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_ack,
      read_data => NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_data,
      write_req => NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_req,
      write_ack => NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_ack,
      write_data => NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe NOBLOCK_CPU_to_ICACHE_command depth set to 0 since it is a P2P pipe.
  -- this is marked as a non-blocking pipe... InputPorts should take care of it! 
  NOBLOCK_CPU_to_ICACHE_command_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe NOBLOCK_CPU_to_ICACHE_command",
      num_reads => 1,
      num_writes => 1,
      data_width => 41,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => true,
      depth => 0 --
    )
    port map( -- 
      read_req => NOBLOCK_CPU_to_ICACHE_command_pipe_read_req,
      read_ack => NOBLOCK_CPU_to_ICACHE_command_pipe_read_ack,
      read_data => NOBLOCK_CPU_to_ICACHE_command_pipe_read_data,
      write_req => NOBLOCK_CPU_to_ICACHE_command_pipe_write_req,
      write_ack => NOBLOCK_CPU_to_ICACHE_command_pipe_write_ack,
      write_data => NOBLOCK_CPU_to_ICACHE_command_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- this is marked as a non-blocking pipe... InputPorts should take care of it! 
  NOBLOCK_CPU_to_ICACHE_reset_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe NOBLOCK_CPU_to_ICACHE_reset",
      num_reads => 1,
      num_writes => 1,
      data_width => 1,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => NOBLOCK_CPU_to_ICACHE_reset_pipe_read_req,
      read_ack => NOBLOCK_CPU_to_ICACHE_reset_pipe_read_ack,
      read_data => NOBLOCK_CPU_to_ICACHE_reset_pipe_read_data,
      write_req => NOBLOCK_CPU_to_ICACHE_reset_pipe_write_req,
      write_ack => NOBLOCK_CPU_to_ICACHE_reset_pipe_write_ack,
      write_data => NOBLOCK_CPU_to_ICACHE_reset_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- this is marked as a non-blocking pipe... InputPorts should take care of it! 
  NOBLOCK_CPU_to_MMU_reset_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe NOBLOCK_CPU_to_MMU_reset",
      num_reads => 1,
      num_writes => 1,
      data_width => 1,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => NOBLOCK_CPU_to_MMU_reset_pipe_read_req,
      read_ack => NOBLOCK_CPU_to_MMU_reset_pipe_read_ack,
      read_data => NOBLOCK_CPU_to_MMU_reset_pipe_read_data,
      write_req => NOBLOCK_CPU_to_MMU_reset_pipe_write_req,
      write_ack => NOBLOCK_CPU_to_MMU_reset_pipe_write_ack,
      write_data => NOBLOCK_CPU_to_MMU_reset_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe NOBLOCK_DCACHE_TO_CPU_FU_BYPASS depth set to 0 since it is a P2P pipe.
  -- this is marked as a non-blocking pipe... InputPorts should take care of it! 
  NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe NOBLOCK_DCACHE_TO_CPU_FU_BYPASS",
      num_reads => 1,
      num_writes => 1,
      data_width => 93,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_req,
      read_ack => NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_ack,
      read_data => NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_data,
      write_req => NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_req,
      write_ack => NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_ack,
      write_data => NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe NOBLOCK_DCACHE_TO_CPU_IU_BYPASS depth set to 0 since it is a P2P pipe.
  -- this is marked as a non-blocking pipe... InputPorts should take care of it! 
  NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe NOBLOCK_DCACHE_TO_CPU_IU_BYPASS",
      num_reads => 1,
      num_writes => 1,
      data_width => 93,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_req,
      read_ack => NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_ack,
      read_data => NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_data,
      write_req => NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_req,
      write_ack => NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_ack,
      write_data => NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- 
end struct;
