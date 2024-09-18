library ieee;
use ieee.std_logic_1164.all;
package iunit_Type_Package is -- 
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
library teu_iunit;
use teu_iunit.iunit_Type_Package.all;
--<<<<<
-->>>>>
library iunit_exec;
library iunit_writeback_in_mux;
library iunit_registers;
--<<<<<
entity iunit is -- 
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
end entity iunit;
architecture struct of iunit is -- 
  signal hsys_tie_low, hsys_tie_high: std_logic;
  signal iunit_exec_fast_alu_result_to_writeback_pipe_write_data: std_logic_vector(108 downto 0);
  signal iunit_exec_fast_alu_result_to_writeback_pipe_write_req : std_logic_vector(0  downto 0);
  signal iunit_exec_fast_alu_result_to_writeback_pipe_write_ack : std_logic_vector(0  downto 0);
  signal iunit_exec_fast_alu_result_to_writeback_pipe_read_data: std_logic_vector(108 downto 0);
  signal iunit_exec_fast_alu_result_to_writeback_pipe_read_req : std_logic_vector(0  downto 0);
  signal iunit_exec_fast_alu_result_to_writeback_pipe_read_ack : std_logic_vector(0  downto 0);
  signal iunit_exec_to_writeback_pipe_write_data: std_logic_vector(125 downto 0);
  signal iunit_exec_to_writeback_pipe_write_req : std_logic_vector(0  downto 0);
  signal iunit_exec_to_writeback_pipe_write_ack : std_logic_vector(0  downto 0);
  signal iunit_exec_to_writeback_pipe_read_data: std_logic_vector(125 downto 0);
  signal iunit_exec_to_writeback_pipe_read_req : std_logic_vector(0  downto 0);
  signal iunit_exec_to_writeback_pipe_read_ack : std_logic_vector(0  downto 0);
  signal iunit_register_file_read_access_response_pipe_write_data: std_logic_vector(141 downto 0);
  signal iunit_register_file_read_access_response_pipe_write_req : std_logic_vector(0  downto 0);
  signal iunit_register_file_read_access_response_pipe_write_ack : std_logic_vector(0  downto 0);
  signal iunit_register_file_read_access_response_pipe_read_data: std_logic_vector(141 downto 0);
  signal iunit_register_file_read_access_response_pipe_read_req : std_logic_vector(0  downto 0);
  signal iunit_register_file_read_access_response_pipe_read_ack : std_logic_vector(0  downto 0);
  signal noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_write_data: std_logic_vector(16 downto 0);
  signal noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_write_req : std_logic_vector(0  downto 0);
  signal noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_write_ack : std_logic_vector(0  downto 0);
  signal noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_read_data: std_logic_vector(16 downto 0);
  signal noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_read_req : std_logic_vector(0  downto 0);
  signal noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_read_ack : std_logic_vector(0  downto 0);
  signal noblock_iunit_exec_bypass_signal_to_register_file_pipe_write_data: std_logic_vector(82 downto 0);
  signal noblock_iunit_exec_bypass_signal_to_register_file_pipe_write_req : std_logic_vector(0  downto 0);
  signal noblock_iunit_exec_bypass_signal_to_register_file_pipe_write_ack : std_logic_vector(0  downto 0);
  signal noblock_iunit_exec_bypass_signal_to_register_file_pipe_read_data: std_logic_vector(82 downto 0);
  signal noblock_iunit_exec_bypass_signal_to_register_file_pipe_read_req : std_logic_vector(0  downto 0);
  signal noblock_iunit_exec_bypass_signal_to_register_file_pipe_read_ack : std_logic_vector(0  downto 0);
  signal noblock_iunit_exec_to_regfile_credit_return_pipe_write_data: std_logic_vector(0 downto 0);
  signal noblock_iunit_exec_to_regfile_credit_return_pipe_write_req : std_logic_vector(0  downto 0);
  signal noblock_iunit_exec_to_regfile_credit_return_pipe_write_ack : std_logic_vector(0  downto 0);
  signal noblock_iunit_exec_to_regfile_credit_return_pipe_read_data: std_logic_vector(0 downto 0);
  signal noblock_iunit_exec_to_regfile_credit_return_pipe_read_req : std_logic_vector(0  downto 0);
  signal noblock_iunit_exec_to_regfile_credit_return_pipe_read_ack : std_logic_vector(0  downto 0);
  signal noblock_iunit_writeback_in_args_pipe_pipe_write_data: std_logic_vector(372 downto 0);
  signal noblock_iunit_writeback_in_args_pipe_pipe_write_req : std_logic_vector(0  downto 0);
  signal noblock_iunit_writeback_in_args_pipe_pipe_write_ack : std_logic_vector(0  downto 0);
  signal noblock_iunit_writeback_in_args_pipe_pipe_read_data: std_logic_vector(372 downto 0);
  signal noblock_iunit_writeback_in_args_pipe_pipe_read_req : std_logic_vector(0  downto 0);
  signal noblock_iunit_writeback_in_args_pipe_pipe_read_ack : std_logic_vector(0  downto 0);
  component iu_exec is -- 
    port( -- 
      iunit_register_file_read_access_response_pipe_write_data : in std_logic_vector(141 downto 0);
      iunit_register_file_read_access_response_pipe_write_req  : in std_logic_vector(0  downto 0);
      iunit_register_file_read_access_response_pipe_write_ack  : out std_logic_vector(0  downto 0);
      teu_idispatch_to_iunit_exec_pipe_write_data : in std_logic_vector(149 downto 0);
      teu_idispatch_to_iunit_exec_pipe_write_req  : in std_logic_vector(0  downto 0);
      teu_idispatch_to_iunit_exec_pipe_write_ack  : out std_logic_vector(0  downto 0);
      iunit_exec_fast_alu_result_to_writeback_pipe_read_data : out std_logic_vector(108 downto 0);
      iunit_exec_fast_alu_result_to_writeback_pipe_read_req  : in std_logic_vector(0  downto 0);
      iunit_exec_fast_alu_result_to_writeback_pipe_read_ack  : out std_logic_vector(0  downto 0);
      iunit_exec_to_writeback_pipe_read_data : out std_logic_vector(125 downto 0);
      iunit_exec_to_writeback_pipe_read_req  : in std_logic_vector(0  downto 0);
      iunit_exec_to_writeback_pipe_read_ack  : out std_logic_vector(0  downto 0);
      noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_read_data : out std_logic_vector(16 downto 0);
      noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_read_req  : in std_logic_vector(0  downto 0);
      noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_read_ack  : out std_logic_vector(0  downto 0);
      noblock_iunit_exec_bypass_signal_to_register_file_pipe_read_data : out std_logic_vector(82 downto 0);
      noblock_iunit_exec_bypass_signal_to_register_file_pipe_read_req  : in std_logic_vector(0  downto 0);
      noblock_iunit_exec_bypass_signal_to_register_file_pipe_read_ack  : out std_logic_vector(0  downto 0);
      noblock_iunit_exec_to_regfile_credit_return_pipe_read_data : out std_logic_vector(0 downto 0);
      noblock_iunit_exec_to_regfile_credit_return_pipe_read_req  : in std_logic_vector(0  downto 0);
      noblock_iunit_exec_to_regfile_credit_return_pipe_read_ack  : out std_logic_vector(0  downto 0);
      teu_iunit_to_stream_corrector_pipe_read_data : out std_logic_vector(89 downto 0);
      teu_iunit_to_stream_corrector_pipe_read_req  : in std_logic_vector(0  downto 0);
      teu_iunit_to_stream_corrector_pipe_read_ack  : out std_logic_vector(0  downto 0);
      teu_iunit_trap_to_fpunit_pipe_read_data : out std_logic_vector(12 downto 0);
      teu_iunit_trap_to_fpunit_pipe_read_req  : in std_logic_vector(0  downto 0);
      teu_iunit_trap_to_fpunit_pipe_read_ack  : out std_logic_vector(0  downto 0);
      teu_iunit_trap_to_loadstore_pipe_read_data : out std_logic_vector(0 downto 0);
      teu_iunit_trap_to_loadstore_pipe_read_req  : in std_logic_vector(0  downto 0);
      teu_iunit_trap_to_loadstore_pipe_read_ack  : out std_logic_vector(0  downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for exe_inst :  iu_exec -- 
    use entity iunit_exec.iu_exec; -- 
  --<<<<<
  component iu_writeback_in_mux is -- 
    port( -- 
      iunit_exec_fast_alu_result_to_writeback_pipe_write_data : in std_logic_vector(108 downto 0);
      iunit_exec_fast_alu_result_to_writeback_pipe_write_req  : in std_logic_vector(0  downto 0);
      iunit_exec_fast_alu_result_to_writeback_pipe_write_ack  : out std_logic_vector(0  downto 0);
      iunit_exec_to_writeback_pipe_write_data : in std_logic_vector(125 downto 0);
      iunit_exec_to_writeback_pipe_write_req  : in std_logic_vector(0  downto 0);
      iunit_exec_to_writeback_pipe_write_ack  : out std_logic_vector(0  downto 0);
      noblock_teu_idispatch_to_iunit_writeback_pipe_write_data : in std_logic_vector(83 downto 0);
      noblock_teu_idispatch_to_iunit_writeback_pipe_write_req  : in std_logic_vector(0  downto 0);
      noblock_teu_idispatch_to_iunit_writeback_pipe_write_ack  : out std_logic_vector(0  downto 0);
      teu_fpunit_trap_to_iunit_pipe_write_data : in std_logic_vector(12 downto 0);
      teu_fpunit_trap_to_iunit_pipe_write_req  : in std_logic_vector(0  downto 0);
      teu_fpunit_trap_to_iunit_pipe_write_ack  : out std_logic_vector(0  downto 0);
      teu_loadstore_to_iunit_pipe_write_data : in std_logic_vector(77 downto 0);
      teu_loadstore_to_iunit_pipe_write_req  : in std_logic_vector(0  downto 0);
      teu_loadstore_to_iunit_pipe_write_ack  : out std_logic_vector(0  downto 0);
      teu_stream_corrector_to_iunit_pipe_write_data : in std_logic_vector(17 downto 0);
      teu_stream_corrector_to_iunit_pipe_write_req  : in std_logic_vector(0  downto 0);
      teu_stream_corrector_to_iunit_pipe_write_ack  : out std_logic_vector(0  downto 0);
      noblock_iunit_writeback_in_args_pipe_pipe_read_data : out std_logic_vector(372 downto 0);
      noblock_iunit_writeback_in_args_pipe_pipe_read_req  : in std_logic_vector(0  downto 0);
      noblock_iunit_writeback_in_args_pipe_pipe_read_ack  : out std_logic_vector(0  downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for iu_writeback_in_mux_inst :  iu_writeback_in_mux -- 
    use entity iunit_writeback_in_mux.iu_writeback_in_mux; -- 
  --<<<<<
  component iu_registers is -- 
    port( -- 
      CORE_ID : in std_logic_vector(7 downto 0);
      NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_data : in std_logic_vector(92 downto 0);
      NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_ack  : out std_logic_vector(0  downto 0);
      THREAD_ID : in std_logic_vector(7 downto 0);
      ccu_to_teu_iunit_register_access_command_pipe_write_data : in std_logic_vector(41 downto 0);
      ccu_to_teu_iunit_register_access_command_pipe_write_req  : in std_logic_vector(0  downto 0);
      ccu_to_teu_iunit_register_access_command_pipe_write_ack  : out std_logic_vector(0  downto 0);
      noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_write_data : in std_logic_vector(16 downto 0);
      noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_write_req  : in std_logic_vector(0  downto 0);
      noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_write_ack  : out std_logic_vector(0  downto 0);
      noblock_iunit_exec_bypass_signal_to_register_file_pipe_write_data : in std_logic_vector(82 downto 0);
      noblock_iunit_exec_bypass_signal_to_register_file_pipe_write_req  : in std_logic_vector(0  downto 0);
      noblock_iunit_exec_bypass_signal_to_register_file_pipe_write_ack  : out std_logic_vector(0  downto 0);
      noblock_iunit_exec_to_regfile_credit_return_pipe_write_data : in std_logic_vector(0 downto 0);
      noblock_iunit_exec_to_regfile_credit_return_pipe_write_req  : in std_logic_vector(0  downto 0);
      noblock_iunit_exec_to_regfile_credit_return_pipe_write_ack  : out std_logic_vector(0  downto 0);
      noblock_iunit_writeback_in_args_pipe_pipe_write_data : in std_logic_vector(372 downto 0);
      noblock_iunit_writeback_in_args_pipe_pipe_write_req  : in std_logic_vector(0  downto 0);
      noblock_iunit_writeback_in_args_pipe_pipe_write_ack  : out std_logic_vector(0  downto 0);
      noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_data : in std_logic_vector(58 downto 0);
      noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_req  : in std_logic_vector(0  downto 0);
      noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_ack  : out std_logic_vector(0  downto 0);
      noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_data : in std_logic_vector(0 downto 0);
      noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_req  : in std_logic_vector(0  downto 0);
      noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_ack  : out std_logic_vector(0  downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_data : in std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_req  : in std_logic_vector(0  downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_ack  : out std_logic_vector(0  downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_data : in std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_req  : in std_logic_vector(0  downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_ack  : out std_logic_vector(0  downto 0);
      iunit_register_file_read_access_response_pipe_read_data : out std_logic_vector(141 downto 0);
      iunit_register_file_read_access_response_pipe_read_req  : in std_logic_vector(0  downto 0);
      iunit_register_file_read_access_response_pipe_read_ack  : out std_logic_vector(0  downto 0);
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
      teu_to_ccu_iunit_register_access_response_pipe_read_data : out std_logic_vector(31 downto 0);
      teu_to_ccu_iunit_register_access_response_pipe_read_req  : in std_logic_vector(0  downto 0);
      teu_to_ccu_iunit_register_access_response_pipe_read_ack  : out std_logic_vector(0  downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for regs_inst :  iu_registers -- 
    use entity iunit_registers.iu_registers; -- 
  --<<<<<
  -- 
begin -- 
  hsys_tie_low  <= '0';
  hsys_tie_high <= '1';
  exe_inst: iu_exec
  port map ( --
    iunit_exec_fast_alu_result_to_writeback_pipe_read_data => iunit_exec_fast_alu_result_to_writeback_pipe_write_data,
    iunit_exec_fast_alu_result_to_writeback_pipe_read_req => iunit_exec_fast_alu_result_to_writeback_pipe_write_ack,
    iunit_exec_fast_alu_result_to_writeback_pipe_read_ack => iunit_exec_fast_alu_result_to_writeback_pipe_write_req,
    iunit_exec_to_writeback_pipe_read_data => iunit_exec_to_writeback_pipe_write_data,
    iunit_exec_to_writeback_pipe_read_req => iunit_exec_to_writeback_pipe_write_ack,
    iunit_exec_to_writeback_pipe_read_ack => iunit_exec_to_writeback_pipe_write_req,
    iunit_register_file_read_access_response_pipe_write_data => iunit_register_file_read_access_response_pipe_read_data,
    iunit_register_file_read_access_response_pipe_write_req => iunit_register_file_read_access_response_pipe_read_ack,
    iunit_register_file_read_access_response_pipe_write_ack => iunit_register_file_read_access_response_pipe_read_req,
    noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_read_data => noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_write_data,
    noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_read_req => noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_write_ack,
    noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_read_ack => noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_write_req,
    noblock_iunit_exec_bypass_signal_to_register_file_pipe_read_data => noblock_iunit_exec_bypass_signal_to_register_file_pipe_write_data,
    noblock_iunit_exec_bypass_signal_to_register_file_pipe_read_req => noblock_iunit_exec_bypass_signal_to_register_file_pipe_write_ack,
    noblock_iunit_exec_bypass_signal_to_register_file_pipe_read_ack => noblock_iunit_exec_bypass_signal_to_register_file_pipe_write_req,
    noblock_iunit_exec_to_regfile_credit_return_pipe_read_data => noblock_iunit_exec_to_regfile_credit_return_pipe_write_data,
    noblock_iunit_exec_to_regfile_credit_return_pipe_read_req => noblock_iunit_exec_to_regfile_credit_return_pipe_write_ack,
    noblock_iunit_exec_to_regfile_credit_return_pipe_read_ack => noblock_iunit_exec_to_regfile_credit_return_pipe_write_req,
    teu_idispatch_to_iunit_exec_pipe_write_data => teu_idispatch_to_iunit_exec_pipe_write_data,
    teu_idispatch_to_iunit_exec_pipe_write_req => teu_idispatch_to_iunit_exec_pipe_write_req,
    teu_idispatch_to_iunit_exec_pipe_write_ack => teu_idispatch_to_iunit_exec_pipe_write_ack,
    teu_iunit_to_stream_corrector_pipe_read_data => teu_iunit_to_stream_corrector_pipe_read_data,
    teu_iunit_to_stream_corrector_pipe_read_req => teu_iunit_to_stream_corrector_pipe_read_req,
    teu_iunit_to_stream_corrector_pipe_read_ack => teu_iunit_to_stream_corrector_pipe_read_ack,
    teu_iunit_trap_to_fpunit_pipe_read_data => teu_iunit_trap_to_fpunit_pipe_read_data,
    teu_iunit_trap_to_fpunit_pipe_read_req => teu_iunit_trap_to_fpunit_pipe_read_req,
    teu_iunit_trap_to_fpunit_pipe_read_ack => teu_iunit_trap_to_fpunit_pipe_read_ack,
    teu_iunit_trap_to_loadstore_pipe_read_data => teu_iunit_trap_to_loadstore_pipe_read_data,
    teu_iunit_trap_to_loadstore_pipe_read_req => teu_iunit_trap_to_loadstore_pipe_read_req,
    teu_iunit_trap_to_loadstore_pipe_read_ack => teu_iunit_trap_to_loadstore_pipe_read_ack,
    clk => clk,  reset => reset
    ); -- 
  iu_writeback_in_mux_inst: iu_writeback_in_mux
  port map ( --
    iunit_exec_fast_alu_result_to_writeback_pipe_write_data => iunit_exec_fast_alu_result_to_writeback_pipe_read_data,
    iunit_exec_fast_alu_result_to_writeback_pipe_write_req => iunit_exec_fast_alu_result_to_writeback_pipe_read_ack,
    iunit_exec_fast_alu_result_to_writeback_pipe_write_ack => iunit_exec_fast_alu_result_to_writeback_pipe_read_req,
    iunit_exec_to_writeback_pipe_write_data => iunit_exec_to_writeback_pipe_read_data,
    iunit_exec_to_writeback_pipe_write_req => iunit_exec_to_writeback_pipe_read_ack,
    iunit_exec_to_writeback_pipe_write_ack => iunit_exec_to_writeback_pipe_read_req,
    noblock_iunit_writeback_in_args_pipe_pipe_read_data => noblock_iunit_writeback_in_args_pipe_pipe_write_data,
    noblock_iunit_writeback_in_args_pipe_pipe_read_req => noblock_iunit_writeback_in_args_pipe_pipe_write_ack,
    noblock_iunit_writeback_in_args_pipe_pipe_read_ack => noblock_iunit_writeback_in_args_pipe_pipe_write_req,
    noblock_teu_idispatch_to_iunit_writeback_pipe_write_data => noblock_teu_idispatch_to_iunit_writeback_pipe_write_data,
    noblock_teu_idispatch_to_iunit_writeback_pipe_write_req => noblock_teu_idispatch_to_iunit_writeback_pipe_write_req,
    noblock_teu_idispatch_to_iunit_writeback_pipe_write_ack => noblock_teu_idispatch_to_iunit_writeback_pipe_write_ack,
    teu_fpunit_trap_to_iunit_pipe_write_data => teu_fpunit_trap_to_iunit_pipe_write_data,
    teu_fpunit_trap_to_iunit_pipe_write_req => teu_fpunit_trap_to_iunit_pipe_write_req,
    teu_fpunit_trap_to_iunit_pipe_write_ack => teu_fpunit_trap_to_iunit_pipe_write_ack,
    teu_loadstore_to_iunit_pipe_write_data => teu_loadstore_to_iunit_pipe_write_data,
    teu_loadstore_to_iunit_pipe_write_req => teu_loadstore_to_iunit_pipe_write_req,
    teu_loadstore_to_iunit_pipe_write_ack => teu_loadstore_to_iunit_pipe_write_ack,
    teu_stream_corrector_to_iunit_pipe_write_data => teu_stream_corrector_to_iunit_pipe_write_data,
    teu_stream_corrector_to_iunit_pipe_write_req => teu_stream_corrector_to_iunit_pipe_write_req,
    teu_stream_corrector_to_iunit_pipe_write_ack => teu_stream_corrector_to_iunit_pipe_write_ack,
    clk => clk,  reset => reset
    ); -- 
  regs_inst: iu_registers
  port map ( --
    CORE_ID => CORE_ID,
    NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_data => NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_data,
    NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_req => NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_req,
    NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_ack => NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_ack,
    THREAD_ID => THREAD_ID,
    ccu_to_teu_iunit_register_access_command_pipe_write_data => ccu_to_teu_iunit_register_access_command_pipe_write_data,
    ccu_to_teu_iunit_register_access_command_pipe_write_req => ccu_to_teu_iunit_register_access_command_pipe_write_req,
    ccu_to_teu_iunit_register_access_command_pipe_write_ack => ccu_to_teu_iunit_register_access_command_pipe_write_ack,
    iunit_register_file_read_access_response_pipe_read_data => iunit_register_file_read_access_response_pipe_write_data,
    iunit_register_file_read_access_response_pipe_read_req => iunit_register_file_read_access_response_pipe_write_ack,
    iunit_register_file_read_access_response_pipe_read_ack => iunit_register_file_read_access_response_pipe_write_req,
    noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_write_data => noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_read_data,
    noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_write_req => noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_read_ack,
    noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_write_ack => noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_read_req,
    noblock_iunit_exec_bypass_signal_to_register_file_pipe_write_data => noblock_iunit_exec_bypass_signal_to_register_file_pipe_read_data,
    noblock_iunit_exec_bypass_signal_to_register_file_pipe_write_req => noblock_iunit_exec_bypass_signal_to_register_file_pipe_read_ack,
    noblock_iunit_exec_bypass_signal_to_register_file_pipe_write_ack => noblock_iunit_exec_bypass_signal_to_register_file_pipe_read_req,
    noblock_iunit_exec_to_regfile_credit_return_pipe_write_data => noblock_iunit_exec_to_regfile_credit_return_pipe_read_data,
    noblock_iunit_exec_to_regfile_credit_return_pipe_write_req => noblock_iunit_exec_to_regfile_credit_return_pipe_read_ack,
    noblock_iunit_exec_to_regfile_credit_return_pipe_write_ack => noblock_iunit_exec_to_regfile_credit_return_pipe_read_req,
    noblock_iunit_writeback_in_args_pipe_pipe_write_data => noblock_iunit_writeback_in_args_pipe_pipe_read_data,
    noblock_iunit_writeback_in_args_pipe_pipe_write_req => noblock_iunit_writeback_in_args_pipe_pipe_read_ack,
    noblock_iunit_writeback_in_args_pipe_pipe_write_ack => noblock_iunit_writeback_in_args_pipe_pipe_read_req,
    noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_data => noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_data,
    noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_req => noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_req,
    noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_ack => noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_ack,
    noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_data => noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_data,
    noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_req => noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_req,
    noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_ack => noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_ack,
    noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_data => noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_data,
    noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_req => noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_req,
    noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_ack => noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_ack,
    noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_data => noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_data,
    noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_req => noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_req,
    noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_ack => noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_ack,
    teu_iunit_cc_to_stream_corrector_pipe_read_data => teu_iunit_cc_to_stream_corrector_pipe_read_data,
    teu_iunit_cc_to_stream_corrector_pipe_read_req => teu_iunit_cc_to_stream_corrector_pipe_read_req,
    teu_iunit_cc_to_stream_corrector_pipe_read_ack => teu_iunit_cc_to_stream_corrector_pipe_read_ack,
    teu_iunit_register_file_to_loadstore_pipe_read_data => teu_iunit_register_file_to_loadstore_pipe_read_data,
    teu_iunit_register_file_to_loadstore_pipe_read_req => teu_iunit_register_file_to_loadstore_pipe_read_req,
    teu_iunit_register_file_to_loadstore_pipe_read_ack => teu_iunit_register_file_to_loadstore_pipe_read_ack,
    teu_iunit_rs1_to_stream_corrector_pipe_read_data => teu_iunit_rs1_to_stream_corrector_pipe_read_data,
    teu_iunit_rs1_to_stream_corrector_pipe_read_req => teu_iunit_rs1_to_stream_corrector_pipe_read_req,
    teu_iunit_rs1_to_stream_corrector_pipe_read_ack => teu_iunit_rs1_to_stream_corrector_pipe_read_ack,
    teu_iunit_to_iretire_pipe_read_data => teu_iunit_to_iretire_pipe_read_data,
    teu_iunit_to_iretire_pipe_read_req => teu_iunit_to_iretire_pipe_read_req,
    teu_iunit_to_iretire_pipe_read_ack => teu_iunit_to_iretire_pipe_read_ack,
    teu_to_ccu_iunit_register_access_response_pipe_read_data => teu_to_ccu_iunit_register_access_response_pipe_read_data,
    teu_to_ccu_iunit_register_access_response_pipe_read_req => teu_to_ccu_iunit_register_access_response_pipe_read_req,
    teu_to_ccu_iunit_register_access_response_pipe_read_ack => teu_to_ccu_iunit_register_access_response_pipe_read_ack,
    clk => clk,  reset => reset
    ); -- 
  -- pipe iunit_exec_fast_alu_result_to_writeback depth set to 0 since it is a P2P pipe.
  iunit_exec_fast_alu_result_to_writeback_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe iunit_exec_fast_alu_result_to_writeback",
      num_reads => 1,
      num_writes => 1,
      data_width => 109,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => iunit_exec_fast_alu_result_to_writeback_pipe_read_req,
      read_ack => iunit_exec_fast_alu_result_to_writeback_pipe_read_ack,
      read_data => iunit_exec_fast_alu_result_to_writeback_pipe_read_data,
      write_req => iunit_exec_fast_alu_result_to_writeback_pipe_write_req,
      write_ack => iunit_exec_fast_alu_result_to_writeback_pipe_write_ack,
      write_data => iunit_exec_fast_alu_result_to_writeback_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe iunit_exec_to_writeback depth set to 0 since it is a P2P pipe.
  iunit_exec_to_writeback_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe iunit_exec_to_writeback",
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
      read_req => iunit_exec_to_writeback_pipe_read_req,
      read_ack => iunit_exec_to_writeback_pipe_read_ack,
      read_data => iunit_exec_to_writeback_pipe_read_data,
      write_req => iunit_exec_to_writeback_pipe_write_req,
      write_ack => iunit_exec_to_writeback_pipe_write_ack,
      write_data => iunit_exec_to_writeback_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe iunit_register_file_read_access_response depth set to 0 since it is a P2P pipe.
  iunit_register_file_read_access_response_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe iunit_register_file_read_access_response",
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
      read_req => iunit_register_file_read_access_response_pipe_read_req,
      read_ack => iunit_register_file_read_access_response_pipe_read_ack,
      read_data => iunit_register_file_read_access_response_pipe_read_data,
      write_req => iunit_register_file_read_access_response_pipe_write_req,
      write_ack => iunit_register_file_read_access_response_pipe_write_ack,
      write_data => iunit_register_file_read_access_response_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe noblock_iunit_exec_bypass_cc_signal_to_register_file depth set to 0 since it is a P2P pipe.
  -- this is marked as a non-blocking pipe... InputPorts should take care of it! 
  noblock_iunit_exec_bypass_cc_signal_to_register_file_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe noblock_iunit_exec_bypass_cc_signal_to_register_file",
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
      read_req => noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_read_req,
      read_ack => noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_read_ack,
      read_data => noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_read_data,
      write_req => noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_write_req,
      write_ack => noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_write_ack,
      write_data => noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe noblock_iunit_exec_bypass_signal_to_register_file depth set to 0 since it is a P2P pipe.
  -- this is marked as a non-blocking pipe... InputPorts should take care of it! 
  noblock_iunit_exec_bypass_signal_to_register_file_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe noblock_iunit_exec_bypass_signal_to_register_file",
      num_reads => 1,
      num_writes => 1,
      data_width => 83,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => noblock_iunit_exec_bypass_signal_to_register_file_pipe_read_req,
      read_ack => noblock_iunit_exec_bypass_signal_to_register_file_pipe_read_ack,
      read_data => noblock_iunit_exec_bypass_signal_to_register_file_pipe_read_data,
      write_req => noblock_iunit_exec_bypass_signal_to_register_file_pipe_write_req,
      write_ack => noblock_iunit_exec_bypass_signal_to_register_file_pipe_write_ack,
      write_data => noblock_iunit_exec_bypass_signal_to_register_file_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe noblock_iunit_exec_to_regfile_credit_return depth set to 0 since it is a P2P pipe.
  -- this is marked as a non-blocking pipe... InputPorts should take care of it! 
  noblock_iunit_exec_to_regfile_credit_return_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe noblock_iunit_exec_to_regfile_credit_return",
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
      read_req => noblock_iunit_exec_to_regfile_credit_return_pipe_read_req,
      read_ack => noblock_iunit_exec_to_regfile_credit_return_pipe_read_ack,
      read_data => noblock_iunit_exec_to_regfile_credit_return_pipe_read_data,
      write_req => noblock_iunit_exec_to_regfile_credit_return_pipe_write_req,
      write_ack => noblock_iunit_exec_to_regfile_credit_return_pipe_write_ack,
      write_data => noblock_iunit_exec_to_regfile_credit_return_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe noblock_iunit_writeback_in_args_pipe depth set to 0 since it is a P2P pipe.
  -- this is marked as a non-blocking pipe... InputPorts should take care of it! 
  noblock_iunit_writeback_in_args_pipe_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe noblock_iunit_writeback_in_args_pipe",
      num_reads => 1,
      num_writes => 1,
      data_width => 373,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => noblock_iunit_writeback_in_args_pipe_pipe_read_req,
      read_ack => noblock_iunit_writeback_in_args_pipe_pipe_read_ack,
      read_data => noblock_iunit_writeback_in_args_pipe_pipe_read_data,
      write_req => noblock_iunit_writeback_in_args_pipe_pipe_write_req,
      write_ack => noblock_iunit_writeback_in_args_pipe_pipe_write_ack,
      write_data => noblock_iunit_writeback_in_args_pipe_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- 
end struct;
