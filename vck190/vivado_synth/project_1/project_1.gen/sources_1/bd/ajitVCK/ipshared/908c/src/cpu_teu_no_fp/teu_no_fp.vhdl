library ieee;
use ieee.std_logic_1164.all;
package teu_no_fp_Type_Package is -- 
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
library cpu_teu_no_fp;
use cpu_teu_no_fp.teu_no_fp_Type_Package.all;
--<<<<<
-->>>>>
library teu_idecode_idispatch;
library teu_ifetch;
library teu_dummy_fpunit;
library teu_iunit;
library teu_loadstore;
library teu_iretire;
library teu_stream_corrector;
--<<<<<
entity teu_no_fp is -- 
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
end entity teu_no_fp;
architecture struct of teu_no_fp is -- 
  signal hsys_tie_low, hsys_tie_high: std_logic;
  signal debug_bp_0 : std_logic_vector(31 downto 0);
  signal debug_bp_1 : std_logic_vector(31 downto 0);
  signal debug_bp_2 : std_logic_vector(31 downto 0);
  signal debug_bp_3 : std_logic_vector(31 downto 0);
  signal debug_dbg_interrupt : std_logic_vector(0 downto 0);
  signal debug_wp_0 : std_logic_vector(31 downto 0);
  signal debug_wp_1 : std_logic_vector(31 downto 0);
  signal debug_wp_2 : std_logic_vector(31 downto 0);
  signal debug_wp_3 : std_logic_vector(31 downto 0);
  signal noblock_teu_idispatch_to_ifetch_pipe_write_data: std_logic_vector(147 downto 0);
  signal noblock_teu_idispatch_to_ifetch_pipe_write_req : std_logic_vector(0  downto 0);
  signal noblock_teu_idispatch_to_ifetch_pipe_write_ack : std_logic_vector(0  downto 0);
  signal noblock_teu_idispatch_to_ifetch_pipe_read_data: std_logic_vector(147 downto 0);
  signal noblock_teu_idispatch_to_ifetch_pipe_read_req : std_logic_vector(0  downto 0);
  signal noblock_teu_idispatch_to_ifetch_pipe_read_ack : std_logic_vector(0  downto 0);
  signal noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_data: std_logic_vector(58 downto 0);
  signal noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_req : std_logic_vector(0  downto 0);
  signal noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_ack : std_logic_vector(0  downto 0);
  signal noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_data: std_logic_vector(58 downto 0);
  signal noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_req : std_logic_vector(0  downto 0);
  signal noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_ack : std_logic_vector(0  downto 0);
  signal noblock_teu_idispatch_to_iunit_writeback_pipe_write_data: std_logic_vector(83 downto 0);
  signal noblock_teu_idispatch_to_iunit_writeback_pipe_write_req : std_logic_vector(0  downto 0);
  signal noblock_teu_idispatch_to_iunit_writeback_pipe_write_ack : std_logic_vector(0  downto 0);
  signal noblock_teu_idispatch_to_iunit_writeback_pipe_read_data: std_logic_vector(83 downto 0);
  signal noblock_teu_idispatch_to_iunit_writeback_pipe_read_req : std_logic_vector(0  downto 0);
  signal noblock_teu_idispatch_to_iunit_writeback_pipe_read_ack : std_logic_vector(0  downto 0);
  signal noblock_teu_idispatch_to_loadstore_pipe_write_data: std_logic_vector(125 downto 0);
  signal noblock_teu_idispatch_to_loadstore_pipe_write_req : std_logic_vector(0  downto 0);
  signal noblock_teu_idispatch_to_loadstore_pipe_write_ack : std_logic_vector(0  downto 0);
  signal noblock_teu_idispatch_to_loadstore_pipe_read_data: std_logic_vector(125 downto 0);
  signal noblock_teu_idispatch_to_loadstore_pipe_read_req : std_logic_vector(0  downto 0);
  signal noblock_teu_idispatch_to_loadstore_pipe_read_ack : std_logic_vector(0  downto 0);
  signal noblock_teu_ifetch_branch_predictor_update_pipe_write_data: std_logic_vector(62 downto 0);
  signal noblock_teu_ifetch_branch_predictor_update_pipe_write_req : std_logic_vector(0  downto 0);
  signal noblock_teu_ifetch_branch_predictor_update_pipe_write_ack : std_logic_vector(0  downto 0);
  signal noblock_teu_ifetch_branch_predictor_update_pipe_read_data: std_logic_vector(62 downto 0);
  signal noblock_teu_ifetch_branch_predictor_update_pipe_read_req : std_logic_vector(0  downto 0);
  signal noblock_teu_ifetch_branch_predictor_update_pipe_read_ack : std_logic_vector(0  downto 0);
  signal noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_data: std_logic_vector(0 downto 0);
  signal noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_req : std_logic_vector(0  downto 0);
  signal noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_ack : std_logic_vector(0  downto 0);
  signal noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_data: std_logic_vector(0 downto 0);
  signal noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_req : std_logic_vector(0  downto 0);
  signal noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_ack : std_logic_vector(0  downto 0);
  signal noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_data: std_logic_vector(0 downto 0);
  signal noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_req : std_logic_vector(0  downto 0);
  signal noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_ack : std_logic_vector(0  downto 0);
  signal noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_data: std_logic_vector(0 downto 0);
  signal noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_req : std_logic_vector(0  downto 0);
  signal noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_ack : std_logic_vector(0  downto 0);
  signal noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_data: std_logic_vector(0 downto 0);
  signal noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_req : std_logic_vector(0  downto 0);
  signal noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_ack : std_logic_vector(0  downto 0);
  signal noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_data: std_logic_vector(0 downto 0);
  signal noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_req : std_logic_vector(0  downto 0);
  signal noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_ack : std_logic_vector(0  downto 0);
  signal noblock_teu_stream_corrector_to_idispatch_pipe_write_data: std_logic_vector(147 downto 0);
  signal noblock_teu_stream_corrector_to_idispatch_pipe_write_req : std_logic_vector(0  downto 0);
  signal noblock_teu_stream_corrector_to_idispatch_pipe_write_ack : std_logic_vector(0  downto 0);
  signal noblock_teu_stream_corrector_to_idispatch_pipe_read_data: std_logic_vector(147 downto 0);
  signal noblock_teu_stream_corrector_to_idispatch_pipe_read_req : std_logic_vector(0  downto 0);
  signal noblock_teu_stream_corrector_to_idispatch_pipe_read_ack : std_logic_vector(0  downto 0);
  signal noblock_teu_stream_corrector_to_iretire_pipe_write_data: std_logic_vector(153 downto 0);
  signal noblock_teu_stream_corrector_to_iretire_pipe_write_req : std_logic_vector(0  downto 0);
  signal noblock_teu_stream_corrector_to_iretire_pipe_write_ack : std_logic_vector(0  downto 0);
  signal noblock_teu_stream_corrector_to_iretire_pipe_read_data: std_logic_vector(153 downto 0);
  signal noblock_teu_stream_corrector_to_iretire_pipe_read_req : std_logic_vector(0  downto 0);
  signal noblock_teu_stream_corrector_to_iretire_pipe_read_ack : std_logic_vector(0  downto 0);
  signal noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_data: std_logic_vector(0 downto 0);
  signal noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_req : std_logic_vector(0  downto 0);
  signal noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_ack : std_logic_vector(0  downto 0);
  signal noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_data: std_logic_vector(0 downto 0);
  signal noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_req : std_logic_vector(0  downto 0);
  signal noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_ack : std_logic_vector(0  downto 0);
  signal noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_data: std_logic_vector(0 downto 0);
  signal noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_req : std_logic_vector(0  downto 0);
  signal noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_ack : std_logic_vector(0  downto 0);
  signal noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_data: std_logic_vector(0 downto 0);
  signal noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_req : std_logic_vector(0  downto 0);
  signal noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_ack : std_logic_vector(0  downto 0);
  signal teu_fpunit_cc_to_stream_corrector_pipe_write_data: std_logic_vector(14 downto 0);
  signal teu_fpunit_cc_to_stream_corrector_pipe_write_req : std_logic_vector(0  downto 0);
  signal teu_fpunit_cc_to_stream_corrector_pipe_write_ack : std_logic_vector(0  downto 0);
  signal teu_fpunit_cc_to_stream_corrector_pipe_read_data: std_logic_vector(14 downto 0);
  signal teu_fpunit_cc_to_stream_corrector_pipe_read_req : std_logic_vector(0  downto 0);
  signal teu_fpunit_cc_to_stream_corrector_pipe_read_ack : std_logic_vector(0  downto 0);
  signal teu_fpunit_register_file_to_loadstore_pipe_write_data: std_logic_vector(76 downto 0);
  signal teu_fpunit_register_file_to_loadstore_pipe_write_req : std_logic_vector(0  downto 0);
  signal teu_fpunit_register_file_to_loadstore_pipe_write_ack : std_logic_vector(0  downto 0);
  signal teu_fpunit_register_file_to_loadstore_pipe_read_data: std_logic_vector(76 downto 0);
  signal teu_fpunit_register_file_to_loadstore_pipe_read_req : std_logic_vector(0  downto 0);
  signal teu_fpunit_register_file_to_loadstore_pipe_read_ack : std_logic_vector(0  downto 0);
  signal teu_fpunit_to_iretire_pipe_write_data: std_logic_vector(50 downto 0);
  signal teu_fpunit_to_iretire_pipe_write_req : std_logic_vector(0  downto 0);
  signal teu_fpunit_to_iretire_pipe_write_ack : std_logic_vector(0  downto 0);
  signal teu_fpunit_to_iretire_pipe_read_data: std_logic_vector(50 downto 0);
  signal teu_fpunit_to_iretire_pipe_read_req : std_logic_vector(0  downto 0);
  signal teu_fpunit_to_iretire_pipe_read_ack : std_logic_vector(0  downto 0);
  signal teu_fpunit_trap_to_iunit_pipe_write_data: std_logic_vector(12 downto 0);
  signal teu_fpunit_trap_to_iunit_pipe_write_req : std_logic_vector(0  downto 0);
  signal teu_fpunit_trap_to_iunit_pipe_write_ack : std_logic_vector(0  downto 0);
  signal teu_fpunit_trap_to_iunit_pipe_read_data: std_logic_vector(12 downto 0);
  signal teu_fpunit_trap_to_iunit_pipe_read_req : std_logic_vector(0  downto 0);
  signal teu_fpunit_trap_to_iunit_pipe_read_ack : std_logic_vector(0  downto 0);
  signal teu_fpunit_trap_to_loadstore_pipe_write_data: std_logic_vector(12 downto 0);
  signal teu_fpunit_trap_to_loadstore_pipe_write_req : std_logic_vector(0  downto 0);
  signal teu_fpunit_trap_to_loadstore_pipe_write_ack : std_logic_vector(0  downto 0);
  signal teu_fpunit_trap_to_loadstore_pipe_read_data: std_logic_vector(12 downto 0);
  signal teu_fpunit_trap_to_loadstore_pipe_read_req : std_logic_vector(0  downto 0);
  signal teu_fpunit_trap_to_loadstore_pipe_read_ack : std_logic_vector(0  downto 0);
  signal teu_idispatch_to_iunit_exec_pipe_write_data: std_logic_vector(149 downto 0);
  signal teu_idispatch_to_iunit_exec_pipe_write_req : std_logic_vector(0  downto 0);
  signal teu_idispatch_to_iunit_exec_pipe_write_ack : std_logic_vector(0  downto 0);
  signal teu_idispatch_to_iunit_exec_pipe_read_data: std_logic_vector(149 downto 0);
  signal teu_idispatch_to_iunit_exec_pipe_read_req : std_logic_vector(0  downto 0);
  signal teu_idispatch_to_iunit_exec_pipe_read_ack : std_logic_vector(0  downto 0);
  signal teu_idispatch_to_stream_corrector_pipe_write_data: std_logic_vector(204 downto 0);
  signal teu_idispatch_to_stream_corrector_pipe_write_req : std_logic_vector(0  downto 0);
  signal teu_idispatch_to_stream_corrector_pipe_write_ack : std_logic_vector(0  downto 0);
  signal teu_idispatch_to_stream_corrector_pipe_read_data: std_logic_vector(204 downto 0);
  signal teu_idispatch_to_stream_corrector_pipe_read_req : std_logic_vector(0  downto 0);
  signal teu_idispatch_to_stream_corrector_pipe_read_ack : std_logic_vector(0  downto 0);
  signal teu_ifetch_to_idecode_extended_pipe_write_data: std_logic_vector(223 downto 0);
  signal teu_ifetch_to_idecode_extended_pipe_write_req : std_logic_vector(0  downto 0);
  signal teu_ifetch_to_idecode_extended_pipe_write_ack : std_logic_vector(0  downto 0);
  signal teu_ifetch_to_idecode_extended_pipe_read_data: std_logic_vector(223 downto 0);
  signal teu_ifetch_to_idecode_extended_pipe_read_req : std_logic_vector(0  downto 0);
  signal teu_ifetch_to_idecode_extended_pipe_read_ack : std_logic_vector(0  downto 0);
  signal teu_iretire_to_idispatch_pipe_write_data: std_logic_vector(0 downto 0);
  signal teu_iretire_to_idispatch_pipe_write_req : std_logic_vector(0  downto 0);
  signal teu_iretire_to_idispatch_pipe_write_ack : std_logic_vector(0  downto 0);
  signal teu_iretire_to_idispatch_pipe_read_data: std_logic_vector(0 downto 0);
  signal teu_iretire_to_idispatch_pipe_read_req : std_logic_vector(0  downto 0);
  signal teu_iretire_to_idispatch_pipe_read_ack : std_logic_vector(0  downto 0);
  signal teu_iunit_cc_to_stream_corrector_pipe_write_data: std_logic_vector(16 downto 0);
  signal teu_iunit_cc_to_stream_corrector_pipe_write_req : std_logic_vector(0  downto 0);
  signal teu_iunit_cc_to_stream_corrector_pipe_write_ack : std_logic_vector(0  downto 0);
  signal teu_iunit_cc_to_stream_corrector_pipe_read_data: std_logic_vector(16 downto 0);
  signal teu_iunit_cc_to_stream_corrector_pipe_read_req : std_logic_vector(0  downto 0);
  signal teu_iunit_cc_to_stream_corrector_pipe_read_ack : std_logic_vector(0  downto 0);
  signal teu_iunit_register_file_to_loadstore_pipe_write_data: std_logic_vector(141 downto 0);
  signal teu_iunit_register_file_to_loadstore_pipe_write_req : std_logic_vector(0  downto 0);
  signal teu_iunit_register_file_to_loadstore_pipe_write_ack : std_logic_vector(0  downto 0);
  signal teu_iunit_register_file_to_loadstore_pipe_read_data: std_logic_vector(141 downto 0);
  signal teu_iunit_register_file_to_loadstore_pipe_read_req : std_logic_vector(0  downto 0);
  signal teu_iunit_register_file_to_loadstore_pipe_read_ack : std_logic_vector(0  downto 0);
  signal teu_iunit_rs1_to_stream_corrector_pipe_write_data: std_logic_vector(31 downto 0);
  signal teu_iunit_rs1_to_stream_corrector_pipe_write_req : std_logic_vector(0  downto 0);
  signal teu_iunit_rs1_to_stream_corrector_pipe_write_ack : std_logic_vector(0  downto 0);
  signal teu_iunit_rs1_to_stream_corrector_pipe_read_data: std_logic_vector(31 downto 0);
  signal teu_iunit_rs1_to_stream_corrector_pipe_read_req : std_logic_vector(0  downto 0);
  signal teu_iunit_rs1_to_stream_corrector_pipe_read_ack : std_logic_vector(0  downto 0);
  signal teu_iunit_to_iretire_pipe_write_data: std_logic_vector(95 downto 0);
  signal teu_iunit_to_iretire_pipe_write_req : std_logic_vector(0  downto 0);
  signal teu_iunit_to_iretire_pipe_write_ack : std_logic_vector(0  downto 0);
  signal teu_iunit_to_iretire_pipe_read_data: std_logic_vector(95 downto 0);
  signal teu_iunit_to_iretire_pipe_read_req : std_logic_vector(0  downto 0);
  signal teu_iunit_to_iretire_pipe_read_ack : std_logic_vector(0  downto 0);
  signal teu_iunit_to_stream_corrector_pipe_write_data: std_logic_vector(89 downto 0);
  signal teu_iunit_to_stream_corrector_pipe_write_req : std_logic_vector(0  downto 0);
  signal teu_iunit_to_stream_corrector_pipe_write_ack : std_logic_vector(0  downto 0);
  signal teu_iunit_to_stream_corrector_pipe_read_data: std_logic_vector(89 downto 0);
  signal teu_iunit_to_stream_corrector_pipe_read_req : std_logic_vector(0  downto 0);
  signal teu_iunit_to_stream_corrector_pipe_read_ack : std_logic_vector(0  downto 0);
  signal teu_iunit_trap_to_fpunit_pipe_write_data: std_logic_vector(12 downto 0);
  signal teu_iunit_trap_to_fpunit_pipe_write_req : std_logic_vector(0  downto 0);
  signal teu_iunit_trap_to_fpunit_pipe_write_ack : std_logic_vector(0  downto 0);
  signal teu_iunit_trap_to_fpunit_pipe_read_data: std_logic_vector(12 downto 0);
  signal teu_iunit_trap_to_fpunit_pipe_read_req : std_logic_vector(0  downto 0);
  signal teu_iunit_trap_to_fpunit_pipe_read_ack : std_logic_vector(0  downto 0);
  signal teu_iunit_trap_to_loadstore_pipe_write_data: std_logic_vector(0 downto 0);
  signal teu_iunit_trap_to_loadstore_pipe_write_req : std_logic_vector(0  downto 0);
  signal teu_iunit_trap_to_loadstore_pipe_write_ack : std_logic_vector(0  downto 0);
  signal teu_iunit_trap_to_loadstore_pipe_read_data: std_logic_vector(0 downto 0);
  signal teu_iunit_trap_to_loadstore_pipe_read_req : std_logic_vector(0  downto 0);
  signal teu_iunit_trap_to_loadstore_pipe_read_ack : std_logic_vector(0  downto 0);
  signal teu_loadstore_to_fpunit_pipe_write_data: std_logic_vector(77 downto 0);
  signal teu_loadstore_to_fpunit_pipe_write_req : std_logic_vector(0  downto 0);
  signal teu_loadstore_to_fpunit_pipe_write_ack : std_logic_vector(0  downto 0);
  signal teu_loadstore_to_fpunit_pipe_read_data: std_logic_vector(77 downto 0);
  signal teu_loadstore_to_fpunit_pipe_read_req : std_logic_vector(0  downto 0);
  signal teu_loadstore_to_fpunit_pipe_read_ack : std_logic_vector(0  downto 0);
  signal teu_loadstore_to_iretire_pipe_write_data: std_logic_vector(53 downto 0);
  signal teu_loadstore_to_iretire_pipe_write_req : std_logic_vector(0  downto 0);
  signal teu_loadstore_to_iretire_pipe_write_ack : std_logic_vector(0  downto 0);
  signal teu_loadstore_to_iretire_pipe_read_data: std_logic_vector(53 downto 0);
  signal teu_loadstore_to_iretire_pipe_read_req : std_logic_vector(0  downto 0);
  signal teu_loadstore_to_iretire_pipe_read_ack : std_logic_vector(0  downto 0);
  signal teu_loadstore_to_iunit_pipe_write_data: std_logic_vector(77 downto 0);
  signal teu_loadstore_to_iunit_pipe_write_req : std_logic_vector(0  downto 0);
  signal teu_loadstore_to_iunit_pipe_write_ack : std_logic_vector(0  downto 0);
  signal teu_loadstore_to_iunit_pipe_read_data: std_logic_vector(77 downto 0);
  signal teu_loadstore_to_iunit_pipe_read_req : std_logic_vector(0  downto 0);
  signal teu_loadstore_to_iunit_pipe_read_ack : std_logic_vector(0  downto 0);
  signal teu_ras_access_pipe_pipe_write_data: std_logic_vector(32 downto 0);
  signal teu_ras_access_pipe_pipe_write_req : std_logic_vector(0  downto 0);
  signal teu_ras_access_pipe_pipe_write_ack : std_logic_vector(0  downto 0);
  signal teu_ras_access_pipe_pipe_read_data: std_logic_vector(32 downto 0);
  signal teu_ras_access_pipe_pipe_read_req : std_logic_vector(0  downto 0);
  signal teu_ras_access_pipe_pipe_read_ack : std_logic_vector(0  downto 0);
  signal teu_stream_corrector_annul_status : std_logic_vector(15 downto 0);
  signal teu_stream_corrector_to_fpunit_pipe_write_data: std_logic_vector(17 downto 0);
  signal teu_stream_corrector_to_fpunit_pipe_write_req : std_logic_vector(0  downto 0);
  signal teu_stream_corrector_to_fpunit_pipe_write_ack : std_logic_vector(0  downto 0);
  signal teu_stream_corrector_to_fpunit_pipe_read_data: std_logic_vector(17 downto 0);
  signal teu_stream_corrector_to_fpunit_pipe_read_req : std_logic_vector(0  downto 0);
  signal teu_stream_corrector_to_fpunit_pipe_read_ack : std_logic_vector(0  downto 0);
  signal teu_stream_corrector_to_iunit_pipe_write_data: std_logic_vector(17 downto 0);
  signal teu_stream_corrector_to_iunit_pipe_write_req : std_logic_vector(0  downto 0);
  signal teu_stream_corrector_to_iunit_pipe_write_ack : std_logic_vector(0  downto 0);
  signal teu_stream_corrector_to_iunit_pipe_read_data: std_logic_vector(17 downto 0);
  signal teu_stream_corrector_to_iunit_pipe_read_req : std_logic_vector(0  downto 0);
  signal teu_stream_corrector_to_iunit_pipe_read_ack : std_logic_vector(0  downto 0);
  signal teu_stream_corrector_to_loadstore_pipe_write_data: std_logic_vector(18 downto 0);
  signal teu_stream_corrector_to_loadstore_pipe_write_req : std_logic_vector(0  downto 0);
  signal teu_stream_corrector_to_loadstore_pipe_write_ack : std_logic_vector(0  downto 0);
  signal teu_stream_corrector_to_loadstore_pipe_read_data: std_logic_vector(18 downto 0);
  signal teu_stream_corrector_to_loadstore_pipe_read_req : std_logic_vector(0  downto 0);
  signal teu_stream_corrector_to_loadstore_pipe_read_ack : std_logic_vector(0  downto 0);
  component idecode_idispatch is -- 
    port( -- 
      debug_bp_0 : in std_logic_vector(31 downto 0);
      debug_bp_1 : in std_logic_vector(31 downto 0);
      debug_bp_2 : in std_logic_vector(31 downto 0);
      debug_bp_3 : in std_logic_vector(31 downto 0);
      debug_dbg_interrupt : in std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_idispatch_pipe_write_data : in std_logic_vector(147 downto 0);
      noblock_teu_stream_corrector_to_idispatch_pipe_write_req  : in std_logic_vector(0  downto 0);
      noblock_teu_stream_corrector_to_idispatch_pipe_write_ack  : out std_logic_vector(0  downto 0);
      teu_ifetch_to_idecode_extended_pipe_write_data : in std_logic_vector(223 downto 0);
      teu_ifetch_to_idecode_extended_pipe_write_req  : in std_logic_vector(0  downto 0);
      teu_ifetch_to_idecode_extended_pipe_write_ack  : out std_logic_vector(0  downto 0);
      teu_iretire_to_idispatch_pipe_write_data : in std_logic_vector(0 downto 0);
      teu_iretire_to_idispatch_pipe_write_req  : in std_logic_vector(0  downto 0);
      teu_iretire_to_idispatch_pipe_write_ack  : out std_logic_vector(0  downto 0);
      teu_stream_corrector_annul_status : in std_logic_vector(15 downto 0);
      noblock_teu_idispatch_to_ifetch_pipe_read_data : out std_logic_vector(147 downto 0);
      noblock_teu_idispatch_to_ifetch_pipe_read_req  : in std_logic_vector(0  downto 0);
      noblock_teu_idispatch_to_ifetch_pipe_read_ack  : out std_logic_vector(0  downto 0);
      noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_data : out std_logic_vector(58 downto 0);
      noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_req  : in std_logic_vector(0  downto 0);
      noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_ack  : out std_logic_vector(0  downto 0);
      noblock_teu_idispatch_to_iunit_writeback_pipe_read_data : out std_logic_vector(83 downto 0);
      noblock_teu_idispatch_to_iunit_writeback_pipe_read_req  : in std_logic_vector(0  downto 0);
      noblock_teu_idispatch_to_iunit_writeback_pipe_read_ack  : out std_logic_vector(0  downto 0);
      noblock_teu_idispatch_to_loadstore_pipe_read_data : out std_logic_vector(125 downto 0);
      noblock_teu_idispatch_to_loadstore_pipe_read_req  : in std_logic_vector(0  downto 0);
      noblock_teu_idispatch_to_loadstore_pipe_read_ack  : out std_logic_vector(0  downto 0);
      teu_idispatch_to_iunit_exec_pipe_read_data : out std_logic_vector(149 downto 0);
      teu_idispatch_to_iunit_exec_pipe_read_req  : in std_logic_vector(0  downto 0);
      teu_idispatch_to_iunit_exec_pipe_read_ack  : out std_logic_vector(0  downto 0);
      teu_idispatch_to_stream_corrector_pipe_read_data : out std_logic_vector(204 downto 0);
      teu_idispatch_to_stream_corrector_pipe_read_req  : in std_logic_vector(0  downto 0);
      teu_idispatch_to_stream_corrector_pipe_read_ack  : out std_logic_vector(0  downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for decode_dispatch_inst :  idecode_idispatch -- 
    use entity teu_idecode_idispatch.idecode_idispatch; -- 
  --<<<<<
  component ifetch is -- 
    port( -- 
      ENV_to_CPU_irl : in std_logic_vector(7 downto 0);
      ICACHE_to_CPU_response_pipe_write_data : in std_logic_vector(89 downto 0);
      ICACHE_to_CPU_response_pipe_write_req  : in std_logic_vector(0  downto 0);
      ICACHE_to_CPU_response_pipe_write_ack  : out std_logic_vector(0  downto 0);
      ccu_to_teu_pipe_write_data : in std_logic_vector(106 downto 0);
      ccu_to_teu_pipe_write_req  : in std_logic_vector(0  downto 0);
      ccu_to_teu_pipe_write_ack  : out std_logic_vector(0  downto 0);
      noblock_teu_idispatch_to_ifetch_pipe_write_data : in std_logic_vector(147 downto 0);
      noblock_teu_idispatch_to_ifetch_pipe_write_req  : in std_logic_vector(0  downto 0);
      noblock_teu_idispatch_to_ifetch_pipe_write_ack  : out std_logic_vector(0  downto 0);
      noblock_teu_ifetch_branch_predictor_update_pipe_write_data : in std_logic_vector(62 downto 0);
      noblock_teu_ifetch_branch_predictor_update_pipe_write_req  : in std_logic_vector(0  downto 0);
      noblock_teu_ifetch_branch_predictor_update_pipe_write_ack  : out std_logic_vector(0  downto 0);
      teu_ras_access_pipe_pipe_write_data : in std_logic_vector(32 downto 0);
      teu_ras_access_pipe_pipe_write_req  : in std_logic_vector(0  downto 0);
      teu_ras_access_pipe_pipe_write_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_ICACHE_command_pipe_read_data : out std_logic_vector(40 downto 0);
      NOBLOCK_CPU_to_ICACHE_command_pipe_read_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_ICACHE_command_pipe_read_ack  : out std_logic_vector(0  downto 0);
      teu_ifetch_to_idecode_extended_pipe_read_data : out std_logic_vector(223 downto 0);
      teu_ifetch_to_idecode_extended_pipe_read_req  : in std_logic_vector(0  downto 0);
      teu_ifetch_to_idecode_extended_pipe_read_ack  : out std_logic_vector(0  downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for fetch_inst :  ifetch -- 
    use entity teu_ifetch.ifetch; -- 
  --<<<<<
  component dummy_fpunit is -- 
    port( -- 
      NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_data : in std_logic_vector(92 downto 0);
      NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_ack  : out std_logic_vector(0  downto 0);
      ccu_to_teu_fpunit_register_access_command_pipe_write_data : in std_logic_vector(39 downto 0);
      ccu_to_teu_fpunit_register_access_command_pipe_write_req  : in std_logic_vector(0  downto 0);
      ccu_to_teu_fpunit_register_access_command_pipe_write_ack  : out std_logic_vector(0  downto 0);
      noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_data : in std_logic_vector(0 downto 0);
      noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_req  : in std_logic_vector(0  downto 0);
      noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_ack  : out std_logic_vector(0  downto 0);
      noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_data : in std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_req  : in std_logic_vector(0  downto 0);
      noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_ack  : out std_logic_vector(0  downto 0);
      teu_iunit_trap_to_fpunit_pipe_write_data : in std_logic_vector(12 downto 0);
      teu_iunit_trap_to_fpunit_pipe_write_req  : in std_logic_vector(0  downto 0);
      teu_iunit_trap_to_fpunit_pipe_write_ack  : out std_logic_vector(0  downto 0);
      teu_loadstore_to_fpunit_pipe_write_data : in std_logic_vector(77 downto 0);
      teu_loadstore_to_fpunit_pipe_write_req  : in std_logic_vector(0  downto 0);
      teu_loadstore_to_fpunit_pipe_write_ack  : out std_logic_vector(0  downto 0);
      teu_stream_corrector_to_fpunit_pipe_write_data : in std_logic_vector(17 downto 0);
      teu_stream_corrector_to_fpunit_pipe_write_req  : in std_logic_vector(0  downto 0);
      teu_stream_corrector_to_fpunit_pipe_write_ack  : out std_logic_vector(0  downto 0);
      teu_fpunit_cc_to_stream_corrector_pipe_read_data : out std_logic_vector(14 downto 0);
      teu_fpunit_cc_to_stream_corrector_pipe_read_req  : in std_logic_vector(0  downto 0);
      teu_fpunit_cc_to_stream_corrector_pipe_read_ack  : out std_logic_vector(0  downto 0);
      teu_fpunit_register_file_to_loadstore_pipe_read_data : out std_logic_vector(76 downto 0);
      teu_fpunit_register_file_to_loadstore_pipe_read_req  : in std_logic_vector(0  downto 0);
      teu_fpunit_register_file_to_loadstore_pipe_read_ack  : out std_logic_vector(0  downto 0);
      teu_fpunit_to_iretire_pipe_read_data : out std_logic_vector(50 downto 0);
      teu_fpunit_to_iretire_pipe_read_req  : in std_logic_vector(0  downto 0);
      teu_fpunit_to_iretire_pipe_read_ack  : out std_logic_vector(0  downto 0);
      teu_fpunit_trap_to_iunit_pipe_read_data : out std_logic_vector(12 downto 0);
      teu_fpunit_trap_to_iunit_pipe_read_req  : in std_logic_vector(0  downto 0);
      teu_fpunit_trap_to_iunit_pipe_read_ack  : out std_logic_vector(0  downto 0);
      teu_fpunit_trap_to_loadstore_pipe_read_data : out std_logic_vector(12 downto 0);
      teu_fpunit_trap_to_loadstore_pipe_read_req  : in std_logic_vector(0  downto 0);
      teu_fpunit_trap_to_loadstore_pipe_read_ack  : out std_logic_vector(0  downto 0);
      teu_to_ccu_fpunit_register_access_response_pipe_read_data : out std_logic_vector(32 downto 0);
      teu_to_ccu_fpunit_register_access_response_pipe_read_req  : in std_logic_vector(0  downto 0);
      teu_to_ccu_fpunit_register_access_response_pipe_read_ack  : out std_logic_vector(0  downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for fpu_inst :  dummy_fpunit -- 
    use entity teu_dummy_fpunit.dummy_fpunit; -- 
  --<<<<<
  component iunit is -- 
    port( -- 
      CORE_ID : in std_logic_vector(7 downto 0);
      NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_data : in std_logic_vector(92 downto 0);
      NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_ack  : out std_logic_vector(0  downto 0);
      THREAD_ID : in std_logic_vector(7 downto 0);
      ccu_to_teu_iunit_register_access_command_pipe_write_data : in std_logic_vector(41 downto 0);
      ccu_to_teu_iunit_register_access_command_pipe_write_req  : in std_logic_vector(0  downto 0);
      ccu_to_teu_iunit_register_access_command_pipe_write_ack  : out std_logic_vector(0  downto 0);
      noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_data : in std_logic_vector(58 downto 0);
      noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_req  : in std_logic_vector(0  downto 0);
      noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_ack  : out std_logic_vector(0  downto 0);
      noblock_teu_idispatch_to_iunit_writeback_pipe_write_data : in std_logic_vector(83 downto 0);
      noblock_teu_idispatch_to_iunit_writeback_pipe_write_req  : in std_logic_vector(0  downto 0);
      noblock_teu_idispatch_to_iunit_writeback_pipe_write_ack  : out std_logic_vector(0  downto 0);
      noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_data : in std_logic_vector(0 downto 0);
      noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_req  : in std_logic_vector(0  downto 0);
      noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_ack  : out std_logic_vector(0  downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_data : in std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_req  : in std_logic_vector(0  downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_ack  : out std_logic_vector(0  downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_data : in std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_req  : in std_logic_vector(0  downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_ack  : out std_logic_vector(0  downto 0);
      teu_fpunit_trap_to_iunit_pipe_write_data : in std_logic_vector(12 downto 0);
      teu_fpunit_trap_to_iunit_pipe_write_req  : in std_logic_vector(0  downto 0);
      teu_fpunit_trap_to_iunit_pipe_write_ack  : out std_logic_vector(0  downto 0);
      teu_idispatch_to_iunit_exec_pipe_write_data : in std_logic_vector(149 downto 0);
      teu_idispatch_to_iunit_exec_pipe_write_req  : in std_logic_vector(0  downto 0);
      teu_idispatch_to_iunit_exec_pipe_write_ack  : out std_logic_vector(0  downto 0);
      teu_loadstore_to_iunit_pipe_write_data : in std_logic_vector(77 downto 0);
      teu_loadstore_to_iunit_pipe_write_req  : in std_logic_vector(0  downto 0);
      teu_loadstore_to_iunit_pipe_write_ack  : out std_logic_vector(0  downto 0);
      teu_stream_corrector_to_iunit_pipe_write_data : in std_logic_vector(17 downto 0);
      teu_stream_corrector_to_iunit_pipe_write_req  : in std_logic_vector(0  downto 0);
      teu_stream_corrector_to_iunit_pipe_write_ack  : out std_logic_vector(0  downto 0);
      teu_iunit_cc_to_stream_corrector_pipe_read_data : out std_logic_vector(16 downto 0);
      teu_iunit_cc_to_stream_corrector_pipe_read_req  : in std_logic_vector(0  downto 0);
      teu_iunit_cc_to_stream_corrector_pipe_read_ack  : out std_logic_vector(0  downto 0);
      teu_iunit_register_file_to_loadstore_pipe_read_data : out std_logic_vector(141 downto 0);
      teu_iunit_register_file_to_loadstore_pipe_read_req  : in std_logic_vector(0  downto 0);
      teu_iunit_register_file_to_loadstore_pipe_read_ack  : out std_logic_vector(0  downto 0);
      teu_iunit_rs1_to_stream_corrector_pipe_read_data : out std_logic_vector(31 downto 0);
      teu_iunit_rs1_to_stream_corrector_pipe_read_req  : in std_logic_vector(0  downto 0);
      teu_iunit_rs1_to_stream_corrector_pipe_read_ack  : out std_logic_vector(0  downto 0);
      teu_iunit_to_iretire_pipe_read_data : out std_logic_vector(95 downto 0);
      teu_iunit_to_iretire_pipe_read_req  : in std_logic_vector(0  downto 0);
      teu_iunit_to_iretire_pipe_read_ack  : out std_logic_vector(0  downto 0);
      teu_iunit_to_stream_corrector_pipe_read_data : out std_logic_vector(89 downto 0);
      teu_iunit_to_stream_corrector_pipe_read_req  : in std_logic_vector(0  downto 0);
      teu_iunit_to_stream_corrector_pipe_read_ack  : out std_logic_vector(0  downto 0);
      teu_iunit_trap_to_fpunit_pipe_read_data : out std_logic_vector(12 downto 0);
      teu_iunit_trap_to_fpunit_pipe_read_req  : in std_logic_vector(0  downto 0);
      teu_iunit_trap_to_fpunit_pipe_read_ack  : out std_logic_vector(0  downto 0);
      teu_iunit_trap_to_loadstore_pipe_read_data : out std_logic_vector(0 downto 0);
      teu_iunit_trap_to_loadstore_pipe_read_req  : in std_logic_vector(0  downto 0);
      teu_iunit_trap_to_loadstore_pipe_read_ack  : out std_logic_vector(0  downto 0);
      teu_to_ccu_iunit_register_access_response_pipe_read_data : out std_logic_vector(31 downto 0);
      teu_to_ccu_iunit_register_access_response_pipe_read_req  : in std_logic_vector(0  downto 0);
      teu_to_ccu_iunit_register_access_response_pipe_read_ack  : out std_logic_vector(0  downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for iu_inst :  iunit -- 
    use entity teu_iunit.iunit; -- 
  --<<<<<
  component loadstore is -- 
    port( -- 
      BROADCAST_INIT_PC : in std_logic_vector(31 downto 0);
      DCACHE_to_CPU_response_pipe_write_data : in std_logic_vector(71 downto 0);
      DCACHE_to_CPU_response_pipe_write_req  : in std_logic_vector(0  downto 0);
      DCACHE_to_CPU_response_pipe_write_ack  : out std_logic_vector(0  downto 0);
      DCACHE_to_CPU_slow_response_pipe_write_data : in std_logic_vector(71 downto 0);
      DCACHE_to_CPU_slow_response_pipe_write_req  : in std_logic_vector(0  downto 0);
      DCACHE_to_CPU_slow_response_pipe_write_ack  : out std_logic_vector(0  downto 0);
      THREAD_ID : in std_logic_vector(7 downto 0);
      ccu_to_teu_load_store_command_pipe_write_data : in std_logic_vector(72 downto 0);
      ccu_to_teu_load_store_command_pipe_write_req  : in std_logic_vector(0  downto 0);
      ccu_to_teu_load_store_command_pipe_write_ack  : out std_logic_vector(0  downto 0);
      debug_wp_0 : in std_logic_vector(31 downto 0);
      debug_wp_1 : in std_logic_vector(31 downto 0);
      debug_wp_2 : in std_logic_vector(31 downto 0);
      debug_wp_3 : in std_logic_vector(31 downto 0);
      noblock_teu_idispatch_to_loadstore_pipe_write_data : in std_logic_vector(125 downto 0);
      noblock_teu_idispatch_to_loadstore_pipe_write_req  : in std_logic_vector(0  downto 0);
      noblock_teu_idispatch_to_loadstore_pipe_write_ack  : out std_logic_vector(0  downto 0);
      teu_fpunit_register_file_to_loadstore_pipe_write_data : in std_logic_vector(76 downto 0);
      teu_fpunit_register_file_to_loadstore_pipe_write_req  : in std_logic_vector(0  downto 0);
      teu_fpunit_register_file_to_loadstore_pipe_write_ack  : out std_logic_vector(0  downto 0);
      teu_fpunit_trap_to_loadstore_pipe_write_data : in std_logic_vector(12 downto 0);
      teu_fpunit_trap_to_loadstore_pipe_write_req  : in std_logic_vector(0  downto 0);
      teu_fpunit_trap_to_loadstore_pipe_write_ack  : out std_logic_vector(0  downto 0);
      teu_iunit_register_file_to_loadstore_pipe_write_data : in std_logic_vector(141 downto 0);
      teu_iunit_register_file_to_loadstore_pipe_write_req  : in std_logic_vector(0  downto 0);
      teu_iunit_register_file_to_loadstore_pipe_write_ack  : out std_logic_vector(0  downto 0);
      teu_iunit_trap_to_loadstore_pipe_write_data : in std_logic_vector(0 downto 0);
      teu_iunit_trap_to_loadstore_pipe_write_req  : in std_logic_vector(0  downto 0);
      teu_iunit_trap_to_loadstore_pipe_write_ack  : out std_logic_vector(0  downto 0);
      teu_stream_corrector_to_loadstore_pipe_write_data : in std_logic_vector(18 downto 0);
      teu_stream_corrector_to_loadstore_pipe_write_req  : in std_logic_vector(0  downto 0);
      teu_stream_corrector_to_loadstore_pipe_write_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_DCACHE_command_pipe_read_data : out std_logic_vector(142 downto 0);
      NOBLOCK_CPU_to_DCACHE_command_pipe_read_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_DCACHE_command_pipe_read_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_data : out std_logic_vector(120 downto 0);
      NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_ack  : out std_logic_vector(0  downto 0);
      noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_data : out std_logic_vector(0 downto 0);
      noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_req  : in std_logic_vector(0  downto 0);
      noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_ack  : out std_logic_vector(0  downto 0);
      noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_data : out std_logic_vector(0 downto 0);
      noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_req  : in std_logic_vector(0  downto 0);
      noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_ack  : out std_logic_vector(0  downto 0);
      teu_loadstore_to_fpunit_pipe_read_data : out std_logic_vector(77 downto 0);
      teu_loadstore_to_fpunit_pipe_read_req  : in std_logic_vector(0  downto 0);
      teu_loadstore_to_fpunit_pipe_read_ack  : out std_logic_vector(0  downto 0);
      teu_loadstore_to_iretire_pipe_read_data : out std_logic_vector(53 downto 0);
      teu_loadstore_to_iretire_pipe_read_req  : in std_logic_vector(0  downto 0);
      teu_loadstore_to_iretire_pipe_read_ack  : out std_logic_vector(0  downto 0);
      teu_loadstore_to_iunit_pipe_read_data : out std_logic_vector(77 downto 0);
      teu_loadstore_to_iunit_pipe_read_req  : in std_logic_vector(0  downto 0);
      teu_loadstore_to_iunit_pipe_read_ack  : out std_logic_vector(0  downto 0);
      teu_to_ccu_load_store_response_pipe_read_data : out std_logic_vector(32 downto 0);
      teu_to_ccu_load_store_response_pipe_read_req  : in std_logic_vector(0  downto 0);
      teu_to_ccu_load_store_response_pipe_read_ack  : out std_logic_vector(0  downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for ls_inst :  loadstore -- 
    use entity teu_loadstore.loadstore; -- 
  --<<<<<
  component iretire is -- 
    port( -- 
      noblock_teu_stream_corrector_to_iretire_pipe_write_data : in std_logic_vector(153 downto 0);
      noblock_teu_stream_corrector_to_iretire_pipe_write_req  : in std_logic_vector(0  downto 0);
      noblock_teu_stream_corrector_to_iretire_pipe_write_ack  : out std_logic_vector(0  downto 0);
      teu_fpunit_to_iretire_pipe_write_data : in std_logic_vector(50 downto 0);
      teu_fpunit_to_iretire_pipe_write_req  : in std_logic_vector(0  downto 0);
      teu_fpunit_to_iretire_pipe_write_ack  : out std_logic_vector(0  downto 0);
      teu_iunit_to_iretire_pipe_write_data : in std_logic_vector(95 downto 0);
      teu_iunit_to_iretire_pipe_write_req  : in std_logic_vector(0  downto 0);
      teu_iunit_to_iretire_pipe_write_ack  : out std_logic_vector(0  downto 0);
      teu_loadstore_to_iretire_pipe_write_data : in std_logic_vector(53 downto 0);
      teu_loadstore_to_iretire_pipe_write_req  : in std_logic_vector(0  downto 0);
      teu_loadstore_to_iretire_pipe_write_ack  : out std_logic_vector(0  downto 0);
      AJIT_to_ENV_logger_pipe_read_data : out std_logic_vector(31 downto 0);
      AJIT_to_ENV_logger_pipe_read_req  : in std_logic_vector(0  downto 0);
      AJIT_to_ENV_logger_pipe_read_ack  : out std_logic_vector(0  downto 0);
      CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_read_data : out std_logic_vector(9 downto 0);
      CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_read_req  : in std_logic_vector(0  downto 0);
      CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_read_ack  : out std_logic_vector(0  downto 0);
      teu_iretire_to_idispatch_pipe_read_data : out std_logic_vector(0 downto 0);
      teu_iretire_to_idispatch_pipe_read_req  : in std_logic_vector(0  downto 0);
      teu_iretire_to_idispatch_pipe_read_ack  : out std_logic_vector(0  downto 0);
      teu_to_ccu_pipe_read_data : out std_logic_vector(225 downto 0);
      teu_to_ccu_pipe_read_req  : in std_logic_vector(0  downto 0);
      teu_to_ccu_pipe_read_ack  : out std_logic_vector(0  downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for ret_inst :  iretire -- 
    use entity teu_iretire.iretire; -- 
  --<<<<<
  component stream_corrector is -- 
    port( -- 
      ccu_to_teu_debug_command_pipe_write_data : in std_logic_vector(7 downto 0);
      ccu_to_teu_debug_command_pipe_write_req  : in std_logic_vector(0  downto 0);
      ccu_to_teu_debug_command_pipe_write_ack  : out std_logic_vector(0  downto 0);
      teu_fpunit_cc_to_stream_corrector_pipe_write_data : in std_logic_vector(14 downto 0);
      teu_fpunit_cc_to_stream_corrector_pipe_write_req  : in std_logic_vector(0  downto 0);
      teu_fpunit_cc_to_stream_corrector_pipe_write_ack  : out std_logic_vector(0  downto 0);
      teu_idispatch_to_stream_corrector_pipe_write_data : in std_logic_vector(204 downto 0);
      teu_idispatch_to_stream_corrector_pipe_write_req  : in std_logic_vector(0  downto 0);
      teu_idispatch_to_stream_corrector_pipe_write_ack  : out std_logic_vector(0  downto 0);
      teu_iunit_cc_to_stream_corrector_pipe_write_data : in std_logic_vector(16 downto 0);
      teu_iunit_cc_to_stream_corrector_pipe_write_req  : in std_logic_vector(0  downto 0);
      teu_iunit_cc_to_stream_corrector_pipe_write_ack  : out std_logic_vector(0  downto 0);
      teu_iunit_rs1_to_stream_corrector_pipe_write_data : in std_logic_vector(31 downto 0);
      teu_iunit_rs1_to_stream_corrector_pipe_write_req  : in std_logic_vector(0  downto 0);
      teu_iunit_rs1_to_stream_corrector_pipe_write_ack  : out std_logic_vector(0  downto 0);
      teu_iunit_to_stream_corrector_pipe_write_data : in std_logic_vector(89 downto 0);
      teu_iunit_to_stream_corrector_pipe_write_req  : in std_logic_vector(0  downto 0);
      teu_iunit_to_stream_corrector_pipe_write_ack  : out std_logic_vector(0  downto 0);
      debug_bp_0 : out std_logic_vector(31 downto 0);
      debug_bp_1 : out std_logic_vector(31 downto 0);
      debug_bp_2 : out std_logic_vector(31 downto 0);
      debug_bp_3 : out std_logic_vector(31 downto 0);
      debug_dbg_interrupt : out std_logic_vector(0 downto 0);
      debug_wp_0 : out std_logic_vector(31 downto 0);
      debug_wp_1 : out std_logic_vector(31 downto 0);
      debug_wp_2 : out std_logic_vector(31 downto 0);
      debug_wp_3 : out std_logic_vector(31 downto 0);
      noblock_teu_ifetch_branch_predictor_update_pipe_read_data : out std_logic_vector(62 downto 0);
      noblock_teu_ifetch_branch_predictor_update_pipe_read_req  : in std_logic_vector(0  downto 0);
      noblock_teu_ifetch_branch_predictor_update_pipe_read_ack  : out std_logic_vector(0  downto 0);
      noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_data : out std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_req  : in std_logic_vector(0  downto 0);
      noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_ack  : out std_logic_vector(0  downto 0);
      noblock_teu_stream_corrector_to_idispatch_pipe_read_data : out std_logic_vector(147 downto 0);
      noblock_teu_stream_corrector_to_idispatch_pipe_read_req  : in std_logic_vector(0  downto 0);
      noblock_teu_stream_corrector_to_idispatch_pipe_read_ack  : out std_logic_vector(0  downto 0);
      noblock_teu_stream_corrector_to_iretire_pipe_read_data : out std_logic_vector(153 downto 0);
      noblock_teu_stream_corrector_to_iretire_pipe_read_req  : in std_logic_vector(0  downto 0);
      noblock_teu_stream_corrector_to_iretire_pipe_read_ack  : out std_logic_vector(0  downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_data : out std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_req  : in std_logic_vector(0  downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_ack  : out std_logic_vector(0  downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_data : out std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_req  : in std_logic_vector(0  downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_ack  : out std_logic_vector(0  downto 0);
      teu_debug_to_ccu_response_pipe_read_data : out std_logic_vector(0 downto 0);
      teu_debug_to_ccu_response_pipe_read_req  : in std_logic_vector(0  downto 0);
      teu_debug_to_ccu_response_pipe_read_ack  : out std_logic_vector(0  downto 0);
      teu_ras_access_pipe_pipe_read_data : out std_logic_vector(32 downto 0);
      teu_ras_access_pipe_pipe_read_req  : in std_logic_vector(0  downto 0);
      teu_ras_access_pipe_pipe_read_ack  : out std_logic_vector(0  downto 0);
      teu_stream_corrector_annul_status : out std_logic_vector(15 downto 0);
      teu_stream_corrector_to_fpunit_pipe_read_data : out std_logic_vector(17 downto 0);
      teu_stream_corrector_to_fpunit_pipe_read_req  : in std_logic_vector(0  downto 0);
      teu_stream_corrector_to_fpunit_pipe_read_ack  : out std_logic_vector(0  downto 0);
      teu_stream_corrector_to_iunit_pipe_read_data : out std_logic_vector(17 downto 0);
      teu_stream_corrector_to_iunit_pipe_read_req  : in std_logic_vector(0  downto 0);
      teu_stream_corrector_to_iunit_pipe_read_ack  : out std_logic_vector(0  downto 0);
      teu_stream_corrector_to_loadstore_pipe_read_data : out std_logic_vector(18 downto 0);
      teu_stream_corrector_to_loadstore_pipe_read_req  : in std_logic_vector(0  downto 0);
      teu_stream_corrector_to_loadstore_pipe_read_ack  : out std_logic_vector(0  downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for sc_inst :  stream_corrector -- 
    use entity teu_stream_corrector.stream_corrector; -- 
  --<<<<<
  -- 
begin -- 
  hsys_tie_low  <= '0';
  hsys_tie_high <= '1';
  decode_dispatch_inst: idecode_idispatch
  port map ( --
    debug_bp_0 => debug_bp_0,
    debug_bp_1 => debug_bp_1,
    debug_bp_2 => debug_bp_2,
    debug_bp_3 => debug_bp_3,
    debug_dbg_interrupt => debug_dbg_interrupt,
    noblock_teu_idispatch_to_ifetch_pipe_read_data => noblock_teu_idispatch_to_ifetch_pipe_write_data,
    noblock_teu_idispatch_to_ifetch_pipe_read_req => noblock_teu_idispatch_to_ifetch_pipe_write_ack,
    noblock_teu_idispatch_to_ifetch_pipe_read_ack => noblock_teu_idispatch_to_ifetch_pipe_write_req,
    noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_data => noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_data,
    noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_req => noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_ack,
    noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_ack => noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_req,
    noblock_teu_idispatch_to_iunit_writeback_pipe_read_data => noblock_teu_idispatch_to_iunit_writeback_pipe_write_data,
    noblock_teu_idispatch_to_iunit_writeback_pipe_read_req => noblock_teu_idispatch_to_iunit_writeback_pipe_write_ack,
    noblock_teu_idispatch_to_iunit_writeback_pipe_read_ack => noblock_teu_idispatch_to_iunit_writeback_pipe_write_req,
    noblock_teu_idispatch_to_loadstore_pipe_read_data => noblock_teu_idispatch_to_loadstore_pipe_write_data,
    noblock_teu_idispatch_to_loadstore_pipe_read_req => noblock_teu_idispatch_to_loadstore_pipe_write_ack,
    noblock_teu_idispatch_to_loadstore_pipe_read_ack => noblock_teu_idispatch_to_loadstore_pipe_write_req,
    noblock_teu_stream_corrector_to_idispatch_pipe_write_data => noblock_teu_stream_corrector_to_idispatch_pipe_read_data,
    noblock_teu_stream_corrector_to_idispatch_pipe_write_req => noblock_teu_stream_corrector_to_idispatch_pipe_read_ack,
    noblock_teu_stream_corrector_to_idispatch_pipe_write_ack => noblock_teu_stream_corrector_to_idispatch_pipe_read_req,
    teu_idispatch_to_iunit_exec_pipe_read_data => teu_idispatch_to_iunit_exec_pipe_write_data,
    teu_idispatch_to_iunit_exec_pipe_read_req => teu_idispatch_to_iunit_exec_pipe_write_ack,
    teu_idispatch_to_iunit_exec_pipe_read_ack => teu_idispatch_to_iunit_exec_pipe_write_req,
    teu_idispatch_to_stream_corrector_pipe_read_data => teu_idispatch_to_stream_corrector_pipe_write_data,
    teu_idispatch_to_stream_corrector_pipe_read_req => teu_idispatch_to_stream_corrector_pipe_write_ack,
    teu_idispatch_to_stream_corrector_pipe_read_ack => teu_idispatch_to_stream_corrector_pipe_write_req,
    teu_ifetch_to_idecode_extended_pipe_write_data => teu_ifetch_to_idecode_extended_pipe_read_data,
    teu_ifetch_to_idecode_extended_pipe_write_req => teu_ifetch_to_idecode_extended_pipe_read_ack,
    teu_ifetch_to_idecode_extended_pipe_write_ack => teu_ifetch_to_idecode_extended_pipe_read_req,
    teu_iretire_to_idispatch_pipe_write_data => teu_iretire_to_idispatch_pipe_read_data,
    teu_iretire_to_idispatch_pipe_write_req => teu_iretire_to_idispatch_pipe_read_ack,
    teu_iretire_to_idispatch_pipe_write_ack => teu_iretire_to_idispatch_pipe_read_req,
    teu_stream_corrector_annul_status => teu_stream_corrector_annul_status,
    clk => clk,  reset => reset
    ); -- 
  fetch_inst: ifetch
  port map ( --
    ENV_to_CPU_irl => ENV_to_CPU_irl,
    ICACHE_to_CPU_response_pipe_write_data => ICACHE_to_CPU_response_pipe_write_data,
    ICACHE_to_CPU_response_pipe_write_req => ICACHE_to_CPU_response_pipe_write_req,
    ICACHE_to_CPU_response_pipe_write_ack => ICACHE_to_CPU_response_pipe_write_ack,
    NOBLOCK_CPU_to_ICACHE_command_pipe_read_data => NOBLOCK_CPU_to_ICACHE_command_pipe_read_data,
    NOBLOCK_CPU_to_ICACHE_command_pipe_read_req => NOBLOCK_CPU_to_ICACHE_command_pipe_read_req,
    NOBLOCK_CPU_to_ICACHE_command_pipe_read_ack => NOBLOCK_CPU_to_ICACHE_command_pipe_read_ack,
    ccu_to_teu_pipe_write_data => ccu_to_teu_pipe_write_data,
    ccu_to_teu_pipe_write_req => ccu_to_teu_pipe_write_req,
    ccu_to_teu_pipe_write_ack => ccu_to_teu_pipe_write_ack,
    noblock_teu_idispatch_to_ifetch_pipe_write_data => noblock_teu_idispatch_to_ifetch_pipe_read_data,
    noblock_teu_idispatch_to_ifetch_pipe_write_req => noblock_teu_idispatch_to_ifetch_pipe_read_ack,
    noblock_teu_idispatch_to_ifetch_pipe_write_ack => noblock_teu_idispatch_to_ifetch_pipe_read_req,
    noblock_teu_ifetch_branch_predictor_update_pipe_write_data => noblock_teu_ifetch_branch_predictor_update_pipe_read_data,
    noblock_teu_ifetch_branch_predictor_update_pipe_write_req => noblock_teu_ifetch_branch_predictor_update_pipe_read_ack,
    noblock_teu_ifetch_branch_predictor_update_pipe_write_ack => noblock_teu_ifetch_branch_predictor_update_pipe_read_req,
    teu_ifetch_to_idecode_extended_pipe_read_data => teu_ifetch_to_idecode_extended_pipe_write_data,
    teu_ifetch_to_idecode_extended_pipe_read_req => teu_ifetch_to_idecode_extended_pipe_write_ack,
    teu_ifetch_to_idecode_extended_pipe_read_ack => teu_ifetch_to_idecode_extended_pipe_write_req,
    teu_ras_access_pipe_pipe_write_data => teu_ras_access_pipe_pipe_read_data,
    teu_ras_access_pipe_pipe_write_req => teu_ras_access_pipe_pipe_read_ack,
    teu_ras_access_pipe_pipe_write_ack => teu_ras_access_pipe_pipe_read_req,
    clk => clk,  reset => reset
    ); -- 
  fpu_inst: dummy_fpunit
  port map ( --
    NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_data => NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_data,
    NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_req => NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_req,
    NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_ack => NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_ack,
    ccu_to_teu_fpunit_register_access_command_pipe_write_data => ccu_to_teu_fpunit_register_access_command_pipe_write_data,
    ccu_to_teu_fpunit_register_access_command_pipe_write_req => ccu_to_teu_fpunit_register_access_command_pipe_write_req,
    ccu_to_teu_fpunit_register_access_command_pipe_write_ack => ccu_to_teu_fpunit_register_access_command_pipe_write_ack,
    noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_data => noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_data,
    noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_req => noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_ack,
    noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_ack => noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_req,
    noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_data => noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_data,
    noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_req => noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_ack,
    noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_ack => noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_req,
    teu_fpunit_cc_to_stream_corrector_pipe_read_data => teu_fpunit_cc_to_stream_corrector_pipe_write_data,
    teu_fpunit_cc_to_stream_corrector_pipe_read_req => teu_fpunit_cc_to_stream_corrector_pipe_write_ack,
    teu_fpunit_cc_to_stream_corrector_pipe_read_ack => teu_fpunit_cc_to_stream_corrector_pipe_write_req,
    teu_fpunit_register_file_to_loadstore_pipe_read_data => teu_fpunit_register_file_to_loadstore_pipe_write_data,
    teu_fpunit_register_file_to_loadstore_pipe_read_req => teu_fpunit_register_file_to_loadstore_pipe_write_ack,
    teu_fpunit_register_file_to_loadstore_pipe_read_ack => teu_fpunit_register_file_to_loadstore_pipe_write_req,
    teu_fpunit_to_iretire_pipe_read_data => teu_fpunit_to_iretire_pipe_write_data,
    teu_fpunit_to_iretire_pipe_read_req => teu_fpunit_to_iretire_pipe_write_ack,
    teu_fpunit_to_iretire_pipe_read_ack => teu_fpunit_to_iretire_pipe_write_req,
    teu_fpunit_trap_to_iunit_pipe_read_data => teu_fpunit_trap_to_iunit_pipe_write_data,
    teu_fpunit_trap_to_iunit_pipe_read_req => teu_fpunit_trap_to_iunit_pipe_write_ack,
    teu_fpunit_trap_to_iunit_pipe_read_ack => teu_fpunit_trap_to_iunit_pipe_write_req,
    teu_fpunit_trap_to_loadstore_pipe_read_data => teu_fpunit_trap_to_loadstore_pipe_write_data,
    teu_fpunit_trap_to_loadstore_pipe_read_req => teu_fpunit_trap_to_loadstore_pipe_write_ack,
    teu_fpunit_trap_to_loadstore_pipe_read_ack => teu_fpunit_trap_to_loadstore_pipe_write_req,
    teu_iunit_trap_to_fpunit_pipe_write_data => teu_iunit_trap_to_fpunit_pipe_read_data,
    teu_iunit_trap_to_fpunit_pipe_write_req => teu_iunit_trap_to_fpunit_pipe_read_ack,
    teu_iunit_trap_to_fpunit_pipe_write_ack => teu_iunit_trap_to_fpunit_pipe_read_req,
    teu_loadstore_to_fpunit_pipe_write_data => teu_loadstore_to_fpunit_pipe_read_data,
    teu_loadstore_to_fpunit_pipe_write_req => teu_loadstore_to_fpunit_pipe_read_ack,
    teu_loadstore_to_fpunit_pipe_write_ack => teu_loadstore_to_fpunit_pipe_read_req,
    teu_stream_corrector_to_fpunit_pipe_write_data => teu_stream_corrector_to_fpunit_pipe_read_data,
    teu_stream_corrector_to_fpunit_pipe_write_req => teu_stream_corrector_to_fpunit_pipe_read_ack,
    teu_stream_corrector_to_fpunit_pipe_write_ack => teu_stream_corrector_to_fpunit_pipe_read_req,
    teu_to_ccu_fpunit_register_access_response_pipe_read_data => teu_to_ccu_fpunit_register_access_response_pipe_read_data,
    teu_to_ccu_fpunit_register_access_response_pipe_read_req => teu_to_ccu_fpunit_register_access_response_pipe_read_req,
    teu_to_ccu_fpunit_register_access_response_pipe_read_ack => teu_to_ccu_fpunit_register_access_response_pipe_read_ack,
    clk => clk,  reset => reset
    ); -- 
  iu_inst: iunit
  port map ( --
    CORE_ID => CORE_ID,
    NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_data => NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_data,
    NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_req => NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_req,
    NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_ack => NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_ack,
    THREAD_ID => THREAD_ID,
    ccu_to_teu_iunit_register_access_command_pipe_write_data => ccu_to_teu_iunit_register_access_command_pipe_write_data,
    ccu_to_teu_iunit_register_access_command_pipe_write_req => ccu_to_teu_iunit_register_access_command_pipe_write_req,
    ccu_to_teu_iunit_register_access_command_pipe_write_ack => ccu_to_teu_iunit_register_access_command_pipe_write_ack,
    noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_data => noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_data,
    noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_req => noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_ack,
    noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_ack => noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_req,
    noblock_teu_idispatch_to_iunit_writeback_pipe_write_data => noblock_teu_idispatch_to_iunit_writeback_pipe_read_data,
    noblock_teu_idispatch_to_iunit_writeback_pipe_write_req => noblock_teu_idispatch_to_iunit_writeback_pipe_read_ack,
    noblock_teu_idispatch_to_iunit_writeback_pipe_write_ack => noblock_teu_idispatch_to_iunit_writeback_pipe_read_req,
    noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_data => noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_data,
    noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_req => noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_ack,
    noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_ack => noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_req,
    noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_data => noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_data,
    noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_req => noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_ack,
    noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_ack => noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_req,
    noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_data => noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_data,
    noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_req => noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_ack,
    noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_ack => noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_req,
    teu_fpunit_trap_to_iunit_pipe_write_data => teu_fpunit_trap_to_iunit_pipe_read_data,
    teu_fpunit_trap_to_iunit_pipe_write_req => teu_fpunit_trap_to_iunit_pipe_read_ack,
    teu_fpunit_trap_to_iunit_pipe_write_ack => teu_fpunit_trap_to_iunit_pipe_read_req,
    teu_idispatch_to_iunit_exec_pipe_write_data => teu_idispatch_to_iunit_exec_pipe_read_data,
    teu_idispatch_to_iunit_exec_pipe_write_req => teu_idispatch_to_iunit_exec_pipe_read_ack,
    teu_idispatch_to_iunit_exec_pipe_write_ack => teu_idispatch_to_iunit_exec_pipe_read_req,
    teu_iunit_cc_to_stream_corrector_pipe_read_data => teu_iunit_cc_to_stream_corrector_pipe_write_data,
    teu_iunit_cc_to_stream_corrector_pipe_read_req => teu_iunit_cc_to_stream_corrector_pipe_write_ack,
    teu_iunit_cc_to_stream_corrector_pipe_read_ack => teu_iunit_cc_to_stream_corrector_pipe_write_req,
    teu_iunit_register_file_to_loadstore_pipe_read_data => teu_iunit_register_file_to_loadstore_pipe_write_data,
    teu_iunit_register_file_to_loadstore_pipe_read_req => teu_iunit_register_file_to_loadstore_pipe_write_ack,
    teu_iunit_register_file_to_loadstore_pipe_read_ack => teu_iunit_register_file_to_loadstore_pipe_write_req,
    teu_iunit_rs1_to_stream_corrector_pipe_read_data => teu_iunit_rs1_to_stream_corrector_pipe_write_data,
    teu_iunit_rs1_to_stream_corrector_pipe_read_req => teu_iunit_rs1_to_stream_corrector_pipe_write_ack,
    teu_iunit_rs1_to_stream_corrector_pipe_read_ack => teu_iunit_rs1_to_stream_corrector_pipe_write_req,
    teu_iunit_to_iretire_pipe_read_data => teu_iunit_to_iretire_pipe_write_data,
    teu_iunit_to_iretire_pipe_read_req => teu_iunit_to_iretire_pipe_write_ack,
    teu_iunit_to_iretire_pipe_read_ack => teu_iunit_to_iretire_pipe_write_req,
    teu_iunit_to_stream_corrector_pipe_read_data => teu_iunit_to_stream_corrector_pipe_write_data,
    teu_iunit_to_stream_corrector_pipe_read_req => teu_iunit_to_stream_corrector_pipe_write_ack,
    teu_iunit_to_stream_corrector_pipe_read_ack => teu_iunit_to_stream_corrector_pipe_write_req,
    teu_iunit_trap_to_fpunit_pipe_read_data => teu_iunit_trap_to_fpunit_pipe_write_data,
    teu_iunit_trap_to_fpunit_pipe_read_req => teu_iunit_trap_to_fpunit_pipe_write_ack,
    teu_iunit_trap_to_fpunit_pipe_read_ack => teu_iunit_trap_to_fpunit_pipe_write_req,
    teu_iunit_trap_to_loadstore_pipe_read_data => teu_iunit_trap_to_loadstore_pipe_write_data,
    teu_iunit_trap_to_loadstore_pipe_read_req => teu_iunit_trap_to_loadstore_pipe_write_ack,
    teu_iunit_trap_to_loadstore_pipe_read_ack => teu_iunit_trap_to_loadstore_pipe_write_req,
    teu_loadstore_to_iunit_pipe_write_data => teu_loadstore_to_iunit_pipe_read_data,
    teu_loadstore_to_iunit_pipe_write_req => teu_loadstore_to_iunit_pipe_read_ack,
    teu_loadstore_to_iunit_pipe_write_ack => teu_loadstore_to_iunit_pipe_read_req,
    teu_stream_corrector_to_iunit_pipe_write_data => teu_stream_corrector_to_iunit_pipe_read_data,
    teu_stream_corrector_to_iunit_pipe_write_req => teu_stream_corrector_to_iunit_pipe_read_ack,
    teu_stream_corrector_to_iunit_pipe_write_ack => teu_stream_corrector_to_iunit_pipe_read_req,
    teu_to_ccu_iunit_register_access_response_pipe_read_data => teu_to_ccu_iunit_register_access_response_pipe_read_data,
    teu_to_ccu_iunit_register_access_response_pipe_read_req => teu_to_ccu_iunit_register_access_response_pipe_read_req,
    teu_to_ccu_iunit_register_access_response_pipe_read_ack => teu_to_ccu_iunit_register_access_response_pipe_read_ack,
    clk => clk,  reset => reset
    ); -- 
  ls_inst: loadstore
  port map ( --
    BROADCAST_INIT_PC => BROADCAST_INIT_PC,
    DCACHE_to_CPU_response_pipe_write_data => DCACHE_to_CPU_response_pipe_write_data,
    DCACHE_to_CPU_response_pipe_write_req => DCACHE_to_CPU_response_pipe_write_req,
    DCACHE_to_CPU_response_pipe_write_ack => DCACHE_to_CPU_response_pipe_write_ack,
    DCACHE_to_CPU_slow_response_pipe_write_data => DCACHE_to_CPU_slow_response_pipe_write_data,
    DCACHE_to_CPU_slow_response_pipe_write_req => DCACHE_to_CPU_slow_response_pipe_write_req,
    DCACHE_to_CPU_slow_response_pipe_write_ack => DCACHE_to_CPU_slow_response_pipe_write_ack,
    NOBLOCK_CPU_to_DCACHE_command_pipe_read_data => NOBLOCK_CPU_to_DCACHE_command_pipe_read_data,
    NOBLOCK_CPU_to_DCACHE_command_pipe_read_req => NOBLOCK_CPU_to_DCACHE_command_pipe_read_req,
    NOBLOCK_CPU_to_DCACHE_command_pipe_read_ack => NOBLOCK_CPU_to_DCACHE_command_pipe_read_ack,
    NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_data => NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_data,
    NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_req => NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_req,
    NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_ack => NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_ack,
    THREAD_ID => THREAD_ID,
    ccu_to_teu_load_store_command_pipe_write_data => ccu_to_teu_load_store_command_pipe_write_data,
    ccu_to_teu_load_store_command_pipe_write_req => ccu_to_teu_load_store_command_pipe_write_req,
    ccu_to_teu_load_store_command_pipe_write_ack => ccu_to_teu_load_store_command_pipe_write_ack,
    debug_wp_0 => debug_wp_0,
    debug_wp_1 => debug_wp_1,
    debug_wp_2 => debug_wp_2,
    debug_wp_3 => debug_wp_3,
    noblock_teu_idispatch_to_loadstore_pipe_write_data => noblock_teu_idispatch_to_loadstore_pipe_read_data,
    noblock_teu_idispatch_to_loadstore_pipe_write_req => noblock_teu_idispatch_to_loadstore_pipe_read_ack,
    noblock_teu_idispatch_to_loadstore_pipe_write_ack => noblock_teu_idispatch_to_loadstore_pipe_read_req,
    noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_data => noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_data,
    noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_req => noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_ack,
    noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_ack => noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_req,
    noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_data => noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_data,
    noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_req => noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_ack,
    noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_ack => noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_req,
    teu_fpunit_register_file_to_loadstore_pipe_write_data => teu_fpunit_register_file_to_loadstore_pipe_read_data,
    teu_fpunit_register_file_to_loadstore_pipe_write_req => teu_fpunit_register_file_to_loadstore_pipe_read_ack,
    teu_fpunit_register_file_to_loadstore_pipe_write_ack => teu_fpunit_register_file_to_loadstore_pipe_read_req,
    teu_fpunit_trap_to_loadstore_pipe_write_data => teu_fpunit_trap_to_loadstore_pipe_read_data,
    teu_fpunit_trap_to_loadstore_pipe_write_req => teu_fpunit_trap_to_loadstore_pipe_read_ack,
    teu_fpunit_trap_to_loadstore_pipe_write_ack => teu_fpunit_trap_to_loadstore_pipe_read_req,
    teu_iunit_register_file_to_loadstore_pipe_write_data => teu_iunit_register_file_to_loadstore_pipe_read_data,
    teu_iunit_register_file_to_loadstore_pipe_write_req => teu_iunit_register_file_to_loadstore_pipe_read_ack,
    teu_iunit_register_file_to_loadstore_pipe_write_ack => teu_iunit_register_file_to_loadstore_pipe_read_req,
    teu_iunit_trap_to_loadstore_pipe_write_data => teu_iunit_trap_to_loadstore_pipe_read_data,
    teu_iunit_trap_to_loadstore_pipe_write_req => teu_iunit_trap_to_loadstore_pipe_read_ack,
    teu_iunit_trap_to_loadstore_pipe_write_ack => teu_iunit_trap_to_loadstore_pipe_read_req,
    teu_loadstore_to_fpunit_pipe_read_data => teu_loadstore_to_fpunit_pipe_write_data,
    teu_loadstore_to_fpunit_pipe_read_req => teu_loadstore_to_fpunit_pipe_write_ack,
    teu_loadstore_to_fpunit_pipe_read_ack => teu_loadstore_to_fpunit_pipe_write_req,
    teu_loadstore_to_iretire_pipe_read_data => teu_loadstore_to_iretire_pipe_write_data,
    teu_loadstore_to_iretire_pipe_read_req => teu_loadstore_to_iretire_pipe_write_ack,
    teu_loadstore_to_iretire_pipe_read_ack => teu_loadstore_to_iretire_pipe_write_req,
    teu_loadstore_to_iunit_pipe_read_data => teu_loadstore_to_iunit_pipe_write_data,
    teu_loadstore_to_iunit_pipe_read_req => teu_loadstore_to_iunit_pipe_write_ack,
    teu_loadstore_to_iunit_pipe_read_ack => teu_loadstore_to_iunit_pipe_write_req,
    teu_stream_corrector_to_loadstore_pipe_write_data => teu_stream_corrector_to_loadstore_pipe_read_data,
    teu_stream_corrector_to_loadstore_pipe_write_req => teu_stream_corrector_to_loadstore_pipe_read_ack,
    teu_stream_corrector_to_loadstore_pipe_write_ack => teu_stream_corrector_to_loadstore_pipe_read_req,
    teu_to_ccu_load_store_response_pipe_read_data => teu_to_ccu_load_store_response_pipe_read_data,
    teu_to_ccu_load_store_response_pipe_read_req => teu_to_ccu_load_store_response_pipe_read_req,
    teu_to_ccu_load_store_response_pipe_read_ack => teu_to_ccu_load_store_response_pipe_read_ack,
    clk => clk,  reset => reset
    ); -- 
  ret_inst: iretire
  port map ( --
    AJIT_to_ENV_logger_pipe_read_data => AJIT_to_ENV_logger_pipe_read_data,
    AJIT_to_ENV_logger_pipe_read_req => AJIT_to_ENV_logger_pipe_read_req,
    AJIT_to_ENV_logger_pipe_read_ack => AJIT_to_ENV_logger_pipe_read_ack,
    CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_read_data => CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_read_data,
    CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_read_req => CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_read_req,
    CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_read_ack => CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_read_ack,
    noblock_teu_stream_corrector_to_iretire_pipe_write_data => noblock_teu_stream_corrector_to_iretire_pipe_read_data,
    noblock_teu_stream_corrector_to_iretire_pipe_write_req => noblock_teu_stream_corrector_to_iretire_pipe_read_ack,
    noblock_teu_stream_corrector_to_iretire_pipe_write_ack => noblock_teu_stream_corrector_to_iretire_pipe_read_req,
    teu_fpunit_to_iretire_pipe_write_data => teu_fpunit_to_iretire_pipe_read_data,
    teu_fpunit_to_iretire_pipe_write_req => teu_fpunit_to_iretire_pipe_read_ack,
    teu_fpunit_to_iretire_pipe_write_ack => teu_fpunit_to_iretire_pipe_read_req,
    teu_iretire_to_idispatch_pipe_read_data => teu_iretire_to_idispatch_pipe_write_data,
    teu_iretire_to_idispatch_pipe_read_req => teu_iretire_to_idispatch_pipe_write_ack,
    teu_iretire_to_idispatch_pipe_read_ack => teu_iretire_to_idispatch_pipe_write_req,
    teu_iunit_to_iretire_pipe_write_data => teu_iunit_to_iretire_pipe_read_data,
    teu_iunit_to_iretire_pipe_write_req => teu_iunit_to_iretire_pipe_read_ack,
    teu_iunit_to_iretire_pipe_write_ack => teu_iunit_to_iretire_pipe_read_req,
    teu_loadstore_to_iretire_pipe_write_data => teu_loadstore_to_iretire_pipe_read_data,
    teu_loadstore_to_iretire_pipe_write_req => teu_loadstore_to_iretire_pipe_read_ack,
    teu_loadstore_to_iretire_pipe_write_ack => teu_loadstore_to_iretire_pipe_read_req,
    teu_to_ccu_pipe_read_data => teu_to_ccu_pipe_read_data,
    teu_to_ccu_pipe_read_req => teu_to_ccu_pipe_read_req,
    teu_to_ccu_pipe_read_ack => teu_to_ccu_pipe_read_ack,
    clk => clk,  reset => reset
    ); -- 
  sc_inst: stream_corrector
  port map ( --
    ccu_to_teu_debug_command_pipe_write_data => ccu_to_teu_debug_command_pipe_write_data,
    ccu_to_teu_debug_command_pipe_write_req => ccu_to_teu_debug_command_pipe_write_req,
    ccu_to_teu_debug_command_pipe_write_ack => ccu_to_teu_debug_command_pipe_write_ack,
    debug_bp_0 => debug_bp_0,
    debug_bp_1 => debug_bp_1,
    debug_bp_2 => debug_bp_2,
    debug_bp_3 => debug_bp_3,
    debug_dbg_interrupt => debug_dbg_interrupt,
    debug_wp_0 => debug_wp_0,
    debug_wp_1 => debug_wp_1,
    debug_wp_2 => debug_wp_2,
    debug_wp_3 => debug_wp_3,
    noblock_teu_ifetch_branch_predictor_update_pipe_read_data => noblock_teu_ifetch_branch_predictor_update_pipe_write_data,
    noblock_teu_ifetch_branch_predictor_update_pipe_read_req => noblock_teu_ifetch_branch_predictor_update_pipe_write_ack,
    noblock_teu_ifetch_branch_predictor_update_pipe_read_ack => noblock_teu_ifetch_branch_predictor_update_pipe_write_req,
    noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_data => noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_data,
    noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_req => noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_ack,
    noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_ack => noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_req,
    noblock_teu_stream_corrector_to_idispatch_pipe_read_data => noblock_teu_stream_corrector_to_idispatch_pipe_write_data,
    noblock_teu_stream_corrector_to_idispatch_pipe_read_req => noblock_teu_stream_corrector_to_idispatch_pipe_write_ack,
    noblock_teu_stream_corrector_to_idispatch_pipe_read_ack => noblock_teu_stream_corrector_to_idispatch_pipe_write_req,
    noblock_teu_stream_corrector_to_iretire_pipe_read_data => noblock_teu_stream_corrector_to_iretire_pipe_write_data,
    noblock_teu_stream_corrector_to_iretire_pipe_read_req => noblock_teu_stream_corrector_to_iretire_pipe_write_ack,
    noblock_teu_stream_corrector_to_iretire_pipe_read_ack => noblock_teu_stream_corrector_to_iretire_pipe_write_req,
    noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_data => noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_data,
    noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_req => noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_ack,
    noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_ack => noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_req,
    noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_data => noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_data,
    noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_req => noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_ack,
    noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_ack => noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_req,
    teu_debug_to_ccu_response_pipe_read_data => teu_debug_to_ccu_response_pipe_read_data,
    teu_debug_to_ccu_response_pipe_read_req => teu_debug_to_ccu_response_pipe_read_req,
    teu_debug_to_ccu_response_pipe_read_ack => teu_debug_to_ccu_response_pipe_read_ack,
    teu_fpunit_cc_to_stream_corrector_pipe_write_data => teu_fpunit_cc_to_stream_corrector_pipe_read_data,
    teu_fpunit_cc_to_stream_corrector_pipe_write_req => teu_fpunit_cc_to_stream_corrector_pipe_read_ack,
    teu_fpunit_cc_to_stream_corrector_pipe_write_ack => teu_fpunit_cc_to_stream_corrector_pipe_read_req,
    teu_idispatch_to_stream_corrector_pipe_write_data => teu_idispatch_to_stream_corrector_pipe_read_data,
    teu_idispatch_to_stream_corrector_pipe_write_req => teu_idispatch_to_stream_corrector_pipe_read_ack,
    teu_idispatch_to_stream_corrector_pipe_write_ack => teu_idispatch_to_stream_corrector_pipe_read_req,
    teu_iunit_cc_to_stream_corrector_pipe_write_data => teu_iunit_cc_to_stream_corrector_pipe_read_data,
    teu_iunit_cc_to_stream_corrector_pipe_write_req => teu_iunit_cc_to_stream_corrector_pipe_read_ack,
    teu_iunit_cc_to_stream_corrector_pipe_write_ack => teu_iunit_cc_to_stream_corrector_pipe_read_req,
    teu_iunit_rs1_to_stream_corrector_pipe_write_data => teu_iunit_rs1_to_stream_corrector_pipe_read_data,
    teu_iunit_rs1_to_stream_corrector_pipe_write_req => teu_iunit_rs1_to_stream_corrector_pipe_read_ack,
    teu_iunit_rs1_to_stream_corrector_pipe_write_ack => teu_iunit_rs1_to_stream_corrector_pipe_read_req,
    teu_iunit_to_stream_corrector_pipe_write_data => teu_iunit_to_stream_corrector_pipe_read_data,
    teu_iunit_to_stream_corrector_pipe_write_req => teu_iunit_to_stream_corrector_pipe_read_ack,
    teu_iunit_to_stream_corrector_pipe_write_ack => teu_iunit_to_stream_corrector_pipe_read_req,
    teu_ras_access_pipe_pipe_read_data => teu_ras_access_pipe_pipe_write_data,
    teu_ras_access_pipe_pipe_read_req => teu_ras_access_pipe_pipe_write_ack,
    teu_ras_access_pipe_pipe_read_ack => teu_ras_access_pipe_pipe_write_req,
    teu_stream_corrector_annul_status => teu_stream_corrector_annul_status,
    teu_stream_corrector_to_fpunit_pipe_read_data => teu_stream_corrector_to_fpunit_pipe_write_data,
    teu_stream_corrector_to_fpunit_pipe_read_req => teu_stream_corrector_to_fpunit_pipe_write_ack,
    teu_stream_corrector_to_fpunit_pipe_read_ack => teu_stream_corrector_to_fpunit_pipe_write_req,
    teu_stream_corrector_to_iunit_pipe_read_data => teu_stream_corrector_to_iunit_pipe_write_data,
    teu_stream_corrector_to_iunit_pipe_read_req => teu_stream_corrector_to_iunit_pipe_write_ack,
    teu_stream_corrector_to_iunit_pipe_read_ack => teu_stream_corrector_to_iunit_pipe_write_req,
    teu_stream_corrector_to_loadstore_pipe_read_data => teu_stream_corrector_to_loadstore_pipe_write_data,
    teu_stream_corrector_to_loadstore_pipe_read_req => teu_stream_corrector_to_loadstore_pipe_write_ack,
    teu_stream_corrector_to_loadstore_pipe_read_ack => teu_stream_corrector_to_loadstore_pipe_write_req,
    clk => clk,  reset => reset
    ); -- 
  -- pipe noblock_teu_idispatch_to_ifetch depth set to 0 since it is a P2P pipe.
  -- this is marked as a non-blocking pipe... InputPorts should take care of it! 
  noblock_teu_idispatch_to_ifetch_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe noblock_teu_idispatch_to_ifetch",
      num_reads => 1,
      num_writes => 1,
      data_width => 148,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => true,
      depth => 0 --
    )
    port map( -- 
      read_req => noblock_teu_idispatch_to_ifetch_pipe_read_req,
      read_ack => noblock_teu_idispatch_to_ifetch_pipe_read_ack,
      read_data => noblock_teu_idispatch_to_ifetch_pipe_read_data,
      write_req => noblock_teu_idispatch_to_ifetch_pipe_write_req,
      write_ack => noblock_teu_idispatch_to_ifetch_pipe_write_ack,
      write_data => noblock_teu_idispatch_to_ifetch_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe noblock_teu_idispatch_to_iunit_register_file_read_access_command depth set to 0 since it is a P2P pipe.
  -- this is marked as a non-blocking pipe... InputPorts should take care of it! 
  noblock_teu_idispatch_to_iunit_register_file_read_access_command_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe noblock_teu_idispatch_to_iunit_register_file_read_access_command",
      num_reads => 1,
      num_writes => 1,
      data_width => 59,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => true,
      depth => 0 --
    )
    port map( -- 
      read_req => noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_req,
      read_ack => noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_ack,
      read_data => noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_data,
      write_req => noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_req,
      write_ack => noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_ack,
      write_data => noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- this is marked as a non-blocking pipe... InputPorts should take care of it! 
  noblock_teu_idispatch_to_iunit_writeback_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe noblock_teu_idispatch_to_iunit_writeback",
      num_reads => 1,
      num_writes => 1,
      data_width => 84,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 6 --
    )
    port map( -- 
      read_req => noblock_teu_idispatch_to_iunit_writeback_pipe_read_req,
      read_ack => noblock_teu_idispatch_to_iunit_writeback_pipe_read_ack,
      read_data => noblock_teu_idispatch_to_iunit_writeback_pipe_read_data,
      write_req => noblock_teu_idispatch_to_iunit_writeback_pipe_write_req,
      write_ack => noblock_teu_idispatch_to_iunit_writeback_pipe_write_ack,
      write_data => noblock_teu_idispatch_to_iunit_writeback_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe noblock_teu_idispatch_to_loadstore depth set to 0 since it is a P2P pipe.
  -- this is marked as a non-blocking pipe... InputPorts should take care of it! 
  noblock_teu_idispatch_to_loadstore_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe noblock_teu_idispatch_to_loadstore",
      num_reads => 1,
      num_writes => 1,
      data_width => 126,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => noblock_teu_idispatch_to_loadstore_pipe_read_req,
      read_ack => noblock_teu_idispatch_to_loadstore_pipe_read_ack,
      read_data => noblock_teu_idispatch_to_loadstore_pipe_read_data,
      write_req => noblock_teu_idispatch_to_loadstore_pipe_write_req,
      write_ack => noblock_teu_idispatch_to_loadstore_pipe_write_ack,
      write_data => noblock_teu_idispatch_to_loadstore_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe noblock_teu_ifetch_branch_predictor_update depth set to 0 since it is a P2P pipe.
  -- this is marked as a non-blocking pipe... InputPorts should take care of it! 
  noblock_teu_ifetch_branch_predictor_update_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe noblock_teu_ifetch_branch_predictor_update",
      num_reads => 1,
      num_writes => 1,
      data_width => 63,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => noblock_teu_ifetch_branch_predictor_update_pipe_read_req,
      read_ack => noblock_teu_ifetch_branch_predictor_update_pipe_read_ack,
      read_data => noblock_teu_ifetch_branch_predictor_update_pipe_read_data,
      write_req => noblock_teu_ifetch_branch_predictor_update_pipe_write_req,
      write_ack => noblock_teu_ifetch_branch_predictor_update_pipe_write_ack,
      write_data => noblock_teu_ifetch_branch_predictor_update_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe noblock_teu_loadstore_to_fpunit_regfile_credit_return depth set to 0 since it is a P2P pipe.
  -- this is marked as a non-blocking pipe... InputPorts should take care of it! 
  noblock_teu_loadstore_to_fpunit_regfile_credit_return_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe noblock_teu_loadstore_to_fpunit_regfile_credit_return",
      num_reads => 1,
      num_writes => 1,
      data_width => 1,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_req,
      read_ack => noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_ack,
      read_data => noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_data,
      write_req => noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_req,
      write_ack => noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_ack,
      write_data => noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe noblock_teu_loadstore_to_iunit_regfile_credit_return depth set to 0 since it is a P2P pipe.
  -- this is marked as a non-blocking pipe... InputPorts should take care of it! 
  noblock_teu_loadstore_to_iunit_regfile_credit_return_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe noblock_teu_loadstore_to_iunit_regfile_credit_return",
      num_reads => 1,
      num_writes => 1,
      data_width => 1,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_req,
      read_ack => noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_ack,
      read_data => noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_data,
      write_req => noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_req,
      write_ack => noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_ack,
      write_data => noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe noblock_teu_stream_corrector_to_fpunit_regfile_credit_return depth set to 0 since it is a P2P pipe.
  -- this is marked as a non-blocking pipe... InputPorts should take care of it! 
  noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe noblock_teu_stream_corrector_to_fpunit_regfile_credit_return",
      num_reads => 1,
      num_writes => 1,
      data_width => 1,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_req,
      read_ack => noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_ack,
      read_data => noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_data,
      write_req => noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_req,
      write_ack => noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_ack,
      write_data => noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe noblock_teu_stream_corrector_to_idispatch depth set to 0 since it is a P2P pipe.
  -- this is marked as a non-blocking pipe... InputPorts should take care of it! 
  noblock_teu_stream_corrector_to_idispatch_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe noblock_teu_stream_corrector_to_idispatch",
      num_reads => 1,
      num_writes => 1,
      data_width => 148,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => noblock_teu_stream_corrector_to_idispatch_pipe_read_req,
      read_ack => noblock_teu_stream_corrector_to_idispatch_pipe_read_ack,
      read_data => noblock_teu_stream_corrector_to_idispatch_pipe_read_data,
      write_req => noblock_teu_stream_corrector_to_idispatch_pipe_write_req,
      write_ack => noblock_teu_stream_corrector_to_idispatch_pipe_write_ack,
      write_data => noblock_teu_stream_corrector_to_idispatch_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- this is marked as a non-blocking pipe... InputPorts should take care of it! 
  noblock_teu_stream_corrector_to_iretire_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe noblock_teu_stream_corrector_to_iretire",
      num_reads => 1,
      num_writes => 1,
      data_width => 154,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 8 --
    )
    port map( -- 
      read_req => noblock_teu_stream_corrector_to_iretire_pipe_read_req,
      read_ack => noblock_teu_stream_corrector_to_iretire_pipe_read_ack,
      read_data => noblock_teu_stream_corrector_to_iretire_pipe_read_data,
      write_req => noblock_teu_stream_corrector_to_iretire_pipe_write_req,
      write_ack => noblock_teu_stream_corrector_to_iretire_pipe_write_ack,
      write_data => noblock_teu_stream_corrector_to_iretire_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return depth set to 0 since it is a P2P pipe.
  -- this is marked as a non-blocking pipe... InputPorts should take care of it! 
  noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return",
      num_reads => 1,
      num_writes => 1,
      data_width => 1,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_req,
      read_ack => noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_ack,
      read_data => noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_data,
      write_req => noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_req,
      write_ack => noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_ack,
      write_data => noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return depth set to 0 since it is a P2P pipe.
  -- this is marked as a non-blocking pipe... InputPorts should take care of it! 
  noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return",
      num_reads => 1,
      num_writes => 1,
      data_width => 1,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_req,
      read_ack => noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_ack,
      read_data => noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_data,
      write_req => noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_req,
      write_ack => noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_ack,
      write_data => noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe teu_fpunit_cc_to_stream_corrector depth set to 0 since it is a P2P pipe.
  teu_fpunit_cc_to_stream_corrector_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe teu_fpunit_cc_to_stream_corrector",
      num_reads => 1,
      num_writes => 1,
      data_width => 15,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_fpunit_cc_to_stream_corrector_pipe_read_req,
      read_ack => teu_fpunit_cc_to_stream_corrector_pipe_read_ack,
      read_data => teu_fpunit_cc_to_stream_corrector_pipe_read_data,
      write_req => teu_fpunit_cc_to_stream_corrector_pipe_write_req,
      write_ack => teu_fpunit_cc_to_stream_corrector_pipe_write_ack,
      write_data => teu_fpunit_cc_to_stream_corrector_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe teu_fpunit_register_file_to_loadstore depth set to 0 since it is a P2P pipe.
  teu_fpunit_register_file_to_loadstore_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe teu_fpunit_register_file_to_loadstore",
      num_reads => 1,
      num_writes => 1,
      data_width => 77,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_fpunit_register_file_to_loadstore_pipe_read_req,
      read_ack => teu_fpunit_register_file_to_loadstore_pipe_read_ack,
      read_data => teu_fpunit_register_file_to_loadstore_pipe_read_data,
      write_req => teu_fpunit_register_file_to_loadstore_pipe_write_req,
      write_ack => teu_fpunit_register_file_to_loadstore_pipe_write_ack,
      write_data => teu_fpunit_register_file_to_loadstore_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe teu_fpunit_to_iretire depth set to 0 since it is a P2P pipe.
  teu_fpunit_to_iretire_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe teu_fpunit_to_iretire",
      num_reads => 1,
      num_writes => 1,
      data_width => 51,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_fpunit_to_iretire_pipe_read_req,
      read_ack => teu_fpunit_to_iretire_pipe_read_ack,
      read_data => teu_fpunit_to_iretire_pipe_read_data,
      write_req => teu_fpunit_to_iretire_pipe_write_req,
      write_ack => teu_fpunit_to_iretire_pipe_write_ack,
      write_data => teu_fpunit_to_iretire_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe teu_fpunit_trap_to_iunit depth set to 0 since it is a P2P pipe.
  teu_fpunit_trap_to_iunit_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe teu_fpunit_trap_to_iunit",
      num_reads => 1,
      num_writes => 1,
      data_width => 13,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_fpunit_trap_to_iunit_pipe_read_req,
      read_ack => teu_fpunit_trap_to_iunit_pipe_read_ack,
      read_data => teu_fpunit_trap_to_iunit_pipe_read_data,
      write_req => teu_fpunit_trap_to_iunit_pipe_write_req,
      write_ack => teu_fpunit_trap_to_iunit_pipe_write_ack,
      write_data => teu_fpunit_trap_to_iunit_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe teu_fpunit_trap_to_loadstore depth set to 0 since it is a P2P pipe.
  teu_fpunit_trap_to_loadstore_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe teu_fpunit_trap_to_loadstore",
      num_reads => 1,
      num_writes => 1,
      data_width => 13,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_fpunit_trap_to_loadstore_pipe_read_req,
      read_ack => teu_fpunit_trap_to_loadstore_pipe_read_ack,
      read_data => teu_fpunit_trap_to_loadstore_pipe_read_data,
      write_req => teu_fpunit_trap_to_loadstore_pipe_write_req,
      write_ack => teu_fpunit_trap_to_loadstore_pipe_write_ack,
      write_data => teu_fpunit_trap_to_loadstore_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe teu_idispatch_to_iunit_exec depth set to 0 since it is a P2P pipe.
  teu_idispatch_to_iunit_exec_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe teu_idispatch_to_iunit_exec",
      num_reads => 1,
      num_writes => 1,
      data_width => 150,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_idispatch_to_iunit_exec_pipe_read_req,
      read_ack => teu_idispatch_to_iunit_exec_pipe_read_ack,
      read_data => teu_idispatch_to_iunit_exec_pipe_read_data,
      write_req => teu_idispatch_to_iunit_exec_pipe_write_req,
      write_ack => teu_idispatch_to_iunit_exec_pipe_write_ack,
      write_data => teu_idispatch_to_iunit_exec_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe teu_idispatch_to_stream_corrector depth set to 0 since it is a P2P pipe.
  teu_idispatch_to_stream_corrector_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe teu_idispatch_to_stream_corrector",
      num_reads => 1,
      num_writes => 1,
      data_width => 205,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_idispatch_to_stream_corrector_pipe_read_req,
      read_ack => teu_idispatch_to_stream_corrector_pipe_read_ack,
      read_data => teu_idispatch_to_stream_corrector_pipe_read_data,
      write_req => teu_idispatch_to_stream_corrector_pipe_write_req,
      write_ack => teu_idispatch_to_stream_corrector_pipe_write_ack,
      write_data => teu_idispatch_to_stream_corrector_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe teu_ifetch_to_idecode_extended depth set to 0 since it is a P2P pipe.
  teu_ifetch_to_idecode_extended_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe teu_ifetch_to_idecode_extended",
      num_reads => 1,
      num_writes => 1,
      data_width => 224,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_ifetch_to_idecode_extended_pipe_read_req,
      read_ack => teu_ifetch_to_idecode_extended_pipe_read_ack,
      read_data => teu_ifetch_to_idecode_extended_pipe_read_data,
      write_req => teu_ifetch_to_idecode_extended_pipe_write_req,
      write_ack => teu_ifetch_to_idecode_extended_pipe_write_ack,
      write_data => teu_ifetch_to_idecode_extended_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  teu_iretire_to_idispatch_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe teu_iretire_to_idispatch",
      num_reads => 1,
      num_writes => 1,
      data_width => 1,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => true,
      bypass => false,
      depth => 1 --
    )
    port map( -- 
      read_req => teu_iretire_to_idispatch_pipe_read_req,
      read_ack => teu_iretire_to_idispatch_pipe_read_ack,
      read_data => teu_iretire_to_idispatch_pipe_read_data,
      write_req => teu_iretire_to_idispatch_pipe_write_req,
      write_ack => teu_iretire_to_idispatch_pipe_write_ack,
      write_data => teu_iretire_to_idispatch_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe teu_iunit_cc_to_stream_corrector depth set to 0 since it is a P2P pipe.
  teu_iunit_cc_to_stream_corrector_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe teu_iunit_cc_to_stream_corrector",
      num_reads => 1,
      num_writes => 1,
      data_width => 17,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_iunit_cc_to_stream_corrector_pipe_read_req,
      read_ack => teu_iunit_cc_to_stream_corrector_pipe_read_ack,
      read_data => teu_iunit_cc_to_stream_corrector_pipe_read_data,
      write_req => teu_iunit_cc_to_stream_corrector_pipe_write_req,
      write_ack => teu_iunit_cc_to_stream_corrector_pipe_write_ack,
      write_data => teu_iunit_cc_to_stream_corrector_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe teu_iunit_register_file_to_loadstore depth set to 0 since it is a P2P pipe.
  teu_iunit_register_file_to_loadstore_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe teu_iunit_register_file_to_loadstore",
      num_reads => 1,
      num_writes => 1,
      data_width => 142,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_iunit_register_file_to_loadstore_pipe_read_req,
      read_ack => teu_iunit_register_file_to_loadstore_pipe_read_ack,
      read_data => teu_iunit_register_file_to_loadstore_pipe_read_data,
      write_req => teu_iunit_register_file_to_loadstore_pipe_write_req,
      write_ack => teu_iunit_register_file_to_loadstore_pipe_write_ack,
      write_data => teu_iunit_register_file_to_loadstore_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe teu_iunit_rs1_to_stream_corrector depth set to 0 since it is a P2P pipe.
  teu_iunit_rs1_to_stream_corrector_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe teu_iunit_rs1_to_stream_corrector",
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
      read_req => teu_iunit_rs1_to_stream_corrector_pipe_read_req,
      read_ack => teu_iunit_rs1_to_stream_corrector_pipe_read_ack,
      read_data => teu_iunit_rs1_to_stream_corrector_pipe_read_data,
      write_req => teu_iunit_rs1_to_stream_corrector_pipe_write_req,
      write_ack => teu_iunit_rs1_to_stream_corrector_pipe_write_ack,
      write_data => teu_iunit_rs1_to_stream_corrector_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe teu_iunit_to_iretire depth set to 0 since it is a P2P pipe.
  teu_iunit_to_iretire_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe teu_iunit_to_iretire",
      num_reads => 1,
      num_writes => 1,
      data_width => 96,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_iunit_to_iretire_pipe_read_req,
      read_ack => teu_iunit_to_iretire_pipe_read_ack,
      read_data => teu_iunit_to_iretire_pipe_read_data,
      write_req => teu_iunit_to_iretire_pipe_write_req,
      write_ack => teu_iunit_to_iretire_pipe_write_ack,
      write_data => teu_iunit_to_iretire_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe teu_iunit_to_stream_corrector depth set to 0 since it is a P2P pipe.
  teu_iunit_to_stream_corrector_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe teu_iunit_to_stream_corrector",
      num_reads => 1,
      num_writes => 1,
      data_width => 90,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_iunit_to_stream_corrector_pipe_read_req,
      read_ack => teu_iunit_to_stream_corrector_pipe_read_ack,
      read_data => teu_iunit_to_stream_corrector_pipe_read_data,
      write_req => teu_iunit_to_stream_corrector_pipe_write_req,
      write_ack => teu_iunit_to_stream_corrector_pipe_write_ack,
      write_data => teu_iunit_to_stream_corrector_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe teu_iunit_trap_to_fpunit depth set to 0 since it is a P2P pipe.
  teu_iunit_trap_to_fpunit_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe teu_iunit_trap_to_fpunit",
      num_reads => 1,
      num_writes => 1,
      data_width => 13,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_iunit_trap_to_fpunit_pipe_read_req,
      read_ack => teu_iunit_trap_to_fpunit_pipe_read_ack,
      read_data => teu_iunit_trap_to_fpunit_pipe_read_data,
      write_req => teu_iunit_trap_to_fpunit_pipe_write_req,
      write_ack => teu_iunit_trap_to_fpunit_pipe_write_ack,
      write_data => teu_iunit_trap_to_fpunit_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe teu_iunit_trap_to_loadstore depth set to 0 since it is a P2P pipe.
  teu_iunit_trap_to_loadstore_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe teu_iunit_trap_to_loadstore",
      num_reads => 1,
      num_writes => 1,
      data_width => 1,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_iunit_trap_to_loadstore_pipe_read_req,
      read_ack => teu_iunit_trap_to_loadstore_pipe_read_ack,
      read_data => teu_iunit_trap_to_loadstore_pipe_read_data,
      write_req => teu_iunit_trap_to_loadstore_pipe_write_req,
      write_ack => teu_iunit_trap_to_loadstore_pipe_write_ack,
      write_data => teu_iunit_trap_to_loadstore_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe teu_loadstore_to_fpunit depth set to 0 since it is a P2P pipe.
  teu_loadstore_to_fpunit_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe teu_loadstore_to_fpunit",
      num_reads => 1,
      num_writes => 1,
      data_width => 78,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_loadstore_to_fpunit_pipe_read_req,
      read_ack => teu_loadstore_to_fpunit_pipe_read_ack,
      read_data => teu_loadstore_to_fpunit_pipe_read_data,
      write_req => teu_loadstore_to_fpunit_pipe_write_req,
      write_ack => teu_loadstore_to_fpunit_pipe_write_ack,
      write_data => teu_loadstore_to_fpunit_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe teu_loadstore_to_iretire depth set to 0 since it is a P2P pipe.
  teu_loadstore_to_iretire_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe teu_loadstore_to_iretire",
      num_reads => 1,
      num_writes => 1,
      data_width => 54,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_loadstore_to_iretire_pipe_read_req,
      read_ack => teu_loadstore_to_iretire_pipe_read_ack,
      read_data => teu_loadstore_to_iretire_pipe_read_data,
      write_req => teu_loadstore_to_iretire_pipe_write_req,
      write_ack => teu_loadstore_to_iretire_pipe_write_ack,
      write_data => teu_loadstore_to_iretire_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe teu_loadstore_to_iunit depth set to 0 since it is a P2P pipe.
  teu_loadstore_to_iunit_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe teu_loadstore_to_iunit",
      num_reads => 1,
      num_writes => 1,
      data_width => 78,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => true,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_loadstore_to_iunit_pipe_read_req,
      read_ack => teu_loadstore_to_iunit_pipe_read_ack,
      read_data => teu_loadstore_to_iunit_pipe_read_data,
      write_req => teu_loadstore_to_iunit_pipe_write_req,
      write_ack => teu_loadstore_to_iunit_pipe_write_ack,
      write_data => teu_loadstore_to_iunit_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  teu_ras_access_pipe_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe teu_ras_access_pipe",
      num_reads => 1,
      num_writes => 1,
      data_width => 33,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => true,
      depth => 2 --
    )
    port map( -- 
      read_req => teu_ras_access_pipe_pipe_read_req,
      read_ack => teu_ras_access_pipe_pipe_read_ack,
      read_data => teu_ras_access_pipe_pipe_read_data,
      write_req => teu_ras_access_pipe_pipe_write_req,
      write_ack => teu_ras_access_pipe_pipe_write_ack,
      write_data => teu_ras_access_pipe_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe teu_stream_corrector_to_fpunit depth set to 0 since it is a P2P pipe.
  teu_stream_corrector_to_fpunit_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe teu_stream_corrector_to_fpunit",
      num_reads => 1,
      num_writes => 1,
      data_width => 18,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_stream_corrector_to_fpunit_pipe_read_req,
      read_ack => teu_stream_corrector_to_fpunit_pipe_read_ack,
      read_data => teu_stream_corrector_to_fpunit_pipe_read_data,
      write_req => teu_stream_corrector_to_fpunit_pipe_write_req,
      write_ack => teu_stream_corrector_to_fpunit_pipe_write_ack,
      write_data => teu_stream_corrector_to_fpunit_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe teu_stream_corrector_to_iunit depth set to 0 since it is a P2P pipe.
  teu_stream_corrector_to_iunit_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe teu_stream_corrector_to_iunit",
      num_reads => 1,
      num_writes => 1,
      data_width => 18,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => true,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_stream_corrector_to_iunit_pipe_read_req,
      read_ack => teu_stream_corrector_to_iunit_pipe_read_ack,
      read_data => teu_stream_corrector_to_iunit_pipe_read_data,
      write_req => teu_stream_corrector_to_iunit_pipe_write_req,
      write_ack => teu_stream_corrector_to_iunit_pipe_write_ack,
      write_data => teu_stream_corrector_to_iunit_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe teu_stream_corrector_to_loadstore depth set to 0 since it is a P2P pipe.
  teu_stream_corrector_to_loadstore_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe teu_stream_corrector_to_loadstore",
      num_reads => 1,
      num_writes => 1,
      data_width => 19,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => true,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_stream_corrector_to_loadstore_pipe_read_req,
      read_ack => teu_stream_corrector_to_loadstore_pipe_read_ack,
      read_data => teu_stream_corrector_to_loadstore_pipe_read_data,
      write_req => teu_stream_corrector_to_loadstore_pipe_write_req,
      write_ack => teu_stream_corrector_to_loadstore_pipe_write_ack,
      write_data => teu_stream_corrector_to_loadstore_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- 
end struct;
