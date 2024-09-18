-- VHDL global package produced by vc2vhdl from virtual circuit (vc) description 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
package dummy_fpunit_global_package is -- 
  constant default_mem_pool_base_address : std_logic_vector(0 downto 0) := "0";
  component dummy_fpunit is -- 
    port (-- 
      clk : in std_logic;
      reset : in std_logic;
      NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_data: in std_logic_vector(92 downto 0);
      NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_req : in std_logic_vector(0 downto 0);
      NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_ack : out std_logic_vector(0 downto 0);
      ccu_to_teu_fpunit_register_access_command_pipe_write_data: in std_logic_vector(39 downto 0);
      ccu_to_teu_fpunit_register_access_command_pipe_write_req : in std_logic_vector(0 downto 0);
      ccu_to_teu_fpunit_register_access_command_pipe_write_ack : out std_logic_vector(0 downto 0);
      noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_data: in std_logic_vector(0 downto 0);
      noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_req : in std_logic_vector(0 downto 0);
      noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_ack : out std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_data: in std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_req : in std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_ack : out std_logic_vector(0 downto 0);
      teu_fpunit_cc_to_stream_corrector_pipe_read_data: out std_logic_vector(14 downto 0);
      teu_fpunit_cc_to_stream_corrector_pipe_read_req : in std_logic_vector(0 downto 0);
      teu_fpunit_cc_to_stream_corrector_pipe_read_ack : out std_logic_vector(0 downto 0);
      teu_fpunit_register_file_to_loadstore_pipe_read_data: out std_logic_vector(76 downto 0);
      teu_fpunit_register_file_to_loadstore_pipe_read_req : in std_logic_vector(0 downto 0);
      teu_fpunit_register_file_to_loadstore_pipe_read_ack : out std_logic_vector(0 downto 0);
      teu_fpunit_to_iretire_pipe_read_data: out std_logic_vector(50 downto 0);
      teu_fpunit_to_iretire_pipe_read_req : in std_logic_vector(0 downto 0);
      teu_fpunit_to_iretire_pipe_read_ack : out std_logic_vector(0 downto 0);
      teu_fpunit_trap_to_iunit_pipe_read_data: out std_logic_vector(12 downto 0);
      teu_fpunit_trap_to_iunit_pipe_read_req : in std_logic_vector(0 downto 0);
      teu_fpunit_trap_to_iunit_pipe_read_ack : out std_logic_vector(0 downto 0);
      teu_fpunit_trap_to_loadstore_pipe_read_data: out std_logic_vector(12 downto 0);
      teu_fpunit_trap_to_loadstore_pipe_read_req : in std_logic_vector(0 downto 0);
      teu_fpunit_trap_to_loadstore_pipe_read_ack : out std_logic_vector(0 downto 0);
      teu_iunit_trap_to_fpunit_pipe_write_data: in std_logic_vector(12 downto 0);
      teu_iunit_trap_to_fpunit_pipe_write_req : in std_logic_vector(0 downto 0);
      teu_iunit_trap_to_fpunit_pipe_write_ack : out std_logic_vector(0 downto 0);
      teu_loadstore_to_fpunit_pipe_write_data: in std_logic_vector(77 downto 0);
      teu_loadstore_to_fpunit_pipe_write_req : in std_logic_vector(0 downto 0);
      teu_loadstore_to_fpunit_pipe_write_ack : out std_logic_vector(0 downto 0);
      teu_stream_corrector_to_fpunit_pipe_write_data: in std_logic_vector(17 downto 0);
      teu_stream_corrector_to_fpunit_pipe_write_req : in std_logic_vector(0 downto 0);
      teu_stream_corrector_to_fpunit_pipe_write_ack : out std_logic_vector(0 downto 0);
      teu_to_ccu_fpunit_register_access_response_pipe_read_data: out std_logic_vector(32 downto 0);
      teu_to_ccu_fpunit_register_access_response_pipe_read_req : in std_logic_vector(0 downto 0);
      teu_to_ccu_fpunit_register_access_response_pipe_read_ack : out std_logic_vector(0 downto 0)); -- 
    -- 
  end component;
  -- 
end package dummy_fpunit_global_package;
-- VHDL produced by vc2vhdl from virtual circuit (vc) description 
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library aHiR_ieee_proposed;
use aHiR_ieee_proposed.math_utility_pkg.all;
use aHiR_ieee_proposed.fixed_pkg.all;
use aHiR_ieee_proposed.float_pkg.all;
library ahir;
use ahir.memory_subsystem_package.all;
use ahir.types.all;
use ahir.subprograms.all;
use ahir.components.all;
use ahir.basecomponents.all;
use ahir.operatorpackage.all;
use ahir.floatoperatorpackage.all;
use ahir.utilities.all;
library teu_dummy_fpunit;
use teu_dummy_fpunit.dummy_fpunit_global_package.all;
entity dummyFpunitCcuDaemon is -- 
  generic (tag_length : integer); 
  port ( -- 
    ccu_to_teu_fpunit_register_access_command_pipe_read_req : out  std_logic_vector(0 downto 0);
    ccu_to_teu_fpunit_register_access_command_pipe_read_ack : in   std_logic_vector(0 downto 0);
    ccu_to_teu_fpunit_register_access_command_pipe_read_data : in   std_logic_vector(39 downto 0);
    teu_to_ccu_fpunit_register_access_response_pipe_write_req : out  std_logic_vector(0 downto 0);
    teu_to_ccu_fpunit_register_access_response_pipe_write_ack : in   std_logic_vector(0 downto 0);
    teu_to_ccu_fpunit_register_access_response_pipe_write_data : out  std_logic_vector(32 downto 0);
    tag_in: in std_logic_vector(tag_length-1 downto 0);
    tag_out: out std_logic_vector(tag_length-1 downto 0) ;
    clk : in std_logic;
    reset : in std_logic;
    start_req : in std_logic;
    start_ack : out std_logic;
    fin_req : in std_logic;
    fin_ack   : out std_logic-- 
  );
  -- 
end entity dummyFpunitCcuDaemon;
architecture dummyFpunitCcuDaemon_arch of dummyFpunitCcuDaemon is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector((tag_length + 0)-1 downto 0);
  signal default_zero_sig: std_logic;
  signal in_buffer_write_req: std_logic;
  signal in_buffer_write_ack: std_logic;
  signal in_buffer_unload_req_symbol: Boolean;
  signal in_buffer_unload_ack_symbol: Boolean;
  signal out_buffer_data_in, out_buffer_data_out: std_logic_vector((tag_length + 0)-1 downto 0);
  signal out_buffer_read_req: std_logic;
  signal out_buffer_read_ack: std_logic;
  signal out_buffer_write_req_symbol: Boolean;
  signal out_buffer_write_ack_symbol: Boolean;
  signal tag_ub_out, tag_ilock_out: std_logic_vector(tag_length-1 downto 0);
  signal tag_push_req, tag_push_ack, tag_pop_req, tag_pop_ack: std_logic;
  signal tag_unload_req_symbol, tag_unload_ack_symbol, tag_write_req_symbol, tag_write_ack_symbol: Boolean;
  signal tag_ilock_write_req_symbol, tag_ilock_write_ack_symbol, tag_ilock_read_req_symbol, tag_ilock_read_ack_symbol: Boolean;
  signal start_req_sig, fin_req_sig, start_ack_sig, fin_ack_sig: std_logic; 
  signal input_sample_reenable_symbol: Boolean;
  -- input port buffer signals
  -- output port buffer signals
  signal dummyFpunitCcuDaemon_CP_0_start: Boolean;
  signal dummyFpunitCcuDaemon_CP_0_symbol: Boolean;
  -- volatile/operator module components. 
  -- links between control-path and data-path
  signal do_while_stmt_181_branch_req_0 : boolean;
  signal RPIPE_ccu_to_teu_fpunit_register_access_command_185_inst_req_0 : boolean;
  signal RPIPE_ccu_to_teu_fpunit_register_access_command_185_inst_ack_0 : boolean;
  signal RPIPE_ccu_to_teu_fpunit_register_access_command_185_inst_req_1 : boolean;
  signal RPIPE_ccu_to_teu_fpunit_register_access_command_185_inst_ack_1 : boolean;
  signal WPIPE_teu_to_ccu_fpunit_register_access_response_187_inst_req_0 : boolean;
  signal WPIPE_teu_to_ccu_fpunit_register_access_response_187_inst_ack_0 : boolean;
  signal WPIPE_teu_to_ccu_fpunit_register_access_response_187_inst_req_1 : boolean;
  signal WPIPE_teu_to_ccu_fpunit_register_access_response_187_inst_ack_1 : boolean;
  signal do_while_stmt_181_branch_ack_0 : boolean;
  signal do_while_stmt_181_branch_ack_1 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "dummyFpunitCcuDaemon_input_buffer", -- 
      buffer_size => 1,
      bypass_flag => false,
      data_width => tag_length + 0) -- 
    port map(write_req => in_buffer_write_req, -- 
      write_ack => in_buffer_write_ack, 
      write_data => in_buffer_data_in,
      unload_req => in_buffer_unload_req_symbol, 
      unload_ack => in_buffer_unload_ack_symbol, 
      read_data => in_buffer_data_out,
      clk => clk, reset => reset); -- 
  in_buffer_data_in(tag_length-1 downto 0) <= tag_in;
  tag_ub_out <= in_buffer_data_out(tag_length-1 downto 0);
  in_buffer_write_req <= start_req;
  start_ack <= in_buffer_write_ack;
  in_buffer_unload_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
    constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
    constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
    constant joinName: string(1 to 32) := "in_buffer_unload_req_symbol_join"; 
    signal preds: BooleanArray(1 to 2); -- 
  begin -- 
    preds <= in_buffer_unload_ack_symbol & input_sample_reenable_symbol;
    gj_in_buffer_unload_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => in_buffer_unload_req_symbol, clk => clk, reset => reset); --
  end block;
  -- join of all unload_ack_symbols.. used to trigger CP.
  dummyFpunitCcuDaemon_CP_0_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "dummyFpunitCcuDaemon_out_buffer", -- 
      buffer_size => 1,
      full_rate => false,
      data_width => tag_length + 0) --
    port map(write_req => out_buffer_write_req_symbol, -- 
      write_ack => out_buffer_write_ack_symbol, 
      write_data => out_buffer_data_in,
      read_req => out_buffer_read_req, 
      read_ack => out_buffer_read_ack, 
      read_data => out_buffer_data_out,
      clk => clk, reset => reset); -- 
  out_buffer_data_in(tag_length-1 downto 0) <= tag_ilock_out;
  tag_out <= out_buffer_data_out(tag_length-1 downto 0);
  out_buffer_write_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
    constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 0);
    constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 1,2 => 0);
    constant joinName: string(1 to 32) := "out_buffer_write_req_symbol_join"; 
    signal preds: BooleanArray(1 to 3); -- 
  begin -- 
    preds <= dummyFpunitCcuDaemon_CP_0_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
    gj_out_buffer_write_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => out_buffer_write_req_symbol, clk => clk, reset => reset); --
  end block;
  -- write-to output-buffer produces  reenable input sampling
  input_sample_reenable_symbol <= out_buffer_write_ack_symbol;
  -- fin-req/ack level protocol..
  out_buffer_read_req <= fin_req;
  fin_ack <= out_buffer_read_ack;
  ----- tag-queue --------------------------------------------------
  -- interlock buffer for TAG.. to provide required buffering.
  tagIlock: InterlockBuffer -- 
    generic map(name => "tag-interlock-buffer", -- 
      buffer_size => 1,
      bypass_flag => false,
      in_data_width => tag_length,
      out_data_width => tag_length) -- 
    port map(write_req => tag_ilock_write_req_symbol, -- 
      write_ack => tag_ilock_write_ack_symbol, 
      write_data => tag_ub_out,
      read_req => tag_ilock_read_req_symbol, 
      read_ack => tag_ilock_read_ack_symbol, 
      read_data => tag_ilock_out, 
      clk => clk, reset => reset); -- 
  -- tag ilock-buffer control logic. 
  tag_ilock_write_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
    constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
    constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
    constant joinName: string(1 to 31) := "tag_ilock_write_req_symbol_join"; 
    signal preds: BooleanArray(1 to 2); -- 
  begin -- 
    preds <= dummyFpunitCcuDaemon_CP_0_start & tag_ilock_write_ack_symbol;
    gj_tag_ilock_write_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_write_req_symbol, clk => clk, reset => reset); --
  end block;
  tag_ilock_read_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
    constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 1);
    constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
    constant joinName: string(1 to 30) := "tag_ilock_read_req_symbol_join"; 
    signal preds: BooleanArray(1 to 3); -- 
  begin -- 
    preds <= dummyFpunitCcuDaemon_CP_0_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  dummyFpunitCcuDaemon_CP_0: Block -- control-path 
    signal dummyFpunitCcuDaemon_CP_0_elements: BooleanArray(24 downto 0);
    -- 
  begin -- 
    dummyFpunitCcuDaemon_CP_0_elements(0) <= dummyFpunitCcuDaemon_CP_0_start;
    dummyFpunitCcuDaemon_CP_0_symbol <= dummyFpunitCcuDaemon_CP_0_elements(1);
    -- CP-element group 0:  transition  place  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	2 
    -- CP-element group 0:  members (4) 
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 branch_block_stmt_180/$entry
      -- CP-element group 0: 	 branch_block_stmt_180/branch_block_stmt_180__entry__
      -- CP-element group 0: 	 branch_block_stmt_180/do_while_stmt_181__entry__
      -- 
    -- CP-element group 1:  transition  place  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	24 
    -- CP-element group 1: successors 
    -- CP-element group 1:  members (4) 
      -- CP-element group 1: 	 $exit
      -- CP-element group 1: 	 branch_block_stmt_180/$exit
      -- CP-element group 1: 	 branch_block_stmt_180/branch_block_stmt_180__exit__
      -- CP-element group 1: 	 branch_block_stmt_180/do_while_stmt_181__exit__
      -- 
    dummyFpunitCcuDaemon_CP_0_elements(1) <= dummyFpunitCcuDaemon_CP_0_elements(24);
    -- CP-element group 2:  transition  place  bypass  pipeline-parent 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	0 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	8 
    -- CP-element group 2:  members (2) 
      -- CP-element group 2: 	 branch_block_stmt_180/do_while_stmt_181/$entry
      -- CP-element group 2: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181__entry__
      -- 
    dummyFpunitCcuDaemon_CP_0_elements(2) <= dummyFpunitCcuDaemon_CP_0_elements(0);
    -- CP-element group 3:  merge  place  bypass  pipeline-parent 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	24 
    -- CP-element group 3:  members (1) 
      -- CP-element group 3: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181__exit__
      -- 
    -- Element group dummyFpunitCcuDaemon_CP_0_elements(3) is bound as output of CP function.
    -- CP-element group 4:  merge  place  bypass  pipeline-parent 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	7 
    -- CP-element group 4:  members (1) 
      -- CP-element group 4: 	 branch_block_stmt_180/do_while_stmt_181/loop_back
      -- 
    -- Element group dummyFpunitCcuDaemon_CP_0_elements(4) is bound as output of CP function.
    -- CP-element group 5:  branch  transition  place  bypass  pipeline-parent 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	10 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	23 
    -- CP-element group 5: 	22 
    -- CP-element group 5:  members (3) 
      -- CP-element group 5: 	 branch_block_stmt_180/do_while_stmt_181/condition_done
      -- CP-element group 5: 	 branch_block_stmt_180/do_while_stmt_181/loop_exit/$entry
      -- CP-element group 5: 	 branch_block_stmt_180/do_while_stmt_181/loop_taken/$entry
      -- 
    dummyFpunitCcuDaemon_CP_0_elements(5) <= dummyFpunitCcuDaemon_CP_0_elements(10);
    -- CP-element group 6:  branch  place  bypass  pipeline-parent 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	21 
    -- CP-element group 6: successors 
    -- CP-element group 6:  members (1) 
      -- CP-element group 6: 	 branch_block_stmt_180/do_while_stmt_181/loop_body_done
      -- 
    dummyFpunitCcuDaemon_CP_0_elements(6) <= dummyFpunitCcuDaemon_CP_0_elements(21);
    -- CP-element group 7:  transition  bypass  pipeline-parent 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	4 
    -- CP-element group 7: successors 
    -- CP-element group 7:  members (1) 
      -- CP-element group 7: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/back_edge_to_loop_body
      -- 
    dummyFpunitCcuDaemon_CP_0_elements(7) <= dummyFpunitCcuDaemon_CP_0_elements(4);
    -- CP-element group 8:  transition  bypass  pipeline-parent 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	2 
    -- CP-element group 8: successors 
    -- CP-element group 8:  members (1) 
      -- CP-element group 8: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/first_time_through_loop_body
      -- 
    dummyFpunitCcuDaemon_CP_0_elements(8) <= dummyFpunitCcuDaemon_CP_0_elements(2);
    -- CP-element group 9:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	11 
    -- CP-element group 9: 	17 
    -- CP-element group 9: 	20 
    -- CP-element group 9: 	14 
    -- CP-element group 9:  members (5) 
      -- CP-element group 9: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/$entry
      -- CP-element group 9: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/loop_body_start
      -- CP-element group 9: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/aggregated_phi_update_req
      -- CP-element group 9: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/phi_stmt_183_sample_start_
      -- CP-element group 9: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/phi_stmt_183_update_start_
      -- 
    -- Element group dummyFpunitCcuDaemon_CP_0_elements(9) is bound as output of CP function.
    -- CP-element group 10:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	20 
    -- CP-element group 10: 	12 
    -- CP-element group 10: 	16 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	5 
    -- CP-element group 10:  members (1) 
      -- CP-element group 10: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/condition_evaluated
      -- 
    condition_evaluated_24_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " condition_evaluated_24_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyFpunitCcuDaemon_CP_0_elements(10), ack => do_while_stmt_181_branch_req_0); -- 
    dummyFpunitCcuDaemon_cp_element_group_10: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 40) := "dummyFpunitCcuDaemon_cp_element_group_10"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= dummyFpunitCcuDaemon_CP_0_elements(20) & dummyFpunitCcuDaemon_CP_0_elements(12) & dummyFpunitCcuDaemon_CP_0_elements(16);
      gj_dummyFpunitCcuDaemon_cp_element_group_10 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyFpunitCcuDaemon_CP_0_elements(10), clk => clk, reset => reset); --
    end block;
    -- CP-element group 11:  join  transition  bypass  pipeline-parent 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	9 
    -- CP-element group 11: marked-predecessors 
    -- CP-element group 11: 	16 
    -- CP-element group 11: successors 
    -- CP-element group 11: 	13 
    -- CP-element group 11:  members (1) 
      -- CP-element group 11: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/aggregated_phi_sample_req
      -- 
    dummyFpunitCcuDaemon_cp_element_group_11: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 40) := "dummyFpunitCcuDaemon_cp_element_group_11"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dummyFpunitCcuDaemon_CP_0_elements(9) & dummyFpunitCcuDaemon_CP_0_elements(16);
      gj_dummyFpunitCcuDaemon_cp_element_group_11 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyFpunitCcuDaemon_CP_0_elements(11), clk => clk, reset => reset); --
    end block;
    -- CP-element group 12:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	15 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	10 
    -- CP-element group 12:  members (1) 
      -- CP-element group 12: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/aggregated_phi_sample_ack_d
      -- 
    -- Element group dummyFpunitCcuDaemon_CP_0_elements(12) is a control-delay.
    cp_element_12_delay: control_delay_element  generic map(name => " 12_delay", delay_value => 1)  port map(req => dummyFpunitCcuDaemon_CP_0_elements(15), ack => dummyFpunitCcuDaemon_CP_0_elements(12), clk => clk, reset =>reset);
    -- CP-element group 13:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: 	11 
    -- CP-element group 13: marked-predecessors 
    -- CP-element group 13: 	16 
    -- CP-element group 13: successors 
    -- CP-element group 13: 	15 
    -- CP-element group 13:  members (3) 
      -- CP-element group 13: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/RPIPE_ccu_to_teu_fpunit_register_access_command_185_sample_start_
      -- CP-element group 13: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/RPIPE_ccu_to_teu_fpunit_register_access_command_185_Sample/$entry
      -- CP-element group 13: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/RPIPE_ccu_to_teu_fpunit_register_access_command_185_Sample/rr
      -- 
    rr_42_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_42_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyFpunitCcuDaemon_CP_0_elements(13), ack => RPIPE_ccu_to_teu_fpunit_register_access_command_185_inst_req_0); -- 
    dummyFpunitCcuDaemon_cp_element_group_13: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 40) := "dummyFpunitCcuDaemon_cp_element_group_13"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dummyFpunitCcuDaemon_CP_0_elements(11) & dummyFpunitCcuDaemon_CP_0_elements(16);
      gj_dummyFpunitCcuDaemon_cp_element_group_13 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyFpunitCcuDaemon_CP_0_elements(13), clk => clk, reset => reset); --
    end block;
    -- CP-element group 14:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: 	9 
    -- CP-element group 14: 	15 
    -- CP-element group 14: successors 
    -- CP-element group 14: 	16 
    -- CP-element group 14:  members (3) 
      -- CP-element group 14: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/RPIPE_ccu_to_teu_fpunit_register_access_command_185_update_start_
      -- CP-element group 14: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/RPIPE_ccu_to_teu_fpunit_register_access_command_185_Update/$entry
      -- CP-element group 14: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/RPIPE_ccu_to_teu_fpunit_register_access_command_185_Update/cr
      -- 
    cr_47_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_47_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyFpunitCcuDaemon_CP_0_elements(14), ack => RPIPE_ccu_to_teu_fpunit_register_access_command_185_inst_req_1); -- 
    dummyFpunitCcuDaemon_cp_element_group_14: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 40) := "dummyFpunitCcuDaemon_cp_element_group_14"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dummyFpunitCcuDaemon_CP_0_elements(9) & dummyFpunitCcuDaemon_CP_0_elements(15);
      gj_dummyFpunitCcuDaemon_cp_element_group_14 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyFpunitCcuDaemon_CP_0_elements(14), clk => clk, reset => reset); --
    end block;
    -- CP-element group 15:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: 	13 
    -- CP-element group 15: successors 
    -- CP-element group 15: 	12 
    -- CP-element group 15: 	21 
    -- CP-element group 15: 	14 
    -- CP-element group 15:  members (5) 
      -- CP-element group 15: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/aggregated_phi_sample_ack
      -- CP-element group 15: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/phi_stmt_183_sample_completed_
      -- CP-element group 15: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/RPIPE_ccu_to_teu_fpunit_register_access_command_185_sample_completed_
      -- CP-element group 15: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/RPIPE_ccu_to_teu_fpunit_register_access_command_185_Sample/$exit
      -- CP-element group 15: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/RPIPE_ccu_to_teu_fpunit_register_access_command_185_Sample/ra
      -- 
    ra_43_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 15_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ccu_to_teu_fpunit_register_access_command_185_inst_ack_0, ack => dummyFpunitCcuDaemon_CP_0_elements(15)); -- 
    -- CP-element group 16:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: 	14 
    -- CP-element group 16: successors 
    -- CP-element group 16: 	10 
    -- CP-element group 16: marked-successors 
    -- CP-element group 16: 	11 
    -- CP-element group 16: 	13 
    -- CP-element group 16:  members (5) 
      -- CP-element group 16: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/aggregated_phi_update_ack
      -- CP-element group 16: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/phi_stmt_183_update_completed_
      -- CP-element group 16: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/RPIPE_ccu_to_teu_fpunit_register_access_command_185_update_completed_
      -- CP-element group 16: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/RPIPE_ccu_to_teu_fpunit_register_access_command_185_Update/$exit
      -- CP-element group 16: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/RPIPE_ccu_to_teu_fpunit_register_access_command_185_Update/ca
      -- 
    ca_48_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 16_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ccu_to_teu_fpunit_register_access_command_185_inst_ack_1, ack => dummyFpunitCcuDaemon_CP_0_elements(16)); -- 
    -- CP-element group 17:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 17: predecessors 
    -- CP-element group 17: 	9 
    -- CP-element group 17: marked-predecessors 
    -- CP-element group 17: 	19 
    -- CP-element group 17: successors 
    -- CP-element group 17: 	18 
    -- CP-element group 17:  members (3) 
      -- CP-element group 17: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/WPIPE_teu_to_ccu_fpunit_register_access_response_187_sample_start_
      -- CP-element group 17: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/WPIPE_teu_to_ccu_fpunit_register_access_response_187_Sample/$entry
      -- CP-element group 17: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/WPIPE_teu_to_ccu_fpunit_register_access_response_187_Sample/req
      -- 
    req_56_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_56_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyFpunitCcuDaemon_CP_0_elements(17), ack => WPIPE_teu_to_ccu_fpunit_register_access_response_187_inst_req_0); -- 
    dummyFpunitCcuDaemon_cp_element_group_17: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 40) := "dummyFpunitCcuDaemon_cp_element_group_17"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dummyFpunitCcuDaemon_CP_0_elements(9) & dummyFpunitCcuDaemon_CP_0_elements(19);
      gj_dummyFpunitCcuDaemon_cp_element_group_17 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyFpunitCcuDaemon_CP_0_elements(17), clk => clk, reset => reset); --
    end block;
    -- CP-element group 18:  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 18: predecessors 
    -- CP-element group 18: 	17 
    -- CP-element group 18: successors 
    -- CP-element group 18: 	19 
    -- CP-element group 18:  members (6) 
      -- CP-element group 18: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/WPIPE_teu_to_ccu_fpunit_register_access_response_187_sample_completed_
      -- CP-element group 18: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/WPIPE_teu_to_ccu_fpunit_register_access_response_187_update_start_
      -- CP-element group 18: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/WPIPE_teu_to_ccu_fpunit_register_access_response_187_Sample/$exit
      -- CP-element group 18: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/WPIPE_teu_to_ccu_fpunit_register_access_response_187_Sample/ack
      -- CP-element group 18: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/WPIPE_teu_to_ccu_fpunit_register_access_response_187_Update/$entry
      -- CP-element group 18: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/WPIPE_teu_to_ccu_fpunit_register_access_response_187_Update/req
      -- 
    ack_57_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 18_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_to_ccu_fpunit_register_access_response_187_inst_ack_0, ack => dummyFpunitCcuDaemon_CP_0_elements(18)); -- 
    req_61_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_61_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyFpunitCcuDaemon_CP_0_elements(18), ack => WPIPE_teu_to_ccu_fpunit_register_access_response_187_inst_req_1); -- 
    -- CP-element group 19:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 19: predecessors 
    -- CP-element group 19: 	18 
    -- CP-element group 19: successors 
    -- CP-element group 19: 	21 
    -- CP-element group 19: marked-successors 
    -- CP-element group 19: 	17 
    -- CP-element group 19:  members (3) 
      -- CP-element group 19: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/WPIPE_teu_to_ccu_fpunit_register_access_response_187_update_completed_
      -- CP-element group 19: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/WPIPE_teu_to_ccu_fpunit_register_access_response_187_Update/$exit
      -- CP-element group 19: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/WPIPE_teu_to_ccu_fpunit_register_access_response_187_Update/ack
      -- 
    ack_62_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 19_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_to_ccu_fpunit_register_access_response_187_inst_ack_1, ack => dummyFpunitCcuDaemon_CP_0_elements(19)); -- 
    -- CP-element group 20:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 20: predecessors 
    -- CP-element group 20: 	9 
    -- CP-element group 20: successors 
    -- CP-element group 20: 	10 
    -- CP-element group 20:  members (1) 
      -- CP-element group 20: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/loop_body_delay_to_condition_start
      -- 
    -- Element group dummyFpunitCcuDaemon_CP_0_elements(20) is a control-delay.
    cp_element_20_delay: control_delay_element  generic map(name => " 20_delay", delay_value => 1)  port map(req => dummyFpunitCcuDaemon_CP_0_elements(9), ack => dummyFpunitCcuDaemon_CP_0_elements(20), clk => clk, reset =>reset);
    -- CP-element group 21:  join  transition  bypass  pipeline-parent 
    -- CP-element group 21: predecessors 
    -- CP-element group 21: 	19 
    -- CP-element group 21: 	15 
    -- CP-element group 21: successors 
    -- CP-element group 21: 	6 
    -- CP-element group 21:  members (1) 
      -- CP-element group 21: 	 branch_block_stmt_180/do_while_stmt_181/do_while_stmt_181_loop_body/$exit
      -- 
    dummyFpunitCcuDaemon_cp_element_group_21: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 40) := "dummyFpunitCcuDaemon_cp_element_group_21"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dummyFpunitCcuDaemon_CP_0_elements(19) & dummyFpunitCcuDaemon_CP_0_elements(15);
      gj_dummyFpunitCcuDaemon_cp_element_group_21 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyFpunitCcuDaemon_CP_0_elements(21), clk => clk, reset => reset); --
    end block;
    -- CP-element group 22:  transition  input  bypass  pipeline-parent 
    -- CP-element group 22: predecessors 
    -- CP-element group 22: 	5 
    -- CP-element group 22: successors 
    -- CP-element group 22:  members (2) 
      -- CP-element group 22: 	 branch_block_stmt_180/do_while_stmt_181/loop_exit/$exit
      -- CP-element group 22: 	 branch_block_stmt_180/do_while_stmt_181/loop_exit/ack
      -- 
    ack_67_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 22_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_181_branch_ack_0, ack => dummyFpunitCcuDaemon_CP_0_elements(22)); -- 
    -- CP-element group 23:  transition  input  bypass  pipeline-parent 
    -- CP-element group 23: predecessors 
    -- CP-element group 23: 	5 
    -- CP-element group 23: successors 
    -- CP-element group 23:  members (2) 
      -- CP-element group 23: 	 branch_block_stmt_180/do_while_stmt_181/loop_taken/$exit
      -- CP-element group 23: 	 branch_block_stmt_180/do_while_stmt_181/loop_taken/ack
      -- 
    ack_71_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 23_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_181_branch_ack_1, ack => dummyFpunitCcuDaemon_CP_0_elements(23)); -- 
    -- CP-element group 24:  transition  bypass  pipeline-parent 
    -- CP-element group 24: predecessors 
    -- CP-element group 24: 	3 
    -- CP-element group 24: successors 
    -- CP-element group 24: 	1 
    -- CP-element group 24:  members (1) 
      -- CP-element group 24: 	 branch_block_stmt_180/do_while_stmt_181/$exit
      -- 
    dummyFpunitCcuDaemon_CP_0_elements(24) <= dummyFpunitCcuDaemon_CP_0_elements(3);
    dummyFpunitCcuDaemon_do_while_stmt_181_terminator_72: loop_terminator -- 
      generic map (name => " dummyFpunitCcuDaemon_do_while_stmt_181_terminator_72", max_iterations_in_flight =>1) 
      port map(loop_body_exit => dummyFpunitCcuDaemon_CP_0_elements(6),loop_continue => dummyFpunitCcuDaemon_CP_0_elements(23),loop_terminate => dummyFpunitCcuDaemon_CP_0_elements(22),loop_back => dummyFpunitCcuDaemon_CP_0_elements(4),loop_exit => dummyFpunitCcuDaemon_CP_0_elements(3),clk => clk, reset => reset); -- 
    entry_tmerge_25_block : block -- 
      signal preds : BooleanArray(0 to 1);
      begin -- 
        preds(0)  <= dummyFpunitCcuDaemon_CP_0_elements(7);
        preds(1)  <= dummyFpunitCcuDaemon_CP_0_elements(8);
        entry_tmerge_25 : transition_merge -- 
          generic map(name => " entry_tmerge_25")
          port map (preds => preds, symbol_out => dummyFpunitCcuDaemon_CP_0_elements(9));
          -- 
    end block;
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal RPIPE_ccu_to_teu_fpunit_register_access_command_185_wire : std_logic_vector(39 downto 0);
    signal ccu_command_183 : std_logic_vector(39 downto 0);
    signal konst_188_wire_constant : std_logic_vector(32 downto 0);
    signal konst_191_wire_constant : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    konst_188_wire_constant <= "000000000000000000000000000000000";
    konst_191_wire_constant <= "1";
    -- interlock ssrc_phi_stmt_183
    process(RPIPE_ccu_to_teu_fpunit_register_access_command_185_wire) -- 
      variable tmp_var : std_logic_vector(39 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 39 downto 0) := RPIPE_ccu_to_teu_fpunit_register_access_command_185_wire(39 downto 0);
      ccu_command_183 <= tmp_var; -- 
    end process;
    do_while_stmt_181_branch: Block -- 
      -- branch-block
      signal condition_sig : std_logic_vector(0 downto 0);
      begin 
      condition_sig <= konst_191_wire_constant;
      branch_instance: BranchBase -- 
        generic map( name => "do_while_stmt_181_branch", condition_width => 1,  bypass_flag => true)
        port map( -- 
          condition => condition_sig,
          req => do_while_stmt_181_branch_req_0,
          ack0 => do_while_stmt_181_branch_ack_0,
          ack1 => do_while_stmt_181_branch_ack_1,
          clk => clk,
          reset => reset); -- 
      --
    end Block; -- branch-block
    -- shared inport operator group (0) : RPIPE_ccu_to_teu_fpunit_register_access_command_185_inst 
    InportGroup_0: Block -- 
      signal data_out: std_logic_vector(39 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_ccu_to_teu_fpunit_register_access_command_185_inst_req_0;
      RPIPE_ccu_to_teu_fpunit_register_access_command_185_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_ccu_to_teu_fpunit_register_access_command_185_inst_req_1;
      RPIPE_ccu_to_teu_fpunit_register_access_command_185_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      RPIPE_ccu_to_teu_fpunit_register_access_command_185_wire <= data_out(39 downto 0);
      ccu_to_teu_fpunit_register_access_command_read_0_gI: SplitGuardInterface generic map(name => "ccu_to_teu_fpunit_register_access_command_read_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL,
        sa_in => ackL,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      ccu_to_teu_fpunit_register_access_command_read_0: InputPort_P2P -- 
        generic map ( name => "ccu_to_teu_fpunit_register_access_command_read_0", data_width => 40,    bypass_flag => false,   	nonblocking_read_flag => true,  barrier_flag => false,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => ccu_to_teu_fpunit_register_access_command_pipe_read_req(0),
          oack => ccu_to_teu_fpunit_register_access_command_pipe_read_ack(0),
          odata => ccu_to_teu_fpunit_register_access_command_pipe_read_data(39 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 0
    -- shared outport operator group (0) : WPIPE_teu_to_ccu_fpunit_register_access_response_187_inst 
    OutportGroup_0: Block -- 
      signal data_in: std_logic_vector(32 downto 0);
      signal sample_req, sample_ack : BooleanArray( 0 downto 0);
      signal update_req, update_ack : BooleanArray( 0 downto 0);
      signal sample_req_unguarded, sample_ack_unguarded : BooleanArray( 0 downto 0);
      signal update_req_unguarded, update_ack_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      sample_req_unguarded(0) <= WPIPE_teu_to_ccu_fpunit_register_access_response_187_inst_req_0;
      WPIPE_teu_to_ccu_fpunit_register_access_response_187_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_teu_to_ccu_fpunit_register_access_response_187_inst_req_1;
      WPIPE_teu_to_ccu_fpunit_register_access_response_187_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= konst_188_wire_constant;
      teu_to_ccu_fpunit_register_access_response_write_0_gI: SplitGuardInterface generic map(name => "teu_to_ccu_fpunit_register_access_response_write_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => sample_req_unguarded,
        sr_out => sample_req,
        sa_in => sample_ack,
        sa_out => sample_ack_unguarded,
        cr_in => update_req_unguarded,
        cr_out => update_req,
        ca_in => update_ack,
        ca_out => update_ack_unguarded,
        guards => guard_vector); -- 
      teu_to_ccu_fpunit_register_access_response_write_0: OutputPortRevised -- 
        generic map ( name => "teu_to_ccu_fpunit_register_access_response", data_width => 33, num_reqs => 1, input_buffering => inBUFs, full_rate => false,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => teu_to_ccu_fpunit_register_access_response_pipe_write_req(0),
          oack => teu_to_ccu_fpunit_register_access_response_pipe_write_ack(0),
          odata => teu_to_ccu_fpunit_register_access_response_pipe_write_data(32 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    -- 
  end Block; -- data_path
  -- 
end dummyFpunitCcuDaemon_arch;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library aHiR_ieee_proposed;
use aHiR_ieee_proposed.math_utility_pkg.all;
use aHiR_ieee_proposed.fixed_pkg.all;
use aHiR_ieee_proposed.float_pkg.all;
library ahir;
use ahir.memory_subsystem_package.all;
use ahir.types.all;
use ahir.subprograms.all;
use ahir.components.all;
use ahir.basecomponents.all;
use ahir.operatorpackage.all;
use ahir.floatoperatorpackage.all;
use ahir.utilities.all;
library teu_dummy_fpunit;
use teu_dummy_fpunit.dummy_fpunit_global_package.all;
entity dummyFpunitDaemon is -- 
  generic (tag_length : integer); 
  port ( -- 
    NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_req : out  std_logic_vector(0 downto 0);
    NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_ack : in   std_logic_vector(0 downto 0);
    NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_data : in   std_logic_vector(92 downto 0);
    noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_req : out  std_logic_vector(0 downto 0);
    noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_ack : in   std_logic_vector(0 downto 0);
    noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_data : in   std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_req : out  std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_ack : in   std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_data : in   std_logic_vector(0 downto 0);
    teu_iunit_trap_to_fpunit_pipe_read_req : out  std_logic_vector(0 downto 0);
    teu_iunit_trap_to_fpunit_pipe_read_ack : in   std_logic_vector(0 downto 0);
    teu_iunit_trap_to_fpunit_pipe_read_data : in   std_logic_vector(12 downto 0);
    teu_loadstore_to_fpunit_pipe_read_req : out  std_logic_vector(0 downto 0);
    teu_loadstore_to_fpunit_pipe_read_ack : in   std_logic_vector(0 downto 0);
    teu_loadstore_to_fpunit_pipe_read_data : in   std_logic_vector(77 downto 0);
    teu_stream_corrector_to_fpunit_pipe_read_req : out  std_logic_vector(0 downto 0);
    teu_stream_corrector_to_fpunit_pipe_read_ack : in   std_logic_vector(0 downto 0);
    teu_stream_corrector_to_fpunit_pipe_read_data : in   std_logic_vector(17 downto 0);
    teu_fpunit_cc_to_stream_corrector_pipe_write_req : out  std_logic_vector(0 downto 0);
    teu_fpunit_cc_to_stream_corrector_pipe_write_ack : in   std_logic_vector(0 downto 0);
    teu_fpunit_cc_to_stream_corrector_pipe_write_data : out  std_logic_vector(14 downto 0);
    teu_fpunit_register_file_to_loadstore_pipe_write_req : out  std_logic_vector(0 downto 0);
    teu_fpunit_register_file_to_loadstore_pipe_write_ack : in   std_logic_vector(0 downto 0);
    teu_fpunit_register_file_to_loadstore_pipe_write_data : out  std_logic_vector(76 downto 0);
    teu_fpunit_to_iretire_pipe_write_req : out  std_logic_vector(0 downto 0);
    teu_fpunit_to_iretire_pipe_write_ack : in   std_logic_vector(0 downto 0);
    teu_fpunit_to_iretire_pipe_write_data : out  std_logic_vector(50 downto 0);
    teu_fpunit_trap_to_iunit_pipe_write_req : out  std_logic_vector(0 downto 0);
    teu_fpunit_trap_to_iunit_pipe_write_ack : in   std_logic_vector(0 downto 0);
    teu_fpunit_trap_to_iunit_pipe_write_data : out  std_logic_vector(12 downto 0);
    teu_fpunit_trap_to_loadstore_pipe_write_req : out  std_logic_vector(0 downto 0);
    teu_fpunit_trap_to_loadstore_pipe_write_ack : in   std_logic_vector(0 downto 0);
    teu_fpunit_trap_to_loadstore_pipe_write_data : out  std_logic_vector(12 downto 0);
    tag_in: in std_logic_vector(tag_length-1 downto 0);
    tag_out: out std_logic_vector(tag_length-1 downto 0) ;
    clk : in std_logic;
    reset : in std_logic;
    start_req : in std_logic;
    start_ack : out std_logic;
    fin_req : in std_logic;
    fin_ack   : out std_logic-- 
  );
  -- 
end entity dummyFpunitDaemon;
architecture dummyFpunitDaemon_arch of dummyFpunitDaemon is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector((tag_length + 0)-1 downto 0);
  signal default_zero_sig: std_logic;
  signal in_buffer_write_req: std_logic;
  signal in_buffer_write_ack: std_logic;
  signal in_buffer_unload_req_symbol: Boolean;
  signal in_buffer_unload_ack_symbol: Boolean;
  signal out_buffer_data_in, out_buffer_data_out: std_logic_vector((tag_length + 0)-1 downto 0);
  signal out_buffer_read_req: std_logic;
  signal out_buffer_read_ack: std_logic;
  signal out_buffer_write_req_symbol: Boolean;
  signal out_buffer_write_ack_symbol: Boolean;
  signal tag_ub_out, tag_ilock_out: std_logic_vector(tag_length-1 downto 0);
  signal tag_push_req, tag_push_ack, tag_pop_req, tag_pop_ack: std_logic;
  signal tag_unload_req_symbol, tag_unload_ack_symbol, tag_write_req_symbol, tag_write_ack_symbol: Boolean;
  signal tag_ilock_write_req_symbol, tag_ilock_write_ack_symbol, tag_ilock_read_req_symbol, tag_ilock_read_ack_symbol: Boolean;
  signal start_req_sig, fin_req_sig, start_ack_sig, fin_ack_sig: std_logic; 
  signal input_sample_reenable_symbol: Boolean;
  -- input port buffer signals
  -- output port buffer signals
  signal dummyFpunitDaemon_CP_73_start: Boolean;
  signal dummyFpunitDaemon_CP_73_symbol: Boolean;
  -- volatile/operator module components. 
  -- links between control-path and data-path
  signal nX_211_200_buf_req_1 : boolean;
  signal nX_211_200_buf_ack_1 : boolean;
  signal do_while_stmt_196_branch_req_0 : boolean;
  signal phi_stmt_198_req_0 : boolean;
  signal phi_stmt_198_req_1 : boolean;
  signal phi_stmt_198_ack_0 : boolean;
  signal nX_211_200_buf_req_0 : boolean;
  signal nX_211_200_buf_ack_0 : boolean;
  signal RPIPE_NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_205_inst_req_0 : boolean;
  signal RPIPE_NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_205_inst_ack_0 : boolean;
  signal RPIPE_NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_205_inst_req_1 : boolean;
  signal RPIPE_NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_205_inst_ack_1 : boolean;
  signal do_while_stmt_196_branch_ack_0 : boolean;
  signal do_while_stmt_196_branch_ack_1 : boolean;
  signal RPIPE_teu_loadstore_to_fpunit_216_inst_req_0 : boolean;
  signal RPIPE_teu_loadstore_to_fpunit_216_inst_ack_0 : boolean;
  signal RPIPE_teu_loadstore_to_fpunit_216_inst_req_1 : boolean;
  signal RPIPE_teu_loadstore_to_fpunit_216_inst_ack_1 : boolean;
  signal RPIPE_teu_stream_corrector_to_fpunit_219_inst_req_0 : boolean;
  signal RPIPE_teu_stream_corrector_to_fpunit_219_inst_ack_0 : boolean;
  signal RPIPE_teu_stream_corrector_to_fpunit_219_inst_req_1 : boolean;
  signal RPIPE_teu_stream_corrector_to_fpunit_219_inst_ack_1 : boolean;
  signal RPIPE_teu_iunit_trap_to_fpunit_222_inst_req_0 : boolean;
  signal RPIPE_teu_iunit_trap_to_fpunit_222_inst_ack_0 : boolean;
  signal RPIPE_teu_iunit_trap_to_fpunit_222_inst_req_1 : boolean;
  signal RPIPE_teu_iunit_trap_to_fpunit_222_inst_ack_1 : boolean;
  signal RPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_225_inst_req_0 : boolean;
  signal RPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_225_inst_ack_0 : boolean;
  signal RPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_225_inst_req_1 : boolean;
  signal RPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_225_inst_ack_1 : boolean;
  signal RPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_228_inst_req_0 : boolean;
  signal RPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_228_inst_ack_0 : boolean;
  signal RPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_228_inst_req_1 : boolean;
  signal RPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_228_inst_ack_1 : boolean;
  signal WPIPE_teu_fpunit_to_iretire_230_inst_req_0 : boolean;
  signal WPIPE_teu_fpunit_to_iretire_230_inst_ack_0 : boolean;
  signal WPIPE_teu_fpunit_to_iretire_230_inst_req_1 : boolean;
  signal WPIPE_teu_fpunit_to_iretire_230_inst_ack_1 : boolean;
  signal WPIPE_teu_fpunit_cc_to_stream_corrector_233_inst_req_0 : boolean;
  signal WPIPE_teu_fpunit_cc_to_stream_corrector_233_inst_ack_0 : boolean;
  signal WPIPE_teu_fpunit_cc_to_stream_corrector_233_inst_req_1 : boolean;
  signal WPIPE_teu_fpunit_cc_to_stream_corrector_233_inst_ack_1 : boolean;
  signal WPIPE_teu_fpunit_register_file_to_loadstore_236_inst_req_0 : boolean;
  signal WPIPE_teu_fpunit_register_file_to_loadstore_236_inst_ack_0 : boolean;
  signal WPIPE_teu_fpunit_register_file_to_loadstore_236_inst_req_1 : boolean;
  signal WPIPE_teu_fpunit_register_file_to_loadstore_236_inst_ack_1 : boolean;
  signal WPIPE_teu_fpunit_trap_to_iunit_239_inst_req_0 : boolean;
  signal WPIPE_teu_fpunit_trap_to_iunit_239_inst_ack_0 : boolean;
  signal WPIPE_teu_fpunit_trap_to_iunit_239_inst_req_1 : boolean;
  signal WPIPE_teu_fpunit_trap_to_iunit_239_inst_ack_1 : boolean;
  signal WPIPE_teu_fpunit_trap_to_loadstore_242_inst_req_0 : boolean;
  signal WPIPE_teu_fpunit_trap_to_loadstore_242_inst_ack_0 : boolean;
  signal WPIPE_teu_fpunit_trap_to_loadstore_242_inst_req_1 : boolean;
  signal WPIPE_teu_fpunit_trap_to_loadstore_242_inst_ack_1 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "dummyFpunitDaemon_input_buffer", -- 
      buffer_size => 1,
      bypass_flag => false,
      data_width => tag_length + 0) -- 
    port map(write_req => in_buffer_write_req, -- 
      write_ack => in_buffer_write_ack, 
      write_data => in_buffer_data_in,
      unload_req => in_buffer_unload_req_symbol, 
      unload_ack => in_buffer_unload_ack_symbol, 
      read_data => in_buffer_data_out,
      clk => clk, reset => reset); -- 
  in_buffer_data_in(tag_length-1 downto 0) <= tag_in;
  tag_ub_out <= in_buffer_data_out(tag_length-1 downto 0);
  in_buffer_write_req <= start_req;
  start_ack <= in_buffer_write_ack;
  in_buffer_unload_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
    constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
    constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
    constant joinName: string(1 to 32) := "in_buffer_unload_req_symbol_join"; 
    signal preds: BooleanArray(1 to 2); -- 
  begin -- 
    preds <= in_buffer_unload_ack_symbol & input_sample_reenable_symbol;
    gj_in_buffer_unload_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => in_buffer_unload_req_symbol, clk => clk, reset => reset); --
  end block;
  -- join of all unload_ack_symbols.. used to trigger CP.
  dummyFpunitDaemon_CP_73_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "dummyFpunitDaemon_out_buffer", -- 
      buffer_size => 1,
      full_rate => false,
      data_width => tag_length + 0) --
    port map(write_req => out_buffer_write_req_symbol, -- 
      write_ack => out_buffer_write_ack_symbol, 
      write_data => out_buffer_data_in,
      read_req => out_buffer_read_req, 
      read_ack => out_buffer_read_ack, 
      read_data => out_buffer_data_out,
      clk => clk, reset => reset); -- 
  out_buffer_data_in(tag_length-1 downto 0) <= tag_ilock_out;
  tag_out <= out_buffer_data_out(tag_length-1 downto 0);
  out_buffer_write_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
    constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 0);
    constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 1,2 => 0);
    constant joinName: string(1 to 32) := "out_buffer_write_req_symbol_join"; 
    signal preds: BooleanArray(1 to 3); -- 
  begin -- 
    preds <= dummyFpunitDaemon_CP_73_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
    gj_out_buffer_write_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => out_buffer_write_req_symbol, clk => clk, reset => reset); --
  end block;
  -- write-to output-buffer produces  reenable input sampling
  input_sample_reenable_symbol <= out_buffer_write_ack_symbol;
  -- fin-req/ack level protocol..
  out_buffer_read_req <= fin_req;
  fin_ack <= out_buffer_read_ack;
  ----- tag-queue --------------------------------------------------
  -- interlock buffer for TAG.. to provide required buffering.
  tagIlock: InterlockBuffer -- 
    generic map(name => "tag-interlock-buffer", -- 
      buffer_size => 1,
      bypass_flag => false,
      in_data_width => tag_length,
      out_data_width => tag_length) -- 
    port map(write_req => tag_ilock_write_req_symbol, -- 
      write_ack => tag_ilock_write_ack_symbol, 
      write_data => tag_ub_out,
      read_req => tag_ilock_read_req_symbol, 
      read_ack => tag_ilock_read_ack_symbol, 
      read_data => tag_ilock_out, 
      clk => clk, reset => reset); -- 
  -- tag ilock-buffer control logic. 
  tag_ilock_write_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
    constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
    constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
    constant joinName: string(1 to 31) := "tag_ilock_write_req_symbol_join"; 
    signal preds: BooleanArray(1 to 2); -- 
  begin -- 
    preds <= dummyFpunitDaemon_CP_73_start & tag_ilock_write_ack_symbol;
    gj_tag_ilock_write_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_write_req_symbol, clk => clk, reset => reset); --
  end block;
  tag_ilock_read_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
    constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 1);
    constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
    constant joinName: string(1 to 30) := "tag_ilock_read_req_symbol_join"; 
    signal preds: BooleanArray(1 to 3); -- 
  begin -- 
    preds <= dummyFpunitDaemon_CP_73_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  dummyFpunitDaemon_CP_73: Block -- control-path 
    signal dummyFpunitDaemon_CP_73_elements: BooleanArray(61 downto 0);
    -- 
  begin -- 
    dummyFpunitDaemon_CP_73_elements(0) <= dummyFpunitDaemon_CP_73_start;
    dummyFpunitDaemon_CP_73_symbol <= dummyFpunitDaemon_CP_73_elements(61);
    -- CP-element group 0:  transition  place  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	2 
    -- CP-element group 0:  members (4) 
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 branch_block_stmt_195/$entry
      -- CP-element group 0: 	 branch_block_stmt_195/branch_block_stmt_195__entry__
      -- CP-element group 0: 	 branch_block_stmt_195/do_while_stmt_196__entry__
      -- 
    -- CP-element group 1:  fork  transition  place  output  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	40 
    -- CP-element group 1: successors 
    -- CP-element group 1: 	45 
    -- CP-element group 1: 	47 
    -- CP-element group 1: 	55 
    -- CP-element group 1: 	41 
    -- CP-element group 1: 	51 
    -- CP-element group 1: 	43 
    -- CP-element group 1: 	57 
    -- CP-element group 1: 	49 
    -- CP-element group 1: 	59 
    -- CP-element group 1: 	53 
    -- CP-element group 1:  members (34) 
      -- CP-element group 1: 	 branch_block_stmt_195/$exit
      -- CP-element group 1: 	 branch_block_stmt_195/branch_block_stmt_195__exit__
      -- CP-element group 1: 	 branch_block_stmt_195/do_while_stmt_196__exit__
      -- CP-element group 1: 	 assign_stmt_217_to_assign_stmt_244/$entry
      -- CP-element group 1: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_teu_loadstore_to_fpunit_216_sample_start_
      -- CP-element group 1: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_teu_loadstore_to_fpunit_216_Sample/$entry
      -- CP-element group 1: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_teu_loadstore_to_fpunit_216_Sample/rr
      -- CP-element group 1: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_teu_stream_corrector_to_fpunit_219_sample_start_
      -- CP-element group 1: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_teu_stream_corrector_to_fpunit_219_Sample/$entry
      -- CP-element group 1: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_teu_stream_corrector_to_fpunit_219_Sample/rr
      -- CP-element group 1: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_teu_iunit_trap_to_fpunit_222_sample_start_
      -- CP-element group 1: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_teu_iunit_trap_to_fpunit_222_Sample/$entry
      -- CP-element group 1: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_teu_iunit_trap_to_fpunit_222_Sample/rr
      -- CP-element group 1: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_225_sample_start_
      -- CP-element group 1: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_225_Sample/$entry
      -- CP-element group 1: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_225_Sample/rr
      -- CP-element group 1: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_228_sample_start_
      -- CP-element group 1: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_228_Sample/$entry
      -- CP-element group 1: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_228_Sample/rr
      -- CP-element group 1: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_to_iretire_230_sample_start_
      -- CP-element group 1: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_to_iretire_230_Sample/$entry
      -- CP-element group 1: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_to_iretire_230_Sample/req
      -- CP-element group 1: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_cc_to_stream_corrector_233_sample_start_
      -- CP-element group 1: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_cc_to_stream_corrector_233_Sample/$entry
      -- CP-element group 1: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_cc_to_stream_corrector_233_Sample/req
      -- CP-element group 1: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_register_file_to_loadstore_236_sample_start_
      -- CP-element group 1: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_register_file_to_loadstore_236_Sample/$entry
      -- CP-element group 1: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_register_file_to_loadstore_236_Sample/req
      -- CP-element group 1: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_trap_to_iunit_239_sample_start_
      -- CP-element group 1: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_trap_to_iunit_239_Sample/$entry
      -- CP-element group 1: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_trap_to_iunit_239_Sample/req
      -- CP-element group 1: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_trap_to_loadstore_242_sample_start_
      -- CP-element group 1: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_trap_to_loadstore_242_Sample/$entry
      -- CP-element group 1: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_trap_to_loadstore_242_Sample/req
      -- 
    rr_186_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_186_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyFpunitDaemon_CP_73_elements(1), ack => RPIPE_teu_loadstore_to_fpunit_216_inst_req_0); -- 
    rr_200_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_200_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyFpunitDaemon_CP_73_elements(1), ack => RPIPE_teu_stream_corrector_to_fpunit_219_inst_req_0); -- 
    rr_214_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_214_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyFpunitDaemon_CP_73_elements(1), ack => RPIPE_teu_iunit_trap_to_fpunit_222_inst_req_0); -- 
    rr_228_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_228_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyFpunitDaemon_CP_73_elements(1), ack => RPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_225_inst_req_0); -- 
    rr_242_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_242_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyFpunitDaemon_CP_73_elements(1), ack => RPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_228_inst_req_0); -- 
    req_256_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_256_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyFpunitDaemon_CP_73_elements(1), ack => WPIPE_teu_fpunit_to_iretire_230_inst_req_0); -- 
    req_270_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_270_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyFpunitDaemon_CP_73_elements(1), ack => WPIPE_teu_fpunit_cc_to_stream_corrector_233_inst_req_0); -- 
    req_284_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_284_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyFpunitDaemon_CP_73_elements(1), ack => WPIPE_teu_fpunit_register_file_to_loadstore_236_inst_req_0); -- 
    req_298_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_298_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyFpunitDaemon_CP_73_elements(1), ack => WPIPE_teu_fpunit_trap_to_iunit_239_inst_req_0); -- 
    req_312_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_312_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyFpunitDaemon_CP_73_elements(1), ack => WPIPE_teu_fpunit_trap_to_loadstore_242_inst_req_0); -- 
    dummyFpunitDaemon_CP_73_elements(1) <= dummyFpunitDaemon_CP_73_elements(40);
    -- CP-element group 2:  transition  place  bypass  pipeline-parent 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	0 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	8 
    -- CP-element group 2:  members (2) 
      -- CP-element group 2: 	 branch_block_stmt_195/do_while_stmt_196/$entry
      -- CP-element group 2: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196__entry__
      -- 
    dummyFpunitDaemon_CP_73_elements(2) <= dummyFpunitDaemon_CP_73_elements(0);
    -- CP-element group 3:  merge  place  bypass  pipeline-parent 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	40 
    -- CP-element group 3:  members (1) 
      -- CP-element group 3: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196__exit__
      -- 
    -- Element group dummyFpunitDaemon_CP_73_elements(3) is bound as output of CP function.
    -- CP-element group 4:  merge  place  bypass  pipeline-parent 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	7 
    -- CP-element group 4:  members (1) 
      -- CP-element group 4: 	 branch_block_stmt_195/do_while_stmt_196/loop_back
      -- 
    -- Element group dummyFpunitDaemon_CP_73_elements(4) is bound as output of CP function.
    -- CP-element group 5:  branch  transition  place  bypass  pipeline-parent 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	10 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	38 
    -- CP-element group 5: 	39 
    -- CP-element group 5:  members (3) 
      -- CP-element group 5: 	 branch_block_stmt_195/do_while_stmt_196/condition_done
      -- CP-element group 5: 	 branch_block_stmt_195/do_while_stmt_196/loop_exit/$entry
      -- CP-element group 5: 	 branch_block_stmt_195/do_while_stmt_196/loop_taken/$entry
      -- 
    dummyFpunitDaemon_CP_73_elements(5) <= dummyFpunitDaemon_CP_73_elements(10);
    -- CP-element group 6:  branch  place  bypass  pipeline-parent 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	12 
    -- CP-element group 6: successors 
    -- CP-element group 6:  members (1) 
      -- CP-element group 6: 	 branch_block_stmt_195/do_while_stmt_196/loop_body_done
      -- 
    dummyFpunitDaemon_CP_73_elements(6) <= dummyFpunitDaemon_CP_73_elements(12);
    -- CP-element group 7:  transition  bypass  pipeline-parent 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	4 
    -- CP-element group 7: successors 
    -- CP-element group 7: 	20 
    -- CP-element group 7:  members (1) 
      -- CP-element group 7: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/back_edge_to_loop_body
      -- 
    dummyFpunitDaemon_CP_73_elements(7) <= dummyFpunitDaemon_CP_73_elements(4);
    -- CP-element group 8:  transition  bypass  pipeline-parent 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	2 
    -- CP-element group 8: successors 
    -- CP-element group 8: 	22 
    -- CP-element group 8:  members (1) 
      -- CP-element group 8: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/first_time_through_loop_body
      -- 
    dummyFpunitDaemon_CP_73_elements(8) <= dummyFpunitDaemon_CP_73_elements(2);
    -- CP-element group 9:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	11 
    -- CP-element group 9: 	37 
    -- CP-element group 9: 	17 
    -- CP-element group 9: 	16 
    -- CP-element group 9: 	14 
    -- CP-element group 9:  members (4) 
      -- CP-element group 9: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/$entry
      -- CP-element group 9: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/loop_body_start
      -- CP-element group 9: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/phi_stmt_203_sample_start_
      -- CP-element group 9: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/phi_stmt_203_update_start_
      -- 
    -- Element group dummyFpunitDaemon_CP_73_elements(9) is bound as output of CP function.
    -- CP-element group 10:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	37 
    -- CP-element group 10: 	15 
    -- CP-element group 10: 	13 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	5 
    -- CP-element group 10:  members (1) 
      -- CP-element group 10: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/condition_evaluated
      -- 
    condition_evaluated_97_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " condition_evaluated_97_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyFpunitDaemon_CP_73_elements(10), ack => do_while_stmt_196_branch_req_0); -- 
    dummyFpunitDaemon_cp_element_group_10: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 37) := "dummyFpunitDaemon_cp_element_group_10"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= dummyFpunitDaemon_CP_73_elements(37) & dummyFpunitDaemon_CP_73_elements(15) & dummyFpunitDaemon_CP_73_elements(13);
      gj_dummyFpunitDaemon_cp_element_group_10 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyFpunitDaemon_CP_73_elements(10), clk => clk, reset => reset); --
    end block;
    -- CP-element group 11:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	9 
    -- CP-element group 11: 	16 
    -- CP-element group 11: marked-predecessors 
    -- CP-element group 11: 	15 
    -- CP-element group 11: successors 
    -- CP-element group 11: 	33 
    -- CP-element group 11:  members (2) 
      -- CP-element group 11: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/aggregated_phi_sample_req
      -- CP-element group 11: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/phi_stmt_198_sample_start__ps
      -- 
    dummyFpunitDaemon_cp_element_group_11: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 37) := "dummyFpunitDaemon_cp_element_group_11"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= dummyFpunitDaemon_CP_73_elements(9) & dummyFpunitDaemon_CP_73_elements(16) & dummyFpunitDaemon_CP_73_elements(15);
      gj_dummyFpunitDaemon_cp_element_group_11 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyFpunitDaemon_CP_73_elements(11), clk => clk, reset => reset); --
    end block;
    -- CP-element group 12:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	35 
    -- CP-element group 12: 	18 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	6 
    -- CP-element group 12: 	13 
    -- CP-element group 12: marked-successors 
    -- CP-element group 12: 	16 
    -- CP-element group 12:  members (4) 
      -- CP-element group 12: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/$exit
      -- CP-element group 12: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/aggregated_phi_sample_ack
      -- CP-element group 12: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/phi_stmt_198_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/phi_stmt_203_sample_completed_
      -- 
    dummyFpunitDaemon_cp_element_group_12: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 37) := "dummyFpunitDaemon_cp_element_group_12"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dummyFpunitDaemon_CP_73_elements(35) & dummyFpunitDaemon_CP_73_elements(18);
      gj_dummyFpunitDaemon_cp_element_group_12 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyFpunitDaemon_CP_73_elements(12), clk => clk, reset => reset); --
    end block;
    -- CP-element group 13:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: 	12 
    -- CP-element group 13: successors 
    -- CP-element group 13: 	10 
    -- CP-element group 13:  members (1) 
      -- CP-element group 13: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/aggregated_phi_sample_ack_d
      -- 
    -- Element group dummyFpunitDaemon_CP_73_elements(13) is a control-delay.
    cp_element_13_delay: control_delay_element  generic map(name => " 13_delay", delay_value => 1)  port map(req => dummyFpunitDaemon_CP_73_elements(12), ack => dummyFpunitDaemon_CP_73_elements(13), clk => clk, reset =>reset);
    -- CP-element group 14:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: 	9 
    -- CP-element group 14: 	17 
    -- CP-element group 14: successors 
    -- CP-element group 14: 	34 
    -- CP-element group 14:  members (2) 
      -- CP-element group 14: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/aggregated_phi_update_req
      -- CP-element group 14: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/phi_stmt_198_update_start__ps
      -- 
    dummyFpunitDaemon_cp_element_group_14: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 37) := "dummyFpunitDaemon_cp_element_group_14"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dummyFpunitDaemon_CP_73_elements(9) & dummyFpunitDaemon_CP_73_elements(17);
      gj_dummyFpunitDaemon_cp_element_group_14 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyFpunitDaemon_CP_73_elements(14), clk => clk, reset => reset); --
    end block;
    -- CP-element group 15:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: 	36 
    -- CP-element group 15: 	19 
    -- CP-element group 15: successors 
    -- CP-element group 15: 	10 
    -- CP-element group 15: marked-successors 
    -- CP-element group 15: 	11 
    -- CP-element group 15:  members (1) 
      -- CP-element group 15: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/aggregated_phi_update_ack
      -- 
    dummyFpunitDaemon_cp_element_group_15: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 37) := "dummyFpunitDaemon_cp_element_group_15"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dummyFpunitDaemon_CP_73_elements(36) & dummyFpunitDaemon_CP_73_elements(19);
      gj_dummyFpunitDaemon_cp_element_group_15 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyFpunitDaemon_CP_73_elements(15), clk => clk, reset => reset); --
    end block;
    -- CP-element group 16:  join  transition  bypass  pipeline-parent 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: 	9 
    -- CP-element group 16: marked-predecessors 
    -- CP-element group 16: 	12 
    -- CP-element group 16: successors 
    -- CP-element group 16: 	11 
    -- CP-element group 16:  members (1) 
      -- CP-element group 16: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/phi_stmt_198_sample_start_
      -- 
    dummyFpunitDaemon_cp_element_group_16: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 37) := "dummyFpunitDaemon_cp_element_group_16"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dummyFpunitDaemon_CP_73_elements(9) & dummyFpunitDaemon_CP_73_elements(12);
      gj_dummyFpunitDaemon_cp_element_group_16 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyFpunitDaemon_CP_73_elements(16), clk => clk, reset => reset); --
    end block;
    -- CP-element group 17:  join  transition  bypass  pipeline-parent 
    -- CP-element group 17: predecessors 
    -- CP-element group 17: 	9 
    -- CP-element group 17: marked-predecessors 
    -- CP-element group 17: 	19 
    -- CP-element group 17: successors 
    -- CP-element group 17: 	14 
    -- CP-element group 17:  members (1) 
      -- CP-element group 17: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/phi_stmt_198_update_start_
      -- 
    dummyFpunitDaemon_cp_element_group_17: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 37) := "dummyFpunitDaemon_cp_element_group_17"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dummyFpunitDaemon_CP_73_elements(9) & dummyFpunitDaemon_CP_73_elements(19);
      gj_dummyFpunitDaemon_cp_element_group_17 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyFpunitDaemon_CP_73_elements(17), clk => clk, reset => reset); --
    end block;
    -- CP-element group 18:  join  transition  bypass  pipeline-parent 
    -- CP-element group 18: predecessors 
    -- CP-element group 18: successors 
    -- CP-element group 18: 	12 
    -- CP-element group 18:  members (1) 
      -- CP-element group 18: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/phi_stmt_198_sample_completed__ps
      -- 
    -- Element group dummyFpunitDaemon_CP_73_elements(18) is bound as output of CP function.
    -- CP-element group 19:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 19: predecessors 
    -- CP-element group 19: successors 
    -- CP-element group 19: 	15 
    -- CP-element group 19: marked-successors 
    -- CP-element group 19: 	17 
    -- CP-element group 19:  members (2) 
      -- CP-element group 19: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/phi_stmt_198_update_completed_
      -- CP-element group 19: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/phi_stmt_198_update_completed__ps
      -- 
    -- Element group dummyFpunitDaemon_CP_73_elements(19) is bound as output of CP function.
    -- CP-element group 20:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 20: predecessors 
    -- CP-element group 20: 	7 
    -- CP-element group 20: successors 
    -- CP-element group 20:  members (1) 
      -- CP-element group 20: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/phi_stmt_198_loopback_trigger
      -- 
    dummyFpunitDaemon_CP_73_elements(20) <= dummyFpunitDaemon_CP_73_elements(7);
    -- CP-element group 21:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 21: predecessors 
    -- CP-element group 21: successors 
    -- CP-element group 21:  members (2) 
      -- CP-element group 21: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/phi_stmt_198_loopback_sample_req
      -- CP-element group 21: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/phi_stmt_198_loopback_sample_req_ps
      -- 
    phi_stmt_198_loopback_sample_req_113_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_198_loopback_sample_req_113_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyFpunitDaemon_CP_73_elements(21), ack => phi_stmt_198_req_0); -- 
    -- Element group dummyFpunitDaemon_CP_73_elements(21) is bound as output of CP function.
    -- CP-element group 22:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 22: predecessors 
    -- CP-element group 22: 	8 
    -- CP-element group 22: successors 
    -- CP-element group 22:  members (1) 
      -- CP-element group 22: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/phi_stmt_198_entry_trigger
      -- 
    dummyFpunitDaemon_CP_73_elements(22) <= dummyFpunitDaemon_CP_73_elements(8);
    -- CP-element group 23:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 23: predecessors 
    -- CP-element group 23: successors 
    -- CP-element group 23:  members (2) 
      -- CP-element group 23: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/phi_stmt_198_entry_sample_req
      -- CP-element group 23: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/phi_stmt_198_entry_sample_req_ps
      -- 
    phi_stmt_198_entry_sample_req_116_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_198_entry_sample_req_116_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyFpunitDaemon_CP_73_elements(23), ack => phi_stmt_198_req_1); -- 
    -- Element group dummyFpunitDaemon_CP_73_elements(23) is bound as output of CP function.
    -- CP-element group 24:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 24: predecessors 
    -- CP-element group 24: successors 
    -- CP-element group 24:  members (2) 
      -- CP-element group 24: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/phi_stmt_198_phi_mux_ack
      -- CP-element group 24: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/phi_stmt_198_phi_mux_ack_ps
      -- 
    phi_stmt_198_phi_mux_ack_119_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 24_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_198_ack_0, ack => dummyFpunitDaemon_CP_73_elements(24)); -- 
    -- CP-element group 25:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 25: predecessors 
    -- CP-element group 25: successors 
    -- CP-element group 25: 	27 
    -- CP-element group 25:  members (4) 
      -- CP-element group 25: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/R_nX_200_sample_start__ps
      -- CP-element group 25: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/R_nX_200_sample_start_
      -- CP-element group 25: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/R_nX_200_Sample/$entry
      -- CP-element group 25: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/R_nX_200_Sample/req
      -- 
    req_132_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_132_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyFpunitDaemon_CP_73_elements(25), ack => nX_211_200_buf_req_0); -- 
    -- Element group dummyFpunitDaemon_CP_73_elements(25) is bound as output of CP function.
    -- CP-element group 26:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 26: predecessors 
    -- CP-element group 26: successors 
    -- CP-element group 26: 	28 
    -- CP-element group 26:  members (4) 
      -- CP-element group 26: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/R_nX_200_Update/$entry
      -- CP-element group 26: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/R_nX_200_Update/req
      -- CP-element group 26: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/R_nX_200_update_start__ps
      -- CP-element group 26: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/R_nX_200_update_start_
      -- 
    req_137_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_137_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyFpunitDaemon_CP_73_elements(26), ack => nX_211_200_buf_req_1); -- 
    -- Element group dummyFpunitDaemon_CP_73_elements(26) is bound as output of CP function.
    -- CP-element group 27:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 27: predecessors 
    -- CP-element group 27: 	25 
    -- CP-element group 27: successors 
    -- CP-element group 27:  members (4) 
      -- CP-element group 27: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/R_nX_200_sample_completed__ps
      -- CP-element group 27: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/R_nX_200_sample_completed_
      -- CP-element group 27: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/R_nX_200_Sample/$exit
      -- CP-element group 27: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/R_nX_200_Sample/ack
      -- 
    ack_133_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 27_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => nX_211_200_buf_ack_0, ack => dummyFpunitDaemon_CP_73_elements(27)); -- 
    -- CP-element group 28:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 28: predecessors 
    -- CP-element group 28: 	26 
    -- CP-element group 28: successors 
    -- CP-element group 28:  members (4) 
      -- CP-element group 28: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/R_nX_200_Update/$exit
      -- CP-element group 28: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/R_nX_200_Update/ack
      -- CP-element group 28: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/R_nX_200_update_completed__ps
      -- CP-element group 28: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/R_nX_200_update_completed_
      -- 
    ack_138_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 28_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => nX_211_200_buf_ack_1, ack => dummyFpunitDaemon_CP_73_elements(28)); -- 
    -- CP-element group 29:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 29: predecessors 
    -- CP-element group 29: successors 
    -- CP-element group 29:  members (4) 
      -- CP-element group 29: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/type_cast_202_sample_start__ps
      -- CP-element group 29: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/type_cast_202_sample_completed__ps
      -- CP-element group 29: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/type_cast_202_sample_start_
      -- CP-element group 29: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/type_cast_202_sample_completed_
      -- 
    -- Element group dummyFpunitDaemon_CP_73_elements(29) is bound as output of CP function.
    -- CP-element group 30:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 30: predecessors 
    -- CP-element group 30: successors 
    -- CP-element group 30: 	32 
    -- CP-element group 30:  members (2) 
      -- CP-element group 30: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/type_cast_202_update_start__ps
      -- CP-element group 30: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/type_cast_202_update_start_
      -- 
    -- Element group dummyFpunitDaemon_CP_73_elements(30) is bound as output of CP function.
    -- CP-element group 31:  join  transition  bypass  pipeline-parent 
    -- CP-element group 31: predecessors 
    -- CP-element group 31: 	32 
    -- CP-element group 31: successors 
    -- CP-element group 31:  members (1) 
      -- CP-element group 31: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/type_cast_202_update_completed__ps
      -- 
    dummyFpunitDaemon_CP_73_elements(31) <= dummyFpunitDaemon_CP_73_elements(32);
    -- CP-element group 32:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 32: predecessors 
    -- CP-element group 32: 	30 
    -- CP-element group 32: successors 
    -- CP-element group 32: 	31 
    -- CP-element group 32:  members (1) 
      -- CP-element group 32: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/type_cast_202_update_completed_
      -- 
    -- Element group dummyFpunitDaemon_CP_73_elements(32) is a control-delay.
    cp_element_32_delay: control_delay_element  generic map(name => " 32_delay", delay_value => 1)  port map(req => dummyFpunitDaemon_CP_73_elements(30), ack => dummyFpunitDaemon_CP_73_elements(32), clk => clk, reset =>reset);
    -- CP-element group 33:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 33: predecessors 
    -- CP-element group 33: 	11 
    -- CP-element group 33: marked-predecessors 
    -- CP-element group 33: 	36 
    -- CP-element group 33: successors 
    -- CP-element group 33: 	35 
    -- CP-element group 33:  members (3) 
      -- CP-element group 33: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/RPIPE_NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_205_sample_start_
      -- CP-element group 33: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/RPIPE_NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_205_Sample/$entry
      -- CP-element group 33: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/RPIPE_NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_205_Sample/rr
      -- 
    rr_159_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_159_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyFpunitDaemon_CP_73_elements(33), ack => RPIPE_NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_205_inst_req_0); -- 
    dummyFpunitDaemon_cp_element_group_33: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 37) := "dummyFpunitDaemon_cp_element_group_33"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dummyFpunitDaemon_CP_73_elements(11) & dummyFpunitDaemon_CP_73_elements(36);
      gj_dummyFpunitDaemon_cp_element_group_33 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyFpunitDaemon_CP_73_elements(33), clk => clk, reset => reset); --
    end block;
    -- CP-element group 34:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 34: predecessors 
    -- CP-element group 34: 	35 
    -- CP-element group 34: 	14 
    -- CP-element group 34: successors 
    -- CP-element group 34: 	36 
    -- CP-element group 34:  members (3) 
      -- CP-element group 34: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/RPIPE_NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_205_update_start_
      -- CP-element group 34: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/RPIPE_NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_205_Update/$entry
      -- CP-element group 34: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/RPIPE_NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_205_Update/cr
      -- 
    cr_164_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_164_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyFpunitDaemon_CP_73_elements(34), ack => RPIPE_NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_205_inst_req_1); -- 
    dummyFpunitDaemon_cp_element_group_34: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 37) := "dummyFpunitDaemon_cp_element_group_34"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dummyFpunitDaemon_CP_73_elements(35) & dummyFpunitDaemon_CP_73_elements(14);
      gj_dummyFpunitDaemon_cp_element_group_34 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyFpunitDaemon_CP_73_elements(34), clk => clk, reset => reset); --
    end block;
    -- CP-element group 35:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 35: predecessors 
    -- CP-element group 35: 	33 
    -- CP-element group 35: successors 
    -- CP-element group 35: 	12 
    -- CP-element group 35: 	34 
    -- CP-element group 35:  members (3) 
      -- CP-element group 35: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/RPIPE_NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_205_sample_completed_
      -- CP-element group 35: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/RPIPE_NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_205_Sample/$exit
      -- CP-element group 35: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/RPIPE_NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_205_Sample/ra
      -- 
    ra_160_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 35_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_205_inst_ack_0, ack => dummyFpunitDaemon_CP_73_elements(35)); -- 
    -- CP-element group 36:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 36: predecessors 
    -- CP-element group 36: 	34 
    -- CP-element group 36: successors 
    -- CP-element group 36: 	15 
    -- CP-element group 36: marked-successors 
    -- CP-element group 36: 	33 
    -- CP-element group 36:  members (4) 
      -- CP-element group 36: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/phi_stmt_203_update_completed_
      -- CP-element group 36: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/RPIPE_NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_205_update_completed_
      -- CP-element group 36: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/RPIPE_NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_205_Update/$exit
      -- CP-element group 36: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/RPIPE_NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_205_Update/ca
      -- 
    ca_165_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 36_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_205_inst_ack_1, ack => dummyFpunitDaemon_CP_73_elements(36)); -- 
    -- CP-element group 37:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 37: predecessors 
    -- CP-element group 37: 	9 
    -- CP-element group 37: successors 
    -- CP-element group 37: 	10 
    -- CP-element group 37:  members (1) 
      -- CP-element group 37: 	 branch_block_stmt_195/do_while_stmt_196/do_while_stmt_196_loop_body/loop_body_delay_to_condition_start
      -- 
    -- Element group dummyFpunitDaemon_CP_73_elements(37) is a control-delay.
    cp_element_37_delay: control_delay_element  generic map(name => " 37_delay", delay_value => 1)  port map(req => dummyFpunitDaemon_CP_73_elements(9), ack => dummyFpunitDaemon_CP_73_elements(37), clk => clk, reset =>reset);
    -- CP-element group 38:  transition  input  bypass  pipeline-parent 
    -- CP-element group 38: predecessors 
    -- CP-element group 38: 	5 
    -- CP-element group 38: successors 
    -- CP-element group 38:  members (2) 
      -- CP-element group 38: 	 branch_block_stmt_195/do_while_stmt_196/loop_exit/$exit
      -- CP-element group 38: 	 branch_block_stmt_195/do_while_stmt_196/loop_exit/ack
      -- 
    ack_170_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 38_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_196_branch_ack_0, ack => dummyFpunitDaemon_CP_73_elements(38)); -- 
    -- CP-element group 39:  transition  input  bypass  pipeline-parent 
    -- CP-element group 39: predecessors 
    -- CP-element group 39: 	5 
    -- CP-element group 39: successors 
    -- CP-element group 39:  members (2) 
      -- CP-element group 39: 	 branch_block_stmt_195/do_while_stmt_196/loop_taken/$exit
      -- CP-element group 39: 	 branch_block_stmt_195/do_while_stmt_196/loop_taken/ack
      -- 
    ack_174_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 39_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_196_branch_ack_1, ack => dummyFpunitDaemon_CP_73_elements(39)); -- 
    -- CP-element group 40:  transition  bypass  pipeline-parent 
    -- CP-element group 40: predecessors 
    -- CP-element group 40: 	3 
    -- CP-element group 40: successors 
    -- CP-element group 40: 	1 
    -- CP-element group 40:  members (1) 
      -- CP-element group 40: 	 branch_block_stmt_195/do_while_stmt_196/$exit
      -- 
    dummyFpunitDaemon_CP_73_elements(40) <= dummyFpunitDaemon_CP_73_elements(3);
    -- CP-element group 41:  transition  input  output  bypass 
    -- CP-element group 41: predecessors 
    -- CP-element group 41: 	1 
    -- CP-element group 41: successors 
    -- CP-element group 41: 	42 
    -- CP-element group 41:  members (6) 
      -- CP-element group 41: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_teu_loadstore_to_fpunit_216_sample_completed_
      -- CP-element group 41: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_teu_loadstore_to_fpunit_216_update_start_
      -- CP-element group 41: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_teu_loadstore_to_fpunit_216_Sample/$exit
      -- CP-element group 41: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_teu_loadstore_to_fpunit_216_Sample/ra
      -- CP-element group 41: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_teu_loadstore_to_fpunit_216_Update/$entry
      -- CP-element group 41: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_teu_loadstore_to_fpunit_216_Update/cr
      -- 
    ra_187_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 41_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_teu_loadstore_to_fpunit_216_inst_ack_0, ack => dummyFpunitDaemon_CP_73_elements(41)); -- 
    cr_191_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_191_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyFpunitDaemon_CP_73_elements(41), ack => RPIPE_teu_loadstore_to_fpunit_216_inst_req_1); -- 
    -- CP-element group 42:  transition  input  bypass 
    -- CP-element group 42: predecessors 
    -- CP-element group 42: 	41 
    -- CP-element group 42: successors 
    -- CP-element group 42: 	61 
    -- CP-element group 42:  members (3) 
      -- CP-element group 42: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_teu_loadstore_to_fpunit_216_update_completed_
      -- CP-element group 42: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_teu_loadstore_to_fpunit_216_Update/$exit
      -- CP-element group 42: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_teu_loadstore_to_fpunit_216_Update/ca
      -- 
    ca_192_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 42_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_teu_loadstore_to_fpunit_216_inst_ack_1, ack => dummyFpunitDaemon_CP_73_elements(42)); -- 
    -- CP-element group 43:  transition  input  output  bypass 
    -- CP-element group 43: predecessors 
    -- CP-element group 43: 	1 
    -- CP-element group 43: successors 
    -- CP-element group 43: 	44 
    -- CP-element group 43:  members (6) 
      -- CP-element group 43: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_teu_stream_corrector_to_fpunit_219_sample_completed_
      -- CP-element group 43: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_teu_stream_corrector_to_fpunit_219_update_start_
      -- CP-element group 43: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_teu_stream_corrector_to_fpunit_219_Sample/$exit
      -- CP-element group 43: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_teu_stream_corrector_to_fpunit_219_Sample/ra
      -- CP-element group 43: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_teu_stream_corrector_to_fpunit_219_Update/$entry
      -- CP-element group 43: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_teu_stream_corrector_to_fpunit_219_Update/cr
      -- 
    ra_201_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 43_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_teu_stream_corrector_to_fpunit_219_inst_ack_0, ack => dummyFpunitDaemon_CP_73_elements(43)); -- 
    cr_205_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_205_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyFpunitDaemon_CP_73_elements(43), ack => RPIPE_teu_stream_corrector_to_fpunit_219_inst_req_1); -- 
    -- CP-element group 44:  transition  input  bypass 
    -- CP-element group 44: predecessors 
    -- CP-element group 44: 	43 
    -- CP-element group 44: successors 
    -- CP-element group 44: 	61 
    -- CP-element group 44:  members (3) 
      -- CP-element group 44: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_teu_stream_corrector_to_fpunit_219_update_completed_
      -- CP-element group 44: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_teu_stream_corrector_to_fpunit_219_Update/$exit
      -- CP-element group 44: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_teu_stream_corrector_to_fpunit_219_Update/ca
      -- 
    ca_206_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 44_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_teu_stream_corrector_to_fpunit_219_inst_ack_1, ack => dummyFpunitDaemon_CP_73_elements(44)); -- 
    -- CP-element group 45:  transition  input  output  bypass 
    -- CP-element group 45: predecessors 
    -- CP-element group 45: 	1 
    -- CP-element group 45: successors 
    -- CP-element group 45: 	46 
    -- CP-element group 45:  members (6) 
      -- CP-element group 45: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_teu_iunit_trap_to_fpunit_222_sample_completed_
      -- CP-element group 45: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_teu_iunit_trap_to_fpunit_222_update_start_
      -- CP-element group 45: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_teu_iunit_trap_to_fpunit_222_Sample/$exit
      -- CP-element group 45: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_teu_iunit_trap_to_fpunit_222_Sample/ra
      -- CP-element group 45: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_teu_iunit_trap_to_fpunit_222_Update/$entry
      -- CP-element group 45: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_teu_iunit_trap_to_fpunit_222_Update/cr
      -- 
    ra_215_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 45_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_teu_iunit_trap_to_fpunit_222_inst_ack_0, ack => dummyFpunitDaemon_CP_73_elements(45)); -- 
    cr_219_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_219_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyFpunitDaemon_CP_73_elements(45), ack => RPIPE_teu_iunit_trap_to_fpunit_222_inst_req_1); -- 
    -- CP-element group 46:  transition  input  bypass 
    -- CP-element group 46: predecessors 
    -- CP-element group 46: 	45 
    -- CP-element group 46: successors 
    -- CP-element group 46: 	61 
    -- CP-element group 46:  members (3) 
      -- CP-element group 46: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_teu_iunit_trap_to_fpunit_222_update_completed_
      -- CP-element group 46: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_teu_iunit_trap_to_fpunit_222_Update/$exit
      -- CP-element group 46: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_teu_iunit_trap_to_fpunit_222_Update/ca
      -- 
    ca_220_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 46_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_teu_iunit_trap_to_fpunit_222_inst_ack_1, ack => dummyFpunitDaemon_CP_73_elements(46)); -- 
    -- CP-element group 47:  transition  input  output  bypass 
    -- CP-element group 47: predecessors 
    -- CP-element group 47: 	1 
    -- CP-element group 47: successors 
    -- CP-element group 47: 	48 
    -- CP-element group 47:  members (6) 
      -- CP-element group 47: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_225_sample_completed_
      -- CP-element group 47: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_225_update_start_
      -- CP-element group 47: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_225_Sample/$exit
      -- CP-element group 47: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_225_Sample/ra
      -- CP-element group 47: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_225_Update/$entry
      -- CP-element group 47: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_225_Update/cr
      -- 
    ra_229_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 47_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_225_inst_ack_0, ack => dummyFpunitDaemon_CP_73_elements(47)); -- 
    cr_233_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_233_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyFpunitDaemon_CP_73_elements(47), ack => RPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_225_inst_req_1); -- 
    -- CP-element group 48:  transition  input  bypass 
    -- CP-element group 48: predecessors 
    -- CP-element group 48: 	47 
    -- CP-element group 48: successors 
    -- CP-element group 48: 	61 
    -- CP-element group 48:  members (3) 
      -- CP-element group 48: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_225_update_completed_
      -- CP-element group 48: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_225_Update/$exit
      -- CP-element group 48: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_225_Update/ca
      -- 
    ca_234_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 48_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_225_inst_ack_1, ack => dummyFpunitDaemon_CP_73_elements(48)); -- 
    -- CP-element group 49:  transition  input  output  bypass 
    -- CP-element group 49: predecessors 
    -- CP-element group 49: 	1 
    -- CP-element group 49: successors 
    -- CP-element group 49: 	50 
    -- CP-element group 49:  members (6) 
      -- CP-element group 49: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_228_sample_completed_
      -- CP-element group 49: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_228_update_start_
      -- CP-element group 49: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_228_Sample/$exit
      -- CP-element group 49: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_228_Sample/ra
      -- CP-element group 49: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_228_Update/$entry
      -- CP-element group 49: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_228_Update/cr
      -- 
    ra_243_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 49_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_228_inst_ack_0, ack => dummyFpunitDaemon_CP_73_elements(49)); -- 
    cr_247_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_247_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyFpunitDaemon_CP_73_elements(49), ack => RPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_228_inst_req_1); -- 
    -- CP-element group 50:  transition  input  bypass 
    -- CP-element group 50: predecessors 
    -- CP-element group 50: 	49 
    -- CP-element group 50: successors 
    -- CP-element group 50: 	61 
    -- CP-element group 50:  members (3) 
      -- CP-element group 50: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_228_update_completed_
      -- CP-element group 50: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_228_Update/$exit
      -- CP-element group 50: 	 assign_stmt_217_to_assign_stmt_244/RPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_228_Update/ca
      -- 
    ca_248_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 50_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_228_inst_ack_1, ack => dummyFpunitDaemon_CP_73_elements(50)); -- 
    -- CP-element group 51:  transition  input  output  bypass 
    -- CP-element group 51: predecessors 
    -- CP-element group 51: 	1 
    -- CP-element group 51: successors 
    -- CP-element group 51: 	52 
    -- CP-element group 51:  members (6) 
      -- CP-element group 51: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_to_iretire_230_sample_completed_
      -- CP-element group 51: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_to_iretire_230_update_start_
      -- CP-element group 51: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_to_iretire_230_Sample/$exit
      -- CP-element group 51: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_to_iretire_230_Sample/ack
      -- CP-element group 51: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_to_iretire_230_Update/$entry
      -- CP-element group 51: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_to_iretire_230_Update/req
      -- 
    ack_257_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 51_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_fpunit_to_iretire_230_inst_ack_0, ack => dummyFpunitDaemon_CP_73_elements(51)); -- 
    req_261_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_261_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyFpunitDaemon_CP_73_elements(51), ack => WPIPE_teu_fpunit_to_iretire_230_inst_req_1); -- 
    -- CP-element group 52:  transition  input  bypass 
    -- CP-element group 52: predecessors 
    -- CP-element group 52: 	51 
    -- CP-element group 52: successors 
    -- CP-element group 52: 	61 
    -- CP-element group 52:  members (3) 
      -- CP-element group 52: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_to_iretire_230_update_completed_
      -- CP-element group 52: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_to_iretire_230_Update/$exit
      -- CP-element group 52: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_to_iretire_230_Update/ack
      -- 
    ack_262_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 52_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_fpunit_to_iretire_230_inst_ack_1, ack => dummyFpunitDaemon_CP_73_elements(52)); -- 
    -- CP-element group 53:  transition  input  output  bypass 
    -- CP-element group 53: predecessors 
    -- CP-element group 53: 	1 
    -- CP-element group 53: successors 
    -- CP-element group 53: 	54 
    -- CP-element group 53:  members (6) 
      -- CP-element group 53: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_cc_to_stream_corrector_233_sample_completed_
      -- CP-element group 53: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_cc_to_stream_corrector_233_update_start_
      -- CP-element group 53: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_cc_to_stream_corrector_233_Sample/$exit
      -- CP-element group 53: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_cc_to_stream_corrector_233_Sample/ack
      -- CP-element group 53: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_cc_to_stream_corrector_233_Update/$entry
      -- CP-element group 53: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_cc_to_stream_corrector_233_Update/req
      -- 
    ack_271_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 53_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_fpunit_cc_to_stream_corrector_233_inst_ack_0, ack => dummyFpunitDaemon_CP_73_elements(53)); -- 
    req_275_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_275_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyFpunitDaemon_CP_73_elements(53), ack => WPIPE_teu_fpunit_cc_to_stream_corrector_233_inst_req_1); -- 
    -- CP-element group 54:  transition  input  bypass 
    -- CP-element group 54: predecessors 
    -- CP-element group 54: 	53 
    -- CP-element group 54: successors 
    -- CP-element group 54: 	61 
    -- CP-element group 54:  members (3) 
      -- CP-element group 54: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_cc_to_stream_corrector_233_update_completed_
      -- CP-element group 54: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_cc_to_stream_corrector_233_Update/$exit
      -- CP-element group 54: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_cc_to_stream_corrector_233_Update/ack
      -- 
    ack_276_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 54_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_fpunit_cc_to_stream_corrector_233_inst_ack_1, ack => dummyFpunitDaemon_CP_73_elements(54)); -- 
    -- CP-element group 55:  transition  input  output  bypass 
    -- CP-element group 55: predecessors 
    -- CP-element group 55: 	1 
    -- CP-element group 55: successors 
    -- CP-element group 55: 	56 
    -- CP-element group 55:  members (6) 
      -- CP-element group 55: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_register_file_to_loadstore_236_sample_completed_
      -- CP-element group 55: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_register_file_to_loadstore_236_update_start_
      -- CP-element group 55: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_register_file_to_loadstore_236_Sample/$exit
      -- CP-element group 55: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_register_file_to_loadstore_236_Sample/ack
      -- CP-element group 55: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_register_file_to_loadstore_236_Update/$entry
      -- CP-element group 55: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_register_file_to_loadstore_236_Update/req
      -- 
    ack_285_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 55_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_fpunit_register_file_to_loadstore_236_inst_ack_0, ack => dummyFpunitDaemon_CP_73_elements(55)); -- 
    req_289_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_289_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyFpunitDaemon_CP_73_elements(55), ack => WPIPE_teu_fpunit_register_file_to_loadstore_236_inst_req_1); -- 
    -- CP-element group 56:  transition  input  bypass 
    -- CP-element group 56: predecessors 
    -- CP-element group 56: 	55 
    -- CP-element group 56: successors 
    -- CP-element group 56: 	61 
    -- CP-element group 56:  members (3) 
      -- CP-element group 56: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_register_file_to_loadstore_236_update_completed_
      -- CP-element group 56: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_register_file_to_loadstore_236_Update/$exit
      -- CP-element group 56: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_register_file_to_loadstore_236_Update/ack
      -- 
    ack_290_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 56_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_fpunit_register_file_to_loadstore_236_inst_ack_1, ack => dummyFpunitDaemon_CP_73_elements(56)); -- 
    -- CP-element group 57:  transition  input  output  bypass 
    -- CP-element group 57: predecessors 
    -- CP-element group 57: 	1 
    -- CP-element group 57: successors 
    -- CP-element group 57: 	58 
    -- CP-element group 57:  members (6) 
      -- CP-element group 57: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_trap_to_iunit_239_sample_completed_
      -- CP-element group 57: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_trap_to_iunit_239_update_start_
      -- CP-element group 57: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_trap_to_iunit_239_Sample/$exit
      -- CP-element group 57: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_trap_to_iunit_239_Sample/ack
      -- CP-element group 57: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_trap_to_iunit_239_Update/$entry
      -- CP-element group 57: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_trap_to_iunit_239_Update/req
      -- 
    ack_299_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 57_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_fpunit_trap_to_iunit_239_inst_ack_0, ack => dummyFpunitDaemon_CP_73_elements(57)); -- 
    req_303_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_303_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyFpunitDaemon_CP_73_elements(57), ack => WPIPE_teu_fpunit_trap_to_iunit_239_inst_req_1); -- 
    -- CP-element group 58:  transition  input  bypass 
    -- CP-element group 58: predecessors 
    -- CP-element group 58: 	57 
    -- CP-element group 58: successors 
    -- CP-element group 58: 	61 
    -- CP-element group 58:  members (3) 
      -- CP-element group 58: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_trap_to_iunit_239_update_completed_
      -- CP-element group 58: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_trap_to_iunit_239_Update/$exit
      -- CP-element group 58: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_trap_to_iunit_239_Update/ack
      -- 
    ack_304_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 58_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_fpunit_trap_to_iunit_239_inst_ack_1, ack => dummyFpunitDaemon_CP_73_elements(58)); -- 
    -- CP-element group 59:  transition  input  output  bypass 
    -- CP-element group 59: predecessors 
    -- CP-element group 59: 	1 
    -- CP-element group 59: successors 
    -- CP-element group 59: 	60 
    -- CP-element group 59:  members (6) 
      -- CP-element group 59: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_trap_to_loadstore_242_sample_completed_
      -- CP-element group 59: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_trap_to_loadstore_242_update_start_
      -- CP-element group 59: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_trap_to_loadstore_242_Sample/$exit
      -- CP-element group 59: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_trap_to_loadstore_242_Sample/ack
      -- CP-element group 59: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_trap_to_loadstore_242_Update/$entry
      -- CP-element group 59: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_trap_to_loadstore_242_Update/req
      -- 
    ack_313_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 59_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_fpunit_trap_to_loadstore_242_inst_ack_0, ack => dummyFpunitDaemon_CP_73_elements(59)); -- 
    req_317_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_317_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyFpunitDaemon_CP_73_elements(59), ack => WPIPE_teu_fpunit_trap_to_loadstore_242_inst_req_1); -- 
    -- CP-element group 60:  transition  input  bypass 
    -- CP-element group 60: predecessors 
    -- CP-element group 60: 	59 
    -- CP-element group 60: successors 
    -- CP-element group 60: 	61 
    -- CP-element group 60:  members (3) 
      -- CP-element group 60: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_trap_to_loadstore_242_update_completed_
      -- CP-element group 60: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_trap_to_loadstore_242_Update/$exit
      -- CP-element group 60: 	 assign_stmt_217_to_assign_stmt_244/WPIPE_teu_fpunit_trap_to_loadstore_242_Update/ack
      -- 
    ack_318_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 60_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_fpunit_trap_to_loadstore_242_inst_ack_1, ack => dummyFpunitDaemon_CP_73_elements(60)); -- 
    -- CP-element group 61:  join  transition  bypass 
    -- CP-element group 61: predecessors 
    -- CP-element group 61: 	46 
    -- CP-element group 61: 	52 
    -- CP-element group 61: 	56 
    -- CP-element group 61: 	44 
    -- CP-element group 61: 	50 
    -- CP-element group 61: 	58 
    -- CP-element group 61: 	48 
    -- CP-element group 61: 	54 
    -- CP-element group 61: 	60 
    -- CP-element group 61: 	42 
    -- CP-element group 61: successors 
    -- CP-element group 61:  members (2) 
      -- CP-element group 61: 	 $exit
      -- CP-element group 61: 	 assign_stmt_217_to_assign_stmt_244/$exit
      -- 
    dummyFpunitDaemon_cp_element_group_61: block -- 
      constant place_capacities: IntegerArray(0 to 9) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1);
      constant place_markings: IntegerArray(0 to 9)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0);
      constant place_delays: IntegerArray(0 to 9) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0);
      constant joinName: string(1 to 37) := "dummyFpunitDaemon_cp_element_group_61"; 
      signal preds: BooleanArray(1 to 10); -- 
    begin -- 
      preds <= dummyFpunitDaemon_CP_73_elements(46) & dummyFpunitDaemon_CP_73_elements(52) & dummyFpunitDaemon_CP_73_elements(56) & dummyFpunitDaemon_CP_73_elements(44) & dummyFpunitDaemon_CP_73_elements(50) & dummyFpunitDaemon_CP_73_elements(58) & dummyFpunitDaemon_CP_73_elements(48) & dummyFpunitDaemon_CP_73_elements(54) & dummyFpunitDaemon_CP_73_elements(60) & dummyFpunitDaemon_CP_73_elements(42);
      gj_dummyFpunitDaemon_cp_element_group_61 : generic_join generic map(name => joinName, number_of_predecessors => 10, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyFpunitDaemon_CP_73_elements(61), clk => clk, reset => reset); --
    end block;
    dummyFpunitDaemon_do_while_stmt_196_terminator_175: loop_terminator -- 
      generic map (name => " dummyFpunitDaemon_do_while_stmt_196_terminator_175", max_iterations_in_flight =>3) 
      port map(loop_body_exit => dummyFpunitDaemon_CP_73_elements(6),loop_continue => dummyFpunitDaemon_CP_73_elements(39),loop_terminate => dummyFpunitDaemon_CP_73_elements(38),loop_back => dummyFpunitDaemon_CP_73_elements(4),loop_exit => dummyFpunitDaemon_CP_73_elements(3),clk => clk, reset => reset); -- 
    phi_stmt_198_phi_seq_147_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= dummyFpunitDaemon_CP_73_elements(20);
      dummyFpunitDaemon_CP_73_elements(25)<= src_sample_reqs(0);
      src_sample_acks(0)  <= dummyFpunitDaemon_CP_73_elements(27);
      dummyFpunitDaemon_CP_73_elements(26)<= src_update_reqs(0);
      src_update_acks(0)  <= dummyFpunitDaemon_CP_73_elements(28);
      dummyFpunitDaemon_CP_73_elements(21) <= phi_mux_reqs(0);
      triggers(1)  <= dummyFpunitDaemon_CP_73_elements(22);
      dummyFpunitDaemon_CP_73_elements(29)<= src_sample_reqs(1);
      src_sample_acks(1)  <= dummyFpunitDaemon_CP_73_elements(29);
      dummyFpunitDaemon_CP_73_elements(30)<= src_update_reqs(1);
      src_update_acks(1)  <= dummyFpunitDaemon_CP_73_elements(31);
      dummyFpunitDaemon_CP_73_elements(23) <= phi_mux_reqs(1);
      phi_stmt_198_phi_seq_147 : phi_sequencer_v2-- 
        generic map (place_capacity => 3, ntriggers => 2, name => "phi_stmt_198_phi_seq_147") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => dummyFpunitDaemon_CP_73_elements(11), 
          phi_sample_ack => dummyFpunitDaemon_CP_73_elements(18), 
          phi_update_req => dummyFpunitDaemon_CP_73_elements(14), 
          phi_update_ack => dummyFpunitDaemon_CP_73_elements(19), 
          phi_mux_ack => dummyFpunitDaemon_CP_73_elements(24), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    entry_tmerge_98_block : block -- 
      signal preds : BooleanArray(0 to 1);
      begin -- 
        preds(0)  <= dummyFpunitDaemon_CP_73_elements(7);
        preds(1)  <= dummyFpunitDaemon_CP_73_elements(8);
        entry_tmerge_98 : transition_merge -- 
          generic map(name => " entry_tmerge_98")
          port map (preds => preds, symbol_out => dummyFpunitDaemon_CP_73_elements(9));
          -- 
    end block;
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal A_217 : std_logic_vector(77 downto 0);
    signal B_220 : std_logic_vector(17 downto 0);
    signal G_223 : std_logic_vector(12 downto 0);
    signal H_226 : std_logic_vector(0 downto 0);
    signal I_229 : std_logic_vector(0 downto 0);
    signal RPIPE_NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_205_wire : std_logic_vector(92 downto 0);
    signal X_198 : std_logic_vector(0 downto 0);
    signal ign_203 : std_logic_vector(92 downto 0);
    signal konst_209_wire_constant : std_logic_vector(0 downto 0);
    signal konst_213_wire_constant : std_logic_vector(0 downto 0);
    signal konst_231_wire_constant : std_logic_vector(50 downto 0);
    signal konst_234_wire_constant : std_logic_vector(14 downto 0);
    signal konst_237_wire_constant : std_logic_vector(76 downto 0);
    signal konst_240_wire_constant : std_logic_vector(12 downto 0);
    signal konst_243_wire_constant : std_logic_vector(12 downto 0);
    signal nX_211 : std_logic_vector(0 downto 0);
    signal nX_211_200_buffered : std_logic_vector(0 downto 0);
    signal type_cast_202_wire_constant : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    konst_209_wire_constant <= "1";
    konst_213_wire_constant <= "1";
    konst_231_wire_constant <= "000000000000000000000000000000000000000000000000000";
    konst_234_wire_constant <= "000000000000000";
    konst_237_wire_constant <= "00000000000000000000000000000000000000000000000000000000000000000000000000000";
    konst_240_wire_constant <= "0000000000000";
    konst_243_wire_constant <= "0000000000000";
    type_cast_202_wire_constant <= "0";
    phi_stmt_198: Block -- phi operator 
      signal idata: std_logic_vector(1 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= nX_211_200_buffered & type_cast_202_wire_constant;
      req <= phi_stmt_198_req_0 & phi_stmt_198_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_198",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 1) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_198_ack_0,
          idata => idata,
          odata => X_198,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_198
    nX_211_200_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= nX_211_200_buf_req_0;
      nX_211_200_buf_ack_0<= wack(0);
      rreq(0) <= nX_211_200_buf_req_1;
      nX_211_200_buf_ack_1<= rack(0);
      nX_211_200_buf : InterlockBuffer generic map ( -- 
        name => "nX_211_200_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 1,
        out_data_width => 1,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => nX_211,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => nX_211_200_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    -- interlock ssrc_phi_stmt_203
    process(RPIPE_NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_205_wire) -- 
      variable tmp_var : std_logic_vector(92 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 92 downto 0) := RPIPE_NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_205_wire(92 downto 0);
      ign_203 <= tmp_var; -- 
    end process;
    do_while_stmt_196_branch: Block -- 
      -- branch-block
      signal condition_sig : std_logic_vector(0 downto 0);
      begin 
      condition_sig <= konst_213_wire_constant;
      branch_instance: BranchBase -- 
        generic map( name => "do_while_stmt_196_branch", condition_width => 1,  bypass_flag => true)
        port map( -- 
          condition => condition_sig,
          req => do_while_stmt_196_branch_req_0,
          ack0 => do_while_stmt_196_branch_ack_0,
          ack1 => do_while_stmt_196_branch_ack_1,
          clk => clk,
          reset => reset); -- 
      --
    end Block; -- branch-block
    -- flow through binary operator ADD_u1_u1_210_inst
    nX_211 <= std_logic_vector(unsigned(X_198) + unsigned(konst_209_wire_constant));
    -- shared inport operator group (0) : RPIPE_NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_205_inst 
    InportGroup_0: Block -- 
      signal data_out: std_logic_vector(92 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_205_inst_req_0;
      RPIPE_NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_205_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_205_inst_req_1;
      RPIPE_NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_205_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      RPIPE_NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_205_wire <= data_out(92 downto 0);
      NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_read_0_gI: SplitGuardInterface generic map(name => "NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_read_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL,
        sa_in => ackL,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_read_0: InputPort_P2P -- 
        generic map ( name => "NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_read_0", data_width => 93,    bypass_flag => false,   	nonblocking_read_flag => true,  barrier_flag => false,   queue_depth =>  0)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_req(0),
          oack => NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_ack(0),
          odata => NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_data(92 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 0
    -- shared inport operator group (1) : RPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_225_inst 
    InportGroup_1: Block -- 
      signal data_out: std_logic_vector(0 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_225_inst_req_0;
      RPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_225_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_225_inst_req_1;
      RPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_225_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      H_226 <= data_out(0 downto 0);
      noblock_teu_loadstore_to_fpunit_regfile_credit_return_read_1_gI: SplitGuardInterface generic map(name => "noblock_teu_loadstore_to_fpunit_regfile_credit_return_read_1_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL,
        sa_in => ackL,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      noblock_teu_loadstore_to_fpunit_regfile_credit_return_read_1: InputPort_P2P -- 
        generic map ( name => "noblock_teu_loadstore_to_fpunit_regfile_credit_return_read_1", data_width => 1,    bypass_flag => false,   	nonblocking_read_flag => true,  barrier_flag => false,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_req(0),
          oack => noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_ack(0),
          odata => noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_data(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 1
    -- shared inport operator group (2) : RPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_228_inst 
    InportGroup_2: Block -- 
      signal data_out: std_logic_vector(0 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_228_inst_req_0;
      RPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_228_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_228_inst_req_1;
      RPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_228_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      I_229 <= data_out(0 downto 0);
      noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_read_2_gI: SplitGuardInterface generic map(name => "noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_read_2_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL,
        sa_in => ackL,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_read_2: InputPort_P2P -- 
        generic map ( name => "noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_read_2", data_width => 1,    bypass_flag => false,   	nonblocking_read_flag => true,  barrier_flag => false,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_req(0),
          oack => noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_ack(0),
          odata => noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_data(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 2
    -- shared inport operator group (3) : RPIPE_teu_iunit_trap_to_fpunit_222_inst 
    InportGroup_3: Block -- 
      signal data_out: std_logic_vector(12 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_teu_iunit_trap_to_fpunit_222_inst_req_0;
      RPIPE_teu_iunit_trap_to_fpunit_222_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_teu_iunit_trap_to_fpunit_222_inst_req_1;
      RPIPE_teu_iunit_trap_to_fpunit_222_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      G_223 <= data_out(12 downto 0);
      teu_iunit_trap_to_fpunit_read_3_gI: SplitGuardInterface generic map(name => "teu_iunit_trap_to_fpunit_read_3_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL,
        sa_in => ackL,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      teu_iunit_trap_to_fpunit_read_3: InputPort_P2P -- 
        generic map ( name => "teu_iunit_trap_to_fpunit_read_3", data_width => 13,    bypass_flag => false,   	nonblocking_read_flag => false,  barrier_flag => false,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => teu_iunit_trap_to_fpunit_pipe_read_req(0),
          oack => teu_iunit_trap_to_fpunit_pipe_read_ack(0),
          odata => teu_iunit_trap_to_fpunit_pipe_read_data(12 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 3
    -- shared inport operator group (4) : RPIPE_teu_loadstore_to_fpunit_216_inst 
    InportGroup_4: Block -- 
      signal data_out: std_logic_vector(77 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_teu_loadstore_to_fpunit_216_inst_req_0;
      RPIPE_teu_loadstore_to_fpunit_216_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_teu_loadstore_to_fpunit_216_inst_req_1;
      RPIPE_teu_loadstore_to_fpunit_216_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      A_217 <= data_out(77 downto 0);
      teu_loadstore_to_fpunit_read_4_gI: SplitGuardInterface generic map(name => "teu_loadstore_to_fpunit_read_4_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL,
        sa_in => ackL,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      teu_loadstore_to_fpunit_read_4: InputPort_P2P -- 
        generic map ( name => "teu_loadstore_to_fpunit_read_4", data_width => 78,    bypass_flag => false,   	nonblocking_read_flag => false,  barrier_flag => false,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => teu_loadstore_to_fpunit_pipe_read_req(0),
          oack => teu_loadstore_to_fpunit_pipe_read_ack(0),
          odata => teu_loadstore_to_fpunit_pipe_read_data(77 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 4
    -- shared inport operator group (5) : RPIPE_teu_stream_corrector_to_fpunit_219_inst 
    InportGroup_5: Block -- 
      signal data_out: std_logic_vector(17 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_teu_stream_corrector_to_fpunit_219_inst_req_0;
      RPIPE_teu_stream_corrector_to_fpunit_219_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_teu_stream_corrector_to_fpunit_219_inst_req_1;
      RPIPE_teu_stream_corrector_to_fpunit_219_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      B_220 <= data_out(17 downto 0);
      teu_stream_corrector_to_fpunit_read_5_gI: SplitGuardInterface generic map(name => "teu_stream_corrector_to_fpunit_read_5_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL,
        sa_in => ackL,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      teu_stream_corrector_to_fpunit_read_5: InputPort_P2P -- 
        generic map ( name => "teu_stream_corrector_to_fpunit_read_5", data_width => 18,    bypass_flag => false,   	nonblocking_read_flag => false,  barrier_flag => false,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => teu_stream_corrector_to_fpunit_pipe_read_req(0),
          oack => teu_stream_corrector_to_fpunit_pipe_read_ack(0),
          odata => teu_stream_corrector_to_fpunit_pipe_read_data(17 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 5
    -- shared outport operator group (0) : WPIPE_teu_fpunit_cc_to_stream_corrector_233_inst 
    OutportGroup_0: Block -- 
      signal data_in: std_logic_vector(14 downto 0);
      signal sample_req, sample_ack : BooleanArray( 0 downto 0);
      signal update_req, update_ack : BooleanArray( 0 downto 0);
      signal sample_req_unguarded, sample_ack_unguarded : BooleanArray( 0 downto 0);
      signal update_req_unguarded, update_ack_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      sample_req_unguarded(0) <= WPIPE_teu_fpunit_cc_to_stream_corrector_233_inst_req_0;
      WPIPE_teu_fpunit_cc_to_stream_corrector_233_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_teu_fpunit_cc_to_stream_corrector_233_inst_req_1;
      WPIPE_teu_fpunit_cc_to_stream_corrector_233_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= konst_234_wire_constant;
      teu_fpunit_cc_to_stream_corrector_write_0_gI: SplitGuardInterface generic map(name => "teu_fpunit_cc_to_stream_corrector_write_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => sample_req_unguarded,
        sr_out => sample_req,
        sa_in => sample_ack,
        sa_out => sample_ack_unguarded,
        cr_in => update_req_unguarded,
        cr_out => update_req,
        ca_in => update_ack,
        ca_out => update_ack_unguarded,
        guards => guard_vector); -- 
      teu_fpunit_cc_to_stream_corrector_write_0: OutputPortRevised -- 
        generic map ( name => "teu_fpunit_cc_to_stream_corrector", data_width => 15, num_reqs => 1, input_buffering => inBUFs, full_rate => false,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => teu_fpunit_cc_to_stream_corrector_pipe_write_req(0),
          oack => teu_fpunit_cc_to_stream_corrector_pipe_write_ack(0),
          odata => teu_fpunit_cc_to_stream_corrector_pipe_write_data(14 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    -- shared outport operator group (1) : WPIPE_teu_fpunit_register_file_to_loadstore_236_inst 
    OutportGroup_1: Block -- 
      signal data_in: std_logic_vector(76 downto 0);
      signal sample_req, sample_ack : BooleanArray( 0 downto 0);
      signal update_req, update_ack : BooleanArray( 0 downto 0);
      signal sample_req_unguarded, sample_ack_unguarded : BooleanArray( 0 downto 0);
      signal update_req_unguarded, update_ack_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      sample_req_unguarded(0) <= WPIPE_teu_fpunit_register_file_to_loadstore_236_inst_req_0;
      WPIPE_teu_fpunit_register_file_to_loadstore_236_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_teu_fpunit_register_file_to_loadstore_236_inst_req_1;
      WPIPE_teu_fpunit_register_file_to_loadstore_236_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= konst_237_wire_constant;
      teu_fpunit_register_file_to_loadstore_write_1_gI: SplitGuardInterface generic map(name => "teu_fpunit_register_file_to_loadstore_write_1_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => sample_req_unguarded,
        sr_out => sample_req,
        sa_in => sample_ack,
        sa_out => sample_ack_unguarded,
        cr_in => update_req_unguarded,
        cr_out => update_req,
        ca_in => update_ack,
        ca_out => update_ack_unguarded,
        guards => guard_vector); -- 
      teu_fpunit_register_file_to_loadstore_write_1: OutputPortRevised -- 
        generic map ( name => "teu_fpunit_register_file_to_loadstore", data_width => 77, num_reqs => 1, input_buffering => inBUFs, full_rate => false,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => teu_fpunit_register_file_to_loadstore_pipe_write_req(0),
          oack => teu_fpunit_register_file_to_loadstore_pipe_write_ack(0),
          odata => teu_fpunit_register_file_to_loadstore_pipe_write_data(76 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 1
    -- shared outport operator group (2) : WPIPE_teu_fpunit_to_iretire_230_inst 
    OutportGroup_2: Block -- 
      signal data_in: std_logic_vector(50 downto 0);
      signal sample_req, sample_ack : BooleanArray( 0 downto 0);
      signal update_req, update_ack : BooleanArray( 0 downto 0);
      signal sample_req_unguarded, sample_ack_unguarded : BooleanArray( 0 downto 0);
      signal update_req_unguarded, update_ack_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      sample_req_unguarded(0) <= WPIPE_teu_fpunit_to_iretire_230_inst_req_0;
      WPIPE_teu_fpunit_to_iretire_230_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_teu_fpunit_to_iretire_230_inst_req_1;
      WPIPE_teu_fpunit_to_iretire_230_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= konst_231_wire_constant;
      teu_fpunit_to_iretire_write_2_gI: SplitGuardInterface generic map(name => "teu_fpunit_to_iretire_write_2_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => sample_req_unguarded,
        sr_out => sample_req,
        sa_in => sample_ack,
        sa_out => sample_ack_unguarded,
        cr_in => update_req_unguarded,
        cr_out => update_req,
        ca_in => update_ack,
        ca_out => update_ack_unguarded,
        guards => guard_vector); -- 
      teu_fpunit_to_iretire_write_2: OutputPortRevised -- 
        generic map ( name => "teu_fpunit_to_iretire", data_width => 51, num_reqs => 1, input_buffering => inBUFs, full_rate => false,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => teu_fpunit_to_iretire_pipe_write_req(0),
          oack => teu_fpunit_to_iretire_pipe_write_ack(0),
          odata => teu_fpunit_to_iretire_pipe_write_data(50 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 2
    -- shared outport operator group (3) : WPIPE_teu_fpunit_trap_to_iunit_239_inst 
    OutportGroup_3: Block -- 
      signal data_in: std_logic_vector(12 downto 0);
      signal sample_req, sample_ack : BooleanArray( 0 downto 0);
      signal update_req, update_ack : BooleanArray( 0 downto 0);
      signal sample_req_unguarded, sample_ack_unguarded : BooleanArray( 0 downto 0);
      signal update_req_unguarded, update_ack_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      sample_req_unguarded(0) <= WPIPE_teu_fpunit_trap_to_iunit_239_inst_req_0;
      WPIPE_teu_fpunit_trap_to_iunit_239_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_teu_fpunit_trap_to_iunit_239_inst_req_1;
      WPIPE_teu_fpunit_trap_to_iunit_239_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= konst_240_wire_constant;
      teu_fpunit_trap_to_iunit_write_3_gI: SplitGuardInterface generic map(name => "teu_fpunit_trap_to_iunit_write_3_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => sample_req_unguarded,
        sr_out => sample_req,
        sa_in => sample_ack,
        sa_out => sample_ack_unguarded,
        cr_in => update_req_unguarded,
        cr_out => update_req,
        ca_in => update_ack,
        ca_out => update_ack_unguarded,
        guards => guard_vector); -- 
      teu_fpunit_trap_to_iunit_write_3: OutputPortRevised -- 
        generic map ( name => "teu_fpunit_trap_to_iunit", data_width => 13, num_reqs => 1, input_buffering => inBUFs, full_rate => false,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => teu_fpunit_trap_to_iunit_pipe_write_req(0),
          oack => teu_fpunit_trap_to_iunit_pipe_write_ack(0),
          odata => teu_fpunit_trap_to_iunit_pipe_write_data(12 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 3
    -- shared outport operator group (4) : WPIPE_teu_fpunit_trap_to_loadstore_242_inst 
    OutportGroup_4: Block -- 
      signal data_in: std_logic_vector(12 downto 0);
      signal sample_req, sample_ack : BooleanArray( 0 downto 0);
      signal update_req, update_ack : BooleanArray( 0 downto 0);
      signal sample_req_unguarded, sample_ack_unguarded : BooleanArray( 0 downto 0);
      signal update_req_unguarded, update_ack_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      sample_req_unguarded(0) <= WPIPE_teu_fpunit_trap_to_loadstore_242_inst_req_0;
      WPIPE_teu_fpunit_trap_to_loadstore_242_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_teu_fpunit_trap_to_loadstore_242_inst_req_1;
      WPIPE_teu_fpunit_trap_to_loadstore_242_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= konst_243_wire_constant;
      teu_fpunit_trap_to_loadstore_write_4_gI: SplitGuardInterface generic map(name => "teu_fpunit_trap_to_loadstore_write_4_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => sample_req_unguarded,
        sr_out => sample_req,
        sa_in => sample_ack,
        sa_out => sample_ack_unguarded,
        cr_in => update_req_unguarded,
        cr_out => update_req,
        ca_in => update_ack,
        ca_out => update_ack_unguarded,
        guards => guard_vector); -- 
      teu_fpunit_trap_to_loadstore_write_4: OutputPortRevised -- 
        generic map ( name => "teu_fpunit_trap_to_loadstore", data_width => 13, num_reqs => 1, input_buffering => inBUFs, full_rate => false,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => teu_fpunit_trap_to_loadstore_pipe_write_req(0),
          oack => teu_fpunit_trap_to_loadstore_pipe_write_ack(0),
          odata => teu_fpunit_trap_to_loadstore_pipe_write_data(12 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 4
    -- 
  end Block; -- data_path
  -- 
end dummyFpunitDaemon_arch;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library aHiR_ieee_proposed;
use aHiR_ieee_proposed.math_utility_pkg.all;
use aHiR_ieee_proposed.fixed_pkg.all;
use aHiR_ieee_proposed.float_pkg.all;
library ahir;
use ahir.memory_subsystem_package.all;
use ahir.types.all;
use ahir.subprograms.all;
use ahir.components.all;
use ahir.basecomponents.all;
use ahir.operatorpackage.all;
use ahir.floatoperatorpackage.all;
use ahir.utilities.all;
library teu_dummy_fpunit;
use teu_dummy_fpunit.dummy_fpunit_global_package.all;
entity dummy_fpunit is  -- system 
  port (-- 
    clk : in std_logic;
    reset : in std_logic;
    NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_data: in std_logic_vector(92 downto 0);
    NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_req : in std_logic_vector(0 downto 0);
    NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_ack : out std_logic_vector(0 downto 0);
    ccu_to_teu_fpunit_register_access_command_pipe_write_data: in std_logic_vector(39 downto 0);
    ccu_to_teu_fpunit_register_access_command_pipe_write_req : in std_logic_vector(0 downto 0);
    ccu_to_teu_fpunit_register_access_command_pipe_write_ack : out std_logic_vector(0 downto 0);
    noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_data: in std_logic_vector(0 downto 0);
    noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_req : in std_logic_vector(0 downto 0);
    noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_ack : out std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_data: in std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_req : in std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_ack : out std_logic_vector(0 downto 0);
    teu_fpunit_cc_to_stream_corrector_pipe_read_data: out std_logic_vector(14 downto 0);
    teu_fpunit_cc_to_stream_corrector_pipe_read_req : in std_logic_vector(0 downto 0);
    teu_fpunit_cc_to_stream_corrector_pipe_read_ack : out std_logic_vector(0 downto 0);
    teu_fpunit_register_file_to_loadstore_pipe_read_data: out std_logic_vector(76 downto 0);
    teu_fpunit_register_file_to_loadstore_pipe_read_req : in std_logic_vector(0 downto 0);
    teu_fpunit_register_file_to_loadstore_pipe_read_ack : out std_logic_vector(0 downto 0);
    teu_fpunit_to_iretire_pipe_read_data: out std_logic_vector(50 downto 0);
    teu_fpunit_to_iretire_pipe_read_req : in std_logic_vector(0 downto 0);
    teu_fpunit_to_iretire_pipe_read_ack : out std_logic_vector(0 downto 0);
    teu_fpunit_trap_to_iunit_pipe_read_data: out std_logic_vector(12 downto 0);
    teu_fpunit_trap_to_iunit_pipe_read_req : in std_logic_vector(0 downto 0);
    teu_fpunit_trap_to_iunit_pipe_read_ack : out std_logic_vector(0 downto 0);
    teu_fpunit_trap_to_loadstore_pipe_read_data: out std_logic_vector(12 downto 0);
    teu_fpunit_trap_to_loadstore_pipe_read_req : in std_logic_vector(0 downto 0);
    teu_fpunit_trap_to_loadstore_pipe_read_ack : out std_logic_vector(0 downto 0);
    teu_iunit_trap_to_fpunit_pipe_write_data: in std_logic_vector(12 downto 0);
    teu_iunit_trap_to_fpunit_pipe_write_req : in std_logic_vector(0 downto 0);
    teu_iunit_trap_to_fpunit_pipe_write_ack : out std_logic_vector(0 downto 0);
    teu_loadstore_to_fpunit_pipe_write_data: in std_logic_vector(77 downto 0);
    teu_loadstore_to_fpunit_pipe_write_req : in std_logic_vector(0 downto 0);
    teu_loadstore_to_fpunit_pipe_write_ack : out std_logic_vector(0 downto 0);
    teu_stream_corrector_to_fpunit_pipe_write_data: in std_logic_vector(17 downto 0);
    teu_stream_corrector_to_fpunit_pipe_write_req : in std_logic_vector(0 downto 0);
    teu_stream_corrector_to_fpunit_pipe_write_ack : out std_logic_vector(0 downto 0);
    teu_to_ccu_fpunit_register_access_response_pipe_read_data: out std_logic_vector(32 downto 0);
    teu_to_ccu_fpunit_register_access_response_pipe_read_req : in std_logic_vector(0 downto 0);
    teu_to_ccu_fpunit_register_access_response_pipe_read_ack : out std_logic_vector(0 downto 0)); -- 
  -- 
end entity; 
architecture dummy_fpunit_arch  of dummy_fpunit is -- system-architecture 
  -- interface signals to connect to memory space memory_space_1
  -- declarations related to module dummyFpunitCcuDaemon
  component dummyFpunitCcuDaemon is -- 
    generic (tag_length : integer); 
    port ( -- 
      ccu_to_teu_fpunit_register_access_command_pipe_read_req : out  std_logic_vector(0 downto 0);
      ccu_to_teu_fpunit_register_access_command_pipe_read_ack : in   std_logic_vector(0 downto 0);
      ccu_to_teu_fpunit_register_access_command_pipe_read_data : in   std_logic_vector(39 downto 0);
      teu_to_ccu_fpunit_register_access_response_pipe_write_req : out  std_logic_vector(0 downto 0);
      teu_to_ccu_fpunit_register_access_response_pipe_write_ack : in   std_logic_vector(0 downto 0);
      teu_to_ccu_fpunit_register_access_response_pipe_write_data : out  std_logic_vector(32 downto 0);
      tag_in: in std_logic_vector(tag_length-1 downto 0);
      tag_out: out std_logic_vector(tag_length-1 downto 0) ;
      clk : in std_logic;
      reset : in std_logic;
      start_req : in std_logic;
      start_ack : out std_logic;
      fin_req : in std_logic;
      fin_ack   : out std_logic-- 
    );
    -- 
  end component;
  -- argument signals for module dummyFpunitCcuDaemon
  signal dummyFpunitCcuDaemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal dummyFpunitCcuDaemon_tag_out   : std_logic_vector(1 downto 0);
  signal dummyFpunitCcuDaemon_start_req : std_logic;
  signal dummyFpunitCcuDaemon_start_ack : std_logic;
  signal dummyFpunitCcuDaemon_fin_req   : std_logic;
  signal dummyFpunitCcuDaemon_fin_ack : std_logic;
  -- declarations related to module dummyFpunitDaemon
  component dummyFpunitDaemon is -- 
    generic (tag_length : integer); 
    port ( -- 
      NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_req : out  std_logic_vector(0 downto 0);
      NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_ack : in   std_logic_vector(0 downto 0);
      NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_data : in   std_logic_vector(92 downto 0);
      noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_req : out  std_logic_vector(0 downto 0);
      noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_ack : in   std_logic_vector(0 downto 0);
      noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_data : in   std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_req : out  std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_ack : in   std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_data : in   std_logic_vector(0 downto 0);
      teu_iunit_trap_to_fpunit_pipe_read_req : out  std_logic_vector(0 downto 0);
      teu_iunit_trap_to_fpunit_pipe_read_ack : in   std_logic_vector(0 downto 0);
      teu_iunit_trap_to_fpunit_pipe_read_data : in   std_logic_vector(12 downto 0);
      teu_loadstore_to_fpunit_pipe_read_req : out  std_logic_vector(0 downto 0);
      teu_loadstore_to_fpunit_pipe_read_ack : in   std_logic_vector(0 downto 0);
      teu_loadstore_to_fpunit_pipe_read_data : in   std_logic_vector(77 downto 0);
      teu_stream_corrector_to_fpunit_pipe_read_req : out  std_logic_vector(0 downto 0);
      teu_stream_corrector_to_fpunit_pipe_read_ack : in   std_logic_vector(0 downto 0);
      teu_stream_corrector_to_fpunit_pipe_read_data : in   std_logic_vector(17 downto 0);
      teu_fpunit_cc_to_stream_corrector_pipe_write_req : out  std_logic_vector(0 downto 0);
      teu_fpunit_cc_to_stream_corrector_pipe_write_ack : in   std_logic_vector(0 downto 0);
      teu_fpunit_cc_to_stream_corrector_pipe_write_data : out  std_logic_vector(14 downto 0);
      teu_fpunit_register_file_to_loadstore_pipe_write_req : out  std_logic_vector(0 downto 0);
      teu_fpunit_register_file_to_loadstore_pipe_write_ack : in   std_logic_vector(0 downto 0);
      teu_fpunit_register_file_to_loadstore_pipe_write_data : out  std_logic_vector(76 downto 0);
      teu_fpunit_to_iretire_pipe_write_req : out  std_logic_vector(0 downto 0);
      teu_fpunit_to_iretire_pipe_write_ack : in   std_logic_vector(0 downto 0);
      teu_fpunit_to_iretire_pipe_write_data : out  std_logic_vector(50 downto 0);
      teu_fpunit_trap_to_iunit_pipe_write_req : out  std_logic_vector(0 downto 0);
      teu_fpunit_trap_to_iunit_pipe_write_ack : in   std_logic_vector(0 downto 0);
      teu_fpunit_trap_to_iunit_pipe_write_data : out  std_logic_vector(12 downto 0);
      teu_fpunit_trap_to_loadstore_pipe_write_req : out  std_logic_vector(0 downto 0);
      teu_fpunit_trap_to_loadstore_pipe_write_ack : in   std_logic_vector(0 downto 0);
      teu_fpunit_trap_to_loadstore_pipe_write_data : out  std_logic_vector(12 downto 0);
      tag_in: in std_logic_vector(tag_length-1 downto 0);
      tag_out: out std_logic_vector(tag_length-1 downto 0) ;
      clk : in std_logic;
      reset : in std_logic;
      start_req : in std_logic;
      start_ack : out std_logic;
      fin_req : in std_logic;
      fin_ack   : out std_logic-- 
    );
    -- 
  end component;
  -- argument signals for module dummyFpunitDaemon
  signal dummyFpunitDaemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal dummyFpunitDaemon_tag_out   : std_logic_vector(1 downto 0);
  signal dummyFpunitDaemon_start_req : std_logic;
  signal dummyFpunitDaemon_start_ack : std_logic;
  signal dummyFpunitDaemon_fin_req   : std_logic;
  signal dummyFpunitDaemon_fin_ack : std_logic;
  -- aggregate signals for read from pipe NOBLOCK_DCACHE_TO_CPU_FU_BYPASS
  signal NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_data: std_logic_vector(92 downto 0);
  signal NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_req: std_logic_vector(0 downto 0);
  signal NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe ccu_to_teu_fpunit_register_access_command
  signal ccu_to_teu_fpunit_register_access_command_pipe_read_data: std_logic_vector(39 downto 0);
  signal ccu_to_teu_fpunit_register_access_command_pipe_read_req: std_logic_vector(0 downto 0);
  signal ccu_to_teu_fpunit_register_access_command_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe noblock_teu_loadstore_to_fpunit_regfile_credit_return
  signal noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_data: std_logic_vector(0 downto 0);
  signal noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_req: std_logic_vector(0 downto 0);
  signal noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe noblock_teu_stream_corrector_to_fpunit_regfile_credit_return
  signal noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_data: std_logic_vector(0 downto 0);
  signal noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_req: std_logic_vector(0 downto 0);
  signal noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe teu_fpunit_cc_to_stream_corrector
  signal teu_fpunit_cc_to_stream_corrector_pipe_write_data: std_logic_vector(14 downto 0);
  signal teu_fpunit_cc_to_stream_corrector_pipe_write_req: std_logic_vector(0 downto 0);
  signal teu_fpunit_cc_to_stream_corrector_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe teu_fpunit_register_file_to_loadstore
  signal teu_fpunit_register_file_to_loadstore_pipe_write_data: std_logic_vector(76 downto 0);
  signal teu_fpunit_register_file_to_loadstore_pipe_write_req: std_logic_vector(0 downto 0);
  signal teu_fpunit_register_file_to_loadstore_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe teu_fpunit_to_iretire
  signal teu_fpunit_to_iretire_pipe_write_data: std_logic_vector(50 downto 0);
  signal teu_fpunit_to_iretire_pipe_write_req: std_logic_vector(0 downto 0);
  signal teu_fpunit_to_iretire_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe teu_fpunit_trap_to_iunit
  signal teu_fpunit_trap_to_iunit_pipe_write_data: std_logic_vector(12 downto 0);
  signal teu_fpunit_trap_to_iunit_pipe_write_req: std_logic_vector(0 downto 0);
  signal teu_fpunit_trap_to_iunit_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe teu_fpunit_trap_to_loadstore
  signal teu_fpunit_trap_to_loadstore_pipe_write_data: std_logic_vector(12 downto 0);
  signal teu_fpunit_trap_to_loadstore_pipe_write_req: std_logic_vector(0 downto 0);
  signal teu_fpunit_trap_to_loadstore_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe teu_iunit_trap_to_fpunit
  signal teu_iunit_trap_to_fpunit_pipe_read_data: std_logic_vector(12 downto 0);
  signal teu_iunit_trap_to_fpunit_pipe_read_req: std_logic_vector(0 downto 0);
  signal teu_iunit_trap_to_fpunit_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe teu_loadstore_to_fpunit
  signal teu_loadstore_to_fpunit_pipe_read_data: std_logic_vector(77 downto 0);
  signal teu_loadstore_to_fpunit_pipe_read_req: std_logic_vector(0 downto 0);
  signal teu_loadstore_to_fpunit_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe teu_stream_corrector_to_fpunit
  signal teu_stream_corrector_to_fpunit_pipe_read_data: std_logic_vector(17 downto 0);
  signal teu_stream_corrector_to_fpunit_pipe_read_req: std_logic_vector(0 downto 0);
  signal teu_stream_corrector_to_fpunit_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe teu_to_ccu_fpunit_register_access_response
  signal teu_to_ccu_fpunit_register_access_response_pipe_write_data: std_logic_vector(32 downto 0);
  signal teu_to_ccu_fpunit_register_access_response_pipe_write_req: std_logic_vector(0 downto 0);
  signal teu_to_ccu_fpunit_register_access_response_pipe_write_ack: std_logic_vector(0 downto 0);
  -- gated clock signal declarations.
  -- 
begin -- 
  -- module dummyFpunitCcuDaemon
  dummyFpunitCcuDaemon_instance:dummyFpunitCcuDaemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => dummyFpunitCcuDaemon_start_req,
      start_ack => dummyFpunitCcuDaemon_start_ack,
      fin_req => dummyFpunitCcuDaemon_fin_req,
      fin_ack => dummyFpunitCcuDaemon_fin_ack,
      clk => clk,
      reset => reset,
      ccu_to_teu_fpunit_register_access_command_pipe_read_req => ccu_to_teu_fpunit_register_access_command_pipe_read_req(0 downto 0),
      ccu_to_teu_fpunit_register_access_command_pipe_read_ack => ccu_to_teu_fpunit_register_access_command_pipe_read_ack(0 downto 0),
      ccu_to_teu_fpunit_register_access_command_pipe_read_data => ccu_to_teu_fpunit_register_access_command_pipe_read_data(39 downto 0),
      teu_to_ccu_fpunit_register_access_response_pipe_write_req => teu_to_ccu_fpunit_register_access_response_pipe_write_req(0 downto 0),
      teu_to_ccu_fpunit_register_access_response_pipe_write_ack => teu_to_ccu_fpunit_register_access_response_pipe_write_ack(0 downto 0),
      teu_to_ccu_fpunit_register_access_response_pipe_write_data => teu_to_ccu_fpunit_register_access_response_pipe_write_data(32 downto 0),
      tag_in => dummyFpunitCcuDaemon_tag_in,
      tag_out => dummyFpunitCcuDaemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  dummyFpunitCcuDaemon_tag_in <= (others => '0');
  dummyFpunitCcuDaemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => dummyFpunitCcuDaemon_start_req, start_ack => dummyFpunitCcuDaemon_start_ack,  fin_req => dummyFpunitCcuDaemon_fin_req,  fin_ack => dummyFpunitCcuDaemon_fin_ack);
  -- module dummyFpunitDaemon
  dummyFpunitDaemon_instance:dummyFpunitDaemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => dummyFpunitDaemon_start_req,
      start_ack => dummyFpunitDaemon_start_ack,
      fin_req => dummyFpunitDaemon_fin_req,
      fin_ack => dummyFpunitDaemon_fin_ack,
      clk => clk,
      reset => reset,
      NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_req => NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_req(0 downto 0),
      NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_ack => NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_ack(0 downto 0),
      NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_data => NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_data(92 downto 0),
      noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_req => noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_req(0 downto 0),
      noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_ack => noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_ack(0 downto 0),
      noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_data => noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_data(0 downto 0),
      noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_req => noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_req(0 downto 0),
      noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_ack => noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_ack(0 downto 0),
      noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_data => noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_data(0 downto 0),
      teu_iunit_trap_to_fpunit_pipe_read_req => teu_iunit_trap_to_fpunit_pipe_read_req(0 downto 0),
      teu_iunit_trap_to_fpunit_pipe_read_ack => teu_iunit_trap_to_fpunit_pipe_read_ack(0 downto 0),
      teu_iunit_trap_to_fpunit_pipe_read_data => teu_iunit_trap_to_fpunit_pipe_read_data(12 downto 0),
      teu_loadstore_to_fpunit_pipe_read_req => teu_loadstore_to_fpunit_pipe_read_req(0 downto 0),
      teu_loadstore_to_fpunit_pipe_read_ack => teu_loadstore_to_fpunit_pipe_read_ack(0 downto 0),
      teu_loadstore_to_fpunit_pipe_read_data => teu_loadstore_to_fpunit_pipe_read_data(77 downto 0),
      teu_stream_corrector_to_fpunit_pipe_read_req => teu_stream_corrector_to_fpunit_pipe_read_req(0 downto 0),
      teu_stream_corrector_to_fpunit_pipe_read_ack => teu_stream_corrector_to_fpunit_pipe_read_ack(0 downto 0),
      teu_stream_corrector_to_fpunit_pipe_read_data => teu_stream_corrector_to_fpunit_pipe_read_data(17 downto 0),
      teu_fpunit_cc_to_stream_corrector_pipe_write_req => teu_fpunit_cc_to_stream_corrector_pipe_write_req(0 downto 0),
      teu_fpunit_cc_to_stream_corrector_pipe_write_ack => teu_fpunit_cc_to_stream_corrector_pipe_write_ack(0 downto 0),
      teu_fpunit_cc_to_stream_corrector_pipe_write_data => teu_fpunit_cc_to_stream_corrector_pipe_write_data(14 downto 0),
      teu_fpunit_register_file_to_loadstore_pipe_write_req => teu_fpunit_register_file_to_loadstore_pipe_write_req(0 downto 0),
      teu_fpunit_register_file_to_loadstore_pipe_write_ack => teu_fpunit_register_file_to_loadstore_pipe_write_ack(0 downto 0),
      teu_fpunit_register_file_to_loadstore_pipe_write_data => teu_fpunit_register_file_to_loadstore_pipe_write_data(76 downto 0),
      teu_fpunit_to_iretire_pipe_write_req => teu_fpunit_to_iretire_pipe_write_req(0 downto 0),
      teu_fpunit_to_iretire_pipe_write_ack => teu_fpunit_to_iretire_pipe_write_ack(0 downto 0),
      teu_fpunit_to_iretire_pipe_write_data => teu_fpunit_to_iretire_pipe_write_data(50 downto 0),
      teu_fpunit_trap_to_iunit_pipe_write_req => teu_fpunit_trap_to_iunit_pipe_write_req(0 downto 0),
      teu_fpunit_trap_to_iunit_pipe_write_ack => teu_fpunit_trap_to_iunit_pipe_write_ack(0 downto 0),
      teu_fpunit_trap_to_iunit_pipe_write_data => teu_fpunit_trap_to_iunit_pipe_write_data(12 downto 0),
      teu_fpunit_trap_to_loadstore_pipe_write_req => teu_fpunit_trap_to_loadstore_pipe_write_req(0 downto 0),
      teu_fpunit_trap_to_loadstore_pipe_write_ack => teu_fpunit_trap_to_loadstore_pipe_write_ack(0 downto 0),
      teu_fpunit_trap_to_loadstore_pipe_write_data => teu_fpunit_trap_to_loadstore_pipe_write_data(12 downto 0),
      tag_in => dummyFpunitDaemon_tag_in,
      tag_out => dummyFpunitDaemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  dummyFpunitDaemon_tag_in <= (others => '0');
  dummyFpunitDaemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => dummyFpunitDaemon_start_req, start_ack => dummyFpunitDaemon_start_ack,  fin_req => dummyFpunitDaemon_fin_req,  fin_ack => dummyFpunitDaemon_fin_ack);
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe NOBLOCK_DCACHE_TO_CPU_FU_BYPASS",
      num_reads => 1,
      num_writes => 1,
      data_width => 93,
      lifo_mode => false,
      full_rate => false,
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
      clk => clk,reset => reset -- 
    ); -- 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  ccu_to_teu_fpunit_register_access_command_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe ccu_to_teu_fpunit_register_access_command",
      num_reads => 1,
      num_writes => 1,
      data_width => 40,
      lifo_mode => false,
      full_rate => false,
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
      clk => clk,reset => reset -- 
    ); -- 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  noblock_teu_loadstore_to_fpunit_regfile_credit_return_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe noblock_teu_loadstore_to_fpunit_regfile_credit_return",
      num_reads => 1,
      num_writes => 1,
      data_width => 1,
      lifo_mode => false,
      full_rate => false,
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
      clk => clk,reset => reset -- 
    ); -- 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe noblock_teu_stream_corrector_to_fpunit_regfile_credit_return",
      num_reads => 1,
      num_writes => 1,
      data_width => 1,
      lifo_mode => false,
      full_rate => false,
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
      clk => clk,reset => reset -- 
    ); -- 
  teu_fpunit_cc_to_stream_corrector_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe teu_fpunit_cc_to_stream_corrector",
      num_reads => 1,
      num_writes => 1,
      data_width => 15,
      lifo_mode => false,
      full_rate => false,
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
      clk => clk,reset => reset -- 
    ); -- 
  teu_fpunit_register_file_to_loadstore_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe teu_fpunit_register_file_to_loadstore",
      num_reads => 1,
      num_writes => 1,
      data_width => 77,
      lifo_mode => false,
      full_rate => false,
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
      clk => clk,reset => reset -- 
    ); -- 
  teu_fpunit_to_iretire_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe teu_fpunit_to_iretire",
      num_reads => 1,
      num_writes => 1,
      data_width => 51,
      lifo_mode => false,
      full_rate => false,
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
      clk => clk,reset => reset -- 
    ); -- 
  teu_fpunit_trap_to_iunit_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe teu_fpunit_trap_to_iunit",
      num_reads => 1,
      num_writes => 1,
      data_width => 13,
      lifo_mode => false,
      full_rate => false,
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
      clk => clk,reset => reset -- 
    ); -- 
  teu_fpunit_trap_to_loadstore_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe teu_fpunit_trap_to_loadstore",
      num_reads => 1,
      num_writes => 1,
      data_width => 13,
      lifo_mode => false,
      full_rate => false,
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
      clk => clk,reset => reset -- 
    ); -- 
  teu_iunit_trap_to_fpunit_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe teu_iunit_trap_to_fpunit",
      num_reads => 1,
      num_writes => 1,
      data_width => 13,
      lifo_mode => false,
      full_rate => false,
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
      clk => clk,reset => reset -- 
    ); -- 
  teu_loadstore_to_fpunit_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe teu_loadstore_to_fpunit",
      num_reads => 1,
      num_writes => 1,
      data_width => 78,
      lifo_mode => false,
      full_rate => false,
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
      clk => clk,reset => reset -- 
    ); -- 
  teu_stream_corrector_to_fpunit_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe teu_stream_corrector_to_fpunit",
      num_reads => 1,
      num_writes => 1,
      data_width => 18,
      lifo_mode => false,
      full_rate => false,
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
      clk => clk,reset => reset -- 
    ); -- 
  teu_to_ccu_fpunit_register_access_response_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe teu_to_ccu_fpunit_register_access_response",
      num_reads => 1,
      num_writes => 1,
      data_width => 33,
      lifo_mode => false,
      full_rate => false,
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
      clk => clk,reset => reset -- 
    ); -- 
  -- gated clock generators 
  -- 
end dummy_fpunit_arch;
