-- VHDL produced by vc2vhdl from virtual circuit (vc) description 
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
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
library AxiBridgeLib;
use AxiBridgeLib.axi_acb_core_global_package.all;
entity axi_to_acb_bridge_daemon is -- 
  generic (tag_length : integer); 
  port ( -- 
    ACB_BUS_RESPONSE_pipe_read_req : out  std_logic_vector(0 downto 0);
    ACB_BUS_RESPONSE_pipe_read_ack : in   std_logic_vector(0 downto 0);
    ACB_BUS_RESPONSE_pipe_read_data : in   std_logic_vector(64 downto 0);
    noblock_axi_read_command_pipe_read_req : out  std_logic_vector(0 downto 0);
    noblock_axi_read_command_pipe_read_ack : in   std_logic_vector(0 downto 0);
    noblock_axi_read_command_pipe_read_data : in   std_logic_vector(32 downto 0);
    noblock_axi_write_command_pipe_read_req : out  std_logic_vector(0 downto 0);
    noblock_axi_write_command_pipe_read_ack : in   std_logic_vector(0 downto 0);
    noblock_axi_write_command_pipe_read_data : in   std_logic_vector(104 downto 0);
    ACB_BUS_REQUEST_pipe_write_req : out  std_logic_vector(0 downto 0);
    ACB_BUS_REQUEST_pipe_write_ack : in   std_logic_vector(0 downto 0);
    ACB_BUS_REQUEST_pipe_write_data : out  std_logic_vector(109 downto 0);
    axi_read_data_pipe_write_req : out  std_logic_vector(0 downto 0);
    axi_read_data_pipe_write_ack : in   std_logic_vector(0 downto 0);
    axi_read_data_pipe_write_data : out  std_logic_vector(63 downto 0);
    axi_write_status_pipe_write_req : out  std_logic_vector(0 downto 0);
    axi_write_status_pipe_write_ack : in   std_logic_vector(0 downto 0);
    axi_write_status_pipe_write_data : out  std_logic_vector(1 downto 0);
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
end entity axi_to_acb_bridge_daemon;
architecture axi_to_acb_bridge_daemon_arch of axi_to_acb_bridge_daemon is -- 
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
  signal axi_to_acb_bridge_daemon_CP_0_start: Boolean;
  signal axi_to_acb_bridge_daemon_CP_0_symbol: Boolean;
  -- volatile/operator module components. 
  -- links between control-path and data-path
  signal phi_stmt_24_req_1 : boolean;
  signal phi_stmt_24_req_0 : boolean;
  signal do_while_stmt_22_branch_req_0 : boolean;
  signal phi_stmt_24_ack_0 : boolean;
  signal n_counter_51_29_buf_req_0 : boolean;
  signal n_counter_51_29_buf_ack_0 : boolean;
  signal n_counter_51_29_buf_req_1 : boolean;
  signal n_counter_51_29_buf_ack_1 : boolean;
  signal phi_stmt_35_ack_0 : boolean;
  signal phi_stmt_30_req_1 : boolean;
  signal phi_stmt_30_req_0 : boolean;
  signal phi_stmt_30_ack_0 : boolean;
  signal RPIPE_noblock_axi_read_command_34_inst_req_0 : boolean;
  signal RPIPE_noblock_axi_read_command_34_inst_ack_0 : boolean;
  signal RPIPE_noblock_axi_read_command_34_inst_req_1 : boolean;
  signal RPIPE_noblock_axi_read_command_34_inst_ack_1 : boolean;
  signal phi_stmt_35_req_0 : boolean;
  signal phi_stmt_35_req_1 : boolean;
  signal W_select_read_168_delayed_9_0_167_inst_req_0 : boolean;
  signal W_select_read_168_delayed_9_0_167_inst_ack_0 : boolean;
  signal W_select_read_168_delayed_9_0_167_inst_req_1 : boolean;
  signal W_select_read_168_delayed_9_0_167_inst_ack_1 : boolean;
  signal RPIPE_noblock_axi_write_command_38_inst_req_0 : boolean;
  signal RPIPE_noblock_axi_write_command_38_inst_ack_0 : boolean;
  signal RPIPE_noblock_axi_write_command_38_inst_req_1 : boolean;
  signal RPIPE_noblock_axi_write_command_38_inst_ack_1 : boolean;
  signal phi_stmt_40_req_1 : boolean;
  signal phi_stmt_40_req_0 : boolean;
  signal phi_stmt_40_ack_0 : boolean;
  signal n_read_has_priority_108_45_buf_req_0 : boolean;
  signal n_read_has_priority_108_45_buf_ack_0 : boolean;
  signal n_read_has_priority_108_45_buf_req_1 : boolean;
  signal n_read_has_priority_108_45_buf_ack_1 : boolean;
  signal WPIPE_ACB_BUS_REQUEST_149_inst_req_0 : boolean;
  signal WPIPE_ACB_BUS_REQUEST_149_inst_ack_0 : boolean;
  signal WPIPE_ACB_BUS_REQUEST_149_inst_req_1 : boolean;
  signal WPIPE_ACB_BUS_REQUEST_149_inst_ack_1 : boolean;
  signal W_send_acb_command_152_delayed_8_0_152_inst_req_0 : boolean;
  signal W_send_acb_command_152_delayed_8_0_152_inst_ack_0 : boolean;
  signal W_send_acb_command_152_delayed_8_0_152_inst_req_1 : boolean;
  signal W_send_acb_command_152_delayed_8_0_152_inst_ack_1 : boolean;
  signal RPIPE_ACB_BUS_RESPONSE_157_inst_req_0 : boolean;
  signal RPIPE_ACB_BUS_RESPONSE_157_inst_ack_0 : boolean;
  signal RPIPE_ACB_BUS_RESPONSE_157_inst_req_1 : boolean;
  signal RPIPE_ACB_BUS_RESPONSE_157_inst_ack_1 : boolean;
  signal WPIPE_axi_write_status_164_inst_req_0 : boolean;
  signal WPIPE_axi_write_status_164_inst_ack_0 : boolean;
  signal WPIPE_axi_write_status_164_inst_req_1 : boolean;
  signal WPIPE_axi_write_status_164_inst_ack_1 : boolean;
  signal WPIPE_axi_read_data_171_inst_req_0 : boolean;
  signal WPIPE_axi_read_data_171_inst_ack_0 : boolean;
  signal WPIPE_axi_read_data_171_inst_req_1 : boolean;
  signal WPIPE_axi_read_data_171_inst_ack_1 : boolean;
  signal do_while_stmt_22_branch_ack_0 : boolean;
  signal do_while_stmt_22_branch_ack_1 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "axi_to_acb_bridge_daemon_input_buffer", -- 
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
  axi_to_acb_bridge_daemon_CP_0_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "axi_to_acb_bridge_daemon_out_buffer", -- 
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
    preds <= axi_to_acb_bridge_daemon_CP_0_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
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
    preds <= axi_to_acb_bridge_daemon_CP_0_start & tag_ilock_write_ack_symbol;
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
    preds <= axi_to_acb_bridge_daemon_CP_0_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  axi_to_acb_bridge_daemon_CP_0: Block -- control-path 
    signal axi_to_acb_bridge_daemon_CP_0_elements: BooleanArray(118 downto 0);
    -- 
  begin -- 
    axi_to_acb_bridge_daemon_CP_0_elements(0) <= axi_to_acb_bridge_daemon_CP_0_start;
    axi_to_acb_bridge_daemon_CP_0_symbol <= axi_to_acb_bridge_daemon_CP_0_elements(1);
    -- CP-element group 0:  transition  place  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	2 
    -- CP-element group 0:  members (4) 
      -- CP-element group 0: 	 branch_block_stmt_21/do_while_stmt_22__entry__
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 branch_block_stmt_21/$entry
      -- CP-element group 0: 	 branch_block_stmt_21/branch_block_stmt_21__entry__
      -- 
    -- CP-element group 1:  transition  place  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	118 
    -- CP-element group 1: successors 
    -- CP-element group 1:  members (4) 
      -- CP-element group 1: 	 branch_block_stmt_21/do_while_stmt_22__exit__
      -- CP-element group 1: 	 $exit
      -- CP-element group 1: 	 branch_block_stmt_21/$exit
      -- CP-element group 1: 	 branch_block_stmt_21/branch_block_stmt_21__exit__
      -- 
    axi_to_acb_bridge_daemon_CP_0_elements(1) <= axi_to_acb_bridge_daemon_CP_0_elements(118);
    -- CP-element group 2:  transition  place  bypass  pipeline-parent 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	0 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	8 
    -- CP-element group 2:  members (2) 
      -- CP-element group 2: 	 branch_block_stmt_21/do_while_stmt_22/$entry
      -- CP-element group 2: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22__entry__
      -- 
    axi_to_acb_bridge_daemon_CP_0_elements(2) <= axi_to_acb_bridge_daemon_CP_0_elements(0);
    -- CP-element group 3:  merge  place  bypass  pipeline-parent 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	118 
    -- CP-element group 3:  members (1) 
      -- CP-element group 3: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22__exit__
      -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(3) is bound as output of CP function.
    -- CP-element group 4:  merge  place  bypass  pipeline-parent 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	7 
    -- CP-element group 4:  members (1) 
      -- CP-element group 4: 	 branch_block_stmt_21/do_while_stmt_22/loop_back
      -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(4) is bound as output of CP function.
    -- CP-element group 5:  branch  transition  place  bypass  pipeline-parent 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	10 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	117 
    -- CP-element group 5: 	116 
    -- CP-element group 5:  members (3) 
      -- CP-element group 5: 	 branch_block_stmt_21/do_while_stmt_22/condition_done
      -- CP-element group 5: 	 branch_block_stmt_21/do_while_stmt_22/loop_exit/$entry
      -- CP-element group 5: 	 branch_block_stmt_21/do_while_stmt_22/loop_taken/$entry
      -- 
    axi_to_acb_bridge_daemon_CP_0_elements(5) <= axi_to_acb_bridge_daemon_CP_0_elements(10);
    -- CP-element group 6:  branch  place  bypass  pipeline-parent 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	115 
    -- CP-element group 6: successors 
    -- CP-element group 6:  members (1) 
      -- CP-element group 6: 	 branch_block_stmt_21/do_while_stmt_22/loop_body_done
      -- 
    axi_to_acb_bridge_daemon_CP_0_elements(6) <= axi_to_acb_bridge_daemon_CP_0_elements(115);
    -- CP-element group 7:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	4 
    -- CP-element group 7: successors 
    -- CP-element group 7: 	20 
    -- CP-element group 7: 	80 
    -- CP-element group 7: 	39 
    -- CP-element group 7: 	59 
    -- CP-element group 7:  members (1) 
      -- CP-element group 7: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/back_edge_to_loop_body
      -- 
    axi_to_acb_bridge_daemon_CP_0_elements(7) <= axi_to_acb_bridge_daemon_CP_0_elements(4);
    -- CP-element group 8:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	2 
    -- CP-element group 8: successors 
    -- CP-element group 8: 	82 
    -- CP-element group 8: 	22 
    -- CP-element group 8: 	41 
    -- CP-element group 8: 	61 
    -- CP-element group 8:  members (1) 
      -- CP-element group 8: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/first_time_through_loop_body
      -- 
    axi_to_acb_bridge_daemon_CP_0_elements(8) <= axi_to_acb_bridge_daemon_CP_0_elements(2);
    -- CP-element group 9:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	34 
    -- CP-element group 9: 	33 
    -- CP-element group 9: 	15 
    -- CP-element group 9: 	16 
    -- CP-element group 9: 	75 
    -- CP-element group 9: 	74 
    -- CP-element group 9: 	100 
    -- CP-element group 9: 	55 
    -- CP-element group 9: 	114 
    -- CP-element group 9: 	54 
    -- CP-element group 9:  members (2) 
      -- CP-element group 9: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/$entry
      -- CP-element group 9: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/loop_body_start
      -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(9) is bound as output of CP function.
    -- CP-element group 10:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	14 
    -- CP-element group 10: 	114 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	5 
    -- CP-element group 10:  members (1) 
      -- CP-element group 10: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/condition_evaluated
      -- 
    condition_evaluated_24_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " condition_evaluated_24_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_bridge_daemon_CP_0_elements(10), ack => do_while_stmt_22_branch_req_0); -- 
    axi_to_acb_bridge_daemon_cp_element_group_10: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 15);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 44) := "axi_to_acb_bridge_daemon_cp_element_group_10"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= axi_to_acb_bridge_daemon_CP_0_elements(14) & axi_to_acb_bridge_daemon_CP_0_elements(114);
      gj_axi_to_acb_bridge_daemon_cp_element_group_10 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => axi_to_acb_bridge_daemon_CP_0_elements(10), clk => clk, reset => reset); --
    end block;
    -- CP-element group 11:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	33 
    -- CP-element group 11: 	15 
    -- CP-element group 11: 	74 
    -- CP-element group 11: 	54 
    -- CP-element group 11: marked-predecessors 
    -- CP-element group 11: 	14 
    -- CP-element group 11: successors 
    -- CP-element group 11: 	76 
    -- CP-element group 11: 	17 
    -- CP-element group 11: 	35 
    -- CP-element group 11:  members (2) 
      -- CP-element group 11: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/aggregated_phi_sample_req
      -- CP-element group 11: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_35_sample_start__ps
      -- 
    axi_to_acb_bridge_daemon_cp_element_group_11: block -- 
      constant place_capacities: IntegerArray(0 to 4) := (0 => 15,1 => 15,2 => 15,3 => 15,4 => 1);
      constant place_markings: IntegerArray(0 to 4)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 1);
      constant place_delays: IntegerArray(0 to 4) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0);
      constant joinName: string(1 to 44) := "axi_to_acb_bridge_daemon_cp_element_group_11"; 
      signal preds: BooleanArray(1 to 5); -- 
    begin -- 
      preds <= axi_to_acb_bridge_daemon_CP_0_elements(33) & axi_to_acb_bridge_daemon_CP_0_elements(15) & axi_to_acb_bridge_daemon_CP_0_elements(74) & axi_to_acb_bridge_daemon_CP_0_elements(54) & axi_to_acb_bridge_daemon_CP_0_elements(14);
      gj_axi_to_acb_bridge_daemon_cp_element_group_11 : generic_join generic map(name => joinName, number_of_predecessors => 5, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => axi_to_acb_bridge_daemon_CP_0_elements(11), clk => clk, reset => reset); --
    end block;
    -- CP-element group 12:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	77 
    -- CP-element group 12: 	18 
    -- CP-element group 12: 	56 
    -- CP-element group 12: 	36 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	115 
    -- CP-element group 12: marked-successors 
    -- CP-element group 12: 	33 
    -- CP-element group 12: 	15 
    -- CP-element group 12: 	74 
    -- CP-element group 12: 	54 
    -- CP-element group 12:  members (5) 
      -- CP-element group 12: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/aggregated_phi_sample_ack
      -- CP-element group 12: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_24_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_30_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_35_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_40_sample_completed_
      -- 
    axi_to_acb_bridge_daemon_cp_element_group_12: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 15,1 => 15,2 => 15,3 => 15);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 44) := "axi_to_acb_bridge_daemon_cp_element_group_12"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= axi_to_acb_bridge_daemon_CP_0_elements(77) & axi_to_acb_bridge_daemon_CP_0_elements(18) & axi_to_acb_bridge_daemon_CP_0_elements(56) & axi_to_acb_bridge_daemon_CP_0_elements(36);
      gj_axi_to_acb_bridge_daemon_cp_element_group_12 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => axi_to_acb_bridge_daemon_CP_0_elements(12), clk => clk, reset => reset); --
    end block;
    -- CP-element group 13:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: 	34 
    -- CP-element group 13: 	16 
    -- CP-element group 13: 	75 
    -- CP-element group 13: 	55 
    -- CP-element group 13: successors 
    -- CP-element group 13: 	78 
    -- CP-element group 13: 	57 
    -- CP-element group 13: 	37 
    -- CP-element group 13:  members (2) 
      -- CP-element group 13: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/aggregated_phi_update_req
      -- CP-element group 13: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_24_update_start__ps
      -- 
    axi_to_acb_bridge_daemon_cp_element_group_13: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 15,1 => 15,2 => 15,3 => 15);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 44) := "axi_to_acb_bridge_daemon_cp_element_group_13"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= axi_to_acb_bridge_daemon_CP_0_elements(34) & axi_to_acb_bridge_daemon_CP_0_elements(16) & axi_to_acb_bridge_daemon_CP_0_elements(75) & axi_to_acb_bridge_daemon_CP_0_elements(55);
      gj_axi_to_acb_bridge_daemon_cp_element_group_13 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => axi_to_acb_bridge_daemon_CP_0_elements(13), clk => clk, reset => reset); --
    end block;
    -- CP-element group 14:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: 	19 
    -- CP-element group 14: 	79 
    -- CP-element group 14: 	38 
    -- CP-element group 14: 	58 
    -- CP-element group 14: successors 
    -- CP-element group 14: 	10 
    -- CP-element group 14: marked-successors 
    -- CP-element group 14: 	11 
    -- CP-element group 14:  members (1) 
      -- CP-element group 14: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/aggregated_phi_update_ack
      -- 
    axi_to_acb_bridge_daemon_cp_element_group_14: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 15,1 => 15,2 => 15,3 => 15);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 44) := "axi_to_acb_bridge_daemon_cp_element_group_14"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= axi_to_acb_bridge_daemon_CP_0_elements(19) & axi_to_acb_bridge_daemon_CP_0_elements(79) & axi_to_acb_bridge_daemon_CP_0_elements(38) & axi_to_acb_bridge_daemon_CP_0_elements(58);
      gj_axi_to_acb_bridge_daemon_cp_element_group_14 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => axi_to_acb_bridge_daemon_CP_0_elements(14), clk => clk, reset => reset); --
    end block;
    -- CP-element group 15:  join  transition  bypass  pipeline-parent 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: 	9 
    -- CP-element group 15: marked-predecessors 
    -- CP-element group 15: 	12 
    -- CP-element group 15: successors 
    -- CP-element group 15: 	11 
    -- CP-element group 15:  members (1) 
      -- CP-element group 15: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_24_sample_start_
      -- 
    axi_to_acb_bridge_daemon_cp_element_group_15: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 44) := "axi_to_acb_bridge_daemon_cp_element_group_15"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= axi_to_acb_bridge_daemon_CP_0_elements(9) & axi_to_acb_bridge_daemon_CP_0_elements(12);
      gj_axi_to_acb_bridge_daemon_cp_element_group_15 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => axi_to_acb_bridge_daemon_CP_0_elements(15), clk => clk, reset => reset); --
    end block;
    -- CP-element group 16:  join  transition  bypass  pipeline-parent 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: 	9 
    -- CP-element group 16: marked-predecessors 
    -- CP-element group 16: 	19 
    -- CP-element group 16: successors 
    -- CP-element group 16: 	13 
    -- CP-element group 16:  members (1) 
      -- CP-element group 16: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_24_update_start_
      -- 
    axi_to_acb_bridge_daemon_cp_element_group_16: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 44) := "axi_to_acb_bridge_daemon_cp_element_group_16"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= axi_to_acb_bridge_daemon_CP_0_elements(9) & axi_to_acb_bridge_daemon_CP_0_elements(19);
      gj_axi_to_acb_bridge_daemon_cp_element_group_16 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => axi_to_acb_bridge_daemon_CP_0_elements(16), clk => clk, reset => reset); --
    end block;
    -- CP-element group 17:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 17: predecessors 
    -- CP-element group 17: 	11 
    -- CP-element group 17: successors 
    -- CP-element group 17:  members (1) 
      -- CP-element group 17: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_24_sample_start__ps
      -- 
    axi_to_acb_bridge_daemon_CP_0_elements(17) <= axi_to_acb_bridge_daemon_CP_0_elements(11);
    -- CP-element group 18:  join  transition  bypass  pipeline-parent 
    -- CP-element group 18: predecessors 
    -- CP-element group 18: successors 
    -- CP-element group 18: 	12 
    -- CP-element group 18:  members (1) 
      -- CP-element group 18: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_24_sample_completed__ps
      -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(18) is bound as output of CP function.
    -- CP-element group 19:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 19: predecessors 
    -- CP-element group 19: successors 
    -- CP-element group 19: 	14 
    -- CP-element group 19: marked-successors 
    -- CP-element group 19: 	16 
    -- CP-element group 19:  members (2) 
      -- CP-element group 19: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_24_update_completed__ps
      -- CP-element group 19: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_24_update_completed_
      -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(19) is bound as output of CP function.
    -- CP-element group 20:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 20: predecessors 
    -- CP-element group 20: 	7 
    -- CP-element group 20: successors 
    -- CP-element group 20:  members (1) 
      -- CP-element group 20: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_24_loopback_trigger
      -- 
    axi_to_acb_bridge_daemon_CP_0_elements(20) <= axi_to_acb_bridge_daemon_CP_0_elements(7);
    -- CP-element group 21:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 21: predecessors 
    -- CP-element group 21: successors 
    -- CP-element group 21:  members (2) 
      -- CP-element group 21: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_24_loopback_sample_req
      -- CP-element group 21: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_24_loopback_sample_req_ps
      -- 
    phi_stmt_24_loopback_sample_req_39_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_24_loopback_sample_req_39_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_bridge_daemon_CP_0_elements(21), ack => phi_stmt_24_req_1); -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(21) is bound as output of CP function.
    -- CP-element group 22:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 22: predecessors 
    -- CP-element group 22: 	8 
    -- CP-element group 22: successors 
    -- CP-element group 22:  members (1) 
      -- CP-element group 22: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_24_entry_trigger
      -- 
    axi_to_acb_bridge_daemon_CP_0_elements(22) <= axi_to_acb_bridge_daemon_CP_0_elements(8);
    -- CP-element group 23:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 23: predecessors 
    -- CP-element group 23: successors 
    -- CP-element group 23:  members (2) 
      -- CP-element group 23: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_24_entry_sample_req
      -- CP-element group 23: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_24_entry_sample_req_ps
      -- 
    phi_stmt_24_entry_sample_req_42_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_24_entry_sample_req_42_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_bridge_daemon_CP_0_elements(23), ack => phi_stmt_24_req_0); -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(23) is bound as output of CP function.
    -- CP-element group 24:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 24: predecessors 
    -- CP-element group 24: successors 
    -- CP-element group 24:  members (2) 
      -- CP-element group 24: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_24_phi_mux_ack
      -- CP-element group 24: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_24_phi_mux_ack_ps
      -- 
    phi_stmt_24_phi_mux_ack_45_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 24_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_24_ack_0, ack => axi_to_acb_bridge_daemon_CP_0_elements(24)); -- 
    -- CP-element group 25:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 25: predecessors 
    -- CP-element group 25: successors 
    -- CP-element group 25:  members (4) 
      -- CP-element group 25: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/type_cast_28_sample_start__ps
      -- CP-element group 25: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/type_cast_28_sample_completed__ps
      -- CP-element group 25: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/type_cast_28_sample_start_
      -- CP-element group 25: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/type_cast_28_sample_completed_
      -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(25) is bound as output of CP function.
    -- CP-element group 26:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 26: predecessors 
    -- CP-element group 26: successors 
    -- CP-element group 26: 	28 
    -- CP-element group 26:  members (2) 
      -- CP-element group 26: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/type_cast_28_update_start__ps
      -- CP-element group 26: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/type_cast_28_update_start_
      -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(26) is bound as output of CP function.
    -- CP-element group 27:  join  transition  bypass  pipeline-parent 
    -- CP-element group 27: predecessors 
    -- CP-element group 27: 	28 
    -- CP-element group 27: successors 
    -- CP-element group 27:  members (1) 
      -- CP-element group 27: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/type_cast_28_update_completed__ps
      -- 
    axi_to_acb_bridge_daemon_CP_0_elements(27) <= axi_to_acb_bridge_daemon_CP_0_elements(28);
    -- CP-element group 28:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 28: predecessors 
    -- CP-element group 28: 	26 
    -- CP-element group 28: successors 
    -- CP-element group 28: 	27 
    -- CP-element group 28:  members (1) 
      -- CP-element group 28: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/type_cast_28_update_completed_
      -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(28) is a control-delay.
    cp_element_28_delay: control_delay_element  generic map(name => " 28_delay", delay_value => 1)  port map(req => axi_to_acb_bridge_daemon_CP_0_elements(26), ack => axi_to_acb_bridge_daemon_CP_0_elements(28), clk => clk, reset =>reset);
    -- CP-element group 29:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 29: predecessors 
    -- CP-element group 29: successors 
    -- CP-element group 29: 	31 
    -- CP-element group 29:  members (4) 
      -- CP-element group 29: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/R_n_counter_29_sample_start__ps
      -- CP-element group 29: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/R_n_counter_29_sample_start_
      -- CP-element group 29: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/R_n_counter_29_Sample/$entry
      -- CP-element group 29: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/R_n_counter_29_Sample/req
      -- 
    req_66_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_66_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_bridge_daemon_CP_0_elements(29), ack => n_counter_51_29_buf_req_0); -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(29) is bound as output of CP function.
    -- CP-element group 30:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 30: predecessors 
    -- CP-element group 30: successors 
    -- CP-element group 30: 	32 
    -- CP-element group 30:  members (4) 
      -- CP-element group 30: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/R_n_counter_29_update_start__ps
      -- CP-element group 30: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/R_n_counter_29_update_start_
      -- CP-element group 30: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/R_n_counter_29_Update/$entry
      -- CP-element group 30: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/R_n_counter_29_Update/req
      -- 
    req_71_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_71_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_bridge_daemon_CP_0_elements(30), ack => n_counter_51_29_buf_req_1); -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(30) is bound as output of CP function.
    -- CP-element group 31:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 31: predecessors 
    -- CP-element group 31: 	29 
    -- CP-element group 31: successors 
    -- CP-element group 31:  members (4) 
      -- CP-element group 31: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/R_n_counter_29_sample_completed__ps
      -- CP-element group 31: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/R_n_counter_29_sample_completed_
      -- CP-element group 31: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/R_n_counter_29_Sample/$exit
      -- CP-element group 31: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/R_n_counter_29_Sample/ack
      -- 
    ack_67_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 31_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => n_counter_51_29_buf_ack_0, ack => axi_to_acb_bridge_daemon_CP_0_elements(31)); -- 
    -- CP-element group 32:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 32: predecessors 
    -- CP-element group 32: 	30 
    -- CP-element group 32: successors 
    -- CP-element group 32:  members (4) 
      -- CP-element group 32: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/R_n_counter_29_update_completed__ps
      -- CP-element group 32: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/R_n_counter_29_update_completed_
      -- CP-element group 32: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/R_n_counter_29_Update/$exit
      -- CP-element group 32: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/R_n_counter_29_Update/ack
      -- 
    ack_72_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 32_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => n_counter_51_29_buf_ack_1, ack => axi_to_acb_bridge_daemon_CP_0_elements(32)); -- 
    -- CP-element group 33:  join  transition  bypass  pipeline-parent 
    -- CP-element group 33: predecessors 
    -- CP-element group 33: 	9 
    -- CP-element group 33: marked-predecessors 
    -- CP-element group 33: 	12 
    -- CP-element group 33: successors 
    -- CP-element group 33: 	11 
    -- CP-element group 33:  members (1) 
      -- CP-element group 33: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_30_sample_start_
      -- 
    axi_to_acb_bridge_daemon_cp_element_group_33: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 44) := "axi_to_acb_bridge_daemon_cp_element_group_33"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= axi_to_acb_bridge_daemon_CP_0_elements(9) & axi_to_acb_bridge_daemon_CP_0_elements(12);
      gj_axi_to_acb_bridge_daemon_cp_element_group_33 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => axi_to_acb_bridge_daemon_CP_0_elements(33), clk => clk, reset => reset); --
    end block;
    -- CP-element group 34:  join  transition  bypass  pipeline-parent 
    -- CP-element group 34: predecessors 
    -- CP-element group 34: 	9 
    -- CP-element group 34: marked-predecessors 
    -- CP-element group 34: 	98 
    -- CP-element group 34: 	109 
    -- CP-element group 34: 	94 
    -- CP-element group 34: 	105 
    -- CP-element group 34: successors 
    -- CP-element group 34: 	13 
    -- CP-element group 34:  members (1) 
      -- CP-element group 34: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_30_update_start_
      -- 
    axi_to_acb_bridge_daemon_cp_element_group_34: block -- 
      constant place_capacities: IntegerArray(0 to 4) := (0 => 15,1 => 1,2 => 1,3 => 1,4 => 1);
      constant place_markings: IntegerArray(0 to 4)  := (0 => 0,1 => 1,2 => 1,3 => 1,4 => 1);
      constant place_delays: IntegerArray(0 to 4) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0);
      constant joinName: string(1 to 44) := "axi_to_acb_bridge_daemon_cp_element_group_34"; 
      signal preds: BooleanArray(1 to 5); -- 
    begin -- 
      preds <= axi_to_acb_bridge_daemon_CP_0_elements(9) & axi_to_acb_bridge_daemon_CP_0_elements(98) & axi_to_acb_bridge_daemon_CP_0_elements(109) & axi_to_acb_bridge_daemon_CP_0_elements(94) & axi_to_acb_bridge_daemon_CP_0_elements(105);
      gj_axi_to_acb_bridge_daemon_cp_element_group_34 : generic_join generic map(name => joinName, number_of_predecessors => 5, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => axi_to_acb_bridge_daemon_CP_0_elements(34), clk => clk, reset => reset); --
    end block;
    -- CP-element group 35:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 35: predecessors 
    -- CP-element group 35: 	11 
    -- CP-element group 35: successors 
    -- CP-element group 35:  members (1) 
      -- CP-element group 35: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_30_sample_start__ps
      -- 
    axi_to_acb_bridge_daemon_CP_0_elements(35) <= axi_to_acb_bridge_daemon_CP_0_elements(11);
    -- CP-element group 36:  join  transition  bypass  pipeline-parent 
    -- CP-element group 36: predecessors 
    -- CP-element group 36: successors 
    -- CP-element group 36: 	12 
    -- CP-element group 36:  members (1) 
      -- CP-element group 36: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_30_sample_completed__ps
      -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(36) is bound as output of CP function.
    -- CP-element group 37:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 37: predecessors 
    -- CP-element group 37: 	13 
    -- CP-element group 37: successors 
    -- CP-element group 37:  members (1) 
      -- CP-element group 37: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_30_update_start__ps
      -- 
    axi_to_acb_bridge_daemon_CP_0_elements(37) <= axi_to_acb_bridge_daemon_CP_0_elements(13);
    -- CP-element group 38:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 38: predecessors 
    -- CP-element group 38: successors 
    -- CP-element group 38: 	104 
    -- CP-element group 38: 	14 
    -- CP-element group 38: 	93 
    -- CP-element group 38: 	107 
    -- CP-element group 38: 	96 
    -- CP-element group 38:  members (2) 
      -- CP-element group 38: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_30_update_completed_
      -- CP-element group 38: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_30_update_completed__ps
      -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(38) is bound as output of CP function.
    -- CP-element group 39:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 39: predecessors 
    -- CP-element group 39: 	7 
    -- CP-element group 39: successors 
    -- CP-element group 39:  members (1) 
      -- CP-element group 39: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_30_loopback_trigger
      -- 
    axi_to_acb_bridge_daemon_CP_0_elements(39) <= axi_to_acb_bridge_daemon_CP_0_elements(7);
    -- CP-element group 40:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 40: predecessors 
    -- CP-element group 40: successors 
    -- CP-element group 40:  members (2) 
      -- CP-element group 40: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_30_loopback_sample_req
      -- CP-element group 40: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_30_loopback_sample_req_ps
      -- 
    phi_stmt_30_loopback_sample_req_83_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_30_loopback_sample_req_83_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_bridge_daemon_CP_0_elements(40), ack => phi_stmt_30_req_1); -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(40) is bound as output of CP function.
    -- CP-element group 41:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 41: predecessors 
    -- CP-element group 41: 	8 
    -- CP-element group 41: successors 
    -- CP-element group 41:  members (1) 
      -- CP-element group 41: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_30_entry_trigger
      -- 
    axi_to_acb_bridge_daemon_CP_0_elements(41) <= axi_to_acb_bridge_daemon_CP_0_elements(8);
    -- CP-element group 42:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 42: predecessors 
    -- CP-element group 42: successors 
    -- CP-element group 42:  members (2) 
      -- CP-element group 42: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_30_entry_sample_req
      -- CP-element group 42: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_30_entry_sample_req_ps
      -- 
    phi_stmt_30_entry_sample_req_86_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_30_entry_sample_req_86_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_bridge_daemon_CP_0_elements(42), ack => phi_stmt_30_req_0); -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(42) is bound as output of CP function.
    -- CP-element group 43:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 43: predecessors 
    -- CP-element group 43: successors 
    -- CP-element group 43:  members (2) 
      -- CP-element group 43: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_30_phi_mux_ack
      -- CP-element group 43: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_30_phi_mux_ack_ps
      -- 
    phi_stmt_30_phi_mux_ack_89_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 43_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_30_ack_0, ack => axi_to_acb_bridge_daemon_CP_0_elements(43)); -- 
    -- CP-element group 44:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 44: predecessors 
    -- CP-element group 44: successors 
    -- CP-element group 44:  members (4) 
      -- CP-element group 44: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/konst_32_sample_start__ps
      -- CP-element group 44: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/konst_32_sample_completed__ps
      -- CP-element group 44: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/konst_32_sample_start_
      -- CP-element group 44: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/konst_32_sample_completed_
      -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(44) is bound as output of CP function.
    -- CP-element group 45:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 45: predecessors 
    -- CP-element group 45: successors 
    -- CP-element group 45: 	47 
    -- CP-element group 45:  members (2) 
      -- CP-element group 45: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/konst_32_update_start__ps
      -- CP-element group 45: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/konst_32_update_start_
      -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(45) is bound as output of CP function.
    -- CP-element group 46:  join  transition  bypass  pipeline-parent 
    -- CP-element group 46: predecessors 
    -- CP-element group 46: 	47 
    -- CP-element group 46: successors 
    -- CP-element group 46:  members (1) 
      -- CP-element group 46: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/konst_32_update_completed__ps
      -- 
    axi_to_acb_bridge_daemon_CP_0_elements(46) <= axi_to_acb_bridge_daemon_CP_0_elements(47);
    -- CP-element group 47:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 47: predecessors 
    -- CP-element group 47: 	45 
    -- CP-element group 47: successors 
    -- CP-element group 47: 	46 
    -- CP-element group 47:  members (1) 
      -- CP-element group 47: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/konst_32_update_completed_
      -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(47) is a control-delay.
    cp_element_47_delay: control_delay_element  generic map(name => " 47_delay", delay_value => 1)  port map(req => axi_to_acb_bridge_daemon_CP_0_elements(45), ack => axi_to_acb_bridge_daemon_CP_0_elements(47), clk => clk, reset =>reset);
    -- CP-element group 48:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 48: predecessors 
    -- CP-element group 48: successors 
    -- CP-element group 48: 	50 
    -- CP-element group 48:  members (1) 
      -- CP-element group 48: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_noblock_axi_read_command_34_sample_start__ps
      -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(48) is bound as output of CP function.
    -- CP-element group 49:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 49: predecessors 
    -- CP-element group 49: successors 
    -- CP-element group 49: 	51 
    -- CP-element group 49:  members (1) 
      -- CP-element group 49: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_noblock_axi_read_command_34_update_start__ps
      -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(49) is bound as output of CP function.
    -- CP-element group 50:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 50: predecessors 
    -- CP-element group 50: 	48 
    -- CP-element group 50: marked-predecessors 
    -- CP-element group 50: 	53 
    -- CP-element group 50: successors 
    -- CP-element group 50: 	52 
    -- CP-element group 50:  members (3) 
      -- CP-element group 50: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_noblock_axi_read_command_34_sample_start_
      -- CP-element group 50: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_noblock_axi_read_command_34_Sample/$entry
      -- CP-element group 50: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_noblock_axi_read_command_34_Sample/rr
      -- 
    rr_110_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_110_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_bridge_daemon_CP_0_elements(50), ack => RPIPE_noblock_axi_read_command_34_inst_req_0); -- 
    axi_to_acb_bridge_daemon_cp_element_group_50: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 44) := "axi_to_acb_bridge_daemon_cp_element_group_50"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= axi_to_acb_bridge_daemon_CP_0_elements(48) & axi_to_acb_bridge_daemon_CP_0_elements(53);
      gj_axi_to_acb_bridge_daemon_cp_element_group_50 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => axi_to_acb_bridge_daemon_CP_0_elements(50), clk => clk, reset => reset); --
    end block;
    -- CP-element group 51:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 51: predecessors 
    -- CP-element group 51: 	49 
    -- CP-element group 51: 	52 
    -- CP-element group 51: successors 
    -- CP-element group 51: 	53 
    -- CP-element group 51:  members (3) 
      -- CP-element group 51: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_noblock_axi_read_command_34_update_start_
      -- CP-element group 51: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_noblock_axi_read_command_34_Update/$entry
      -- CP-element group 51: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_noblock_axi_read_command_34_Update/cr
      -- 
    cr_115_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_115_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_bridge_daemon_CP_0_elements(51), ack => RPIPE_noblock_axi_read_command_34_inst_req_1); -- 
    axi_to_acb_bridge_daemon_cp_element_group_51: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 44) := "axi_to_acb_bridge_daemon_cp_element_group_51"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= axi_to_acb_bridge_daemon_CP_0_elements(49) & axi_to_acb_bridge_daemon_CP_0_elements(52);
      gj_axi_to_acb_bridge_daemon_cp_element_group_51 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => axi_to_acb_bridge_daemon_CP_0_elements(51), clk => clk, reset => reset); --
    end block;
    -- CP-element group 52:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 52: predecessors 
    -- CP-element group 52: 	50 
    -- CP-element group 52: successors 
    -- CP-element group 52: 	51 
    -- CP-element group 52:  members (4) 
      -- CP-element group 52: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_noblock_axi_read_command_34_sample_completed__ps
      -- CP-element group 52: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_noblock_axi_read_command_34_sample_completed_
      -- CP-element group 52: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_noblock_axi_read_command_34_Sample/$exit
      -- CP-element group 52: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_noblock_axi_read_command_34_Sample/ra
      -- 
    ra_111_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 52_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_axi_read_command_34_inst_ack_0, ack => axi_to_acb_bridge_daemon_CP_0_elements(52)); -- 
    -- CP-element group 53:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 53: predecessors 
    -- CP-element group 53: 	51 
    -- CP-element group 53: successors 
    -- CP-element group 53: marked-successors 
    -- CP-element group 53: 	50 
    -- CP-element group 53:  members (4) 
      -- CP-element group 53: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_noblock_axi_read_command_34_update_completed__ps
      -- CP-element group 53: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_noblock_axi_read_command_34_update_completed_
      -- CP-element group 53: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_noblock_axi_read_command_34_Update/$exit
      -- CP-element group 53: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_noblock_axi_read_command_34_Update/ca
      -- 
    ca_116_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 53_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_axi_read_command_34_inst_ack_1, ack => axi_to_acb_bridge_daemon_CP_0_elements(53)); -- 
    -- CP-element group 54:  join  transition  bypass  pipeline-parent 
    -- CP-element group 54: predecessors 
    -- CP-element group 54: 	9 
    -- CP-element group 54: marked-predecessors 
    -- CP-element group 54: 	12 
    -- CP-element group 54: successors 
    -- CP-element group 54: 	11 
    -- CP-element group 54:  members (1) 
      -- CP-element group 54: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_35_sample_start_
      -- 
    axi_to_acb_bridge_daemon_cp_element_group_54: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 44) := "axi_to_acb_bridge_daemon_cp_element_group_54"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= axi_to_acb_bridge_daemon_CP_0_elements(9) & axi_to_acb_bridge_daemon_CP_0_elements(12);
      gj_axi_to_acb_bridge_daemon_cp_element_group_54 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => axi_to_acb_bridge_daemon_CP_0_elements(54), clk => clk, reset => reset); --
    end block;
    -- CP-element group 55:  join  transition  bypass  pipeline-parent 
    -- CP-element group 55: predecessors 
    -- CP-element group 55: 	9 
    -- CP-element group 55: marked-predecessors 
    -- CP-element group 55: 	98 
    -- CP-element group 55: 	109 
    -- CP-element group 55: 	94 
    -- CP-element group 55: 	105 
    -- CP-element group 55: successors 
    -- CP-element group 55: 	13 
    -- CP-element group 55:  members (1) 
      -- CP-element group 55: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_35_update_start_
      -- 
    axi_to_acb_bridge_daemon_cp_element_group_55: block -- 
      constant place_capacities: IntegerArray(0 to 4) := (0 => 15,1 => 1,2 => 1,3 => 1,4 => 1);
      constant place_markings: IntegerArray(0 to 4)  := (0 => 0,1 => 1,2 => 1,3 => 1,4 => 1);
      constant place_delays: IntegerArray(0 to 4) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0);
      constant joinName: string(1 to 44) := "axi_to_acb_bridge_daemon_cp_element_group_55"; 
      signal preds: BooleanArray(1 to 5); -- 
    begin -- 
      preds <= axi_to_acb_bridge_daemon_CP_0_elements(9) & axi_to_acb_bridge_daemon_CP_0_elements(98) & axi_to_acb_bridge_daemon_CP_0_elements(109) & axi_to_acb_bridge_daemon_CP_0_elements(94) & axi_to_acb_bridge_daemon_CP_0_elements(105);
      gj_axi_to_acb_bridge_daemon_cp_element_group_55 : generic_join generic map(name => joinName, number_of_predecessors => 5, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => axi_to_acb_bridge_daemon_CP_0_elements(55), clk => clk, reset => reset); --
    end block;
    -- CP-element group 56:  join  transition  bypass  pipeline-parent 
    -- CP-element group 56: predecessors 
    -- CP-element group 56: successors 
    -- CP-element group 56: 	12 
    -- CP-element group 56:  members (1) 
      -- CP-element group 56: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_35_sample_completed__ps
      -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(56) is bound as output of CP function.
    -- CP-element group 57:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 57: predecessors 
    -- CP-element group 57: 	13 
    -- CP-element group 57: successors 
    -- CP-element group 57:  members (1) 
      -- CP-element group 57: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_35_update_start__ps
      -- 
    axi_to_acb_bridge_daemon_CP_0_elements(57) <= axi_to_acb_bridge_daemon_CP_0_elements(13);
    -- CP-element group 58:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 58: predecessors 
    -- CP-element group 58: successors 
    -- CP-element group 58: 	104 
    -- CP-element group 58: 	14 
    -- CP-element group 58: 	93 
    -- CP-element group 58: 	107 
    -- CP-element group 58: 	96 
    -- CP-element group 58:  members (2) 
      -- CP-element group 58: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_35_update_completed_
      -- CP-element group 58: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_35_update_completed__ps
      -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(58) is bound as output of CP function.
    -- CP-element group 59:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 59: predecessors 
    -- CP-element group 59: 	7 
    -- CP-element group 59: successors 
    -- CP-element group 59:  members (1) 
      -- CP-element group 59: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_35_loopback_trigger
      -- 
    axi_to_acb_bridge_daemon_CP_0_elements(59) <= axi_to_acb_bridge_daemon_CP_0_elements(7);
    -- CP-element group 60:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 60: predecessors 
    -- CP-element group 60: successors 
    -- CP-element group 60:  members (2) 
      -- CP-element group 60: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_35_loopback_sample_req
      -- CP-element group 60: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_35_loopback_sample_req_ps
      -- 
    phi_stmt_35_loopback_sample_req_127_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_35_loopback_sample_req_127_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_bridge_daemon_CP_0_elements(60), ack => phi_stmt_35_req_0); -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(60) is bound as output of CP function.
    -- CP-element group 61:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 61: predecessors 
    -- CP-element group 61: 	8 
    -- CP-element group 61: successors 
    -- CP-element group 61:  members (1) 
      -- CP-element group 61: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_35_entry_trigger
      -- 
    axi_to_acb_bridge_daemon_CP_0_elements(61) <= axi_to_acb_bridge_daemon_CP_0_elements(8);
    -- CP-element group 62:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 62: predecessors 
    -- CP-element group 62: successors 
    -- CP-element group 62:  members (2) 
      -- CP-element group 62: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_35_entry_sample_req
      -- CP-element group 62: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_35_entry_sample_req_ps
      -- 
    phi_stmt_35_entry_sample_req_130_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_35_entry_sample_req_130_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_bridge_daemon_CP_0_elements(62), ack => phi_stmt_35_req_1); -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(62) is bound as output of CP function.
    -- CP-element group 63:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 63: predecessors 
    -- CP-element group 63: successors 
    -- CP-element group 63:  members (2) 
      -- CP-element group 63: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_35_phi_mux_ack
      -- CP-element group 63: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_35_phi_mux_ack_ps
      -- 
    phi_stmt_35_phi_mux_ack_133_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 63_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_35_ack_0, ack => axi_to_acb_bridge_daemon_CP_0_elements(63)); -- 
    -- CP-element group 64:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 64: predecessors 
    -- CP-element group 64: successors 
    -- CP-element group 64: 	66 
    -- CP-element group 64:  members (1) 
      -- CP-element group 64: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_noblock_axi_write_command_38_sample_start__ps
      -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(64) is bound as output of CP function.
    -- CP-element group 65:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 65: predecessors 
    -- CP-element group 65: successors 
    -- CP-element group 65: 	67 
    -- CP-element group 65:  members (1) 
      -- CP-element group 65: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_noblock_axi_write_command_38_update_start__ps
      -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(65) is bound as output of CP function.
    -- CP-element group 66:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 66: predecessors 
    -- CP-element group 66: 	64 
    -- CP-element group 66: marked-predecessors 
    -- CP-element group 66: 	69 
    -- CP-element group 66: successors 
    -- CP-element group 66: 	68 
    -- CP-element group 66:  members (3) 
      -- CP-element group 66: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_noblock_axi_write_command_38_sample_start_
      -- CP-element group 66: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_noblock_axi_write_command_38_Sample/$entry
      -- CP-element group 66: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_noblock_axi_write_command_38_Sample/rr
      -- 
    rr_146_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_146_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_bridge_daemon_CP_0_elements(66), ack => RPIPE_noblock_axi_write_command_38_inst_req_0); -- 
    axi_to_acb_bridge_daemon_cp_element_group_66: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 44) := "axi_to_acb_bridge_daemon_cp_element_group_66"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= axi_to_acb_bridge_daemon_CP_0_elements(64) & axi_to_acb_bridge_daemon_CP_0_elements(69);
      gj_axi_to_acb_bridge_daemon_cp_element_group_66 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => axi_to_acb_bridge_daemon_CP_0_elements(66), clk => clk, reset => reset); --
    end block;
    -- CP-element group 67:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 67: predecessors 
    -- CP-element group 67: 	68 
    -- CP-element group 67: 	65 
    -- CP-element group 67: successors 
    -- CP-element group 67: 	69 
    -- CP-element group 67:  members (3) 
      -- CP-element group 67: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_noblock_axi_write_command_38_update_start_
      -- CP-element group 67: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_noblock_axi_write_command_38_Update/$entry
      -- CP-element group 67: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_noblock_axi_write_command_38_Update/cr
      -- 
    cr_151_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_151_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_bridge_daemon_CP_0_elements(67), ack => RPIPE_noblock_axi_write_command_38_inst_req_1); -- 
    axi_to_acb_bridge_daemon_cp_element_group_67: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 15);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 44) := "axi_to_acb_bridge_daemon_cp_element_group_67"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= axi_to_acb_bridge_daemon_CP_0_elements(68) & axi_to_acb_bridge_daemon_CP_0_elements(65);
      gj_axi_to_acb_bridge_daemon_cp_element_group_67 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => axi_to_acb_bridge_daemon_CP_0_elements(67), clk => clk, reset => reset); --
    end block;
    -- CP-element group 68:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 68: predecessors 
    -- CP-element group 68: 	66 
    -- CP-element group 68: successors 
    -- CP-element group 68: 	67 
    -- CP-element group 68:  members (4) 
      -- CP-element group 68: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_noblock_axi_write_command_38_sample_completed__ps
      -- CP-element group 68: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_noblock_axi_write_command_38_sample_completed_
      -- CP-element group 68: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_noblock_axi_write_command_38_Sample/$exit
      -- CP-element group 68: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_noblock_axi_write_command_38_Sample/ra
      -- 
    ra_147_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 68_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_axi_write_command_38_inst_ack_0, ack => axi_to_acb_bridge_daemon_CP_0_elements(68)); -- 
    -- CP-element group 69:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 69: predecessors 
    -- CP-element group 69: 	67 
    -- CP-element group 69: successors 
    -- CP-element group 69: marked-successors 
    -- CP-element group 69: 	66 
    -- CP-element group 69:  members (4) 
      -- CP-element group 69: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_noblock_axi_write_command_38_update_completed__ps
      -- CP-element group 69: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_noblock_axi_write_command_38_update_completed_
      -- CP-element group 69: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_noblock_axi_write_command_38_Update/$exit
      -- CP-element group 69: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_noblock_axi_write_command_38_Update/ca
      -- 
    ca_152_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 69_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_axi_write_command_38_inst_ack_1, ack => axi_to_acb_bridge_daemon_CP_0_elements(69)); -- 
    -- CP-element group 70:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 70: predecessors 
    -- CP-element group 70: successors 
    -- CP-element group 70:  members (4) 
      -- CP-element group 70: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/konst_39_sample_start__ps
      -- CP-element group 70: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/konst_39_sample_completed__ps
      -- CP-element group 70: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/konst_39_sample_start_
      -- CP-element group 70: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/konst_39_sample_completed_
      -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(70) is bound as output of CP function.
    -- CP-element group 71:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 71: predecessors 
    -- CP-element group 71: successors 
    -- CP-element group 71: 	73 
    -- CP-element group 71:  members (2) 
      -- CP-element group 71: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/konst_39_update_start__ps
      -- CP-element group 71: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/konst_39_update_start_
      -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(71) is bound as output of CP function.
    -- CP-element group 72:  join  transition  bypass  pipeline-parent 
    -- CP-element group 72: predecessors 
    -- CP-element group 72: 	73 
    -- CP-element group 72: successors 
    -- CP-element group 72:  members (1) 
      -- CP-element group 72: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/konst_39_update_completed__ps
      -- 
    axi_to_acb_bridge_daemon_CP_0_elements(72) <= axi_to_acb_bridge_daemon_CP_0_elements(73);
    -- CP-element group 73:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 73: predecessors 
    -- CP-element group 73: 	71 
    -- CP-element group 73: successors 
    -- CP-element group 73: 	72 
    -- CP-element group 73:  members (1) 
      -- CP-element group 73: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/konst_39_update_completed_
      -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(73) is a control-delay.
    cp_element_73_delay: control_delay_element  generic map(name => " 73_delay", delay_value => 1)  port map(req => axi_to_acb_bridge_daemon_CP_0_elements(71), ack => axi_to_acb_bridge_daemon_CP_0_elements(73), clk => clk, reset =>reset);
    -- CP-element group 74:  join  transition  bypass  pipeline-parent 
    -- CP-element group 74: predecessors 
    -- CP-element group 74: 	9 
    -- CP-element group 74: marked-predecessors 
    -- CP-element group 74: 	12 
    -- CP-element group 74: successors 
    -- CP-element group 74: 	11 
    -- CP-element group 74:  members (1) 
      -- CP-element group 74: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_40_sample_start_
      -- 
    axi_to_acb_bridge_daemon_cp_element_group_74: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 44) := "axi_to_acb_bridge_daemon_cp_element_group_74"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= axi_to_acb_bridge_daemon_CP_0_elements(9) & axi_to_acb_bridge_daemon_CP_0_elements(12);
      gj_axi_to_acb_bridge_daemon_cp_element_group_74 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => axi_to_acb_bridge_daemon_CP_0_elements(74), clk => clk, reset => reset); --
    end block;
    -- CP-element group 75:  join  transition  bypass  pipeline-parent 
    -- CP-element group 75: predecessors 
    -- CP-element group 75: 	9 
    -- CP-element group 75: marked-predecessors 
    -- CP-element group 75: 	98 
    -- CP-element group 75: 	109 
    -- CP-element group 75: 	94 
    -- CP-element group 75: 	105 
    -- CP-element group 75: successors 
    -- CP-element group 75: 	13 
    -- CP-element group 75:  members (1) 
      -- CP-element group 75: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_40_update_start_
      -- 
    axi_to_acb_bridge_daemon_cp_element_group_75: block -- 
      constant place_capacities: IntegerArray(0 to 4) := (0 => 15,1 => 1,2 => 1,3 => 1,4 => 1);
      constant place_markings: IntegerArray(0 to 4)  := (0 => 0,1 => 1,2 => 1,3 => 1,4 => 1);
      constant place_delays: IntegerArray(0 to 4) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0);
      constant joinName: string(1 to 44) := "axi_to_acb_bridge_daemon_cp_element_group_75"; 
      signal preds: BooleanArray(1 to 5); -- 
    begin -- 
      preds <= axi_to_acb_bridge_daemon_CP_0_elements(9) & axi_to_acb_bridge_daemon_CP_0_elements(98) & axi_to_acb_bridge_daemon_CP_0_elements(109) & axi_to_acb_bridge_daemon_CP_0_elements(94) & axi_to_acb_bridge_daemon_CP_0_elements(105);
      gj_axi_to_acb_bridge_daemon_cp_element_group_75 : generic_join generic map(name => joinName, number_of_predecessors => 5, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => axi_to_acb_bridge_daemon_CP_0_elements(75), clk => clk, reset => reset); --
    end block;
    -- CP-element group 76:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 76: predecessors 
    -- CP-element group 76: 	11 
    -- CP-element group 76: successors 
    -- CP-element group 76:  members (1) 
      -- CP-element group 76: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_40_sample_start__ps
      -- 
    axi_to_acb_bridge_daemon_CP_0_elements(76) <= axi_to_acb_bridge_daemon_CP_0_elements(11);
    -- CP-element group 77:  join  transition  bypass  pipeline-parent 
    -- CP-element group 77: predecessors 
    -- CP-element group 77: successors 
    -- CP-element group 77: 	12 
    -- CP-element group 77:  members (1) 
      -- CP-element group 77: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_40_sample_completed__ps
      -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(77) is bound as output of CP function.
    -- CP-element group 78:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 78: predecessors 
    -- CP-element group 78: 	13 
    -- CP-element group 78: successors 
    -- CP-element group 78:  members (1) 
      -- CP-element group 78: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_40_update_start__ps
      -- 
    axi_to_acb_bridge_daemon_CP_0_elements(78) <= axi_to_acb_bridge_daemon_CP_0_elements(13);
    -- CP-element group 79:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 79: predecessors 
    -- CP-element group 79: successors 
    -- CP-element group 79: 	104 
    -- CP-element group 79: 	14 
    -- CP-element group 79: 	93 
    -- CP-element group 79: 	107 
    -- CP-element group 79: 	96 
    -- CP-element group 79:  members (2) 
      -- CP-element group 79: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_40_update_completed_
      -- CP-element group 79: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_40_update_completed__ps
      -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(79) is bound as output of CP function.
    -- CP-element group 80:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 80: predecessors 
    -- CP-element group 80: 	7 
    -- CP-element group 80: successors 
    -- CP-element group 80:  members (1) 
      -- CP-element group 80: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_40_loopback_trigger
      -- 
    axi_to_acb_bridge_daemon_CP_0_elements(80) <= axi_to_acb_bridge_daemon_CP_0_elements(7);
    -- CP-element group 81:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 81: predecessors 
    -- CP-element group 81: successors 
    -- CP-element group 81:  members (2) 
      -- CP-element group 81: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_40_loopback_sample_req
      -- CP-element group 81: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_40_loopback_sample_req_ps
      -- 
    phi_stmt_40_loopback_sample_req_171_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_40_loopback_sample_req_171_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_bridge_daemon_CP_0_elements(81), ack => phi_stmt_40_req_1); -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(81) is bound as output of CP function.
    -- CP-element group 82:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 82: predecessors 
    -- CP-element group 82: 	8 
    -- CP-element group 82: successors 
    -- CP-element group 82:  members (1) 
      -- CP-element group 82: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_40_entry_trigger
      -- 
    axi_to_acb_bridge_daemon_CP_0_elements(82) <= axi_to_acb_bridge_daemon_CP_0_elements(8);
    -- CP-element group 83:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 83: predecessors 
    -- CP-element group 83: successors 
    -- CP-element group 83:  members (2) 
      -- CP-element group 83: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_40_entry_sample_req
      -- CP-element group 83: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_40_entry_sample_req_ps
      -- 
    phi_stmt_40_entry_sample_req_174_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_40_entry_sample_req_174_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_bridge_daemon_CP_0_elements(83), ack => phi_stmt_40_req_0); -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(83) is bound as output of CP function.
    -- CP-element group 84:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 84: predecessors 
    -- CP-element group 84: successors 
    -- CP-element group 84:  members (2) 
      -- CP-element group 84: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_40_phi_mux_ack_ps
      -- CP-element group 84: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/phi_stmt_40_phi_mux_ack
      -- 
    phi_stmt_40_phi_mux_ack_177_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 84_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_40_ack_0, ack => axi_to_acb_bridge_daemon_CP_0_elements(84)); -- 
    -- CP-element group 85:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 85: predecessors 
    -- CP-element group 85: successors 
    -- CP-element group 85:  members (4) 
      -- CP-element group 85: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/type_cast_44_sample_start__ps
      -- CP-element group 85: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/type_cast_44_sample_completed__ps
      -- CP-element group 85: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/type_cast_44_sample_start_
      -- CP-element group 85: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/type_cast_44_sample_completed_
      -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(85) is bound as output of CP function.
    -- CP-element group 86:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 86: predecessors 
    -- CP-element group 86: successors 
    -- CP-element group 86: 	88 
    -- CP-element group 86:  members (2) 
      -- CP-element group 86: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/type_cast_44_update_start__ps
      -- CP-element group 86: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/type_cast_44_update_start_
      -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(86) is bound as output of CP function.
    -- CP-element group 87:  join  transition  bypass  pipeline-parent 
    -- CP-element group 87: predecessors 
    -- CP-element group 87: 	88 
    -- CP-element group 87: successors 
    -- CP-element group 87:  members (1) 
      -- CP-element group 87: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/type_cast_44_update_completed__ps
      -- 
    axi_to_acb_bridge_daemon_CP_0_elements(87) <= axi_to_acb_bridge_daemon_CP_0_elements(88);
    -- CP-element group 88:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 88: predecessors 
    -- CP-element group 88: 	86 
    -- CP-element group 88: successors 
    -- CP-element group 88: 	87 
    -- CP-element group 88:  members (1) 
      -- CP-element group 88: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/type_cast_44_update_completed_
      -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(88) is a control-delay.
    cp_element_88_delay: control_delay_element  generic map(name => " 88_delay", delay_value => 1)  port map(req => axi_to_acb_bridge_daemon_CP_0_elements(86), ack => axi_to_acb_bridge_daemon_CP_0_elements(88), clk => clk, reset =>reset);
    -- CP-element group 89:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 89: predecessors 
    -- CP-element group 89: successors 
    -- CP-element group 89: 	91 
    -- CP-element group 89:  members (4) 
      -- CP-element group 89: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/R_n_read_has_priority_45_sample_start__ps
      -- CP-element group 89: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/R_n_read_has_priority_45_sample_start_
      -- CP-element group 89: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/R_n_read_has_priority_45_Sample/$entry
      -- CP-element group 89: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/R_n_read_has_priority_45_Sample/req
      -- 
    req_198_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_198_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_bridge_daemon_CP_0_elements(89), ack => n_read_has_priority_108_45_buf_req_0); -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(89) is bound as output of CP function.
    -- CP-element group 90:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 90: predecessors 
    -- CP-element group 90: successors 
    -- CP-element group 90: 	92 
    -- CP-element group 90:  members (4) 
      -- CP-element group 90: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/R_n_read_has_priority_45_update_start__ps
      -- CP-element group 90: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/R_n_read_has_priority_45_update_start_
      -- CP-element group 90: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/R_n_read_has_priority_45_Update/$entry
      -- CP-element group 90: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/R_n_read_has_priority_45_Update/req
      -- 
    req_203_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_203_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_bridge_daemon_CP_0_elements(90), ack => n_read_has_priority_108_45_buf_req_1); -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(90) is bound as output of CP function.
    -- CP-element group 91:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 91: predecessors 
    -- CP-element group 91: 	89 
    -- CP-element group 91: successors 
    -- CP-element group 91:  members (4) 
      -- CP-element group 91: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/R_n_read_has_priority_45_sample_completed__ps
      -- CP-element group 91: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/R_n_read_has_priority_45_sample_completed_
      -- CP-element group 91: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/R_n_read_has_priority_45_Sample/$exit
      -- CP-element group 91: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/R_n_read_has_priority_45_Sample/ack
      -- 
    ack_199_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 91_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => n_read_has_priority_108_45_buf_ack_0, ack => axi_to_acb_bridge_daemon_CP_0_elements(91)); -- 
    -- CP-element group 92:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 92: predecessors 
    -- CP-element group 92: 	90 
    -- CP-element group 92: successors 
    -- CP-element group 92:  members (4) 
      -- CP-element group 92: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/R_n_read_has_priority_45_update_completed__ps
      -- CP-element group 92: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/R_n_read_has_priority_45_update_completed_
      -- CP-element group 92: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/R_n_read_has_priority_45_Update/$exit
      -- CP-element group 92: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/R_n_read_has_priority_45_Update/ack
      -- 
    ack_204_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 92_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => n_read_has_priority_108_45_buf_ack_1, ack => axi_to_acb_bridge_daemon_CP_0_elements(92)); -- 
    -- CP-element group 93:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 93: predecessors 
    -- CP-element group 93: 	79 
    -- CP-element group 93: 	38 
    -- CP-element group 93: 	58 
    -- CP-element group 93: marked-predecessors 
    -- CP-element group 93: 	95 
    -- CP-element group 93: successors 
    -- CP-element group 93: 	94 
    -- CP-element group 93:  members (3) 
      -- CP-element group 93: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/WPIPE_ACB_BUS_REQUEST_149_sample_start_
      -- CP-element group 93: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/WPIPE_ACB_BUS_REQUEST_149_Sample/$entry
      -- CP-element group 93: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/WPIPE_ACB_BUS_REQUEST_149_Sample/req
      -- 
    req_213_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_213_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_bridge_daemon_CP_0_elements(93), ack => WPIPE_ACB_BUS_REQUEST_149_inst_req_0); -- 
    axi_to_acb_bridge_daemon_cp_element_group_93: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 15,1 => 15,2 => 15,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 0,2 => 0,3 => 1);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 44) := "axi_to_acb_bridge_daemon_cp_element_group_93"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= axi_to_acb_bridge_daemon_CP_0_elements(79) & axi_to_acb_bridge_daemon_CP_0_elements(38) & axi_to_acb_bridge_daemon_CP_0_elements(58) & axi_to_acb_bridge_daemon_CP_0_elements(95);
      gj_axi_to_acb_bridge_daemon_cp_element_group_93 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => axi_to_acb_bridge_daemon_CP_0_elements(93), clk => clk, reset => reset); --
    end block;
    -- CP-element group 94:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 94: predecessors 
    -- CP-element group 94: 	93 
    -- CP-element group 94: successors 
    -- CP-element group 94: 	95 
    -- CP-element group 94: marked-successors 
    -- CP-element group 94: 	34 
    -- CP-element group 94: 	75 
    -- CP-element group 94: 	55 
    -- CP-element group 94:  members (6) 
      -- CP-element group 94: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/WPIPE_ACB_BUS_REQUEST_149_sample_completed_
      -- CP-element group 94: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/WPIPE_ACB_BUS_REQUEST_149_update_start_
      -- CP-element group 94: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/WPIPE_ACB_BUS_REQUEST_149_Sample/$exit
      -- CP-element group 94: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/WPIPE_ACB_BUS_REQUEST_149_Sample/ack
      -- CP-element group 94: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/WPIPE_ACB_BUS_REQUEST_149_Update/$entry
      -- CP-element group 94: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/WPIPE_ACB_BUS_REQUEST_149_Update/req
      -- 
    ack_214_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 94_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_ACB_BUS_REQUEST_149_inst_ack_0, ack => axi_to_acb_bridge_daemon_CP_0_elements(94)); -- 
    req_218_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_218_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_bridge_daemon_CP_0_elements(94), ack => WPIPE_ACB_BUS_REQUEST_149_inst_req_1); -- 
    -- CP-element group 95:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 95: predecessors 
    -- CP-element group 95: 	94 
    -- CP-element group 95: successors 
    -- CP-element group 95: 	115 
    -- CP-element group 95: marked-successors 
    -- CP-element group 95: 	93 
    -- CP-element group 95:  members (3) 
      -- CP-element group 95: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/WPIPE_ACB_BUS_REQUEST_149_update_completed_
      -- CP-element group 95: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/WPIPE_ACB_BUS_REQUEST_149_Update/$exit
      -- CP-element group 95: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/WPIPE_ACB_BUS_REQUEST_149_Update/ack
      -- 
    ack_219_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 95_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_ACB_BUS_REQUEST_149_inst_ack_1, ack => axi_to_acb_bridge_daemon_CP_0_elements(95)); -- 
    -- CP-element group 96:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 96: predecessors 
    -- CP-element group 96: 	79 
    -- CP-element group 96: 	38 
    -- CP-element group 96: 	58 
    -- CP-element group 96: marked-predecessors 
    -- CP-element group 96: 	98 
    -- CP-element group 96: successors 
    -- CP-element group 96: 	98 
    -- CP-element group 96:  members (3) 
      -- CP-element group 96: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/assign_stmt_154_sample_start_
      -- CP-element group 96: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/assign_stmt_154_Sample/$entry
      -- CP-element group 96: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/assign_stmt_154_Sample/req
      -- 
    req_227_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_227_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_bridge_daemon_CP_0_elements(96), ack => W_send_acb_command_152_delayed_8_0_152_inst_req_0); -- 
    axi_to_acb_bridge_daemon_cp_element_group_96: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 15,1 => 15,2 => 15,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 0,2 => 0,3 => 1);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 1);
      constant joinName: string(1 to 44) := "axi_to_acb_bridge_daemon_cp_element_group_96"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= axi_to_acb_bridge_daemon_CP_0_elements(79) & axi_to_acb_bridge_daemon_CP_0_elements(38) & axi_to_acb_bridge_daemon_CP_0_elements(58) & axi_to_acb_bridge_daemon_CP_0_elements(98);
      gj_axi_to_acb_bridge_daemon_cp_element_group_96 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => axi_to_acb_bridge_daemon_CP_0_elements(96), clk => clk, reset => reset); --
    end block;
    -- CP-element group 97:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 97: predecessors 
    -- CP-element group 97: marked-predecessors 
    -- CP-element group 97: 	101 
    -- CP-element group 97: successors 
    -- CP-element group 97: 	99 
    -- CP-element group 97:  members (3) 
      -- CP-element group 97: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/assign_stmt_154_update_start_
      -- CP-element group 97: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/assign_stmt_154_Update/$entry
      -- CP-element group 97: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/assign_stmt_154_Update/req
      -- 
    req_232_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_232_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_bridge_daemon_CP_0_elements(97), ack => W_send_acb_command_152_delayed_8_0_152_inst_req_1); -- 
    axi_to_acb_bridge_daemon_cp_element_group_97: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 44) := "axi_to_acb_bridge_daemon_cp_element_group_97"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= axi_to_acb_bridge_daemon_CP_0_elements(101);
      gj_axi_to_acb_bridge_daemon_cp_element_group_97 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => axi_to_acb_bridge_daemon_CP_0_elements(97), clk => clk, reset => reset); --
    end block;
    -- CP-element group 98:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 98: predecessors 
    -- CP-element group 98: 	96 
    -- CP-element group 98: successors 
    -- CP-element group 98: marked-successors 
    -- CP-element group 98: 	34 
    -- CP-element group 98: 	75 
    -- CP-element group 98: 	96 
    -- CP-element group 98: 	55 
    -- CP-element group 98:  members (3) 
      -- CP-element group 98: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/assign_stmt_154_sample_completed_
      -- CP-element group 98: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/assign_stmt_154_Sample/$exit
      -- CP-element group 98: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/assign_stmt_154_Sample/ack
      -- 
    ack_228_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 98_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_send_acb_command_152_delayed_8_0_152_inst_ack_0, ack => axi_to_acb_bridge_daemon_CP_0_elements(98)); -- 
    -- CP-element group 99:  transition  input  bypass  pipeline-parent 
    -- CP-element group 99: predecessors 
    -- CP-element group 99: 	97 
    -- CP-element group 99: successors 
    -- CP-element group 99: 	101 
    -- CP-element group 99:  members (3) 
      -- CP-element group 99: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/assign_stmt_154_update_completed_
      -- CP-element group 99: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/assign_stmt_154_Update/$exit
      -- CP-element group 99: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/assign_stmt_154_Update/ack
      -- 
    ack_233_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 99_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_send_acb_command_152_delayed_8_0_152_inst_ack_1, ack => axi_to_acb_bridge_daemon_CP_0_elements(99)); -- 
    -- CP-element group 100:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 100: predecessors 
    -- CP-element group 100: 	9 
    -- CP-element group 100: marked-predecessors 
    -- CP-element group 100: 	103 
    -- CP-element group 100: successors 
    -- CP-element group 100: 	102 
    -- CP-element group 100:  members (3) 
      -- CP-element group 100: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_ACB_BUS_RESPONSE_157_sample_start_
      -- CP-element group 100: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_ACB_BUS_RESPONSE_157_Sample/$entry
      -- CP-element group 100: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_ACB_BUS_RESPONSE_157_Sample/rr
      -- 
    rr_241_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_241_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_bridge_daemon_CP_0_elements(100), ack => RPIPE_ACB_BUS_RESPONSE_157_inst_req_0); -- 
    axi_to_acb_bridge_daemon_cp_element_group_100: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 45) := "axi_to_acb_bridge_daemon_cp_element_group_100"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= axi_to_acb_bridge_daemon_CP_0_elements(9) & axi_to_acb_bridge_daemon_CP_0_elements(103);
      gj_axi_to_acb_bridge_daemon_cp_element_group_100 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => axi_to_acb_bridge_daemon_CP_0_elements(100), clk => clk, reset => reset); --
    end block;
    -- CP-element group 101:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 101: predecessors 
    -- CP-element group 101: 	102 
    -- CP-element group 101: 	99 
    -- CP-element group 101: marked-predecessors 
    -- CP-element group 101: 	112 
    -- CP-element group 101: successors 
    -- CP-element group 101: 	103 
    -- CP-element group 101: marked-successors 
    -- CP-element group 101: 	97 
    -- CP-element group 101:  members (3) 
      -- CP-element group 101: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_ACB_BUS_RESPONSE_157_update_start_
      -- CP-element group 101: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_ACB_BUS_RESPONSE_157_Update/$entry
      -- CP-element group 101: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_ACB_BUS_RESPONSE_157_Update/cr
      -- 
    cr_246_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_246_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_bridge_daemon_CP_0_elements(101), ack => RPIPE_ACB_BUS_RESPONSE_157_inst_req_1); -- 
    axi_to_acb_bridge_daemon_cp_element_group_101: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 45) := "axi_to_acb_bridge_daemon_cp_element_group_101"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= axi_to_acb_bridge_daemon_CP_0_elements(102) & axi_to_acb_bridge_daemon_CP_0_elements(99) & axi_to_acb_bridge_daemon_CP_0_elements(112);
      gj_axi_to_acb_bridge_daemon_cp_element_group_101 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => axi_to_acb_bridge_daemon_CP_0_elements(101), clk => clk, reset => reset); --
    end block;
    -- CP-element group 102:  transition  input  bypass  pipeline-parent 
    -- CP-element group 102: predecessors 
    -- CP-element group 102: 	100 
    -- CP-element group 102: successors 
    -- CP-element group 102: 	101 
    -- CP-element group 102:  members (3) 
      -- CP-element group 102: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_ACB_BUS_RESPONSE_157_sample_completed_
      -- CP-element group 102: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_ACB_BUS_RESPONSE_157_Sample/$exit
      -- CP-element group 102: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_ACB_BUS_RESPONSE_157_Sample/ra
      -- 
    ra_242_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 102_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ACB_BUS_RESPONSE_157_inst_ack_0, ack => axi_to_acb_bridge_daemon_CP_0_elements(102)); -- 
    -- CP-element group 103:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 103: predecessors 
    -- CP-element group 103: 	101 
    -- CP-element group 103: successors 
    -- CP-element group 103: 	111 
    -- CP-element group 103: marked-successors 
    -- CP-element group 103: 	100 
    -- CP-element group 103:  members (3) 
      -- CP-element group 103: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_ACB_BUS_RESPONSE_157_update_completed_
      -- CP-element group 103: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_ACB_BUS_RESPONSE_157_Update/$exit
      -- CP-element group 103: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/RPIPE_ACB_BUS_RESPONSE_157_Update/ca
      -- 
    ca_247_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 103_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ACB_BUS_RESPONSE_157_inst_ack_1, ack => axi_to_acb_bridge_daemon_CP_0_elements(103)); -- 
    -- CP-element group 104:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 104: predecessors 
    -- CP-element group 104: 	79 
    -- CP-element group 104: 	38 
    -- CP-element group 104: 	58 
    -- CP-element group 104: marked-predecessors 
    -- CP-element group 104: 	106 
    -- CP-element group 104: successors 
    -- CP-element group 104: 	105 
    -- CP-element group 104:  members (3) 
      -- CP-element group 104: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/WPIPE_axi_write_status_164_sample_start_
      -- CP-element group 104: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/WPIPE_axi_write_status_164_Sample/$entry
      -- CP-element group 104: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/WPIPE_axi_write_status_164_Sample/req
      -- 
    req_255_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_255_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_bridge_daemon_CP_0_elements(104), ack => WPIPE_axi_write_status_164_inst_req_0); -- 
    axi_to_acb_bridge_daemon_cp_element_group_104: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 15,1 => 15,2 => 15,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 0,2 => 0,3 => 1);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 45) := "axi_to_acb_bridge_daemon_cp_element_group_104"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= axi_to_acb_bridge_daemon_CP_0_elements(79) & axi_to_acb_bridge_daemon_CP_0_elements(38) & axi_to_acb_bridge_daemon_CP_0_elements(58) & axi_to_acb_bridge_daemon_CP_0_elements(106);
      gj_axi_to_acb_bridge_daemon_cp_element_group_104 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => axi_to_acb_bridge_daemon_CP_0_elements(104), clk => clk, reset => reset); --
    end block;
    -- CP-element group 105:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 105: predecessors 
    -- CP-element group 105: 	104 
    -- CP-element group 105: successors 
    -- CP-element group 105: 	106 
    -- CP-element group 105: marked-successors 
    -- CP-element group 105: 	34 
    -- CP-element group 105: 	75 
    -- CP-element group 105: 	55 
    -- CP-element group 105:  members (6) 
      -- CP-element group 105: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/WPIPE_axi_write_status_164_sample_completed_
      -- CP-element group 105: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/WPIPE_axi_write_status_164_update_start_
      -- CP-element group 105: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/WPIPE_axi_write_status_164_Sample/$exit
      -- CP-element group 105: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/WPIPE_axi_write_status_164_Sample/ack
      -- CP-element group 105: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/WPIPE_axi_write_status_164_Update/$entry
      -- CP-element group 105: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/WPIPE_axi_write_status_164_Update/req
      -- 
    ack_256_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 105_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_axi_write_status_164_inst_ack_0, ack => axi_to_acb_bridge_daemon_CP_0_elements(105)); -- 
    req_260_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_260_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_bridge_daemon_CP_0_elements(105), ack => WPIPE_axi_write_status_164_inst_req_1); -- 
    -- CP-element group 106:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 106: predecessors 
    -- CP-element group 106: 	105 
    -- CP-element group 106: successors 
    -- CP-element group 106: 	115 
    -- CP-element group 106: marked-successors 
    -- CP-element group 106: 	104 
    -- CP-element group 106:  members (3) 
      -- CP-element group 106: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/WPIPE_axi_write_status_164_update_completed_
      -- CP-element group 106: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/WPIPE_axi_write_status_164_Update/$exit
      -- CP-element group 106: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/WPIPE_axi_write_status_164_Update/ack
      -- 
    ack_261_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 106_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_axi_write_status_164_inst_ack_1, ack => axi_to_acb_bridge_daemon_CP_0_elements(106)); -- 
    -- CP-element group 107:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 107: predecessors 
    -- CP-element group 107: 	79 
    -- CP-element group 107: 	38 
    -- CP-element group 107: 	58 
    -- CP-element group 107: marked-predecessors 
    -- CP-element group 107: 	109 
    -- CP-element group 107: successors 
    -- CP-element group 107: 	109 
    -- CP-element group 107:  members (3) 
      -- CP-element group 107: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/assign_stmt_169_sample_start_
      -- CP-element group 107: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/assign_stmt_169_Sample/$entry
      -- CP-element group 107: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/assign_stmt_169_Sample/req
      -- 
    req_269_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_269_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_bridge_daemon_CP_0_elements(107), ack => W_select_read_168_delayed_9_0_167_inst_req_0); -- 
    axi_to_acb_bridge_daemon_cp_element_group_107: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 15,1 => 15,2 => 15,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 0,2 => 0,3 => 1);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 1);
      constant joinName: string(1 to 45) := "axi_to_acb_bridge_daemon_cp_element_group_107"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= axi_to_acb_bridge_daemon_CP_0_elements(79) & axi_to_acb_bridge_daemon_CP_0_elements(38) & axi_to_acb_bridge_daemon_CP_0_elements(58) & axi_to_acb_bridge_daemon_CP_0_elements(109);
      gj_axi_to_acb_bridge_daemon_cp_element_group_107 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => axi_to_acb_bridge_daemon_CP_0_elements(107), clk => clk, reset => reset); --
    end block;
    -- CP-element group 108:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 108: predecessors 
    -- CP-element group 108: marked-predecessors 
    -- CP-element group 108: 	112 
    -- CP-element group 108: successors 
    -- CP-element group 108: 	110 
    -- CP-element group 108:  members (3) 
      -- CP-element group 108: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/assign_stmt_169_update_start_
      -- CP-element group 108: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/assign_stmt_169_Update/$entry
      -- CP-element group 108: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/assign_stmt_169_Update/req
      -- 
    req_274_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_274_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_bridge_daemon_CP_0_elements(108), ack => W_select_read_168_delayed_9_0_167_inst_req_1); -- 
    axi_to_acb_bridge_daemon_cp_element_group_108: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 45) := "axi_to_acb_bridge_daemon_cp_element_group_108"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= axi_to_acb_bridge_daemon_CP_0_elements(112);
      gj_axi_to_acb_bridge_daemon_cp_element_group_108 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => axi_to_acb_bridge_daemon_CP_0_elements(108), clk => clk, reset => reset); --
    end block;
    -- CP-element group 109:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 109: predecessors 
    -- CP-element group 109: 	107 
    -- CP-element group 109: successors 
    -- CP-element group 109: marked-successors 
    -- CP-element group 109: 	34 
    -- CP-element group 109: 	75 
    -- CP-element group 109: 	107 
    -- CP-element group 109: 	55 
    -- CP-element group 109:  members (3) 
      -- CP-element group 109: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/assign_stmt_169_sample_completed_
      -- CP-element group 109: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/assign_stmt_169_Sample/$exit
      -- CP-element group 109: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/assign_stmt_169_Sample/ack
      -- 
    ack_270_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 109_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_select_read_168_delayed_9_0_167_inst_ack_0, ack => axi_to_acb_bridge_daemon_CP_0_elements(109)); -- 
    -- CP-element group 110:  transition  input  bypass  pipeline-parent 
    -- CP-element group 110: predecessors 
    -- CP-element group 110: 	108 
    -- CP-element group 110: successors 
    -- CP-element group 110: 	111 
    -- CP-element group 110:  members (3) 
      -- CP-element group 110: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/assign_stmt_169_update_completed_
      -- CP-element group 110: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/assign_stmt_169_Update/$exit
      -- CP-element group 110: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/assign_stmt_169_Update/ack
      -- 
    ack_275_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 110_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_select_read_168_delayed_9_0_167_inst_ack_1, ack => axi_to_acb_bridge_daemon_CP_0_elements(110)); -- 
    -- CP-element group 111:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 111: predecessors 
    -- CP-element group 111: 	103 
    -- CP-element group 111: 	110 
    -- CP-element group 111: marked-predecessors 
    -- CP-element group 111: 	113 
    -- CP-element group 111: successors 
    -- CP-element group 111: 	112 
    -- CP-element group 111:  members (3) 
      -- CP-element group 111: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/WPIPE_axi_read_data_171_sample_start_
      -- CP-element group 111: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/WPIPE_axi_read_data_171_Sample/$entry
      -- CP-element group 111: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/WPIPE_axi_read_data_171_Sample/req
      -- 
    req_283_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_283_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_bridge_daemon_CP_0_elements(111), ack => WPIPE_axi_read_data_171_inst_req_0); -- 
    axi_to_acb_bridge_daemon_cp_element_group_111: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 45) := "axi_to_acb_bridge_daemon_cp_element_group_111"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= axi_to_acb_bridge_daemon_CP_0_elements(103) & axi_to_acb_bridge_daemon_CP_0_elements(110) & axi_to_acb_bridge_daemon_CP_0_elements(113);
      gj_axi_to_acb_bridge_daemon_cp_element_group_111 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => axi_to_acb_bridge_daemon_CP_0_elements(111), clk => clk, reset => reset); --
    end block;
    -- CP-element group 112:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 112: predecessors 
    -- CP-element group 112: 	111 
    -- CP-element group 112: successors 
    -- CP-element group 112: 	113 
    -- CP-element group 112: marked-successors 
    -- CP-element group 112: 	108 
    -- CP-element group 112: 	101 
    -- CP-element group 112:  members (6) 
      -- CP-element group 112: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/WPIPE_axi_read_data_171_sample_completed_
      -- CP-element group 112: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/WPIPE_axi_read_data_171_update_start_
      -- CP-element group 112: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/WPIPE_axi_read_data_171_Sample/$exit
      -- CP-element group 112: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/WPIPE_axi_read_data_171_Sample/ack
      -- CP-element group 112: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/WPIPE_axi_read_data_171_Update/$entry
      -- CP-element group 112: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/WPIPE_axi_read_data_171_Update/req
      -- 
    ack_284_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 112_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_axi_read_data_171_inst_ack_0, ack => axi_to_acb_bridge_daemon_CP_0_elements(112)); -- 
    req_288_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_288_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_bridge_daemon_CP_0_elements(112), ack => WPIPE_axi_read_data_171_inst_req_1); -- 
    -- CP-element group 113:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 113: predecessors 
    -- CP-element group 113: 	112 
    -- CP-element group 113: successors 
    -- CP-element group 113: 	115 
    -- CP-element group 113: marked-successors 
    -- CP-element group 113: 	111 
    -- CP-element group 113:  members (3) 
      -- CP-element group 113: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/WPIPE_axi_read_data_171_update_completed_
      -- CP-element group 113: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/WPIPE_axi_read_data_171_Update/$exit
      -- CP-element group 113: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/WPIPE_axi_read_data_171_Update/ack
      -- 
    ack_289_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 113_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_axi_read_data_171_inst_ack_1, ack => axi_to_acb_bridge_daemon_CP_0_elements(113)); -- 
    -- CP-element group 114:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 114: predecessors 
    -- CP-element group 114: 	9 
    -- CP-element group 114: successors 
    -- CP-element group 114: 	10 
    -- CP-element group 114:  members (1) 
      -- CP-element group 114: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/loop_body_delay_to_condition_start
      -- 
    -- Element group axi_to_acb_bridge_daemon_CP_0_elements(114) is a control-delay.
    cp_element_114_delay: control_delay_element  generic map(name => " 114_delay", delay_value => 1)  port map(req => axi_to_acb_bridge_daemon_CP_0_elements(9), ack => axi_to_acb_bridge_daemon_CP_0_elements(114), clk => clk, reset =>reset);
    -- CP-element group 115:  join  transition  bypass  pipeline-parent 
    -- CP-element group 115: predecessors 
    -- CP-element group 115: 	12 
    -- CP-element group 115: 	106 
    -- CP-element group 115: 	95 
    -- CP-element group 115: 	113 
    -- CP-element group 115: successors 
    -- CP-element group 115: 	6 
    -- CP-element group 115:  members (1) 
      -- CP-element group 115: 	 branch_block_stmt_21/do_while_stmt_22/do_while_stmt_22_loop_body/$exit
      -- 
    axi_to_acb_bridge_daemon_cp_element_group_115: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 15,1 => 15,2 => 15,3 => 15);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 45) := "axi_to_acb_bridge_daemon_cp_element_group_115"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= axi_to_acb_bridge_daemon_CP_0_elements(12) & axi_to_acb_bridge_daemon_CP_0_elements(106) & axi_to_acb_bridge_daemon_CP_0_elements(95) & axi_to_acb_bridge_daemon_CP_0_elements(113);
      gj_axi_to_acb_bridge_daemon_cp_element_group_115 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => axi_to_acb_bridge_daemon_CP_0_elements(115), clk => clk, reset => reset); --
    end block;
    -- CP-element group 116:  transition  input  bypass  pipeline-parent 
    -- CP-element group 116: predecessors 
    -- CP-element group 116: 	5 
    -- CP-element group 116: successors 
    -- CP-element group 116:  members (2) 
      -- CP-element group 116: 	 branch_block_stmt_21/do_while_stmt_22/loop_exit/$exit
      -- CP-element group 116: 	 branch_block_stmt_21/do_while_stmt_22/loop_exit/ack
      -- 
    ack_294_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 116_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_22_branch_ack_0, ack => axi_to_acb_bridge_daemon_CP_0_elements(116)); -- 
    -- CP-element group 117:  transition  input  bypass  pipeline-parent 
    -- CP-element group 117: predecessors 
    -- CP-element group 117: 	5 
    -- CP-element group 117: successors 
    -- CP-element group 117:  members (2) 
      -- CP-element group 117: 	 branch_block_stmt_21/do_while_stmt_22/loop_taken/$exit
      -- CP-element group 117: 	 branch_block_stmt_21/do_while_stmt_22/loop_taken/ack
      -- 
    ack_298_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 117_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_22_branch_ack_1, ack => axi_to_acb_bridge_daemon_CP_0_elements(117)); -- 
    -- CP-element group 118:  transition  bypass  pipeline-parent 
    -- CP-element group 118: predecessors 
    -- CP-element group 118: 	3 
    -- CP-element group 118: successors 
    -- CP-element group 118: 	1 
    -- CP-element group 118:  members (1) 
      -- CP-element group 118: 	 branch_block_stmt_21/do_while_stmt_22/$exit
      -- 
    axi_to_acb_bridge_daemon_CP_0_elements(118) <= axi_to_acb_bridge_daemon_CP_0_elements(3);
    axi_to_acb_bridge_daemon_do_while_stmt_22_terminator_299: loop_terminator -- 
      generic map (name => " axi_to_acb_bridge_daemon_do_while_stmt_22_terminator_299", max_iterations_in_flight =>15) 
      port map(loop_body_exit => axi_to_acb_bridge_daemon_CP_0_elements(6),loop_continue => axi_to_acb_bridge_daemon_CP_0_elements(117),loop_terminate => axi_to_acb_bridge_daemon_CP_0_elements(116),loop_back => axi_to_acb_bridge_daemon_CP_0_elements(4),loop_exit => axi_to_acb_bridge_daemon_CP_0_elements(3),clk => clk, reset => reset); -- 
    phi_stmt_24_phi_seq_73_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= axi_to_acb_bridge_daemon_CP_0_elements(22);
      axi_to_acb_bridge_daemon_CP_0_elements(25)<= src_sample_reqs(0);
      src_sample_acks(0)  <= axi_to_acb_bridge_daemon_CP_0_elements(25);
      axi_to_acb_bridge_daemon_CP_0_elements(26)<= src_update_reqs(0);
      src_update_acks(0)  <= axi_to_acb_bridge_daemon_CP_0_elements(27);
      axi_to_acb_bridge_daemon_CP_0_elements(23) <= phi_mux_reqs(0);
      triggers(1)  <= axi_to_acb_bridge_daemon_CP_0_elements(20);
      axi_to_acb_bridge_daemon_CP_0_elements(29)<= src_sample_reqs(1);
      src_sample_acks(1)  <= axi_to_acb_bridge_daemon_CP_0_elements(31);
      axi_to_acb_bridge_daemon_CP_0_elements(30)<= src_update_reqs(1);
      src_update_acks(1)  <= axi_to_acb_bridge_daemon_CP_0_elements(32);
      axi_to_acb_bridge_daemon_CP_0_elements(21) <= phi_mux_reqs(1);
      phi_stmt_24_phi_seq_73 : phi_sequencer_v2-- 
        generic map (place_capacity => 15, ntriggers => 2, name => "phi_stmt_24_phi_seq_73") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => axi_to_acb_bridge_daemon_CP_0_elements(17), 
          phi_sample_ack => axi_to_acb_bridge_daemon_CP_0_elements(18), 
          phi_update_req => axi_to_acb_bridge_daemon_CP_0_elements(13), 
          phi_update_ack => axi_to_acb_bridge_daemon_CP_0_elements(19), 
          phi_mux_ack => axi_to_acb_bridge_daemon_CP_0_elements(24), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_30_phi_seq_117_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= axi_to_acb_bridge_daemon_CP_0_elements(41);
      axi_to_acb_bridge_daemon_CP_0_elements(44)<= src_sample_reqs(0);
      src_sample_acks(0)  <= axi_to_acb_bridge_daemon_CP_0_elements(44);
      axi_to_acb_bridge_daemon_CP_0_elements(45)<= src_update_reqs(0);
      src_update_acks(0)  <= axi_to_acb_bridge_daemon_CP_0_elements(46);
      axi_to_acb_bridge_daemon_CP_0_elements(42) <= phi_mux_reqs(0);
      triggers(1)  <= axi_to_acb_bridge_daemon_CP_0_elements(39);
      axi_to_acb_bridge_daemon_CP_0_elements(48)<= src_sample_reqs(1);
      src_sample_acks(1)  <= axi_to_acb_bridge_daemon_CP_0_elements(52);
      axi_to_acb_bridge_daemon_CP_0_elements(49)<= src_update_reqs(1);
      src_update_acks(1)  <= axi_to_acb_bridge_daemon_CP_0_elements(53);
      axi_to_acb_bridge_daemon_CP_0_elements(40) <= phi_mux_reqs(1);
      phi_stmt_30_phi_seq_117 : phi_sequencer_v2-- 
        generic map (place_capacity => 15, ntriggers => 2, name => "phi_stmt_30_phi_seq_117") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => axi_to_acb_bridge_daemon_CP_0_elements(35), 
          phi_sample_ack => axi_to_acb_bridge_daemon_CP_0_elements(36), 
          phi_update_req => axi_to_acb_bridge_daemon_CP_0_elements(37), 
          phi_update_ack => axi_to_acb_bridge_daemon_CP_0_elements(38), 
          phi_mux_ack => axi_to_acb_bridge_daemon_CP_0_elements(43), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_35_phi_seq_161_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= axi_to_acb_bridge_daemon_CP_0_elements(59);
      axi_to_acb_bridge_daemon_CP_0_elements(64)<= src_sample_reqs(0);
      src_sample_acks(0)  <= axi_to_acb_bridge_daemon_CP_0_elements(68);
      axi_to_acb_bridge_daemon_CP_0_elements(65)<= src_update_reqs(0);
      src_update_acks(0)  <= axi_to_acb_bridge_daemon_CP_0_elements(69);
      axi_to_acb_bridge_daemon_CP_0_elements(60) <= phi_mux_reqs(0);
      triggers(1)  <= axi_to_acb_bridge_daemon_CP_0_elements(61);
      axi_to_acb_bridge_daemon_CP_0_elements(70)<= src_sample_reqs(1);
      src_sample_acks(1)  <= axi_to_acb_bridge_daemon_CP_0_elements(70);
      axi_to_acb_bridge_daemon_CP_0_elements(71)<= src_update_reqs(1);
      src_update_acks(1)  <= axi_to_acb_bridge_daemon_CP_0_elements(72);
      axi_to_acb_bridge_daemon_CP_0_elements(62) <= phi_mux_reqs(1);
      phi_stmt_35_phi_seq_161 : phi_sequencer_v2-- 
        generic map (place_capacity => 15, ntriggers => 2, name => "phi_stmt_35_phi_seq_161") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => axi_to_acb_bridge_daemon_CP_0_elements(11), 
          phi_sample_ack => axi_to_acb_bridge_daemon_CP_0_elements(56), 
          phi_update_req => axi_to_acb_bridge_daemon_CP_0_elements(57), 
          phi_update_ack => axi_to_acb_bridge_daemon_CP_0_elements(58), 
          phi_mux_ack => axi_to_acb_bridge_daemon_CP_0_elements(63), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_40_phi_seq_205_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= axi_to_acb_bridge_daemon_CP_0_elements(82);
      axi_to_acb_bridge_daemon_CP_0_elements(85)<= src_sample_reqs(0);
      src_sample_acks(0)  <= axi_to_acb_bridge_daemon_CP_0_elements(85);
      axi_to_acb_bridge_daemon_CP_0_elements(86)<= src_update_reqs(0);
      src_update_acks(0)  <= axi_to_acb_bridge_daemon_CP_0_elements(87);
      axi_to_acb_bridge_daemon_CP_0_elements(83) <= phi_mux_reqs(0);
      triggers(1)  <= axi_to_acb_bridge_daemon_CP_0_elements(80);
      axi_to_acb_bridge_daemon_CP_0_elements(89)<= src_sample_reqs(1);
      src_sample_acks(1)  <= axi_to_acb_bridge_daemon_CP_0_elements(91);
      axi_to_acb_bridge_daemon_CP_0_elements(90)<= src_update_reqs(1);
      src_update_acks(1)  <= axi_to_acb_bridge_daemon_CP_0_elements(92);
      axi_to_acb_bridge_daemon_CP_0_elements(81) <= phi_mux_reqs(1);
      phi_stmt_40_phi_seq_205 : phi_sequencer_v2-- 
        generic map (place_capacity => 15, ntriggers => 2, name => "phi_stmt_40_phi_seq_205") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => axi_to_acb_bridge_daemon_CP_0_elements(76), 
          phi_sample_ack => axi_to_acb_bridge_daemon_CP_0_elements(77), 
          phi_update_req => axi_to_acb_bridge_daemon_CP_0_elements(78), 
          phi_update_ack => axi_to_acb_bridge_daemon_CP_0_elements(79), 
          phi_mux_ack => axi_to_acb_bridge_daemon_CP_0_elements(84), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    entry_tmerge_25_block : block -- 
      signal preds : BooleanArray(0 to 1);
      begin -- 
        preds(0)  <= axi_to_acb_bridge_daemon_CP_0_elements(7);
        preds(1)  <= axi_to_acb_bridge_daemon_CP_0_elements(8);
        entry_tmerge_25 : transition_merge -- 
          generic map(name => " entry_tmerge_25")
          port map (preds => preds, symbol_out => axi_to_acb_bridge_daemon_CP_0_elements(9));
          -- 
    end block;
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal CONCAT_u1_u2_113_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u2_u10_118_wire : std_logic_vector(9 downto 0);
    signal CONCAT_u36_u100_128_wire : std_logic_vector(99 downto 0);
    signal CONCAT_u4_u36_126_wire : std_logic_vector(35 downto 0);
    signal MUX_106_wire : std_logic_vector(0 downto 0);
    signal MUX_117_wire : std_logic_vector(7 downto 0);
    signal MUX_125_wire : std_logic_vector(31 downto 0);
    signal NOT_u1_u1_138_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_144_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_79_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_89_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_91_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_81_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_92_wire : std_logic_vector(0 downto 0);
    signal RPIPE_noblock_axi_read_command_34_wire : std_logic_vector(32 downto 0);
    signal RPIPE_noblock_axi_write_command_38_wire : std_logic_vector(104 downto 0);
    signal R_WRITEOK_165_wire_constant : std_logic_vector(1 downto 0);
    signal acb_command_130 : std_logic_vector(109 downto 0);
    signal acb_read_data_162 : std_logic_vector(63 downto 0);
    signal acb_response_158 : std_logic_vector(64 downto 0);
    signal axi_read_req_30 : std_logic_vector(32 downto 0);
    signal axi_write_req_35 : std_logic_vector(104 downto 0);
    signal counter_24 : std_logic_vector(7 downto 0);
    signal get_read_command_141 : std_logic_vector(0 downto 0);
    signal get_write_command_147 : std_logic_vector(0 downto 0);
    signal konst_115_wire_constant : std_logic_vector(7 downto 0);
    signal konst_175_wire_constant : std_logic_vector(0 downto 0);
    signal konst_32_wire_constant : std_logic_vector(32 downto 0);
    signal konst_39_wire_constant : std_logic_vector(104 downto 0);
    signal konst_49_wire_constant : std_logic_vector(7 downto 0);
    signal n_counter_51 : std_logic_vector(7 downto 0);
    signal n_counter_51_29_buffered : std_logic_vector(7 downto 0);
    signal n_read_has_priority_108 : std_logic_vector(0 downto 0);
    signal n_read_has_priority_108_45_buffered : std_logic_vector(0 downto 0);
    signal read_address_59 : std_logic_vector(31 downto 0);
    signal read_has_priority_40 : std_logic_vector(0 downto 0);
    signal read_valid_55 : std_logic_vector(0 downto 0);
    signal select_read_168_delayed_9_0_169 : std_logic_vector(0 downto 0);
    signal select_read_85 : std_logic_vector(0 downto 0);
    signal select_write_96 : std_logic_vector(0 downto 0);
    signal send_acb_command_135 : std_logic_vector(0 downto 0);
    signal send_acb_command_152_delayed_8_0_154 : std_logic_vector(0 downto 0);
    signal type_cast_100_wire_constant : std_logic_vector(0 downto 0);
    signal type_cast_103_wire_constant : std_logic_vector(0 downto 0);
    signal type_cast_105_wire_constant : std_logic_vector(0 downto 0);
    signal type_cast_111_wire_constant : std_logic_vector(0 downto 0);
    signal type_cast_121_wire_constant : std_logic_vector(3 downto 0);
    signal type_cast_28_wire_constant : std_logic_vector(7 downto 0);
    signal type_cast_44_wire_constant : std_logic_vector(0 downto 0);
    signal type_cast_83_wire_constant : std_logic_vector(0 downto 0);
    signal type_cast_94_wire_constant : std_logic_vector(0 downto 0);
    signal write_address_67 : std_logic_vector(31 downto 0);
    signal write_byte_mask_71 : std_logic_vector(7 downto 0);
    signal write_data_75 : std_logic_vector(63 downto 0);
    signal write_valid_63 : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    R_WRITEOK_165_wire_constant <= "00";
    konst_115_wire_constant <= "11111111";
    konst_175_wire_constant <= "1";
    konst_32_wire_constant <= "000000000000000000000000000000000";
    konst_39_wire_constant <= "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    konst_49_wire_constant <= "00000001";
    type_cast_100_wire_constant <= "0";
    type_cast_103_wire_constant <= "1";
    type_cast_105_wire_constant <= "0";
    type_cast_111_wire_constant <= "0";
    type_cast_121_wire_constant <= "0000";
    type_cast_28_wire_constant <= "00000000";
    type_cast_44_wire_constant <= "1";
    type_cast_83_wire_constant <= "0";
    type_cast_94_wire_constant <= "0";
    phi_stmt_24: Block -- phi operator 
      signal idata: std_logic_vector(15 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= type_cast_28_wire_constant & n_counter_51_29_buffered;
      req <= phi_stmt_24_req_0 & phi_stmt_24_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_24",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 8) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_24_ack_0,
          idata => idata,
          odata => counter_24,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_24
    phi_stmt_30: Block -- phi operator 
      signal idata: std_logic_vector(65 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= konst_32_wire_constant & RPIPE_noblock_axi_read_command_34_wire;
      req <= phi_stmt_30_req_0 & phi_stmt_30_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_30",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 33) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_30_ack_0,
          idata => idata,
          odata => axi_read_req_30,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_30
    phi_stmt_35: Block -- phi operator 
      signal idata: std_logic_vector(209 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= RPIPE_noblock_axi_write_command_38_wire & konst_39_wire_constant;
      req <= phi_stmt_35_req_0 & phi_stmt_35_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_35",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 105) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_35_ack_0,
          idata => idata,
          odata => axi_write_req_35,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_35
    phi_stmt_40: Block -- phi operator 
      signal idata: std_logic_vector(1 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= type_cast_44_wire_constant & n_read_has_priority_108_45_buffered;
      req <= phi_stmt_40_req_0 & phi_stmt_40_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_40",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 1) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_40_ack_0,
          idata => idata,
          odata => read_has_priority_40,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_40
    -- flow-through select operator MUX_106_inst
    MUX_106_wire <= type_cast_103_wire_constant when (select_write_96(0) /=  '0') else type_cast_105_wire_constant;
    -- flow-through select operator MUX_107_inst
    n_read_has_priority_108 <= type_cast_100_wire_constant when (select_read_85(0) /=  '0') else MUX_106_wire;
    -- flow-through select operator MUX_117_inst
    MUX_117_wire <= konst_115_wire_constant when (select_read_85(0) /=  '0') else write_byte_mask_71;
    -- flow-through select operator MUX_125_inst
    MUX_125_wire <= read_address_59 when (select_read_85(0) /=  '0') else write_address_67;
    -- flow-through select operator MUX_84_inst
    select_read_85 <= OR_u1_u1_81_wire when (read_valid_55(0) /=  '0') else type_cast_83_wire_constant;
    -- flow-through select operator MUX_95_inst
    select_write_96 <= OR_u1_u1_92_wire when (write_valid_63(0) /=  '0') else type_cast_94_wire_constant;
    -- flow-through slice operator slice_161_inst
    acb_read_data_162 <= acb_response_158(63 downto 0);
    -- flow-through slice operator slice_54_inst
    read_valid_55 <= axi_read_req_30(32 downto 32);
    -- flow-through slice operator slice_58_inst
    read_address_59 <= axi_read_req_30(31 downto 0);
    -- flow-through slice operator slice_62_inst
    write_valid_63 <= axi_write_req_35(104 downto 104);
    -- flow-through slice operator slice_66_inst
    write_address_67 <= axi_write_req_35(103 downto 72);
    -- flow-through slice operator slice_70_inst
    write_byte_mask_71 <= axi_write_req_35(71 downto 64);
    -- flow-through slice operator slice_74_inst
    write_data_75 <= axi_write_req_35(63 downto 0);
    W_select_read_168_delayed_9_0_167_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_select_read_168_delayed_9_0_167_inst_req_0;
      W_select_read_168_delayed_9_0_167_inst_ack_0<= wack(0);
      rreq(0) <= W_select_read_168_delayed_9_0_167_inst_req_1;
      W_select_read_168_delayed_9_0_167_inst_ack_1<= rack(0);
      W_select_read_168_delayed_9_0_167_inst : InterlockBuffer generic map ( -- 
        name => "W_select_read_168_delayed_9_0_167_inst",
        buffer_size => 9,
        flow_through =>  false ,
        cut_through =>  true ,
        in_data_width => 1,
        out_data_width => 1,
        bypass_flag =>  true 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => select_read_85,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => select_read_168_delayed_9_0_169,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    W_send_acb_command_152_delayed_8_0_152_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_send_acb_command_152_delayed_8_0_152_inst_req_0;
      W_send_acb_command_152_delayed_8_0_152_inst_ack_0<= wack(0);
      rreq(0) <= W_send_acb_command_152_delayed_8_0_152_inst_req_1;
      W_send_acb_command_152_delayed_8_0_152_inst_ack_1<= rack(0);
      W_send_acb_command_152_delayed_8_0_152_inst : InterlockBuffer generic map ( -- 
        name => "W_send_acb_command_152_delayed_8_0_152_inst",
        buffer_size => 8,
        flow_through =>  false ,
        cut_through =>  true ,
        in_data_width => 1,
        out_data_width => 1,
        bypass_flag =>  true 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => send_acb_command_135,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => send_acb_command_152_delayed_8_0_154,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    n_counter_51_29_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= n_counter_51_29_buf_req_0;
      n_counter_51_29_buf_ack_0<= wack(0);
      rreq(0) <= n_counter_51_29_buf_req_1;
      n_counter_51_29_buf_ack_1<= rack(0);
      n_counter_51_29_buf : InterlockBuffer generic map ( -- 
        name => "n_counter_51_29_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 8,
        out_data_width => 8,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => n_counter_51,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => n_counter_51_29_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    n_read_has_priority_108_45_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= n_read_has_priority_108_45_buf_req_0;
      n_read_has_priority_108_45_buf_ack_0<= wack(0);
      rreq(0) <= n_read_has_priority_108_45_buf_req_1;
      n_read_has_priority_108_45_buf_ack_1<= rack(0);
      n_read_has_priority_108_45_buf : InterlockBuffer generic map ( -- 
        name => "n_read_has_priority_108_45_buf",
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
        write_data => n_read_has_priority_108,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => n_read_has_priority_108_45_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    do_while_stmt_22_branch: Block -- 
      -- branch-block
      signal condition_sig : std_logic_vector(0 downto 0);
      begin 
      condition_sig <= konst_175_wire_constant;
      branch_instance: BranchBase -- 
        generic map( name => "do_while_stmt_22_branch", condition_width => 1,  bypass_flag => true)
        port map( -- 
          condition => condition_sig,
          req => do_while_stmt_22_branch_req_0,
          ack0 => do_while_stmt_22_branch_ack_0,
          ack1 => do_while_stmt_22_branch_ack_1,
          clk => clk,
          reset => reset); -- 
      --
    end Block; -- branch-block
    -- binary operator ADD_u8_u8_50_inst
    process(counter_24) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApIntAdd_proc(counter_24, konst_49_wire_constant, tmp_var);
      n_counter_51 <= tmp_var; --
    end process;
    -- binary operator CONCAT_u10_u110_129_inst
    process(CONCAT_u2_u10_118_wire, CONCAT_u36_u100_128_wire) -- 
      variable tmp_var : std_logic_vector(109 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u10_118_wire, CONCAT_u36_u100_128_wire, tmp_var);
      acb_command_130 <= tmp_var; --
    end process;
    -- binary operator CONCAT_u1_u2_113_inst
    process(type_cast_111_wire_constant, select_read_85) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(type_cast_111_wire_constant, select_read_85, tmp_var);
      CONCAT_u1_u2_113_wire <= tmp_var; --
    end process;
    -- binary operator CONCAT_u2_u10_118_inst
    process(CONCAT_u1_u2_113_wire, MUX_117_wire) -- 
      variable tmp_var : std_logic_vector(9 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_113_wire, MUX_117_wire, tmp_var);
      CONCAT_u2_u10_118_wire <= tmp_var; --
    end process;
    -- binary operator CONCAT_u36_u100_128_inst
    process(CONCAT_u4_u36_126_wire, write_data_75) -- 
      variable tmp_var : std_logic_vector(99 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u36_126_wire, write_data_75, tmp_var);
      CONCAT_u36_u100_128_wire <= tmp_var; --
    end process;
    -- binary operator CONCAT_u4_u36_126_inst
    process(type_cast_121_wire_constant, MUX_125_wire) -- 
      variable tmp_var : std_logic_vector(35 downto 0); -- 
    begin -- 
      ApConcat_proc(type_cast_121_wire_constant, MUX_125_wire, tmp_var);
      CONCAT_u4_u36_126_wire <= tmp_var; --
    end process;
    -- unary operator NOT_u1_u1_138_inst
    process(read_valid_55) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", read_valid_55, tmp_var);
      NOT_u1_u1_138_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_144_inst
    process(write_valid_63) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", write_valid_63, tmp_var);
      NOT_u1_u1_144_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_79_inst
    process(write_valid_63) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", write_valid_63, tmp_var);
      NOT_u1_u1_79_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_89_inst
    process(read_valid_55) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", read_valid_55, tmp_var);
      NOT_u1_u1_89_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_91_inst
    process(read_has_priority_40) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", read_has_priority_40, tmp_var);
      NOT_u1_u1_91_wire <= tmp_var; -- 
    end process;
    -- binary operator OR_u1_u1_134_inst
    process(select_read_85, select_write_96) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntOr_proc(select_read_85, select_write_96, tmp_var);
      send_acb_command_135 <= tmp_var; --
    end process;
    -- binary operator OR_u1_u1_140_inst
    process(NOT_u1_u1_138_wire, select_read_85) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntOr_proc(NOT_u1_u1_138_wire, select_read_85, tmp_var);
      get_read_command_141 <= tmp_var; --
    end process;
    -- binary operator OR_u1_u1_146_inst
    process(NOT_u1_u1_144_wire, select_write_96) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntOr_proc(NOT_u1_u1_144_wire, select_write_96, tmp_var);
      get_write_command_147 <= tmp_var; --
    end process;
    -- binary operator OR_u1_u1_81_inst
    process(NOT_u1_u1_79_wire, read_has_priority_40) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntOr_proc(NOT_u1_u1_79_wire, read_has_priority_40, tmp_var);
      OR_u1_u1_81_wire <= tmp_var; --
    end process;
    -- binary operator OR_u1_u1_92_inst
    process(NOT_u1_u1_89_wire, NOT_u1_u1_91_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntOr_proc(NOT_u1_u1_89_wire, NOT_u1_u1_91_wire, tmp_var);
      OR_u1_u1_92_wire <= tmp_var; --
    end process;
    -- shared inport operator group (0) : RPIPE_ACB_BUS_RESPONSE_157_inst 
    InportGroup_0: Block -- 
      signal data_out: std_logic_vector(64 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_ACB_BUS_RESPONSE_157_inst_req_0;
      RPIPE_ACB_BUS_RESPONSE_157_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_ACB_BUS_RESPONSE_157_inst_req_1;
      RPIPE_ACB_BUS_RESPONSE_157_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <= send_acb_command_152_delayed_8_0_154(0);
      acb_response_158 <= data_out(64 downto 0);
      ACB_BUS_RESPONSE_read_0_gI: SplitGuardInterface generic map(name => "ACB_BUS_RESPONSE_read_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      ACB_BUS_RESPONSE_read_0: InputPortRevised -- 
        generic map ( name => "ACB_BUS_RESPONSE_read_0", data_width => 65,  num_reqs => 1,  output_buffering => outBUFs,   nonblocking_read_flag => False,  no_arbitration => false)
        port map (-- 
          sample_req => reqL , 
          sample_ack => ackL, 
          update_req => reqR, 
          update_ack => ackR, 
          data => data_out, 
          oreq => ACB_BUS_RESPONSE_pipe_read_req(0),
          oack => ACB_BUS_RESPONSE_pipe_read_ack(0),
          odata => ACB_BUS_RESPONSE_pipe_read_data(64 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 0
    -- shared inport operator group (1) : RPIPE_noblock_axi_read_command_34_inst 
    InportGroup_1: Block -- 
      signal data_out: std_logic_vector(32 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_noblock_axi_read_command_34_inst_req_0;
      RPIPE_noblock_axi_read_command_34_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_noblock_axi_read_command_34_inst_req_1;
      RPIPE_noblock_axi_read_command_34_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <= get_write_command_147(0);
      RPIPE_noblock_axi_read_command_34_wire <= data_out(32 downto 0);
      noblock_axi_read_command_read_1_gI: SplitGuardInterface generic map(name => "noblock_axi_read_command_read_1_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      noblock_axi_read_command_read_1: InputPort_P2P -- 
        generic map ( name => "noblock_axi_read_command_read_1", data_width => 33,    bypass_flag => false,   	nonblocking_read_flag => true,  barrier_flag => false,   queue_depth =>  0)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => noblock_axi_read_command_pipe_read_req(0),
          oack => noblock_axi_read_command_pipe_read_ack(0),
          odata => noblock_axi_read_command_pipe_read_data(32 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 1
    -- shared inport operator group (2) : RPIPE_noblock_axi_write_command_38_inst 
    InportGroup_2: Block -- 
      signal data_out: std_logic_vector(104 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_noblock_axi_write_command_38_inst_req_0;
      RPIPE_noblock_axi_write_command_38_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_noblock_axi_write_command_38_inst_req_1;
      RPIPE_noblock_axi_write_command_38_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <= get_read_command_141(0);
      RPIPE_noblock_axi_write_command_38_wire <= data_out(104 downto 0);
      noblock_axi_write_command_read_2_gI: SplitGuardInterface generic map(name => "noblock_axi_write_command_read_2_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      noblock_axi_write_command_read_2: InputPort_P2P -- 
        generic map ( name => "noblock_axi_write_command_read_2", data_width => 105,    bypass_flag => false,   	nonblocking_read_flag => true,  barrier_flag => false,   queue_depth =>  0)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => noblock_axi_write_command_pipe_read_req(0),
          oack => noblock_axi_write_command_pipe_read_ack(0),
          odata => noblock_axi_write_command_pipe_read_data(104 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 2
    -- shared outport operator group (0) : WPIPE_ACB_BUS_REQUEST_149_inst 
    OutportGroup_0: Block -- 
      signal data_in: std_logic_vector(109 downto 0);
      signal sample_req, sample_ack : BooleanArray( 0 downto 0);
      signal update_req, update_ack : BooleanArray( 0 downto 0);
      signal sample_req_unguarded, sample_ack_unguarded : BooleanArray( 0 downto 0);
      signal update_req_unguarded, update_ack_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      sample_req_unguarded(0) <= WPIPE_ACB_BUS_REQUEST_149_inst_req_0;
      WPIPE_ACB_BUS_REQUEST_149_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_ACB_BUS_REQUEST_149_inst_req_1;
      WPIPE_ACB_BUS_REQUEST_149_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= send_acb_command_135(0);
      data_in <= acb_command_130;
      ACB_BUS_REQUEST_write_0_gI: SplitGuardInterface generic map(name => "ACB_BUS_REQUEST_write_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      ACB_BUS_REQUEST_write_0: OutputPortRevised -- 
        generic map ( name => "ACB_BUS_REQUEST", data_width => 110, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => ACB_BUS_REQUEST_pipe_write_req(0),
          oack => ACB_BUS_REQUEST_pipe_write_ack(0),
          odata => ACB_BUS_REQUEST_pipe_write_data(109 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    -- shared outport operator group (1) : WPIPE_axi_read_data_171_inst 
    OutportGroup_1: Block -- 
      signal data_in: std_logic_vector(63 downto 0);
      signal sample_req, sample_ack : BooleanArray( 0 downto 0);
      signal update_req, update_ack : BooleanArray( 0 downto 0);
      signal sample_req_unguarded, sample_ack_unguarded : BooleanArray( 0 downto 0);
      signal update_req_unguarded, update_ack_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      sample_req_unguarded(0) <= WPIPE_axi_read_data_171_inst_req_0;
      WPIPE_axi_read_data_171_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_axi_read_data_171_inst_req_1;
      WPIPE_axi_read_data_171_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= select_read_168_delayed_9_0_169(0);
      data_in <= acb_read_data_162;
      axi_read_data_write_1_gI: SplitGuardInterface generic map(name => "axi_read_data_write_1_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      axi_read_data_write_1: OutputPortRevised -- 
        generic map ( name => "axi_read_data", data_width => 64, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => axi_read_data_pipe_write_req(0),
          oack => axi_read_data_pipe_write_ack(0),
          odata => axi_read_data_pipe_write_data(63 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 1
    -- shared outport operator group (2) : WPIPE_axi_write_status_164_inst 
    OutportGroup_2: Block -- 
      signal data_in: std_logic_vector(1 downto 0);
      signal sample_req, sample_ack : BooleanArray( 0 downto 0);
      signal update_req, update_ack : BooleanArray( 0 downto 0);
      signal sample_req_unguarded, sample_ack_unguarded : BooleanArray( 0 downto 0);
      signal update_req_unguarded, update_ack_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      sample_req_unguarded(0) <= WPIPE_axi_write_status_164_inst_req_0;
      WPIPE_axi_write_status_164_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_axi_write_status_164_inst_req_1;
      WPIPE_axi_write_status_164_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= select_write_96(0);
      data_in <= R_WRITEOK_165_wire_constant;
      axi_write_status_write_2_gI: SplitGuardInterface generic map(name => "axi_write_status_write_2_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      axi_write_status_write_2: OutputPortRevised -- 
        generic map ( name => "axi_write_status", data_width => 2, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => axi_write_status_pipe_write_req(0),
          oack => axi_write_status_pipe_write_ack(0),
          odata => axi_write_status_pipe_write_data(1 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 2
    -- 
  end Block; -- data_path
  -- 
end axi_to_acb_bridge_daemon_arch;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
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
library AxiBridgeLib;
use AxiBridgeLib.axi_acb_core_global_package.all;
entity axi_to_acb_read_daemon is -- 
  generic (tag_length : integer); 
  port ( -- 
    axi_read_address_pipe_read_req : out  std_logic_vector(0 downto 0);
    axi_read_address_pipe_read_ack : in   std_logic_vector(0 downto 0);
    axi_read_address_pipe_read_data : in   std_logic_vector(31 downto 0);
    noblock_axi_read_command_pipe_write_req : out  std_logic_vector(0 downto 0);
    noblock_axi_read_command_pipe_write_ack : in   std_logic_vector(0 downto 0);
    noblock_axi_read_command_pipe_write_data : out  std_logic_vector(32 downto 0);
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
end entity axi_to_acb_read_daemon;
architecture axi_to_acb_read_daemon_arch of axi_to_acb_read_daemon is -- 
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
  signal axi_to_acb_read_daemon_CP_300_start: Boolean;
  signal axi_to_acb_read_daemon_CP_300_symbol: Boolean;
  -- volatile/operator module components. 
  -- links between control-path and data-path
  signal do_while_stmt_180_branch_req_0 : boolean;
  signal RPIPE_axi_read_address_183_inst_req_0 : boolean;
  signal RPIPE_axi_read_address_183_inst_ack_0 : boolean;
  signal RPIPE_axi_read_address_183_inst_req_1 : boolean;
  signal RPIPE_axi_read_address_183_inst_ack_1 : boolean;
  signal WPIPE_noblock_axi_read_command_191_inst_req_0 : boolean;
  signal WPIPE_noblock_axi_read_command_191_inst_ack_0 : boolean;
  signal WPIPE_noblock_axi_read_command_191_inst_req_1 : boolean;
  signal WPIPE_noblock_axi_read_command_191_inst_ack_1 : boolean;
  signal do_while_stmt_180_branch_ack_0 : boolean;
  signal do_while_stmt_180_branch_ack_1 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "axi_to_acb_read_daemon_input_buffer", -- 
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
  axi_to_acb_read_daemon_CP_300_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "axi_to_acb_read_daemon_out_buffer", -- 
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
    preds <= axi_to_acb_read_daemon_CP_300_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
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
    preds <= axi_to_acb_read_daemon_CP_300_start & tag_ilock_write_ack_symbol;
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
    preds <= axi_to_acb_read_daemon_CP_300_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  axi_to_acb_read_daemon_CP_300: Block -- control-path 
    signal axi_to_acb_read_daemon_CP_300_elements: BooleanArray(20 downto 0);
    -- 
  begin -- 
    axi_to_acb_read_daemon_CP_300_elements(0) <= axi_to_acb_read_daemon_CP_300_start;
    axi_to_acb_read_daemon_CP_300_symbol <= axi_to_acb_read_daemon_CP_300_elements(1);
    -- CP-element group 0:  transition  place  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	2 
    -- CP-element group 0:  members (4) 
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 branch_block_stmt_179/$entry
      -- CP-element group 0: 	 branch_block_stmt_179/branch_block_stmt_179__entry__
      -- CP-element group 0: 	 branch_block_stmt_179/do_while_stmt_180__entry__
      -- 
    -- CP-element group 1:  transition  place  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	20 
    -- CP-element group 1: successors 
    -- CP-element group 1:  members (4) 
      -- CP-element group 1: 	 $exit
      -- CP-element group 1: 	 branch_block_stmt_179/$exit
      -- CP-element group 1: 	 branch_block_stmt_179/branch_block_stmt_179__exit__
      -- CP-element group 1: 	 branch_block_stmt_179/do_while_stmt_180__exit__
      -- 
    axi_to_acb_read_daemon_CP_300_elements(1) <= axi_to_acb_read_daemon_CP_300_elements(20);
    -- CP-element group 2:  transition  place  bypass  pipeline-parent 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	0 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	8 
    -- CP-element group 2:  members (2) 
      -- CP-element group 2: 	 branch_block_stmt_179/do_while_stmt_180/$entry
      -- CP-element group 2: 	 branch_block_stmt_179/do_while_stmt_180/do_while_stmt_180__entry__
      -- 
    axi_to_acb_read_daemon_CP_300_elements(2) <= axi_to_acb_read_daemon_CP_300_elements(0);
    -- CP-element group 3:  merge  place  bypass  pipeline-parent 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	20 
    -- CP-element group 3:  members (1) 
      -- CP-element group 3: 	 branch_block_stmt_179/do_while_stmt_180/do_while_stmt_180__exit__
      -- 
    -- Element group axi_to_acb_read_daemon_CP_300_elements(3) is bound as output of CP function.
    -- CP-element group 4:  merge  place  bypass  pipeline-parent 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	7 
    -- CP-element group 4:  members (1) 
      -- CP-element group 4: 	 branch_block_stmt_179/do_while_stmt_180/loop_back
      -- 
    -- Element group axi_to_acb_read_daemon_CP_300_elements(4) is bound as output of CP function.
    -- CP-element group 5:  branch  transition  place  bypass  pipeline-parent 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	17 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	19 
    -- CP-element group 5: 	18 
    -- CP-element group 5:  members (3) 
      -- CP-element group 5: 	 branch_block_stmt_179/do_while_stmt_180/condition_done
      -- CP-element group 5: 	 branch_block_stmt_179/do_while_stmt_180/loop_exit/$entry
      -- CP-element group 5: 	 branch_block_stmt_179/do_while_stmt_180/loop_taken/$entry
      -- 
    axi_to_acb_read_daemon_CP_300_elements(5) <= axi_to_acb_read_daemon_CP_300_elements(17);
    -- CP-element group 6:  branch  place  bypass  pipeline-parent 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	16 
    -- CP-element group 6: successors 
    -- CP-element group 6:  members (1) 
      -- CP-element group 6: 	 branch_block_stmt_179/do_while_stmt_180/loop_body_done
      -- 
    axi_to_acb_read_daemon_CP_300_elements(6) <= axi_to_acb_read_daemon_CP_300_elements(16);
    -- CP-element group 7:  transition  bypass  pipeline-parent 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	4 
    -- CP-element group 7: successors 
    -- CP-element group 7:  members (1) 
      -- CP-element group 7: 	 branch_block_stmt_179/do_while_stmt_180/do_while_stmt_180_loop_body/back_edge_to_loop_body
      -- 
    axi_to_acb_read_daemon_CP_300_elements(7) <= axi_to_acb_read_daemon_CP_300_elements(4);
    -- CP-element group 8:  transition  bypass  pipeline-parent 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	2 
    -- CP-element group 8: successors 
    -- CP-element group 8:  members (1) 
      -- CP-element group 8: 	 branch_block_stmt_179/do_while_stmt_180/do_while_stmt_180_loop_body/first_time_through_loop_body
      -- 
    axi_to_acb_read_daemon_CP_300_elements(8) <= axi_to_acb_read_daemon_CP_300_elements(2);
    -- CP-element group 9:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	10 
    -- CP-element group 9: 	17 
    -- CP-element group 9:  members (2) 
      -- CP-element group 9: 	 branch_block_stmt_179/do_while_stmt_180/do_while_stmt_180_loop_body/$entry
      -- CP-element group 9: 	 branch_block_stmt_179/do_while_stmt_180/do_while_stmt_180_loop_body/loop_body_start
      -- 
    -- Element group axi_to_acb_read_daemon_CP_300_elements(9) is bound as output of CP function.
    -- CP-element group 10:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	9 
    -- CP-element group 10: marked-predecessors 
    -- CP-element group 10: 	13 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	12 
    -- CP-element group 10:  members (3) 
      -- CP-element group 10: 	 branch_block_stmt_179/do_while_stmt_180/do_while_stmt_180_loop_body/RPIPE_axi_read_address_183_sample_start_
      -- CP-element group 10: 	 branch_block_stmt_179/do_while_stmt_180/do_while_stmt_180_loop_body/RPIPE_axi_read_address_183_Sample/$entry
      -- CP-element group 10: 	 branch_block_stmt_179/do_while_stmt_180/do_while_stmt_180_loop_body/RPIPE_axi_read_address_183_Sample/rr
      -- 
    rr_333_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_333_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_read_daemon_CP_300_elements(10), ack => RPIPE_axi_read_address_183_inst_req_0); -- 
    axi_to_acb_read_daemon_cp_element_group_10: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 42) := "axi_to_acb_read_daemon_cp_element_group_10"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= axi_to_acb_read_daemon_CP_300_elements(9) & axi_to_acb_read_daemon_CP_300_elements(13);
      gj_axi_to_acb_read_daemon_cp_element_group_10 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => axi_to_acb_read_daemon_CP_300_elements(10), clk => clk, reset => reset); --
    end block;
    -- CP-element group 11:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	12 
    -- CP-element group 11: marked-predecessors 
    -- CP-element group 11: 	15 
    -- CP-element group 11: successors 
    -- CP-element group 11: 	13 
    -- CP-element group 11:  members (3) 
      -- CP-element group 11: 	 branch_block_stmt_179/do_while_stmt_180/do_while_stmt_180_loop_body/RPIPE_axi_read_address_183_update_start_
      -- CP-element group 11: 	 branch_block_stmt_179/do_while_stmt_180/do_while_stmt_180_loop_body/RPIPE_axi_read_address_183_Update/$entry
      -- CP-element group 11: 	 branch_block_stmt_179/do_while_stmt_180/do_while_stmt_180_loop_body/RPIPE_axi_read_address_183_Update/cr
      -- 
    cr_338_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_338_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_read_daemon_CP_300_elements(11), ack => RPIPE_axi_read_address_183_inst_req_1); -- 
    axi_to_acb_read_daemon_cp_element_group_11: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 42) := "axi_to_acb_read_daemon_cp_element_group_11"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= axi_to_acb_read_daemon_CP_300_elements(12) & axi_to_acb_read_daemon_CP_300_elements(15);
      gj_axi_to_acb_read_daemon_cp_element_group_11 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => axi_to_acb_read_daemon_CP_300_elements(11), clk => clk, reset => reset); --
    end block;
    -- CP-element group 12:  transition  input  bypass  pipeline-parent 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	10 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	11 
    -- CP-element group 12:  members (3) 
      -- CP-element group 12: 	 branch_block_stmt_179/do_while_stmt_180/do_while_stmt_180_loop_body/RPIPE_axi_read_address_183_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_179/do_while_stmt_180/do_while_stmt_180_loop_body/RPIPE_axi_read_address_183_Sample/$exit
      -- CP-element group 12: 	 branch_block_stmt_179/do_while_stmt_180/do_while_stmt_180_loop_body/RPIPE_axi_read_address_183_Sample/ra
      -- 
    ra_334_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 12_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_axi_read_address_183_inst_ack_0, ack => axi_to_acb_read_daemon_CP_300_elements(12)); -- 
    -- CP-element group 13:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: 	11 
    -- CP-element group 13: successors 
    -- CP-element group 13: 	14 
    -- CP-element group 13: marked-successors 
    -- CP-element group 13: 	10 
    -- CP-element group 13:  members (3) 
      -- CP-element group 13: 	 branch_block_stmt_179/do_while_stmt_180/do_while_stmt_180_loop_body/RPIPE_axi_read_address_183_update_completed_
      -- CP-element group 13: 	 branch_block_stmt_179/do_while_stmt_180/do_while_stmt_180_loop_body/RPIPE_axi_read_address_183_Update/$exit
      -- CP-element group 13: 	 branch_block_stmt_179/do_while_stmt_180/do_while_stmt_180_loop_body/RPIPE_axi_read_address_183_Update/ca
      -- 
    ca_339_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 13_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_axi_read_address_183_inst_ack_1, ack => axi_to_acb_read_daemon_CP_300_elements(13)); -- 
    -- CP-element group 14:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: 	13 
    -- CP-element group 14: marked-predecessors 
    -- CP-element group 14: 	16 
    -- CP-element group 14: successors 
    -- CP-element group 14: 	15 
    -- CP-element group 14:  members (3) 
      -- CP-element group 14: 	 branch_block_stmt_179/do_while_stmt_180/do_while_stmt_180_loop_body/WPIPE_noblock_axi_read_command_191_sample_start_
      -- CP-element group 14: 	 branch_block_stmt_179/do_while_stmt_180/do_while_stmt_180_loop_body/WPIPE_noblock_axi_read_command_191_Sample/$entry
      -- CP-element group 14: 	 branch_block_stmt_179/do_while_stmt_180/do_while_stmt_180_loop_body/WPIPE_noblock_axi_read_command_191_Sample/req
      -- 
    req_347_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_347_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_read_daemon_CP_300_elements(14), ack => WPIPE_noblock_axi_read_command_191_inst_req_0); -- 
    axi_to_acb_read_daemon_cp_element_group_14: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 42) := "axi_to_acb_read_daemon_cp_element_group_14"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= axi_to_acb_read_daemon_CP_300_elements(13) & axi_to_acb_read_daemon_CP_300_elements(16);
      gj_axi_to_acb_read_daemon_cp_element_group_14 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => axi_to_acb_read_daemon_CP_300_elements(14), clk => clk, reset => reset); --
    end block;
    -- CP-element group 15:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: 	14 
    -- CP-element group 15: successors 
    -- CP-element group 15: 	16 
    -- CP-element group 15: marked-successors 
    -- CP-element group 15: 	11 
    -- CP-element group 15:  members (6) 
      -- CP-element group 15: 	 branch_block_stmt_179/do_while_stmt_180/do_while_stmt_180_loop_body/WPIPE_noblock_axi_read_command_191_sample_completed_
      -- CP-element group 15: 	 branch_block_stmt_179/do_while_stmt_180/do_while_stmt_180_loop_body/WPIPE_noblock_axi_read_command_191_update_start_
      -- CP-element group 15: 	 branch_block_stmt_179/do_while_stmt_180/do_while_stmt_180_loop_body/WPIPE_noblock_axi_read_command_191_Sample/$exit
      -- CP-element group 15: 	 branch_block_stmt_179/do_while_stmt_180/do_while_stmt_180_loop_body/WPIPE_noblock_axi_read_command_191_Sample/ack
      -- CP-element group 15: 	 branch_block_stmt_179/do_while_stmt_180/do_while_stmt_180_loop_body/WPIPE_noblock_axi_read_command_191_Update/$entry
      -- CP-element group 15: 	 branch_block_stmt_179/do_while_stmt_180/do_while_stmt_180_loop_body/WPIPE_noblock_axi_read_command_191_Update/req
      -- 
    ack_348_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 15_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_axi_read_command_191_inst_ack_0, ack => axi_to_acb_read_daemon_CP_300_elements(15)); -- 
    req_352_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_352_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_read_daemon_CP_300_elements(15), ack => WPIPE_noblock_axi_read_command_191_inst_req_1); -- 
    -- CP-element group 16:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: 	15 
    -- CP-element group 16: successors 
    -- CP-element group 16: 	6 
    -- CP-element group 16: marked-successors 
    -- CP-element group 16: 	14 
    -- CP-element group 16:  members (4) 
      -- CP-element group 16: 	 branch_block_stmt_179/do_while_stmt_180/do_while_stmt_180_loop_body/$exit
      -- CP-element group 16: 	 branch_block_stmt_179/do_while_stmt_180/do_while_stmt_180_loop_body/WPIPE_noblock_axi_read_command_191_update_completed_
      -- CP-element group 16: 	 branch_block_stmt_179/do_while_stmt_180/do_while_stmt_180_loop_body/WPIPE_noblock_axi_read_command_191_Update/$exit
      -- CP-element group 16: 	 branch_block_stmt_179/do_while_stmt_180/do_while_stmt_180_loop_body/WPIPE_noblock_axi_read_command_191_Update/ack
      -- 
    ack_353_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 16_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_axi_read_command_191_inst_ack_1, ack => axi_to_acb_read_daemon_CP_300_elements(16)); -- 
    -- CP-element group 17:  transition  output  delay-element  bypass  pipeline-parent 
    -- CP-element group 17: predecessors 
    -- CP-element group 17: 	9 
    -- CP-element group 17: successors 
    -- CP-element group 17: 	5 
    -- CP-element group 17:  members (2) 
      -- CP-element group 17: 	 branch_block_stmt_179/do_while_stmt_180/do_while_stmt_180_loop_body/condition_evaluated
      -- CP-element group 17: 	 branch_block_stmt_179/do_while_stmt_180/do_while_stmt_180_loop_body/loop_body_delay_to_condition_start
      -- 
    condition_evaluated_324_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " condition_evaluated_324_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_read_daemon_CP_300_elements(17), ack => do_while_stmt_180_branch_req_0); -- 
    -- Element group axi_to_acb_read_daemon_CP_300_elements(17) is a control-delay.
    cp_element_17_delay: control_delay_element  generic map(name => " 17_delay", delay_value => 1)  port map(req => axi_to_acb_read_daemon_CP_300_elements(9), ack => axi_to_acb_read_daemon_CP_300_elements(17), clk => clk, reset =>reset);
    -- CP-element group 18:  transition  input  bypass  pipeline-parent 
    -- CP-element group 18: predecessors 
    -- CP-element group 18: 	5 
    -- CP-element group 18: successors 
    -- CP-element group 18:  members (2) 
      -- CP-element group 18: 	 branch_block_stmt_179/do_while_stmt_180/loop_exit/$exit
      -- CP-element group 18: 	 branch_block_stmt_179/do_while_stmt_180/loop_exit/ack
      -- 
    ack_358_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 18_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_180_branch_ack_0, ack => axi_to_acb_read_daemon_CP_300_elements(18)); -- 
    -- CP-element group 19:  transition  input  bypass  pipeline-parent 
    -- CP-element group 19: predecessors 
    -- CP-element group 19: 	5 
    -- CP-element group 19: successors 
    -- CP-element group 19:  members (2) 
      -- CP-element group 19: 	 branch_block_stmt_179/do_while_stmt_180/loop_taken/$exit
      -- CP-element group 19: 	 branch_block_stmt_179/do_while_stmt_180/loop_taken/ack
      -- 
    ack_362_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 19_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_180_branch_ack_1, ack => axi_to_acb_read_daemon_CP_300_elements(19)); -- 
    -- CP-element group 20:  transition  bypass  pipeline-parent 
    -- CP-element group 20: predecessors 
    -- CP-element group 20: 	3 
    -- CP-element group 20: successors 
    -- CP-element group 20: 	1 
    -- CP-element group 20:  members (1) 
      -- CP-element group 20: 	 branch_block_stmt_179/do_while_stmt_180/$exit
      -- 
    axi_to_acb_read_daemon_CP_300_elements(20) <= axi_to_acb_read_daemon_CP_300_elements(3);
    axi_to_acb_read_daemon_do_while_stmt_180_terminator_363: loop_terminator -- 
      generic map (name => " axi_to_acb_read_daemon_do_while_stmt_180_terminator_363", max_iterations_in_flight =>7) 
      port map(loop_body_exit => axi_to_acb_read_daemon_CP_300_elements(6),loop_continue => axi_to_acb_read_daemon_CP_300_elements(19),loop_terminate => axi_to_acb_read_daemon_CP_300_elements(18),loop_back => axi_to_acb_read_daemon_CP_300_elements(4),loop_exit => axi_to_acb_read_daemon_CP_300_elements(3),clk => clk, reset => reset); -- 
    entry_tmerge_325_block : block -- 
      signal preds : BooleanArray(0 to 1);
      begin -- 
        preds(0)  <= axi_to_acb_read_daemon_CP_300_elements(7);
        preds(1)  <= axi_to_acb_read_daemon_CP_300_elements(8);
        entry_tmerge_325 : transition_merge -- 
          generic map(name => " entry_tmerge_325")
          port map (preds => preds, symbol_out => axi_to_acb_read_daemon_CP_300_elements(9));
          -- 
    end block;
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal a_184 : std_logic_vector(31 downto 0);
    signal konst_195_wire_constant : std_logic_vector(0 downto 0);
    signal na_190 : std_logic_vector(32 downto 0);
    signal type_cast_187_wire_constant : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    konst_195_wire_constant <= "1";
    type_cast_187_wire_constant <= "1";
    do_while_stmt_180_branch: Block -- 
      -- branch-block
      signal condition_sig : std_logic_vector(0 downto 0);
      begin 
      condition_sig <= konst_195_wire_constant;
      branch_instance: BranchBase -- 
        generic map( name => "do_while_stmt_180_branch", condition_width => 1,  bypass_flag => true)
        port map( -- 
          condition => condition_sig,
          req => do_while_stmt_180_branch_req_0,
          ack0 => do_while_stmt_180_branch_ack_0,
          ack1 => do_while_stmt_180_branch_ack_1,
          clk => clk,
          reset => reset); -- 
      --
    end Block; -- branch-block
    -- binary operator CONCAT_u1_u33_189_inst
    process(type_cast_187_wire_constant, a_184) -- 
      variable tmp_var : std_logic_vector(32 downto 0); -- 
    begin -- 
      ApConcat_proc(type_cast_187_wire_constant, a_184, tmp_var);
      na_190 <= tmp_var; --
    end process;
    -- shared inport operator group (0) : RPIPE_axi_read_address_183_inst 
    InportGroup_0: Block -- 
      signal data_out: std_logic_vector(31 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_axi_read_address_183_inst_req_0;
      RPIPE_axi_read_address_183_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_axi_read_address_183_inst_req_1;
      RPIPE_axi_read_address_183_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      a_184 <= data_out(31 downto 0);
      axi_read_address_read_0_gI: SplitGuardInterface generic map(name => "axi_read_address_read_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      axi_read_address_read_0: InputPort_P2P -- 
        generic map ( name => "axi_read_address_read_0", data_width => 32,    bypass_flag => false,   	nonblocking_read_flag => false,  barrier_flag => false,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => axi_read_address_pipe_read_req(0),
          oack => axi_read_address_pipe_read_ack(0),
          odata => axi_read_address_pipe_read_data(31 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 0
    -- shared outport operator group (0) : WPIPE_noblock_axi_read_command_191_inst 
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
      sample_req_unguarded(0) <= WPIPE_noblock_axi_read_command_191_inst_req_0;
      WPIPE_noblock_axi_read_command_191_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_noblock_axi_read_command_191_inst_req_1;
      WPIPE_noblock_axi_read_command_191_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= na_190;
      noblock_axi_read_command_write_0_gI: SplitGuardInterface generic map(name => "noblock_axi_read_command_write_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      noblock_axi_read_command_write_0: OutputPortRevised -- 
        generic map ( name => "noblock_axi_read_command", data_width => 33, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => noblock_axi_read_command_pipe_write_req(0),
          oack => noblock_axi_read_command_pipe_write_ack(0),
          odata => noblock_axi_read_command_pipe_write_data(32 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    -- 
  end Block; -- data_path
  -- 
end axi_to_acb_read_daemon_arch;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
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
library AxiBridgeLib;
use AxiBridgeLib.axi_acb_core_global_package.all;
entity axi_to_acb_write_daemon is -- 
  generic (tag_length : integer); 
  port ( -- 
    axi_write_address_pipe_read_req : out  std_logic_vector(0 downto 0);
    axi_write_address_pipe_read_ack : in   std_logic_vector(0 downto 0);
    axi_write_address_pipe_read_data : in   std_logic_vector(31 downto 0);
    axi_write_data_and_byte_mask_pipe_read_req : out  std_logic_vector(0 downto 0);
    axi_write_data_and_byte_mask_pipe_read_ack : in   std_logic_vector(0 downto 0);
    axi_write_data_and_byte_mask_pipe_read_data : in   std_logic_vector(71 downto 0);
    noblock_axi_write_command_pipe_write_req : out  std_logic_vector(0 downto 0);
    noblock_axi_write_command_pipe_write_ack : in   std_logic_vector(0 downto 0);
    noblock_axi_write_command_pipe_write_data : out  std_logic_vector(104 downto 0);
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
end entity axi_to_acb_write_daemon;
architecture axi_to_acb_write_daemon_arch of axi_to_acb_write_daemon is -- 
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
  signal axi_to_acb_write_daemon_CP_364_start: Boolean;
  signal axi_to_acb_write_daemon_CP_364_symbol: Boolean;
  -- volatile/operator module components. 
  -- links between control-path and data-path
  signal do_while_stmt_200_branch_req_0 : boolean;
  signal RPIPE_axi_write_address_203_inst_req_0 : boolean;
  signal RPIPE_axi_write_address_203_inst_ack_0 : boolean;
  signal RPIPE_axi_write_address_203_inst_req_1 : boolean;
  signal RPIPE_axi_write_address_203_inst_ack_1 : boolean;
  signal RPIPE_axi_write_data_and_byte_mask_206_inst_req_0 : boolean;
  signal RPIPE_axi_write_data_and_byte_mask_206_inst_ack_0 : boolean;
  signal RPIPE_axi_write_data_and_byte_mask_206_inst_req_1 : boolean;
  signal RPIPE_axi_write_data_and_byte_mask_206_inst_ack_1 : boolean;
  signal WPIPE_noblock_axi_write_command_216_inst_req_0 : boolean;
  signal WPIPE_noblock_axi_write_command_216_inst_ack_0 : boolean;
  signal WPIPE_noblock_axi_write_command_216_inst_req_1 : boolean;
  signal WPIPE_noblock_axi_write_command_216_inst_ack_1 : boolean;
  signal do_while_stmt_200_branch_ack_0 : boolean;
  signal do_while_stmt_200_branch_ack_1 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "axi_to_acb_write_daemon_input_buffer", -- 
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
  axi_to_acb_write_daemon_CP_364_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "axi_to_acb_write_daemon_out_buffer", -- 
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
    preds <= axi_to_acb_write_daemon_CP_364_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
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
    preds <= axi_to_acb_write_daemon_CP_364_start & tag_ilock_write_ack_symbol;
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
    preds <= axi_to_acb_write_daemon_CP_364_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  axi_to_acb_write_daemon_CP_364: Block -- control-path 
    signal axi_to_acb_write_daemon_CP_364_elements: BooleanArray(24 downto 0);
    -- 
  begin -- 
    axi_to_acb_write_daemon_CP_364_elements(0) <= axi_to_acb_write_daemon_CP_364_start;
    axi_to_acb_write_daemon_CP_364_symbol <= axi_to_acb_write_daemon_CP_364_elements(1);
    -- CP-element group 0:  transition  place  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	2 
    -- CP-element group 0:  members (4) 
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 branch_block_stmt_199/$entry
      -- CP-element group 0: 	 branch_block_stmt_199/branch_block_stmt_199__entry__
      -- CP-element group 0: 	 branch_block_stmt_199/do_while_stmt_200__entry__
      -- 
    -- CP-element group 1:  transition  place  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	24 
    -- CP-element group 1: successors 
    -- CP-element group 1:  members (4) 
      -- CP-element group 1: 	 $exit
      -- CP-element group 1: 	 branch_block_stmt_199/$exit
      -- CP-element group 1: 	 branch_block_stmt_199/branch_block_stmt_199__exit__
      -- CP-element group 1: 	 branch_block_stmt_199/do_while_stmt_200__exit__
      -- 
    axi_to_acb_write_daemon_CP_364_elements(1) <= axi_to_acb_write_daemon_CP_364_elements(24);
    -- CP-element group 2:  transition  place  bypass  pipeline-parent 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	0 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	8 
    -- CP-element group 2:  members (2) 
      -- CP-element group 2: 	 branch_block_stmt_199/do_while_stmt_200/$entry
      -- CP-element group 2: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200__entry__
      -- 
    axi_to_acb_write_daemon_CP_364_elements(2) <= axi_to_acb_write_daemon_CP_364_elements(0);
    -- CP-element group 3:  merge  place  bypass  pipeline-parent 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	24 
    -- CP-element group 3:  members (1) 
      -- CP-element group 3: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200__exit__
      -- 
    -- Element group axi_to_acb_write_daemon_CP_364_elements(3) is bound as output of CP function.
    -- CP-element group 4:  merge  place  bypass  pipeline-parent 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	7 
    -- CP-element group 4:  members (1) 
      -- CP-element group 4: 	 branch_block_stmt_199/do_while_stmt_200/loop_back
      -- 
    -- Element group axi_to_acb_write_daemon_CP_364_elements(4) is bound as output of CP function.
    -- CP-element group 5:  branch  transition  place  bypass  pipeline-parent 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	21 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	22 
    -- CP-element group 5: 	23 
    -- CP-element group 5:  members (3) 
      -- CP-element group 5: 	 branch_block_stmt_199/do_while_stmt_200/condition_done
      -- CP-element group 5: 	 branch_block_stmt_199/do_while_stmt_200/loop_exit/$entry
      -- CP-element group 5: 	 branch_block_stmt_199/do_while_stmt_200/loop_taken/$entry
      -- 
    axi_to_acb_write_daemon_CP_364_elements(5) <= axi_to_acb_write_daemon_CP_364_elements(21);
    -- CP-element group 6:  branch  place  bypass  pipeline-parent 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	20 
    -- CP-element group 6: successors 
    -- CP-element group 6:  members (1) 
      -- CP-element group 6: 	 branch_block_stmt_199/do_while_stmt_200/loop_body_done
      -- 
    axi_to_acb_write_daemon_CP_364_elements(6) <= axi_to_acb_write_daemon_CP_364_elements(20);
    -- CP-element group 7:  transition  bypass  pipeline-parent 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	4 
    -- CP-element group 7: successors 
    -- CP-element group 7:  members (1) 
      -- CP-element group 7: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/back_edge_to_loop_body
      -- 
    axi_to_acb_write_daemon_CP_364_elements(7) <= axi_to_acb_write_daemon_CP_364_elements(4);
    -- CP-element group 8:  transition  bypass  pipeline-parent 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	2 
    -- CP-element group 8: successors 
    -- CP-element group 8:  members (1) 
      -- CP-element group 8: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/first_time_through_loop_body
      -- 
    axi_to_acb_write_daemon_CP_364_elements(8) <= axi_to_acb_write_daemon_CP_364_elements(2);
    -- CP-element group 9:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	10 
    -- CP-element group 9: 	21 
    -- CP-element group 9: 	14 
    -- CP-element group 9:  members (2) 
      -- CP-element group 9: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/$entry
      -- CP-element group 9: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/loop_body_start
      -- 
    -- Element group axi_to_acb_write_daemon_CP_364_elements(9) is bound as output of CP function.
    -- CP-element group 10:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	9 
    -- CP-element group 10: marked-predecessors 
    -- CP-element group 10: 	13 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	12 
    -- CP-element group 10:  members (3) 
      -- CP-element group 10: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/RPIPE_axi_write_address_203_sample_start_
      -- CP-element group 10: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/RPIPE_axi_write_address_203_Sample/$entry
      -- CP-element group 10: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/RPIPE_axi_write_address_203_Sample/rr
      -- 
    rr_397_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_397_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_write_daemon_CP_364_elements(10), ack => RPIPE_axi_write_address_203_inst_req_0); -- 
    axi_to_acb_write_daemon_cp_element_group_10: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 43) := "axi_to_acb_write_daemon_cp_element_group_10"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= axi_to_acb_write_daemon_CP_364_elements(9) & axi_to_acb_write_daemon_CP_364_elements(13);
      gj_axi_to_acb_write_daemon_cp_element_group_10 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => axi_to_acb_write_daemon_CP_364_elements(10), clk => clk, reset => reset); --
    end block;
    -- CP-element group 11:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	12 
    -- CP-element group 11: marked-predecessors 
    -- CP-element group 11: 	19 
    -- CP-element group 11: successors 
    -- CP-element group 11: 	13 
    -- CP-element group 11:  members (3) 
      -- CP-element group 11: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/RPIPE_axi_write_address_203_update_start_
      -- CP-element group 11: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/RPIPE_axi_write_address_203_Update/$entry
      -- CP-element group 11: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/RPIPE_axi_write_address_203_Update/cr
      -- 
    cr_402_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_402_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_write_daemon_CP_364_elements(11), ack => RPIPE_axi_write_address_203_inst_req_1); -- 
    axi_to_acb_write_daemon_cp_element_group_11: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 43) := "axi_to_acb_write_daemon_cp_element_group_11"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= axi_to_acb_write_daemon_CP_364_elements(12) & axi_to_acb_write_daemon_CP_364_elements(19);
      gj_axi_to_acb_write_daemon_cp_element_group_11 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => axi_to_acb_write_daemon_CP_364_elements(11), clk => clk, reset => reset); --
    end block;
    -- CP-element group 12:  transition  input  bypass  pipeline-parent 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	10 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	11 
    -- CP-element group 12:  members (3) 
      -- CP-element group 12: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/RPIPE_axi_write_address_203_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/RPIPE_axi_write_address_203_Sample/$exit
      -- CP-element group 12: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/RPIPE_axi_write_address_203_Sample/ra
      -- 
    ra_398_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 12_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_axi_write_address_203_inst_ack_0, ack => axi_to_acb_write_daemon_CP_364_elements(12)); -- 
    -- CP-element group 13:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: 	11 
    -- CP-element group 13: successors 
    -- CP-element group 13: 	18 
    -- CP-element group 13: marked-successors 
    -- CP-element group 13: 	10 
    -- CP-element group 13:  members (3) 
      -- CP-element group 13: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/RPIPE_axi_write_address_203_update_completed_
      -- CP-element group 13: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/RPIPE_axi_write_address_203_Update/$exit
      -- CP-element group 13: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/RPIPE_axi_write_address_203_Update/ca
      -- 
    ca_403_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 13_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_axi_write_address_203_inst_ack_1, ack => axi_to_acb_write_daemon_CP_364_elements(13)); -- 
    -- CP-element group 14:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: 	9 
    -- CP-element group 14: marked-predecessors 
    -- CP-element group 14: 	17 
    -- CP-element group 14: successors 
    -- CP-element group 14: 	16 
    -- CP-element group 14:  members (3) 
      -- CP-element group 14: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/RPIPE_axi_write_data_and_byte_mask_206_sample_start_
      -- CP-element group 14: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/RPIPE_axi_write_data_and_byte_mask_206_Sample/$entry
      -- CP-element group 14: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/RPIPE_axi_write_data_and_byte_mask_206_Sample/rr
      -- 
    rr_411_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_411_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_write_daemon_CP_364_elements(14), ack => RPIPE_axi_write_data_and_byte_mask_206_inst_req_0); -- 
    axi_to_acb_write_daemon_cp_element_group_14: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 43) := "axi_to_acb_write_daemon_cp_element_group_14"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= axi_to_acb_write_daemon_CP_364_elements(9) & axi_to_acb_write_daemon_CP_364_elements(17);
      gj_axi_to_acb_write_daemon_cp_element_group_14 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => axi_to_acb_write_daemon_CP_364_elements(14), clk => clk, reset => reset); --
    end block;
    -- CP-element group 15:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: 	16 
    -- CP-element group 15: marked-predecessors 
    -- CP-element group 15: 	19 
    -- CP-element group 15: successors 
    -- CP-element group 15: 	17 
    -- CP-element group 15:  members (3) 
      -- CP-element group 15: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/RPIPE_axi_write_data_and_byte_mask_206_update_start_
      -- CP-element group 15: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/RPIPE_axi_write_data_and_byte_mask_206_Update/$entry
      -- CP-element group 15: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/RPIPE_axi_write_data_and_byte_mask_206_Update/cr
      -- 
    cr_416_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_416_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_write_daemon_CP_364_elements(15), ack => RPIPE_axi_write_data_and_byte_mask_206_inst_req_1); -- 
    axi_to_acb_write_daemon_cp_element_group_15: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 43) := "axi_to_acb_write_daemon_cp_element_group_15"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= axi_to_acb_write_daemon_CP_364_elements(16) & axi_to_acb_write_daemon_CP_364_elements(19);
      gj_axi_to_acb_write_daemon_cp_element_group_15 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => axi_to_acb_write_daemon_CP_364_elements(15), clk => clk, reset => reset); --
    end block;
    -- CP-element group 16:  transition  input  bypass  pipeline-parent 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: 	14 
    -- CP-element group 16: successors 
    -- CP-element group 16: 	15 
    -- CP-element group 16:  members (3) 
      -- CP-element group 16: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/RPIPE_axi_write_data_and_byte_mask_206_sample_completed_
      -- CP-element group 16: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/RPIPE_axi_write_data_and_byte_mask_206_Sample/$exit
      -- CP-element group 16: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/RPIPE_axi_write_data_and_byte_mask_206_Sample/ra
      -- 
    ra_412_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 16_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_axi_write_data_and_byte_mask_206_inst_ack_0, ack => axi_to_acb_write_daemon_CP_364_elements(16)); -- 
    -- CP-element group 17:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 17: predecessors 
    -- CP-element group 17: 	15 
    -- CP-element group 17: successors 
    -- CP-element group 17: 	18 
    -- CP-element group 17: marked-successors 
    -- CP-element group 17: 	14 
    -- CP-element group 17:  members (3) 
      -- CP-element group 17: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/RPIPE_axi_write_data_and_byte_mask_206_update_completed_
      -- CP-element group 17: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/RPIPE_axi_write_data_and_byte_mask_206_Update/$exit
      -- CP-element group 17: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/RPIPE_axi_write_data_and_byte_mask_206_Update/ca
      -- 
    ca_417_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 17_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_axi_write_data_and_byte_mask_206_inst_ack_1, ack => axi_to_acb_write_daemon_CP_364_elements(17)); -- 
    -- CP-element group 18:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 18: predecessors 
    -- CP-element group 18: 	13 
    -- CP-element group 18: 	17 
    -- CP-element group 18: marked-predecessors 
    -- CP-element group 18: 	20 
    -- CP-element group 18: successors 
    -- CP-element group 18: 	19 
    -- CP-element group 18:  members (3) 
      -- CP-element group 18: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/WPIPE_noblock_axi_write_command_216_sample_start_
      -- CP-element group 18: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/WPIPE_noblock_axi_write_command_216_Sample/$entry
      -- CP-element group 18: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/WPIPE_noblock_axi_write_command_216_Sample/req
      -- 
    req_425_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_425_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_write_daemon_CP_364_elements(18), ack => WPIPE_noblock_axi_write_command_216_inst_req_0); -- 
    axi_to_acb_write_daemon_cp_element_group_18: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 43) := "axi_to_acb_write_daemon_cp_element_group_18"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= axi_to_acb_write_daemon_CP_364_elements(13) & axi_to_acb_write_daemon_CP_364_elements(17) & axi_to_acb_write_daemon_CP_364_elements(20);
      gj_axi_to_acb_write_daemon_cp_element_group_18 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => axi_to_acb_write_daemon_CP_364_elements(18), clk => clk, reset => reset); --
    end block;
    -- CP-element group 19:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 19: predecessors 
    -- CP-element group 19: 	18 
    -- CP-element group 19: successors 
    -- CP-element group 19: 	20 
    -- CP-element group 19: marked-successors 
    -- CP-element group 19: 	11 
    -- CP-element group 19: 	15 
    -- CP-element group 19:  members (6) 
      -- CP-element group 19: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/WPIPE_noblock_axi_write_command_216_sample_completed_
      -- CP-element group 19: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/WPIPE_noblock_axi_write_command_216_update_start_
      -- CP-element group 19: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/WPIPE_noblock_axi_write_command_216_Sample/$exit
      -- CP-element group 19: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/WPIPE_noblock_axi_write_command_216_Sample/ack
      -- CP-element group 19: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/WPIPE_noblock_axi_write_command_216_Update/$entry
      -- CP-element group 19: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/WPIPE_noblock_axi_write_command_216_Update/req
      -- 
    ack_426_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 19_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_axi_write_command_216_inst_ack_0, ack => axi_to_acb_write_daemon_CP_364_elements(19)); -- 
    req_430_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_430_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_write_daemon_CP_364_elements(19), ack => WPIPE_noblock_axi_write_command_216_inst_req_1); -- 
    -- CP-element group 20:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 20: predecessors 
    -- CP-element group 20: 	19 
    -- CP-element group 20: successors 
    -- CP-element group 20: 	6 
    -- CP-element group 20: marked-successors 
    -- CP-element group 20: 	18 
    -- CP-element group 20:  members (4) 
      -- CP-element group 20: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/$exit
      -- CP-element group 20: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/WPIPE_noblock_axi_write_command_216_update_completed_
      -- CP-element group 20: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/WPIPE_noblock_axi_write_command_216_Update/$exit
      -- CP-element group 20: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/WPIPE_noblock_axi_write_command_216_Update/ack
      -- 
    ack_431_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 20_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_axi_write_command_216_inst_ack_1, ack => axi_to_acb_write_daemon_CP_364_elements(20)); -- 
    -- CP-element group 21:  transition  output  delay-element  bypass  pipeline-parent 
    -- CP-element group 21: predecessors 
    -- CP-element group 21: 	9 
    -- CP-element group 21: successors 
    -- CP-element group 21: 	5 
    -- CP-element group 21:  members (2) 
      -- CP-element group 21: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/condition_evaluated
      -- CP-element group 21: 	 branch_block_stmt_199/do_while_stmt_200/do_while_stmt_200_loop_body/loop_body_delay_to_condition_start
      -- 
    condition_evaluated_388_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " condition_evaluated_388_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => axi_to_acb_write_daemon_CP_364_elements(21), ack => do_while_stmt_200_branch_req_0); -- 
    -- Element group axi_to_acb_write_daemon_CP_364_elements(21) is a control-delay.
    cp_element_21_delay: control_delay_element  generic map(name => " 21_delay", delay_value => 1)  port map(req => axi_to_acb_write_daemon_CP_364_elements(9), ack => axi_to_acb_write_daemon_CP_364_elements(21), clk => clk, reset =>reset);
    -- CP-element group 22:  transition  input  bypass  pipeline-parent 
    -- CP-element group 22: predecessors 
    -- CP-element group 22: 	5 
    -- CP-element group 22: successors 
    -- CP-element group 22:  members (2) 
      -- CP-element group 22: 	 branch_block_stmt_199/do_while_stmt_200/loop_exit/$exit
      -- CP-element group 22: 	 branch_block_stmt_199/do_while_stmt_200/loop_exit/ack
      -- 
    ack_436_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 22_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_200_branch_ack_0, ack => axi_to_acb_write_daemon_CP_364_elements(22)); -- 
    -- CP-element group 23:  transition  input  bypass  pipeline-parent 
    -- CP-element group 23: predecessors 
    -- CP-element group 23: 	5 
    -- CP-element group 23: successors 
    -- CP-element group 23:  members (2) 
      -- CP-element group 23: 	 branch_block_stmt_199/do_while_stmt_200/loop_taken/$exit
      -- CP-element group 23: 	 branch_block_stmt_199/do_while_stmt_200/loop_taken/ack
      -- 
    ack_440_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 23_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_200_branch_ack_1, ack => axi_to_acb_write_daemon_CP_364_elements(23)); -- 
    -- CP-element group 24:  transition  bypass  pipeline-parent 
    -- CP-element group 24: predecessors 
    -- CP-element group 24: 	3 
    -- CP-element group 24: successors 
    -- CP-element group 24: 	1 
    -- CP-element group 24:  members (1) 
      -- CP-element group 24: 	 branch_block_stmt_199/do_while_stmt_200/$exit
      -- 
    axi_to_acb_write_daemon_CP_364_elements(24) <= axi_to_acb_write_daemon_CP_364_elements(3);
    axi_to_acb_write_daemon_do_while_stmt_200_terminator_441: loop_terminator -- 
      generic map (name => " axi_to_acb_write_daemon_do_while_stmt_200_terminator_441", max_iterations_in_flight =>7) 
      port map(loop_body_exit => axi_to_acb_write_daemon_CP_364_elements(6),loop_continue => axi_to_acb_write_daemon_CP_364_elements(23),loop_terminate => axi_to_acb_write_daemon_CP_364_elements(22),loop_back => axi_to_acb_write_daemon_CP_364_elements(4),loop_exit => axi_to_acb_write_daemon_CP_364_elements(3),clk => clk, reset => reset); -- 
    entry_tmerge_389_block : block -- 
      signal preds : BooleanArray(0 to 1);
      begin -- 
        preds(0)  <= axi_to_acb_write_daemon_CP_364_elements(7);
        preds(1)  <= axi_to_acb_write_daemon_CP_364_elements(8);
        entry_tmerge_389 : transition_merge -- 
          generic map(name => " entry_tmerge_389")
          port map (preds => preds, symbol_out => axi_to_acb_write_daemon_CP_364_elements(9));
          -- 
    end block;
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal CONCAT_u1_u33_212_wire : std_logic_vector(32 downto 0);
    signal a_204 : std_logic_vector(31 downto 0);
    signal dbm_207 : std_logic_vector(71 downto 0);
    signal konst_220_wire_constant : std_logic_vector(0 downto 0);
    signal nadbm_215 : std_logic_vector(104 downto 0);
    signal type_cast_210_wire_constant : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    konst_220_wire_constant <= "1";
    type_cast_210_wire_constant <= "1";
    do_while_stmt_200_branch: Block -- 
      -- branch-block
      signal condition_sig : std_logic_vector(0 downto 0);
      begin 
      condition_sig <= konst_220_wire_constant;
      branch_instance: BranchBase -- 
        generic map( name => "do_while_stmt_200_branch", condition_width => 1,  bypass_flag => true)
        port map( -- 
          condition => condition_sig,
          req => do_while_stmt_200_branch_req_0,
          ack0 => do_while_stmt_200_branch_ack_0,
          ack1 => do_while_stmt_200_branch_ack_1,
          clk => clk,
          reset => reset); -- 
      --
    end Block; -- branch-block
    -- binary operator CONCAT_u1_u33_212_inst
    process(type_cast_210_wire_constant, a_204) -- 
      variable tmp_var : std_logic_vector(32 downto 0); -- 
    begin -- 
      ApConcat_proc(type_cast_210_wire_constant, a_204, tmp_var);
      CONCAT_u1_u33_212_wire <= tmp_var; --
    end process;
    -- binary operator CONCAT_u33_u105_214_inst
    process(CONCAT_u1_u33_212_wire, dbm_207) -- 
      variable tmp_var : std_logic_vector(104 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u33_212_wire, dbm_207, tmp_var);
      nadbm_215 <= tmp_var; --
    end process;
    -- shared inport operator group (0) : RPIPE_axi_write_address_203_inst 
    InportGroup_0: Block -- 
      signal data_out: std_logic_vector(31 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_axi_write_address_203_inst_req_0;
      RPIPE_axi_write_address_203_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_axi_write_address_203_inst_req_1;
      RPIPE_axi_write_address_203_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      a_204 <= data_out(31 downto 0);
      axi_write_address_read_0_gI: SplitGuardInterface generic map(name => "axi_write_address_read_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      axi_write_address_read_0: InputPort_P2P -- 
        generic map ( name => "axi_write_address_read_0", data_width => 32,    bypass_flag => false,   	nonblocking_read_flag => false,  barrier_flag => false,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => axi_write_address_pipe_read_req(0),
          oack => axi_write_address_pipe_read_ack(0),
          odata => axi_write_address_pipe_read_data(31 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 0
    -- shared inport operator group (1) : RPIPE_axi_write_data_and_byte_mask_206_inst 
    InportGroup_1: Block -- 
      signal data_out: std_logic_vector(71 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_axi_write_data_and_byte_mask_206_inst_req_0;
      RPIPE_axi_write_data_and_byte_mask_206_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_axi_write_data_and_byte_mask_206_inst_req_1;
      RPIPE_axi_write_data_and_byte_mask_206_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      dbm_207 <= data_out(71 downto 0);
      axi_write_data_and_byte_mask_read_1_gI: SplitGuardInterface generic map(name => "axi_write_data_and_byte_mask_read_1_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      axi_write_data_and_byte_mask_read_1: InputPort_P2P -- 
        generic map ( name => "axi_write_data_and_byte_mask_read_1", data_width => 72,    bypass_flag => false,   	nonblocking_read_flag => false,  barrier_flag => false,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => axi_write_data_and_byte_mask_pipe_read_req(0),
          oack => axi_write_data_and_byte_mask_pipe_read_ack(0),
          odata => axi_write_data_and_byte_mask_pipe_read_data(71 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 1
    -- shared outport operator group (0) : WPIPE_noblock_axi_write_command_216_inst 
    OutportGroup_0: Block -- 
      signal data_in: std_logic_vector(104 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_noblock_axi_write_command_216_inst_req_0;
      WPIPE_noblock_axi_write_command_216_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_noblock_axi_write_command_216_inst_req_1;
      WPIPE_noblock_axi_write_command_216_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= nadbm_215;
      noblock_axi_write_command_write_0_gI: SplitGuardInterface generic map(name => "noblock_axi_write_command_write_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      noblock_axi_write_command_write_0: OutputPortRevised -- 
        generic map ( name => "noblock_axi_write_command", data_width => 105, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => noblock_axi_write_command_pipe_write_req(0),
          oack => noblock_axi_write_command_pipe_write_ack(0),
          odata => noblock_axi_write_command_pipe_write_data(104 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    -- 
  end Block; -- data_path
  -- 
end axi_to_acb_write_daemon_arch;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
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
library AxiBridgeLib;
use AxiBridgeLib.axi_acb_core_global_package.all;
entity axi_acb_core is  -- system 
  port (-- 
    clk : in std_logic;
    reset : in std_logic;
    ACB_BUS_REQUEST_pipe_read_data: out std_logic_vector(109 downto 0);
    ACB_BUS_REQUEST_pipe_read_req : in std_logic_vector(0 downto 0);
    ACB_BUS_REQUEST_pipe_read_ack : out std_logic_vector(0 downto 0);
    ACB_BUS_RESPONSE_pipe_write_data: in std_logic_vector(64 downto 0);
    ACB_BUS_RESPONSE_pipe_write_req : in std_logic_vector(0 downto 0);
    ACB_BUS_RESPONSE_pipe_write_ack : out std_logic_vector(0 downto 0);
    axi_read_address_pipe_write_data: in std_logic_vector(31 downto 0);
    axi_read_address_pipe_write_req : in std_logic_vector(0 downto 0);
    axi_read_address_pipe_write_ack : out std_logic_vector(0 downto 0);
    axi_read_data_pipe_read_data: out std_logic_vector(63 downto 0);
    axi_read_data_pipe_read_req : in std_logic_vector(0 downto 0);
    axi_read_data_pipe_read_ack : out std_logic_vector(0 downto 0);
    axi_write_address_pipe_write_data: in std_logic_vector(31 downto 0);
    axi_write_address_pipe_write_req : in std_logic_vector(0 downto 0);
    axi_write_address_pipe_write_ack : out std_logic_vector(0 downto 0);
    axi_write_data_and_byte_mask_pipe_write_data: in std_logic_vector(71 downto 0);
    axi_write_data_and_byte_mask_pipe_write_req : in std_logic_vector(0 downto 0);
    axi_write_data_and_byte_mask_pipe_write_ack : out std_logic_vector(0 downto 0);
    axi_write_status_pipe_read_data: out std_logic_vector(1 downto 0);
    axi_write_status_pipe_read_req : in std_logic_vector(0 downto 0);
    axi_write_status_pipe_read_ack : out std_logic_vector(0 downto 0)); -- 
  -- 
end entity; 
architecture axi_acb_core_arch  of axi_acb_core is -- system-architecture 
  -- declarations related to module axi_to_acb_bridge_daemon
  component axi_to_acb_bridge_daemon is -- 
    generic (tag_length : integer); 
    port ( -- 
      ACB_BUS_RESPONSE_pipe_read_req : out  std_logic_vector(0 downto 0);
      ACB_BUS_RESPONSE_pipe_read_ack : in   std_logic_vector(0 downto 0);
      ACB_BUS_RESPONSE_pipe_read_data : in   std_logic_vector(64 downto 0);
      noblock_axi_read_command_pipe_read_req : out  std_logic_vector(0 downto 0);
      noblock_axi_read_command_pipe_read_ack : in   std_logic_vector(0 downto 0);
      noblock_axi_read_command_pipe_read_data : in   std_logic_vector(32 downto 0);
      noblock_axi_write_command_pipe_read_req : out  std_logic_vector(0 downto 0);
      noblock_axi_write_command_pipe_read_ack : in   std_logic_vector(0 downto 0);
      noblock_axi_write_command_pipe_read_data : in   std_logic_vector(104 downto 0);
      ACB_BUS_REQUEST_pipe_write_req : out  std_logic_vector(0 downto 0);
      ACB_BUS_REQUEST_pipe_write_ack : in   std_logic_vector(0 downto 0);
      ACB_BUS_REQUEST_pipe_write_data : out  std_logic_vector(109 downto 0);
      axi_read_data_pipe_write_req : out  std_logic_vector(0 downto 0);
      axi_read_data_pipe_write_ack : in   std_logic_vector(0 downto 0);
      axi_read_data_pipe_write_data : out  std_logic_vector(63 downto 0);
      axi_write_status_pipe_write_req : out  std_logic_vector(0 downto 0);
      axi_write_status_pipe_write_ack : in   std_logic_vector(0 downto 0);
      axi_write_status_pipe_write_data : out  std_logic_vector(1 downto 0);
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
  -- argument signals for module axi_to_acb_bridge_daemon
  signal axi_to_acb_bridge_daemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal axi_to_acb_bridge_daemon_tag_out   : std_logic_vector(1 downto 0);
  signal axi_to_acb_bridge_daemon_start_req : std_logic;
  signal axi_to_acb_bridge_daemon_start_ack : std_logic;
  signal axi_to_acb_bridge_daemon_fin_req   : std_logic;
  signal axi_to_acb_bridge_daemon_fin_ack : std_logic;
  -- declarations related to module axi_to_acb_read_daemon
  component axi_to_acb_read_daemon is -- 
    generic (tag_length : integer); 
    port ( -- 
      axi_read_address_pipe_read_req : out  std_logic_vector(0 downto 0);
      axi_read_address_pipe_read_ack : in   std_logic_vector(0 downto 0);
      axi_read_address_pipe_read_data : in   std_logic_vector(31 downto 0);
      noblock_axi_read_command_pipe_write_req : out  std_logic_vector(0 downto 0);
      noblock_axi_read_command_pipe_write_ack : in   std_logic_vector(0 downto 0);
      noblock_axi_read_command_pipe_write_data : out  std_logic_vector(32 downto 0);
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
  -- argument signals for module axi_to_acb_read_daemon
  signal axi_to_acb_read_daemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal axi_to_acb_read_daemon_tag_out   : std_logic_vector(1 downto 0);
  signal axi_to_acb_read_daemon_start_req : std_logic;
  signal axi_to_acb_read_daemon_start_ack : std_logic;
  signal axi_to_acb_read_daemon_fin_req   : std_logic;
  signal axi_to_acb_read_daemon_fin_ack : std_logic;
  -- declarations related to module axi_to_acb_write_daemon
  component axi_to_acb_write_daemon is -- 
    generic (tag_length : integer); 
    port ( -- 
      axi_write_address_pipe_read_req : out  std_logic_vector(0 downto 0);
      axi_write_address_pipe_read_ack : in   std_logic_vector(0 downto 0);
      axi_write_address_pipe_read_data : in   std_logic_vector(31 downto 0);
      axi_write_data_and_byte_mask_pipe_read_req : out  std_logic_vector(0 downto 0);
      axi_write_data_and_byte_mask_pipe_read_ack : in   std_logic_vector(0 downto 0);
      axi_write_data_and_byte_mask_pipe_read_data : in   std_logic_vector(71 downto 0);
      noblock_axi_write_command_pipe_write_req : out  std_logic_vector(0 downto 0);
      noblock_axi_write_command_pipe_write_ack : in   std_logic_vector(0 downto 0);
      noblock_axi_write_command_pipe_write_data : out  std_logic_vector(104 downto 0);
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
  -- argument signals for module axi_to_acb_write_daemon
  signal axi_to_acb_write_daemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal axi_to_acb_write_daemon_tag_out   : std_logic_vector(1 downto 0);
  signal axi_to_acb_write_daemon_start_req : std_logic;
  signal axi_to_acb_write_daemon_start_ack : std_logic;
  signal axi_to_acb_write_daemon_fin_req   : std_logic;
  signal axi_to_acb_write_daemon_fin_ack : std_logic;
  -- aggregate signals for write to pipe ACB_BUS_REQUEST
  signal ACB_BUS_REQUEST_pipe_write_data: std_logic_vector(109 downto 0);
  signal ACB_BUS_REQUEST_pipe_write_req: std_logic_vector(0 downto 0);
  signal ACB_BUS_REQUEST_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe ACB_BUS_RESPONSE
  signal ACB_BUS_RESPONSE_pipe_read_data: std_logic_vector(64 downto 0);
  signal ACB_BUS_RESPONSE_pipe_read_req: std_logic_vector(0 downto 0);
  signal ACB_BUS_RESPONSE_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe axi_read_address
  signal axi_read_address_pipe_read_data: std_logic_vector(31 downto 0);
  signal axi_read_address_pipe_read_req: std_logic_vector(0 downto 0);
  signal axi_read_address_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe axi_read_data
  signal axi_read_data_pipe_write_data: std_logic_vector(63 downto 0);
  signal axi_read_data_pipe_write_req: std_logic_vector(0 downto 0);
  signal axi_read_data_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe axi_write_address
  signal axi_write_address_pipe_read_data: std_logic_vector(31 downto 0);
  signal axi_write_address_pipe_read_req: std_logic_vector(0 downto 0);
  signal axi_write_address_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe axi_write_data_and_byte_mask
  signal axi_write_data_and_byte_mask_pipe_read_data: std_logic_vector(71 downto 0);
  signal axi_write_data_and_byte_mask_pipe_read_req: std_logic_vector(0 downto 0);
  signal axi_write_data_and_byte_mask_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe axi_write_status
  signal axi_write_status_pipe_write_data: std_logic_vector(1 downto 0);
  signal axi_write_status_pipe_write_req: std_logic_vector(0 downto 0);
  signal axi_write_status_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe noblock_axi_read_command
  signal noblock_axi_read_command_pipe_write_data: std_logic_vector(32 downto 0);
  signal noblock_axi_read_command_pipe_write_req: std_logic_vector(0 downto 0);
  signal noblock_axi_read_command_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe noblock_axi_read_command
  signal noblock_axi_read_command_pipe_read_data: std_logic_vector(32 downto 0);
  signal noblock_axi_read_command_pipe_read_req: std_logic_vector(0 downto 0);
  signal noblock_axi_read_command_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe noblock_axi_write_command
  signal noblock_axi_write_command_pipe_write_data: std_logic_vector(104 downto 0);
  signal noblock_axi_write_command_pipe_write_req: std_logic_vector(0 downto 0);
  signal noblock_axi_write_command_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe noblock_axi_write_command
  signal noblock_axi_write_command_pipe_read_data: std_logic_vector(104 downto 0);
  signal noblock_axi_write_command_pipe_read_req: std_logic_vector(0 downto 0);
  signal noblock_axi_write_command_pipe_read_ack: std_logic_vector(0 downto 0);
  -- gated clock signal declarations.
  -- 
begin -- 
  -- module axi_to_acb_bridge_daemon
  axi_to_acb_bridge_daemon_instance:axi_to_acb_bridge_daemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => axi_to_acb_bridge_daemon_start_req,
      start_ack => axi_to_acb_bridge_daemon_start_ack,
      fin_req => axi_to_acb_bridge_daemon_fin_req,
      fin_ack => axi_to_acb_bridge_daemon_fin_ack,
      clk => clk,
      reset => reset,
      ACB_BUS_RESPONSE_pipe_read_req => ACB_BUS_RESPONSE_pipe_read_req(0 downto 0),
      ACB_BUS_RESPONSE_pipe_read_ack => ACB_BUS_RESPONSE_pipe_read_ack(0 downto 0),
      ACB_BUS_RESPONSE_pipe_read_data => ACB_BUS_RESPONSE_pipe_read_data(64 downto 0),
      noblock_axi_read_command_pipe_read_req => noblock_axi_read_command_pipe_read_req(0 downto 0),
      noblock_axi_read_command_pipe_read_ack => noblock_axi_read_command_pipe_read_ack(0 downto 0),
      noblock_axi_read_command_pipe_read_data => noblock_axi_read_command_pipe_read_data(32 downto 0),
      noblock_axi_write_command_pipe_read_req => noblock_axi_write_command_pipe_read_req(0 downto 0),
      noblock_axi_write_command_pipe_read_ack => noblock_axi_write_command_pipe_read_ack(0 downto 0),
      noblock_axi_write_command_pipe_read_data => noblock_axi_write_command_pipe_read_data(104 downto 0),
      ACB_BUS_REQUEST_pipe_write_req => ACB_BUS_REQUEST_pipe_write_req(0 downto 0),
      ACB_BUS_REQUEST_pipe_write_ack => ACB_BUS_REQUEST_pipe_write_ack(0 downto 0),
      ACB_BUS_REQUEST_pipe_write_data => ACB_BUS_REQUEST_pipe_write_data(109 downto 0),
      axi_read_data_pipe_write_req => axi_read_data_pipe_write_req(0 downto 0),
      axi_read_data_pipe_write_ack => axi_read_data_pipe_write_ack(0 downto 0),
      axi_read_data_pipe_write_data => axi_read_data_pipe_write_data(63 downto 0),
      axi_write_status_pipe_write_req => axi_write_status_pipe_write_req(0 downto 0),
      axi_write_status_pipe_write_ack => axi_write_status_pipe_write_ack(0 downto 0),
      axi_write_status_pipe_write_data => axi_write_status_pipe_write_data(1 downto 0),
      tag_in => axi_to_acb_bridge_daemon_tag_in,
      tag_out => axi_to_acb_bridge_daemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  axi_to_acb_bridge_daemon_tag_in <= (others => '0');
  axi_to_acb_bridge_daemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => axi_to_acb_bridge_daemon_start_req, start_ack => axi_to_acb_bridge_daemon_start_ack,  fin_req => axi_to_acb_bridge_daemon_fin_req,  fin_ack => axi_to_acb_bridge_daemon_fin_ack);
  -- module axi_to_acb_read_daemon
  axi_to_acb_read_daemon_instance:axi_to_acb_read_daemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => axi_to_acb_read_daemon_start_req,
      start_ack => axi_to_acb_read_daemon_start_ack,
      fin_req => axi_to_acb_read_daemon_fin_req,
      fin_ack => axi_to_acb_read_daemon_fin_ack,
      clk => clk,
      reset => reset,
      axi_read_address_pipe_read_req => axi_read_address_pipe_read_req(0 downto 0),
      axi_read_address_pipe_read_ack => axi_read_address_pipe_read_ack(0 downto 0),
      axi_read_address_pipe_read_data => axi_read_address_pipe_read_data(31 downto 0),
      noblock_axi_read_command_pipe_write_req => noblock_axi_read_command_pipe_write_req(0 downto 0),
      noblock_axi_read_command_pipe_write_ack => noblock_axi_read_command_pipe_write_ack(0 downto 0),
      noblock_axi_read_command_pipe_write_data => noblock_axi_read_command_pipe_write_data(32 downto 0),
      tag_in => axi_to_acb_read_daemon_tag_in,
      tag_out => axi_to_acb_read_daemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  axi_to_acb_read_daemon_tag_in <= (others => '0');
  axi_to_acb_read_daemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => axi_to_acb_read_daemon_start_req, start_ack => axi_to_acb_read_daemon_start_ack,  fin_req => axi_to_acb_read_daemon_fin_req,  fin_ack => axi_to_acb_read_daemon_fin_ack);
  -- module axi_to_acb_write_daemon
  axi_to_acb_write_daemon_instance:axi_to_acb_write_daemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => axi_to_acb_write_daemon_start_req,
      start_ack => axi_to_acb_write_daemon_start_ack,
      fin_req => axi_to_acb_write_daemon_fin_req,
      fin_ack => axi_to_acb_write_daemon_fin_ack,
      clk => clk,
      reset => reset,
      axi_write_address_pipe_read_req => axi_write_address_pipe_read_req(0 downto 0),
      axi_write_address_pipe_read_ack => axi_write_address_pipe_read_ack(0 downto 0),
      axi_write_address_pipe_read_data => axi_write_address_pipe_read_data(31 downto 0),
      axi_write_data_and_byte_mask_pipe_read_req => axi_write_data_and_byte_mask_pipe_read_req(0 downto 0),
      axi_write_data_and_byte_mask_pipe_read_ack => axi_write_data_and_byte_mask_pipe_read_ack(0 downto 0),
      axi_write_data_and_byte_mask_pipe_read_data => axi_write_data_and_byte_mask_pipe_read_data(71 downto 0),
      noblock_axi_write_command_pipe_write_req => noblock_axi_write_command_pipe_write_req(0 downto 0),
      noblock_axi_write_command_pipe_write_ack => noblock_axi_write_command_pipe_write_ack(0 downto 0),
      noblock_axi_write_command_pipe_write_data => noblock_axi_write_command_pipe_write_data(104 downto 0),
      tag_in => axi_to_acb_write_daemon_tag_in,
      tag_out => axi_to_acb_write_daemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  axi_to_acb_write_daemon_tag_in <= (others => '0');
  axi_to_acb_write_daemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => axi_to_acb_write_daemon_start_req, start_ack => axi_to_acb_write_daemon_start_ack,  fin_req => axi_to_acb_write_daemon_fin_req,  fin_ack => axi_to_acb_write_daemon_fin_ack);
  ACB_BUS_REQUEST_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe ACB_BUS_REQUEST",
      num_reads => 1,
      num_writes => 1,
      data_width => 110,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => ACB_BUS_REQUEST_pipe_read_req,
      read_ack => ACB_BUS_REQUEST_pipe_read_ack,
      read_data => ACB_BUS_REQUEST_pipe_read_data,
      write_req => ACB_BUS_REQUEST_pipe_write_req,
      write_ack => ACB_BUS_REQUEST_pipe_write_ack,
      write_data => ACB_BUS_REQUEST_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  ACB_BUS_RESPONSE_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe ACB_BUS_RESPONSE",
      num_reads => 1,
      num_writes => 1,
      data_width => 65,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => ACB_BUS_RESPONSE_pipe_read_req,
      read_ack => ACB_BUS_RESPONSE_pipe_read_ack,
      read_data => ACB_BUS_RESPONSE_pipe_read_data,
      write_req => ACB_BUS_RESPONSE_pipe_write_req,
      write_ack => ACB_BUS_RESPONSE_pipe_write_ack,
      write_data => ACB_BUS_RESPONSE_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  axi_read_address_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe axi_read_address",
      num_reads => 1,
      num_writes => 1,
      data_width => 32,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => axi_read_address_pipe_read_req,
      read_ack => axi_read_address_pipe_read_ack,
      read_data => axi_read_address_pipe_read_data,
      write_req => axi_read_address_pipe_write_req,
      write_ack => axi_read_address_pipe_write_ack,
      write_data => axi_read_address_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  axi_read_data_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe axi_read_data",
      num_reads => 1,
      num_writes => 1,
      data_width => 64,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => axi_read_data_pipe_read_req,
      read_ack => axi_read_data_pipe_read_ack,
      read_data => axi_read_data_pipe_read_data,
      write_req => axi_read_data_pipe_write_req,
      write_ack => axi_read_data_pipe_write_ack,
      write_data => axi_read_data_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  axi_write_address_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe axi_write_address",
      num_reads => 1,
      num_writes => 1,
      data_width => 32,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => axi_write_address_pipe_read_req,
      read_ack => axi_write_address_pipe_read_ack,
      read_data => axi_write_address_pipe_read_data,
      write_req => axi_write_address_pipe_write_req,
      write_ack => axi_write_address_pipe_write_ack,
      write_data => axi_write_address_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  axi_write_data_and_byte_mask_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe axi_write_data_and_byte_mask",
      num_reads => 1,
      num_writes => 1,
      data_width => 72,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => axi_write_data_and_byte_mask_pipe_read_req,
      read_ack => axi_write_data_and_byte_mask_pipe_read_ack,
      read_data => axi_write_data_and_byte_mask_pipe_read_data,
      write_req => axi_write_data_and_byte_mask_pipe_write_req,
      write_ack => axi_write_data_and_byte_mask_pipe_write_ack,
      write_data => axi_write_data_and_byte_mask_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  axi_write_status_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe axi_write_status",
      num_reads => 1,
      num_writes => 1,
      data_width => 2,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => axi_write_status_pipe_read_req,
      read_ack => axi_write_status_pipe_read_ack,
      read_data => axi_write_status_pipe_read_data,
      write_req => axi_write_status_pipe_write_req,
      write_ack => axi_write_status_pipe_write_ack,
      write_data => axi_write_status_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  noblock_axi_read_command_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe noblock_axi_read_command",
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
      read_req => noblock_axi_read_command_pipe_read_req,
      read_ack => noblock_axi_read_command_pipe_read_ack,
      read_data => noblock_axi_read_command_pipe_read_data,
      write_req => noblock_axi_read_command_pipe_write_req,
      write_ack => noblock_axi_read_command_pipe_write_ack,
      write_data => noblock_axi_read_command_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  noblock_axi_write_command_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe noblock_axi_write_command",
      num_reads => 1,
      num_writes => 1,
      data_width => 105,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => noblock_axi_write_command_pipe_read_req,
      read_ack => noblock_axi_write_command_pipe_read_ack,
      read_data => noblock_axi_write_command_pipe_read_data,
      write_req => noblock_axi_write_command_pipe_write_req,
      write_ack => noblock_axi_write_command_pipe_write_ack,
      write_data => noblock_axi_write_command_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- gated clock generators 
  -- 
end axi_acb_core_arch;
