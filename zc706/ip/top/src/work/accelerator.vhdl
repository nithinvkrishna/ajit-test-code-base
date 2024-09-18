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
use ahir.functionLibraryComponents.all;
library work;
use work.accelerator_global_package.all;
entity accelerator_control_daemon is -- 
  generic (tag_length : integer); 
  port ( -- 
    memory_space_0_lr_req : out  std_logic_vector(0 downto 0);
    memory_space_0_lr_ack : in   std_logic_vector(0 downto 0);
    memory_space_0_lr_addr : out  std_logic_vector(3 downto 0);
    memory_space_0_lr_tag :  out  std_logic_vector(20 downto 0);
    memory_space_0_lc_req : out  std_logic_vector(0 downto 0);
    memory_space_0_lc_ack : in   std_logic_vector(0 downto 0);
    memory_space_0_lc_data : in   std_logic_vector(31 downto 0);
    memory_space_0_lc_tag :  in  std_logic_vector(2 downto 0);
    memory_space_0_sr_req : out  std_logic_vector(0 downto 0);
    memory_space_0_sr_ack : in   std_logic_vector(0 downto 0);
    memory_space_0_sr_addr : out  std_logic_vector(3 downto 0);
    memory_space_0_sr_data : out  std_logic_vector(31 downto 0);
    memory_space_0_sr_tag :  out  std_logic_vector(20 downto 0);
    memory_space_0_sc_req : out  std_logic_vector(0 downto 0);
    memory_space_0_sc_ack : in   std_logic_vector(0 downto 0);
    memory_space_0_sc_tag :  in  std_logic_vector(2 downto 0);
    AFB_ACCELERATOR_REQUEST_pipe_read_req : out  std_logic_vector(0 downto 0);
    AFB_ACCELERATOR_REQUEST_pipe_read_ack : in   std_logic_vector(0 downto 0);
    AFB_ACCELERATOR_REQUEST_pipe_read_data : in   std_logic_vector(73 downto 0);
    AFB_ACCELERATOR_RESPONSE_pipe_write_req : out  std_logic_vector(0 downto 0);
    AFB_ACCELERATOR_RESPONSE_pipe_write_ack : in   std_logic_vector(0 downto 0);
    AFB_ACCELERATOR_RESPONSE_pipe_write_data : out  std_logic_vector(32 downto 0);
    start_worker_pipe_write_req : out  std_logic_vector(0 downto 0);
    start_worker_pipe_write_ack : in   std_logic_vector(0 downto 0);
    start_worker_pipe_write_data : out  std_logic_vector(0 downto 0);
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
end entity accelerator_control_daemon;
architecture accelerator_control_daemon_arch of accelerator_control_daemon is -- 
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
  signal accelerator_control_daemon_CP_0_start: Boolean;
  signal accelerator_control_daemon_CP_0_symbol: Boolean;
  -- volatile/operator module components. 
  -- links between control-path and data-path
  signal if_stmt_33_branch_ack_0 : boolean;
  signal array_obj_ref_30_store_0_req_0 : boolean;
  signal array_obj_ref_30_store_0_ack_0 : boolean;
  signal array_obj_ref_30_store_0_req_1 : boolean;
  signal array_obj_ref_30_store_0_ack_1 : boolean;
  signal if_stmt_33_branch_req_0 : boolean;
  signal if_stmt_33_branch_ack_1 : boolean;
  signal phi_stmt_17_req_0 : boolean;
  signal nI_28_22_buf_req_0 : boolean;
  signal nI_28_22_buf_ack_0 : boolean;
  signal nI_28_22_buf_req_1 : boolean;
  signal nI_28_22_buf_ack_1 : boolean;
  signal phi_stmt_17_req_1 : boolean;
  signal phi_stmt_17_ack_0 : boolean;
  signal WPIPE_start_worker_40_inst_req_0 : boolean;
  signal WPIPE_start_worker_40_inst_ack_0 : boolean;
  signal WPIPE_start_worker_40_inst_req_1 : boolean;
  signal WPIPE_start_worker_40_inst_ack_1 : boolean;
  signal RPIPE_AFB_ACCELERATOR_REQUEST_46_inst_req_0 : boolean;
  signal RPIPE_AFB_ACCELERATOR_REQUEST_46_inst_ack_0 : boolean;
  signal RPIPE_AFB_ACCELERATOR_REQUEST_46_inst_req_1 : boolean;
  signal RPIPE_AFB_ACCELERATOR_REQUEST_46_inst_ack_1 : boolean;
  signal array_obj_ref_69_load_0_req_0 : boolean;
  signal array_obj_ref_69_load_0_ack_0 : boolean;
  signal array_obj_ref_69_load_0_req_1 : boolean;
  signal array_obj_ref_69_load_0_ack_1 : boolean;
  signal array_obj_ref_73_store_0_req_0 : boolean;
  signal array_obj_ref_73_store_0_ack_0 : boolean;
  signal array_obj_ref_73_store_0_req_1 : boolean;
  signal array_obj_ref_73_store_0_ack_1 : boolean;
  signal WPIPE_AFB_ACCELERATOR_RESPONSE_85_inst_req_0 : boolean;
  signal WPIPE_AFB_ACCELERATOR_RESPONSE_85_inst_ack_0 : boolean;
  signal WPIPE_AFB_ACCELERATOR_RESPONSE_85_inst_req_1 : boolean;
  signal WPIPE_AFB_ACCELERATOR_RESPONSE_85_inst_ack_1 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "accelerator_control_daemon_input_buffer", -- 
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
  accelerator_control_daemon_CP_0_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "accelerator_control_daemon_out_buffer", -- 
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
    preds <= accelerator_control_daemon_CP_0_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
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
    preds <= accelerator_control_daemon_CP_0_start & tag_ilock_write_ack_symbol;
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
    preds <= accelerator_control_daemon_CP_0_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  accelerator_control_daemon_CP_0: Block -- control-path 
    signal accelerator_control_daemon_CP_0_elements: BooleanArray(26 downto 0);
    -- 
  begin -- 
    accelerator_control_daemon_CP_0_elements(0) <= accelerator_control_daemon_CP_0_start;
    accelerator_control_daemon_CP_0_symbol <= accelerator_control_daemon_CP_0_elements(13);
    -- CP-element group 0:  branch  transition  place  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	5 
    -- CP-element group 0:  members (8) 
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 branch_block_stmt_15/$entry
      -- CP-element group 0: 	 branch_block_stmt_15/branch_block_stmt_15__entry__
      -- CP-element group 0: 	 branch_block_stmt_15/merge_stmt_16__entry__
      -- CP-element group 0: 	 branch_block_stmt_15/merge_stmt_16_dead_link/$entry
      -- CP-element group 0: 	 branch_block_stmt_15/merge_stmt_16__entry___PhiReq/$entry
      -- CP-element group 0: 	 branch_block_stmt_15/merge_stmt_16__entry___PhiReq/phi_stmt_17/$entry
      -- CP-element group 0: 	 branch_block_stmt_15/merge_stmt_16__entry___PhiReq/phi_stmt_17/phi_stmt_17_sources/$entry
      -- 
    -- CP-element group 1:  transition  input  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	10 
    -- CP-element group 1: successors 
    -- CP-element group 1:  members (5) 
      -- CP-element group 1: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_sample_completed_
      -- CP-element group 1: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_Sample/$exit
      -- CP-element group 1: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_Sample/word_access_start/$exit
      -- CP-element group 1: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_Sample/word_access_start/word_0/$exit
      -- CP-element group 1: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_Sample/word_access_start/word_0/ra
      -- 
    ra_67_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 1_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_30_store_0_ack_0, ack => accelerator_control_daemon_CP_0_elements(1)); -- 
    -- CP-element group 2:  branch  transition  place  input  output  bypass 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	10 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	4 
    -- CP-element group 2: 	3 
    -- CP-element group 2:  members (29) 
      -- CP-element group 2: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32__exit__
      -- CP-element group 2: 	 branch_block_stmt_15/if_stmt_33__entry__
      -- CP-element group 2: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/$exit
      -- CP-element group 2: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_update_completed_
      -- CP-element group 2: 	 branch_block_stmt_15/if_stmt_33_else_link/$entry
      -- CP-element group 2: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_Update/$exit
      -- CP-element group 2: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_Update/word_access_complete/$exit
      -- CP-element group 2: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_Update/word_access_complete/word_0/$exit
      -- CP-element group 2: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_Update/word_access_complete/word_0/ca
      -- CP-element group 2: 	 branch_block_stmt_15/if_stmt_33_dead_link/$entry
      -- CP-element group 2: 	 branch_block_stmt_15/if_stmt_33_eval_test/$entry
      -- CP-element group 2: 	 branch_block_stmt_15/if_stmt_33_eval_test/$exit
      -- CP-element group 2: 	 branch_block_stmt_15/if_stmt_33_eval_test/ULT_u5_u1_36/$entry
      -- CP-element group 2: 	 branch_block_stmt_15/if_stmt_33_eval_test/ULT_u5_u1_36/$exit
      -- CP-element group 2: 	 branch_block_stmt_15/if_stmt_33_eval_test/ULT_u5_u1_36/ULT_u5_u1_36_inputs/$entry
      -- CP-element group 2: 	 branch_block_stmt_15/if_stmt_33_eval_test/ULT_u5_u1_36/ULT_u5_u1_36_inputs/$exit
      -- CP-element group 2: 	 branch_block_stmt_15/if_stmt_33_eval_test/ULT_u5_u1_36/SplitProtocol/$entry
      -- CP-element group 2: 	 branch_block_stmt_15/if_stmt_33_eval_test/ULT_u5_u1_36/SplitProtocol/$exit
      -- CP-element group 2: 	 branch_block_stmt_15/if_stmt_33_eval_test/ULT_u5_u1_36/SplitProtocol/Sample/$entry
      -- CP-element group 2: 	 branch_block_stmt_15/if_stmt_33_eval_test/ULT_u5_u1_36/SplitProtocol/Sample/$exit
      -- CP-element group 2: 	 branch_block_stmt_15/if_stmt_33_eval_test/ULT_u5_u1_36/SplitProtocol/Sample/rr
      -- CP-element group 2: 	 branch_block_stmt_15/if_stmt_33_eval_test/ULT_u5_u1_36/SplitProtocol/Sample/ra
      -- CP-element group 2: 	 branch_block_stmt_15/if_stmt_33_eval_test/ULT_u5_u1_36/SplitProtocol/Update/$entry
      -- CP-element group 2: 	 branch_block_stmt_15/if_stmt_33_eval_test/ULT_u5_u1_36/SplitProtocol/Update/$exit
      -- CP-element group 2: 	 branch_block_stmt_15/if_stmt_33_eval_test/ULT_u5_u1_36/SplitProtocol/Update/cr
      -- CP-element group 2: 	 branch_block_stmt_15/if_stmt_33_eval_test/ULT_u5_u1_36/SplitProtocol/Update/ca
      -- CP-element group 2: 	 branch_block_stmt_15/if_stmt_33_eval_test/branch_req
      -- CP-element group 2: 	 branch_block_stmt_15/ULT_u5_u1_36_place
      -- CP-element group 2: 	 branch_block_stmt_15/if_stmt_33_if_link/$entry
      -- 
    ca_78_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 2_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_30_store_0_ack_1, ack => accelerator_control_daemon_CP_0_elements(2)); -- 
    branch_req_105_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " branch_req_105_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accelerator_control_daemon_CP_0_elements(2), ack => if_stmt_33_branch_req_0); -- 
    -- CP-element group 3:  fork  transition  place  input  output  bypass 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: 	2 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	6 
    -- CP-element group 3: 	7 
    -- CP-element group 3:  members (11) 
      -- CP-element group 3: 	 branch_block_stmt_15/if_stmt_33_if_link/$exit
      -- CP-element group 3: 	 branch_block_stmt_15/if_stmt_33_if_link/if_choice_transition
      -- CP-element group 3: 	 branch_block_stmt_15/loopback
      -- CP-element group 3: 	 branch_block_stmt_15/loopback_PhiReq/$entry
      -- CP-element group 3: 	 branch_block_stmt_15/loopback_PhiReq/phi_stmt_17/$entry
      -- CP-element group 3: 	 branch_block_stmt_15/loopback_PhiReq/phi_stmt_17/phi_stmt_17_sources/$entry
      -- CP-element group 3: 	 branch_block_stmt_15/loopback_PhiReq/phi_stmt_17/phi_stmt_17_sources/Interlock/$entry
      -- CP-element group 3: 	 branch_block_stmt_15/loopback_PhiReq/phi_stmt_17/phi_stmt_17_sources/Interlock/Sample/$entry
      -- CP-element group 3: 	 branch_block_stmt_15/loopback_PhiReq/phi_stmt_17/phi_stmt_17_sources/Interlock/Sample/req
      -- CP-element group 3: 	 branch_block_stmt_15/loopback_PhiReq/phi_stmt_17/phi_stmt_17_sources/Interlock/Update/$entry
      -- CP-element group 3: 	 branch_block_stmt_15/loopback_PhiReq/phi_stmt_17/phi_stmt_17_sources/Interlock/Update/req
      -- 
    if_choice_transition_110_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 3_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => if_stmt_33_branch_ack_1, ack => accelerator_control_daemon_CP_0_elements(3)); -- 
    req_146_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_146_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accelerator_control_daemon_CP_0_elements(3), ack => nI_28_22_buf_req_0); -- 
    req_151_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_151_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accelerator_control_daemon_CP_0_elements(3), ack => nI_28_22_buf_req_1); -- 
    -- CP-element group 4:  merge  transition  place  input  output  bypass 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: 	2 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	11 
    -- CP-element group 4:  members (9) 
      -- CP-element group 4: 	 branch_block_stmt_15/$exit
      -- CP-element group 4: 	 branch_block_stmt_15/branch_block_stmt_15__exit__
      -- CP-element group 4: 	 branch_block_stmt_15/if_stmt_33__exit__
      -- CP-element group 4: 	 branch_block_stmt_15/if_stmt_33_else_link/$exit
      -- CP-element group 4: 	 branch_block_stmt_15/if_stmt_33_else_link/else_choice_transition
      -- CP-element group 4: 	 assign_stmt_42/$entry
      -- CP-element group 4: 	 assign_stmt_42/WPIPE_start_worker_40_sample_start_
      -- CP-element group 4: 	 assign_stmt_42/WPIPE_start_worker_40_Sample/$entry
      -- CP-element group 4: 	 assign_stmt_42/WPIPE_start_worker_40_Sample/req
      -- 
    else_choice_transition_114_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 4_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => if_stmt_33_branch_ack_0, ack => accelerator_control_daemon_CP_0_elements(4)); -- 
    req_169_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_169_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accelerator_control_daemon_CP_0_elements(4), ack => WPIPE_start_worker_40_inst_req_0); -- 
    -- CP-element group 5:  transition  output  delay-element  bypass 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	0 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	9 
    -- CP-element group 5:  members (5) 
      -- CP-element group 5: 	 branch_block_stmt_15/merge_stmt_16__entry___PhiReq/$exit
      -- CP-element group 5: 	 branch_block_stmt_15/merge_stmt_16__entry___PhiReq/phi_stmt_17/$exit
      -- CP-element group 5: 	 branch_block_stmt_15/merge_stmt_16__entry___PhiReq/phi_stmt_17/phi_stmt_17_sources/$exit
      -- CP-element group 5: 	 branch_block_stmt_15/merge_stmt_16__entry___PhiReq/phi_stmt_17/phi_stmt_17_sources/type_cast_21_konst_delay_trans
      -- CP-element group 5: 	 branch_block_stmt_15/merge_stmt_16__entry___PhiReq/phi_stmt_17/phi_stmt_17_req
      -- 
    phi_stmt_17_req_130_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_17_req_130_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accelerator_control_daemon_CP_0_elements(5), ack => phi_stmt_17_req_0); -- 
    -- Element group accelerator_control_daemon_CP_0_elements(5) is a control-delay.
    cp_element_5_delay: control_delay_element  generic map(name => " 5_delay", delay_value => 1)  port map(req => accelerator_control_daemon_CP_0_elements(0), ack => accelerator_control_daemon_CP_0_elements(5), clk => clk, reset =>reset);
    -- CP-element group 6:  transition  input  bypass 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	3 
    -- CP-element group 6: successors 
    -- CP-element group 6: 	8 
    -- CP-element group 6:  members (2) 
      -- CP-element group 6: 	 branch_block_stmt_15/loopback_PhiReq/phi_stmt_17/phi_stmt_17_sources/Interlock/Sample/$exit
      -- CP-element group 6: 	 branch_block_stmt_15/loopback_PhiReq/phi_stmt_17/phi_stmt_17_sources/Interlock/Sample/ack
      -- 
    ack_147_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 6_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => nI_28_22_buf_ack_0, ack => accelerator_control_daemon_CP_0_elements(6)); -- 
    -- CP-element group 7:  transition  input  bypass 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	3 
    -- CP-element group 7: successors 
    -- CP-element group 7: 	8 
    -- CP-element group 7:  members (2) 
      -- CP-element group 7: 	 branch_block_stmt_15/loopback_PhiReq/phi_stmt_17/phi_stmt_17_sources/Interlock/Update/$exit
      -- CP-element group 7: 	 branch_block_stmt_15/loopback_PhiReq/phi_stmt_17/phi_stmt_17_sources/Interlock/Update/ack
      -- 
    ack_152_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 7_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => nI_28_22_buf_ack_1, ack => accelerator_control_daemon_CP_0_elements(7)); -- 
    -- CP-element group 8:  join  transition  output  bypass 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	6 
    -- CP-element group 8: 	7 
    -- CP-element group 8: successors 
    -- CP-element group 8: 	9 
    -- CP-element group 8:  members (5) 
      -- CP-element group 8: 	 branch_block_stmt_15/loopback_PhiReq/$exit
      -- CP-element group 8: 	 branch_block_stmt_15/loopback_PhiReq/phi_stmt_17/$exit
      -- CP-element group 8: 	 branch_block_stmt_15/loopback_PhiReq/phi_stmt_17/phi_stmt_17_sources/$exit
      -- CP-element group 8: 	 branch_block_stmt_15/loopback_PhiReq/phi_stmt_17/phi_stmt_17_sources/Interlock/$exit
      -- CP-element group 8: 	 branch_block_stmt_15/loopback_PhiReq/phi_stmt_17/phi_stmt_17_req
      -- 
    phi_stmt_17_req_153_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_17_req_153_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accelerator_control_daemon_CP_0_elements(8), ack => phi_stmt_17_req_1); -- 
    accelerator_control_daemon_cp_element_group_8: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 45) := "accelerator_control_daemon_cp_element_group_8"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= accelerator_control_daemon_CP_0_elements(6) & accelerator_control_daemon_CP_0_elements(7);
      gj_accelerator_control_daemon_cp_element_group_8 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => accelerator_control_daemon_CP_0_elements(8), clk => clk, reset => reset); --
    end block;
    -- CP-element group 9:  merge  transition  place  bypass 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: 	8 
    -- CP-element group 9: 	5 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	10 
    -- CP-element group 9:  members (2) 
      -- CP-element group 9: 	 branch_block_stmt_15/merge_stmt_16_PhiReqMerge
      -- CP-element group 9: 	 branch_block_stmt_15/merge_stmt_16_PhiAck/$entry
      -- 
    accelerator_control_daemon_CP_0_elements(9) <= OrReduce(accelerator_control_daemon_CP_0_elements(8) & accelerator_control_daemon_CP_0_elements(5));
    -- CP-element group 10:  merge  fork  transition  place  input  output  bypass 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	9 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	2 
    -- CP-element group 10: 	1 
    -- CP-element group 10:  members (45) 
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_index_scaled_0
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_index_computed_0
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_index_resize_0/$entry
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_index_resize_0/$exit
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_index_resize_0/index_resize_req
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_index_resize_0/index_resize_ack
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_index_scale_0/$entry
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_index_scale_0/$exit
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_index_scale_0/scale_rename_req
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_index_scale_0/scale_rename_ack
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_final_index_sum_regn/$entry
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_final_index_sum_regn/$exit
      -- CP-element group 10: 	 branch_block_stmt_15/merge_stmt_16__exit__
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32__entry__
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_base_plus_offset/$entry
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_base_plus_offset/$exit
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/$entry
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_sample_start_
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_update_start_
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_word_address_calculated
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_root_address_calculated
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_offset_calculated
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_index_resized_0
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_final_index_sum_regn/req
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_final_index_sum_regn/ack
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_base_plus_offset/sum_rename_req
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_base_plus_offset/sum_rename_ack
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_word_addrgen/$entry
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_word_addrgen/$exit
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_word_addrgen/root_register_req
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_word_addrgen/root_register_ack
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_Sample/$entry
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_Sample/array_obj_ref_30_Split/$entry
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_Sample/array_obj_ref_30_Split/$exit
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_Sample/array_obj_ref_30_Split/split_req
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_Sample/array_obj_ref_30_Split/split_ack
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_Sample/word_access_start/$entry
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_Sample/word_access_start/word_0/$entry
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_Sample/word_access_start/word_0/rr
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_Update/$entry
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_Update/word_access_complete/$entry
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_Update/word_access_complete/word_0/$entry
      -- CP-element group 10: 	 branch_block_stmt_15/assign_stmt_28_to_assign_stmt_32/array_obj_ref_30_Update/word_access_complete/word_0/cr
      -- CP-element group 10: 	 branch_block_stmt_15/merge_stmt_16_PhiAck/$exit
      -- CP-element group 10: 	 branch_block_stmt_15/merge_stmt_16_PhiAck/phi_stmt_17_ack
      -- 
    phi_stmt_17_ack_158_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 10_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_17_ack_0, ack => accelerator_control_daemon_CP_0_elements(10)); -- 
    rr_66_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_66_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accelerator_control_daemon_CP_0_elements(10), ack => array_obj_ref_30_store_0_req_0); -- 
    cr_77_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_77_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accelerator_control_daemon_CP_0_elements(10), ack => array_obj_ref_30_store_0_req_1); -- 
    -- CP-element group 11:  transition  input  output  bypass 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	4 
    -- CP-element group 11: successors 
    -- CP-element group 11: 	12 
    -- CP-element group 11:  members (6) 
      -- CP-element group 11: 	 assign_stmt_42/WPIPE_start_worker_40_sample_completed_
      -- CP-element group 11: 	 assign_stmt_42/WPIPE_start_worker_40_update_start_
      -- CP-element group 11: 	 assign_stmt_42/WPIPE_start_worker_40_Sample/$exit
      -- CP-element group 11: 	 assign_stmt_42/WPIPE_start_worker_40_Sample/ack
      -- CP-element group 11: 	 assign_stmt_42/WPIPE_start_worker_40_Update/$entry
      -- CP-element group 11: 	 assign_stmt_42/WPIPE_start_worker_40_Update/req
      -- 
    ack_170_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 11_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_start_worker_40_inst_ack_0, ack => accelerator_control_daemon_CP_0_elements(11)); -- 
    req_174_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_174_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accelerator_control_daemon_CP_0_elements(11), ack => WPIPE_start_worker_40_inst_req_1); -- 
    -- CP-element group 12:  branch  transition  place  input  bypass 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	11 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	26 
    -- CP-element group 12:  members (10) 
      -- CP-element group 12: 	 assign_stmt_42/$exit
      -- CP-element group 12: 	 assign_stmt_42/WPIPE_start_worker_40_update_completed_
      -- CP-element group 12: 	 assign_stmt_42/WPIPE_start_worker_40_Update/$exit
      -- CP-element group 12: 	 assign_stmt_42/WPIPE_start_worker_40_Update/ack
      -- CP-element group 12: 	 branch_block_stmt_43/$entry
      -- CP-element group 12: 	 branch_block_stmt_43/branch_block_stmt_43__entry__
      -- CP-element group 12: 	 branch_block_stmt_43/merge_stmt_44__entry__
      -- CP-element group 12: 	 branch_block_stmt_43/merge_stmt_44_dead_link/$entry
      -- CP-element group 12: 	 branch_block_stmt_43/merge_stmt_44__entry___PhiReq/$entry
      -- CP-element group 12: 	 branch_block_stmt_43/merge_stmt_44__entry___PhiReq/$exit
      -- 
    ack_175_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 12_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_start_worker_40_inst_ack_1, ack => accelerator_control_daemon_CP_0_elements(12)); -- 
    -- CP-element group 13:  transition  place  bypass 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: successors 
    -- CP-element group 13:  members (3) 
      -- CP-element group 13: 	 $exit
      -- CP-element group 13: 	 branch_block_stmt_43/$exit
      -- CP-element group 13: 	 branch_block_stmt_43/branch_block_stmt_43__exit__
      -- 
    accelerator_control_daemon_CP_0_elements(13) <= false; 
    -- CP-element group 14:  transition  input  output  bypass 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: 	26 
    -- CP-element group 14: successors 
    -- CP-element group 14: 	15 
    -- CP-element group 14:  members (6) 
      -- CP-element group 14: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/RPIPE_AFB_ACCELERATOR_REQUEST_46_sample_completed_
      -- CP-element group 14: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/RPIPE_AFB_ACCELERATOR_REQUEST_46_update_start_
      -- CP-element group 14: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/RPIPE_AFB_ACCELERATOR_REQUEST_46_Sample/$exit
      -- CP-element group 14: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/RPIPE_AFB_ACCELERATOR_REQUEST_46_Sample/ra
      -- CP-element group 14: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/RPIPE_AFB_ACCELERATOR_REQUEST_46_Update/$entry
      -- CP-element group 14: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/RPIPE_AFB_ACCELERATOR_REQUEST_46_Update/cr
      -- 
    ra_197_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 14_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_AFB_ACCELERATOR_REQUEST_46_inst_ack_0, ack => accelerator_control_daemon_CP_0_elements(14)); -- 
    cr_201_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_201_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accelerator_control_daemon_CP_0_elements(14), ack => RPIPE_AFB_ACCELERATOR_REQUEST_46_inst_req_1); -- 
    -- CP-element group 15:  join  fork  transition  input  output  bypass 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: 	14 
    -- CP-element group 15: successors 
    -- CP-element group 15: 	16 
    -- CP-element group 15: 	21 
    -- CP-element group 15: 	18 
    -- CP-element group 15:  members (60) 
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_base_plus_offset/sum_rename_req
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_base_plus_offset/sum_rename_ack
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_word_addrgen/$entry
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_word_addrgen/$exit
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_word_addrgen/root_register_req
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_word_addrgen/root_register_ack
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/RPIPE_AFB_ACCELERATOR_REQUEST_46_update_completed_
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/RPIPE_AFB_ACCELERATOR_REQUEST_46_Update/$exit
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/RPIPE_AFB_ACCELERATOR_REQUEST_46_Update/ca
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_sample_start_
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_word_address_calculated
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_root_address_calculated
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_offset_calculated
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_index_resized_0
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_index_scaled_0
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_index_computed_0
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_index_resize_0/$entry
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_index_resize_0/$exit
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_index_resize_0/index_resize_req
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_index_resize_0/index_resize_ack
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_index_scale_0/$entry
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_index_scale_0/$exit
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_index_scale_0/scale_rename_req
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_index_scale_0/scale_rename_ack
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_final_index_sum_regn/$entry
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_final_index_sum_regn/$exit
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_final_index_sum_regn/req
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_final_index_sum_regn/ack
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_base_plus_offset/$entry
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_base_plus_offset/$exit
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_Sample/$entry
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_Sample/word_access_start/$entry
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_Sample/word_access_start/word_0/$entry
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_Sample/word_access_start/word_0/rr
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_word_address_calculated
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_root_address_calculated
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_offset_calculated
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_index_resized_0
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_index_scaled_0
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_index_computed_0
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_index_resize_0/$entry
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_index_resize_0/$exit
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_index_resize_0/index_resize_req
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_index_resize_0/index_resize_ack
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_index_scale_0/$entry
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_index_scale_0/$exit
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_index_scale_0/scale_rename_req
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_index_scale_0/scale_rename_ack
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_final_index_sum_regn/$entry
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_final_index_sum_regn/$exit
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_final_index_sum_regn/req
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_final_index_sum_regn/ack
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_base_plus_offset/$entry
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_base_plus_offset/$exit
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_base_plus_offset/sum_rename_req
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_base_plus_offset/sum_rename_ack
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_word_addrgen/$entry
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_word_addrgen/$exit
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_word_addrgen/root_register_req
      -- CP-element group 15: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_word_addrgen/root_register_ack
      -- 
    ca_202_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 15_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_AFB_ACCELERATOR_REQUEST_46_inst_ack_1, ack => accelerator_control_daemon_CP_0_elements(15)); -- 
    rr_247_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_247_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accelerator_control_daemon_CP_0_elements(15), ack => array_obj_ref_69_load_0_req_0); -- 
    -- CP-element group 16:  transition  input  bypass 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: 	15 
    -- CP-element group 16: successors 
    -- CP-element group 16: 	24 
    -- CP-element group 16:  members (5) 
      -- CP-element group 16: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_sample_completed_
      -- CP-element group 16: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_Sample/$exit
      -- CP-element group 16: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_Sample/word_access_start/$exit
      -- CP-element group 16: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_Sample/word_access_start/word_0/$exit
      -- CP-element group 16: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_Sample/word_access_start/word_0/ra
      -- 
    ra_248_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 16_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_69_load_0_ack_0, ack => accelerator_control_daemon_CP_0_elements(16)); -- 
    -- CP-element group 17:  transition  input  bypass 
    -- CP-element group 17: predecessors 
    -- CP-element group 17: 	26 
    -- CP-element group 17: successors 
    -- CP-element group 17: 	21 
    -- CP-element group 17:  members (9) 
      -- CP-element group 17: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_update_completed_
      -- CP-element group 17: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_Update/$exit
      -- CP-element group 17: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_Update/word_access_complete/$exit
      -- CP-element group 17: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_Update/word_access_complete/word_0/$exit
      -- CP-element group 17: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_Update/word_access_complete/word_0/ca
      -- CP-element group 17: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_Update/array_obj_ref_69_Merge/$entry
      -- CP-element group 17: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_Update/array_obj_ref_69_Merge/$exit
      -- CP-element group 17: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_Update/array_obj_ref_69_Merge/merge_req
      -- CP-element group 17: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_Update/array_obj_ref_69_Merge/merge_ack
      -- 
    ca_259_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 17_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_69_load_0_ack_1, ack => accelerator_control_daemon_CP_0_elements(17)); -- 
    -- CP-element group 18:  join  transition  output  bypass 
    -- CP-element group 18: predecessors 
    -- CP-element group 18: 	15 
    -- CP-element group 18: 	24 
    -- CP-element group 18: successors 
    -- CP-element group 18: 	19 
    -- CP-element group 18:  members (9) 
      -- CP-element group 18: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_sample_start_
      -- CP-element group 18: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_Sample/$entry
      -- CP-element group 18: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_Sample/array_obj_ref_73_Split/$entry
      -- CP-element group 18: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_Sample/array_obj_ref_73_Split/$exit
      -- CP-element group 18: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_Sample/array_obj_ref_73_Split/split_req
      -- CP-element group 18: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_Sample/array_obj_ref_73_Split/split_ack
      -- CP-element group 18: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_Sample/word_access_start/$entry
      -- CP-element group 18: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_Sample/word_access_start/word_0/$entry
      -- CP-element group 18: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_Sample/word_access_start/word_0/rr
      -- 
    rr_314_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_314_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accelerator_control_daemon_CP_0_elements(18), ack => array_obj_ref_73_store_0_req_0); -- 
    accelerator_control_daemon_cp_element_group_18: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 46) := "accelerator_control_daemon_cp_element_group_18"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= accelerator_control_daemon_CP_0_elements(15) & accelerator_control_daemon_CP_0_elements(24);
      gj_accelerator_control_daemon_cp_element_group_18 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => accelerator_control_daemon_CP_0_elements(18), clk => clk, reset => reset); --
    end block;
    -- CP-element group 19:  transition  input  bypass 
    -- CP-element group 19: predecessors 
    -- CP-element group 19: 	18 
    -- CP-element group 19: successors 
    -- CP-element group 19:  members (5) 
      -- CP-element group 19: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_sample_completed_
      -- CP-element group 19: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_Sample/$exit
      -- CP-element group 19: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_Sample/word_access_start/$exit
      -- CP-element group 19: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_Sample/word_access_start/word_0/$exit
      -- CP-element group 19: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_Sample/word_access_start/word_0/ra
      -- 
    ra_315_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 19_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_73_store_0_ack_0, ack => accelerator_control_daemon_CP_0_elements(19)); -- 
    -- CP-element group 20:  transition  input  bypass 
    -- CP-element group 20: predecessors 
    -- CP-element group 20: 	26 
    -- CP-element group 20: successors 
    -- CP-element group 20: 	25 
    -- CP-element group 20:  members (5) 
      -- CP-element group 20: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_update_completed_
      -- CP-element group 20: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_Update/$exit
      -- CP-element group 20: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_Update/word_access_complete/$exit
      -- CP-element group 20: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_Update/word_access_complete/word_0/$exit
      -- CP-element group 20: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_Update/word_access_complete/word_0/ca
      -- 
    ca_326_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 20_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_73_store_0_ack_1, ack => accelerator_control_daemon_CP_0_elements(20)); -- 
    -- CP-element group 21:  join  transition  output  bypass 
    -- CP-element group 21: predecessors 
    -- CP-element group 21: 	15 
    -- CP-element group 21: 	17 
    -- CP-element group 21: successors 
    -- CP-element group 21: 	22 
    -- CP-element group 21:  members (3) 
      -- CP-element group 21: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/WPIPE_AFB_ACCELERATOR_RESPONSE_85_sample_start_
      -- CP-element group 21: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/WPIPE_AFB_ACCELERATOR_RESPONSE_85_Sample/$entry
      -- CP-element group 21: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/WPIPE_AFB_ACCELERATOR_RESPONSE_85_Sample/req
      -- 
    req_334_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_334_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accelerator_control_daemon_CP_0_elements(21), ack => WPIPE_AFB_ACCELERATOR_RESPONSE_85_inst_req_0); -- 
    accelerator_control_daemon_cp_element_group_21: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 46) := "accelerator_control_daemon_cp_element_group_21"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= accelerator_control_daemon_CP_0_elements(15) & accelerator_control_daemon_CP_0_elements(17);
      gj_accelerator_control_daemon_cp_element_group_21 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => accelerator_control_daemon_CP_0_elements(21), clk => clk, reset => reset); --
    end block;
    -- CP-element group 22:  transition  input  output  bypass 
    -- CP-element group 22: predecessors 
    -- CP-element group 22: 	21 
    -- CP-element group 22: successors 
    -- CP-element group 22: 	23 
    -- CP-element group 22:  members (6) 
      -- CP-element group 22: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/WPIPE_AFB_ACCELERATOR_RESPONSE_85_sample_completed_
      -- CP-element group 22: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/WPIPE_AFB_ACCELERATOR_RESPONSE_85_update_start_
      -- CP-element group 22: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/WPIPE_AFB_ACCELERATOR_RESPONSE_85_Sample/$exit
      -- CP-element group 22: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/WPIPE_AFB_ACCELERATOR_RESPONSE_85_Sample/ack
      -- CP-element group 22: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/WPIPE_AFB_ACCELERATOR_RESPONSE_85_Update/$entry
      -- CP-element group 22: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/WPIPE_AFB_ACCELERATOR_RESPONSE_85_Update/req
      -- 
    ack_335_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 22_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_AFB_ACCELERATOR_RESPONSE_85_inst_ack_0, ack => accelerator_control_daemon_CP_0_elements(22)); -- 
    req_339_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_339_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accelerator_control_daemon_CP_0_elements(22), ack => WPIPE_AFB_ACCELERATOR_RESPONSE_85_inst_req_1); -- 
    -- CP-element group 23:  transition  input  bypass 
    -- CP-element group 23: predecessors 
    -- CP-element group 23: 	22 
    -- CP-element group 23: successors 
    -- CP-element group 23: 	25 
    -- CP-element group 23:  members (3) 
      -- CP-element group 23: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/WPIPE_AFB_ACCELERATOR_RESPONSE_85_update_completed_
      -- CP-element group 23: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/WPIPE_AFB_ACCELERATOR_RESPONSE_85_Update/$exit
      -- CP-element group 23: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/WPIPE_AFB_ACCELERATOR_RESPONSE_85_Update/ack
      -- 
    ack_340_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 23_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_AFB_ACCELERATOR_RESPONSE_85_inst_ack_1, ack => accelerator_control_daemon_CP_0_elements(23)); -- 
    -- CP-element group 24:  transition  delay-element  bypass 
    -- CP-element group 24: predecessors 
    -- CP-element group 24: 	16 
    -- CP-element group 24: successors 
    -- CP-element group 24: 	18 
    -- CP-element group 24:  members (1) 
      -- CP-element group 24: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_array_obj_ref_73_delay
      -- 
    -- Element group accelerator_control_daemon_CP_0_elements(24) is a control-delay.
    cp_element_24_delay: control_delay_element  generic map(name => " 24_delay", delay_value => 1)  port map(req => accelerator_control_daemon_CP_0_elements(16), ack => accelerator_control_daemon_CP_0_elements(24), clk => clk, reset =>reset);
    -- CP-element group 25:  join  transition  place  bypass 
    -- CP-element group 25: predecessors 
    -- CP-element group 25: 	20 
    -- CP-element group 25: 	23 
    -- CP-element group 25: successors 
    -- CP-element group 25: 	26 
    -- CP-element group 25:  members (5) 
      -- CP-element group 25: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87__exit__
      -- CP-element group 25: 	 branch_block_stmt_43/loopback
      -- CP-element group 25: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/$exit
      -- CP-element group 25: 	 branch_block_stmt_43/loopback_PhiReq/$entry
      -- CP-element group 25: 	 branch_block_stmt_43/loopback_PhiReq/$exit
      -- 
    accelerator_control_daemon_cp_element_group_25: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 46) := "accelerator_control_daemon_cp_element_group_25"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= accelerator_control_daemon_CP_0_elements(20) & accelerator_control_daemon_CP_0_elements(23);
      gj_accelerator_control_daemon_cp_element_group_25 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => accelerator_control_daemon_CP_0_elements(25), clk => clk, reset => reset); --
    end block;
    -- CP-element group 26:  merge  fork  transition  place  output  bypass 
    -- CP-element group 26: predecessors 
    -- CP-element group 26: 	12 
    -- CP-element group 26: 	25 
    -- CP-element group 26: successors 
    -- CP-element group 26: 	14 
    -- CP-element group 26: 	17 
    -- CP-element group 26: 	20 
    -- CP-element group 26:  members (20) 
      -- CP-element group 26: 	 branch_block_stmt_43/merge_stmt_44__exit__
      -- CP-element group 26: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87__entry__
      -- CP-element group 26: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/$entry
      -- CP-element group 26: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/RPIPE_AFB_ACCELERATOR_REQUEST_46_sample_start_
      -- CP-element group 26: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/RPIPE_AFB_ACCELERATOR_REQUEST_46_Sample/$entry
      -- CP-element group 26: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/RPIPE_AFB_ACCELERATOR_REQUEST_46_Sample/rr
      -- CP-element group 26: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_update_start_
      -- CP-element group 26: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_Update/$entry
      -- CP-element group 26: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_Update/word_access_complete/$entry
      -- CP-element group 26: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_Update/word_access_complete/word_0/$entry
      -- CP-element group 26: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_69_Update/word_access_complete/word_0/cr
      -- CP-element group 26: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_update_start_
      -- CP-element group 26: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_Update/$entry
      -- CP-element group 26: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_Update/word_access_complete/$entry
      -- CP-element group 26: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_Update/word_access_complete/word_0/$entry
      -- CP-element group 26: 	 branch_block_stmt_43/assign_stmt_47_to_assign_stmt_87/array_obj_ref_73_Update/word_access_complete/word_0/cr
      -- CP-element group 26: 	 branch_block_stmt_43/merge_stmt_44_PhiReqMerge
      -- CP-element group 26: 	 branch_block_stmt_43/merge_stmt_44_PhiAck/$entry
      -- CP-element group 26: 	 branch_block_stmt_43/merge_stmt_44_PhiAck/$exit
      -- CP-element group 26: 	 branch_block_stmt_43/merge_stmt_44_PhiAck/dummy
      -- 
    rr_196_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_196_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accelerator_control_daemon_CP_0_elements(26), ack => RPIPE_AFB_ACCELERATOR_REQUEST_46_inst_req_0); -- 
    cr_258_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_258_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accelerator_control_daemon_CP_0_elements(26), ack => array_obj_ref_69_load_0_req_1); -- 
    cr_325_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_325_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accelerator_control_daemon_CP_0_elements(26), ack => array_obj_ref_73_store_0_req_1); -- 
    accelerator_control_daemon_CP_0_elements(26) <= OrReduce(accelerator_control_daemon_CP_0_elements(12) & accelerator_control_daemon_CP_0_elements(25));
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal I_17 : std_logic_vector(4 downto 0);
    signal MUX_82_wire : std_logic_vector(31 downto 0);
    signal R_I_29_resized : std_logic_vector(3 downto 0);
    signal R_I_29_scaled : std_logic_vector(3 downto 0);
    signal R_reg_index_68_resized : std_logic_vector(3 downto 0);
    signal R_reg_index_68_scaled : std_logic_vector(3 downto 0);
    signal R_reg_index_72_resized : std_logic_vector(3 downto 0);
    signal R_reg_index_72_scaled : std_logic_vector(3 downto 0);
    signal ULT_u5_u1_36_wire : std_logic_vector(0 downto 0);
    signal addr_56 : std_logic_vector(35 downto 0);
    signal array_obj_ref_30_data_0 : std_logic_vector(31 downto 0);
    signal array_obj_ref_30_final_offset : std_logic_vector(3 downto 0);
    signal array_obj_ref_30_offset_scale_factor_0 : std_logic_vector(3 downto 0);
    signal array_obj_ref_30_resized_base_address : std_logic_vector(3 downto 0);
    signal array_obj_ref_30_root_address : std_logic_vector(3 downto 0);
    signal array_obj_ref_30_word_address_0 : std_logic_vector(3 downto 0);
    signal array_obj_ref_30_word_offset_0 : std_logic_vector(3 downto 0);
    signal array_obj_ref_69_data_0 : std_logic_vector(31 downto 0);
    signal array_obj_ref_69_final_offset : std_logic_vector(3 downto 0);
    signal array_obj_ref_69_offset_scale_factor_0 : std_logic_vector(3 downto 0);
    signal array_obj_ref_69_resized_base_address : std_logic_vector(3 downto 0);
    signal array_obj_ref_69_root_address : std_logic_vector(3 downto 0);
    signal array_obj_ref_69_word_address_0 : std_logic_vector(3 downto 0);
    signal array_obj_ref_69_word_offset_0 : std_logic_vector(3 downto 0);
    signal array_obj_ref_73_data_0 : std_logic_vector(31 downto 0);
    signal array_obj_ref_73_final_offset : std_logic_vector(3 downto 0);
    signal array_obj_ref_73_offset_scale_factor_0 : std_logic_vector(3 downto 0);
    signal array_obj_ref_73_resized_base_address : std_logic_vector(3 downto 0);
    signal array_obj_ref_73_root_address : std_logic_vector(3 downto 0);
    signal array_obj_ref_73_word_address_0 : std_logic_vector(3 downto 0);
    signal array_obj_ref_73_word_offset_0 : std_logic_vector(3 downto 0);
    signal cmd_47 : std_logic_vector(73 downto 0);
    signal konst_26_wire_constant : std_logic_vector(4 downto 0);
    signal konst_31_wire_constant : std_logic_vector(31 downto 0);
    signal konst_35_wire_constant : std_logic_vector(4 downto 0);
    signal konst_41_wire_constant : std_logic_vector(0 downto 0);
    signal konst_81_wire_constant : std_logic_vector(31 downto 0);
    signal nI_28 : std_logic_vector(4 downto 0);
    signal nI_28_22_buffered : std_logic_vector(4 downto 0);
    signal rdata_70 : std_logic_vector(31 downto 0);
    signal reg_index_65 : std_logic_vector(3 downto 0);
    signal resp_84 : std_logic_vector(32 downto 0);
    signal rwbar_51 : std_logic_vector(0 downto 0);
    signal type_cast_21_wire_constant : std_logic_vector(4 downto 0);
    signal type_cast_78_wire_constant : std_logic_vector(0 downto 0);
    signal wdata_60 : std_logic_vector(31 downto 0);
    -- 
  begin -- 
    array_obj_ref_30_offset_scale_factor_0 <= "0001";
    array_obj_ref_30_resized_base_address <= "0000";
    array_obj_ref_30_word_offset_0 <= "0000";
    array_obj_ref_69_offset_scale_factor_0 <= "0001";
    array_obj_ref_69_resized_base_address <= "0000";
    array_obj_ref_69_word_offset_0 <= "0000";
    array_obj_ref_73_offset_scale_factor_0 <= "0001";
    array_obj_ref_73_resized_base_address <= "0000";
    array_obj_ref_73_word_offset_0 <= "0000";
    konst_26_wire_constant <= "00001";
    konst_31_wire_constant <= "00000000000000000000000000000000";
    konst_35_wire_constant <= "01111";
    konst_41_wire_constant <= "1";
    konst_81_wire_constant <= "00000000000000000000000000000000";
    type_cast_21_wire_constant <= "00000";
    type_cast_78_wire_constant <= "0";
    phi_stmt_17: Block -- phi operator 
      signal idata: std_logic_vector(9 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= type_cast_21_wire_constant & nI_28_22_buffered;
      req <= phi_stmt_17_req_0 & phi_stmt_17_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_17",
          num_reqs => 2,
          bypass_flag => false,
          data_width => 5) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_17_ack_0,
          idata => idata,
          odata => I_17,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_17
    -- flow-through select operator MUX_82_inst
    MUX_82_wire <= rdata_70 when (rwbar_51(0) /=  '0') else konst_81_wire_constant;
    -- flow-through slice operator slice_50_inst
    rwbar_51 <= cmd_47(72 downto 72);
    -- flow-through slice operator slice_55_inst
    addr_56 <= cmd_47(67 downto 32);
    -- flow-through slice operator slice_59_inst
    wdata_60 <= cmd_47(31 downto 0);
    -- flow-through slice operator slice_64_inst
    reg_index_65 <= addr_56(5 downto 2);
    nI_28_22_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= nI_28_22_buf_req_0;
      nI_28_22_buf_ack_0<= wack(0);
      rreq(0) <= nI_28_22_buf_req_1;
      nI_28_22_buf_ack_1<= rack(0);
      nI_28_22_buf : InterlockBuffer generic map ( -- 
        name => "nI_28_22_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 5,
        out_data_width => 5,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => nI_28,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => nI_28_22_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    -- equivalence array_obj_ref_30_addr_0
    process(array_obj_ref_30_root_address) --
      variable iv : std_logic_vector(3 downto 0);
      variable ov : std_logic_vector(3 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_30_root_address;
      ov(3 downto 0) := iv;
      array_obj_ref_30_word_address_0 <= ov(3 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_30_gather_scatter
    process(konst_31_wire_constant) --
      variable iv : std_logic_vector(31 downto 0);
      variable ov : std_logic_vector(31 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := konst_31_wire_constant;
      ov(31 downto 0) := iv;
      array_obj_ref_30_data_0 <= ov(31 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_30_index_0_rename
    process(R_I_29_resized) --
      variable iv : std_logic_vector(3 downto 0);
      variable ov : std_logic_vector(3 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := R_I_29_resized;
      ov(3 downto 0) := iv;
      R_I_29_scaled <= ov(3 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_30_index_0_resize
    process(I_17) --
      variable iv : std_logic_vector(4 downto 0);
      variable ov : std_logic_vector(3 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := I_17;
      ov := iv(3 downto 0);
      R_I_29_resized <= ov(3 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_30_index_offset
    process(R_I_29_scaled) --
      variable iv : std_logic_vector(3 downto 0);
      variable ov : std_logic_vector(3 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := R_I_29_scaled;
      ov(3 downto 0) := iv;
      array_obj_ref_30_final_offset <= ov(3 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_30_root_address_inst
    process(array_obj_ref_30_final_offset) --
      variable iv : std_logic_vector(3 downto 0);
      variable ov : std_logic_vector(3 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_30_final_offset;
      ov(3 downto 0) := iv;
      array_obj_ref_30_root_address <= ov(3 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_69_addr_0
    process(array_obj_ref_69_root_address) --
      variable iv : std_logic_vector(3 downto 0);
      variable ov : std_logic_vector(3 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_69_root_address;
      ov(3 downto 0) := iv;
      array_obj_ref_69_word_address_0 <= ov(3 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_69_gather_scatter
    process(array_obj_ref_69_data_0) --
      variable iv : std_logic_vector(31 downto 0);
      variable ov : std_logic_vector(31 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_69_data_0;
      ov(31 downto 0) := iv;
      rdata_70 <= ov(31 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_69_index_0_rename
    process(R_reg_index_68_resized) --
      variable iv : std_logic_vector(3 downto 0);
      variable ov : std_logic_vector(3 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := R_reg_index_68_resized;
      ov(3 downto 0) := iv;
      R_reg_index_68_scaled <= ov(3 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_69_index_0_resize
    process(reg_index_65) --
      variable iv : std_logic_vector(3 downto 0);
      variable ov : std_logic_vector(3 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := reg_index_65;
      ov(3 downto 0) := iv;
      R_reg_index_68_resized <= ov(3 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_69_index_offset
    process(R_reg_index_68_scaled) --
      variable iv : std_logic_vector(3 downto 0);
      variable ov : std_logic_vector(3 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := R_reg_index_68_scaled;
      ov(3 downto 0) := iv;
      array_obj_ref_69_final_offset <= ov(3 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_69_root_address_inst
    process(array_obj_ref_69_final_offset) --
      variable iv : std_logic_vector(3 downto 0);
      variable ov : std_logic_vector(3 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_69_final_offset;
      ov(3 downto 0) := iv;
      array_obj_ref_69_root_address <= ov(3 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_73_addr_0
    process(array_obj_ref_73_root_address) --
      variable iv : std_logic_vector(3 downto 0);
      variable ov : std_logic_vector(3 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_73_root_address;
      ov(3 downto 0) := iv;
      array_obj_ref_73_word_address_0 <= ov(3 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_73_gather_scatter
    process(wdata_60) --
      variable iv : std_logic_vector(31 downto 0);
      variable ov : std_logic_vector(31 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := wdata_60;
      ov(31 downto 0) := iv;
      array_obj_ref_73_data_0 <= ov(31 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_73_index_0_rename
    process(R_reg_index_72_resized) --
      variable iv : std_logic_vector(3 downto 0);
      variable ov : std_logic_vector(3 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := R_reg_index_72_resized;
      ov(3 downto 0) := iv;
      R_reg_index_72_scaled <= ov(3 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_73_index_0_resize
    process(reg_index_65) --
      variable iv : std_logic_vector(3 downto 0);
      variable ov : std_logic_vector(3 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := reg_index_65;
      ov(3 downto 0) := iv;
      R_reg_index_72_resized <= ov(3 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_73_index_offset
    process(R_reg_index_72_scaled) --
      variable iv : std_logic_vector(3 downto 0);
      variable ov : std_logic_vector(3 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := R_reg_index_72_scaled;
      ov(3 downto 0) := iv;
      array_obj_ref_73_final_offset <= ov(3 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_73_root_address_inst
    process(array_obj_ref_73_final_offset) --
      variable iv : std_logic_vector(3 downto 0);
      variable ov : std_logic_vector(3 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_73_final_offset;
      ov(3 downto 0) := iv;
      array_obj_ref_73_root_address <= ov(3 downto 0);
      --
    end process;
    if_stmt_33_branch: Block -- 
      -- branch-block
      signal condition_sig : std_logic_vector(0 downto 0);
      begin 
      condition_sig <= ULT_u5_u1_36_wire;
      branch_instance: BranchBase -- 
        generic map( name => "if_stmt_33_branch", condition_width => 1,  bypass_flag => false)
        port map( -- 
          condition => condition_sig,
          req => if_stmt_33_branch_req_0,
          ack0 => if_stmt_33_branch_ack_0,
          ack1 => if_stmt_33_branch_ack_1,
          clk => clk,
          reset => reset); -- 
      --
    end Block; -- branch-block
    -- flow through binary operator ADD_u5_u5_27_inst
    nI_28 <= std_logic_vector(unsigned(I_17) + unsigned(konst_26_wire_constant));
    -- flow through binary operator CONCAT_u1_u33_83_inst
    process(type_cast_78_wire_constant, MUX_82_wire) -- 
      variable tmp_var : std_logic_vector(32 downto 0); -- 
    begin -- 
      ApConcat_proc(type_cast_78_wire_constant, MUX_82_wire, tmp_var);
      resp_84 <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u5_u1_36_inst
    process(I_17) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(I_17, konst_35_wire_constant, tmp_var);
      ULT_u5_u1_36_wire <= tmp_var; --
    end process;
    -- shared load operator group (0) : array_obj_ref_69_load_0 
    LoadGroup0: Block -- 
      signal data_in: std_logic_vector(3 downto 0);
      signal data_out: std_logic_vector(31 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqL_unregulated, ackL_unregulated: BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= array_obj_ref_69_load_0_req_0;
      array_obj_ref_69_load_0_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= array_obj_ref_69_load_0_req_1;
      array_obj_ref_69_load_0_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <= rwbar_51(0);
      reqL <= reqL_unregulated;
      ackL_unregulated <= ackL;
      LoadGroup0_gI: SplitGuardInterface generic map(name => "LoadGroup0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL_unregulated,
        sa_in => ackL_unregulated,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      data_in <= array_obj_ref_69_word_address_0;
      array_obj_ref_69_data_0 <= data_out(31 downto 0);
      LoadReq: LoadReqSharedWithInputBuffers -- 
        generic map ( name => "LoadGroup0", addr_width => 4,
        num_reqs => 1,
        tag_length => 3,
        time_stamp_width => 18,
        min_clock_period => false,
        input_buffering => inBUFs, 
        no_arbitration => false)
        port map ( -- 
          reqL => reqL , 
          ackL => ackL , 
          dataL => data_in, 
          mreq => memory_space_0_lr_req(0),
          mack => memory_space_0_lr_ack(0),
          maddr => memory_space_0_lr_addr(3 downto 0),
          mtag => memory_space_0_lr_tag(20 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      LoadComplete: LoadCompleteShared -- 
        generic map ( name => "LoadGroup0 load-complete ",
        data_width => 32,
        num_reqs => 1,
        tag_length => 3,
        detailed_buffering_per_output => outBUFs, 
        no_arbitration => false)
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          dataR => data_out, 
          mreq => memory_space_0_lc_req(0),
          mack => memory_space_0_lc_ack(0),
          mdata => memory_space_0_lc_data(31 downto 0),
          mtag => memory_space_0_lc_tag(2 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- load group 0
    -- shared store operator group (0) : array_obj_ref_30_store_0 array_obj_ref_73_store_0 
    StoreGroup0: Block -- 
      signal addr_in: std_logic_vector(7 downto 0);
      signal data_in: std_logic_vector(63 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 1 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 1 downto 0);
      signal reqL_unregulated, ackL_unregulated : BooleanArray( 1 downto 0);
      signal guard_vector : std_logic_vector( 1 downto 0);
      constant inBUFs : IntegerArray(1 downto 0) := (1 => 0, 0 => 0);
      constant outBUFs : IntegerArray(1 downto 0) := (1 => 1, 0 => 1);
      constant guardFlags : BooleanArray(1 downto 0) := (0 => true, 1 => false);
      constant guardBuffering: IntegerArray(1 downto 0)  := (0 => 2, 1 => 2);
      -- 
    begin -- 
      reqL_unguarded(1) <= array_obj_ref_30_store_0_req_0;
      reqL_unguarded(0) <= array_obj_ref_73_store_0_req_0;
      array_obj_ref_30_store_0_ack_0 <= ackL_unguarded(1);
      array_obj_ref_73_store_0_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(1) <= array_obj_ref_30_store_0_req_1;
      reqR_unguarded(0) <= array_obj_ref_73_store_0_req_1;
      array_obj_ref_30_store_0_ack_1 <= ackR_unguarded(1);
      array_obj_ref_73_store_0_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  not rwbar_51(0);
      guard_vector(1)  <=  '1';
      StoreGroup0_accessRegulator_0: access_regulator_base generic map (name => "StoreGroup0_accessRegulator_0", num_slots => 1) -- 
        port map (req => reqL_unregulated(0), -- 
          ack => ackL_unregulated(0),
          regulated_req => reqL(0),
          regulated_ack => ackL(0),
          release_req => reqR(0),
          release_ack => ackR(0),
          clk => clk, reset => reset); -- 
      StoreGroup0_accessRegulator_1: access_regulator_base generic map (name => "StoreGroup0_accessRegulator_1", num_slots => 1) -- 
        port map (req => reqL_unregulated(1), -- 
          ack => ackL_unregulated(1),
          regulated_req => reqL(1),
          regulated_ack => ackL(1),
          release_req => reqR(1),
          release_ack => ackR(1),
          clk => clk, reset => reset); -- 
      StoreGroup0_gI: SplitGuardInterface generic map(name => "StoreGroup0_gI", nreqs => 2, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL_unregulated,
        sa_in => ackL_unregulated,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      addr_in <= array_obj_ref_30_word_address_0 & array_obj_ref_73_word_address_0;
      data_in <= array_obj_ref_30_data_0 & array_obj_ref_73_data_0;
      StoreReq: StoreReqSharedWithInputBuffers -- 
        generic map ( name => "StoreGroup0 Req ", addr_width => 4,
        data_width => 32,
        num_reqs => 2,
        tag_length => 3,
        time_stamp_width => 18,
        min_clock_period => false,
        input_buffering => inBUFs, 
        no_arbitration => false)
        port map (--
          reqL => reqL , 
          ackL => ackL , 
          addr => addr_in, 
          data => data_in, 
          mreq => memory_space_0_sr_req(0),
          mack => memory_space_0_sr_ack(0),
          maddr => memory_space_0_sr_addr(3 downto 0),
          mdata => memory_space_0_sr_data(31 downto 0),
          mtag => memory_space_0_sr_tag(20 downto 0),
          clk => clk, reset => reset -- 
        );--
      StoreComplete: StoreCompleteShared -- 
        generic map ( -- 
          name => "StoreGroup0 Complete ",
          num_reqs => 2,
          detailed_buffering_per_output => outBUFs,
          tag_length => 3 -- 
        )
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          mreq => memory_space_0_sc_req(0),
          mack => memory_space_0_sc_ack(0),
          mtag => memory_space_0_sc_tag(2 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- store group 0
    -- shared inport operator group (0) : RPIPE_AFB_ACCELERATOR_REQUEST_46_inst 
    InportGroup_0: Block -- 
      signal data_out: std_logic_vector(73 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_AFB_ACCELERATOR_REQUEST_46_inst_req_0;
      RPIPE_AFB_ACCELERATOR_REQUEST_46_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_AFB_ACCELERATOR_REQUEST_46_inst_req_1;
      RPIPE_AFB_ACCELERATOR_REQUEST_46_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      cmd_47 <= data_out(73 downto 0);
      AFB_ACCELERATOR_REQUEST_read_0_gI: SplitGuardInterface generic map(name => "AFB_ACCELERATOR_REQUEST_read_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      AFB_ACCELERATOR_REQUEST_read_0: InputPort_P2P -- 
        generic map ( name => "AFB_ACCELERATOR_REQUEST_read_0", data_width => 74,    bypass_flag => false,   	nonblocking_read_flag => false,  barrier_flag => false,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => AFB_ACCELERATOR_REQUEST_pipe_read_req(0),
          oack => AFB_ACCELERATOR_REQUEST_pipe_read_ack(0),
          odata => AFB_ACCELERATOR_REQUEST_pipe_read_data(73 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 0
    -- shared outport operator group (0) : WPIPE_AFB_ACCELERATOR_RESPONSE_85_inst 
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
      sample_req_unguarded(0) <= WPIPE_AFB_ACCELERATOR_RESPONSE_85_inst_req_0;
      WPIPE_AFB_ACCELERATOR_RESPONSE_85_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_AFB_ACCELERATOR_RESPONSE_85_inst_req_1;
      WPIPE_AFB_ACCELERATOR_RESPONSE_85_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= resp_84;
      AFB_ACCELERATOR_RESPONSE_write_0_gI: SplitGuardInterface generic map(name => "AFB_ACCELERATOR_RESPONSE_write_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      AFB_ACCELERATOR_RESPONSE_write_0: OutputPortRevised -- 
        generic map ( name => "AFB_ACCELERATOR_RESPONSE", data_width => 33, num_reqs => 1, input_buffering => inBUFs, full_rate => false,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => AFB_ACCELERATOR_RESPONSE_pipe_write_req(0),
          oack => AFB_ACCELERATOR_RESPONSE_pipe_write_ack(0),
          odata => AFB_ACCELERATOR_RESPONSE_pipe_write_data(32 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    -- shared outport operator group (1) : WPIPE_start_worker_40_inst 
    OutportGroup_1: Block -- 
      signal data_in: std_logic_vector(0 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_start_worker_40_inst_req_0;
      WPIPE_start_worker_40_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_start_worker_40_inst_req_1;
      WPIPE_start_worker_40_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= konst_41_wire_constant;
      start_worker_write_1_gI: SplitGuardInterface generic map(name => "start_worker_write_1_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      start_worker_write_1: OutputPortRevised -- 
        generic map ( name => "start_worker", data_width => 1, num_reqs => 1, input_buffering => inBUFs, full_rate => false,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => start_worker_pipe_write_req(0),
          oack => start_worker_pipe_write_ack(0),
          odata => start_worker_pipe_write_data(0 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 1
    -- 
  end Block; -- data_path
  -- 
end accelerator_control_daemon_arch;
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
use ahir.functionLibraryComponents.all;
library work;
use work.accelerator_global_package.all;
entity accelerator_interrupt_daemon is -- 
  generic (tag_length : integer); 
  port ( -- 
    memory_space_0_lr_req : out  std_logic_vector(0 downto 0);
    memory_space_0_lr_ack : in   std_logic_vector(0 downto 0);
    memory_space_0_lr_addr : out  std_logic_vector(3 downto 0);
    memory_space_0_lr_tag :  out  std_logic_vector(20 downto 0);
    memory_space_0_lc_req : out  std_logic_vector(0 downto 0);
    memory_space_0_lc_ack : in   std_logic_vector(0 downto 0);
    memory_space_0_lc_data : in   std_logic_vector(31 downto 0);
    memory_space_0_lc_tag :  in  std_logic_vector(2 downto 0);
    ACCELERATOR_INTERRUPT_pipe_write_req : out  std_logic_vector(0 downto 0);
    ACCELERATOR_INTERRUPT_pipe_write_ack : in   std_logic_vector(0 downto 0);
    ACCELERATOR_INTERRUPT_pipe_write_data : out  std_logic_vector(0 downto 0);
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
end entity accelerator_interrupt_daemon;
architecture accelerator_interrupt_daemon_arch of accelerator_interrupt_daemon is -- 
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
  signal accelerator_interrupt_daemon_CP_357_start: Boolean;
  signal accelerator_interrupt_daemon_CP_357_symbol: Boolean;
  -- volatile/operator module components. 
  -- links between control-path and data-path
  signal array_obj_ref_96_load_0_req_0 : boolean;
  signal array_obj_ref_96_load_0_ack_0 : boolean;
  signal array_obj_ref_96_load_0_req_1 : boolean;
  signal array_obj_ref_96_load_0_ack_1 : boolean;
  signal BITSEL_u32_u1_101_inst_req_0 : boolean;
  signal BITSEL_u32_u1_101_inst_ack_0 : boolean;
  signal BITSEL_u32_u1_101_inst_req_1 : boolean;
  signal BITSEL_u32_u1_101_inst_ack_1 : boolean;
  signal WPIPE_ACCELERATOR_INTERRUPT_98_inst_req_0 : boolean;
  signal WPIPE_ACCELERATOR_INTERRUPT_98_inst_ack_0 : boolean;
  signal WPIPE_ACCELERATOR_INTERRUPT_98_inst_req_1 : boolean;
  signal WPIPE_ACCELERATOR_INTERRUPT_98_inst_ack_1 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "accelerator_interrupt_daemon_input_buffer", -- 
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
  accelerator_interrupt_daemon_CP_357_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "accelerator_interrupt_daemon_out_buffer", -- 
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
    preds <= accelerator_interrupt_daemon_CP_357_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
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
    preds <= accelerator_interrupt_daemon_CP_357_start & tag_ilock_write_ack_symbol;
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
    preds <= accelerator_interrupt_daemon_CP_357_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  accelerator_interrupt_daemon_CP_357: Block -- control-path 
    signal accelerator_interrupt_daemon_CP_357_elements: BooleanArray(8 downto 0);
    -- 
  begin -- 
    accelerator_interrupt_daemon_CP_357_elements(0) <= accelerator_interrupt_daemon_CP_357_start;
    accelerator_interrupt_daemon_CP_357_symbol <= accelerator_interrupt_daemon_CP_357_elements(1);
    -- CP-element group 0:  branch  transition  place  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	8 
    -- CP-element group 0:  members (7) 
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 branch_block_stmt_92/$entry
      -- CP-element group 0: 	 branch_block_stmt_92/branch_block_stmt_92__entry__
      -- CP-element group 0: 	 branch_block_stmt_92/merge_stmt_93__entry__
      -- CP-element group 0: 	 branch_block_stmt_92/merge_stmt_93_dead_link/$entry
      -- CP-element group 0: 	 branch_block_stmt_92/merge_stmt_93__entry___PhiReq/$entry
      -- CP-element group 0: 	 branch_block_stmt_92/merge_stmt_93__entry___PhiReq/$exit
      -- 
    -- CP-element group 1:  transition  place  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: successors 
    -- CP-element group 1:  members (3) 
      -- CP-element group 1: 	 $exit
      -- CP-element group 1: 	 branch_block_stmt_92/$exit
      -- CP-element group 1: 	 branch_block_stmt_92/branch_block_stmt_92__exit__
      -- 
    accelerator_interrupt_daemon_CP_357_elements(1) <= false; 
    -- CP-element group 2:  transition  input  bypass 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	8 
    -- CP-element group 2: successors 
    -- CP-element group 2:  members (5) 
      -- CP-element group 2: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/array_obj_ref_96_sample_completed_
      -- CP-element group 2: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/array_obj_ref_96_Sample/$exit
      -- CP-element group 2: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/array_obj_ref_96_Sample/word_access_start/$exit
      -- CP-element group 2: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/array_obj_ref_96_Sample/word_access_start/word_0/$exit
      -- CP-element group 2: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/array_obj_ref_96_Sample/word_access_start/word_0/ra
      -- 
    ra_389_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 2_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_96_load_0_ack_0, ack => accelerator_interrupt_daemon_CP_357_elements(2)); -- 
    -- CP-element group 3:  transition  input  output  bypass 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: 	8 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	4 
    -- CP-element group 3:  members (12) 
      -- CP-element group 3: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/array_obj_ref_96_update_completed_
      -- CP-element group 3: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/array_obj_ref_96_Update/$exit
      -- CP-element group 3: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/array_obj_ref_96_Update/word_access_complete/$exit
      -- CP-element group 3: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/array_obj_ref_96_Update/word_access_complete/word_0/$exit
      -- CP-element group 3: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/array_obj_ref_96_Update/word_access_complete/word_0/ca
      -- CP-element group 3: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/array_obj_ref_96_Update/array_obj_ref_96_Merge/$entry
      -- CP-element group 3: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/array_obj_ref_96_Update/array_obj_ref_96_Merge/$exit
      -- CP-element group 3: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/array_obj_ref_96_Update/array_obj_ref_96_Merge/merge_req
      -- CP-element group 3: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/array_obj_ref_96_Update/array_obj_ref_96_Merge/merge_ack
      -- CP-element group 3: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/BITSEL_u32_u1_101_sample_start_
      -- CP-element group 3: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/BITSEL_u32_u1_101_Sample/$entry
      -- CP-element group 3: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/BITSEL_u32_u1_101_Sample/rr
      -- 
    ca_400_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 3_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_96_load_0_ack_1, ack => accelerator_interrupt_daemon_CP_357_elements(3)); -- 
    rr_413_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_413_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accelerator_interrupt_daemon_CP_357_elements(3), ack => BITSEL_u32_u1_101_inst_req_0); -- 
    -- CP-element group 4:  transition  input  bypass 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: 	3 
    -- CP-element group 4: successors 
    -- CP-element group 4:  members (3) 
      -- CP-element group 4: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/BITSEL_u32_u1_101_sample_completed_
      -- CP-element group 4: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/BITSEL_u32_u1_101_Sample/$exit
      -- CP-element group 4: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/BITSEL_u32_u1_101_Sample/ra
      -- 
    ra_414_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 4_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => BITSEL_u32_u1_101_inst_ack_0, ack => accelerator_interrupt_daemon_CP_357_elements(4)); -- 
    -- CP-element group 5:  transition  input  output  bypass 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	8 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	6 
    -- CP-element group 5:  members (6) 
      -- CP-element group 5: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/BITSEL_u32_u1_101_update_completed_
      -- CP-element group 5: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/BITSEL_u32_u1_101_Update/$exit
      -- CP-element group 5: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/BITSEL_u32_u1_101_Update/ca
      -- CP-element group 5: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/WPIPE_ACCELERATOR_INTERRUPT_98_sample_start_
      -- CP-element group 5: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/WPIPE_ACCELERATOR_INTERRUPT_98_Sample/$entry
      -- CP-element group 5: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/WPIPE_ACCELERATOR_INTERRUPT_98_Sample/req
      -- 
    ca_419_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 5_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => BITSEL_u32_u1_101_inst_ack_1, ack => accelerator_interrupt_daemon_CP_357_elements(5)); -- 
    req_427_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_427_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accelerator_interrupt_daemon_CP_357_elements(5), ack => WPIPE_ACCELERATOR_INTERRUPT_98_inst_req_0); -- 
    -- CP-element group 6:  transition  input  output  bypass 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	5 
    -- CP-element group 6: successors 
    -- CP-element group 6: 	7 
    -- CP-element group 6:  members (6) 
      -- CP-element group 6: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/WPIPE_ACCELERATOR_INTERRUPT_98_sample_completed_
      -- CP-element group 6: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/WPIPE_ACCELERATOR_INTERRUPT_98_update_start_
      -- CP-element group 6: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/WPIPE_ACCELERATOR_INTERRUPT_98_Sample/$exit
      -- CP-element group 6: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/WPIPE_ACCELERATOR_INTERRUPT_98_Sample/ack
      -- CP-element group 6: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/WPIPE_ACCELERATOR_INTERRUPT_98_Update/$entry
      -- CP-element group 6: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/WPIPE_ACCELERATOR_INTERRUPT_98_Update/req
      -- 
    ack_428_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 6_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_ACCELERATOR_INTERRUPT_98_inst_ack_0, ack => accelerator_interrupt_daemon_CP_357_elements(6)); -- 
    req_432_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_432_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accelerator_interrupt_daemon_CP_357_elements(6), ack => WPIPE_ACCELERATOR_INTERRUPT_98_inst_req_1); -- 
    -- CP-element group 7:  transition  place  input  bypass 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	6 
    -- CP-element group 7: successors 
    -- CP-element group 7: 	8 
    -- CP-element group 7:  members (8) 
      -- CP-element group 7: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102__exit__
      -- CP-element group 7: 	 branch_block_stmt_92/loopback
      -- CP-element group 7: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/$exit
      -- CP-element group 7: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/WPIPE_ACCELERATOR_INTERRUPT_98_update_completed_
      -- CP-element group 7: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/WPIPE_ACCELERATOR_INTERRUPT_98_Update/$exit
      -- CP-element group 7: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/WPIPE_ACCELERATOR_INTERRUPT_98_Update/ack
      -- CP-element group 7: 	 branch_block_stmt_92/loopback_PhiReq/$entry
      -- CP-element group 7: 	 branch_block_stmt_92/loopback_PhiReq/$exit
      -- 
    ack_433_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 7_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_ACCELERATOR_INTERRUPT_98_inst_ack_1, ack => accelerator_interrupt_daemon_CP_357_elements(7)); -- 
    -- CP-element group 8:  merge  fork  transition  place  output  bypass 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	7 
    -- CP-element group 8: 	0 
    -- CP-element group 8: successors 
    -- CP-element group 8: 	2 
    -- CP-element group 8: 	5 
    -- CP-element group 8: 	3 
    -- CP-element group 8:  members (22) 
      -- CP-element group 8: 	 branch_block_stmt_92/merge_stmt_93__exit__
      -- CP-element group 8: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102__entry__
      -- CP-element group 8: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/$entry
      -- CP-element group 8: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/array_obj_ref_96_sample_start_
      -- CP-element group 8: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/array_obj_ref_96_update_start_
      -- CP-element group 8: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/array_obj_ref_96_word_address_calculated
      -- CP-element group 8: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/array_obj_ref_96_root_address_calculated
      -- CP-element group 8: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/array_obj_ref_96_Sample/$entry
      -- CP-element group 8: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/array_obj_ref_96_Sample/word_access_start/$entry
      -- CP-element group 8: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/array_obj_ref_96_Sample/word_access_start/word_0/$entry
      -- CP-element group 8: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/array_obj_ref_96_Sample/word_access_start/word_0/rr
      -- CP-element group 8: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/array_obj_ref_96_Update/$entry
      -- CP-element group 8: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/array_obj_ref_96_Update/word_access_complete/$entry
      -- CP-element group 8: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/array_obj_ref_96_Update/word_access_complete/word_0/$entry
      -- CP-element group 8: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/array_obj_ref_96_Update/word_access_complete/word_0/cr
      -- CP-element group 8: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/BITSEL_u32_u1_101_update_start_
      -- CP-element group 8: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/BITSEL_u32_u1_101_Update/$entry
      -- CP-element group 8: 	 branch_block_stmt_92/assign_stmt_97_to_assign_stmt_102/BITSEL_u32_u1_101_Update/cr
      -- CP-element group 8: 	 branch_block_stmt_92/merge_stmt_93_PhiReqMerge
      -- CP-element group 8: 	 branch_block_stmt_92/merge_stmt_93_PhiAck/$entry
      -- CP-element group 8: 	 branch_block_stmt_92/merge_stmt_93_PhiAck/$exit
      -- CP-element group 8: 	 branch_block_stmt_92/merge_stmt_93_PhiAck/dummy
      -- 
    rr_388_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_388_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accelerator_interrupt_daemon_CP_357_elements(8), ack => array_obj_ref_96_load_0_req_0); -- 
    cr_399_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_399_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accelerator_interrupt_daemon_CP_357_elements(8), ack => array_obj_ref_96_load_0_req_1); -- 
    cr_418_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_418_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accelerator_interrupt_daemon_CP_357_elements(8), ack => BITSEL_u32_u1_101_inst_req_1); -- 
    accelerator_interrupt_daemon_CP_357_elements(8) <= OrReduce(accelerator_interrupt_daemon_CP_357_elements(7) & accelerator_interrupt_daemon_CP_357_elements(0));
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal BITSEL_u32_u1_101_wire : std_logic_vector(0 downto 0);
    signal array_obj_ref_96_data_0 : std_logic_vector(31 downto 0);
    signal array_obj_ref_96_word_address_0 : std_logic_vector(3 downto 0);
    signal konst_100_wire_constant : std_logic_vector(31 downto 0);
    signal r0_97 : std_logic_vector(31 downto 0);
    -- 
  begin -- 
    array_obj_ref_96_word_address_0 <= "0000";
    konst_100_wire_constant <= "00000000000000000000000000000100";
    -- equivalence array_obj_ref_96_gather_scatter
    process(array_obj_ref_96_data_0) --
      variable iv : std_logic_vector(31 downto 0);
      variable ov : std_logic_vector(31 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_96_data_0;
      ov(31 downto 0) := iv;
      r0_97 <= ov(31 downto 0);
      --
    end process;
    -- shared split operator group (0) : BITSEL_u32_u1_101_inst 
    ApBitsel_group_0: Block -- 
      signal data_in: std_logic_vector(31 downto 0);
      signal data_out: std_logic_vector(0 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      data_in <= r0_97;
      BITSEL_u32_u1_101_wire <= data_out(0 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= BITSEL_u32_u1_101_inst_req_0;
      BITSEL_u32_u1_101_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= BITSEL_u32_u1_101_inst_req_1;
      BITSEL_u32_u1_101_inst_ack_1 <= ackR_unguarded(0);
      ApBitsel_group_0_gI: SplitGuardInterface generic map(name => "ApBitsel_group_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
      UnsharedOperator: UnsharedOperatorWithBuffering -- 
        generic map ( -- 
          operator_id => "ApBitsel",
          name => "ApBitsel_group_0",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 32,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 0, 
          num_inputs    => 1,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 1,
          constant_operand => "00000000000000000000000000000100",
          constant_width => 32,
          buffering  => 1,
          flow_through => false,
          full_rate  => false,
          use_constant  => true
          --
        ) 
        port map ( -- 
          reqL => reqL(0),
          ackL => ackL(0),
          reqR => reqR(0),
          ackR => ackR(0),
          dataL => data_in, 
          dataR => data_out,
          clk => clk,
          reset => reset); -- 
      -- 
    end Block; -- split operator group 0
    -- shared load operator group (0) : array_obj_ref_96_load_0 
    LoadGroup0: Block -- 
      signal data_in: std_logic_vector(3 downto 0);
      signal data_out: std_logic_vector(31 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqL_unregulated, ackL_unregulated: BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= array_obj_ref_96_load_0_req_0;
      array_obj_ref_96_load_0_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= array_obj_ref_96_load_0_req_1;
      array_obj_ref_96_load_0_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      reqL <= reqL_unregulated;
      ackL_unregulated <= ackL;
      LoadGroup0_gI: SplitGuardInterface generic map(name => "LoadGroup0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL_unregulated,
        sa_in => ackL_unregulated,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      data_in <= array_obj_ref_96_word_address_0;
      array_obj_ref_96_data_0 <= data_out(31 downto 0);
      LoadReq: LoadReqSharedWithInputBuffers -- 
        generic map ( name => "LoadGroup0", addr_width => 4,
        num_reqs => 1,
        tag_length => 3,
        time_stamp_width => 18,
        min_clock_period => false,
        input_buffering => inBUFs, 
        no_arbitration => false)
        port map ( -- 
          reqL => reqL , 
          ackL => ackL , 
          dataL => data_in, 
          mreq => memory_space_0_lr_req(0),
          mack => memory_space_0_lr_ack(0),
          maddr => memory_space_0_lr_addr(3 downto 0),
          mtag => memory_space_0_lr_tag(20 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      LoadComplete: LoadCompleteShared -- 
        generic map ( name => "LoadGroup0 load-complete ",
        data_width => 32,
        num_reqs => 1,
        tag_length => 3,
        detailed_buffering_per_output => outBUFs, 
        no_arbitration => false)
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          dataR => data_out, 
          mreq => memory_space_0_lc_req(0),
          mack => memory_space_0_lc_ack(0),
          mdata => memory_space_0_lc_data(31 downto 0),
          mtag => memory_space_0_lc_tag(2 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- load group 0
    -- shared outport operator group (0) : WPIPE_ACCELERATOR_INTERRUPT_98_inst 
    OutportGroup_0: Block -- 
      signal data_in: std_logic_vector(0 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_ACCELERATOR_INTERRUPT_98_inst_req_0;
      WPIPE_ACCELERATOR_INTERRUPT_98_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_ACCELERATOR_INTERRUPT_98_inst_req_1;
      WPIPE_ACCELERATOR_INTERRUPT_98_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= BITSEL_u32_u1_101_wire;
      ACCELERATOR_INTERRUPT_write_0_gI: SplitGuardInterface generic map(name => "ACCELERATOR_INTERRUPT_write_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      ACCELERATOR_INTERRUPT_write_0: OutputPortRevised -- 
        generic map ( name => "ACCELERATOR_INTERRUPT", data_width => 1, num_reqs => 1, input_buffering => inBUFs, full_rate => false,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => ACCELERATOR_INTERRUPT_pipe_write_req(0),
          oack => ACCELERATOR_INTERRUPT_pipe_write_ack(0),
          odata => ACCELERATOR_INTERRUPT_pipe_write_data(0 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    -- 
  end Block; -- data_path
  -- 
end accelerator_interrupt_daemon_arch;
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
use ahir.functionLibraryComponents.all;
library work;
use work.accelerator_global_package.all;
entity accelerator_worker_daemon is -- 
  generic (tag_length : integer); 
  port ( -- 
    memory_space_0_lr_req : out  std_logic_vector(0 downto 0);
    memory_space_0_lr_ack : in   std_logic_vector(0 downto 0);
    memory_space_0_lr_addr : out  std_logic_vector(3 downto 0);
    memory_space_0_lr_tag :  out  std_logic_vector(20 downto 0);
    memory_space_0_lc_req : out  std_logic_vector(0 downto 0);
    memory_space_0_lc_ack : in   std_logic_vector(0 downto 0);
    memory_space_0_lc_data : in   std_logic_vector(31 downto 0);
    memory_space_0_lc_tag :  in  std_logic_vector(2 downto 0);
    memory_space_0_sr_req : out  std_logic_vector(0 downto 0);
    memory_space_0_sr_ack : in   std_logic_vector(0 downto 0);
    memory_space_0_sr_addr : out  std_logic_vector(3 downto 0);
    memory_space_0_sr_data : out  std_logic_vector(31 downto 0);
    memory_space_0_sr_tag :  out  std_logic_vector(20 downto 0);
    memory_space_0_sc_req : out  std_logic_vector(0 downto 0);
    memory_space_0_sc_ack : in   std_logic_vector(0 downto 0);
    memory_space_0_sc_tag :  in  std_logic_vector(2 downto 0);
    start_worker_pipe_read_req : out  std_logic_vector(0 downto 0);
    start_worker_pipe_read_ack : in   std_logic_vector(0 downto 0);
    start_worker_pipe_read_data : in   std_logic_vector(0 downto 0);
    execute_job_call_reqs : out  std_logic_vector(0 downto 0);
    execute_job_call_acks : in   std_logic_vector(0 downto 0);
    execute_job_call_tag  :  out  std_logic_vector(0 downto 0);
    execute_job_return_reqs : out  std_logic_vector(0 downto 0);
    execute_job_return_acks : in   std_logic_vector(0 downto 0);
    execute_job_return_tag :  in   std_logic_vector(0 downto 0);
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
end entity accelerator_worker_daemon;
architecture accelerator_worker_daemon_arch of accelerator_worker_daemon is -- 
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
  signal accelerator_worker_daemon_CP_907_start: Boolean;
  signal accelerator_worker_daemon_CP_907_symbol: Boolean;
  -- volatile/operator module components. 
  component execute_job is -- 
    generic (tag_length : integer); 
    port ( -- 
      memory_space_0_lr_req : out  std_logic_vector(0 downto 0);
      memory_space_0_lr_ack : in   std_logic_vector(0 downto 0);
      memory_space_0_lr_addr : out  std_logic_vector(3 downto 0);
      memory_space_0_lr_tag :  out  std_logic_vector(20 downto 0);
      memory_space_0_lc_req : out  std_logic_vector(0 downto 0);
      memory_space_0_lc_ack : in   std_logic_vector(0 downto 0);
      memory_space_0_lc_data : in   std_logic_vector(31 downto 0);
      memory_space_0_lc_tag :  in  std_logic_vector(2 downto 0);
      access_mem_128_call_reqs : out  std_logic_vector(0 downto 0);
      access_mem_128_call_acks : in   std_logic_vector(0 downto 0);
      access_mem_128_call_data : out  std_logic_vector(160 downto 0);
      access_mem_128_call_tag  :  out  std_logic_vector(1 downto 0);
      access_mem_128_return_reqs : out  std_logic_vector(0 downto 0);
      access_mem_128_return_acks : in   std_logic_vector(0 downto 0);
      access_mem_128_return_data : in   std_logic_vector(127 downto 0);
      access_mem_128_return_tag :  in   std_logic_vector(1 downto 0);
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
  -- links between control-path and data-path
  signal RPIPE_start_worker_244_inst_req_0 : boolean;
  signal RPIPE_start_worker_244_inst_ack_0 : boolean;
  signal RPIPE_start_worker_244_inst_req_1 : boolean;
  signal RPIPE_start_worker_244_inst_ack_1 : boolean;
  signal array_obj_ref_251_load_0_req_0 : boolean;
  signal array_obj_ref_251_load_0_ack_0 : boolean;
  signal array_obj_ref_251_load_0_req_1 : boolean;
  signal array_obj_ref_251_load_0_ack_1 : boolean;
  signal if_stmt_267_branch_req_0 : boolean;
  signal if_stmt_267_branch_ack_1 : boolean;
  signal if_stmt_267_branch_ack_0 : boolean;
  signal AND_u32_u32_277_inst_req_0 : boolean;
  signal AND_u32_u32_277_inst_ack_0 : boolean;
  signal AND_u32_u32_277_inst_req_1 : boolean;
  signal AND_u32_u32_277_inst_ack_1 : boolean;
  signal array_obj_ref_273_store_0_req_0 : boolean;
  signal array_obj_ref_273_store_0_ack_0 : boolean;
  signal array_obj_ref_273_store_0_req_1 : boolean;
  signal array_obj_ref_273_store_0_ack_1 : boolean;
  signal call_stmt_280_call_req_0 : boolean;
  signal call_stmt_280_call_ack_0 : boolean;
  signal call_stmt_280_call_req_1 : boolean;
  signal call_stmt_280_call_ack_1 : boolean;
  signal CONCAT_u28_u32_304_inst_req_0 : boolean;
  signal CONCAT_u28_u32_304_inst_ack_0 : boolean;
  signal CONCAT_u28_u32_304_inst_req_1 : boolean;
  signal CONCAT_u28_u32_304_inst_ack_1 : boolean;
  signal array_obj_ref_292_store_0_req_0 : boolean;
  signal array_obj_ref_292_store_0_ack_0 : boolean;
  signal array_obj_ref_292_store_0_req_1 : boolean;
  signal array_obj_ref_292_store_0_ack_1 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "accelerator_worker_daemon_input_buffer", -- 
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
  accelerator_worker_daemon_CP_907_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "accelerator_worker_daemon_out_buffer", -- 
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
    preds <= accelerator_worker_daemon_CP_907_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
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
    preds <= accelerator_worker_daemon_CP_907_start & tag_ilock_write_ack_symbol;
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
    preds <= accelerator_worker_daemon_CP_907_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  accelerator_worker_daemon_CP_907: Block -- control-path 
    signal accelerator_worker_daemon_CP_907_elements: BooleanArray(21 downto 0);
    -- 
  begin -- 
    accelerator_worker_daemon_CP_907_elements(0) <= accelerator_worker_daemon_CP_907_start;
    accelerator_worker_daemon_CP_907_symbol <= accelerator_worker_daemon_CP_907_elements(3);
    -- CP-element group 0:  transition  output  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	1 
    -- CP-element group 0:  members (5) 
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 assign_stmt_245/$entry
      -- CP-element group 0: 	 assign_stmt_245/RPIPE_start_worker_244_sample_start_
      -- CP-element group 0: 	 assign_stmt_245/RPIPE_start_worker_244_Sample/$entry
      -- CP-element group 0: 	 assign_stmt_245/RPIPE_start_worker_244_Sample/rr
      -- 
    rr_920_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_920_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accelerator_worker_daemon_CP_907_elements(0), ack => RPIPE_start_worker_244_inst_req_0); -- 
    -- CP-element group 1:  transition  input  output  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	0 
    -- CP-element group 1: successors 
    -- CP-element group 1: 	2 
    -- CP-element group 1:  members (6) 
      -- CP-element group 1: 	 assign_stmt_245/RPIPE_start_worker_244_sample_completed_
      -- CP-element group 1: 	 assign_stmt_245/RPIPE_start_worker_244_update_start_
      -- CP-element group 1: 	 assign_stmt_245/RPIPE_start_worker_244_Sample/$exit
      -- CP-element group 1: 	 assign_stmt_245/RPIPE_start_worker_244_Sample/ra
      -- CP-element group 1: 	 assign_stmt_245/RPIPE_start_worker_244_Update/$entry
      -- CP-element group 1: 	 assign_stmt_245/RPIPE_start_worker_244_Update/cr
      -- 
    ra_921_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 1_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_start_worker_244_inst_ack_0, ack => accelerator_worker_daemon_CP_907_elements(1)); -- 
    cr_925_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_925_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accelerator_worker_daemon_CP_907_elements(1), ack => RPIPE_start_worker_244_inst_req_1); -- 
    -- CP-element group 2:  branch  transition  place  input  bypass 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	1 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	20 
    -- CP-element group 2:  members (10) 
      -- CP-element group 2: 	 assign_stmt_245/$exit
      -- CP-element group 2: 	 assign_stmt_245/RPIPE_start_worker_244_update_completed_
      -- CP-element group 2: 	 assign_stmt_245/RPIPE_start_worker_244_Update/$exit
      -- CP-element group 2: 	 assign_stmt_245/RPIPE_start_worker_244_Update/ca
      -- CP-element group 2: 	 branch_block_stmt_246/$entry
      -- CP-element group 2: 	 branch_block_stmt_246/branch_block_stmt_246__entry__
      -- CP-element group 2: 	 branch_block_stmt_246/merge_stmt_247__entry__
      -- CP-element group 2: 	 branch_block_stmt_246/merge_stmt_247_dead_link/$entry
      -- CP-element group 2: 	 branch_block_stmt_246/merge_stmt_247__entry___PhiReq/$entry
      -- CP-element group 2: 	 branch_block_stmt_246/merge_stmt_247__entry___PhiReq/$exit
      -- 
    ca_926_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 2_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_start_worker_244_inst_ack_1, ack => accelerator_worker_daemon_CP_907_elements(2)); -- 
    -- CP-element group 3:  transition  place  bypass 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: successors 
    -- CP-element group 3:  members (3) 
      -- CP-element group 3: 	 $exit
      -- CP-element group 3: 	 branch_block_stmt_246/$exit
      -- CP-element group 3: 	 branch_block_stmt_246/branch_block_stmt_246__exit__
      -- 
    accelerator_worker_daemon_CP_907_elements(3) <= false; 
    -- CP-element group 4:  transition  input  bypass 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: 	21 
    -- CP-element group 4: successors 
    -- CP-element group 4:  members (5) 
      -- CP-element group 4: 	 branch_block_stmt_246/assign_stmt_252_to_assign_stmt_266/array_obj_ref_251_sample_completed_
      -- CP-element group 4: 	 branch_block_stmt_246/assign_stmt_252_to_assign_stmt_266/array_obj_ref_251_Sample/$exit
      -- CP-element group 4: 	 branch_block_stmt_246/assign_stmt_252_to_assign_stmt_266/array_obj_ref_251_Sample/word_access_start/$exit
      -- CP-element group 4: 	 branch_block_stmt_246/assign_stmt_252_to_assign_stmt_266/array_obj_ref_251_Sample/word_access_start/word_0/$exit
      -- CP-element group 4: 	 branch_block_stmt_246/assign_stmt_252_to_assign_stmt_266/array_obj_ref_251_Sample/word_access_start/word_0/ra
      -- 
    ra_966_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 4_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_251_load_0_ack_0, ack => accelerator_worker_daemon_CP_907_elements(4)); -- 
    -- CP-element group 5:  branch  transition  place  input  output  bypass 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	21 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	6 
    -- CP-element group 5: 	7 
    -- CP-element group 5:  members (31) 
      -- CP-element group 5: 	 branch_block_stmt_246/assign_stmt_252_to_assign_stmt_266__exit__
      -- CP-element group 5: 	 branch_block_stmt_246/if_stmt_267__entry__
      -- CP-element group 5: 	 branch_block_stmt_246/assign_stmt_252_to_assign_stmt_266/$exit
      -- CP-element group 5: 	 branch_block_stmt_246/assign_stmt_252_to_assign_stmt_266/array_obj_ref_251_update_completed_
      -- CP-element group 5: 	 branch_block_stmt_246/assign_stmt_252_to_assign_stmt_266/array_obj_ref_251_Update/$exit
      -- CP-element group 5: 	 branch_block_stmt_246/assign_stmt_252_to_assign_stmt_266/array_obj_ref_251_Update/word_access_complete/$exit
      -- CP-element group 5: 	 branch_block_stmt_246/assign_stmt_252_to_assign_stmt_266/array_obj_ref_251_Update/word_access_complete/word_0/$exit
      -- CP-element group 5: 	 branch_block_stmt_246/assign_stmt_252_to_assign_stmt_266/array_obj_ref_251_Update/word_access_complete/word_0/ca
      -- CP-element group 5: 	 branch_block_stmt_246/assign_stmt_252_to_assign_stmt_266/array_obj_ref_251_Update/array_obj_ref_251_Merge/$entry
      -- CP-element group 5: 	 branch_block_stmt_246/assign_stmt_252_to_assign_stmt_266/array_obj_ref_251_Update/array_obj_ref_251_Merge/$exit
      -- CP-element group 5: 	 branch_block_stmt_246/assign_stmt_252_to_assign_stmt_266/array_obj_ref_251_Update/array_obj_ref_251_Merge/merge_req
      -- CP-element group 5: 	 branch_block_stmt_246/assign_stmt_252_to_assign_stmt_266/array_obj_ref_251_Update/array_obj_ref_251_Merge/merge_ack
      -- CP-element group 5: 	 branch_block_stmt_246/if_stmt_267_dead_link/$entry
      -- CP-element group 5: 	 branch_block_stmt_246/if_stmt_267_eval_test/$entry
      -- CP-element group 5: 	 branch_block_stmt_246/if_stmt_267_eval_test/$exit
      -- CP-element group 5: 	 branch_block_stmt_246/if_stmt_267_eval_test/NOT_u1_u1_269/$entry
      -- CP-element group 5: 	 branch_block_stmt_246/if_stmt_267_eval_test/NOT_u1_u1_269/$exit
      -- CP-element group 5: 	 branch_block_stmt_246/if_stmt_267_eval_test/NOT_u1_u1_269/SplitProtocol/$entry
      -- CP-element group 5: 	 branch_block_stmt_246/if_stmt_267_eval_test/NOT_u1_u1_269/SplitProtocol/$exit
      -- CP-element group 5: 	 branch_block_stmt_246/if_stmt_267_eval_test/NOT_u1_u1_269/SplitProtocol/Sample/$entry
      -- CP-element group 5: 	 branch_block_stmt_246/if_stmt_267_eval_test/NOT_u1_u1_269/SplitProtocol/Sample/$exit
      -- CP-element group 5: 	 branch_block_stmt_246/if_stmt_267_eval_test/NOT_u1_u1_269/SplitProtocol/Sample/rr
      -- CP-element group 5: 	 branch_block_stmt_246/if_stmt_267_eval_test/NOT_u1_u1_269/SplitProtocol/Sample/ra
      -- CP-element group 5: 	 branch_block_stmt_246/if_stmt_267_eval_test/NOT_u1_u1_269/SplitProtocol/Update/$entry
      -- CP-element group 5: 	 branch_block_stmt_246/if_stmt_267_eval_test/NOT_u1_u1_269/SplitProtocol/Update/$exit
      -- CP-element group 5: 	 branch_block_stmt_246/if_stmt_267_eval_test/NOT_u1_u1_269/SplitProtocol/Update/cr
      -- CP-element group 5: 	 branch_block_stmt_246/if_stmt_267_eval_test/NOT_u1_u1_269/SplitProtocol/Update/ca
      -- CP-element group 5: 	 branch_block_stmt_246/if_stmt_267_eval_test/branch_req
      -- CP-element group 5: 	 branch_block_stmt_246/NOT_u1_u1_269_place
      -- CP-element group 5: 	 branch_block_stmt_246/if_stmt_267_if_link/$entry
      -- CP-element group 5: 	 branch_block_stmt_246/if_stmt_267_else_link/$entry
      -- 
    ca_977_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 5_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_251_load_0_ack_1, ack => accelerator_worker_daemon_CP_907_elements(5)); -- 
    branch_req_1006_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " branch_req_1006_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accelerator_worker_daemon_CP_907_elements(5), ack => if_stmt_267_branch_req_0); -- 
    -- CP-element group 6:  transition  place  input  bypass 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	5 
    -- CP-element group 6: successors 
    -- CP-element group 6: 	21 
    -- CP-element group 6:  members (5) 
      -- CP-element group 6: 	 branch_block_stmt_246/if_stmt_267_if_link/$exit
      -- CP-element group 6: 	 branch_block_stmt_246/if_stmt_267_if_link/if_choice_transition
      -- CP-element group 6: 	 branch_block_stmt_246/look_for_command
      -- CP-element group 6: 	 branch_block_stmt_246/look_for_command_PhiReq/$entry
      -- CP-element group 6: 	 branch_block_stmt_246/look_for_command_PhiReq/$exit
      -- 
    if_choice_transition_1011_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 6_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => if_stmt_267_branch_ack_1, ack => accelerator_worker_daemon_CP_907_elements(6)); -- 
    -- CP-element group 7:  merge  fork  transition  place  input  output  bypass 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	5 
    -- CP-element group 7: successors 
    -- CP-element group 7: 	8 
    -- CP-element group 7: 	9 
    -- CP-element group 7: 	10 
    -- CP-element group 7: 	12 
    -- CP-element group 7:  members (18) 
      -- CP-element group 7: 	 branch_block_stmt_246/if_stmt_267__exit__
      -- CP-element group 7: 	 branch_block_stmt_246/assign_stmt_278__entry__
      -- CP-element group 7: 	 branch_block_stmt_246/if_stmt_267_else_link/$exit
      -- CP-element group 7: 	 branch_block_stmt_246/if_stmt_267_else_link/else_choice_transition
      -- CP-element group 7: 	 branch_block_stmt_246/assign_stmt_278/$entry
      -- CP-element group 7: 	 branch_block_stmt_246/assign_stmt_278/AND_u32_u32_277_sample_start_
      -- CP-element group 7: 	 branch_block_stmt_246/assign_stmt_278/AND_u32_u32_277_update_start_
      -- CP-element group 7: 	 branch_block_stmt_246/assign_stmt_278/AND_u32_u32_277_Sample/$entry
      -- CP-element group 7: 	 branch_block_stmt_246/assign_stmt_278/AND_u32_u32_277_Sample/rr
      -- CP-element group 7: 	 branch_block_stmt_246/assign_stmt_278/AND_u32_u32_277_Update/$entry
      -- CP-element group 7: 	 branch_block_stmt_246/assign_stmt_278/AND_u32_u32_277_Update/cr
      -- CP-element group 7: 	 branch_block_stmt_246/assign_stmt_278/array_obj_ref_273_update_start_
      -- CP-element group 7: 	 branch_block_stmt_246/assign_stmt_278/array_obj_ref_273_word_address_calculated
      -- CP-element group 7: 	 branch_block_stmt_246/assign_stmt_278/array_obj_ref_273_root_address_calculated
      -- CP-element group 7: 	 branch_block_stmt_246/assign_stmt_278/array_obj_ref_273_Update/$entry
      -- CP-element group 7: 	 branch_block_stmt_246/assign_stmt_278/array_obj_ref_273_Update/word_access_complete/$entry
      -- CP-element group 7: 	 branch_block_stmt_246/assign_stmt_278/array_obj_ref_273_Update/word_access_complete/word_0/$entry
      -- CP-element group 7: 	 branch_block_stmt_246/assign_stmt_278/array_obj_ref_273_Update/word_access_complete/word_0/cr
      -- 
    else_choice_transition_1015_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 7_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => if_stmt_267_branch_ack_0, ack => accelerator_worker_daemon_CP_907_elements(7)); -- 
    rr_1027_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_1027_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accelerator_worker_daemon_CP_907_elements(7), ack => AND_u32_u32_277_inst_req_0); -- 
    cr_1032_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_1032_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accelerator_worker_daemon_CP_907_elements(7), ack => AND_u32_u32_277_inst_req_1); -- 
    cr_1065_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_1065_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accelerator_worker_daemon_CP_907_elements(7), ack => array_obj_ref_273_store_0_req_1); -- 
    -- CP-element group 8:  transition  input  bypass 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	7 
    -- CP-element group 8: successors 
    -- CP-element group 8:  members (3) 
      -- CP-element group 8: 	 branch_block_stmt_246/assign_stmt_278/AND_u32_u32_277_sample_completed_
      -- CP-element group 8: 	 branch_block_stmt_246/assign_stmt_278/AND_u32_u32_277_Sample/$exit
      -- CP-element group 8: 	 branch_block_stmt_246/assign_stmt_278/AND_u32_u32_277_Sample/ra
      -- 
    ra_1028_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 8_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => AND_u32_u32_277_inst_ack_0, ack => accelerator_worker_daemon_CP_907_elements(8)); -- 
    -- CP-element group 9:  transition  input  bypass 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: 	7 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	10 
    -- CP-element group 9:  members (3) 
      -- CP-element group 9: 	 branch_block_stmt_246/assign_stmt_278/AND_u32_u32_277_update_completed_
      -- CP-element group 9: 	 branch_block_stmt_246/assign_stmt_278/AND_u32_u32_277_Update/$exit
      -- CP-element group 9: 	 branch_block_stmt_246/assign_stmt_278/AND_u32_u32_277_Update/ca
      -- 
    ca_1033_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 9_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => AND_u32_u32_277_inst_ack_1, ack => accelerator_worker_daemon_CP_907_elements(9)); -- 
    -- CP-element group 10:  join  transition  output  bypass 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	7 
    -- CP-element group 10: 	9 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	11 
    -- CP-element group 10:  members (9) 
      -- CP-element group 10: 	 branch_block_stmt_246/assign_stmt_278/array_obj_ref_273_sample_start_
      -- CP-element group 10: 	 branch_block_stmt_246/assign_stmt_278/array_obj_ref_273_Sample/$entry
      -- CP-element group 10: 	 branch_block_stmt_246/assign_stmt_278/array_obj_ref_273_Sample/array_obj_ref_273_Split/$entry
      -- CP-element group 10: 	 branch_block_stmt_246/assign_stmt_278/array_obj_ref_273_Sample/array_obj_ref_273_Split/$exit
      -- CP-element group 10: 	 branch_block_stmt_246/assign_stmt_278/array_obj_ref_273_Sample/array_obj_ref_273_Split/split_req
      -- CP-element group 10: 	 branch_block_stmt_246/assign_stmt_278/array_obj_ref_273_Sample/array_obj_ref_273_Split/split_ack
      -- CP-element group 10: 	 branch_block_stmt_246/assign_stmt_278/array_obj_ref_273_Sample/word_access_start/$entry
      -- CP-element group 10: 	 branch_block_stmt_246/assign_stmt_278/array_obj_ref_273_Sample/word_access_start/word_0/$entry
      -- CP-element group 10: 	 branch_block_stmt_246/assign_stmt_278/array_obj_ref_273_Sample/word_access_start/word_0/rr
      -- 
    rr_1054_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_1054_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accelerator_worker_daemon_CP_907_elements(10), ack => array_obj_ref_273_store_0_req_0); -- 
    accelerator_worker_daemon_cp_element_group_10: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 45) := "accelerator_worker_daemon_cp_element_group_10"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= accelerator_worker_daemon_CP_907_elements(7) & accelerator_worker_daemon_CP_907_elements(9);
      gj_accelerator_worker_daemon_cp_element_group_10 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => accelerator_worker_daemon_CP_907_elements(10), clk => clk, reset => reset); --
    end block;
    -- CP-element group 11:  transition  input  bypass 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	10 
    -- CP-element group 11: successors 
    -- CP-element group 11:  members (5) 
      -- CP-element group 11: 	 branch_block_stmt_246/assign_stmt_278/array_obj_ref_273_sample_completed_
      -- CP-element group 11: 	 branch_block_stmt_246/assign_stmt_278/array_obj_ref_273_Sample/$exit
      -- CP-element group 11: 	 branch_block_stmt_246/assign_stmt_278/array_obj_ref_273_Sample/word_access_start/$exit
      -- CP-element group 11: 	 branch_block_stmt_246/assign_stmt_278/array_obj_ref_273_Sample/word_access_start/word_0/$exit
      -- CP-element group 11: 	 branch_block_stmt_246/assign_stmt_278/array_obj_ref_273_Sample/word_access_start/word_0/ra
      -- 
    ra_1055_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 11_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_273_store_0_ack_0, ack => accelerator_worker_daemon_CP_907_elements(11)); -- 
    -- CP-element group 12:  fork  transition  place  input  output  bypass 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	7 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	13 
    -- CP-element group 12: 	14 
    -- CP-element group 12:  members (15) 
      -- CP-element group 12: 	 branch_block_stmt_246/assign_stmt_278__exit__
      -- CP-element group 12: 	 branch_block_stmt_246/call_stmt_280__entry__
      -- CP-element group 12: 	 branch_block_stmt_246/assign_stmt_278/$exit
      -- CP-element group 12: 	 branch_block_stmt_246/assign_stmt_278/array_obj_ref_273_update_completed_
      -- CP-element group 12: 	 branch_block_stmt_246/assign_stmt_278/array_obj_ref_273_Update/$exit
      -- CP-element group 12: 	 branch_block_stmt_246/assign_stmt_278/array_obj_ref_273_Update/word_access_complete/$exit
      -- CP-element group 12: 	 branch_block_stmt_246/assign_stmt_278/array_obj_ref_273_Update/word_access_complete/word_0/$exit
      -- CP-element group 12: 	 branch_block_stmt_246/assign_stmt_278/array_obj_ref_273_Update/word_access_complete/word_0/ca
      -- CP-element group 12: 	 branch_block_stmt_246/call_stmt_280/$entry
      -- CP-element group 12: 	 branch_block_stmt_246/call_stmt_280/call_stmt_280_sample_start_
      -- CP-element group 12: 	 branch_block_stmt_246/call_stmt_280/call_stmt_280_update_start_
      -- CP-element group 12: 	 branch_block_stmt_246/call_stmt_280/call_stmt_280_Sample/$entry
      -- CP-element group 12: 	 branch_block_stmt_246/call_stmt_280/call_stmt_280_Sample/crr
      -- CP-element group 12: 	 branch_block_stmt_246/call_stmt_280/call_stmt_280_Update/$entry
      -- CP-element group 12: 	 branch_block_stmt_246/call_stmt_280/call_stmt_280_Update/ccr
      -- 
    ca_1066_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 12_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_273_store_0_ack_1, ack => accelerator_worker_daemon_CP_907_elements(12)); -- 
    crr_1077_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " crr_1077_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accelerator_worker_daemon_CP_907_elements(12), ack => call_stmt_280_call_req_0); -- 
    ccr_1082_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " ccr_1082_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accelerator_worker_daemon_CP_907_elements(12), ack => call_stmt_280_call_req_1); -- 
    -- CP-element group 13:  transition  input  bypass 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: 	12 
    -- CP-element group 13: successors 
    -- CP-element group 13:  members (3) 
      -- CP-element group 13: 	 branch_block_stmt_246/call_stmt_280/call_stmt_280_sample_completed_
      -- CP-element group 13: 	 branch_block_stmt_246/call_stmt_280/call_stmt_280_Sample/$exit
      -- CP-element group 13: 	 branch_block_stmt_246/call_stmt_280/call_stmt_280_Sample/cra
      -- 
    cra_1078_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 13_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_280_call_ack_0, ack => accelerator_worker_daemon_CP_907_elements(13)); -- 
    -- CP-element group 14:  fork  transition  place  input  output  bypass 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: 	12 
    -- CP-element group 14: successors 
    -- CP-element group 14: 	15 
    -- CP-element group 14: 	16 
    -- CP-element group 14: 	17 
    -- CP-element group 14: 	19 
    -- CP-element group 14:  members (20) 
      -- CP-element group 14: 	 branch_block_stmt_246/call_stmt_280__exit__
      -- CP-element group 14: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305__entry__
      -- CP-element group 14: 	 branch_block_stmt_246/call_stmt_280/$exit
      -- CP-element group 14: 	 branch_block_stmt_246/call_stmt_280/call_stmt_280_update_completed_
      -- CP-element group 14: 	 branch_block_stmt_246/call_stmt_280/call_stmt_280_Update/$exit
      -- CP-element group 14: 	 branch_block_stmt_246/call_stmt_280/call_stmt_280_Update/cca
      -- CP-element group 14: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/$entry
      -- CP-element group 14: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/CONCAT_u28_u32_304_sample_start_
      -- CP-element group 14: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/CONCAT_u28_u32_304_update_start_
      -- CP-element group 14: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/CONCAT_u28_u32_304_Sample/$entry
      -- CP-element group 14: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/CONCAT_u28_u32_304_Sample/rr
      -- CP-element group 14: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/CONCAT_u28_u32_304_Update/$entry
      -- CP-element group 14: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/CONCAT_u28_u32_304_Update/cr
      -- CP-element group 14: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/array_obj_ref_292_update_start_
      -- CP-element group 14: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/array_obj_ref_292_word_address_calculated
      -- CP-element group 14: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/array_obj_ref_292_root_address_calculated
      -- CP-element group 14: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/array_obj_ref_292_Update/$entry
      -- CP-element group 14: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/array_obj_ref_292_Update/word_access_complete/$entry
      -- CP-element group 14: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/array_obj_ref_292_Update/word_access_complete/word_0/$entry
      -- CP-element group 14: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/array_obj_ref_292_Update/word_access_complete/word_0/cr
      -- 
    cca_1083_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 14_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_280_call_ack_1, ack => accelerator_worker_daemon_CP_907_elements(14)); -- 
    rr_1094_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_1094_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accelerator_worker_daemon_CP_907_elements(14), ack => CONCAT_u28_u32_304_inst_req_0); -- 
    cr_1099_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_1099_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accelerator_worker_daemon_CP_907_elements(14), ack => CONCAT_u28_u32_304_inst_req_1); -- 
    cr_1132_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_1132_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accelerator_worker_daemon_CP_907_elements(14), ack => array_obj_ref_292_store_0_req_1); -- 
    -- CP-element group 15:  transition  input  bypass 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: 	14 
    -- CP-element group 15: successors 
    -- CP-element group 15:  members (3) 
      -- CP-element group 15: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/CONCAT_u28_u32_304_sample_completed_
      -- CP-element group 15: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/CONCAT_u28_u32_304_Sample/$exit
      -- CP-element group 15: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/CONCAT_u28_u32_304_Sample/ra
      -- 
    ra_1095_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 15_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => CONCAT_u28_u32_304_inst_ack_0, ack => accelerator_worker_daemon_CP_907_elements(15)); -- 
    -- CP-element group 16:  transition  input  bypass 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: 	14 
    -- CP-element group 16: successors 
    -- CP-element group 16: 	17 
    -- CP-element group 16:  members (3) 
      -- CP-element group 16: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/CONCAT_u28_u32_304_update_completed_
      -- CP-element group 16: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/CONCAT_u28_u32_304_Update/$exit
      -- CP-element group 16: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/CONCAT_u28_u32_304_Update/ca
      -- 
    ca_1100_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 16_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => CONCAT_u28_u32_304_inst_ack_1, ack => accelerator_worker_daemon_CP_907_elements(16)); -- 
    -- CP-element group 17:  join  transition  output  bypass 
    -- CP-element group 17: predecessors 
    -- CP-element group 17: 	14 
    -- CP-element group 17: 	16 
    -- CP-element group 17: successors 
    -- CP-element group 17: 	18 
    -- CP-element group 17:  members (9) 
      -- CP-element group 17: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/array_obj_ref_292_sample_start_
      -- CP-element group 17: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/array_obj_ref_292_Sample/$entry
      -- CP-element group 17: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/array_obj_ref_292_Sample/array_obj_ref_292_Split/$entry
      -- CP-element group 17: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/array_obj_ref_292_Sample/array_obj_ref_292_Split/$exit
      -- CP-element group 17: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/array_obj_ref_292_Sample/array_obj_ref_292_Split/split_req
      -- CP-element group 17: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/array_obj_ref_292_Sample/array_obj_ref_292_Split/split_ack
      -- CP-element group 17: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/array_obj_ref_292_Sample/word_access_start/$entry
      -- CP-element group 17: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/array_obj_ref_292_Sample/word_access_start/word_0/$entry
      -- CP-element group 17: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/array_obj_ref_292_Sample/word_access_start/word_0/rr
      -- 
    rr_1121_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_1121_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accelerator_worker_daemon_CP_907_elements(17), ack => array_obj_ref_292_store_0_req_0); -- 
    accelerator_worker_daemon_cp_element_group_17: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 45) := "accelerator_worker_daemon_cp_element_group_17"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= accelerator_worker_daemon_CP_907_elements(14) & accelerator_worker_daemon_CP_907_elements(16);
      gj_accelerator_worker_daemon_cp_element_group_17 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => accelerator_worker_daemon_CP_907_elements(17), clk => clk, reset => reset); --
    end block;
    -- CP-element group 18:  transition  input  bypass 
    -- CP-element group 18: predecessors 
    -- CP-element group 18: 	17 
    -- CP-element group 18: successors 
    -- CP-element group 18:  members (5) 
      -- CP-element group 18: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/array_obj_ref_292_sample_completed_
      -- CP-element group 18: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/array_obj_ref_292_Sample/$exit
      -- CP-element group 18: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/array_obj_ref_292_Sample/word_access_start/$exit
      -- CP-element group 18: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/array_obj_ref_292_Sample/word_access_start/word_0/$exit
      -- CP-element group 18: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/array_obj_ref_292_Sample/word_access_start/word_0/ra
      -- 
    ra_1122_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 18_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_292_store_0_ack_0, ack => accelerator_worker_daemon_CP_907_elements(18)); -- 
    -- CP-element group 19:  transition  place  input  bypass 
    -- CP-element group 19: predecessors 
    -- CP-element group 19: 	14 
    -- CP-element group 19: successors 
    -- CP-element group 19: 	20 
    -- CP-element group 19:  members (10) 
      -- CP-element group 19: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305__exit__
      -- CP-element group 19: 	 branch_block_stmt_246/loopback
      -- CP-element group 19: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/$exit
      -- CP-element group 19: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/array_obj_ref_292_update_completed_
      -- CP-element group 19: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/array_obj_ref_292_Update/$exit
      -- CP-element group 19: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/array_obj_ref_292_Update/word_access_complete/$exit
      -- CP-element group 19: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/array_obj_ref_292_Update/word_access_complete/word_0/$exit
      -- CP-element group 19: 	 branch_block_stmt_246/assign_stmt_290_to_assign_stmt_305/array_obj_ref_292_Update/word_access_complete/word_0/ca
      -- CP-element group 19: 	 branch_block_stmt_246/loopback_PhiReq/$entry
      -- CP-element group 19: 	 branch_block_stmt_246/loopback_PhiReq/$exit
      -- 
    ca_1133_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 19_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_292_store_0_ack_1, ack => accelerator_worker_daemon_CP_907_elements(19)); -- 
    -- CP-element group 20:  merge  branch  transition  place  bypass 
    -- CP-element group 20: predecessors 
    -- CP-element group 20: 	2 
    -- CP-element group 20: 	19 
    -- CP-element group 20: successors 
    -- CP-element group 20: 	21 
    -- CP-element group 20:  members (9) 
      -- CP-element group 20: 	 branch_block_stmt_246/merge_stmt_247__exit__
      -- CP-element group 20: 	 branch_block_stmt_246/merge_stmt_248__entry__
      -- CP-element group 20: 	 branch_block_stmt_246/merge_stmt_247_PhiReqMerge
      -- CP-element group 20: 	 branch_block_stmt_246/merge_stmt_247_PhiAck/$entry
      -- CP-element group 20: 	 branch_block_stmt_246/merge_stmt_247_PhiAck/$exit
      -- CP-element group 20: 	 branch_block_stmt_246/merge_stmt_247_PhiAck/dummy
      -- CP-element group 20: 	 branch_block_stmt_246/merge_stmt_248_dead_link/$entry
      -- CP-element group 20: 	 branch_block_stmt_246/merge_stmt_248__entry___PhiReq/$entry
      -- CP-element group 20: 	 branch_block_stmt_246/merge_stmt_248__entry___PhiReq/$exit
      -- 
    accelerator_worker_daemon_CP_907_elements(20) <= OrReduce(accelerator_worker_daemon_CP_907_elements(2) & accelerator_worker_daemon_CP_907_elements(19));
    -- CP-element group 21:  merge  fork  transition  place  output  bypass 
    -- CP-element group 21: predecessors 
    -- CP-element group 21: 	6 
    -- CP-element group 21: 	20 
    -- CP-element group 21: successors 
    -- CP-element group 21: 	4 
    -- CP-element group 21: 	5 
    -- CP-element group 21:  members (19) 
      -- CP-element group 21: 	 branch_block_stmt_246/merge_stmt_248__exit__
      -- CP-element group 21: 	 branch_block_stmt_246/assign_stmt_252_to_assign_stmt_266__entry__
      -- CP-element group 21: 	 branch_block_stmt_246/assign_stmt_252_to_assign_stmt_266/$entry
      -- CP-element group 21: 	 branch_block_stmt_246/assign_stmt_252_to_assign_stmt_266/array_obj_ref_251_sample_start_
      -- CP-element group 21: 	 branch_block_stmt_246/assign_stmt_252_to_assign_stmt_266/array_obj_ref_251_update_start_
      -- CP-element group 21: 	 branch_block_stmt_246/assign_stmt_252_to_assign_stmt_266/array_obj_ref_251_word_address_calculated
      -- CP-element group 21: 	 branch_block_stmt_246/assign_stmt_252_to_assign_stmt_266/array_obj_ref_251_root_address_calculated
      -- CP-element group 21: 	 branch_block_stmt_246/assign_stmt_252_to_assign_stmt_266/array_obj_ref_251_Sample/$entry
      -- CP-element group 21: 	 branch_block_stmt_246/assign_stmt_252_to_assign_stmt_266/array_obj_ref_251_Sample/word_access_start/$entry
      -- CP-element group 21: 	 branch_block_stmt_246/assign_stmt_252_to_assign_stmt_266/array_obj_ref_251_Sample/word_access_start/word_0/$entry
      -- CP-element group 21: 	 branch_block_stmt_246/assign_stmt_252_to_assign_stmt_266/array_obj_ref_251_Sample/word_access_start/word_0/rr
      -- CP-element group 21: 	 branch_block_stmt_246/assign_stmt_252_to_assign_stmt_266/array_obj_ref_251_Update/$entry
      -- CP-element group 21: 	 branch_block_stmt_246/assign_stmt_252_to_assign_stmt_266/array_obj_ref_251_Update/word_access_complete/$entry
      -- CP-element group 21: 	 branch_block_stmt_246/assign_stmt_252_to_assign_stmt_266/array_obj_ref_251_Update/word_access_complete/word_0/$entry
      -- CP-element group 21: 	 branch_block_stmt_246/assign_stmt_252_to_assign_stmt_266/array_obj_ref_251_Update/word_access_complete/word_0/cr
      -- CP-element group 21: 	 branch_block_stmt_246/merge_stmt_248_PhiReqMerge
      -- CP-element group 21: 	 branch_block_stmt_246/merge_stmt_248_PhiAck/$entry
      -- CP-element group 21: 	 branch_block_stmt_246/merge_stmt_248_PhiAck/$exit
      -- CP-element group 21: 	 branch_block_stmt_246/merge_stmt_248_PhiAck/dummy
      -- 
    rr_965_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_965_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accelerator_worker_daemon_CP_907_elements(21), ack => array_obj_ref_251_load_0_req_0); -- 
    cr_976_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_976_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accelerator_worker_daemon_CP_907_elements(21), ack => array_obj_ref_251_load_0_req_1); -- 
    accelerator_worker_daemon_CP_907_elements(21) <= OrReduce(accelerator_worker_daemon_CP_907_elements(6) & accelerator_worker_daemon_CP_907_elements(20));
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_260_wire : std_logic_vector(0 downto 0);
    signal AND_u32_u32_277_wire : std_logic_vector(31 downto 0);
    signal BITSEL_u32_u1_256_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u32_u1_259_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u32_u1_263_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u32_u1_285_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u32_u1_288_wire : std_logic_vector(0 downto 0);
    signal CONCAT_u1_u4_303_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u27_u28_297_wire : std_logic_vector(27 downto 0);
    signal CONCAT_u28_u32_304_wire : std_logic_vector(31 downto 0);
    signal NOT_u1_u1_264_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_269_wire : std_logic_vector(0 downto 0);
    signal NOT_u32_u32_276_wire_constant : std_logic_vector(31 downto 0);
    signal array_obj_ref_251_data_0 : std_logic_vector(31 downto 0);
    signal array_obj_ref_251_word_address_0 : std_logic_vector(3 downto 0);
    signal array_obj_ref_273_data_0 : std_logic_vector(31 downto 0);
    signal array_obj_ref_273_word_address_0 : std_logic_vector(3 downto 0);
    signal array_obj_ref_292_data_0 : std_logic_vector(31 downto 0);
    signal array_obj_ref_292_word_address_0 : std_logic_vector(3 downto 0);
    signal cmd_flag_266 : std_logic_vector(0 downto 0);
    signal konst_255_wire_constant : std_logic_vector(31 downto 0);
    signal konst_258_wire_constant : std_logic_vector(31 downto 0);
    signal konst_262_wire_constant : std_logic_vector(31 downto 0);
    signal konst_284_wire_constant : std_logic_vector(31 downto 0);
    signal konst_287_wire_constant : std_logic_vector(31 downto 0);
    signal r0_252 : std_logic_vector(31 downto 0);
    signal set_intr_290 : std_logic_vector(0 downto 0);
    signal slice_295_wire : std_logic_vector(26 downto 0);
    signal slice_302_wire : std_logic_vector(2 downto 0);
    signal sw_245 : std_logic_vector(0 downto 0);
    signal type_cast_299_wire_constant : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    NOT_u32_u32_276_wire_constant <= "11111111111111111111111111011011";
    array_obj_ref_251_word_address_0 <= "0000";
    array_obj_ref_273_word_address_0 <= "0000";
    array_obj_ref_292_word_address_0 <= "0000";
    konst_255_wire_constant <= "00000000000000000000000000000000";
    konst_258_wire_constant <= "00000000000000000000000000000010";
    konst_262_wire_constant <= "00000000000000000000000000000011";
    konst_284_wire_constant <= "00000000000000000000000000000000";
    konst_287_wire_constant <= "00000000000000000000000000000001";
    type_cast_299_wire_constant <= "1";
    -- flow-through slice operator slice_295_inst
    slice_295_wire <= r0_252(31 downto 5);
    -- flow-through slice operator slice_302_inst
    slice_302_wire <= r0_252(2 downto 0);
    -- equivalence array_obj_ref_251_gather_scatter
    process(array_obj_ref_251_data_0) --
      variable iv : std_logic_vector(31 downto 0);
      variable ov : std_logic_vector(31 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_251_data_0;
      ov(31 downto 0) := iv;
      r0_252 <= ov(31 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_273_gather_scatter
    process(AND_u32_u32_277_wire) --
      variable iv : std_logic_vector(31 downto 0);
      variable ov : std_logic_vector(31 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := AND_u32_u32_277_wire;
      ov(31 downto 0) := iv;
      array_obj_ref_273_data_0 <= ov(31 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_292_gather_scatter
    process(CONCAT_u28_u32_304_wire) --
      variable iv : std_logic_vector(31 downto 0);
      variable ov : std_logic_vector(31 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := CONCAT_u28_u32_304_wire;
      ov(31 downto 0) := iv;
      array_obj_ref_292_data_0 <= ov(31 downto 0);
      --
    end process;
    if_stmt_267_branch: Block -- 
      -- branch-block
      signal condition_sig : std_logic_vector(0 downto 0);
      begin 
      condition_sig <= NOT_u1_u1_269_wire;
      branch_instance: BranchBase -- 
        generic map( name => "if_stmt_267_branch", condition_width => 1,  bypass_flag => false)
        port map( -- 
          condition => condition_sig,
          req => if_stmt_267_branch_req_0,
          ack0 => if_stmt_267_branch_ack_0,
          ack1 => if_stmt_267_branch_ack_1,
          clk => clk,
          reset => reset); -- 
      --
    end Block; -- branch-block
    -- flow through binary operator AND_u1_u1_260_inst
    AND_u1_u1_260_wire <= (BITSEL_u32_u1_256_wire and BITSEL_u32_u1_259_wire);
    -- flow through binary operator AND_u1_u1_265_inst
    cmd_flag_266 <= (AND_u1_u1_260_wire and NOT_u1_u1_264_wire);
    -- flow through binary operator AND_u1_u1_289_inst
    set_intr_290 <= (BITSEL_u32_u1_285_wire and BITSEL_u32_u1_288_wire);
    -- shared split operator group (3) : AND_u32_u32_277_inst 
    ApIntAnd_group_3: Block -- 
      signal data_in: std_logic_vector(31 downto 0);
      signal data_out: std_logic_vector(31 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      data_in <= r0_252;
      AND_u32_u32_277_wire <= data_out(31 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= AND_u32_u32_277_inst_req_0;
      AND_u32_u32_277_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= AND_u32_u32_277_inst_req_1;
      AND_u32_u32_277_inst_ack_1 <= ackR_unguarded(0);
      ApIntAnd_group_3_gI: SplitGuardInterface generic map(name => "ApIntAnd_group_3_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
      UnsharedOperator: UnsharedOperatorWithBuffering -- 
        generic map ( -- 
          operator_id => "ApIntAnd",
          name => "ApIntAnd_group_3",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 32,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 0, 
          num_inputs    => 1,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 32,
          constant_operand => "11111111111111111111111111011011",
          constant_width => 32,
          buffering  => 1,
          flow_through => false,
          full_rate  => false,
          use_constant  => true
          --
        ) 
        port map ( -- 
          reqL => reqL(0),
          ackL => ackL(0),
          reqR => reqR(0),
          ackR => ackR(0),
          dataL => data_in, 
          dataR => data_out,
          clk => clk,
          reset => reset); -- 
      -- 
    end Block; -- split operator group 3
    -- flow through binary operator BITSEL_u32_u1_256_inst
    process(r0_252) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(r0_252, konst_255_wire_constant, tmp_var);
      BITSEL_u32_u1_256_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u32_u1_259_inst
    process(r0_252) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(r0_252, konst_258_wire_constant, tmp_var);
      BITSEL_u32_u1_259_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u32_u1_263_inst
    process(r0_252) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(r0_252, konst_262_wire_constant, tmp_var);
      BITSEL_u32_u1_263_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u32_u1_285_inst
    process(r0_252) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(r0_252, konst_284_wire_constant, tmp_var);
      BITSEL_u32_u1_285_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u32_u1_288_inst
    process(r0_252) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(r0_252, konst_287_wire_constant, tmp_var);
      BITSEL_u32_u1_288_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u4_303_inst
    process(type_cast_299_wire_constant, slice_302_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(type_cast_299_wire_constant, slice_302_wire, tmp_var);
      CONCAT_u1_u4_303_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u27_u28_297_inst
    process(slice_295_wire, set_intr_290) -- 
      variable tmp_var : std_logic_vector(27 downto 0); -- 
    begin -- 
      ApConcat_proc(slice_295_wire, set_intr_290, tmp_var);
      CONCAT_u27_u28_297_wire <= tmp_var; --
    end process;
    -- shared split operator group (11) : CONCAT_u28_u32_304_inst 
    ApConcat_group_11: Block -- 
      signal data_in: std_logic_vector(31 downto 0);
      signal data_out: std_logic_vector(31 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      data_in <= CONCAT_u27_u28_297_wire & CONCAT_u1_u4_303_wire;
      CONCAT_u28_u32_304_wire <= data_out(31 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= CONCAT_u28_u32_304_inst_req_0;
      CONCAT_u28_u32_304_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= CONCAT_u28_u32_304_inst_req_1;
      CONCAT_u28_u32_304_inst_ack_1 <= ackR_unguarded(0);
      ApConcat_group_11_gI: SplitGuardInterface generic map(name => "ApConcat_group_11_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
      UnsharedOperator: UnsharedOperatorWithBuffering -- 
        generic map ( -- 
          operator_id => "ApConcat",
          name => "ApConcat_group_11",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 28,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 4, 
          num_inputs    => 2,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 32,
          constant_operand => "0",
          constant_width => 1,
          buffering  => 1,
          flow_through => false,
          full_rate  => false,
          use_constant  => false
          --
        ) 
        port map ( -- 
          reqL => reqL(0),
          ackL => ackL(0),
          reqR => reqR(0),
          ackR => ackR(0),
          dataL => data_in, 
          dataR => data_out,
          clk => clk,
          reset => reset); -- 
      -- 
    end Block; -- split operator group 11
    -- unary operator NOT_u1_u1_264_inst
    process(BITSEL_u32_u1_263_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", BITSEL_u32_u1_263_wire, tmp_var);
      NOT_u1_u1_264_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_269_inst
    process(cmd_flag_266) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", cmd_flag_266, tmp_var);
      NOT_u1_u1_269_wire <= tmp_var; -- 
    end process;
    -- shared load operator group (0) : array_obj_ref_251_load_0 
    LoadGroup0: Block -- 
      signal data_in: std_logic_vector(3 downto 0);
      signal data_out: std_logic_vector(31 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqL_unregulated, ackL_unregulated: BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= array_obj_ref_251_load_0_req_0;
      array_obj_ref_251_load_0_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= array_obj_ref_251_load_0_req_1;
      array_obj_ref_251_load_0_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      reqL <= reqL_unregulated;
      ackL_unregulated <= ackL;
      LoadGroup0_gI: SplitGuardInterface generic map(name => "LoadGroup0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL_unregulated,
        sa_in => ackL_unregulated,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      data_in <= array_obj_ref_251_word_address_0;
      array_obj_ref_251_data_0 <= data_out(31 downto 0);
      LoadReq: LoadReqSharedWithInputBuffers -- 
        generic map ( name => "LoadGroup0", addr_width => 4,
        num_reqs => 1,
        tag_length => 3,
        time_stamp_width => 18,
        min_clock_period => false,
        input_buffering => inBUFs, 
        no_arbitration => false)
        port map ( -- 
          reqL => reqL , 
          ackL => ackL , 
          dataL => data_in, 
          mreq => memory_space_0_lr_req(0),
          mack => memory_space_0_lr_ack(0),
          maddr => memory_space_0_lr_addr(3 downto 0),
          mtag => memory_space_0_lr_tag(20 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      LoadComplete: LoadCompleteShared -- 
        generic map ( name => "LoadGroup0 load-complete ",
        data_width => 32,
        num_reqs => 1,
        tag_length => 3,
        detailed_buffering_per_output => outBUFs, 
        no_arbitration => false)
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          dataR => data_out, 
          mreq => memory_space_0_lc_req(0),
          mack => memory_space_0_lc_ack(0),
          mdata => memory_space_0_lc_data(31 downto 0),
          mtag => memory_space_0_lc_tag(2 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- load group 0
    -- shared store operator group (0) : array_obj_ref_273_store_0 array_obj_ref_292_store_0 
    StoreGroup0: Block -- 
      signal addr_in: std_logic_vector(7 downto 0);
      signal data_in: std_logic_vector(63 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 1 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 1 downto 0);
      signal reqL_unregulated, ackL_unregulated : BooleanArray( 1 downto 0);
      signal guard_vector : std_logic_vector( 1 downto 0);
      constant inBUFs : IntegerArray(1 downto 0) := (1 => 0, 0 => 0);
      constant outBUFs : IntegerArray(1 downto 0) := (1 => 1, 0 => 1);
      constant guardFlags : BooleanArray(1 downto 0) := (0 => false, 1 => false);
      constant guardBuffering: IntegerArray(1 downto 0)  := (0 => 2, 1 => 2);
      -- 
    begin -- 
      reqL_unguarded(1) <= array_obj_ref_273_store_0_req_0;
      reqL_unguarded(0) <= array_obj_ref_292_store_0_req_0;
      array_obj_ref_273_store_0_ack_0 <= ackL_unguarded(1);
      array_obj_ref_292_store_0_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(1) <= array_obj_ref_273_store_0_req_1;
      reqR_unguarded(0) <= array_obj_ref_292_store_0_req_1;
      array_obj_ref_273_store_0_ack_1 <= ackR_unguarded(1);
      array_obj_ref_292_store_0_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      guard_vector(1)  <=  '1';
      StoreGroup0_accessRegulator_0: access_regulator_base generic map (name => "StoreGroup0_accessRegulator_0", num_slots => 1) -- 
        port map (req => reqL_unregulated(0), -- 
          ack => ackL_unregulated(0),
          regulated_req => reqL(0),
          regulated_ack => ackL(0),
          release_req => reqR(0),
          release_ack => ackR(0),
          clk => clk, reset => reset); -- 
      StoreGroup0_accessRegulator_1: access_regulator_base generic map (name => "StoreGroup0_accessRegulator_1", num_slots => 1) -- 
        port map (req => reqL_unregulated(1), -- 
          ack => ackL_unregulated(1),
          regulated_req => reqL(1),
          regulated_ack => ackL(1),
          release_req => reqR(1),
          release_ack => ackR(1),
          clk => clk, reset => reset); -- 
      StoreGroup0_gI: SplitGuardInterface generic map(name => "StoreGroup0_gI", nreqs => 2, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL_unregulated,
        sa_in => ackL_unregulated,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      addr_in <= array_obj_ref_273_word_address_0 & array_obj_ref_292_word_address_0;
      data_in <= array_obj_ref_273_data_0 & array_obj_ref_292_data_0;
      StoreReq: StoreReqSharedWithInputBuffers -- 
        generic map ( name => "StoreGroup0 Req ", addr_width => 4,
        data_width => 32,
        num_reqs => 2,
        tag_length => 3,
        time_stamp_width => 18,
        min_clock_period => false,
        input_buffering => inBUFs, 
        no_arbitration => false)
        port map (--
          reqL => reqL , 
          ackL => ackL , 
          addr => addr_in, 
          data => data_in, 
          mreq => memory_space_0_sr_req(0),
          mack => memory_space_0_sr_ack(0),
          maddr => memory_space_0_sr_addr(3 downto 0),
          mdata => memory_space_0_sr_data(31 downto 0),
          mtag => memory_space_0_sr_tag(20 downto 0),
          clk => clk, reset => reset -- 
        );--
      StoreComplete: StoreCompleteShared -- 
        generic map ( -- 
          name => "StoreGroup0 Complete ",
          num_reqs => 2,
          detailed_buffering_per_output => outBUFs,
          tag_length => 3 -- 
        )
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          mreq => memory_space_0_sc_req(0),
          mack => memory_space_0_sc_ack(0),
          mtag => memory_space_0_sc_tag(2 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- store group 0
    -- shared inport operator group (0) : RPIPE_start_worker_244_inst 
    InportGroup_0: Block -- 
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
      reqL_unguarded(0) <= RPIPE_start_worker_244_inst_req_0;
      RPIPE_start_worker_244_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_start_worker_244_inst_req_1;
      RPIPE_start_worker_244_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      sw_245 <= data_out(0 downto 0);
      start_worker_read_0_gI: SplitGuardInterface generic map(name => "start_worker_read_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      start_worker_read_0: InputPortRevised -- 
        generic map ( name => "start_worker_read_0", data_width => 1,  num_reqs => 1,  output_buffering => outBUFs,   nonblocking_read_flag => False,  no_arbitration => false)
        port map (-- 
          sample_req => reqL , 
          sample_ack => ackL, 
          update_req => reqR, 
          update_ack => ackR, 
          data => data_out, 
          oreq => start_worker_pipe_read_req(0),
          oack => start_worker_pipe_read_ack(0),
          odata => start_worker_pipe_read_data(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 0
    -- shared call operator group (0) : call_stmt_280_call 
    execute_job_call_group_0: Block -- 
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqL_unregulated, ackL_unregulated : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs: IntegerArray(0 downto 0) := (others => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= call_stmt_280_call_req_0;
      call_stmt_280_call_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= call_stmt_280_call_req_1;
      call_stmt_280_call_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      reqL <= reqL_unregulated;
      ackL_unregulated <= ackL;
      execute_job_call_group_0_gI: SplitGuardInterface generic map(name => "execute_job_call_group_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL_unregulated,
        sa_in => ackL_unregulated,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      CallReq: InputMuxBaseNoData -- 
        generic map (name => "InputMuxBaseNoData",
        twidth => 1,
        nreqs => 1,
        no_arbitration => false)
        port map ( -- 
          reqL => reqL , 
          ackL => ackL , 
          reqR => execute_job_call_reqs(0),
          ackR => execute_job_call_acks(0),
          tagR => execute_job_call_tag(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      CallComplete: OutputDemuxBaseNoData -- 
        generic map ( -- 
          detailed_buffering_per_output => outBUFs, 
          twidth => 1,
          name => "OutputDemuxBaseNoData",
          nreqs => 1) -- 
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          reqL => execute_job_return_acks(0), -- cross-over
          ackL => execute_job_return_reqs(0), -- cross-over
          tagL => execute_job_return_tag(0 downto 0),
          clk => clk,
          reset => reset -- 
        ); -- 
      -- 
    end Block; -- call group 0
    -- 
  end Block; -- data_path
  -- 
end accelerator_worker_daemon_arch;
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
use ahir.functionLibraryComponents.all;
library work;
use work.accelerator_global_package.all;
entity access_mem_128 is -- 
  generic (tag_length : integer); 
  port ( -- 
    write_bar : in  std_logic_vector(0 downto 0);
    q_word_address : in  std_logic_vector(31 downto 0);
    wline : in  std_logic_vector(127 downto 0);
    rline : out  std_logic_vector(127 downto 0);
    ACB_ACCELERATOR_MEM_RESPONSE_pipe_read_req : out  std_logic_vector(0 downto 0);
    ACB_ACCELERATOR_MEM_RESPONSE_pipe_read_ack : in   std_logic_vector(0 downto 0);
    ACB_ACCELERATOR_MEM_RESPONSE_pipe_read_data : in   std_logic_vector(64 downto 0);
    ACB_ACCELERATOR_MEM_REQUEST_pipe_write_req : out  std_logic_vector(0 downto 0);
    ACB_ACCELERATOR_MEM_REQUEST_pipe_write_ack : in   std_logic_vector(0 downto 0);
    ACB_ACCELERATOR_MEM_REQUEST_pipe_write_data : out  std_logic_vector(109 downto 0);
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
end entity access_mem_128;
architecture access_mem_128_arch of access_mem_128 is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector((tag_length + 161)-1 downto 0);
  signal default_zero_sig: std_logic;
  signal in_buffer_write_req: std_logic;
  signal in_buffer_write_ack: std_logic;
  signal in_buffer_unload_req_symbol: Boolean;
  signal in_buffer_unload_ack_symbol: Boolean;
  signal out_buffer_data_in, out_buffer_data_out: std_logic_vector((tag_length + 128)-1 downto 0);
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
  signal write_bar_buffer :  std_logic_vector(0 downto 0);
  signal write_bar_update_enable: Boolean;
  signal q_word_address_buffer :  std_logic_vector(31 downto 0);
  signal q_word_address_update_enable: Boolean;
  signal wline_buffer :  std_logic_vector(127 downto 0);
  signal wline_update_enable: Boolean;
  -- output port buffer signals
  signal rline_buffer :  std_logic_vector(127 downto 0);
  signal rline_update_enable: Boolean;
  signal access_mem_128_CP_449_start: Boolean;
  signal access_mem_128_CP_449_symbol: Boolean;
  -- volatile/operator module components. 
  -- links between control-path and data-path
  signal WPIPE_ACB_ACCELERATOR_MEM_REQUEST_131_inst_req_0 : boolean;
  signal WPIPE_ACB_ACCELERATOR_MEM_REQUEST_131_inst_ack_0 : boolean;
  signal WPIPE_ACB_ACCELERATOR_MEM_REQUEST_131_inst_req_1 : boolean;
  signal WPIPE_ACB_ACCELERATOR_MEM_REQUEST_131_inst_ack_1 : boolean;
  signal RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_135_inst_req_0 : boolean;
  signal RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_135_inst_ack_0 : boolean;
  signal RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_135_inst_req_1 : boolean;
  signal RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_135_inst_ack_1 : boolean;
  signal CONCAT_u10_u110_153_inst_req_0 : boolean;
  signal CONCAT_u10_u110_153_inst_ack_0 : boolean;
  signal CONCAT_u10_u110_153_inst_req_1 : boolean;
  signal CONCAT_u10_u110_153_inst_ack_1 : boolean;
  signal WPIPE_ACB_ACCELERATOR_MEM_REQUEST_155_inst_req_0 : boolean;
  signal WPIPE_ACB_ACCELERATOR_MEM_REQUEST_155_inst_ack_0 : boolean;
  signal WPIPE_ACB_ACCELERATOR_MEM_REQUEST_155_inst_req_1 : boolean;
  signal WPIPE_ACB_ACCELERATOR_MEM_REQUEST_155_inst_ack_1 : boolean;
  signal RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_159_inst_req_0 : boolean;
  signal RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_159_inst_ack_0 : boolean;
  signal RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_159_inst_req_1 : boolean;
  signal RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_159_inst_ack_1 : boolean;
  signal slice_163_inst_req_0 : boolean;
  signal slice_163_inst_ack_0 : boolean;
  signal slice_163_inst_req_1 : boolean;
  signal slice_163_inst_ack_1 : boolean;
  signal CONCAT_u64_u128_169_inst_req_0 : boolean;
  signal CONCAT_u64_u128_169_inst_ack_0 : boolean;
  signal CONCAT_u64_u128_169_inst_req_1 : boolean;
  signal CONCAT_u64_u128_169_inst_ack_1 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "access_mem_128_input_buffer", -- 
      buffer_size => 1,
      bypass_flag => false,
      data_width => tag_length + 161) -- 
    port map(write_req => in_buffer_write_req, -- 
      write_ack => in_buffer_write_ack, 
      write_data => in_buffer_data_in,
      unload_req => in_buffer_unload_req_symbol, 
      unload_ack => in_buffer_unload_ack_symbol, 
      read_data => in_buffer_data_out,
      clk => clk, reset => reset); -- 
  in_buffer_data_in(0 downto 0) <= write_bar;
  write_bar_buffer <= in_buffer_data_out(0 downto 0);
  in_buffer_data_in(32 downto 1) <= q_word_address;
  q_word_address_buffer <= in_buffer_data_out(32 downto 1);
  in_buffer_data_in(160 downto 33) <= wline;
  wline_buffer <= in_buffer_data_out(160 downto 33);
  in_buffer_data_in(tag_length + 160 downto 161) <= tag_in;
  tag_ub_out <= in_buffer_data_out(tag_length + 160 downto 161);
  in_buffer_write_req <= start_req;
  start_ack <= in_buffer_write_ack;
  in_buffer_unload_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 4) := (0 => 7,1 => 7,2 => 7,3 => 1,4 => 7);
    constant place_markings: IntegerArray(0 to 4)  := (0 => 0,1 => 0,2 => 0,3 => 1,4 => 7);
    constant place_delays: IntegerArray(0 to 4) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 1);
    constant joinName: string(1 to 32) := "in_buffer_unload_req_symbol_join"; 
    signal preds: BooleanArray(1 to 5); -- 
  begin -- 
    preds <= write_bar_update_enable & q_word_address_update_enable & wline_update_enable & in_buffer_unload_ack_symbol & input_sample_reenable_symbol;
    gj_in_buffer_unload_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 5, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => in_buffer_unload_req_symbol, clk => clk, reset => reset); --
  end block;
  -- join of all unload_ack_symbols.. used to trigger CP.
  access_mem_128_CP_449_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "access_mem_128_out_buffer", -- 
      buffer_size => 1,
      full_rate => false,
      data_width => tag_length + 128) --
    port map(write_req => out_buffer_write_req_symbol, -- 
      write_ack => out_buffer_write_ack_symbol, 
      write_data => out_buffer_data_in,
      read_req => out_buffer_read_req, 
      read_ack => out_buffer_read_ack, 
      read_data => out_buffer_data_out,
      clk => clk, reset => reset); -- 
  out_buffer_data_in(127 downto 0) <= rline_buffer;
  rline <= out_buffer_data_out(127 downto 0);
  out_buffer_data_in(tag_length + 127 downto 128) <= tag_ilock_out;
  tag_out <= out_buffer_data_out(tag_length + 127 downto 128);
  out_buffer_write_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 2) := (0 => 7,1 => 1,2 => 7);
    constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 0);
    constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 1,2 => 0);
    constant joinName: string(1 to 32) := "out_buffer_write_req_symbol_join"; 
    signal preds: BooleanArray(1 to 3); -- 
  begin -- 
    preds <= access_mem_128_CP_449_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
    gj_out_buffer_write_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => out_buffer_write_req_symbol, clk => clk, reset => reset); --
  end block;
  rline_update_enable_join: block -- 
    constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
    constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
    constant place_delays: IntegerArray(0 to 0) := (0 => 0);
    constant joinName: string(1 to 24) := "rline_update_enable_join"; 
    signal preds: BooleanArray(1 to 1); -- 
  begin -- 
    preds(1) <= out_buffer_write_ack_symbol;
    gj_rline_update_enable_join : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => rline_update_enable, clk => clk, reset => reset); --
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
      buffer_size => 7,
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
    constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
    constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
    constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
    constant joinName: string(1 to 31) := "tag_ilock_write_req_symbol_join"; 
    signal preds: BooleanArray(1 to 2); -- 
  begin -- 
    preds <= access_mem_128_CP_449_start & tag_ilock_write_ack_symbol;
    gj_tag_ilock_write_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_write_req_symbol, clk => clk, reset => reset); --
  end block;
  tag_ilock_read_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 2) := (0 => 7,1 => 1,2 => 1);
    constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 1);
    constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
    constant joinName: string(1 to 30) := "tag_ilock_read_req_symbol_join"; 
    signal preds: BooleanArray(1 to 3); -- 
  begin -- 
    preds <= access_mem_128_CP_449_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  access_mem_128_CP_449: Block -- control-path 
    signal access_mem_128_CP_449_elements: BooleanArray(37 downto 0);
    -- 
  begin -- 
    access_mem_128_CP_449_elements(0) <= access_mem_128_CP_449_start;
    access_mem_128_CP_449_symbol <= access_mem_128_CP_449_elements(37);
    -- CP-element group 0:  transition  bypass  pipeline-parent 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	1 
    -- CP-element group 0:  members (1) 
      -- CP-element group 0: 	 $entry
      -- 
    -- CP-element group 1:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	0 
    -- CP-element group 1: successors 
    -- CP-element group 1: 	6 
    -- CP-element group 1: 	9 
    -- CP-element group 1: 	13 
    -- CP-element group 1:  members (1) 
      -- CP-element group 1: 	 assign_stmt_130_to_assign_stmt_170/$entry
      -- 
    access_mem_128_CP_449_elements(1) <= access_mem_128_CP_449_elements(0);
    -- CP-element group 2:  join  transition  bypass  pipeline-parent 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: marked-predecessors 
    -- CP-element group 2: 	7 
    -- CP-element group 2: 	15 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	33 
    -- CP-element group 2:  members (2) 
      -- CP-element group 2: 	 assign_stmt_130_to_assign_stmt_170/write_bar_update_enable
      -- CP-element group 2: 	 assign_stmt_130_to_assign_stmt_170/write_bar_update_enable_out
      -- 
    access_mem_128_cp_element_group_2: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 33) := "access_mem_128_cp_element_group_2"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= access_mem_128_CP_449_elements(7) & access_mem_128_CP_449_elements(15);
      gj_access_mem_128_cp_element_group_2 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => access_mem_128_CP_449_elements(2), clk => clk, reset => reset); --
    end block;
    -- CP-element group 3:  join  transition  bypass  pipeline-parent 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: marked-predecessors 
    -- CP-element group 3: 	7 
    -- CP-element group 3: 	15 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	34 
    -- CP-element group 3:  members (2) 
      -- CP-element group 3: 	 assign_stmt_130_to_assign_stmt_170/q_word_address_update_enable
      -- CP-element group 3: 	 assign_stmt_130_to_assign_stmt_170/q_word_address_update_enable_out
      -- 
    access_mem_128_cp_element_group_3: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 33) := "access_mem_128_cp_element_group_3"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= access_mem_128_CP_449_elements(7) & access_mem_128_CP_449_elements(15);
      gj_access_mem_128_cp_element_group_3 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => access_mem_128_CP_449_elements(3), clk => clk, reset => reset); --
    end block;
    -- CP-element group 4:  join  transition  bypass  pipeline-parent 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: marked-predecessors 
    -- CP-element group 4: 	7 
    -- CP-element group 4: 	15 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	35 
    -- CP-element group 4:  members (2) 
      -- CP-element group 4: 	 assign_stmt_130_to_assign_stmt_170/wline_update_enable_out
      -- CP-element group 4: 	 assign_stmt_130_to_assign_stmt_170/wline_update_enable
      -- 
    access_mem_128_cp_element_group_4: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 33) := "access_mem_128_cp_element_group_4"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= access_mem_128_CP_449_elements(7) & access_mem_128_CP_449_elements(15);
      gj_access_mem_128_cp_element_group_4 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => access_mem_128_CP_449_elements(4), clk => clk, reset => reset); --
    end block;
    -- CP-element group 5:  transition  bypass  pipeline-parent 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	36 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	29 
    -- CP-element group 5:  members (2) 
      -- CP-element group 5: 	 assign_stmt_130_to_assign_stmt_170/rline_update_enable
      -- CP-element group 5: 	 assign_stmt_130_to_assign_stmt_170/rline_update_enable_in
      -- 
    access_mem_128_CP_449_elements(5) <= access_mem_128_CP_449_elements(36);
    -- CP-element group 6:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	1 
    -- CP-element group 6: marked-predecessors 
    -- CP-element group 6: 	8 
    -- CP-element group 6: 	19 
    -- CP-element group 6: successors 
    -- CP-element group 6: 	7 
    -- CP-element group 6:  members (3) 
      -- CP-element group 6: 	 assign_stmt_130_to_assign_stmt_170/WPIPE_ACB_ACCELERATOR_MEM_REQUEST_131_sample_start_
      -- CP-element group 6: 	 assign_stmt_130_to_assign_stmt_170/WPIPE_ACB_ACCELERATOR_MEM_REQUEST_131_Sample/$entry
      -- CP-element group 6: 	 assign_stmt_130_to_assign_stmt_170/WPIPE_ACB_ACCELERATOR_MEM_REQUEST_131_Sample/req
      -- 
    req_470_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_470_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => access_mem_128_CP_449_elements(6), ack => WPIPE_ACB_ACCELERATOR_MEM_REQUEST_131_inst_req_0); -- 
    access_mem_128_cp_element_group_6: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 33) := "access_mem_128_cp_element_group_6"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= access_mem_128_CP_449_elements(1) & access_mem_128_CP_449_elements(8) & access_mem_128_CP_449_elements(19);
      gj_access_mem_128_cp_element_group_6 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => access_mem_128_CP_449_elements(6), clk => clk, reset => reset); --
    end block;
    -- CP-element group 7:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	6 
    -- CP-element group 7: successors 
    -- CP-element group 7: 	8 
    -- CP-element group 7: marked-successors 
    -- CP-element group 7: 	2 
    -- CP-element group 7: 	3 
    -- CP-element group 7: 	4 
    -- CP-element group 7:  members (6) 
      -- CP-element group 7: 	 assign_stmt_130_to_assign_stmt_170/WPIPE_ACB_ACCELERATOR_MEM_REQUEST_131_sample_completed_
      -- CP-element group 7: 	 assign_stmt_130_to_assign_stmt_170/WPIPE_ACB_ACCELERATOR_MEM_REQUEST_131_update_start_
      -- CP-element group 7: 	 assign_stmt_130_to_assign_stmt_170/WPIPE_ACB_ACCELERATOR_MEM_REQUEST_131_Sample/$exit
      -- CP-element group 7: 	 assign_stmt_130_to_assign_stmt_170/WPIPE_ACB_ACCELERATOR_MEM_REQUEST_131_Sample/ack
      -- CP-element group 7: 	 assign_stmt_130_to_assign_stmt_170/WPIPE_ACB_ACCELERATOR_MEM_REQUEST_131_Update/$entry
      -- CP-element group 7: 	 assign_stmt_130_to_assign_stmt_170/WPIPE_ACB_ACCELERATOR_MEM_REQUEST_131_Update/req
      -- 
    ack_471_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 7_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_ACB_ACCELERATOR_MEM_REQUEST_131_inst_ack_0, ack => access_mem_128_CP_449_elements(7)); -- 
    req_475_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_475_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => access_mem_128_CP_449_elements(7), ack => WPIPE_ACB_ACCELERATOR_MEM_REQUEST_131_inst_req_1); -- 
    -- CP-element group 8:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	7 
    -- CP-element group 8: successors 
    -- CP-element group 8: 	17 
    -- CP-element group 8: marked-successors 
    -- CP-element group 8: 	6 
    -- CP-element group 8:  members (3) 
      -- CP-element group 8: 	 assign_stmt_130_to_assign_stmt_170/WPIPE_ACB_ACCELERATOR_MEM_REQUEST_131_update_completed_
      -- CP-element group 8: 	 assign_stmt_130_to_assign_stmt_170/WPIPE_ACB_ACCELERATOR_MEM_REQUEST_131_Update/$exit
      -- CP-element group 8: 	 assign_stmt_130_to_assign_stmt_170/WPIPE_ACB_ACCELERATOR_MEM_REQUEST_131_Update/ack
      -- 
    ack_476_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 8_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_ACB_ACCELERATOR_MEM_REQUEST_131_inst_ack_1, ack => access_mem_128_CP_449_elements(8)); -- 
    -- CP-element group 9:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: 	1 
    -- CP-element group 9: marked-predecessors 
    -- CP-element group 9: 	12 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	11 
    -- CP-element group 9:  members (3) 
      -- CP-element group 9: 	 assign_stmt_130_to_assign_stmt_170/RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_135_sample_start_
      -- CP-element group 9: 	 assign_stmt_130_to_assign_stmt_170/RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_135_Sample/$entry
      -- CP-element group 9: 	 assign_stmt_130_to_assign_stmt_170/RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_135_Sample/rr
      -- 
    rr_484_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_484_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => access_mem_128_CP_449_elements(9), ack => RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_135_inst_req_0); -- 
    access_mem_128_cp_element_group_9: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 33) := "access_mem_128_cp_element_group_9"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= access_mem_128_CP_449_elements(1) & access_mem_128_CP_449_elements(12);
      gj_access_mem_128_cp_element_group_9 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => access_mem_128_CP_449_elements(9), clk => clk, reset => reset); --
    end block;
    -- CP-element group 10:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	11 
    -- CP-element group 10: marked-predecessors 
    -- CP-element group 10: 	23 
    -- CP-element group 10: 	26 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	12 
    -- CP-element group 10:  members (3) 
      -- CP-element group 10: 	 assign_stmt_130_to_assign_stmt_170/RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_135_update_start_
      -- CP-element group 10: 	 assign_stmt_130_to_assign_stmt_170/RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_135_Update/$entry
      -- CP-element group 10: 	 assign_stmt_130_to_assign_stmt_170/RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_135_Update/cr
      -- 
    cr_489_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_489_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => access_mem_128_CP_449_elements(10), ack => RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_135_inst_req_1); -- 
    access_mem_128_cp_element_group_10: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 34) := "access_mem_128_cp_element_group_10"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= access_mem_128_CP_449_elements(11) & access_mem_128_CP_449_elements(23) & access_mem_128_CP_449_elements(26);
      gj_access_mem_128_cp_element_group_10 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => access_mem_128_CP_449_elements(10), clk => clk, reset => reset); --
    end block;
    -- CP-element group 11:  transition  input  bypass  pipeline-parent 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	9 
    -- CP-element group 11: successors 
    -- CP-element group 11: 	10 
    -- CP-element group 11:  members (3) 
      -- CP-element group 11: 	 assign_stmt_130_to_assign_stmt_170/RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_135_sample_completed_
      -- CP-element group 11: 	 assign_stmt_130_to_assign_stmt_170/RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_135_Sample/$exit
      -- CP-element group 11: 	 assign_stmt_130_to_assign_stmt_170/RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_135_Sample/ra
      -- 
    ra_485_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 11_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_135_inst_ack_0, ack => access_mem_128_CP_449_elements(11)); -- 
    -- CP-element group 12:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	10 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	20 
    -- CP-element group 12: 	24 
    -- CP-element group 12: marked-successors 
    -- CP-element group 12: 	9 
    -- CP-element group 12:  members (3) 
      -- CP-element group 12: 	 assign_stmt_130_to_assign_stmt_170/RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_135_update_completed_
      -- CP-element group 12: 	 assign_stmt_130_to_assign_stmt_170/RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_135_Update/$exit
      -- CP-element group 12: 	 assign_stmt_130_to_assign_stmt_170/RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_135_Update/ca
      -- 
    ca_490_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 12_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_135_inst_ack_1, ack => access_mem_128_CP_449_elements(12)); -- 
    -- CP-element group 13:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: 	1 
    -- CP-element group 13: marked-predecessors 
    -- CP-element group 13: 	15 
    -- CP-element group 13: successors 
    -- CP-element group 13: 	15 
    -- CP-element group 13:  members (3) 
      -- CP-element group 13: 	 assign_stmt_130_to_assign_stmt_170/CONCAT_u10_u110_153_sample_start_
      -- CP-element group 13: 	 assign_stmt_130_to_assign_stmt_170/CONCAT_u10_u110_153_Sample/$entry
      -- CP-element group 13: 	 assign_stmt_130_to_assign_stmt_170/CONCAT_u10_u110_153_Sample/rr
      -- 
    rr_498_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_498_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => access_mem_128_CP_449_elements(13), ack => CONCAT_u10_u110_153_inst_req_0); -- 
    access_mem_128_cp_element_group_13: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 34) := "access_mem_128_cp_element_group_13"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= access_mem_128_CP_449_elements(1) & access_mem_128_CP_449_elements(15);
      gj_access_mem_128_cp_element_group_13 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => access_mem_128_CP_449_elements(13), clk => clk, reset => reset); --
    end block;
    -- CP-element group 14:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: marked-predecessors 
    -- CP-element group 14: 	16 
    -- CP-element group 14: 	18 
    -- CP-element group 14: successors 
    -- CP-element group 14: 	16 
    -- CP-element group 14:  members (3) 
      -- CP-element group 14: 	 assign_stmt_130_to_assign_stmt_170/CONCAT_u10_u110_153_update_start_
      -- CP-element group 14: 	 assign_stmt_130_to_assign_stmt_170/CONCAT_u10_u110_153_Update/$entry
      -- CP-element group 14: 	 assign_stmt_130_to_assign_stmt_170/CONCAT_u10_u110_153_Update/cr
      -- 
    cr_503_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_503_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => access_mem_128_CP_449_elements(14), ack => CONCAT_u10_u110_153_inst_req_1); -- 
    access_mem_128_cp_element_group_14: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 34) := "access_mem_128_cp_element_group_14"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= access_mem_128_CP_449_elements(16) & access_mem_128_CP_449_elements(18);
      gj_access_mem_128_cp_element_group_14 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => access_mem_128_CP_449_elements(14), clk => clk, reset => reset); --
    end block;
    -- CP-element group 15:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: 	13 
    -- CP-element group 15: successors 
    -- CP-element group 15: marked-successors 
    -- CP-element group 15: 	2 
    -- CP-element group 15: 	3 
    -- CP-element group 15: 	4 
    -- CP-element group 15: 	13 
    -- CP-element group 15:  members (3) 
      -- CP-element group 15: 	 assign_stmt_130_to_assign_stmt_170/CONCAT_u10_u110_153_sample_completed_
      -- CP-element group 15: 	 assign_stmt_130_to_assign_stmt_170/CONCAT_u10_u110_153_Sample/$exit
      -- CP-element group 15: 	 assign_stmt_130_to_assign_stmt_170/CONCAT_u10_u110_153_Sample/ra
      -- 
    ra_499_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 15_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => CONCAT_u10_u110_153_inst_ack_0, ack => access_mem_128_CP_449_elements(15)); -- 
    -- CP-element group 16:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: 	14 
    -- CP-element group 16: successors 
    -- CP-element group 16: 	17 
    -- CP-element group 16: marked-successors 
    -- CP-element group 16: 	14 
    -- CP-element group 16:  members (3) 
      -- CP-element group 16: 	 assign_stmt_130_to_assign_stmt_170/CONCAT_u10_u110_153_update_completed_
      -- CP-element group 16: 	 assign_stmt_130_to_assign_stmt_170/CONCAT_u10_u110_153_Update/$exit
      -- CP-element group 16: 	 assign_stmt_130_to_assign_stmt_170/CONCAT_u10_u110_153_Update/ca
      -- 
    ca_504_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 16_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => CONCAT_u10_u110_153_inst_ack_1, ack => access_mem_128_CP_449_elements(16)); -- 
    -- CP-element group 17:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 17: predecessors 
    -- CP-element group 17: 	8 
    -- CP-element group 17: 	16 
    -- CP-element group 17: marked-predecessors 
    -- CP-element group 17: 	19 
    -- CP-element group 17: successors 
    -- CP-element group 17: 	18 
    -- CP-element group 17:  members (3) 
      -- CP-element group 17: 	 assign_stmt_130_to_assign_stmt_170/WPIPE_ACB_ACCELERATOR_MEM_REQUEST_155_sample_start_
      -- CP-element group 17: 	 assign_stmt_130_to_assign_stmt_170/WPIPE_ACB_ACCELERATOR_MEM_REQUEST_155_Sample/$entry
      -- CP-element group 17: 	 assign_stmt_130_to_assign_stmt_170/WPIPE_ACB_ACCELERATOR_MEM_REQUEST_155_Sample/req
      -- 
    req_512_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_512_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => access_mem_128_CP_449_elements(17), ack => WPIPE_ACB_ACCELERATOR_MEM_REQUEST_155_inst_req_0); -- 
    access_mem_128_cp_element_group_17: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 34) := "access_mem_128_cp_element_group_17"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= access_mem_128_CP_449_elements(8) & access_mem_128_CP_449_elements(16) & access_mem_128_CP_449_elements(19);
      gj_access_mem_128_cp_element_group_17 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => access_mem_128_CP_449_elements(17), clk => clk, reset => reset); --
    end block;
    -- CP-element group 18:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 18: predecessors 
    -- CP-element group 18: 	17 
    -- CP-element group 18: successors 
    -- CP-element group 18: 	19 
    -- CP-element group 18: marked-successors 
    -- CP-element group 18: 	14 
    -- CP-element group 18:  members (6) 
      -- CP-element group 18: 	 assign_stmt_130_to_assign_stmt_170/WPIPE_ACB_ACCELERATOR_MEM_REQUEST_155_sample_completed_
      -- CP-element group 18: 	 assign_stmt_130_to_assign_stmt_170/WPIPE_ACB_ACCELERATOR_MEM_REQUEST_155_update_start_
      -- CP-element group 18: 	 assign_stmt_130_to_assign_stmt_170/WPIPE_ACB_ACCELERATOR_MEM_REQUEST_155_Sample/$exit
      -- CP-element group 18: 	 assign_stmt_130_to_assign_stmt_170/WPIPE_ACB_ACCELERATOR_MEM_REQUEST_155_Sample/ack
      -- CP-element group 18: 	 assign_stmt_130_to_assign_stmt_170/WPIPE_ACB_ACCELERATOR_MEM_REQUEST_155_Update/$entry
      -- CP-element group 18: 	 assign_stmt_130_to_assign_stmt_170/WPIPE_ACB_ACCELERATOR_MEM_REQUEST_155_Update/req
      -- 
    ack_513_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 18_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_ACB_ACCELERATOR_MEM_REQUEST_155_inst_ack_0, ack => access_mem_128_CP_449_elements(18)); -- 
    req_517_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_517_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => access_mem_128_CP_449_elements(18), ack => WPIPE_ACB_ACCELERATOR_MEM_REQUEST_155_inst_req_1); -- 
    -- CP-element group 19:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 19: predecessors 
    -- CP-element group 19: 	18 
    -- CP-element group 19: successors 
    -- CP-element group 19: 	32 
    -- CP-element group 19: marked-successors 
    -- CP-element group 19: 	6 
    -- CP-element group 19: 	17 
    -- CP-element group 19:  members (3) 
      -- CP-element group 19: 	 assign_stmt_130_to_assign_stmt_170/WPIPE_ACB_ACCELERATOR_MEM_REQUEST_155_update_completed_
      -- CP-element group 19: 	 assign_stmt_130_to_assign_stmt_170/WPIPE_ACB_ACCELERATOR_MEM_REQUEST_155_Update/$exit
      -- CP-element group 19: 	 assign_stmt_130_to_assign_stmt_170/WPIPE_ACB_ACCELERATOR_MEM_REQUEST_155_Update/ack
      -- 
    ack_518_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 19_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_ACB_ACCELERATOR_MEM_REQUEST_155_inst_ack_1, ack => access_mem_128_CP_449_elements(19)); -- 
    -- CP-element group 20:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 20: predecessors 
    -- CP-element group 20: 	12 
    -- CP-element group 20: marked-predecessors 
    -- CP-element group 20: 	23 
    -- CP-element group 20: successors 
    -- CP-element group 20: 	22 
    -- CP-element group 20:  members (3) 
      -- CP-element group 20: 	 assign_stmt_130_to_assign_stmt_170/RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_159_sample_start_
      -- CP-element group 20: 	 assign_stmt_130_to_assign_stmt_170/RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_159_Sample/$entry
      -- CP-element group 20: 	 assign_stmt_130_to_assign_stmt_170/RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_159_Sample/rr
      -- 
    rr_526_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_526_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => access_mem_128_CP_449_elements(20), ack => RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_159_inst_req_0); -- 
    access_mem_128_cp_element_group_20: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 34) := "access_mem_128_cp_element_group_20"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= access_mem_128_CP_449_elements(12) & access_mem_128_CP_449_elements(23);
      gj_access_mem_128_cp_element_group_20 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => access_mem_128_CP_449_elements(20), clk => clk, reset => reset); --
    end block;
    -- CP-element group 21:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 21: predecessors 
    -- CP-element group 21: 	22 
    -- CP-element group 21: marked-predecessors 
    -- CP-element group 21: 	30 
    -- CP-element group 21: successors 
    -- CP-element group 21: 	23 
    -- CP-element group 21:  members (3) 
      -- CP-element group 21: 	 assign_stmt_130_to_assign_stmt_170/RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_159_update_start_
      -- CP-element group 21: 	 assign_stmt_130_to_assign_stmt_170/RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_159_Update/$entry
      -- CP-element group 21: 	 assign_stmt_130_to_assign_stmt_170/RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_159_Update/cr
      -- 
    cr_531_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_531_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => access_mem_128_CP_449_elements(21), ack => RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_159_inst_req_1); -- 
    access_mem_128_cp_element_group_21: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 34) := "access_mem_128_cp_element_group_21"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= access_mem_128_CP_449_elements(22) & access_mem_128_CP_449_elements(30);
      gj_access_mem_128_cp_element_group_21 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => access_mem_128_CP_449_elements(21), clk => clk, reset => reset); --
    end block;
    -- CP-element group 22:  transition  input  bypass  pipeline-parent 
    -- CP-element group 22: predecessors 
    -- CP-element group 22: 	20 
    -- CP-element group 22: successors 
    -- CP-element group 22: 	21 
    -- CP-element group 22:  members (3) 
      -- CP-element group 22: 	 assign_stmt_130_to_assign_stmt_170/RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_159_sample_completed_
      -- CP-element group 22: 	 assign_stmt_130_to_assign_stmt_170/RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_159_Sample/$exit
      -- CP-element group 22: 	 assign_stmt_130_to_assign_stmt_170/RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_159_Sample/ra
      -- 
    ra_527_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 22_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_159_inst_ack_0, ack => access_mem_128_CP_449_elements(22)); -- 
    -- CP-element group 23:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 23: predecessors 
    -- CP-element group 23: 	21 
    -- CP-element group 23: successors 
    -- CP-element group 23: 	28 
    -- CP-element group 23: marked-successors 
    -- CP-element group 23: 	10 
    -- CP-element group 23: 	20 
    -- CP-element group 23:  members (3) 
      -- CP-element group 23: 	 assign_stmt_130_to_assign_stmt_170/RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_159_update_completed_
      -- CP-element group 23: 	 assign_stmt_130_to_assign_stmt_170/RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_159_Update/$exit
      -- CP-element group 23: 	 assign_stmt_130_to_assign_stmt_170/RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_159_Update/ca
      -- 
    ca_532_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 23_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_159_inst_ack_1, ack => access_mem_128_CP_449_elements(23)); -- 
    -- CP-element group 24:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 24: predecessors 
    -- CP-element group 24: 	12 
    -- CP-element group 24: marked-predecessors 
    -- CP-element group 24: 	26 
    -- CP-element group 24: successors 
    -- CP-element group 24: 	26 
    -- CP-element group 24:  members (3) 
      -- CP-element group 24: 	 assign_stmt_130_to_assign_stmt_170/slice_163_sample_start_
      -- CP-element group 24: 	 assign_stmt_130_to_assign_stmt_170/slice_163_Sample/$entry
      -- CP-element group 24: 	 assign_stmt_130_to_assign_stmt_170/slice_163_Sample/rr
      -- 
    rr_540_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_540_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => access_mem_128_CP_449_elements(24), ack => slice_163_inst_req_0); -- 
    access_mem_128_cp_element_group_24: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 34) := "access_mem_128_cp_element_group_24"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= access_mem_128_CP_449_elements(12) & access_mem_128_CP_449_elements(26);
      gj_access_mem_128_cp_element_group_24 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => access_mem_128_CP_449_elements(24), clk => clk, reset => reset); --
    end block;
    -- CP-element group 25:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 25: predecessors 
    -- CP-element group 25: marked-predecessors 
    -- CP-element group 25: 	27 
    -- CP-element group 25: 	30 
    -- CP-element group 25: successors 
    -- CP-element group 25: 	27 
    -- CP-element group 25:  members (3) 
      -- CP-element group 25: 	 assign_stmt_130_to_assign_stmt_170/slice_163_update_start_
      -- CP-element group 25: 	 assign_stmt_130_to_assign_stmt_170/slice_163_Update/$entry
      -- CP-element group 25: 	 assign_stmt_130_to_assign_stmt_170/slice_163_Update/cr
      -- 
    cr_545_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_545_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => access_mem_128_CP_449_elements(25), ack => slice_163_inst_req_1); -- 
    access_mem_128_cp_element_group_25: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 34) := "access_mem_128_cp_element_group_25"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= access_mem_128_CP_449_elements(27) & access_mem_128_CP_449_elements(30);
      gj_access_mem_128_cp_element_group_25 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => access_mem_128_CP_449_elements(25), clk => clk, reset => reset); --
    end block;
    -- CP-element group 26:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 26: predecessors 
    -- CP-element group 26: 	24 
    -- CP-element group 26: successors 
    -- CP-element group 26: marked-successors 
    -- CP-element group 26: 	10 
    -- CP-element group 26: 	24 
    -- CP-element group 26:  members (3) 
      -- CP-element group 26: 	 assign_stmt_130_to_assign_stmt_170/slice_163_sample_completed_
      -- CP-element group 26: 	 assign_stmt_130_to_assign_stmt_170/slice_163_Sample/$exit
      -- CP-element group 26: 	 assign_stmt_130_to_assign_stmt_170/slice_163_Sample/ra
      -- 
    ra_541_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 26_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => slice_163_inst_ack_0, ack => access_mem_128_CP_449_elements(26)); -- 
    -- CP-element group 27:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 27: predecessors 
    -- CP-element group 27: 	25 
    -- CP-element group 27: successors 
    -- CP-element group 27: 	28 
    -- CP-element group 27: marked-successors 
    -- CP-element group 27: 	25 
    -- CP-element group 27:  members (3) 
      -- CP-element group 27: 	 assign_stmt_130_to_assign_stmt_170/slice_163_update_completed_
      -- CP-element group 27: 	 assign_stmt_130_to_assign_stmt_170/slice_163_Update/$exit
      -- CP-element group 27: 	 assign_stmt_130_to_assign_stmt_170/slice_163_Update/ca
      -- 
    ca_546_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 27_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => slice_163_inst_ack_1, ack => access_mem_128_CP_449_elements(27)); -- 
    -- CP-element group 28:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 28: predecessors 
    -- CP-element group 28: 	23 
    -- CP-element group 28: 	27 
    -- CP-element group 28: marked-predecessors 
    -- CP-element group 28: 	30 
    -- CP-element group 28: successors 
    -- CP-element group 28: 	30 
    -- CP-element group 28:  members (3) 
      -- CP-element group 28: 	 assign_stmt_130_to_assign_stmt_170/CONCAT_u64_u128_169_sample_start_
      -- CP-element group 28: 	 assign_stmt_130_to_assign_stmt_170/CONCAT_u64_u128_169_Sample/$entry
      -- CP-element group 28: 	 assign_stmt_130_to_assign_stmt_170/CONCAT_u64_u128_169_Sample/rr
      -- 
    rr_554_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_554_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => access_mem_128_CP_449_elements(28), ack => CONCAT_u64_u128_169_inst_req_0); -- 
    access_mem_128_cp_element_group_28: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 1);
      constant joinName: string(1 to 34) := "access_mem_128_cp_element_group_28"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= access_mem_128_CP_449_elements(23) & access_mem_128_CP_449_elements(27) & access_mem_128_CP_449_elements(30);
      gj_access_mem_128_cp_element_group_28 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => access_mem_128_CP_449_elements(28), clk => clk, reset => reset); --
    end block;
    -- CP-element group 29:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 29: predecessors 
    -- CP-element group 29: 	5 
    -- CP-element group 29: marked-predecessors 
    -- CP-element group 29: 	31 
    -- CP-element group 29: successors 
    -- CP-element group 29: 	31 
    -- CP-element group 29:  members (3) 
      -- CP-element group 29: 	 assign_stmt_130_to_assign_stmt_170/CONCAT_u64_u128_169_update_start_
      -- CP-element group 29: 	 assign_stmt_130_to_assign_stmt_170/CONCAT_u64_u128_169_Update/$entry
      -- CP-element group 29: 	 assign_stmt_130_to_assign_stmt_170/CONCAT_u64_u128_169_Update/cr
      -- 
    cr_559_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_559_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => access_mem_128_CP_449_elements(29), ack => CONCAT_u64_u128_169_inst_req_1); -- 
    access_mem_128_cp_element_group_29: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 34) := "access_mem_128_cp_element_group_29"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= access_mem_128_CP_449_elements(5) & access_mem_128_CP_449_elements(31);
      gj_access_mem_128_cp_element_group_29 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => access_mem_128_CP_449_elements(29), clk => clk, reset => reset); --
    end block;
    -- CP-element group 30:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 30: predecessors 
    -- CP-element group 30: 	28 
    -- CP-element group 30: successors 
    -- CP-element group 30: marked-successors 
    -- CP-element group 30: 	21 
    -- CP-element group 30: 	25 
    -- CP-element group 30: 	28 
    -- CP-element group 30:  members (3) 
      -- CP-element group 30: 	 assign_stmt_130_to_assign_stmt_170/CONCAT_u64_u128_169_sample_completed_
      -- CP-element group 30: 	 assign_stmt_130_to_assign_stmt_170/CONCAT_u64_u128_169_Sample/$exit
      -- CP-element group 30: 	 assign_stmt_130_to_assign_stmt_170/CONCAT_u64_u128_169_Sample/ra
      -- 
    ra_555_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 30_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => CONCAT_u64_u128_169_inst_ack_0, ack => access_mem_128_CP_449_elements(30)); -- 
    -- CP-element group 31:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 31: predecessors 
    -- CP-element group 31: 	29 
    -- CP-element group 31: successors 
    -- CP-element group 31: 	32 
    -- CP-element group 31: marked-successors 
    -- CP-element group 31: 	29 
    -- CP-element group 31:  members (3) 
      -- CP-element group 31: 	 assign_stmt_130_to_assign_stmt_170/CONCAT_u64_u128_169_update_completed_
      -- CP-element group 31: 	 assign_stmt_130_to_assign_stmt_170/CONCAT_u64_u128_169_Update/$exit
      -- CP-element group 31: 	 assign_stmt_130_to_assign_stmt_170/CONCAT_u64_u128_169_Update/ca
      -- 
    ca_560_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 31_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => CONCAT_u64_u128_169_inst_ack_1, ack => access_mem_128_CP_449_elements(31)); -- 
    -- CP-element group 32:  join  transition  bypass  pipeline-parent 
    -- CP-element group 32: predecessors 
    -- CP-element group 32: 	19 
    -- CP-element group 32: 	31 
    -- CP-element group 32: successors 
    -- CP-element group 32: 	37 
    -- CP-element group 32:  members (1) 
      -- CP-element group 32: 	 assign_stmt_130_to_assign_stmt_170/$exit
      -- 
    access_mem_128_cp_element_group_32: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 34) := "access_mem_128_cp_element_group_32"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= access_mem_128_CP_449_elements(19) & access_mem_128_CP_449_elements(31);
      gj_access_mem_128_cp_element_group_32 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => access_mem_128_CP_449_elements(32), clk => clk, reset => reset); --
    end block;
    -- CP-element group 33:  place  bypass  pipeline-parent 
    -- CP-element group 33: predecessors 
    -- CP-element group 33: 	2 
    -- CP-element group 33: successors 
    -- CP-element group 33:  members (1) 
      -- CP-element group 33: 	 write_bar_update_enable
      -- 
    access_mem_128_CP_449_elements(33) <= access_mem_128_CP_449_elements(2);
    -- CP-element group 34:  place  bypass  pipeline-parent 
    -- CP-element group 34: predecessors 
    -- CP-element group 34: 	3 
    -- CP-element group 34: successors 
    -- CP-element group 34:  members (1) 
      -- CP-element group 34: 	 q_word_address_update_enable
      -- 
    access_mem_128_CP_449_elements(34) <= access_mem_128_CP_449_elements(3);
    -- CP-element group 35:  place  bypass  pipeline-parent 
    -- CP-element group 35: predecessors 
    -- CP-element group 35: 	4 
    -- CP-element group 35: successors 
    -- CP-element group 35:  members (1) 
      -- CP-element group 35: 	 wline_update_enable
      -- 
    access_mem_128_CP_449_elements(35) <= access_mem_128_CP_449_elements(4);
    -- CP-element group 36:  place  bypass  pipeline-parent 
    -- CP-element group 36: predecessors 
    -- CP-element group 36: successors 
    -- CP-element group 36: 	5 
    -- CP-element group 36:  members (1) 
      -- CP-element group 36: 	 rline_update_enable
      -- 
    -- CP-element group 37:  transition  bypass  pipeline-parent 
    -- CP-element group 37: predecessors 
    -- CP-element group 37: 	32 
    -- CP-element group 37: successors 
    -- CP-element group 37:  members (1) 
      -- CP-element group 37: 	 $exit
      -- 
    access_mem_128_CP_449_elements(37) <= access_mem_128_CP_449_elements(32);
    --  hookup: inputs to control-path 
    access_mem_128_CP_449_elements(36) <= rline_update_enable;
    -- hookup: output from control-path 
    write_bar_update_enable <= access_mem_128_CP_449_elements(33);
    q_word_address_update_enable <= access_mem_128_CP_449_elements(34);
    wline_update_enable <= access_mem_128_CP_449_elements(35);
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal ADD_u32_u32_148_wire : std_logic_vector(31 downto 0);
    signal CONCAT_u1_u2_116_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_141_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u2_u10_121_wire : std_logic_vector(9 downto 0);
    signal CONCAT_u2_u10_145_wire : std_logic_vector(9 downto 0);
    signal CONCAT_u36_u100_127_wire : std_logic_vector(99 downto 0);
    signal CONCAT_u36_u100_152_wire : std_logic_vector(99 downto 0);
    signal NOT_u8_u8_120_wire_constant : std_logic_vector(7 downto 0);
    signal NOT_u8_u8_144_wire_constant : std_logic_vector(7 downto 0);
    signal c0_130 : std_logic_vector(109 downto 0);
    signal c1_154 : std_logic_vector(109 downto 0);
    signal konst_147_wire_constant : std_logic_vector(31 downto 0);
    signal r0_136 : std_logic_vector(64 downto 0);
    signal r1_160 : std_logic_vector(64 downto 0);
    signal slice_126_wire : std_logic_vector(63 downto 0);
    signal slice_151_wire : std_logic_vector(63 downto 0);
    signal slice_168_wire : std_logic_vector(63 downto 0);
    signal slice_171_171_delayed_1_0_164 : std_logic_vector(63 downto 0);
    signal type_cast_114_wire_constant : std_logic_vector(0 downto 0);
    signal type_cast_123_wire : std_logic_vector(35 downto 0);
    signal type_cast_139_wire_constant : std_logic_vector(0 downto 0);
    signal type_cast_149_wire : std_logic_vector(35 downto 0);
    -- 
  begin -- 
    NOT_u8_u8_120_wire_constant <= "11111111";
    NOT_u8_u8_144_wire_constant <= "11111111";
    konst_147_wire_constant <= "00000000000000000000000000001000";
    type_cast_114_wire_constant <= "0";
    type_cast_139_wire_constant <= "0";
    -- flow-through slice operator slice_126_inst
    slice_126_wire <= wline_buffer(127 downto 64);
    -- flow-through slice operator slice_151_inst
    slice_151_wire <= wline_buffer(63 downto 0);
    slice_163_inst_block : block -- 
      signal sample_req, sample_ack, update_req, update_ack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      sample_req(0) <= slice_163_inst_req_0;
      slice_163_inst_ack_0<= sample_ack(0);
      update_req(0) <= slice_163_inst_req_1;
      slice_163_inst_ack_1<= update_ack(0);
      slice_163_inst: SliceSplitProtocol generic map(name => "slice_163_inst", in_data_width => 65, high_index => 63, low_index => 0, buffering => 1, flow_through => false,  full_rate => false) -- 
        port map( din => r0_136, dout => slice_171_171_delayed_1_0_164, sample_req => sample_req(0) , sample_ack => sample_ack(0) , update_req => update_req(0) , update_ack => update_ack(0) , clk => clk, reset => reset); -- 
      -- 
    end block;
    -- flow-through slice operator slice_168_inst
    slice_168_wire <= r1_160(63 downto 0);
    -- interlock type_cast_123_inst
    process(q_word_address_buffer) -- 
      variable tmp_var : std_logic_vector(35 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := q_word_address_buffer(31 downto 0);
      type_cast_123_wire <= tmp_var; -- 
    end process;
    -- interlock type_cast_149_inst
    process(ADD_u32_u32_148_wire) -- 
      variable tmp_var : std_logic_vector(35 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := ADD_u32_u32_148_wire(31 downto 0);
      type_cast_149_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator ADD_u32_u32_148_inst
    ADD_u32_u32_148_wire <= std_logic_vector(unsigned(q_word_address_buffer) + unsigned(konst_147_wire_constant));
    -- flow through binary operator CONCAT_u10_u110_129_inst
    process(CONCAT_u2_u10_121_wire, CONCAT_u36_u100_127_wire) -- 
      variable tmp_var : std_logic_vector(109 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u10_121_wire, CONCAT_u36_u100_127_wire, tmp_var);
      c0_130 <= tmp_var; --
    end process;
    -- shared split operator group (2) : CONCAT_u10_u110_153_inst 
    ApConcat_group_2: Block -- 
      signal data_in: std_logic_vector(109 downto 0);
      signal data_out: std_logic_vector(109 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      data_in <= CONCAT_u2_u10_145_wire & CONCAT_u36_u100_152_wire;
      c1_154 <= data_out(109 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= CONCAT_u10_u110_153_inst_req_0;
      CONCAT_u10_u110_153_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= CONCAT_u10_u110_153_inst_req_1;
      CONCAT_u10_u110_153_inst_ack_1 <= ackR_unguarded(0);
      ApConcat_group_2_gI: SplitGuardInterface generic map(name => "ApConcat_group_2_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
      UnsharedOperator: UnsharedOperatorWithBuffering -- 
        generic map ( -- 
          operator_id => "ApConcat",
          name => "ApConcat_group_2",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 10,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 100, 
          num_inputs    => 2,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 110,
          constant_operand => "0",
          constant_width => 1,
          buffering  => 1,
          flow_through => false,
          full_rate  => false,
          use_constant  => false
          --
        ) 
        port map ( -- 
          reqL => reqL(0),
          ackL => ackL(0),
          reqR => reqR(0),
          ackR => ackR(0),
          dataL => data_in, 
          dataR => data_out,
          clk => clk,
          reset => reset); -- 
      -- 
    end Block; -- split operator group 2
    -- flow through binary operator CONCAT_u1_u2_116_inst
    process(type_cast_114_wire_constant, write_bar_buffer) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(type_cast_114_wire_constant, write_bar_buffer, tmp_var);
      CONCAT_u1_u2_116_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_141_inst
    process(type_cast_139_wire_constant, write_bar_buffer) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(type_cast_139_wire_constant, write_bar_buffer, tmp_var);
      CONCAT_u1_u2_141_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u10_121_inst
    process(CONCAT_u1_u2_116_wire) -- 
      variable tmp_var : std_logic_vector(9 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_116_wire, NOT_u8_u8_120_wire_constant, tmp_var);
      CONCAT_u2_u10_121_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u10_145_inst
    process(CONCAT_u1_u2_141_wire) -- 
      variable tmp_var : std_logic_vector(9 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_141_wire, NOT_u8_u8_144_wire_constant, tmp_var);
      CONCAT_u2_u10_145_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u36_u100_127_inst
    process(type_cast_123_wire, slice_126_wire) -- 
      variable tmp_var : std_logic_vector(99 downto 0); -- 
    begin -- 
      ApConcat_proc(type_cast_123_wire, slice_126_wire, tmp_var);
      CONCAT_u36_u100_127_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u36_u100_152_inst
    process(type_cast_149_wire, slice_151_wire) -- 
      variable tmp_var : std_logic_vector(99 downto 0); -- 
    begin -- 
      ApConcat_proc(type_cast_149_wire, slice_151_wire, tmp_var);
      CONCAT_u36_u100_152_wire <= tmp_var; --
    end process;
    -- shared split operator group (9) : CONCAT_u64_u128_169_inst 
    ApConcat_group_9: Block -- 
      signal data_in: std_logic_vector(127 downto 0);
      signal data_out: std_logic_vector(127 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      data_in <= slice_171_171_delayed_1_0_164 & slice_168_wire;
      rline_buffer <= data_out(127 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= CONCAT_u64_u128_169_inst_req_0;
      CONCAT_u64_u128_169_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= CONCAT_u64_u128_169_inst_req_1;
      CONCAT_u64_u128_169_inst_ack_1 <= ackR_unguarded(0);
      ApConcat_group_9_gI: SplitGuardInterface generic map(name => "ApConcat_group_9_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
      UnsharedOperator: UnsharedOperatorWithBuffering -- 
        generic map ( -- 
          operator_id => "ApConcat",
          name => "ApConcat_group_9",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 64,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 64, 
          num_inputs    => 2,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 128,
          constant_operand => "0",
          constant_width => 1,
          buffering  => 1,
          flow_through => false,
          full_rate  => false,
          use_constant  => false
          --
        ) 
        port map ( -- 
          reqL => reqL(0),
          ackL => ackL(0),
          reqR => reqR(0),
          ackR => ackR(0),
          dataL => data_in, 
          dataR => data_out,
          clk => clk,
          reset => reset); -- 
      -- 
    end Block; -- split operator group 9
    -- shared inport operator group (0) : RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_159_inst RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_135_inst 
    InportGroup_0: Block -- 
      signal data_out: std_logic_vector(129 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 1 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 1 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 1 downto 0);
      signal guard_vector : std_logic_vector( 1 downto 0);
      constant outBUFs : IntegerArray(1 downto 0) := (1 => 1, 0 => 1);
      constant guardFlags : BooleanArray(1 downto 0) := (0 => false, 1 => false);
      constant guardBuffering: IntegerArray(1 downto 0)  := (0 => 2, 1 => 2);
      -- 
    begin -- 
      reqL_unguarded(1) <= RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_159_inst_req_0;
      reqL_unguarded(0) <= RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_135_inst_req_0;
      RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_159_inst_ack_0 <= ackL_unguarded(1);
      RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_135_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(1) <= RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_159_inst_req_1;
      reqR_unguarded(0) <= RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_135_inst_req_1;
      RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_159_inst_ack_1 <= ackR_unguarded(1);
      RPIPE_ACB_ACCELERATOR_MEM_RESPONSE_135_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      guard_vector(1)  <=  '1';
      r1_160 <= data_out(129 downto 65);
      r0_136 <= data_out(64 downto 0);
      ACB_ACCELERATOR_MEM_RESPONSE_read_0_gI: SplitGuardInterface generic map(name => "ACB_ACCELERATOR_MEM_RESPONSE_read_0_gI", nreqs => 2, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      ACB_ACCELERATOR_MEM_RESPONSE_read_0: InputPortRevised -- 
        generic map ( name => "ACB_ACCELERATOR_MEM_RESPONSE_read_0", data_width => 65,  num_reqs => 2,  output_buffering => outBUFs,   nonblocking_read_flag => False,  no_arbitration => false)
        port map (-- 
          sample_req => reqL , 
          sample_ack => ackL, 
          update_req => reqR, 
          update_ack => ackR, 
          data => data_out, 
          oreq => ACB_ACCELERATOR_MEM_RESPONSE_pipe_read_req(0),
          oack => ACB_ACCELERATOR_MEM_RESPONSE_pipe_read_ack(0),
          odata => ACB_ACCELERATOR_MEM_RESPONSE_pipe_read_data(64 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 0
    -- shared outport operator group (0) : WPIPE_ACB_ACCELERATOR_MEM_REQUEST_131_inst WPIPE_ACB_ACCELERATOR_MEM_REQUEST_155_inst 
    OutportGroup_0: Block -- 
      signal data_in: std_logic_vector(219 downto 0);
      signal sample_req, sample_ack : BooleanArray( 1 downto 0);
      signal update_req, update_ack : BooleanArray( 1 downto 0);
      signal sample_req_unguarded, sample_ack_unguarded : BooleanArray( 1 downto 0);
      signal update_req_unguarded, update_ack_unguarded : BooleanArray( 1 downto 0);
      signal guard_vector : std_logic_vector( 1 downto 0);
      constant inBUFs : IntegerArray(1 downto 0) := (1 => 0, 0 => 0);
      constant guardFlags : BooleanArray(1 downto 0) := (0 => false, 1 => false);
      constant guardBuffering: IntegerArray(1 downto 0)  := (0 => 2, 1 => 2);
      -- 
    begin -- 
      sample_req_unguarded(1) <= WPIPE_ACB_ACCELERATOR_MEM_REQUEST_131_inst_req_0;
      sample_req_unguarded(0) <= WPIPE_ACB_ACCELERATOR_MEM_REQUEST_155_inst_req_0;
      WPIPE_ACB_ACCELERATOR_MEM_REQUEST_131_inst_ack_0 <= sample_ack_unguarded(1);
      WPIPE_ACB_ACCELERATOR_MEM_REQUEST_155_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(1) <= WPIPE_ACB_ACCELERATOR_MEM_REQUEST_131_inst_req_1;
      update_req_unguarded(0) <= WPIPE_ACB_ACCELERATOR_MEM_REQUEST_155_inst_req_1;
      WPIPE_ACB_ACCELERATOR_MEM_REQUEST_131_inst_ack_1 <= update_ack_unguarded(1);
      WPIPE_ACB_ACCELERATOR_MEM_REQUEST_155_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      guard_vector(1)  <=  '1';
      data_in <= c0_130 & c1_154;
      ACB_ACCELERATOR_MEM_REQUEST_write_0_gI: SplitGuardInterface generic map(name => "ACB_ACCELERATOR_MEM_REQUEST_write_0_gI", nreqs => 2, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      ACB_ACCELERATOR_MEM_REQUEST_write_0: OutputPortRevised -- 
        generic map ( name => "ACB_ACCELERATOR_MEM_REQUEST", data_width => 110, num_reqs => 2, input_buffering => inBUFs, full_rate => false,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => ACB_ACCELERATOR_MEM_REQUEST_pipe_write_req(0),
          oack => ACB_ACCELERATOR_MEM_REQUEST_pipe_write_ack(0),
          odata => ACB_ACCELERATOR_MEM_REQUEST_pipe_write_data(109 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    -- 
  end Block; -- data_path
  -- 
end access_mem_128_arch;
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
use ahir.functionLibraryComponents.all;
library work;
use work.accelerator_global_package.all;
entity execute_job is -- 
  generic (tag_length : integer); 
  port ( -- 
    memory_space_0_lr_req : out  std_logic_vector(0 downto 0);
    memory_space_0_lr_ack : in   std_logic_vector(0 downto 0);
    memory_space_0_lr_addr : out  std_logic_vector(3 downto 0);
    memory_space_0_lr_tag :  out  std_logic_vector(20 downto 0);
    memory_space_0_lc_req : out  std_logic_vector(0 downto 0);
    memory_space_0_lc_ack : in   std_logic_vector(0 downto 0);
    memory_space_0_lc_data : in   std_logic_vector(31 downto 0);
    memory_space_0_lc_tag :  in  std_logic_vector(2 downto 0);
    access_mem_128_call_reqs : out  std_logic_vector(0 downto 0);
    access_mem_128_call_acks : in   std_logic_vector(0 downto 0);
    access_mem_128_call_data : out  std_logic_vector(160 downto 0);
    access_mem_128_call_tag  :  out  std_logic_vector(1 downto 0);
    access_mem_128_return_reqs : out  std_logic_vector(0 downto 0);
    access_mem_128_return_acks : in   std_logic_vector(0 downto 0);
    access_mem_128_return_data : in   std_logic_vector(127 downto 0);
    access_mem_128_return_tag :  in   std_logic_vector(1 downto 0);
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
end entity execute_job;
architecture execute_job_arch of execute_job is -- 
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
  signal execute_job_CP_565_start: Boolean;
  signal execute_job_CP_565_symbol: Boolean;
  -- volatile/operator module components. 
  component access_mem_128 is -- 
    generic (tag_length : integer); 
    port ( -- 
      write_bar : in  std_logic_vector(0 downto 0);
      q_word_address : in  std_logic_vector(31 downto 0);
      wline : in  std_logic_vector(127 downto 0);
      rline : out  std_logic_vector(127 downto 0);
      ACB_ACCELERATOR_MEM_RESPONSE_pipe_read_req : out  std_logic_vector(0 downto 0);
      ACB_ACCELERATOR_MEM_RESPONSE_pipe_read_ack : in   std_logic_vector(0 downto 0);
      ACB_ACCELERATOR_MEM_RESPONSE_pipe_read_data : in   std_logic_vector(64 downto 0);
      ACB_ACCELERATOR_MEM_REQUEST_pipe_write_req : out  std_logic_vector(0 downto 0);
      ACB_ACCELERATOR_MEM_REQUEST_pipe_write_ack : in   std_logic_vector(0 downto 0);
      ACB_ACCELERATOR_MEM_REQUEST_pipe_write_data : out  std_logic_vector(109 downto 0);
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
  -- links between control-path and data-path
  signal CONCAT_u64_u128_184_inst_ack_1 : boolean;
  signal CONCAT_u64_u128_184_inst_ack_0 : boolean;
  signal array_obj_ref_182_load_0_ack_1 : boolean;
  signal array_obj_ref_182_load_0_req_1 : boolean;
  signal array_obj_ref_192_load_0_ack_0 : boolean;
  signal array_obj_ref_180_load_0_req_1 : boolean;
  signal array_obj_ref_182_load_0_ack_0 : boolean;
  signal array_obj_ref_182_load_0_req_0 : boolean;
  signal CONCAT_u64_u128_184_inst_req_1 : boolean;
  signal array_obj_ref_180_load_0_ack_1 : boolean;
  signal call_stmt_221_call_ack_1 : boolean;
  signal call_stmt_221_call_req_1 : boolean;
  signal array_obj_ref_180_load_0_ack_0 : boolean;
  signal call_stmt_235_call_req_0 : boolean;
  signal call_stmt_235_call_ack_0 : boolean;
  signal array_obj_ref_180_load_0_req_0 : boolean;
  signal array_obj_ref_192_load_0_req_0 : boolean;
  signal array_obj_ref_188_load_0_ack_1 : boolean;
  signal array_obj_ref_188_load_0_req_1 : boolean;
  signal array_obj_ref_192_load_0_ack_1 : boolean;
  signal W_address_234_delayed_9_0_227_inst_ack_0 : boolean;
  signal W_address_234_delayed_9_0_227_inst_req_0 : boolean;
  signal call_stmt_221_call_ack_0 : boolean;
  signal n_dword_id_207_201_buf_ack_1 : boolean;
  signal n_dword_id_207_201_buf_req_1 : boolean;
  signal n_dword_id_207_201_buf_ack_0 : boolean;
  signal n_dword_id_207_201_buf_req_0 : boolean;
  signal call_stmt_221_call_req_0 : boolean;
  signal do_while_stmt_195_branch_ack_1 : boolean;
  signal array_obj_ref_175_load_0_ack_0 : boolean;
  signal array_obj_ref_175_load_0_req_0 : boolean;
  signal phi_stmt_197_req_0 : boolean;
  signal array_obj_ref_177_load_0_ack_1 : boolean;
  signal array_obj_ref_177_load_0_req_1 : boolean;
  signal array_obj_ref_177_load_0_ack_0 : boolean;
  signal array_obj_ref_192_load_0_req_1 : boolean;
  signal array_obj_ref_177_load_0_req_0 : boolean;
  signal W_address_234_delayed_9_0_227_inst_ack_1 : boolean;
  signal do_while_stmt_195_branch_req_0 : boolean;
  signal phi_stmt_197_ack_0 : boolean;
  signal CONCAT_u64_u128_184_inst_req_0 : boolean;
  signal call_stmt_235_call_req_1 : boolean;
  signal call_stmt_235_call_ack_1 : boolean;
  signal phi_stmt_197_req_1 : boolean;
  signal array_obj_ref_175_load_0_ack_1 : boolean;
  signal array_obj_ref_175_load_0_req_1 : boolean;
  signal array_obj_ref_188_load_0_ack_0 : boolean;
  signal array_obj_ref_188_load_0_req_0 : boolean;
  signal do_while_stmt_195_branch_ack_0 : boolean;
  signal W_address_234_delayed_9_0_227_inst_req_1 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "execute_job_input_buffer", -- 
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
  execute_job_CP_565_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "execute_job_out_buffer", -- 
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
    preds <= execute_job_CP_565_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
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
    preds <= execute_job_CP_565_start & tag_ilock_write_ack_symbol;
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
    preds <= execute_job_CP_565_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  execute_job_CP_565: Block -- control-path 
    signal execute_job_CP_565_elements: BooleanArray(62 downto 0);
    -- 
  begin -- 
    execute_job_CP_565_elements(0) <= execute_job_CP_565_start;
    execute_job_CP_565_symbol <= execute_job_CP_565_elements(17);
    -- CP-element group 0:  fork  transition  output  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	11 
    -- CP-element group 0: 	12 
    -- CP-element group 0: 	13 
    -- CP-element group 0: 	14 
    -- CP-element group 0: 	15 
    -- CP-element group 0: 	2 
    -- CP-element group 0: 	3 
    -- CP-element group 0: 	4 
    -- CP-element group 0: 	5 
    -- CP-element group 0: 	6 
    -- CP-element group 0: 	7 
    -- CP-element group 0: 	8 
    -- CP-element group 0: 	9 
    -- CP-element group 0:  members (77) 
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_175_Sample/word_access_start/$entry
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_192_root_address_calculated
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_192_word_address_calculated
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_192_Update/word_access_complete/$entry
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_192_update_start_
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_188_Sample/$entry
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_175_Sample/$entry
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_182_Update/word_access_complete/word_0/cr
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_175_root_address_calculated
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_175_word_address_calculated
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_182_Update/word_access_complete/word_0/$entry
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_180_Update/word_access_complete/word_0/cr
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_182_Update/word_access_complete/$entry
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_182_Update/$entry
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_182_Sample/word_access_start/word_0/rr
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_182_Sample/word_access_start/word_0/$entry
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_182_Sample/word_access_start/$entry
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_182_Sample/$entry
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_192_sample_start_
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_182_root_address_calculated
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_182_word_address_calculated
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_182_update_start_
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_175_update_start_
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/CONCAT_u64_u128_184_Update/cr
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_182_sample_start_
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_192_Update/$entry
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_175_Update/word_access_complete/$entry
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_180_Update/word_access_complete/word_0/$entry
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_180_Update/word_access_complete/$entry
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_180_Update/$entry
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_180_Sample/word_access_start/word_0/rr
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_188_root_address_calculated
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_180_Sample/word_access_start/word_0/$entry
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_192_Sample/word_access_start/word_0/rr
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_192_Sample/word_access_start/word_0/$entry
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_180_Sample/word_access_start/$entry
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_180_Sample/$entry
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_180_root_address_calculated
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_180_word_address_calculated
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_180_update_start_
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_188_Update/word_access_complete/word_0/cr
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_192_Update/word_access_complete/word_0/$entry
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_180_sample_start_
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_192_Sample/word_access_start/$entry
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/CONCAT_u64_u128_184_Update/$entry
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_175_sample_start_
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_188_Update/word_access_complete/word_0/$entry
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_188_Sample/word_access_start/$entry
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_177_root_address_calculated
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_177_word_address_calculated
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/CONCAT_u64_u128_184_update_start_
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_188_word_address_calculated
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_188_Sample/word_access_start/word_0/$entry
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_175_Update/$entry
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_175_Sample/word_access_start/word_0/rr
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_192_Sample/$entry
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_175_Sample/word_access_start/word_0/$entry
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/$entry
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_177_Update/word_access_complete/word_0/cr
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_177_Update/word_access_complete/word_0/$entry
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_177_Update/word_access_complete/$entry
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_177_Update/$entry
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_192_Update/word_access_complete/word_0/cr
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_177_Sample/word_access_start/word_0/rr
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_188_update_start_
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_188_Update/word_access_complete/$entry
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_177_Sample/word_access_start/word_0/$entry
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_177_Sample/word_access_start/$entry
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_177_Sample/$entry
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_177_update_start_
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_177_sample_start_
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_188_Update/$entry
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_175_Update/word_access_complete/word_0/cr
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_188_sample_start_
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_175_Update/word_access_complete/word_0/$entry
      -- CP-element group 0: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_188_Sample/word_access_start/word_0/rr
      -- 
    cr_715_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_715_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_job_CP_565_elements(0), ack => CONCAT_u64_u128_184_inst_req_1); -- 
    cr_776_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_776_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_job_CP_565_elements(0), ack => array_obj_ref_192_load_0_req_1); -- 
    rr_765_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_765_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_job_CP_565_elements(0), ack => array_obj_ref_192_load_0_req_0); -- 
    cr_743_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_743_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_job_CP_565_elements(0), ack => array_obj_ref_188_load_0_req_1); -- 
    rr_732_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_732_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_job_CP_565_elements(0), ack => array_obj_ref_188_load_0_req_0); -- 
    cr_601_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_601_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_job_CP_565_elements(0), ack => array_obj_ref_175_load_0_req_1); -- 
    rr_590_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_590_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_job_CP_565_elements(0), ack => array_obj_ref_175_load_0_req_0); -- 
    cr_634_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_634_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_job_CP_565_elements(0), ack => array_obj_ref_177_load_0_req_1); -- 
    rr_623_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_623_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_job_CP_565_elements(0), ack => array_obj_ref_177_load_0_req_0); -- 
    cr_667_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_667_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_job_CP_565_elements(0), ack => array_obj_ref_180_load_0_req_1); -- 
    rr_656_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_656_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_job_CP_565_elements(0), ack => array_obj_ref_180_load_0_req_0); -- 
    cr_700_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_700_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_job_CP_565_elements(0), ack => array_obj_ref_182_load_0_req_1); -- 
    rr_689_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_689_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_job_CP_565_elements(0), ack => array_obj_ref_182_load_0_req_0); -- 
    -- CP-element group 1:  join  transition  output  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	3 
    -- CP-element group 1: 	5 
    -- CP-element group 1: 	7 
    -- CP-element group 1: 	9 
    -- CP-element group 1: successors 
    -- CP-element group 1: 	10 
    -- CP-element group 1:  members (3) 
      -- CP-element group 1: 	 assign_stmt_185_to_assign_stmt_193/CONCAT_u64_u128_184_sample_start_
      -- CP-element group 1: 	 assign_stmt_185_to_assign_stmt_193/CONCAT_u64_u128_184_Sample/$entry
      -- CP-element group 1: 	 assign_stmt_185_to_assign_stmt_193/CONCAT_u64_u128_184_Sample/rr
      -- 
    rr_710_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_710_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_job_CP_565_elements(1), ack => CONCAT_u64_u128_184_inst_req_0); -- 
    execute_job_cp_element_group_1: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 30) := "execute_job_cp_element_group_1"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= execute_job_CP_565_elements(3) & execute_job_CP_565_elements(5) & execute_job_CP_565_elements(7) & execute_job_CP_565_elements(9);
      gj_execute_job_cp_element_group_1 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => execute_job_CP_565_elements(1), clk => clk, reset => reset); --
    end block;
    -- CP-element group 2:  transition  input  bypass 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	0 
    -- CP-element group 2: successors 
    -- CP-element group 2:  members (5) 
      -- CP-element group 2: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_175_Sample/$exit
      -- CP-element group 2: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_175_sample_completed_
      -- CP-element group 2: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_175_Sample/word_access_start/word_0/ra
      -- CP-element group 2: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_175_Sample/word_access_start/word_0/$exit
      -- CP-element group 2: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_175_Sample/word_access_start/$exit
      -- 
    ra_591_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 2_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_175_load_0_ack_0, ack => execute_job_CP_565_elements(2)); -- 
    -- CP-element group 3:  transition  input  bypass 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: 	0 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	1 
    -- CP-element group 3:  members (9) 
      -- CP-element group 3: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_175_update_completed_
      -- CP-element group 3: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_175_Update/$exit
      -- CP-element group 3: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_175_Update/array_obj_ref_175_Merge/merge_ack
      -- CP-element group 3: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_175_Update/array_obj_ref_175_Merge/merge_req
      -- CP-element group 3: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_175_Update/array_obj_ref_175_Merge/$exit
      -- CP-element group 3: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_175_Update/array_obj_ref_175_Merge/$entry
      -- CP-element group 3: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_175_Update/word_access_complete/word_0/ca
      -- CP-element group 3: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_175_Update/word_access_complete/word_0/$exit
      -- CP-element group 3: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_175_Update/word_access_complete/$exit
      -- 
    ca_602_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 3_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_175_load_0_ack_1, ack => execute_job_CP_565_elements(3)); -- 
    -- CP-element group 4:  transition  input  bypass 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: 	0 
    -- CP-element group 4: successors 
    -- CP-element group 4:  members (5) 
      -- CP-element group 4: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_177_Sample/word_access_start/word_0/ra
      -- CP-element group 4: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_177_Sample/word_access_start/word_0/$exit
      -- CP-element group 4: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_177_Sample/word_access_start/$exit
      -- CP-element group 4: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_177_Sample/$exit
      -- CP-element group 4: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_177_sample_completed_
      -- 
    ra_624_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 4_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_177_load_0_ack_0, ack => execute_job_CP_565_elements(4)); -- 
    -- CP-element group 5:  transition  input  bypass 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	0 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	1 
    -- CP-element group 5:  members (9) 
      -- CP-element group 5: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_177_Update/array_obj_ref_177_Merge/merge_ack
      -- CP-element group 5: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_177_Update/array_obj_ref_177_Merge/merge_req
      -- CP-element group 5: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_177_Update/array_obj_ref_177_Merge/$exit
      -- CP-element group 5: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_177_Update/array_obj_ref_177_Merge/$entry
      -- CP-element group 5: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_177_Update/word_access_complete/word_0/ca
      -- CP-element group 5: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_177_Update/word_access_complete/word_0/$exit
      -- CP-element group 5: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_177_Update/word_access_complete/$exit
      -- CP-element group 5: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_177_Update/$exit
      -- CP-element group 5: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_177_update_completed_
      -- 
    ca_635_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 5_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_177_load_0_ack_1, ack => execute_job_CP_565_elements(5)); -- 
    -- CP-element group 6:  transition  input  bypass 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	0 
    -- CP-element group 6: successors 
    -- CP-element group 6:  members (5) 
      -- CP-element group 6: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_180_Sample/word_access_start/word_0/ra
      -- CP-element group 6: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_180_Sample/word_access_start/word_0/$exit
      -- CP-element group 6: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_180_Sample/word_access_start/$exit
      -- CP-element group 6: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_180_Sample/$exit
      -- CP-element group 6: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_180_sample_completed_
      -- 
    ra_657_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 6_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_180_load_0_ack_0, ack => execute_job_CP_565_elements(6)); -- 
    -- CP-element group 7:  transition  input  bypass 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	0 
    -- CP-element group 7: successors 
    -- CP-element group 7: 	1 
    -- CP-element group 7:  members (9) 
      -- CP-element group 7: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_180_Update/array_obj_ref_180_Merge/merge_ack
      -- CP-element group 7: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_180_Update/array_obj_ref_180_Merge/merge_req
      -- CP-element group 7: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_180_Update/array_obj_ref_180_Merge/$exit
      -- CP-element group 7: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_180_Update/array_obj_ref_180_Merge/$entry
      -- CP-element group 7: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_180_Update/word_access_complete/word_0/ca
      -- CP-element group 7: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_180_Update/word_access_complete/word_0/$exit
      -- CP-element group 7: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_180_Update/word_access_complete/$exit
      -- CP-element group 7: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_180_Update/$exit
      -- CP-element group 7: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_180_update_completed_
      -- 
    ca_668_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 7_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_180_load_0_ack_1, ack => execute_job_CP_565_elements(7)); -- 
    -- CP-element group 8:  transition  input  bypass 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	0 
    -- CP-element group 8: successors 
    -- CP-element group 8:  members (5) 
      -- CP-element group 8: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_182_Sample/word_access_start/word_0/ra
      -- CP-element group 8: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_182_Sample/word_access_start/word_0/$exit
      -- CP-element group 8: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_182_Sample/word_access_start/$exit
      -- CP-element group 8: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_182_Sample/$exit
      -- CP-element group 8: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_182_sample_completed_
      -- 
    ra_690_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 8_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_182_load_0_ack_0, ack => execute_job_CP_565_elements(8)); -- 
    -- CP-element group 9:  transition  input  bypass 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: 	0 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	1 
    -- CP-element group 9:  members (9) 
      -- CP-element group 9: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_182_Update/word_access_complete/$exit
      -- CP-element group 9: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_182_Update/array_obj_ref_182_Merge/merge_ack
      -- CP-element group 9: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_182_Update/array_obj_ref_182_Merge/merge_req
      -- CP-element group 9: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_182_Update/array_obj_ref_182_Merge/$exit
      -- CP-element group 9: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_182_Update/array_obj_ref_182_Merge/$entry
      -- CP-element group 9: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_182_Update/word_access_complete/word_0/ca
      -- CP-element group 9: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_182_Update/word_access_complete/word_0/$exit
      -- CP-element group 9: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_182_Update/$exit
      -- CP-element group 9: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_182_update_completed_
      -- 
    ca_701_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 9_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_182_load_0_ack_1, ack => execute_job_CP_565_elements(9)); -- 
    -- CP-element group 10:  transition  input  bypass 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	1 
    -- CP-element group 10: successors 
    -- CP-element group 10:  members (3) 
      -- CP-element group 10: 	 assign_stmt_185_to_assign_stmt_193/CONCAT_u64_u128_184_Sample/ra
      -- CP-element group 10: 	 assign_stmt_185_to_assign_stmt_193/CONCAT_u64_u128_184_sample_completed_
      -- CP-element group 10: 	 assign_stmt_185_to_assign_stmt_193/CONCAT_u64_u128_184_Sample/$exit
      -- 
    ra_711_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 10_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => CONCAT_u64_u128_184_inst_ack_0, ack => execute_job_CP_565_elements(10)); -- 
    -- CP-element group 11:  transition  input  bypass 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	0 
    -- CP-element group 11: successors 
    -- CP-element group 11: 	16 
    -- CP-element group 11:  members (3) 
      -- CP-element group 11: 	 assign_stmt_185_to_assign_stmt_193/CONCAT_u64_u128_184_Update/ca
      -- CP-element group 11: 	 assign_stmt_185_to_assign_stmt_193/CONCAT_u64_u128_184_Update/$exit
      -- CP-element group 11: 	 assign_stmt_185_to_assign_stmt_193/CONCAT_u64_u128_184_update_completed_
      -- 
    ca_716_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 11_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => CONCAT_u64_u128_184_inst_ack_1, ack => execute_job_CP_565_elements(11)); -- 
    -- CP-element group 12:  transition  input  bypass 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	0 
    -- CP-element group 12: successors 
    -- CP-element group 12:  members (5) 
      -- CP-element group 12: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_188_Sample/$exit
      -- CP-element group 12: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_188_Sample/word_access_start/$exit
      -- CP-element group 12: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_188_sample_completed_
      -- CP-element group 12: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_188_Sample/word_access_start/word_0/ra
      -- CP-element group 12: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_188_Sample/word_access_start/word_0/$exit
      -- 
    ra_733_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 12_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_188_load_0_ack_0, ack => execute_job_CP_565_elements(12)); -- 
    -- CP-element group 13:  transition  input  bypass 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: 	0 
    -- CP-element group 13: successors 
    -- CP-element group 13: 	16 
    -- CP-element group 13:  members (9) 
      -- CP-element group 13: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_188_Update/array_obj_ref_188_Merge/merge_ack
      -- CP-element group 13: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_188_Update/array_obj_ref_188_Merge/merge_req
      -- CP-element group 13: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_188_Update/array_obj_ref_188_Merge/$exit
      -- CP-element group 13: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_188_Update/array_obj_ref_188_Merge/$entry
      -- CP-element group 13: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_188_Update/word_access_complete/word_0/ca
      -- CP-element group 13: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_188_Update/word_access_complete/word_0/$exit
      -- CP-element group 13: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_188_update_completed_
      -- CP-element group 13: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_188_Update/word_access_complete/$exit
      -- CP-element group 13: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_188_Update/$exit
      -- 
    ca_744_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 13_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_188_load_0_ack_1, ack => execute_job_CP_565_elements(13)); -- 
    -- CP-element group 14:  transition  input  bypass 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: 	0 
    -- CP-element group 14: successors 
    -- CP-element group 14:  members (5) 
      -- CP-element group 14: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_192_sample_completed_
      -- CP-element group 14: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_192_Sample/word_access_start/word_0/ra
      -- CP-element group 14: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_192_Sample/word_access_start/word_0/$exit
      -- CP-element group 14: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_192_Sample/word_access_start/$exit
      -- CP-element group 14: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_192_Sample/$exit
      -- 
    ra_766_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 14_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_192_load_0_ack_0, ack => execute_job_CP_565_elements(14)); -- 
    -- CP-element group 15:  transition  input  bypass 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: 	0 
    -- CP-element group 15: successors 
    -- CP-element group 15: 	16 
    -- CP-element group 15:  members (9) 
      -- CP-element group 15: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_192_Update/word_access_complete/$exit
      -- CP-element group 15: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_192_update_completed_
      -- CP-element group 15: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_192_Update/array_obj_ref_192_Merge/$entry
      -- CP-element group 15: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_192_Update/$exit
      -- CP-element group 15: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_192_Update/word_access_complete/word_0/$exit
      -- CP-element group 15: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_192_Update/word_access_complete/word_0/ca
      -- CP-element group 15: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_192_Update/array_obj_ref_192_Merge/merge_ack
      -- CP-element group 15: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_192_Update/array_obj_ref_192_Merge/merge_req
      -- CP-element group 15: 	 assign_stmt_185_to_assign_stmt_193/array_obj_ref_192_Update/array_obj_ref_192_Merge/$exit
      -- 
    ca_777_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 15_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_192_load_0_ack_1, ack => execute_job_CP_565_elements(15)); -- 
    -- CP-element group 16:  join  transition  place  bypass 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: 	11 
    -- CP-element group 16: 	13 
    -- CP-element group 16: 	15 
    -- CP-element group 16: successors 
    -- CP-element group 16: 	18 
    -- CP-element group 16:  members (4) 
      -- CP-element group 16: 	 branch_block_stmt_194/$entry
      -- CP-element group 16: 	 branch_block_stmt_194/branch_block_stmt_194__entry__
      -- CP-element group 16: 	 assign_stmt_185_to_assign_stmt_193/$exit
      -- CP-element group 16: 	 branch_block_stmt_194/do_while_stmt_195__entry__
      -- 
    execute_job_cp_element_group_16: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 31) := "execute_job_cp_element_group_16"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= execute_job_CP_565_elements(11) & execute_job_CP_565_elements(13) & execute_job_CP_565_elements(15);
      gj_execute_job_cp_element_group_16 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => execute_job_CP_565_elements(16), clk => clk, reset => reset); --
    end block;
    -- CP-element group 17:  transition  place  bypass 
    -- CP-element group 17: predecessors 
    -- CP-element group 17: 	62 
    -- CP-element group 17: successors 
    -- CP-element group 17:  members (4) 
      -- CP-element group 17: 	 branch_block_stmt_194/do_while_stmt_195__exit__
      -- CP-element group 17: 	 branch_block_stmt_194/$exit
      -- CP-element group 17: 	 $exit
      -- CP-element group 17: 	 branch_block_stmt_194/branch_block_stmt_194__exit__
      -- 
    execute_job_CP_565_elements(17) <= execute_job_CP_565_elements(62);
    -- CP-element group 18:  transition  place  bypass  pipeline-parent 
    -- CP-element group 18: predecessors 
    -- CP-element group 18: 	16 
    -- CP-element group 18: successors 
    -- CP-element group 18: 	24 
    -- CP-element group 18:  members (2) 
      -- CP-element group 18: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195__entry__
      -- CP-element group 18: 	 branch_block_stmt_194/do_while_stmt_195/$entry
      -- 
    execute_job_CP_565_elements(18) <= execute_job_CP_565_elements(16);
    -- CP-element group 19:  merge  place  bypass  pipeline-parent 
    -- CP-element group 19: predecessors 
    -- CP-element group 19: successors 
    -- CP-element group 19: 	62 
    -- CP-element group 19:  members (1) 
      -- CP-element group 19: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195__exit__
      -- 
    -- Element group execute_job_CP_565_elements(19) is bound as output of CP function.
    -- CP-element group 20:  merge  place  bypass  pipeline-parent 
    -- CP-element group 20: predecessors 
    -- CP-element group 20: successors 
    -- CP-element group 20: 	23 
    -- CP-element group 20:  members (1) 
      -- CP-element group 20: 	 branch_block_stmt_194/do_while_stmt_195/loop_back
      -- 
    -- Element group execute_job_CP_565_elements(20) is bound as output of CP function.
    -- CP-element group 21:  branch  transition  place  bypass  pipeline-parent 
    -- CP-element group 21: predecessors 
    -- CP-element group 21: 	26 
    -- CP-element group 21: successors 
    -- CP-element group 21: 	60 
    -- CP-element group 21: 	61 
    -- CP-element group 21:  members (3) 
      -- CP-element group 21: 	 branch_block_stmt_194/do_while_stmt_195/loop_taken/$entry
      -- CP-element group 21: 	 branch_block_stmt_194/do_while_stmt_195/loop_exit/$entry
      -- CP-element group 21: 	 branch_block_stmt_194/do_while_stmt_195/condition_done
      -- 
    execute_job_CP_565_elements(21) <= execute_job_CP_565_elements(26);
    -- CP-element group 22:  branch  place  bypass  pipeline-parent 
    -- CP-element group 22: predecessors 
    -- CP-element group 22: 	59 
    -- CP-element group 22: successors 
    -- CP-element group 22:  members (1) 
      -- CP-element group 22: 	 branch_block_stmt_194/do_while_stmt_195/loop_body_done
      -- 
    execute_job_CP_565_elements(22) <= execute_job_CP_565_elements(59);
    -- CP-element group 23:  transition  bypass  pipeline-parent 
    -- CP-element group 23: predecessors 
    -- CP-element group 23: 	20 
    -- CP-element group 23: successors 
    -- CP-element group 23: 	33 
    -- CP-element group 23:  members (1) 
      -- CP-element group 23: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/back_edge_to_loop_body
      -- 
    execute_job_CP_565_elements(23) <= execute_job_CP_565_elements(20);
    -- CP-element group 24:  transition  bypass  pipeline-parent 
    -- CP-element group 24: predecessors 
    -- CP-element group 24: 	18 
    -- CP-element group 24: successors 
    -- CP-element group 24: 	35 
    -- CP-element group 24:  members (1) 
      -- CP-element group 24: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/first_time_through_loop_body
      -- 
    execute_job_CP_565_elements(24) <= execute_job_CP_565_elements(18);
    -- CP-element group 25:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 25: predecessors 
    -- CP-element group 25: successors 
    -- CP-element group 25: 	29 
    -- CP-element group 25: 	30 
    -- CP-element group 25: 	58 
    -- CP-element group 25:  members (2) 
      -- CP-element group 25: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/$entry
      -- CP-element group 25: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/loop_body_start
      -- 
    -- Element group execute_job_CP_565_elements(25) is bound as output of CP function.
    -- CP-element group 26:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 26: predecessors 
    -- CP-element group 26: 	28 
    -- CP-element group 26: 	32 
    -- CP-element group 26: 	58 
    -- CP-element group 26: successors 
    -- CP-element group 26: 	21 
    -- CP-element group 26:  members (1) 
      -- CP-element group 26: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/condition_evaluated
      -- 
    condition_evaluated_804_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " condition_evaluated_804_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_job_CP_565_elements(26), ack => do_while_stmt_195_branch_req_0); -- 
    execute_job_cp_element_group_26: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 31) := "execute_job_cp_element_group_26"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= execute_job_CP_565_elements(28) & execute_job_CP_565_elements(32) & execute_job_CP_565_elements(58);
      gj_execute_job_cp_element_group_26 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => execute_job_CP_565_elements(26), clk => clk, reset => reset); --
    end block;
    -- CP-element group 27:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 27: predecessors 
    -- CP-element group 27: 	29 
    -- CP-element group 27: marked-predecessors 
    -- CP-element group 27: 	32 
    -- CP-element group 27: successors 
    -- CP-element group 27:  members (2) 
      -- CP-element group 27: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/phi_stmt_197_sample_start__ps
      -- CP-element group 27: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/aggregated_phi_sample_req
      -- 
    execute_job_cp_element_group_27: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 31) := "execute_job_cp_element_group_27"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= execute_job_CP_565_elements(29) & execute_job_CP_565_elements(32);
      gj_execute_job_cp_element_group_27 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => execute_job_CP_565_elements(27), clk => clk, reset => reset); --
    end block;
    -- CP-element group 28:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 28: predecessors 
    -- CP-element group 28: 	31 
    -- CP-element group 28: successors 
    -- CP-element group 28: 	26 
    -- CP-element group 28:  members (1) 
      -- CP-element group 28: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/aggregated_phi_sample_ack_d
      -- 
    -- Element group execute_job_CP_565_elements(28) is a control-delay.
    cp_element_28_delay: control_delay_element  generic map(name => " 28_delay", delay_value => 1)  port map(req => execute_job_CP_565_elements(31), ack => execute_job_CP_565_elements(28), clk => clk, reset =>reset);
    -- CP-element group 29:  join  transition  bypass  pipeline-parent 
    -- CP-element group 29: predecessors 
    -- CP-element group 29: 	25 
    -- CP-element group 29: marked-predecessors 
    -- CP-element group 29: 	31 
    -- CP-element group 29: successors 
    -- CP-element group 29: 	27 
    -- CP-element group 29:  members (1) 
      -- CP-element group 29: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/phi_stmt_197_sample_start_
      -- 
    execute_job_cp_element_group_29: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 31) := "execute_job_cp_element_group_29"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= execute_job_CP_565_elements(25) & execute_job_CP_565_elements(31);
      gj_execute_job_cp_element_group_29 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => execute_job_CP_565_elements(29), clk => clk, reset => reset); --
    end block;
    -- CP-element group 30:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 30: predecessors 
    -- CP-element group 30: 	25 
    -- CP-element group 30: marked-predecessors 
    -- CP-element group 30: 	32 
    -- CP-element group 30: 	48 
    -- CP-element group 30: 	52 
    -- CP-element group 30: successors 
    -- CP-element group 30:  members (3) 
      -- CP-element group 30: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/aggregated_phi_update_req
      -- CP-element group 30: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/phi_stmt_197_update_start_
      -- CP-element group 30: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/phi_stmt_197_update_start__ps
      -- 
    execute_job_cp_element_group_30: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 1,2 => 1,3 => 1);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 31) := "execute_job_cp_element_group_30"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= execute_job_CP_565_elements(25) & execute_job_CP_565_elements(32) & execute_job_CP_565_elements(48) & execute_job_CP_565_elements(52);
      gj_execute_job_cp_element_group_30 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => execute_job_CP_565_elements(30), clk => clk, reset => reset); --
    end block;
    -- CP-element group 31:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 31: predecessors 
    -- CP-element group 31: successors 
    -- CP-element group 31: 	28 
    -- CP-element group 31: 	59 
    -- CP-element group 31: marked-successors 
    -- CP-element group 31: 	29 
    -- CP-element group 31:  members (3) 
      -- CP-element group 31: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/phi_stmt_197_sample_completed__ps
      -- CP-element group 31: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/aggregated_phi_sample_ack
      -- CP-element group 31: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/phi_stmt_197_sample_completed_
      -- 
    -- Element group execute_job_CP_565_elements(31) is bound as output of CP function.
    -- CP-element group 32:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 32: predecessors 
    -- CP-element group 32: successors 
    -- CP-element group 32: 	26 
    -- CP-element group 32: 	46 
    -- CP-element group 32: 	50 
    -- CP-element group 32: marked-successors 
    -- CP-element group 32: 	27 
    -- CP-element group 32: 	30 
    -- CP-element group 32:  members (3) 
      -- CP-element group 32: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/phi_stmt_197_update_completed_
      -- CP-element group 32: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/aggregated_phi_update_ack
      -- CP-element group 32: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/phi_stmt_197_update_completed__ps
      -- 
    -- Element group execute_job_CP_565_elements(32) is bound as output of CP function.
    -- CP-element group 33:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 33: predecessors 
    -- CP-element group 33: 	23 
    -- CP-element group 33: successors 
    -- CP-element group 33:  members (1) 
      -- CP-element group 33: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/phi_stmt_197_loopback_trigger
      -- 
    execute_job_CP_565_elements(33) <= execute_job_CP_565_elements(23);
    -- CP-element group 34:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 34: predecessors 
    -- CP-element group 34: successors 
    -- CP-element group 34:  members (2) 
      -- CP-element group 34: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/phi_stmt_197_loopback_sample_req_ps
      -- CP-element group 34: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/phi_stmt_197_loopback_sample_req
      -- 
    phi_stmt_197_loopback_sample_req_820_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_197_loopback_sample_req_820_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_job_CP_565_elements(34), ack => phi_stmt_197_req_1); -- 
    -- Element group execute_job_CP_565_elements(34) is bound as output of CP function.
    -- CP-element group 35:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 35: predecessors 
    -- CP-element group 35: 	24 
    -- CP-element group 35: successors 
    -- CP-element group 35:  members (1) 
      -- CP-element group 35: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/phi_stmt_197_entry_trigger
      -- 
    execute_job_CP_565_elements(35) <= execute_job_CP_565_elements(24);
    -- CP-element group 36:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 36: predecessors 
    -- CP-element group 36: successors 
    -- CP-element group 36:  members (2) 
      -- CP-element group 36: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/phi_stmt_197_entry_sample_req
      -- CP-element group 36: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/phi_stmt_197_entry_sample_req_ps
      -- 
    phi_stmt_197_entry_sample_req_823_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_197_entry_sample_req_823_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_job_CP_565_elements(36), ack => phi_stmt_197_req_0); -- 
    -- Element group execute_job_CP_565_elements(36) is bound as output of CP function.
    -- CP-element group 37:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 37: predecessors 
    -- CP-element group 37: successors 
    -- CP-element group 37:  members (2) 
      -- CP-element group 37: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/phi_stmt_197_phi_mux_ack_ps
      -- CP-element group 37: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/phi_stmt_197_phi_mux_ack
      -- 
    phi_stmt_197_phi_mux_ack_826_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 37_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_197_ack_0, ack => execute_job_CP_565_elements(37)); -- 
    -- CP-element group 38:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 38: predecessors 
    -- CP-element group 38: successors 
    -- CP-element group 38:  members (4) 
      -- CP-element group 38: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/type_cast_200_sample_start_
      -- CP-element group 38: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/type_cast_200_sample_completed__ps
      -- CP-element group 38: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/type_cast_200_sample_completed_
      -- CP-element group 38: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/type_cast_200_sample_start__ps
      -- 
    -- Element group execute_job_CP_565_elements(38) is bound as output of CP function.
    -- CP-element group 39:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 39: predecessors 
    -- CP-element group 39: successors 
    -- CP-element group 39: 	41 
    -- CP-element group 39:  members (2) 
      -- CP-element group 39: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/type_cast_200_update_start_
      -- CP-element group 39: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/type_cast_200_update_start__ps
      -- 
    -- Element group execute_job_CP_565_elements(39) is bound as output of CP function.
    -- CP-element group 40:  join  transition  bypass  pipeline-parent 
    -- CP-element group 40: predecessors 
    -- CP-element group 40: 	41 
    -- CP-element group 40: successors 
    -- CP-element group 40:  members (1) 
      -- CP-element group 40: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/type_cast_200_update_completed__ps
      -- 
    execute_job_CP_565_elements(40) <= execute_job_CP_565_elements(41);
    -- CP-element group 41:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 41: predecessors 
    -- CP-element group 41: 	39 
    -- CP-element group 41: successors 
    -- CP-element group 41: 	40 
    -- CP-element group 41:  members (1) 
      -- CP-element group 41: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/type_cast_200_update_completed_
      -- 
    -- Element group execute_job_CP_565_elements(41) is a control-delay.
    cp_element_41_delay: control_delay_element  generic map(name => " 41_delay", delay_value => 1)  port map(req => execute_job_CP_565_elements(39), ack => execute_job_CP_565_elements(41), clk => clk, reset =>reset);
    -- CP-element group 42:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 42: predecessors 
    -- CP-element group 42: successors 
    -- CP-element group 42: 	44 
    -- CP-element group 42:  members (4) 
      -- CP-element group 42: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/R_n_dword_id_201_sample_start__ps
      -- CP-element group 42: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/R_n_dword_id_201_Sample/req
      -- CP-element group 42: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/R_n_dword_id_201_Sample/$entry
      -- CP-element group 42: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/R_n_dword_id_201_sample_start_
      -- 
    req_847_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_847_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_job_CP_565_elements(42), ack => n_dword_id_207_201_buf_req_0); -- 
    -- Element group execute_job_CP_565_elements(42) is bound as output of CP function.
    -- CP-element group 43:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 43: predecessors 
    -- CP-element group 43: successors 
    -- CP-element group 43: 	45 
    -- CP-element group 43:  members (4) 
      -- CP-element group 43: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/R_n_dword_id_201_update_start__ps
      -- CP-element group 43: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/R_n_dword_id_201_Update/req
      -- CP-element group 43: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/R_n_dword_id_201_Update/$entry
      -- CP-element group 43: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/R_n_dword_id_201_update_start_
      -- 
    req_852_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_852_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_job_CP_565_elements(43), ack => n_dword_id_207_201_buf_req_1); -- 
    -- Element group execute_job_CP_565_elements(43) is bound as output of CP function.
    -- CP-element group 44:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 44: predecessors 
    -- CP-element group 44: 	42 
    -- CP-element group 44: successors 
    -- CP-element group 44:  members (4) 
      -- CP-element group 44: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/R_n_dword_id_201_sample_completed__ps
      -- CP-element group 44: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/R_n_dword_id_201_Sample/ack
      -- CP-element group 44: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/R_n_dword_id_201_Sample/$exit
      -- CP-element group 44: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/R_n_dword_id_201_sample_completed_
      -- 
    ack_848_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 44_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => n_dword_id_207_201_buf_ack_0, ack => execute_job_CP_565_elements(44)); -- 
    -- CP-element group 45:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 45: predecessors 
    -- CP-element group 45: 	43 
    -- CP-element group 45: successors 
    -- CP-element group 45:  members (4) 
      -- CP-element group 45: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/R_n_dword_id_201_update_completed__ps
      -- CP-element group 45: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/R_n_dword_id_201_Update/ack
      -- CP-element group 45: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/R_n_dword_id_201_Update/$exit
      -- CP-element group 45: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/R_n_dword_id_201_update_completed_
      -- 
    ack_853_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 45_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => n_dword_id_207_201_buf_ack_1, ack => execute_job_CP_565_elements(45)); -- 
    -- CP-element group 46:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 46: predecessors 
    -- CP-element group 46: 	32 
    -- CP-element group 46: marked-predecessors 
    -- CP-element group 46: 	48 
    -- CP-element group 46: 	57 
    -- CP-element group 46: successors 
    -- CP-element group 46: 	48 
    -- CP-element group 46:  members (3) 
      -- CP-element group 46: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/call_stmt_221_Sample/crr
      -- CP-element group 46: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/call_stmt_221_sample_start_
      -- CP-element group 46: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/call_stmt_221_Sample/$entry
      -- 
    crr_862_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " crr_862_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_job_CP_565_elements(46), ack => call_stmt_221_call_req_0); -- 
    execute_job_cp_element_group_46: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 1,2 => 0);
      constant joinName: string(1 to 31) := "execute_job_cp_element_group_46"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= execute_job_CP_565_elements(32) & execute_job_CP_565_elements(48) & execute_job_CP_565_elements(57);
      gj_execute_job_cp_element_group_46 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => execute_job_CP_565_elements(46), clk => clk, reset => reset); --
    end block;
    -- CP-element group 47:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 47: predecessors 
    -- CP-element group 47: marked-predecessors 
    -- CP-element group 47: 	49 
    -- CP-element group 47: 	56 
    -- CP-element group 47: successors 
    -- CP-element group 47: 	49 
    -- CP-element group 47:  members (3) 
      -- CP-element group 47: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/call_stmt_221_Update/ccr
      -- CP-element group 47: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/call_stmt_221_Update/$entry
      -- CP-element group 47: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/call_stmt_221_update_start_
      -- 
    ccr_867_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " ccr_867_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_job_CP_565_elements(47), ack => call_stmt_221_call_req_1); -- 
    execute_job_cp_element_group_47: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 31) := "execute_job_cp_element_group_47"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= execute_job_CP_565_elements(49) & execute_job_CP_565_elements(56);
      gj_execute_job_cp_element_group_47 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => execute_job_CP_565_elements(47), clk => clk, reset => reset); --
    end block;
    -- CP-element group 48:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 48: predecessors 
    -- CP-element group 48: 	46 
    -- CP-element group 48: successors 
    -- CP-element group 48: marked-successors 
    -- CP-element group 48: 	30 
    -- CP-element group 48: 	46 
    -- CP-element group 48:  members (3) 
      -- CP-element group 48: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/call_stmt_221_Sample/cra
      -- CP-element group 48: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/call_stmt_221_Sample/$exit
      -- CP-element group 48: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/call_stmt_221_sample_completed_
      -- 
    cra_863_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 48_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_221_call_ack_0, ack => execute_job_CP_565_elements(48)); -- 
    -- CP-element group 49:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 49: predecessors 
    -- CP-element group 49: 	47 
    -- CP-element group 49: successors 
    -- CP-element group 49: 	54 
    -- CP-element group 49: marked-successors 
    -- CP-element group 49: 	47 
    -- CP-element group 49:  members (3) 
      -- CP-element group 49: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/call_stmt_221_Update/cca
      -- CP-element group 49: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/call_stmt_221_update_completed_
      -- CP-element group 49: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/call_stmt_221_Update/$exit
      -- 
    cca_868_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 49_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_221_call_ack_1, ack => execute_job_CP_565_elements(49)); -- 
    -- CP-element group 50:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 50: predecessors 
    -- CP-element group 50: 	32 
    -- CP-element group 50: marked-predecessors 
    -- CP-element group 50: 	52 
    -- CP-element group 50: successors 
    -- CP-element group 50: 	52 
    -- CP-element group 50:  members (3) 
      -- CP-element group 50: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/assign_stmt_229_Sample/req
      -- CP-element group 50: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/assign_stmt_229_Sample/$entry
      -- CP-element group 50: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/assign_stmt_229_sample_start_
      -- 
    req_876_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_876_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_job_CP_565_elements(50), ack => W_address_234_delayed_9_0_227_inst_req_0); -- 
    execute_job_cp_element_group_50: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 31) := "execute_job_cp_element_group_50"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= execute_job_CP_565_elements(32) & execute_job_CP_565_elements(52);
      gj_execute_job_cp_element_group_50 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => execute_job_CP_565_elements(50), clk => clk, reset => reset); --
    end block;
    -- CP-element group 51:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 51: predecessors 
    -- CP-element group 51: marked-predecessors 
    -- CP-element group 51: 	53 
    -- CP-element group 51: 	56 
    -- CP-element group 51: successors 
    -- CP-element group 51: 	53 
    -- CP-element group 51:  members (3) 
      -- CP-element group 51: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/assign_stmt_229_Update/$entry
      -- CP-element group 51: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/assign_stmt_229_update_start_
      -- CP-element group 51: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/assign_stmt_229_Update/req
      -- 
    req_881_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_881_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_job_CP_565_elements(51), ack => W_address_234_delayed_9_0_227_inst_req_1); -- 
    execute_job_cp_element_group_51: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 31) := "execute_job_cp_element_group_51"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= execute_job_CP_565_elements(53) & execute_job_CP_565_elements(56);
      gj_execute_job_cp_element_group_51 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => execute_job_CP_565_elements(51), clk => clk, reset => reset); --
    end block;
    -- CP-element group 52:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 52: predecessors 
    -- CP-element group 52: 	50 
    -- CP-element group 52: successors 
    -- CP-element group 52: marked-successors 
    -- CP-element group 52: 	30 
    -- CP-element group 52: 	50 
    -- CP-element group 52:  members (3) 
      -- CP-element group 52: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/assign_stmt_229_Sample/ack
      -- CP-element group 52: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/assign_stmt_229_Sample/$exit
      -- CP-element group 52: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/assign_stmt_229_sample_completed_
      -- 
    ack_877_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 52_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_address_234_delayed_9_0_227_inst_ack_0, ack => execute_job_CP_565_elements(52)); -- 
    -- CP-element group 53:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 53: predecessors 
    -- CP-element group 53: 	51 
    -- CP-element group 53: successors 
    -- CP-element group 53: 	54 
    -- CP-element group 53: marked-successors 
    -- CP-element group 53: 	51 
    -- CP-element group 53:  members (3) 
      -- CP-element group 53: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/assign_stmt_229_Update/$exit
      -- CP-element group 53: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/assign_stmt_229_update_completed_
      -- CP-element group 53: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/assign_stmt_229_Update/ack
      -- 
    ack_882_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 53_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_address_234_delayed_9_0_227_inst_ack_1, ack => execute_job_CP_565_elements(53)); -- 
    -- CP-element group 54:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 54: predecessors 
    -- CP-element group 54: 	49 
    -- CP-element group 54: 	53 
    -- CP-element group 54: marked-predecessors 
    -- CP-element group 54: 	56 
    -- CP-element group 54: successors 
    -- CP-element group 54: 	56 
    -- CP-element group 54:  members (3) 
      -- CP-element group 54: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/call_stmt_235_Sample/crr
      -- CP-element group 54: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/call_stmt_235_sample_start_
      -- CP-element group 54: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/call_stmt_235_Sample/$entry
      -- 
    crr_890_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " crr_890_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_job_CP_565_elements(54), ack => call_stmt_235_call_req_0); -- 
    execute_job_cp_element_group_54: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 1);
      constant joinName: string(1 to 31) := "execute_job_cp_element_group_54"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= execute_job_CP_565_elements(49) & execute_job_CP_565_elements(53) & execute_job_CP_565_elements(56);
      gj_execute_job_cp_element_group_54 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => execute_job_CP_565_elements(54), clk => clk, reset => reset); --
    end block;
    -- CP-element group 55:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 55: predecessors 
    -- CP-element group 55: marked-predecessors 
    -- CP-element group 55: 	57 
    -- CP-element group 55: successors 
    -- CP-element group 55: 	57 
    -- CP-element group 55:  members (3) 
      -- CP-element group 55: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/call_stmt_235_Update/$entry
      -- CP-element group 55: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/call_stmt_235_Update/ccr
      -- CP-element group 55: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/call_stmt_235_update_start_
      -- 
    ccr_895_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " ccr_895_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_job_CP_565_elements(55), ack => call_stmt_235_call_req_1); -- 
    execute_job_cp_element_group_55: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 31) := "execute_job_cp_element_group_55"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= execute_job_CP_565_elements(57);
      gj_execute_job_cp_element_group_55 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => execute_job_CP_565_elements(55), clk => clk, reset => reset); --
    end block;
    -- CP-element group 56:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 56: predecessors 
    -- CP-element group 56: 	54 
    -- CP-element group 56: successors 
    -- CP-element group 56: marked-successors 
    -- CP-element group 56: 	47 
    -- CP-element group 56: 	51 
    -- CP-element group 56: 	54 
    -- CP-element group 56:  members (3) 
      -- CP-element group 56: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/call_stmt_235_Sample/cra
      -- CP-element group 56: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/call_stmt_235_Sample/$exit
      -- CP-element group 56: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/call_stmt_235_sample_completed_
      -- 
    cra_891_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 56_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_235_call_ack_0, ack => execute_job_CP_565_elements(56)); -- 
    -- CP-element group 57:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 57: predecessors 
    -- CP-element group 57: 	55 
    -- CP-element group 57: successors 
    -- CP-element group 57: 	59 
    -- CP-element group 57: marked-successors 
    -- CP-element group 57: 	46 
    -- CP-element group 57: 	55 
    -- CP-element group 57:  members (3) 
      -- CP-element group 57: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/call_stmt_235_update_completed_
      -- CP-element group 57: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/call_stmt_235_Update/$exit
      -- CP-element group 57: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/call_stmt_235_Update/cca
      -- 
    cca_896_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 57_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_235_call_ack_1, ack => execute_job_CP_565_elements(57)); -- 
    -- CP-element group 58:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 58: predecessors 
    -- CP-element group 58: 	25 
    -- CP-element group 58: successors 
    -- CP-element group 58: 	26 
    -- CP-element group 58:  members (1) 
      -- CP-element group 58: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/loop_body_delay_to_condition_start
      -- 
    -- Element group execute_job_CP_565_elements(58) is a control-delay.
    cp_element_58_delay: control_delay_element  generic map(name => " 58_delay", delay_value => 1)  port map(req => execute_job_CP_565_elements(25), ack => execute_job_CP_565_elements(58), clk => clk, reset =>reset);
    -- CP-element group 59:  join  transition  bypass  pipeline-parent 
    -- CP-element group 59: predecessors 
    -- CP-element group 59: 	31 
    -- CP-element group 59: 	57 
    -- CP-element group 59: successors 
    -- CP-element group 59: 	22 
    -- CP-element group 59:  members (1) 
      -- CP-element group 59: 	 branch_block_stmt_194/do_while_stmt_195/do_while_stmt_195_loop_body/$exit
      -- 
    execute_job_cp_element_group_59: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 7);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 31) := "execute_job_cp_element_group_59"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= execute_job_CP_565_elements(31) & execute_job_CP_565_elements(57);
      gj_execute_job_cp_element_group_59 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => execute_job_CP_565_elements(59), clk => clk, reset => reset); --
    end block;
    -- CP-element group 60:  transition  input  bypass  pipeline-parent 
    -- CP-element group 60: predecessors 
    -- CP-element group 60: 	21 
    -- CP-element group 60: successors 
    -- CP-element group 60:  members (2) 
      -- CP-element group 60: 	 branch_block_stmt_194/do_while_stmt_195/loop_exit/$exit
      -- CP-element group 60: 	 branch_block_stmt_194/do_while_stmt_195/loop_exit/ack
      -- 
    ack_901_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 60_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_195_branch_ack_0, ack => execute_job_CP_565_elements(60)); -- 
    -- CP-element group 61:  transition  input  bypass  pipeline-parent 
    -- CP-element group 61: predecessors 
    -- CP-element group 61: 	21 
    -- CP-element group 61: successors 
    -- CP-element group 61:  members (2) 
      -- CP-element group 61: 	 branch_block_stmt_194/do_while_stmt_195/loop_taken/ack
      -- CP-element group 61: 	 branch_block_stmt_194/do_while_stmt_195/loop_taken/$exit
      -- 
    ack_905_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 61_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_195_branch_ack_1, ack => execute_job_CP_565_elements(61)); -- 
    -- CP-element group 62:  transition  bypass  pipeline-parent 
    -- CP-element group 62: predecessors 
    -- CP-element group 62: 	19 
    -- CP-element group 62: successors 
    -- CP-element group 62: 	17 
    -- CP-element group 62:  members (1) 
      -- CP-element group 62: 	 branch_block_stmt_194/do_while_stmt_195/$exit
      -- 
    execute_job_CP_565_elements(62) <= execute_job_CP_565_elements(19);
    execute_job_do_while_stmt_195_terminator_906: loop_terminator -- 
      generic map (name => " execute_job_do_while_stmt_195_terminator_906", max_iterations_in_flight =>7) 
      port map(loop_body_exit => execute_job_CP_565_elements(22),loop_continue => execute_job_CP_565_elements(61),loop_terminate => execute_job_CP_565_elements(60),loop_back => execute_job_CP_565_elements(20),loop_exit => execute_job_CP_565_elements(19),clk => clk, reset => reset); -- 
    phi_stmt_197_phi_seq_854_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= execute_job_CP_565_elements(35);
      execute_job_CP_565_elements(38)<= src_sample_reqs(0);
      src_sample_acks(0)  <= execute_job_CP_565_elements(38);
      execute_job_CP_565_elements(39)<= src_update_reqs(0);
      src_update_acks(0)  <= execute_job_CP_565_elements(40);
      execute_job_CP_565_elements(36) <= phi_mux_reqs(0);
      triggers(1)  <= execute_job_CP_565_elements(33);
      execute_job_CP_565_elements(42)<= src_sample_reqs(1);
      src_sample_acks(1)  <= execute_job_CP_565_elements(44);
      execute_job_CP_565_elements(43)<= src_update_reqs(1);
      src_update_acks(1)  <= execute_job_CP_565_elements(45);
      execute_job_CP_565_elements(34) <= phi_mux_reqs(1);
      phi_stmt_197_phi_seq_854 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_197_phi_seq_854") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => execute_job_CP_565_elements(27), 
          phi_sample_ack => execute_job_CP_565_elements(31), 
          phi_update_req => execute_job_CP_565_elements(30), 
          phi_update_ack => execute_job_CP_565_elements(32), 
          phi_mux_ack => execute_job_CP_565_elements(37), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    entry_tmerge_805_block : block -- 
      signal preds : BooleanArray(0 to 1);
      begin -- 
        preds(0)  <= execute_job_CP_565_elements(23);
        preds(1)  <= execute_job_CP_565_elements(24);
        entry_tmerge_805 : transition_merge -- 
          generic map(name => " entry_tmerge_805")
          port map (preds => preds, symbol_out => execute_job_CP_565_elements(25));
          -- 
    end block;
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal CONCAT_u32_u64_178_wire : std_logic_vector(63 downto 0);
    signal CONCAT_u32_u64_183_wire : std_logic_vector(63 downto 0);
    signal SHL_u32_u32_212_wire : std_logic_vector(31 downto 0);
    signal ULT_u32_u1_239_wire : std_logic_vector(0 downto 0);
    signal address_214 : std_logic_vector(31 downto 0);
    signal address_234_delayed_9_0_229 : std_logic_vector(31 downto 0);
    signal array_obj_ref_175_data_0 : std_logic_vector(31 downto 0);
    signal array_obj_ref_175_wire : std_logic_vector(31 downto 0);
    signal array_obj_ref_175_word_address_0 : std_logic_vector(3 downto 0);
    signal array_obj_ref_177_data_0 : std_logic_vector(31 downto 0);
    signal array_obj_ref_177_wire : std_logic_vector(31 downto 0);
    signal array_obj_ref_177_word_address_0 : std_logic_vector(3 downto 0);
    signal array_obj_ref_180_data_0 : std_logic_vector(31 downto 0);
    signal array_obj_ref_180_wire : std_logic_vector(31 downto 0);
    signal array_obj_ref_180_word_address_0 : std_logic_vector(3 downto 0);
    signal array_obj_ref_182_data_0 : std_logic_vector(31 downto 0);
    signal array_obj_ref_182_wire : std_logic_vector(31 downto 0);
    signal array_obj_ref_182_word_address_0 : std_logic_vector(3 downto 0);
    signal array_obj_ref_188_data_0 : std_logic_vector(31 downto 0);
    signal array_obj_ref_188_word_address_0 : std_logic_vector(3 downto 0);
    signal array_obj_ref_192_data_0 : std_logic_vector(31 downto 0);
    signal array_obj_ref_192_word_address_0 : std_logic_vector(3 downto 0);
    signal base_addr_189 : std_logic_vector(31 downto 0);
    signal dword_id_197 : std_logic_vector(31 downto 0);
    signal eline_226 : std_logic_vector(127 downto 0);
    signal ign_line_235 : std_logic_vector(127 downto 0);
    signal key_185 : std_logic_vector(127 downto 0);
    signal konst_205_wire_constant : std_logic_vector(31 downto 0);
    signal konst_211_wire_constant : std_logic_vector(31 downto 0);
    signal line_221 : std_logic_vector(127 downto 0);
    signal n_dword_id_207 : std_logic_vector(31 downto 0);
    signal n_dword_id_207_201_buffered : std_logic_vector(31 downto 0);
    signal ndwords_193 : std_logic_vector(31 downto 0);
    signal type_cast_200_wire_constant : std_logic_vector(31 downto 0);
    signal type_cast_216_wire_constant : std_logic_vector(0 downto 0);
    signal type_cast_219_wire_constant : std_logic_vector(127 downto 0);
    signal type_cast_231_wire_constant : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    array_obj_ref_175_word_address_0 <= "0001";
    array_obj_ref_177_word_address_0 <= "0010";
    array_obj_ref_180_word_address_0 <= "0011";
    array_obj_ref_182_word_address_0 <= "0100";
    array_obj_ref_188_word_address_0 <= "0101";
    array_obj_ref_192_word_address_0 <= "0110";
    konst_205_wire_constant <= "00000000000000000000000000000010";
    konst_211_wire_constant <= "00000000000000000000000000000011";
    type_cast_200_wire_constant <= "00000000000000000000000000000000";
    type_cast_216_wire_constant <= "1";
    type_cast_219_wire_constant <= "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    type_cast_231_wire_constant <= "0";
    phi_stmt_197: Block -- phi operator 
      signal idata: std_logic_vector(63 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= type_cast_200_wire_constant & n_dword_id_207_201_buffered;
      req <= phi_stmt_197_req_0 & phi_stmt_197_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_197",
          num_reqs => 2,
          bypass_flag => false,
          data_width => 32) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_197_ack_0,
          idata => idata,
          odata => dword_id_197,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_197
    W_address_234_delayed_9_0_227_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_address_234_delayed_9_0_227_inst_req_0;
      W_address_234_delayed_9_0_227_inst_ack_0<= wack(0);
      rreq(0) <= W_address_234_delayed_9_0_227_inst_req_1;
      W_address_234_delayed_9_0_227_inst_ack_1<= rack(0);
      W_address_234_delayed_9_0_227_inst : InterlockBuffer generic map ( -- 
        name => "W_address_234_delayed_9_0_227_inst",
        buffer_size => 9,
        flow_through =>  false ,
        cut_through =>  true ,
        in_data_width => 32,
        out_data_width => 32,
        bypass_flag =>  true 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => address_214,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => address_234_delayed_9_0_229,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    n_dword_id_207_201_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= n_dword_id_207_201_buf_req_0;
      n_dword_id_207_201_buf_ack_0<= wack(0);
      rreq(0) <= n_dword_id_207_201_buf_req_1;
      n_dword_id_207_201_buf_ack_1<= rack(0);
      n_dword_id_207_201_buf : InterlockBuffer generic map ( -- 
        name => "n_dword_id_207_201_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 32,
        out_data_width => 32,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => n_dword_id_207,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => n_dword_id_207_201_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    -- equivalence array_obj_ref_175_gather_scatter
    process(array_obj_ref_175_data_0) --
      variable iv : std_logic_vector(31 downto 0);
      variable ov : std_logic_vector(31 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_175_data_0;
      ov(31 downto 0) := iv;
      array_obj_ref_175_wire <= ov(31 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_177_gather_scatter
    process(array_obj_ref_177_data_0) --
      variable iv : std_logic_vector(31 downto 0);
      variable ov : std_logic_vector(31 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_177_data_0;
      ov(31 downto 0) := iv;
      array_obj_ref_177_wire <= ov(31 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_180_gather_scatter
    process(array_obj_ref_180_data_0) --
      variable iv : std_logic_vector(31 downto 0);
      variable ov : std_logic_vector(31 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_180_data_0;
      ov(31 downto 0) := iv;
      array_obj_ref_180_wire <= ov(31 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_182_gather_scatter
    process(array_obj_ref_182_data_0) --
      variable iv : std_logic_vector(31 downto 0);
      variable ov : std_logic_vector(31 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_182_data_0;
      ov(31 downto 0) := iv;
      array_obj_ref_182_wire <= ov(31 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_188_gather_scatter
    process(array_obj_ref_188_data_0) --
      variable iv : std_logic_vector(31 downto 0);
      variable ov : std_logic_vector(31 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_188_data_0;
      ov(31 downto 0) := iv;
      base_addr_189 <= ov(31 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_192_gather_scatter
    process(array_obj_ref_192_data_0) --
      variable iv : std_logic_vector(31 downto 0);
      variable ov : std_logic_vector(31 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_192_data_0;
      ov(31 downto 0) := iv;
      ndwords_193 <= ov(31 downto 0);
      --
    end process;
    do_while_stmt_195_branch: Block -- 
      -- branch-block
      signal condition_sig : std_logic_vector(0 downto 0);
      begin 
      condition_sig <= ULT_u32_u1_239_wire;
      branch_instance: BranchBase -- 
        generic map( name => "do_while_stmt_195_branch", condition_width => 1,  bypass_flag => true)
        port map( -- 
          condition => condition_sig,
          req => do_while_stmt_195_branch_req_0,
          ack0 => do_while_stmt_195_branch_ack_0,
          ack1 => do_while_stmt_195_branch_ack_1,
          clk => clk,
          reset => reset); -- 
      --
    end Block; -- branch-block
    -- flow through binary operator ADD_u32_u32_206_inst
    n_dword_id_207 <= std_logic_vector(unsigned(dword_id_197) + unsigned(konst_205_wire_constant));
    -- flow through binary operator ADD_u32_u32_213_inst
    address_214 <= std_logic_vector(unsigned(base_addr_189) + unsigned(SHL_u32_u32_212_wire));
    -- flow through binary operator CONCAT_u32_u64_178_inst
    process(array_obj_ref_175_wire, array_obj_ref_177_wire) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(array_obj_ref_175_wire, array_obj_ref_177_wire, tmp_var);
      CONCAT_u32_u64_178_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u64_183_inst
    process(array_obj_ref_180_wire, array_obj_ref_182_wire) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(array_obj_ref_180_wire, array_obj_ref_182_wire, tmp_var);
      CONCAT_u32_u64_183_wire <= tmp_var; --
    end process;
    -- shared split operator group (4) : CONCAT_u64_u128_184_inst 
    ApConcat_group_4: Block -- 
      signal data_in: std_logic_vector(127 downto 0);
      signal data_out: std_logic_vector(127 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      data_in <= CONCAT_u32_u64_178_wire & CONCAT_u32_u64_183_wire;
      key_185 <= data_out(127 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= CONCAT_u64_u128_184_inst_req_0;
      CONCAT_u64_u128_184_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= CONCAT_u64_u128_184_inst_req_1;
      CONCAT_u64_u128_184_inst_ack_1 <= ackR_unguarded(0);
      ApConcat_group_4_gI: SplitGuardInterface generic map(name => "ApConcat_group_4_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
      UnsharedOperator: UnsharedOperatorWithBuffering -- 
        generic map ( -- 
          operator_id => "ApConcat",
          name => "ApConcat_group_4",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 64,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 64, 
          num_inputs    => 2,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 128,
          constant_operand => "0",
          constant_width => 1,
          buffering  => 1,
          flow_through => false,
          full_rate  => false,
          use_constant  => false
          --
        ) 
        port map ( -- 
          reqL => reqL(0),
          ackL => ackL(0),
          reqR => reqR(0),
          ackR => ackR(0),
          dataL => data_in, 
          dataR => data_out,
          clk => clk,
          reset => reset); -- 
      -- 
    end Block; -- split operator group 4
    -- flow through binary operator SHL_u32_u32_212_inst
    process(dword_id_197) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApIntSHL_proc(dword_id_197, konst_211_wire_constant, tmp_var);
      SHL_u32_u32_212_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u32_u1_239_inst
    process(n_dword_id_207, ndwords_193) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(n_dword_id_207, ndwords_193, tmp_var);
      ULT_u32_u1_239_wire <= tmp_var; --
    end process;
    -- flow through binary operator XOR_u128_u128_225_inst
    eline_226 <= (line_221 xor key_185);
    -- shared load operator group (0) : array_obj_ref_182_load_0 array_obj_ref_188_load_0 array_obj_ref_192_load_0 array_obj_ref_175_load_0 array_obj_ref_177_load_0 array_obj_ref_180_load_0 
    LoadGroup0: Block -- 
      signal data_in: std_logic_vector(23 downto 0);
      signal data_out: std_logic_vector(191 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 5 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 5 downto 0);
      signal reqL_unregulated, ackL_unregulated: BooleanArray( 5 downto 0);
      signal guard_vector : std_logic_vector( 5 downto 0);
      constant inBUFs : IntegerArray(5 downto 0) := (5 => 0, 4 => 0, 3 => 0, 2 => 0, 1 => 0, 0 => 0);
      constant outBUFs : IntegerArray(5 downto 0) := (5 => 1, 4 => 1, 3 => 1, 2 => 1, 1 => 1, 0 => 1);
      constant guardFlags : BooleanArray(5 downto 0) := (0 => false, 1 => false, 2 => false, 3 => false, 4 => false, 5 => false);
      constant guardBuffering: IntegerArray(5 downto 0)  := (0 => 2, 1 => 2, 2 => 2, 3 => 2, 4 => 2, 5 => 2);
      -- 
    begin -- 
      reqL_unguarded(5) <= array_obj_ref_182_load_0_req_0;
      reqL_unguarded(4) <= array_obj_ref_188_load_0_req_0;
      reqL_unguarded(3) <= array_obj_ref_192_load_0_req_0;
      reqL_unguarded(2) <= array_obj_ref_175_load_0_req_0;
      reqL_unguarded(1) <= array_obj_ref_177_load_0_req_0;
      reqL_unguarded(0) <= array_obj_ref_180_load_0_req_0;
      array_obj_ref_182_load_0_ack_0 <= ackL_unguarded(5);
      array_obj_ref_188_load_0_ack_0 <= ackL_unguarded(4);
      array_obj_ref_192_load_0_ack_0 <= ackL_unguarded(3);
      array_obj_ref_175_load_0_ack_0 <= ackL_unguarded(2);
      array_obj_ref_177_load_0_ack_0 <= ackL_unguarded(1);
      array_obj_ref_180_load_0_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(5) <= array_obj_ref_182_load_0_req_1;
      reqR_unguarded(4) <= array_obj_ref_188_load_0_req_1;
      reqR_unguarded(3) <= array_obj_ref_192_load_0_req_1;
      reqR_unguarded(2) <= array_obj_ref_175_load_0_req_1;
      reqR_unguarded(1) <= array_obj_ref_177_load_0_req_1;
      reqR_unguarded(0) <= array_obj_ref_180_load_0_req_1;
      array_obj_ref_182_load_0_ack_1 <= ackR_unguarded(5);
      array_obj_ref_188_load_0_ack_1 <= ackR_unguarded(4);
      array_obj_ref_192_load_0_ack_1 <= ackR_unguarded(3);
      array_obj_ref_175_load_0_ack_1 <= ackR_unguarded(2);
      array_obj_ref_177_load_0_ack_1 <= ackR_unguarded(1);
      array_obj_ref_180_load_0_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      guard_vector(1)  <=  '1';
      guard_vector(2)  <=  '1';
      guard_vector(3)  <=  '1';
      guard_vector(4)  <=  '1';
      guard_vector(5)  <=  '1';
      LoadGroup0_accessRegulator_0: access_regulator_base generic map (name => "LoadGroup0_accessRegulator_0", num_slots => 1) -- 
        port map (req => reqL_unregulated(0), -- 
          ack => ackL_unregulated(0),
          regulated_req => reqL(0),
          regulated_ack => ackL(0),
          release_req => reqR(0),
          release_ack => ackR(0),
          clk => clk, reset => reset); -- 
      LoadGroup0_accessRegulator_1: access_regulator_base generic map (name => "LoadGroup0_accessRegulator_1", num_slots => 1) -- 
        port map (req => reqL_unregulated(1), -- 
          ack => ackL_unregulated(1),
          regulated_req => reqL(1),
          regulated_ack => ackL(1),
          release_req => reqR(1),
          release_ack => ackR(1),
          clk => clk, reset => reset); -- 
      LoadGroup0_accessRegulator_2: access_regulator_base generic map (name => "LoadGroup0_accessRegulator_2", num_slots => 1) -- 
        port map (req => reqL_unregulated(2), -- 
          ack => ackL_unregulated(2),
          regulated_req => reqL(2),
          regulated_ack => ackL(2),
          release_req => reqR(2),
          release_ack => ackR(2),
          clk => clk, reset => reset); -- 
      LoadGroup0_accessRegulator_3: access_regulator_base generic map (name => "LoadGroup0_accessRegulator_3", num_slots => 1) -- 
        port map (req => reqL_unregulated(3), -- 
          ack => ackL_unregulated(3),
          regulated_req => reqL(3),
          regulated_ack => ackL(3),
          release_req => reqR(3),
          release_ack => ackR(3),
          clk => clk, reset => reset); -- 
      LoadGroup0_accessRegulator_4: access_regulator_base generic map (name => "LoadGroup0_accessRegulator_4", num_slots => 1) -- 
        port map (req => reqL_unregulated(4), -- 
          ack => ackL_unregulated(4),
          regulated_req => reqL(4),
          regulated_ack => ackL(4),
          release_req => reqR(4),
          release_ack => ackR(4),
          clk => clk, reset => reset); -- 
      LoadGroup0_accessRegulator_5: access_regulator_base generic map (name => "LoadGroup0_accessRegulator_5", num_slots => 1) -- 
        port map (req => reqL_unregulated(5), -- 
          ack => ackL_unregulated(5),
          regulated_req => reqL(5),
          regulated_ack => ackL(5),
          release_req => reqR(5),
          release_ack => ackR(5),
          clk => clk, reset => reset); -- 
      LoadGroup0_gI: SplitGuardInterface generic map(name => "LoadGroup0_gI", nreqs => 6, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL_unregulated,
        sa_in => ackL_unregulated,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      data_in <= array_obj_ref_182_word_address_0 & array_obj_ref_188_word_address_0 & array_obj_ref_192_word_address_0 & array_obj_ref_175_word_address_0 & array_obj_ref_177_word_address_0 & array_obj_ref_180_word_address_0;
      array_obj_ref_182_data_0 <= data_out(191 downto 160);
      array_obj_ref_188_data_0 <= data_out(159 downto 128);
      array_obj_ref_192_data_0 <= data_out(127 downto 96);
      array_obj_ref_175_data_0 <= data_out(95 downto 64);
      array_obj_ref_177_data_0 <= data_out(63 downto 32);
      array_obj_ref_180_data_0 <= data_out(31 downto 0);
      LoadReq: LoadReqSharedWithInputBuffers -- 
        generic map ( name => "LoadGroup0", addr_width => 4,
        num_reqs => 6,
        tag_length => 3,
        time_stamp_width => 18,
        min_clock_period => false,
        input_buffering => inBUFs, 
        no_arbitration => false)
        port map ( -- 
          reqL => reqL , 
          ackL => ackL , 
          dataL => data_in, 
          mreq => memory_space_0_lr_req(0),
          mack => memory_space_0_lr_ack(0),
          maddr => memory_space_0_lr_addr(3 downto 0),
          mtag => memory_space_0_lr_tag(20 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      LoadComplete: LoadCompleteShared -- 
        generic map ( name => "LoadGroup0 load-complete ",
        data_width => 32,
        num_reqs => 6,
        tag_length => 3,
        detailed_buffering_per_output => outBUFs, 
        no_arbitration => false)
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          dataR => data_out, 
          mreq => memory_space_0_lc_req(0),
          mack => memory_space_0_lc_ack(0),
          mdata => memory_space_0_lc_data(31 downto 0),
          mtag => memory_space_0_lc_tag(2 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- load group 0
    -- shared call operator group (0) : call_stmt_221_call call_stmt_235_call 
    access_mem_128_call_group_0: Block -- 
      signal data_in: std_logic_vector(321 downto 0);
      signal data_out: std_logic_vector(255 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 1 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 1 downto 0);
      signal reqL_unregulated, ackL_unregulated : BooleanArray( 1 downto 0);
      signal guard_vector : std_logic_vector( 1 downto 0);
      constant inBUFs : IntegerArray(1 downto 0) := (1 => 1, 0 => 1);
      constant outBUFs : IntegerArray(1 downto 0) := (1 => 1, 0 => 1);
      constant guardFlags : BooleanArray(1 downto 0) := (0 => false, 1 => false);
      constant guardBuffering: IntegerArray(1 downto 0)  := (0 => 9, 1 => 9);
      -- 
    begin -- 
      reqL_unguarded(1) <= call_stmt_221_call_req_0;
      reqL_unguarded(0) <= call_stmt_235_call_req_0;
      call_stmt_221_call_ack_0 <= ackL_unguarded(1);
      call_stmt_235_call_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(1) <= call_stmt_221_call_req_1;
      reqR_unguarded(0) <= call_stmt_235_call_req_1;
      call_stmt_221_call_ack_1 <= ackR_unguarded(1);
      call_stmt_235_call_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      guard_vector(1)  <=  '1';
      access_mem_128_call_group_0_accessRegulator_0: access_regulator_base generic map (name => "access_mem_128_call_group_0_accessRegulator_0", num_slots => 1) -- 
        port map (req => reqL_unregulated(0), -- 
          ack => ackL_unregulated(0),
          regulated_req => reqL(0),
          regulated_ack => ackL(0),
          release_req => reqR(0),
          release_ack => ackR(0),
          clk => clk, reset => reset); -- 
      access_mem_128_call_group_0_accessRegulator_1: access_regulator_base generic map (name => "access_mem_128_call_group_0_accessRegulator_1", num_slots => 1) -- 
        port map (req => reqL_unregulated(1), -- 
          ack => ackL_unregulated(1),
          regulated_req => reqL(1),
          regulated_ack => ackL(1),
          release_req => reqR(1),
          release_ack => ackR(1),
          clk => clk, reset => reset); -- 
      access_mem_128_call_group_0_gI: SplitGuardInterface generic map(name => "access_mem_128_call_group_0_gI", nreqs => 2, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL_unregulated,
        sa_in => ackL_unregulated,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      data_in <= type_cast_216_wire_constant & address_214 & type_cast_219_wire_constant & type_cast_231_wire_constant & address_234_delayed_9_0_229 & eline_226;
      line_221 <= data_out(255 downto 128);
      ign_line_235 <= data_out(127 downto 0);
      CallReq: InputMuxWithBuffering -- 
        generic map (name => "InputMuxWithBuffering",
        iwidth => 322,
        owidth => 161,
        buffering => inBUFs,
        full_rate =>  false,
        twidth => 2,
        nreqs => 2,
        registered_output => false,
        no_arbitration => false)
        port map ( -- 
          reqL => reqL , 
          ackL => ackL , 
          dataL => data_in, 
          reqR => access_mem_128_call_reqs(0),
          ackR => access_mem_128_call_acks(0),
          dataR => access_mem_128_call_data(160 downto 0),
          tagR => access_mem_128_call_tag(1 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      CallComplete: OutputDemuxBaseWithBuffering -- 
        generic map ( -- 
          iwidth => 128,
          owidth => 256,
          detailed_buffering_per_output => outBUFs, 
          full_rate => false, 
          twidth => 2,
          name => "OutputDemuxBaseWithBuffering",
          nreqs => 2) -- 
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          dataR => data_out, 
          reqL => access_mem_128_return_acks(0), -- cross-over
          ackL => access_mem_128_return_reqs(0), -- cross-over
          dataL => access_mem_128_return_data(127 downto 0),
          tagL => access_mem_128_return_tag(1 downto 0),
          clk => clk,
          reset => reset -- 
        ); -- 
      -- 
    end Block; -- call group 0
    -- 
  end Block; -- data_path
  -- 
end execute_job_arch;
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
use ahir.functionLibraryComponents.all;
library work;
use work.accelerator_global_package.all;
entity accelerator is  -- system 
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
  -- 
end entity; 
architecture accelerator_arch  of accelerator is -- system-architecture 
  -- interface signals to connect to memory space memory_space_0
  signal memory_space_0_lr_req :  std_logic_vector(3 downto 0);
  signal memory_space_0_lr_ack : std_logic_vector(3 downto 0);
  signal memory_space_0_lr_addr : std_logic_vector(15 downto 0);
  signal memory_space_0_lr_tag : std_logic_vector(83 downto 0);
  signal memory_space_0_lc_req : std_logic_vector(3 downto 0);
  signal memory_space_0_lc_ack :  std_logic_vector(3 downto 0);
  signal memory_space_0_lc_data : std_logic_vector(127 downto 0);
  signal memory_space_0_lc_tag :  std_logic_vector(11 downto 0);
  signal memory_space_0_sr_req :  std_logic_vector(1 downto 0);
  signal memory_space_0_sr_ack : std_logic_vector(1 downto 0);
  signal memory_space_0_sr_addr : std_logic_vector(7 downto 0);
  signal memory_space_0_sr_data : std_logic_vector(63 downto 0);
  signal memory_space_0_sr_tag : std_logic_vector(41 downto 0);
  signal memory_space_0_sc_req : std_logic_vector(1 downto 0);
  signal memory_space_0_sc_ack :  std_logic_vector(1 downto 0);
  signal memory_space_0_sc_tag :  std_logic_vector(5 downto 0);
  -- declarations related to module accelerator_control_daemon
  component accelerator_control_daemon is -- 
    generic (tag_length : integer); 
    port ( -- 
      memory_space_0_lr_req : out  std_logic_vector(0 downto 0);
      memory_space_0_lr_ack : in   std_logic_vector(0 downto 0);
      memory_space_0_lr_addr : out  std_logic_vector(3 downto 0);
      memory_space_0_lr_tag :  out  std_logic_vector(20 downto 0);
      memory_space_0_lc_req : out  std_logic_vector(0 downto 0);
      memory_space_0_lc_ack : in   std_logic_vector(0 downto 0);
      memory_space_0_lc_data : in   std_logic_vector(31 downto 0);
      memory_space_0_lc_tag :  in  std_logic_vector(2 downto 0);
      memory_space_0_sr_req : out  std_logic_vector(0 downto 0);
      memory_space_0_sr_ack : in   std_logic_vector(0 downto 0);
      memory_space_0_sr_addr : out  std_logic_vector(3 downto 0);
      memory_space_0_sr_data : out  std_logic_vector(31 downto 0);
      memory_space_0_sr_tag :  out  std_logic_vector(20 downto 0);
      memory_space_0_sc_req : out  std_logic_vector(0 downto 0);
      memory_space_0_sc_ack : in   std_logic_vector(0 downto 0);
      memory_space_0_sc_tag :  in  std_logic_vector(2 downto 0);
      AFB_ACCELERATOR_REQUEST_pipe_read_req : out  std_logic_vector(0 downto 0);
      AFB_ACCELERATOR_REQUEST_pipe_read_ack : in   std_logic_vector(0 downto 0);
      AFB_ACCELERATOR_REQUEST_pipe_read_data : in   std_logic_vector(73 downto 0);
      AFB_ACCELERATOR_RESPONSE_pipe_write_req : out  std_logic_vector(0 downto 0);
      AFB_ACCELERATOR_RESPONSE_pipe_write_ack : in   std_logic_vector(0 downto 0);
      AFB_ACCELERATOR_RESPONSE_pipe_write_data : out  std_logic_vector(32 downto 0);
      start_worker_pipe_write_req : out  std_logic_vector(0 downto 0);
      start_worker_pipe_write_ack : in   std_logic_vector(0 downto 0);
      start_worker_pipe_write_data : out  std_logic_vector(0 downto 0);
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
  -- argument signals for module accelerator_control_daemon
  signal accelerator_control_daemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal accelerator_control_daemon_tag_out   : std_logic_vector(1 downto 0);
  signal accelerator_control_daemon_start_req : std_logic;
  signal accelerator_control_daemon_start_ack : std_logic;
  signal accelerator_control_daemon_fin_req   : std_logic;
  signal accelerator_control_daemon_fin_ack : std_logic;
  -- declarations related to module accelerator_interrupt_daemon
  component accelerator_interrupt_daemon is -- 
    generic (tag_length : integer); 
    port ( -- 
      memory_space_0_lr_req : out  std_logic_vector(0 downto 0);
      memory_space_0_lr_ack : in   std_logic_vector(0 downto 0);
      memory_space_0_lr_addr : out  std_logic_vector(3 downto 0);
      memory_space_0_lr_tag :  out  std_logic_vector(20 downto 0);
      memory_space_0_lc_req : out  std_logic_vector(0 downto 0);
      memory_space_0_lc_ack : in   std_logic_vector(0 downto 0);
      memory_space_0_lc_data : in   std_logic_vector(31 downto 0);
      memory_space_0_lc_tag :  in  std_logic_vector(2 downto 0);
      ACCELERATOR_INTERRUPT_pipe_write_req : out  std_logic_vector(0 downto 0);
      ACCELERATOR_INTERRUPT_pipe_write_ack : in   std_logic_vector(0 downto 0);
      ACCELERATOR_INTERRUPT_pipe_write_data : out  std_logic_vector(0 downto 0);
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
  -- argument signals for module accelerator_interrupt_daemon
  signal accelerator_interrupt_daemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal accelerator_interrupt_daemon_tag_out   : std_logic_vector(1 downto 0);
  signal accelerator_interrupt_daemon_start_req : std_logic;
  signal accelerator_interrupt_daemon_start_ack : std_logic;
  signal accelerator_interrupt_daemon_fin_req   : std_logic;
  signal accelerator_interrupt_daemon_fin_ack : std_logic;
  -- declarations related to module accelerator_worker_daemon
  component accelerator_worker_daemon is -- 
    generic (tag_length : integer); 
    port ( -- 
      memory_space_0_lr_req : out  std_logic_vector(0 downto 0);
      memory_space_0_lr_ack : in   std_logic_vector(0 downto 0);
      memory_space_0_lr_addr : out  std_logic_vector(3 downto 0);
      memory_space_0_lr_tag :  out  std_logic_vector(20 downto 0);
      memory_space_0_lc_req : out  std_logic_vector(0 downto 0);
      memory_space_0_lc_ack : in   std_logic_vector(0 downto 0);
      memory_space_0_lc_data : in   std_logic_vector(31 downto 0);
      memory_space_0_lc_tag :  in  std_logic_vector(2 downto 0);
      memory_space_0_sr_req : out  std_logic_vector(0 downto 0);
      memory_space_0_sr_ack : in   std_logic_vector(0 downto 0);
      memory_space_0_sr_addr : out  std_logic_vector(3 downto 0);
      memory_space_0_sr_data : out  std_logic_vector(31 downto 0);
      memory_space_0_sr_tag :  out  std_logic_vector(20 downto 0);
      memory_space_0_sc_req : out  std_logic_vector(0 downto 0);
      memory_space_0_sc_ack : in   std_logic_vector(0 downto 0);
      memory_space_0_sc_tag :  in  std_logic_vector(2 downto 0);
      start_worker_pipe_read_req : out  std_logic_vector(0 downto 0);
      start_worker_pipe_read_ack : in   std_logic_vector(0 downto 0);
      start_worker_pipe_read_data : in   std_logic_vector(0 downto 0);
      execute_job_call_reqs : out  std_logic_vector(0 downto 0);
      execute_job_call_acks : in   std_logic_vector(0 downto 0);
      execute_job_call_tag  :  out  std_logic_vector(0 downto 0);
      execute_job_return_reqs : out  std_logic_vector(0 downto 0);
      execute_job_return_acks : in   std_logic_vector(0 downto 0);
      execute_job_return_tag :  in   std_logic_vector(0 downto 0);
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
  -- argument signals for module accelerator_worker_daemon
  signal accelerator_worker_daemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal accelerator_worker_daemon_tag_out   : std_logic_vector(1 downto 0);
  signal accelerator_worker_daemon_start_req : std_logic;
  signal accelerator_worker_daemon_start_ack : std_logic;
  signal accelerator_worker_daemon_fin_req   : std_logic;
  signal accelerator_worker_daemon_fin_ack : std_logic;
  -- declarations related to module access_mem_128
  component access_mem_128 is -- 
    generic (tag_length : integer); 
    port ( -- 
      write_bar : in  std_logic_vector(0 downto 0);
      q_word_address : in  std_logic_vector(31 downto 0);
      wline : in  std_logic_vector(127 downto 0);
      rline : out  std_logic_vector(127 downto 0);
      ACB_ACCELERATOR_MEM_RESPONSE_pipe_read_req : out  std_logic_vector(0 downto 0);
      ACB_ACCELERATOR_MEM_RESPONSE_pipe_read_ack : in   std_logic_vector(0 downto 0);
      ACB_ACCELERATOR_MEM_RESPONSE_pipe_read_data : in   std_logic_vector(64 downto 0);
      ACB_ACCELERATOR_MEM_REQUEST_pipe_write_req : out  std_logic_vector(0 downto 0);
      ACB_ACCELERATOR_MEM_REQUEST_pipe_write_ack : in   std_logic_vector(0 downto 0);
      ACB_ACCELERATOR_MEM_REQUEST_pipe_write_data : out  std_logic_vector(109 downto 0);
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
  -- argument signals for module access_mem_128
  signal access_mem_128_write_bar :  std_logic_vector(0 downto 0);
  signal access_mem_128_q_word_address :  std_logic_vector(31 downto 0);
  signal access_mem_128_wline :  std_logic_vector(127 downto 0);
  signal access_mem_128_rline :  std_logic_vector(127 downto 0);
  signal access_mem_128_in_args    : std_logic_vector(160 downto 0);
  signal access_mem_128_out_args   : std_logic_vector(127 downto 0);
  signal access_mem_128_tag_in    : std_logic_vector(2 downto 0) := (others => '0');
  signal access_mem_128_tag_out   : std_logic_vector(2 downto 0);
  signal access_mem_128_start_req : std_logic;
  signal access_mem_128_start_ack : std_logic;
  signal access_mem_128_fin_req   : std_logic;
  signal access_mem_128_fin_ack : std_logic;
  -- caller side aggregated signals for module access_mem_128
  signal access_mem_128_call_reqs: std_logic_vector(0 downto 0);
  signal access_mem_128_call_acks: std_logic_vector(0 downto 0);
  signal access_mem_128_return_reqs: std_logic_vector(0 downto 0);
  signal access_mem_128_return_acks: std_logic_vector(0 downto 0);
  signal access_mem_128_call_data: std_logic_vector(160 downto 0);
  signal access_mem_128_call_tag: std_logic_vector(1 downto 0);
  signal access_mem_128_return_data: std_logic_vector(127 downto 0);
  signal access_mem_128_return_tag: std_logic_vector(1 downto 0);
  -- declarations related to module execute_job
  component execute_job is -- 
    generic (tag_length : integer); 
    port ( -- 
      memory_space_0_lr_req : out  std_logic_vector(0 downto 0);
      memory_space_0_lr_ack : in   std_logic_vector(0 downto 0);
      memory_space_0_lr_addr : out  std_logic_vector(3 downto 0);
      memory_space_0_lr_tag :  out  std_logic_vector(20 downto 0);
      memory_space_0_lc_req : out  std_logic_vector(0 downto 0);
      memory_space_0_lc_ack : in   std_logic_vector(0 downto 0);
      memory_space_0_lc_data : in   std_logic_vector(31 downto 0);
      memory_space_0_lc_tag :  in  std_logic_vector(2 downto 0);
      access_mem_128_call_reqs : out  std_logic_vector(0 downto 0);
      access_mem_128_call_acks : in   std_logic_vector(0 downto 0);
      access_mem_128_call_data : out  std_logic_vector(160 downto 0);
      access_mem_128_call_tag  :  out  std_logic_vector(1 downto 0);
      access_mem_128_return_reqs : out  std_logic_vector(0 downto 0);
      access_mem_128_return_acks : in   std_logic_vector(0 downto 0);
      access_mem_128_return_data : in   std_logic_vector(127 downto 0);
      access_mem_128_return_tag :  in   std_logic_vector(1 downto 0);
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
  -- argument signals for module execute_job
  signal execute_job_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal execute_job_tag_out   : std_logic_vector(1 downto 0);
  signal execute_job_start_req : std_logic;
  signal execute_job_start_ack : std_logic;
  signal execute_job_fin_req   : std_logic;
  signal execute_job_fin_ack : std_logic;
  -- caller side aggregated signals for module execute_job
  signal execute_job_call_reqs: std_logic_vector(0 downto 0);
  signal execute_job_call_acks: std_logic_vector(0 downto 0);
  signal execute_job_return_reqs: std_logic_vector(0 downto 0);
  signal execute_job_return_acks: std_logic_vector(0 downto 0);
  signal execute_job_call_tag: std_logic_vector(0 downto 0);
  signal execute_job_return_tag: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe ACB_ACCELERATOR_MEM_REQUEST
  signal ACB_ACCELERATOR_MEM_REQUEST_pipe_write_data: std_logic_vector(109 downto 0);
  signal ACB_ACCELERATOR_MEM_REQUEST_pipe_write_req: std_logic_vector(0 downto 0);
  signal ACB_ACCELERATOR_MEM_REQUEST_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe ACB_ACCELERATOR_MEM_RESPONSE
  signal ACB_ACCELERATOR_MEM_RESPONSE_pipe_read_data: std_logic_vector(64 downto 0);
  signal ACB_ACCELERATOR_MEM_RESPONSE_pipe_read_req: std_logic_vector(0 downto 0);
  signal ACB_ACCELERATOR_MEM_RESPONSE_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe ACCELERATOR_INTERRUPT
  signal ACCELERATOR_INTERRUPT_pipe_write_data: std_logic_vector(0 downto 0);
  signal ACCELERATOR_INTERRUPT_pipe_write_req: std_logic_vector(0 downto 0);
  signal ACCELERATOR_INTERRUPT_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe AFB_ACCELERATOR_REQUEST
  signal AFB_ACCELERATOR_REQUEST_pipe_read_data: std_logic_vector(73 downto 0);
  signal AFB_ACCELERATOR_REQUEST_pipe_read_req: std_logic_vector(0 downto 0);
  signal AFB_ACCELERATOR_REQUEST_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe AFB_ACCELERATOR_RESPONSE
  signal AFB_ACCELERATOR_RESPONSE_pipe_write_data: std_logic_vector(32 downto 0);
  signal AFB_ACCELERATOR_RESPONSE_pipe_write_req: std_logic_vector(0 downto 0);
  signal AFB_ACCELERATOR_RESPONSE_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe start_worker
  signal start_worker_pipe_write_data: std_logic_vector(0 downto 0);
  signal start_worker_pipe_write_req: std_logic_vector(0 downto 0);
  signal start_worker_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe start_worker
  signal start_worker_pipe_read_data: std_logic_vector(0 downto 0);
  signal start_worker_pipe_read_req: std_logic_vector(0 downto 0);
  signal start_worker_pipe_read_ack: std_logic_vector(0 downto 0);
  -- gated clock signal declarations.
  -- 
begin -- 
  -- module accelerator_control_daemon
  accelerator_control_daemon_instance:accelerator_control_daemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => accelerator_control_daemon_start_req,
      start_ack => accelerator_control_daemon_start_ack,
      fin_req => accelerator_control_daemon_fin_req,
      fin_ack => accelerator_control_daemon_fin_ack,
      clk => clk,
      reset => reset,
      memory_space_0_lr_req => memory_space_0_lr_req(3 downto 3),
      memory_space_0_lr_ack => memory_space_0_lr_ack(3 downto 3),
      memory_space_0_lr_addr => memory_space_0_lr_addr(15 downto 12),
      memory_space_0_lr_tag => memory_space_0_lr_tag(83 downto 63),
      memory_space_0_lc_req => memory_space_0_lc_req(3 downto 3),
      memory_space_0_lc_ack => memory_space_0_lc_ack(3 downto 3),
      memory_space_0_lc_data => memory_space_0_lc_data(127 downto 96),
      memory_space_0_lc_tag => memory_space_0_lc_tag(11 downto 9),
      memory_space_0_sr_req => memory_space_0_sr_req(1 downto 1),
      memory_space_0_sr_ack => memory_space_0_sr_ack(1 downto 1),
      memory_space_0_sr_addr => memory_space_0_sr_addr(7 downto 4),
      memory_space_0_sr_data => memory_space_0_sr_data(63 downto 32),
      memory_space_0_sr_tag => memory_space_0_sr_tag(41 downto 21),
      memory_space_0_sc_req => memory_space_0_sc_req(1 downto 1),
      memory_space_0_sc_ack => memory_space_0_sc_ack(1 downto 1),
      memory_space_0_sc_tag => memory_space_0_sc_tag(5 downto 3),
      AFB_ACCELERATOR_REQUEST_pipe_read_req => AFB_ACCELERATOR_REQUEST_pipe_read_req(0 downto 0),
      AFB_ACCELERATOR_REQUEST_pipe_read_ack => AFB_ACCELERATOR_REQUEST_pipe_read_ack(0 downto 0),
      AFB_ACCELERATOR_REQUEST_pipe_read_data => AFB_ACCELERATOR_REQUEST_pipe_read_data(73 downto 0),
      AFB_ACCELERATOR_RESPONSE_pipe_write_req => AFB_ACCELERATOR_RESPONSE_pipe_write_req(0 downto 0),
      AFB_ACCELERATOR_RESPONSE_pipe_write_ack => AFB_ACCELERATOR_RESPONSE_pipe_write_ack(0 downto 0),
      AFB_ACCELERATOR_RESPONSE_pipe_write_data => AFB_ACCELERATOR_RESPONSE_pipe_write_data(32 downto 0),
      start_worker_pipe_write_req => start_worker_pipe_write_req(0 downto 0),
      start_worker_pipe_write_ack => start_worker_pipe_write_ack(0 downto 0),
      start_worker_pipe_write_data => start_worker_pipe_write_data(0 downto 0),
      tag_in => accelerator_control_daemon_tag_in,
      tag_out => accelerator_control_daemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  accelerator_control_daemon_tag_in <= (others => '0');
  accelerator_control_daemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => accelerator_control_daemon_start_req, start_ack => accelerator_control_daemon_start_ack,  fin_req => accelerator_control_daemon_fin_req,  fin_ack => accelerator_control_daemon_fin_ack);
  -- module accelerator_interrupt_daemon
  accelerator_interrupt_daemon_instance:accelerator_interrupt_daemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => accelerator_interrupt_daemon_start_req,
      start_ack => accelerator_interrupt_daemon_start_ack,
      fin_req => accelerator_interrupt_daemon_fin_req,
      fin_ack => accelerator_interrupt_daemon_fin_ack,
      clk => clk,
      reset => reset,
      memory_space_0_lr_req => memory_space_0_lr_req(2 downto 2),
      memory_space_0_lr_ack => memory_space_0_lr_ack(2 downto 2),
      memory_space_0_lr_addr => memory_space_0_lr_addr(11 downto 8),
      memory_space_0_lr_tag => memory_space_0_lr_tag(62 downto 42),
      memory_space_0_lc_req => memory_space_0_lc_req(2 downto 2),
      memory_space_0_lc_ack => memory_space_0_lc_ack(2 downto 2),
      memory_space_0_lc_data => memory_space_0_lc_data(95 downto 64),
      memory_space_0_lc_tag => memory_space_0_lc_tag(8 downto 6),
      ACCELERATOR_INTERRUPT_pipe_write_req => ACCELERATOR_INTERRUPT_pipe_write_req(0 downto 0),
      ACCELERATOR_INTERRUPT_pipe_write_ack => ACCELERATOR_INTERRUPT_pipe_write_ack(0 downto 0),
      ACCELERATOR_INTERRUPT_pipe_write_data => ACCELERATOR_INTERRUPT_pipe_write_data(0 downto 0),
      tag_in => accelerator_interrupt_daemon_tag_in,
      tag_out => accelerator_interrupt_daemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  accelerator_interrupt_daemon_tag_in <= (others => '0');
  accelerator_interrupt_daemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => accelerator_interrupt_daemon_start_req, start_ack => accelerator_interrupt_daemon_start_ack,  fin_req => accelerator_interrupt_daemon_fin_req,  fin_ack => accelerator_interrupt_daemon_fin_ack);
  -- module accelerator_worker_daemon
  accelerator_worker_daemon_instance:accelerator_worker_daemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => accelerator_worker_daemon_start_req,
      start_ack => accelerator_worker_daemon_start_ack,
      fin_req => accelerator_worker_daemon_fin_req,
      fin_ack => accelerator_worker_daemon_fin_ack,
      clk => clk,
      reset => reset,
      memory_space_0_lr_req => memory_space_0_lr_req(0 downto 0),
      memory_space_0_lr_ack => memory_space_0_lr_ack(0 downto 0),
      memory_space_0_lr_addr => memory_space_0_lr_addr(3 downto 0),
      memory_space_0_lr_tag => memory_space_0_lr_tag(20 downto 0),
      memory_space_0_lc_req => memory_space_0_lc_req(0 downto 0),
      memory_space_0_lc_ack => memory_space_0_lc_ack(0 downto 0),
      memory_space_0_lc_data => memory_space_0_lc_data(31 downto 0),
      memory_space_0_lc_tag => memory_space_0_lc_tag(2 downto 0),
      memory_space_0_sr_req => memory_space_0_sr_req(0 downto 0),
      memory_space_0_sr_ack => memory_space_0_sr_ack(0 downto 0),
      memory_space_0_sr_addr => memory_space_0_sr_addr(3 downto 0),
      memory_space_0_sr_data => memory_space_0_sr_data(31 downto 0),
      memory_space_0_sr_tag => memory_space_0_sr_tag(20 downto 0),
      memory_space_0_sc_req => memory_space_0_sc_req(0 downto 0),
      memory_space_0_sc_ack => memory_space_0_sc_ack(0 downto 0),
      memory_space_0_sc_tag => memory_space_0_sc_tag(2 downto 0),
      start_worker_pipe_read_req => start_worker_pipe_read_req(0 downto 0),
      start_worker_pipe_read_ack => start_worker_pipe_read_ack(0 downto 0),
      start_worker_pipe_read_data => start_worker_pipe_read_data(0 downto 0),
      execute_job_call_reqs => execute_job_call_reqs(0 downto 0),
      execute_job_call_acks => execute_job_call_acks(0 downto 0),
      execute_job_call_tag => execute_job_call_tag(0 downto 0),
      execute_job_return_reqs => execute_job_return_reqs(0 downto 0),
      execute_job_return_acks => execute_job_return_acks(0 downto 0),
      execute_job_return_tag => execute_job_return_tag(0 downto 0),
      tag_in => accelerator_worker_daemon_tag_in,
      tag_out => accelerator_worker_daemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  accelerator_worker_daemon_tag_in <= (others => '0');
  accelerator_worker_daemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => accelerator_worker_daemon_start_req, start_ack => accelerator_worker_daemon_start_ack,  fin_req => accelerator_worker_daemon_fin_req,  fin_ack => accelerator_worker_daemon_fin_ack);
  -- module access_mem_128
  access_mem_128_write_bar <= access_mem_128_in_args(160 downto 160);
  access_mem_128_q_word_address <= access_mem_128_in_args(159 downto 128);
  access_mem_128_wline <= access_mem_128_in_args(127 downto 0);
  access_mem_128_out_args <= access_mem_128_rline ;
  -- call arbiter for module access_mem_128
  access_mem_128_arbiter: SplitCallArbiter -- 
    generic map( --
      name => "SplitCallArbiter", num_reqs => 1,
      call_data_width => 161,
      return_data_width => 128,
      callee_tag_length => 1,
      caller_tag_length => 2--
    )
    port map(-- 
      call_reqs => access_mem_128_call_reqs,
      call_acks => access_mem_128_call_acks,
      return_reqs => access_mem_128_return_reqs,
      return_acks => access_mem_128_return_acks,
      call_data  => access_mem_128_call_data,
      call_tag  => access_mem_128_call_tag,
      return_tag  => access_mem_128_return_tag,
      call_mtag => access_mem_128_tag_in,
      return_mtag => access_mem_128_tag_out,
      return_data =>access_mem_128_return_data,
      call_mreq => access_mem_128_start_req,
      call_mack => access_mem_128_start_ack,
      return_mreq => access_mem_128_fin_req,
      return_mack => access_mem_128_fin_ack,
      call_mdata => access_mem_128_in_args,
      return_mdata => access_mem_128_out_args,
      clk => clk, 
      reset => reset --
    ); --
  access_mem_128_instance:access_mem_128-- 
    generic map(tag_length => 3)
    port map(-- 
      write_bar => access_mem_128_write_bar,
      q_word_address => access_mem_128_q_word_address,
      wline => access_mem_128_wline,
      rline => access_mem_128_rline,
      start_req => access_mem_128_start_req,
      start_ack => access_mem_128_start_ack,
      fin_req => access_mem_128_fin_req,
      fin_ack => access_mem_128_fin_ack,
      clk => clk,
      reset => reset,
      ACB_ACCELERATOR_MEM_RESPONSE_pipe_read_req => ACB_ACCELERATOR_MEM_RESPONSE_pipe_read_req(0 downto 0),
      ACB_ACCELERATOR_MEM_RESPONSE_pipe_read_ack => ACB_ACCELERATOR_MEM_RESPONSE_pipe_read_ack(0 downto 0),
      ACB_ACCELERATOR_MEM_RESPONSE_pipe_read_data => ACB_ACCELERATOR_MEM_RESPONSE_pipe_read_data(64 downto 0),
      ACB_ACCELERATOR_MEM_REQUEST_pipe_write_req => ACB_ACCELERATOR_MEM_REQUEST_pipe_write_req(0 downto 0),
      ACB_ACCELERATOR_MEM_REQUEST_pipe_write_ack => ACB_ACCELERATOR_MEM_REQUEST_pipe_write_ack(0 downto 0),
      ACB_ACCELERATOR_MEM_REQUEST_pipe_write_data => ACB_ACCELERATOR_MEM_REQUEST_pipe_write_data(109 downto 0),
      tag_in => access_mem_128_tag_in,
      tag_out => access_mem_128_tag_out-- 
    ); -- 
  -- module execute_job
  -- call arbiter for module execute_job
  execute_job_arbiter: SplitCallArbiterNoInargsNoOutargs -- 
    generic map( --
      name => "SplitCallArbiterNoInargsNoOutargs", num_reqs => 1,
      callee_tag_length => 1,
      caller_tag_length => 1--
    )
    port map(-- 
      call_reqs => execute_job_call_reqs,
      call_acks => execute_job_call_acks,
      return_reqs => execute_job_return_reqs,
      return_acks => execute_job_return_acks,
      call_tag  => execute_job_call_tag,
      return_tag  => execute_job_return_tag,
      call_mtag => execute_job_tag_in,
      return_mtag => execute_job_tag_out,
      call_mreq => execute_job_start_req,
      call_mack => execute_job_start_ack,
      return_mreq => execute_job_fin_req,
      return_mack => execute_job_fin_ack,
      clk => clk, 
      reset => reset --
    ); --
  execute_job_instance:execute_job-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => execute_job_start_req,
      start_ack => execute_job_start_ack,
      fin_req => execute_job_fin_req,
      fin_ack => execute_job_fin_ack,
      clk => clk,
      reset => reset,
      memory_space_0_lr_req => memory_space_0_lr_req(1 downto 1),
      memory_space_0_lr_ack => memory_space_0_lr_ack(1 downto 1),
      memory_space_0_lr_addr => memory_space_0_lr_addr(7 downto 4),
      memory_space_0_lr_tag => memory_space_0_lr_tag(41 downto 21),
      memory_space_0_lc_req => memory_space_0_lc_req(1 downto 1),
      memory_space_0_lc_ack => memory_space_0_lc_ack(1 downto 1),
      memory_space_0_lc_data => memory_space_0_lc_data(63 downto 32),
      memory_space_0_lc_tag => memory_space_0_lc_tag(5 downto 3),
      access_mem_128_call_reqs => access_mem_128_call_reqs(0 downto 0),
      access_mem_128_call_acks => access_mem_128_call_acks(0 downto 0),
      access_mem_128_call_data => access_mem_128_call_data(160 downto 0),
      access_mem_128_call_tag => access_mem_128_call_tag(1 downto 0),
      access_mem_128_return_reqs => access_mem_128_return_reqs(0 downto 0),
      access_mem_128_return_acks => access_mem_128_return_acks(0 downto 0),
      access_mem_128_return_data => access_mem_128_return_data(127 downto 0),
      access_mem_128_return_tag => access_mem_128_return_tag(1 downto 0),
      tag_in => execute_job_tag_in,
      tag_out => execute_job_tag_out-- 
    ); -- 
  ACB_ACCELERATOR_MEM_REQUEST_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe ACB_ACCELERATOR_MEM_REQUEST",
      num_reads => 1,
      num_writes => 1,
      data_width => 110,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => ACB_ACCELERATOR_MEM_REQUEST_pipe_read_req,
      read_ack => ACB_ACCELERATOR_MEM_REQUEST_pipe_read_ack,
      read_data => ACB_ACCELERATOR_MEM_REQUEST_pipe_read_data,
      write_req => ACB_ACCELERATOR_MEM_REQUEST_pipe_write_req,
      write_ack => ACB_ACCELERATOR_MEM_REQUEST_pipe_write_ack,
      write_data => ACB_ACCELERATOR_MEM_REQUEST_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  ACB_ACCELERATOR_MEM_RESPONSE_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe ACB_ACCELERATOR_MEM_RESPONSE",
      num_reads => 1,
      num_writes => 1,
      data_width => 65,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => ACB_ACCELERATOR_MEM_RESPONSE_pipe_read_req,
      read_ack => ACB_ACCELERATOR_MEM_RESPONSE_pipe_read_ack,
      read_data => ACB_ACCELERATOR_MEM_RESPONSE_pipe_read_data,
      write_req => ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_req,
      write_ack => ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_ack,
      write_data => ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  ACCELERATOR_INTERRUPT_Signal: SignalBase -- 
    generic map( -- 
      name => "pipe ACCELERATOR_INTERRUPT",
      volatile_flag => false,
      num_writes => 1,
      data_width => 1 --
    ) 
    port map( -- 
      read_data => ACCELERATOR_INTERRUPT,
      write_req => ACCELERATOR_INTERRUPT_pipe_write_req,
      write_ack => ACCELERATOR_INTERRUPT_pipe_write_ack,
      write_data => ACCELERATOR_INTERRUPT_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  AFB_ACCELERATOR_REQUEST_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe AFB_ACCELERATOR_REQUEST",
      num_reads => 1,
      num_writes => 1,
      data_width => 74,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => AFB_ACCELERATOR_REQUEST_pipe_read_req,
      read_ack => AFB_ACCELERATOR_REQUEST_pipe_read_ack,
      read_data => AFB_ACCELERATOR_REQUEST_pipe_read_data,
      write_req => AFB_ACCELERATOR_REQUEST_pipe_write_req,
      write_ack => AFB_ACCELERATOR_REQUEST_pipe_write_ack,
      write_data => AFB_ACCELERATOR_REQUEST_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  AFB_ACCELERATOR_RESPONSE_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe AFB_ACCELERATOR_RESPONSE",
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
      read_req => AFB_ACCELERATOR_RESPONSE_pipe_read_req,
      read_ack => AFB_ACCELERATOR_RESPONSE_pipe_read_ack,
      read_data => AFB_ACCELERATOR_RESPONSE_pipe_read_data,
      write_req => AFB_ACCELERATOR_RESPONSE_pipe_write_req,
      write_ack => AFB_ACCELERATOR_RESPONSE_pipe_write_ack,
      write_data => AFB_ACCELERATOR_RESPONSE_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  start_worker_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe start_worker",
      num_reads => 1,
      num_writes => 1,
      data_width => 1,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 1 --
    )
    port map( -- 
      read_req => start_worker_pipe_read_req,
      read_ack => start_worker_pipe_read_ack,
      read_data => start_worker_pipe_read_data,
      write_req => start_worker_pipe_write_req,
      write_ack => start_worker_pipe_write_ack,
      write_data => start_worker_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- gated clock generators 
  MemorySpace_memory_space_0: ordered_memory_subsystem -- 
    generic map(-- 
      name => "memory_space_0",
      num_loads => 4,
      num_stores => 2,
      addr_width => 4,
      data_width => 32,
      tag_width => 3,
      time_stamp_width => 18,
      number_of_banks => 1,
      mux_degree => 2,
      demux_degree => 2,
      base_bank_addr_width => 4,
      base_bank_data_width => 32
      ) -- 
    port map(-- 
      lr_addr_in => memory_space_0_lr_addr,
      lr_req_in => memory_space_0_lr_req,
      lr_ack_out => memory_space_0_lr_ack,
      lr_tag_in => memory_space_0_lr_tag,
      lc_req_in => memory_space_0_lc_req,
      lc_ack_out => memory_space_0_lc_ack,
      lc_data_out => memory_space_0_lc_data,
      lc_tag_out => memory_space_0_lc_tag,
      sr_addr_in => memory_space_0_sr_addr,
      sr_data_in => memory_space_0_sr_data,
      sr_req_in => memory_space_0_sr_req,
      sr_ack_out => memory_space_0_sr_ack,
      sr_tag_in => memory_space_0_sr_tag,
      sc_req_in=> memory_space_0_sc_req,
      sc_ack_out => memory_space_0_sc_ack,
      sc_tag_out => memory_space_0_sc_tag,
      clock => clk,
      reset => reset); -- 
  -- 
end accelerator_arch;
