library ieee;
use ieee.std_logic_1164.all;
package cpu_no_fp_Type_Package is -- 
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
-->>>>>
library core_units;
use core_units.cpu_no_fp_Type_Package.all;
--<<<<<
-->>>>>
library cpu_ccu;
library cpu_debug_interface;
library cpu_teu_no_fp;
--<<<<<
entity cpu_no_fp is -- 
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
end entity cpu_no_fp;
architecture struct of cpu_no_fp is -- 
  signal hsys_tie_low, hsys_tie_high: std_logic;
  signal BROADCAST_INIT_PC : std_logic_vector(31 downto 0);
  signal ccu_to_debug_interface_pipe_write_data: std_logic_vector(32 downto 0);
  signal ccu_to_debug_interface_pipe_write_req : std_logic_vector(0  downto 0);
  signal ccu_to_debug_interface_pipe_write_ack : std_logic_vector(0  downto 0);
  signal ccu_to_debug_interface_pipe_read_data: std_logic_vector(32 downto 0);
  signal ccu_to_debug_interface_pipe_read_req : std_logic_vector(0  downto 0);
  signal ccu_to_debug_interface_pipe_read_ack : std_logic_vector(0  downto 0);
  signal ccu_to_teu_pipe_write_data: std_logic_vector(106 downto 0);
  signal ccu_to_teu_pipe_write_req : std_logic_vector(0  downto 0);
  signal ccu_to_teu_pipe_write_ack : std_logic_vector(0  downto 0);
  signal ccu_to_teu_pipe_read_data: std_logic_vector(106 downto 0);
  signal ccu_to_teu_pipe_read_req : std_logic_vector(0  downto 0);
  signal ccu_to_teu_pipe_read_ack : std_logic_vector(0  downto 0);
  signal ccu_to_teu_debug_command_pipe_write_data: std_logic_vector(7 downto 0);
  signal ccu_to_teu_debug_command_pipe_write_req : std_logic_vector(0  downto 0);
  signal ccu_to_teu_debug_command_pipe_write_ack : std_logic_vector(0  downto 0);
  signal ccu_to_teu_debug_command_pipe_read_data: std_logic_vector(7 downto 0);
  signal ccu_to_teu_debug_command_pipe_read_req : std_logic_vector(0  downto 0);
  signal ccu_to_teu_debug_command_pipe_read_ack : std_logic_vector(0  downto 0);
  signal ccu_to_teu_fpunit_register_access_command_pipe_write_data: std_logic_vector(39 downto 0);
  signal ccu_to_teu_fpunit_register_access_command_pipe_write_req : std_logic_vector(0  downto 0);
  signal ccu_to_teu_fpunit_register_access_command_pipe_write_ack : std_logic_vector(0  downto 0);
  signal ccu_to_teu_fpunit_register_access_command_pipe_read_data: std_logic_vector(39 downto 0);
  signal ccu_to_teu_fpunit_register_access_command_pipe_read_req : std_logic_vector(0  downto 0);
  signal ccu_to_teu_fpunit_register_access_command_pipe_read_ack : std_logic_vector(0  downto 0);
  signal ccu_to_teu_iunit_register_access_command_pipe_write_data: std_logic_vector(41 downto 0);
  signal ccu_to_teu_iunit_register_access_command_pipe_write_req : std_logic_vector(0  downto 0);
  signal ccu_to_teu_iunit_register_access_command_pipe_write_ack : std_logic_vector(0  downto 0);
  signal ccu_to_teu_iunit_register_access_command_pipe_read_data: std_logic_vector(41 downto 0);
  signal ccu_to_teu_iunit_register_access_command_pipe_read_req : std_logic_vector(0  downto 0);
  signal ccu_to_teu_iunit_register_access_command_pipe_read_ack : std_logic_vector(0  downto 0);
  signal ccu_to_teu_load_store_command_pipe_write_data: std_logic_vector(72 downto 0);
  signal ccu_to_teu_load_store_command_pipe_write_req : std_logic_vector(0  downto 0);
  signal ccu_to_teu_load_store_command_pipe_write_ack : std_logic_vector(0  downto 0);
  signal ccu_to_teu_load_store_command_pipe_read_data: std_logic_vector(72 downto 0);
  signal ccu_to_teu_load_store_command_pipe_read_req : std_logic_vector(0  downto 0);
  signal ccu_to_teu_load_store_command_pipe_read_ack : std_logic_vector(0  downto 0);
  signal debug_interface_to_ccu_pipe_write_data: std_logic_vector(32 downto 0);
  signal debug_interface_to_ccu_pipe_write_req : std_logic_vector(0  downto 0);
  signal debug_interface_to_ccu_pipe_write_ack : std_logic_vector(0  downto 0);
  signal debug_interface_to_ccu_pipe_read_data: std_logic_vector(32 downto 0);
  signal debug_interface_to_ccu_pipe_read_req : std_logic_vector(0  downto 0);
  signal debug_interface_to_ccu_pipe_read_ack : std_logic_vector(0  downto 0);
  signal teu_debug_to_ccu_response_pipe_write_data: std_logic_vector(0 downto 0);
  signal teu_debug_to_ccu_response_pipe_write_req : std_logic_vector(0  downto 0);
  signal teu_debug_to_ccu_response_pipe_write_ack : std_logic_vector(0  downto 0);
  signal teu_debug_to_ccu_response_pipe_read_data: std_logic_vector(0 downto 0);
  signal teu_debug_to_ccu_response_pipe_read_req : std_logic_vector(0  downto 0);
  signal teu_debug_to_ccu_response_pipe_read_ack : std_logic_vector(0  downto 0);
  signal teu_to_ccu_pipe_write_data: std_logic_vector(225 downto 0);
  signal teu_to_ccu_pipe_write_req : std_logic_vector(0  downto 0);
  signal teu_to_ccu_pipe_write_ack : std_logic_vector(0  downto 0);
  signal teu_to_ccu_pipe_read_data: std_logic_vector(225 downto 0);
  signal teu_to_ccu_pipe_read_req : std_logic_vector(0  downto 0);
  signal teu_to_ccu_pipe_read_ack : std_logic_vector(0  downto 0);
  signal teu_to_ccu_fpunit_register_access_response_pipe_write_data: std_logic_vector(32 downto 0);
  signal teu_to_ccu_fpunit_register_access_response_pipe_write_req : std_logic_vector(0  downto 0);
  signal teu_to_ccu_fpunit_register_access_response_pipe_write_ack : std_logic_vector(0  downto 0);
  signal teu_to_ccu_fpunit_register_access_response_pipe_read_data: std_logic_vector(32 downto 0);
  signal teu_to_ccu_fpunit_register_access_response_pipe_read_req : std_logic_vector(0  downto 0);
  signal teu_to_ccu_fpunit_register_access_response_pipe_read_ack : std_logic_vector(0  downto 0);
  signal teu_to_ccu_iunit_register_access_response_pipe_write_data: std_logic_vector(31 downto 0);
  signal teu_to_ccu_iunit_register_access_response_pipe_write_req : std_logic_vector(0  downto 0);
  signal teu_to_ccu_iunit_register_access_response_pipe_write_ack : std_logic_vector(0  downto 0);
  signal teu_to_ccu_iunit_register_access_response_pipe_read_data: std_logic_vector(31 downto 0);
  signal teu_to_ccu_iunit_register_access_response_pipe_read_req : std_logic_vector(0  downto 0);
  signal teu_to_ccu_iunit_register_access_response_pipe_read_ack : std_logic_vector(0  downto 0);
  signal teu_to_ccu_load_store_response_pipe_write_data: std_logic_vector(32 downto 0);
  signal teu_to_ccu_load_store_response_pipe_write_req : std_logic_vector(0  downto 0);
  signal teu_to_ccu_load_store_response_pipe_write_ack : std_logic_vector(0  downto 0);
  signal teu_to_ccu_load_store_response_pipe_read_data: std_logic_vector(32 downto 0);
  signal teu_to_ccu_load_store_response_pipe_read_req : std_logic_vector(0  downto 0);
  signal teu_to_ccu_load_store_response_pipe_read_ack : std_logic_vector(0  downto 0);
  component ccu is -- 
    port( -- 
      DCACHE_to_CPU_reset_ack_pipe_write_data : in std_logic_vector(0 downto 0);
      DCACHE_to_CPU_reset_ack_pipe_write_req  : in std_logic_vector(0  downto 0);
      DCACHE_to_CPU_reset_ack_pipe_write_ack  : out std_logic_vector(0  downto 0);
      ENV_to_AJIT_reset : in std_logic_vector(7 downto 0);
      ICACHE_to_CPU_reset_ack_pipe_write_data : in std_logic_vector(0 downto 0);
      ICACHE_to_CPU_reset_ack_pipe_write_req  : in std_logic_vector(0  downto 0);
      ICACHE_to_CPU_reset_ack_pipe_write_ack  : out std_logic_vector(0  downto 0);
      MMU_to_CPU_reset_ack_pipe_write_data : in std_logic_vector(0 downto 0);
      MMU_to_CPU_reset_ack_pipe_write_req  : in std_logic_vector(0  downto 0);
      MMU_to_CPU_reset_ack_pipe_write_ack  : out std_logic_vector(0  downto 0);
      debug_interface_to_ccu_pipe_write_data : in std_logic_vector(32 downto 0);
      debug_interface_to_ccu_pipe_write_req  : in std_logic_vector(0  downto 0);
      debug_interface_to_ccu_pipe_write_ack  : out std_logic_vector(0  downto 0);
      teu_debug_to_ccu_response_pipe_write_data : in std_logic_vector(0 downto 0);
      teu_debug_to_ccu_response_pipe_write_req  : in std_logic_vector(0  downto 0);
      teu_debug_to_ccu_response_pipe_write_ack  : out std_logic_vector(0  downto 0);
      teu_to_ccu_pipe_write_data : in std_logic_vector(225 downto 0);
      teu_to_ccu_pipe_write_req  : in std_logic_vector(0  downto 0);
      teu_to_ccu_pipe_write_ack  : out std_logic_vector(0  downto 0);
      teu_to_ccu_fpunit_register_access_response_pipe_write_data : in std_logic_vector(32 downto 0);
      teu_to_ccu_fpunit_register_access_response_pipe_write_req  : in std_logic_vector(0  downto 0);
      teu_to_ccu_fpunit_register_access_response_pipe_write_ack  : out std_logic_vector(0  downto 0);
      teu_to_ccu_iunit_register_access_response_pipe_write_data : in std_logic_vector(31 downto 0);
      teu_to_ccu_iunit_register_access_response_pipe_write_req  : in std_logic_vector(0  downto 0);
      teu_to_ccu_iunit_register_access_response_pipe_write_ack  : out std_logic_vector(0  downto 0);
      teu_to_ccu_load_store_response_pipe_write_data : in std_logic_vector(32 downto 0);
      teu_to_ccu_load_store_response_pipe_write_req  : in std_logic_vector(0  downto 0);
      teu_to_ccu_load_store_response_pipe_write_ack  : out std_logic_vector(0  downto 0);
      AJIT_to_ENV_processor_mode_pipe_read_data : out std_logic_vector(7 downto 0);
      AJIT_to_ENV_processor_mode_pipe_read_req  : in std_logic_vector(0  downto 0);
      AJIT_to_ENV_processor_mode_pipe_read_ack  : out std_logic_vector(0  downto 0);
      BROADCAST_INIT_PC : out std_logic_vector(31 downto 0);
      NOBLOCK_CPU_to_DCACHE_reset_pipe_read_data : out std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_DCACHE_reset_pipe_read_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_DCACHE_reset_pipe_read_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_ICACHE_reset_pipe_read_data : out std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_ICACHE_reset_pipe_read_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_ICACHE_reset_pipe_read_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_MMU_reset_pipe_read_data : out std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_MMU_reset_pipe_read_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_MMU_reset_pipe_read_ack  : out std_logic_vector(0  downto 0);
      ccu_to_debug_interface_pipe_read_data : out std_logic_vector(32 downto 0);
      ccu_to_debug_interface_pipe_read_req  : in std_logic_vector(0  downto 0);
      ccu_to_debug_interface_pipe_read_ack  : out std_logic_vector(0  downto 0);
      ccu_to_teu_pipe_read_data : out std_logic_vector(106 downto 0);
      ccu_to_teu_pipe_read_req  : in std_logic_vector(0  downto 0);
      ccu_to_teu_pipe_read_ack  : out std_logic_vector(0  downto 0);
      ccu_to_teu_debug_command_pipe_read_data : out std_logic_vector(7 downto 0);
      ccu_to_teu_debug_command_pipe_read_req  : in std_logic_vector(0  downto 0);
      ccu_to_teu_debug_command_pipe_read_ack  : out std_logic_vector(0  downto 0);
      ccu_to_teu_fpunit_register_access_command_pipe_read_data : out std_logic_vector(39 downto 0);
      ccu_to_teu_fpunit_register_access_command_pipe_read_req  : in std_logic_vector(0  downto 0);
      ccu_to_teu_fpunit_register_access_command_pipe_read_ack  : out std_logic_vector(0  downto 0);
      ccu_to_teu_iunit_register_access_command_pipe_read_data : out std_logic_vector(41 downto 0);
      ccu_to_teu_iunit_register_access_command_pipe_read_req  : in std_logic_vector(0  downto 0);
      ccu_to_teu_iunit_register_access_command_pipe_read_ack  : out std_logic_vector(0  downto 0);
      ccu_to_teu_load_store_command_pipe_read_data : out std_logic_vector(72 downto 0);
      ccu_to_teu_load_store_command_pipe_read_req  : in std_logic_vector(0  downto 0);
      ccu_to_teu_load_store_command_pipe_read_ack  : out std_logic_vector(0  downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for ccu_inst :  ccu -- 
    use entity cpu_ccu.ccu; -- 
  --<<<<<
  component debug_interface is -- 
    port( -- 
      ENV_to_AJIT_debug_command_pipe_write_data : in std_logic_vector(31 downto 0);
      ENV_to_AJIT_debug_command_pipe_write_req  : in std_logic_vector(0  downto 0);
      ENV_to_AJIT_debug_command_pipe_write_ack  : out std_logic_vector(0  downto 0);
      ccu_to_debug_interface_pipe_write_data : in std_logic_vector(32 downto 0);
      ccu_to_debug_interface_pipe_write_req  : in std_logic_vector(0  downto 0);
      ccu_to_debug_interface_pipe_write_ack  : out std_logic_vector(0  downto 0);
      AJIT_to_ENV_debug_response_pipe_read_data : out std_logic_vector(31 downto 0);
      AJIT_to_ENV_debug_response_pipe_read_req  : in std_logic_vector(0  downto 0);
      AJIT_to_ENV_debug_response_pipe_read_ack  : out std_logic_vector(0  downto 0);
      debug_interface_to_ccu_pipe_read_data : out std_logic_vector(32 downto 0);
      debug_interface_to_ccu_pipe_read_req  : in std_logic_vector(0  downto 0);
      debug_interface_to_ccu_pipe_read_ack  : out std_logic_vector(0  downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for debug_interface_inst :  debug_interface -- 
    use entity cpu_debug_interface.debug_interface; -- 
  --<<<<<
  component teu_no_fp is -- 
    port( -- 
      BROADCAST_INIT_PC : in std_logic_vector(31 downto 0);
      CORE_ID : in std_logic_vector(7 downto 0);
      DCACHE_to_CPU_response_pipe_write_data : in std_logic_vector(71 downto 0);
      DCACHE_to_CPU_response_pipe_write_req  : in std_logic_vector(0  downto 0);
      DCACHE_to_CPU_response_pipe_write_ack  : out std_logic_vector(0  downto 0);
      DCACHE_to_CPU_slow_response_pipe_write_data : in std_logic_vector(71 downto 0);
      DCACHE_to_CPU_slow_response_pipe_write_req  : in std_logic_vector(0  downto 0);
      DCACHE_to_CPU_slow_response_pipe_write_ack  : out std_logic_vector(0  downto 0);
      ENV_to_CPU_irl : in std_logic_vector(7 downto 0);
      ICACHE_to_CPU_response_pipe_write_data : in std_logic_vector(89 downto 0);
      ICACHE_to_CPU_response_pipe_write_req  : in std_logic_vector(0  downto 0);
      ICACHE_to_CPU_response_pipe_write_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_data : in std_logic_vector(92 downto 0);
      NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_data : in std_logic_vector(92 downto 0);
      NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_ack  : out std_logic_vector(0  downto 0);
      THREAD_ID : in std_logic_vector(7 downto 0);
      ccu_to_teu_pipe_write_data : in std_logic_vector(106 downto 0);
      ccu_to_teu_pipe_write_req  : in std_logic_vector(0  downto 0);
      ccu_to_teu_pipe_write_ack  : out std_logic_vector(0  downto 0);
      ccu_to_teu_debug_command_pipe_write_data : in std_logic_vector(7 downto 0);
      ccu_to_teu_debug_command_pipe_write_req  : in std_logic_vector(0  downto 0);
      ccu_to_teu_debug_command_pipe_write_ack  : out std_logic_vector(0  downto 0);
      ccu_to_teu_fpunit_register_access_command_pipe_write_data : in std_logic_vector(39 downto 0);
      ccu_to_teu_fpunit_register_access_command_pipe_write_req  : in std_logic_vector(0  downto 0);
      ccu_to_teu_fpunit_register_access_command_pipe_write_ack  : out std_logic_vector(0  downto 0);
      ccu_to_teu_iunit_register_access_command_pipe_write_data : in std_logic_vector(41 downto 0);
      ccu_to_teu_iunit_register_access_command_pipe_write_req  : in std_logic_vector(0  downto 0);
      ccu_to_teu_iunit_register_access_command_pipe_write_ack  : out std_logic_vector(0  downto 0);
      ccu_to_teu_load_store_command_pipe_write_data : in std_logic_vector(72 downto 0);
      ccu_to_teu_load_store_command_pipe_write_req  : in std_logic_vector(0  downto 0);
      ccu_to_teu_load_store_command_pipe_write_ack  : out std_logic_vector(0  downto 0);
      AJIT_to_ENV_logger_pipe_read_data : out std_logic_vector(31 downto 0);
      AJIT_to_ENV_logger_pipe_read_req  : in std_logic_vector(0  downto 0);
      AJIT_to_ENV_logger_pipe_read_ack  : out std_logic_vector(0  downto 0);
      CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_read_data : out std_logic_vector(9 downto 0);
      CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_read_req  : in std_logic_vector(0  downto 0);
      CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_read_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_DCACHE_command_pipe_read_data : out std_logic_vector(142 downto 0);
      NOBLOCK_CPU_to_DCACHE_command_pipe_read_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_DCACHE_command_pipe_read_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_data : out std_logic_vector(120 downto 0);
      NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_ICACHE_command_pipe_read_data : out std_logic_vector(40 downto 0);
      NOBLOCK_CPU_to_ICACHE_command_pipe_read_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_ICACHE_command_pipe_read_ack  : out std_logic_vector(0  downto 0);
      teu_debug_to_ccu_response_pipe_read_data : out std_logic_vector(0 downto 0);
      teu_debug_to_ccu_response_pipe_read_req  : in std_logic_vector(0  downto 0);
      teu_debug_to_ccu_response_pipe_read_ack  : out std_logic_vector(0  downto 0);
      teu_to_ccu_pipe_read_data : out std_logic_vector(225 downto 0);
      teu_to_ccu_pipe_read_req  : in std_logic_vector(0  downto 0);
      teu_to_ccu_pipe_read_ack  : out std_logic_vector(0  downto 0);
      teu_to_ccu_fpunit_register_access_response_pipe_read_data : out std_logic_vector(32 downto 0);
      teu_to_ccu_fpunit_register_access_response_pipe_read_req  : in std_logic_vector(0  downto 0);
      teu_to_ccu_fpunit_register_access_response_pipe_read_ack  : out std_logic_vector(0  downto 0);
      teu_to_ccu_iunit_register_access_response_pipe_read_data : out std_logic_vector(31 downto 0);
      teu_to_ccu_iunit_register_access_response_pipe_read_req  : in std_logic_vector(0  downto 0);
      teu_to_ccu_iunit_register_access_response_pipe_read_ack  : out std_logic_vector(0  downto 0);
      teu_to_ccu_load_store_response_pipe_read_data : out std_logic_vector(32 downto 0);
      teu_to_ccu_load_store_response_pipe_read_req  : in std_logic_vector(0  downto 0);
      teu_to_ccu_load_store_response_pipe_read_ack  : out std_logic_vector(0  downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for teu_inst :  teu_no_fp -- 
    use entity cpu_teu_no_fp.teu_no_fp; -- 
  --<<<<<
  -- 
begin -- 
  hsys_tie_low  <= '0';
  hsys_tie_high <= '1';
  ccu_inst: ccu
  port map ( --
    AJIT_to_ENV_processor_mode_pipe_read_data => AJIT_to_ENV_processor_mode_pipe_read_data,
    AJIT_to_ENV_processor_mode_pipe_read_req => AJIT_to_ENV_processor_mode_pipe_read_req,
    AJIT_to_ENV_processor_mode_pipe_read_ack => AJIT_to_ENV_processor_mode_pipe_read_ack,
    BROADCAST_INIT_PC => BROADCAST_INIT_PC,
    DCACHE_to_CPU_reset_ack_pipe_write_data => DCACHE_to_CPU_reset_ack_pipe_write_data,
    DCACHE_to_CPU_reset_ack_pipe_write_req => DCACHE_to_CPU_reset_ack_pipe_write_req,
    DCACHE_to_CPU_reset_ack_pipe_write_ack => DCACHE_to_CPU_reset_ack_pipe_write_ack,
    ENV_to_AJIT_reset => ENV_to_AJIT_reset,
    ICACHE_to_CPU_reset_ack_pipe_write_data => ICACHE_to_CPU_reset_ack_pipe_write_data,
    ICACHE_to_CPU_reset_ack_pipe_write_req => ICACHE_to_CPU_reset_ack_pipe_write_req,
    ICACHE_to_CPU_reset_ack_pipe_write_ack => ICACHE_to_CPU_reset_ack_pipe_write_ack,
    MMU_to_CPU_reset_ack_pipe_write_data => MMU_to_CPU_reset_ack_pipe_write_data,
    MMU_to_CPU_reset_ack_pipe_write_req => MMU_to_CPU_reset_ack_pipe_write_req,
    MMU_to_CPU_reset_ack_pipe_write_ack => MMU_to_CPU_reset_ack_pipe_write_ack,
    NOBLOCK_CPU_to_DCACHE_reset_pipe_read_data => NOBLOCK_CPU_to_DCACHE_reset_pipe_read_data,
    NOBLOCK_CPU_to_DCACHE_reset_pipe_read_req => NOBLOCK_CPU_to_DCACHE_reset_pipe_read_req,
    NOBLOCK_CPU_to_DCACHE_reset_pipe_read_ack => NOBLOCK_CPU_to_DCACHE_reset_pipe_read_ack,
    NOBLOCK_CPU_to_ICACHE_reset_pipe_read_data => NOBLOCK_CPU_to_ICACHE_reset_pipe_read_data,
    NOBLOCK_CPU_to_ICACHE_reset_pipe_read_req => NOBLOCK_CPU_to_ICACHE_reset_pipe_read_req,
    NOBLOCK_CPU_to_ICACHE_reset_pipe_read_ack => NOBLOCK_CPU_to_ICACHE_reset_pipe_read_ack,
    NOBLOCK_CPU_to_MMU_reset_pipe_read_data => NOBLOCK_CPU_to_MMU_reset_pipe_read_data,
    NOBLOCK_CPU_to_MMU_reset_pipe_read_req => NOBLOCK_CPU_to_MMU_reset_pipe_read_req,
    NOBLOCK_CPU_to_MMU_reset_pipe_read_ack => NOBLOCK_CPU_to_MMU_reset_pipe_read_ack,
    ccu_to_debug_interface_pipe_read_data => ccu_to_debug_interface_pipe_write_data,
    ccu_to_debug_interface_pipe_read_req => ccu_to_debug_interface_pipe_write_ack,
    ccu_to_debug_interface_pipe_read_ack => ccu_to_debug_interface_pipe_write_req,
    ccu_to_teu_pipe_read_data => ccu_to_teu_pipe_write_data,
    ccu_to_teu_pipe_read_req => ccu_to_teu_pipe_write_ack,
    ccu_to_teu_pipe_read_ack => ccu_to_teu_pipe_write_req,
    ccu_to_teu_debug_command_pipe_read_data => ccu_to_teu_debug_command_pipe_write_data,
    ccu_to_teu_debug_command_pipe_read_req => ccu_to_teu_debug_command_pipe_write_ack,
    ccu_to_teu_debug_command_pipe_read_ack => ccu_to_teu_debug_command_pipe_write_req,
    ccu_to_teu_fpunit_register_access_command_pipe_read_data => ccu_to_teu_fpunit_register_access_command_pipe_write_data,
    ccu_to_teu_fpunit_register_access_command_pipe_read_req => ccu_to_teu_fpunit_register_access_command_pipe_write_ack,
    ccu_to_teu_fpunit_register_access_command_pipe_read_ack => ccu_to_teu_fpunit_register_access_command_pipe_write_req,
    ccu_to_teu_iunit_register_access_command_pipe_read_data => ccu_to_teu_iunit_register_access_command_pipe_write_data,
    ccu_to_teu_iunit_register_access_command_pipe_read_req => ccu_to_teu_iunit_register_access_command_pipe_write_ack,
    ccu_to_teu_iunit_register_access_command_pipe_read_ack => ccu_to_teu_iunit_register_access_command_pipe_write_req,
    ccu_to_teu_load_store_command_pipe_read_data => ccu_to_teu_load_store_command_pipe_write_data,
    ccu_to_teu_load_store_command_pipe_read_req => ccu_to_teu_load_store_command_pipe_write_ack,
    ccu_to_teu_load_store_command_pipe_read_ack => ccu_to_teu_load_store_command_pipe_write_req,
    debug_interface_to_ccu_pipe_write_data => debug_interface_to_ccu_pipe_read_data,
    debug_interface_to_ccu_pipe_write_req => debug_interface_to_ccu_pipe_read_ack,
    debug_interface_to_ccu_pipe_write_ack => debug_interface_to_ccu_pipe_read_req,
    teu_debug_to_ccu_response_pipe_write_data => teu_debug_to_ccu_response_pipe_read_data,
    teu_debug_to_ccu_response_pipe_write_req => teu_debug_to_ccu_response_pipe_read_ack,
    teu_debug_to_ccu_response_pipe_write_ack => teu_debug_to_ccu_response_pipe_read_req,
    teu_to_ccu_pipe_write_data => teu_to_ccu_pipe_read_data,
    teu_to_ccu_pipe_write_req => teu_to_ccu_pipe_read_ack,
    teu_to_ccu_pipe_write_ack => teu_to_ccu_pipe_read_req,
    teu_to_ccu_fpunit_register_access_response_pipe_write_data => teu_to_ccu_fpunit_register_access_response_pipe_read_data,
    teu_to_ccu_fpunit_register_access_response_pipe_write_req => teu_to_ccu_fpunit_register_access_response_pipe_read_ack,
    teu_to_ccu_fpunit_register_access_response_pipe_write_ack => teu_to_ccu_fpunit_register_access_response_pipe_read_req,
    teu_to_ccu_iunit_register_access_response_pipe_write_data => teu_to_ccu_iunit_register_access_response_pipe_read_data,
    teu_to_ccu_iunit_register_access_response_pipe_write_req => teu_to_ccu_iunit_register_access_response_pipe_read_ack,
    teu_to_ccu_iunit_register_access_response_pipe_write_ack => teu_to_ccu_iunit_register_access_response_pipe_read_req,
    teu_to_ccu_load_store_response_pipe_write_data => teu_to_ccu_load_store_response_pipe_read_data,
    teu_to_ccu_load_store_response_pipe_write_req => teu_to_ccu_load_store_response_pipe_read_ack,
    teu_to_ccu_load_store_response_pipe_write_ack => teu_to_ccu_load_store_response_pipe_read_req,
    clk => clk,  reset => reset
    ); -- 
  debug_interface_inst: debug_interface
  port map ( --
    AJIT_to_ENV_debug_response_pipe_read_data => AJIT_to_ENV_debug_response_pipe_read_data,
    AJIT_to_ENV_debug_response_pipe_read_req => AJIT_to_ENV_debug_response_pipe_read_req,
    AJIT_to_ENV_debug_response_pipe_read_ack => AJIT_to_ENV_debug_response_pipe_read_ack,
    ENV_to_AJIT_debug_command_pipe_write_data => ENV_to_AJIT_debug_command_pipe_write_data,
    ENV_to_AJIT_debug_command_pipe_write_req => ENV_to_AJIT_debug_command_pipe_write_req,
    ENV_to_AJIT_debug_command_pipe_write_ack => ENV_to_AJIT_debug_command_pipe_write_ack,
    ccu_to_debug_interface_pipe_write_data => ccu_to_debug_interface_pipe_read_data,
    ccu_to_debug_interface_pipe_write_req => ccu_to_debug_interface_pipe_read_ack,
    ccu_to_debug_interface_pipe_write_ack => ccu_to_debug_interface_pipe_read_req,
    debug_interface_to_ccu_pipe_read_data => debug_interface_to_ccu_pipe_write_data,
    debug_interface_to_ccu_pipe_read_req => debug_interface_to_ccu_pipe_write_ack,
    debug_interface_to_ccu_pipe_read_ack => debug_interface_to_ccu_pipe_write_req,
    clk => clk,  reset => reset
    ); -- 
  teu_inst: teu_no_fp
  port map ( --
    AJIT_to_ENV_logger_pipe_read_data => AJIT_to_ENV_logger_pipe_read_data,
    AJIT_to_ENV_logger_pipe_read_req => AJIT_to_ENV_logger_pipe_read_req,
    AJIT_to_ENV_logger_pipe_read_ack => AJIT_to_ENV_logger_pipe_read_ack,
    BROADCAST_INIT_PC => BROADCAST_INIT_PC,
    CORE_ID => CORE_ID,
    CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_read_data => CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_read_data,
    CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_read_req => CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_read_req,
    CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_read_ack => CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_read_ack,
    DCACHE_to_CPU_response_pipe_write_data => DCACHE_to_CPU_response_pipe_write_data,
    DCACHE_to_CPU_response_pipe_write_req => DCACHE_to_CPU_response_pipe_write_req,
    DCACHE_to_CPU_response_pipe_write_ack => DCACHE_to_CPU_response_pipe_write_ack,
    DCACHE_to_CPU_slow_response_pipe_write_data => DCACHE_to_CPU_slow_response_pipe_write_data,
    DCACHE_to_CPU_slow_response_pipe_write_req => DCACHE_to_CPU_slow_response_pipe_write_req,
    DCACHE_to_CPU_slow_response_pipe_write_ack => DCACHE_to_CPU_slow_response_pipe_write_ack,
    ENV_to_CPU_irl => ENV_to_CPU_irl,
    ICACHE_to_CPU_response_pipe_write_data => ICACHE_to_CPU_response_pipe_write_data,
    ICACHE_to_CPU_response_pipe_write_req => ICACHE_to_CPU_response_pipe_write_req,
    ICACHE_to_CPU_response_pipe_write_ack => ICACHE_to_CPU_response_pipe_write_ack,
    NOBLOCK_CPU_to_DCACHE_command_pipe_read_data => NOBLOCK_CPU_to_DCACHE_command_pipe_read_data,
    NOBLOCK_CPU_to_DCACHE_command_pipe_read_req => NOBLOCK_CPU_to_DCACHE_command_pipe_read_req,
    NOBLOCK_CPU_to_DCACHE_command_pipe_read_ack => NOBLOCK_CPU_to_DCACHE_command_pipe_read_ack,
    NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_data => NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_data,
    NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_req => NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_req,
    NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_ack => NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_ack,
    NOBLOCK_CPU_to_ICACHE_command_pipe_read_data => NOBLOCK_CPU_to_ICACHE_command_pipe_read_data,
    NOBLOCK_CPU_to_ICACHE_command_pipe_read_req => NOBLOCK_CPU_to_ICACHE_command_pipe_read_req,
    NOBLOCK_CPU_to_ICACHE_command_pipe_read_ack => NOBLOCK_CPU_to_ICACHE_command_pipe_read_ack,
    NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_data => NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_data,
    NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_req => NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_req,
    NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_ack => NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_ack,
    NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_data => NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_data,
    NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_req => NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_req,
    NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_ack => NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_ack,
    THREAD_ID => THREAD_ID,
    ccu_to_teu_pipe_write_data => ccu_to_teu_pipe_read_data,
    ccu_to_teu_pipe_write_req => ccu_to_teu_pipe_read_ack,
    ccu_to_teu_pipe_write_ack => ccu_to_teu_pipe_read_req,
    ccu_to_teu_debug_command_pipe_write_data => ccu_to_teu_debug_command_pipe_read_data,
    ccu_to_teu_debug_command_pipe_write_req => ccu_to_teu_debug_command_pipe_read_ack,
    ccu_to_teu_debug_command_pipe_write_ack => ccu_to_teu_debug_command_pipe_read_req,
    ccu_to_teu_fpunit_register_access_command_pipe_write_data => ccu_to_teu_fpunit_register_access_command_pipe_read_data,
    ccu_to_teu_fpunit_register_access_command_pipe_write_req => ccu_to_teu_fpunit_register_access_command_pipe_read_ack,
    ccu_to_teu_fpunit_register_access_command_pipe_write_ack => ccu_to_teu_fpunit_register_access_command_pipe_read_req,
    ccu_to_teu_iunit_register_access_command_pipe_write_data => ccu_to_teu_iunit_register_access_command_pipe_read_data,
    ccu_to_teu_iunit_register_access_command_pipe_write_req => ccu_to_teu_iunit_register_access_command_pipe_read_ack,
    ccu_to_teu_iunit_register_access_command_pipe_write_ack => ccu_to_teu_iunit_register_access_command_pipe_read_req,
    ccu_to_teu_load_store_command_pipe_write_data => ccu_to_teu_load_store_command_pipe_read_data,
    ccu_to_teu_load_store_command_pipe_write_req => ccu_to_teu_load_store_command_pipe_read_ack,
    ccu_to_teu_load_store_command_pipe_write_ack => ccu_to_teu_load_store_command_pipe_read_req,
    teu_debug_to_ccu_response_pipe_read_data => teu_debug_to_ccu_response_pipe_write_data,
    teu_debug_to_ccu_response_pipe_read_req => teu_debug_to_ccu_response_pipe_write_ack,
    teu_debug_to_ccu_response_pipe_read_ack => teu_debug_to_ccu_response_pipe_write_req,
    teu_to_ccu_pipe_read_data => teu_to_ccu_pipe_write_data,
    teu_to_ccu_pipe_read_req => teu_to_ccu_pipe_write_ack,
    teu_to_ccu_pipe_read_ack => teu_to_ccu_pipe_write_req,
    teu_to_ccu_fpunit_register_access_response_pipe_read_data => teu_to_ccu_fpunit_register_access_response_pipe_write_data,
    teu_to_ccu_fpunit_register_access_response_pipe_read_req => teu_to_ccu_fpunit_register_access_response_pipe_write_ack,
    teu_to_ccu_fpunit_register_access_response_pipe_read_ack => teu_to_ccu_fpunit_register_access_response_pipe_write_req,
    teu_to_ccu_iunit_register_access_response_pipe_read_data => teu_to_ccu_iunit_register_access_response_pipe_write_data,
    teu_to_ccu_iunit_register_access_response_pipe_read_req => teu_to_ccu_iunit_register_access_response_pipe_write_ack,
    teu_to_ccu_iunit_register_access_response_pipe_read_ack => teu_to_ccu_iunit_register_access_response_pipe_write_req,
    teu_to_ccu_load_store_response_pipe_read_data => teu_to_ccu_load_store_response_pipe_write_data,
    teu_to_ccu_load_store_response_pipe_read_req => teu_to_ccu_load_store_response_pipe_write_ack,
    teu_to_ccu_load_store_response_pipe_read_ack => teu_to_ccu_load_store_response_pipe_write_req,
    clk => clk,  reset => reset
    ); -- 
  -- this is marked as a non-blocking pipe... InputPorts should take care of it! 
  ccu_to_debug_interface_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe ccu_to_debug_interface",
      num_reads => 1,
      num_writes => 1,
      data_width => 33,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 4 --
    )
    port map( -- 
      read_req => ccu_to_debug_interface_pipe_read_req,
      read_ack => ccu_to_debug_interface_pipe_read_ack,
      read_data => ccu_to_debug_interface_pipe_read_data,
      write_req => ccu_to_debug_interface_pipe_write_req,
      write_ack => ccu_to_debug_interface_pipe_write_ack,
      write_data => ccu_to_debug_interface_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- this is marked as a non-blocking pipe... InputPorts should take care of it! 
  ccu_to_teu_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe ccu_to_teu",
      num_reads => 1,
      num_writes => 1,
      data_width => 107,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 1 --
    )
    port map( -- 
      read_req => ccu_to_teu_pipe_read_req,
      read_ack => ccu_to_teu_pipe_read_ack,
      read_data => ccu_to_teu_pipe_read_data,
      write_req => ccu_to_teu_pipe_write_req,
      write_ack => ccu_to_teu_pipe_write_ack,
      write_data => ccu_to_teu_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  ccu_to_teu_debug_command_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe ccu_to_teu_debug_command",
      num_reads => 1,
      num_writes => 1,
      data_width => 8,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => ccu_to_teu_debug_command_pipe_read_req,
      read_ack => ccu_to_teu_debug_command_pipe_read_ack,
      read_data => ccu_to_teu_debug_command_pipe_read_data,
      write_req => ccu_to_teu_debug_command_pipe_write_req,
      write_ack => ccu_to_teu_debug_command_pipe_write_ack,
      write_data => ccu_to_teu_debug_command_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe ccu_to_teu_fpunit_register_access_command depth set to 0 since it is a P2P pipe.
  -- this is marked as a non-blocking pipe... InputPorts should take care of it! 
  ccu_to_teu_fpunit_register_access_command_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe ccu_to_teu_fpunit_register_access_command",
      num_reads => 1,
      num_writes => 1,
      data_width => 40,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => ccu_to_teu_fpunit_register_access_command_pipe_read_req,
      read_ack => ccu_to_teu_fpunit_register_access_command_pipe_read_ack,
      read_data => ccu_to_teu_fpunit_register_access_command_pipe_read_data,
      write_req => ccu_to_teu_fpunit_register_access_command_pipe_write_req,
      write_ack => ccu_to_teu_fpunit_register_access_command_pipe_write_ack,
      write_data => ccu_to_teu_fpunit_register_access_command_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe ccu_to_teu_iunit_register_access_command depth set to 0 since it is a P2P pipe.
  -- this is marked as a non-blocking pipe... InputPorts should take care of it! 
  ccu_to_teu_iunit_register_access_command_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe ccu_to_teu_iunit_register_access_command",
      num_reads => 1,
      num_writes => 1,
      data_width => 42,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => ccu_to_teu_iunit_register_access_command_pipe_read_req,
      read_ack => ccu_to_teu_iunit_register_access_command_pipe_read_ack,
      read_data => ccu_to_teu_iunit_register_access_command_pipe_read_data,
      write_req => ccu_to_teu_iunit_register_access_command_pipe_write_req,
      write_ack => ccu_to_teu_iunit_register_access_command_pipe_write_ack,
      write_data => ccu_to_teu_iunit_register_access_command_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe ccu_to_teu_load_store_command depth set to 0 since it is a P2P pipe.
  ccu_to_teu_load_store_command_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe ccu_to_teu_load_store_command",
      num_reads => 1,
      num_writes => 1,
      data_width => 73,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => ccu_to_teu_load_store_command_pipe_read_req,
      read_ack => ccu_to_teu_load_store_command_pipe_read_ack,
      read_data => ccu_to_teu_load_store_command_pipe_read_data,
      write_req => ccu_to_teu_load_store_command_pipe_write_req,
      write_ack => ccu_to_teu_load_store_command_pipe_write_ack,
      write_data => ccu_to_teu_load_store_command_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- this is marked as a non-blocking pipe... InputPorts should take care of it! 
  debug_interface_to_ccu_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe debug_interface_to_ccu",
      num_reads => 1,
      num_writes => 1,
      data_width => 33,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 4 --
    )
    port map( -- 
      read_req => debug_interface_to_ccu_pipe_read_req,
      read_ack => debug_interface_to_ccu_pipe_read_ack,
      read_data => debug_interface_to_ccu_pipe_read_data,
      write_req => debug_interface_to_ccu_pipe_write_req,
      write_ack => debug_interface_to_ccu_pipe_write_ack,
      write_data => debug_interface_to_ccu_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  teu_debug_to_ccu_response_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe teu_debug_to_ccu_response",
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
      read_req => teu_debug_to_ccu_response_pipe_read_req,
      read_ack => teu_debug_to_ccu_response_pipe_read_ack,
      read_data => teu_debug_to_ccu_response_pipe_read_data,
      write_req => teu_debug_to_ccu_response_pipe_write_req,
      write_ack => teu_debug_to_ccu_response_pipe_write_ack,
      write_data => teu_debug_to_ccu_response_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  teu_to_ccu_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe teu_to_ccu",
      num_reads => 1,
      num_writes => 1,
      data_width => 226,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 1 --
    )
    port map( -- 
      read_req => teu_to_ccu_pipe_read_req,
      read_ack => teu_to_ccu_pipe_read_ack,
      read_data => teu_to_ccu_pipe_read_data,
      write_req => teu_to_ccu_pipe_write_req,
      write_ack => teu_to_ccu_pipe_write_ack,
      write_data => teu_to_ccu_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe teu_to_ccu_fpunit_register_access_response depth set to 0 since it is a P2P pipe.
  teu_to_ccu_fpunit_register_access_response_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe teu_to_ccu_fpunit_register_access_response",
      num_reads => 1,
      num_writes => 1,
      data_width => 33,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_to_ccu_fpunit_register_access_response_pipe_read_req,
      read_ack => teu_to_ccu_fpunit_register_access_response_pipe_read_ack,
      read_data => teu_to_ccu_fpunit_register_access_response_pipe_read_data,
      write_req => teu_to_ccu_fpunit_register_access_response_pipe_write_req,
      write_ack => teu_to_ccu_fpunit_register_access_response_pipe_write_ack,
      write_data => teu_to_ccu_fpunit_register_access_response_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe teu_to_ccu_iunit_register_access_response depth set to 0 since it is a P2P pipe.
  teu_to_ccu_iunit_register_access_response_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe teu_to_ccu_iunit_register_access_response",
      num_reads => 1,
      num_writes => 1,
      data_width => 32,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_to_ccu_iunit_register_access_response_pipe_read_req,
      read_ack => teu_to_ccu_iunit_register_access_response_pipe_read_ack,
      read_data => teu_to_ccu_iunit_register_access_response_pipe_read_data,
      write_req => teu_to_ccu_iunit_register_access_response_pipe_write_req,
      write_ack => teu_to_ccu_iunit_register_access_response_pipe_write_ack,
      write_data => teu_to_ccu_iunit_register_access_response_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe teu_to_ccu_load_store_response depth set to 0 since it is a P2P pipe.
  teu_to_ccu_load_store_response_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe teu_to_ccu_load_store_response",
      num_reads => 1,
      num_writes => 1,
      data_width => 33,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_to_ccu_load_store_response_pipe_read_req,
      read_ack => teu_to_ccu_load_store_response_pipe_read_ack,
      read_data => teu_to_ccu_load_store_response_pipe_read_data,
      write_req => teu_to_ccu_load_store_response_pipe_write_req,
      write_ack => teu_to_ccu_load_store_response_pipe_write_ack,
      write_data => teu_to_ccu_load_store_response_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- 
end struct;
