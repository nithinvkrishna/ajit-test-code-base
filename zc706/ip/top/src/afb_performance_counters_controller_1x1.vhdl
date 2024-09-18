-- VHDL global package produced by vc2vhdl from virtual circuit (vc) description 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
package afb_performance_counters_controller_1x1_global_package is -- 
  constant default_mem_pool_base_address : std_logic_vector(0 downto 0) := "0";
  component afb_performance_counters_controller_1x1 is -- 
    port (-- 
      clk : in std_logic;
      reset : in std_logic;
      AFB_PERFORMANCE_COUNTER_REQUEST_pipe_write_data: in std_logic_vector(73 downto 0);
      AFB_PERFORMANCE_COUNTER_REQUEST_pipe_write_req : in std_logic_vector(0 downto 0);
      AFB_PERFORMANCE_COUNTER_REQUEST_pipe_write_ack : out std_logic_vector(0 downto 0);
      AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_read_data: out std_logic_vector(32 downto 0);
      AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_read_req : in std_logic_vector(0 downto 0);
      AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_read_ack : out std_logic_vector(0 downto 0);
      PC_ADDR_0_0_pipe_read_data: out std_logic_vector(7 downto 0);
      PC_ADDR_0_0_pipe_read_req : in std_logic_vector(0 downto 0);
      PC_ADDR_0_0_pipe_read_ack : out std_logic_vector(0 downto 0);
      PC_VALUE_0_0_pipe_write_data: in std_logic_vector(31 downto 0);
      PC_VALUE_0_0_pipe_write_req : in std_logic_vector(0 downto 0);
      PC_VALUE_0_0_pipe_write_ack : out std_logic_vector(0 downto 0)); -- 
    -- 
  end component;
  -- 
end package afb_performance_counters_controller_1x1_global_package;
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
library performance_counters_lib;
use performance_counters_lib.afb_performance_counters_controller_1x1_global_package.all;
entity performance_counters_controller_1_1_daemon is -- 
  generic (tag_length : integer); 
  port ( -- 
    AFB_PERFORMANCE_COUNTER_REQUEST_pipe_read_req : out  std_logic_vector(0 downto 0);
    AFB_PERFORMANCE_COUNTER_REQUEST_pipe_read_ack : in   std_logic_vector(0 downto 0);
    AFB_PERFORMANCE_COUNTER_REQUEST_pipe_read_data : in   std_logic_vector(73 downto 0);
    PC_VALUE_0_0_pipe_read_req : out  std_logic_vector(0 downto 0);
    PC_VALUE_0_0_pipe_read_ack : in   std_logic_vector(0 downto 0);
    PC_VALUE_0_0_pipe_read_data : in   std_logic_vector(31 downto 0);
    AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_write_req : out  std_logic_vector(0 downto 0);
    AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_write_ack : in   std_logic_vector(0 downto 0);
    AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_write_data : out  std_logic_vector(32 downto 0);
    PC_ADDR_0_0_pipe_write_req : out  std_logic_vector(0 downto 0);
    PC_ADDR_0_0_pipe_write_ack : in   std_logic_vector(0 downto 0);
    PC_ADDR_0_0_pipe_write_data : out  std_logic_vector(7 downto 0);
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
end entity performance_counters_controller_1_1_daemon;
architecture performance_counters_controller_1_1_daemon_arch of performance_counters_controller_1_1_daemon is -- 
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
  signal performance_counters_controller_1_1_daemon_CP_139_start: Boolean;
  signal performance_counters_controller_1_1_daemon_CP_139_symbol: Boolean;
  -- volatile/operator module components. 
  -- links between control-path and data-path
  signal do_while_stmt_286_branch_req_0 : boolean;
  signal RPIPE_AFB_PERFORMANCE_COUNTER_REQUEST_290_inst_req_0 : boolean;
  signal RPIPE_AFB_PERFORMANCE_COUNTER_REQUEST_290_inst_ack_0 : boolean;
  signal RPIPE_AFB_PERFORMANCE_COUNTER_REQUEST_290_inst_req_1 : boolean;
  signal RPIPE_AFB_PERFORMANCE_COUNTER_REQUEST_290_inst_ack_1 : boolean;
  signal WPIPE_PC_ADDR_0_0_310_inst_req_0 : boolean;
  signal WPIPE_PC_ADDR_0_0_310_inst_ack_0 : boolean;
  signal WPIPE_PC_ADDR_0_0_310_inst_req_1 : boolean;
  signal WPIPE_PC_ADDR_0_0_310_inst_ack_1 : boolean;
  signal RPIPE_PC_VALUE_0_0_315_inst_req_0 : boolean;
  signal RPIPE_PC_VALUE_0_0_315_inst_ack_0 : boolean;
  signal RPIPE_PC_VALUE_0_0_315_inst_req_1 : boolean;
  signal RPIPE_PC_VALUE_0_0_315_inst_ack_1 : boolean;
  signal WPIPE_AFB_PERFORMANCE_COUNTER_RESPONSE_326_inst_req_0 : boolean;
  signal WPIPE_AFB_PERFORMANCE_COUNTER_RESPONSE_326_inst_ack_0 : boolean;
  signal WPIPE_AFB_PERFORMANCE_COUNTER_RESPONSE_326_inst_req_1 : boolean;
  signal WPIPE_AFB_PERFORMANCE_COUNTER_RESPONSE_326_inst_ack_1 : boolean;
  signal do_while_stmt_286_branch_ack_0 : boolean;
  signal do_while_stmt_286_branch_ack_1 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "performance_counters_controller_1_1_daemon_input_buffer", -- 
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
  performance_counters_controller_1_1_daemon_CP_139_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "performance_counters_controller_1_1_daemon_out_buffer", -- 
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
    preds <= performance_counters_controller_1_1_daemon_CP_139_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
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
    preds <= performance_counters_controller_1_1_daemon_CP_139_start & tag_ilock_write_ack_symbol;
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
    preds <= performance_counters_controller_1_1_daemon_CP_139_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  performance_counters_controller_1_1_daemon_CP_139: Block -- control-path 
    signal performance_counters_controller_1_1_daemon_CP_139_elements: BooleanArray(32 downto 0);
    -- 
  begin -- 
    performance_counters_controller_1_1_daemon_CP_139_elements(0) <= performance_counters_controller_1_1_daemon_CP_139_start;
    performance_counters_controller_1_1_daemon_CP_139_symbol <= performance_counters_controller_1_1_daemon_CP_139_elements(1);
    -- CP-element group 0:  transition  place  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	2 
    -- CP-element group 0:  members (4) 
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 branch_block_stmt_285/$entry
      -- CP-element group 0: 	 branch_block_stmt_285/branch_block_stmt_285__entry__
      -- CP-element group 0: 	 branch_block_stmt_285/do_while_stmt_286__entry__
      -- 
    -- CP-element group 1:  transition  place  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	32 
    -- CP-element group 1: successors 
    -- CP-element group 1:  members (4) 
      -- CP-element group 1: 	 $exit
      -- CP-element group 1: 	 branch_block_stmt_285/$exit
      -- CP-element group 1: 	 branch_block_stmt_285/branch_block_stmt_285__exit__
      -- CP-element group 1: 	 branch_block_stmt_285/do_while_stmt_286__exit__
      -- 
    performance_counters_controller_1_1_daemon_CP_139_elements(1) <= performance_counters_controller_1_1_daemon_CP_139_elements(32);
    -- CP-element group 2:  transition  place  bypass  pipeline-parent 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	0 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	8 
    -- CP-element group 2:  members (2) 
      -- CP-element group 2: 	 branch_block_stmt_285/do_while_stmt_286/$entry
      -- CP-element group 2: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286__entry__
      -- 
    performance_counters_controller_1_1_daemon_CP_139_elements(2) <= performance_counters_controller_1_1_daemon_CP_139_elements(0);
    -- CP-element group 3:  merge  place  bypass  pipeline-parent 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	32 
    -- CP-element group 3:  members (1) 
      -- CP-element group 3: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286__exit__
      -- 
    -- Element group performance_counters_controller_1_1_daemon_CP_139_elements(3) is bound as output of CP function.
    -- CP-element group 4:  merge  place  bypass  pipeline-parent 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	7 
    -- CP-element group 4:  members (1) 
      -- CP-element group 4: 	 branch_block_stmt_285/do_while_stmt_286/loop_back
      -- 
    -- Element group performance_counters_controller_1_1_daemon_CP_139_elements(4) is bound as output of CP function.
    -- CP-element group 5:  branch  transition  place  bypass  pipeline-parent 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	10 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	31 
    -- CP-element group 5: 	30 
    -- CP-element group 5:  members (3) 
      -- CP-element group 5: 	 branch_block_stmt_285/do_while_stmt_286/condition_done
      -- CP-element group 5: 	 branch_block_stmt_285/do_while_stmt_286/loop_exit/$entry
      -- CP-element group 5: 	 branch_block_stmt_285/do_while_stmt_286/loop_taken/$entry
      -- 
    performance_counters_controller_1_1_daemon_CP_139_elements(5) <= performance_counters_controller_1_1_daemon_CP_139_elements(10);
    -- CP-element group 6:  branch  place  bypass  pipeline-parent 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	29 
    -- CP-element group 6: successors 
    -- CP-element group 6:  members (1) 
      -- CP-element group 6: 	 branch_block_stmt_285/do_while_stmt_286/loop_body_done
      -- 
    performance_counters_controller_1_1_daemon_CP_139_elements(6) <= performance_counters_controller_1_1_daemon_CP_139_elements(29);
    -- CP-element group 7:  transition  bypass  pipeline-parent 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	4 
    -- CP-element group 7: successors 
    -- CP-element group 7:  members (1) 
      -- CP-element group 7: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/back_edge_to_loop_body
      -- 
    performance_counters_controller_1_1_daemon_CP_139_elements(7) <= performance_counters_controller_1_1_daemon_CP_139_elements(4);
    -- CP-element group 8:  transition  bypass  pipeline-parent 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	2 
    -- CP-element group 8: successors 
    -- CP-element group 8:  members (1) 
      -- CP-element group 8: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/first_time_through_loop_body
      -- 
    performance_counters_controller_1_1_daemon_CP_139_elements(8) <= performance_counters_controller_1_1_daemon_CP_139_elements(2);
    -- CP-element group 9:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	11 
    -- CP-element group 9: 	28 
    -- CP-element group 9: 	13 
    -- CP-element group 9:  members (3) 
      -- CP-element group 9: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/$entry
      -- CP-element group 9: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/loop_body_start
      -- CP-element group 9: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/phi_stmt_288_sample_start_
      -- 
    -- Element group performance_counters_controller_1_1_daemon_CP_139_elements(9) is bound as output of CP function.
    -- CP-element group 10:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	12 
    -- CP-element group 10: 	28 
    -- CP-element group 10: 	17 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	5 
    -- CP-element group 10:  members (1) 
      -- CP-element group 10: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/condition_evaluated
      -- 
    condition_evaluated_163_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " condition_evaluated_163_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_controller_1_1_daemon_CP_139_elements(10), ack => do_while_stmt_286_branch_req_0); -- 
    performance_counters_controller_1_1_daemon_cp_element_group_10: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 62) := "performance_counters_controller_1_1_daemon_cp_element_group_10"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= performance_counters_controller_1_1_daemon_CP_139_elements(12) & performance_counters_controller_1_1_daemon_CP_139_elements(28) & performance_counters_controller_1_1_daemon_CP_139_elements(17);
      gj_performance_counters_controller_1_1_daemon_cp_element_group_10 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_controller_1_1_daemon_CP_139_elements(10), clk => clk, reset => reset); --
    end block;
    -- CP-element group 11:  join  transition  bypass  pipeline-parent 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	9 
    -- CP-element group 11: marked-predecessors 
    -- CP-element group 11: 	17 
    -- CP-element group 11: successors 
    -- CP-element group 11: 	14 
    -- CP-element group 11:  members (1) 
      -- CP-element group 11: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/aggregated_phi_sample_req
      -- 
    performance_counters_controller_1_1_daemon_cp_element_group_11: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 62) := "performance_counters_controller_1_1_daemon_cp_element_group_11"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_controller_1_1_daemon_CP_139_elements(9) & performance_counters_controller_1_1_daemon_CP_139_elements(17);
      gj_performance_counters_controller_1_1_daemon_cp_element_group_11 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_controller_1_1_daemon_CP_139_elements(11), clk => clk, reset => reset); --
    end block;
    -- CP-element group 12:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	16 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	10 
    -- CP-element group 12:  members (1) 
      -- CP-element group 12: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/aggregated_phi_sample_ack_d
      -- 
    -- Element group performance_counters_controller_1_1_daemon_CP_139_elements(12) is a control-delay.
    cp_element_12_delay: control_delay_element  generic map(name => " 12_delay", delay_value => 1)  port map(req => performance_counters_controller_1_1_daemon_CP_139_elements(16), ack => performance_counters_controller_1_1_daemon_CP_139_elements(12), clk => clk, reset =>reset);
    -- CP-element group 13:  join  transition  bypass  pipeline-parent 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: 	9 
    -- CP-element group 13: marked-predecessors 
    -- CP-element group 13: 	23 
    -- CP-element group 13: 	19 
    -- CP-element group 13: successors 
    -- CP-element group 13: 	15 
    -- CP-element group 13:  members (2) 
      -- CP-element group 13: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/aggregated_phi_update_req
      -- CP-element group 13: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/phi_stmt_288_update_start_
      -- 
    performance_counters_controller_1_1_daemon_cp_element_group_13: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 62) := "performance_counters_controller_1_1_daemon_cp_element_group_13"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= performance_counters_controller_1_1_daemon_CP_139_elements(9) & performance_counters_controller_1_1_daemon_CP_139_elements(23) & performance_counters_controller_1_1_daemon_CP_139_elements(19);
      gj_performance_counters_controller_1_1_daemon_cp_element_group_13 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_controller_1_1_daemon_CP_139_elements(13), clk => clk, reset => reset); --
    end block;
    -- CP-element group 14:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: 	11 
    -- CP-element group 14: marked-predecessors 
    -- CP-element group 14: 	17 
    -- CP-element group 14: successors 
    -- CP-element group 14: 	16 
    -- CP-element group 14:  members (3) 
      -- CP-element group 14: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/RPIPE_AFB_PERFORMANCE_COUNTER_REQUEST_290_sample_start_
      -- CP-element group 14: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/RPIPE_AFB_PERFORMANCE_COUNTER_REQUEST_290_Sample/$entry
      -- CP-element group 14: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/RPIPE_AFB_PERFORMANCE_COUNTER_REQUEST_290_Sample/rr
      -- 
    rr_181_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_181_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_controller_1_1_daemon_CP_139_elements(14), ack => RPIPE_AFB_PERFORMANCE_COUNTER_REQUEST_290_inst_req_0); -- 
    performance_counters_controller_1_1_daemon_cp_element_group_14: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 62) := "performance_counters_controller_1_1_daemon_cp_element_group_14"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_controller_1_1_daemon_CP_139_elements(11) & performance_counters_controller_1_1_daemon_CP_139_elements(17);
      gj_performance_counters_controller_1_1_daemon_cp_element_group_14 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_controller_1_1_daemon_CP_139_elements(14), clk => clk, reset => reset); --
    end block;
    -- CP-element group 15:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: 	16 
    -- CP-element group 15: 	13 
    -- CP-element group 15: successors 
    -- CP-element group 15: 	17 
    -- CP-element group 15:  members (3) 
      -- CP-element group 15: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/RPIPE_AFB_PERFORMANCE_COUNTER_REQUEST_290_update_start_
      -- CP-element group 15: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/RPIPE_AFB_PERFORMANCE_COUNTER_REQUEST_290_Update/$entry
      -- CP-element group 15: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/RPIPE_AFB_PERFORMANCE_COUNTER_REQUEST_290_Update/cr
      -- 
    cr_186_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_186_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_controller_1_1_daemon_CP_139_elements(15), ack => RPIPE_AFB_PERFORMANCE_COUNTER_REQUEST_290_inst_req_1); -- 
    performance_counters_controller_1_1_daemon_cp_element_group_15: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 62) := "performance_counters_controller_1_1_daemon_cp_element_group_15"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_controller_1_1_daemon_CP_139_elements(16) & performance_counters_controller_1_1_daemon_CP_139_elements(13);
      gj_performance_counters_controller_1_1_daemon_cp_element_group_15 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_controller_1_1_daemon_CP_139_elements(15), clk => clk, reset => reset); --
    end block;
    -- CP-element group 16:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: 	14 
    -- CP-element group 16: successors 
    -- CP-element group 16: 	12 
    -- CP-element group 16: 	29 
    -- CP-element group 16: 	15 
    -- CP-element group 16:  members (5) 
      -- CP-element group 16: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/aggregated_phi_sample_ack
      -- CP-element group 16: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/phi_stmt_288_sample_completed_
      -- CP-element group 16: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/RPIPE_AFB_PERFORMANCE_COUNTER_REQUEST_290_sample_completed_
      -- CP-element group 16: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/RPIPE_AFB_PERFORMANCE_COUNTER_REQUEST_290_Sample/$exit
      -- CP-element group 16: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/RPIPE_AFB_PERFORMANCE_COUNTER_REQUEST_290_Sample/ra
      -- 
    ra_182_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 16_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_AFB_PERFORMANCE_COUNTER_REQUEST_290_inst_ack_0, ack => performance_counters_controller_1_1_daemon_CP_139_elements(16)); -- 
    -- CP-element group 17:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 17: predecessors 
    -- CP-element group 17: 	15 
    -- CP-element group 17: successors 
    -- CP-element group 17: 	10 
    -- CP-element group 17: 	21 
    -- CP-element group 17: 	18 
    -- CP-element group 17: marked-successors 
    -- CP-element group 17: 	11 
    -- CP-element group 17: 	14 
    -- CP-element group 17:  members (5) 
      -- CP-element group 17: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/aggregated_phi_update_ack
      -- CP-element group 17: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/phi_stmt_288_update_completed_
      -- CP-element group 17: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/RPIPE_AFB_PERFORMANCE_COUNTER_REQUEST_290_update_completed_
      -- CP-element group 17: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/RPIPE_AFB_PERFORMANCE_COUNTER_REQUEST_290_Update/$exit
      -- CP-element group 17: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/RPIPE_AFB_PERFORMANCE_COUNTER_REQUEST_290_Update/ca
      -- 
    ca_187_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 17_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_AFB_PERFORMANCE_COUNTER_REQUEST_290_inst_ack_1, ack => performance_counters_controller_1_1_daemon_CP_139_elements(17)); -- 
    -- CP-element group 18:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 18: predecessors 
    -- CP-element group 18: 	17 
    -- CP-element group 18: marked-predecessors 
    -- CP-element group 18: 	20 
    -- CP-element group 18: successors 
    -- CP-element group 18: 	19 
    -- CP-element group 18:  members (3) 
      -- CP-element group 18: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/WPIPE_PC_ADDR_0_0_310_sample_start_
      -- CP-element group 18: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/WPIPE_PC_ADDR_0_0_310_Sample/$entry
      -- CP-element group 18: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/WPIPE_PC_ADDR_0_0_310_Sample/req
      -- 
    req_195_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_195_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_controller_1_1_daemon_CP_139_elements(18), ack => WPIPE_PC_ADDR_0_0_310_inst_req_0); -- 
    performance_counters_controller_1_1_daemon_cp_element_group_18: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 62) := "performance_counters_controller_1_1_daemon_cp_element_group_18"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_controller_1_1_daemon_CP_139_elements(17) & performance_counters_controller_1_1_daemon_CP_139_elements(20);
      gj_performance_counters_controller_1_1_daemon_cp_element_group_18 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_controller_1_1_daemon_CP_139_elements(18), clk => clk, reset => reset); --
    end block;
    -- CP-element group 19:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 19: predecessors 
    -- CP-element group 19: 	18 
    -- CP-element group 19: successors 
    -- CP-element group 19: 	20 
    -- CP-element group 19: marked-successors 
    -- CP-element group 19: 	13 
    -- CP-element group 19:  members (6) 
      -- CP-element group 19: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/WPIPE_PC_ADDR_0_0_310_sample_completed_
      -- CP-element group 19: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/WPIPE_PC_ADDR_0_0_310_update_start_
      -- CP-element group 19: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/WPIPE_PC_ADDR_0_0_310_Sample/$exit
      -- CP-element group 19: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/WPIPE_PC_ADDR_0_0_310_Sample/ack
      -- CP-element group 19: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/WPIPE_PC_ADDR_0_0_310_Update/$entry
      -- CP-element group 19: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/WPIPE_PC_ADDR_0_0_310_Update/req
      -- 
    ack_196_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 19_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_PC_ADDR_0_0_310_inst_ack_0, ack => performance_counters_controller_1_1_daemon_CP_139_elements(19)); -- 
    req_200_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_200_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_controller_1_1_daemon_CP_139_elements(19), ack => WPIPE_PC_ADDR_0_0_310_inst_req_1); -- 
    -- CP-element group 20:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 20: predecessors 
    -- CP-element group 20: 	19 
    -- CP-element group 20: successors 
    -- CP-element group 20: 	29 
    -- CP-element group 20: marked-successors 
    -- CP-element group 20: 	18 
    -- CP-element group 20:  members (3) 
      -- CP-element group 20: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/WPIPE_PC_ADDR_0_0_310_update_completed_
      -- CP-element group 20: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/WPIPE_PC_ADDR_0_0_310_Update/$exit
      -- CP-element group 20: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/WPIPE_PC_ADDR_0_0_310_Update/ack
      -- 
    ack_201_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 20_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_PC_ADDR_0_0_310_inst_ack_1, ack => performance_counters_controller_1_1_daemon_CP_139_elements(20)); -- 
    -- CP-element group 21:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 21: predecessors 
    -- CP-element group 21: 	17 
    -- CP-element group 21: marked-predecessors 
    -- CP-element group 21: 	24 
    -- CP-element group 21: successors 
    -- CP-element group 21: 	23 
    -- CP-element group 21:  members (3) 
      -- CP-element group 21: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/RPIPE_PC_VALUE_0_0_315_sample_start_
      -- CP-element group 21: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/RPIPE_PC_VALUE_0_0_315_Sample/$entry
      -- CP-element group 21: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/RPIPE_PC_VALUE_0_0_315_Sample/rr
      -- 
    rr_209_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_209_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_controller_1_1_daemon_CP_139_elements(21), ack => RPIPE_PC_VALUE_0_0_315_inst_req_0); -- 
    performance_counters_controller_1_1_daemon_cp_element_group_21: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 62) := "performance_counters_controller_1_1_daemon_cp_element_group_21"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_controller_1_1_daemon_CP_139_elements(17) & performance_counters_controller_1_1_daemon_CP_139_elements(24);
      gj_performance_counters_controller_1_1_daemon_cp_element_group_21 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_controller_1_1_daemon_CP_139_elements(21), clk => clk, reset => reset); --
    end block;
    -- CP-element group 22:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 22: predecessors 
    -- CP-element group 22: 	23 
    -- CP-element group 22: marked-predecessors 
    -- CP-element group 22: 	26 
    -- CP-element group 22: successors 
    -- CP-element group 22: 	24 
    -- CP-element group 22:  members (3) 
      -- CP-element group 22: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/RPIPE_PC_VALUE_0_0_315_update_start_
      -- CP-element group 22: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/RPIPE_PC_VALUE_0_0_315_Update/$entry
      -- CP-element group 22: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/RPIPE_PC_VALUE_0_0_315_Update/cr
      -- 
    cr_214_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_214_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_controller_1_1_daemon_CP_139_elements(22), ack => RPIPE_PC_VALUE_0_0_315_inst_req_1); -- 
    performance_counters_controller_1_1_daemon_cp_element_group_22: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 62) := "performance_counters_controller_1_1_daemon_cp_element_group_22"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_controller_1_1_daemon_CP_139_elements(23) & performance_counters_controller_1_1_daemon_CP_139_elements(26);
      gj_performance_counters_controller_1_1_daemon_cp_element_group_22 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_controller_1_1_daemon_CP_139_elements(22), clk => clk, reset => reset); --
    end block;
    -- CP-element group 23:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 23: predecessors 
    -- CP-element group 23: 	21 
    -- CP-element group 23: successors 
    -- CP-element group 23: 	22 
    -- CP-element group 23: marked-successors 
    -- CP-element group 23: 	13 
    -- CP-element group 23:  members (3) 
      -- CP-element group 23: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/RPIPE_PC_VALUE_0_0_315_sample_completed_
      -- CP-element group 23: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/RPIPE_PC_VALUE_0_0_315_Sample/$exit
      -- CP-element group 23: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/RPIPE_PC_VALUE_0_0_315_Sample/ra
      -- 
    ra_210_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 23_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_PC_VALUE_0_0_315_inst_ack_0, ack => performance_counters_controller_1_1_daemon_CP_139_elements(23)); -- 
    -- CP-element group 24:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 24: predecessors 
    -- CP-element group 24: 	22 
    -- CP-element group 24: successors 
    -- CP-element group 24: 	25 
    -- CP-element group 24: marked-successors 
    -- CP-element group 24: 	21 
    -- CP-element group 24:  members (3) 
      -- CP-element group 24: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/RPIPE_PC_VALUE_0_0_315_update_completed_
      -- CP-element group 24: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/RPIPE_PC_VALUE_0_0_315_Update/$exit
      -- CP-element group 24: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/RPIPE_PC_VALUE_0_0_315_Update/ca
      -- 
    ca_215_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 24_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_PC_VALUE_0_0_315_inst_ack_1, ack => performance_counters_controller_1_1_daemon_CP_139_elements(24)); -- 
    -- CP-element group 25:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 25: predecessors 
    -- CP-element group 25: 	24 
    -- CP-element group 25: marked-predecessors 
    -- CP-element group 25: 	27 
    -- CP-element group 25: successors 
    -- CP-element group 25: 	26 
    -- CP-element group 25:  members (3) 
      -- CP-element group 25: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/WPIPE_AFB_PERFORMANCE_COUNTER_RESPONSE_326_sample_start_
      -- CP-element group 25: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/WPIPE_AFB_PERFORMANCE_COUNTER_RESPONSE_326_Sample/$entry
      -- CP-element group 25: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/WPIPE_AFB_PERFORMANCE_COUNTER_RESPONSE_326_Sample/req
      -- 
    req_223_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_223_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_controller_1_1_daemon_CP_139_elements(25), ack => WPIPE_AFB_PERFORMANCE_COUNTER_RESPONSE_326_inst_req_0); -- 
    performance_counters_controller_1_1_daemon_cp_element_group_25: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 62) := "performance_counters_controller_1_1_daemon_cp_element_group_25"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_controller_1_1_daemon_CP_139_elements(24) & performance_counters_controller_1_1_daemon_CP_139_elements(27);
      gj_performance_counters_controller_1_1_daemon_cp_element_group_25 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_controller_1_1_daemon_CP_139_elements(25), clk => clk, reset => reset); --
    end block;
    -- CP-element group 26:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 26: predecessors 
    -- CP-element group 26: 	25 
    -- CP-element group 26: successors 
    -- CP-element group 26: 	27 
    -- CP-element group 26: marked-successors 
    -- CP-element group 26: 	22 
    -- CP-element group 26:  members (6) 
      -- CP-element group 26: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/WPIPE_AFB_PERFORMANCE_COUNTER_RESPONSE_326_sample_completed_
      -- CP-element group 26: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/WPIPE_AFB_PERFORMANCE_COUNTER_RESPONSE_326_update_start_
      -- CP-element group 26: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/WPIPE_AFB_PERFORMANCE_COUNTER_RESPONSE_326_Sample/$exit
      -- CP-element group 26: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/WPIPE_AFB_PERFORMANCE_COUNTER_RESPONSE_326_Sample/ack
      -- CP-element group 26: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/WPIPE_AFB_PERFORMANCE_COUNTER_RESPONSE_326_Update/$entry
      -- CP-element group 26: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/WPIPE_AFB_PERFORMANCE_COUNTER_RESPONSE_326_Update/req
      -- 
    ack_224_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 26_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_AFB_PERFORMANCE_COUNTER_RESPONSE_326_inst_ack_0, ack => performance_counters_controller_1_1_daemon_CP_139_elements(26)); -- 
    req_228_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_228_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_controller_1_1_daemon_CP_139_elements(26), ack => WPIPE_AFB_PERFORMANCE_COUNTER_RESPONSE_326_inst_req_1); -- 
    -- CP-element group 27:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 27: predecessors 
    -- CP-element group 27: 	26 
    -- CP-element group 27: successors 
    -- CP-element group 27: 	29 
    -- CP-element group 27: marked-successors 
    -- CP-element group 27: 	25 
    -- CP-element group 27:  members (3) 
      -- CP-element group 27: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/WPIPE_AFB_PERFORMANCE_COUNTER_RESPONSE_326_update_completed_
      -- CP-element group 27: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/WPIPE_AFB_PERFORMANCE_COUNTER_RESPONSE_326_Update/$exit
      -- CP-element group 27: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/WPIPE_AFB_PERFORMANCE_COUNTER_RESPONSE_326_Update/ack
      -- 
    ack_229_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 27_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_AFB_PERFORMANCE_COUNTER_RESPONSE_326_inst_ack_1, ack => performance_counters_controller_1_1_daemon_CP_139_elements(27)); -- 
    -- CP-element group 28:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 28: predecessors 
    -- CP-element group 28: 	9 
    -- CP-element group 28: successors 
    -- CP-element group 28: 	10 
    -- CP-element group 28:  members (1) 
      -- CP-element group 28: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/loop_body_delay_to_condition_start
      -- 
    -- Element group performance_counters_controller_1_1_daemon_CP_139_elements(28) is a control-delay.
    cp_element_28_delay: control_delay_element  generic map(name => " 28_delay", delay_value => 1)  port map(req => performance_counters_controller_1_1_daemon_CP_139_elements(9), ack => performance_counters_controller_1_1_daemon_CP_139_elements(28), clk => clk, reset =>reset);
    -- CP-element group 29:  join  transition  bypass  pipeline-parent 
    -- CP-element group 29: predecessors 
    -- CP-element group 29: 	27 
    -- CP-element group 29: 	20 
    -- CP-element group 29: 	16 
    -- CP-element group 29: successors 
    -- CP-element group 29: 	6 
    -- CP-element group 29:  members (1) 
      -- CP-element group 29: 	 branch_block_stmt_285/do_while_stmt_286/do_while_stmt_286_loop_body/$exit
      -- 
    performance_counters_controller_1_1_daemon_cp_element_group_29: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 7,1 => 7,2 => 7);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 62) := "performance_counters_controller_1_1_daemon_cp_element_group_29"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= performance_counters_controller_1_1_daemon_CP_139_elements(27) & performance_counters_controller_1_1_daemon_CP_139_elements(20) & performance_counters_controller_1_1_daemon_CP_139_elements(16);
      gj_performance_counters_controller_1_1_daemon_cp_element_group_29 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_controller_1_1_daemon_CP_139_elements(29), clk => clk, reset => reset); --
    end block;
    -- CP-element group 30:  transition  input  bypass  pipeline-parent 
    -- CP-element group 30: predecessors 
    -- CP-element group 30: 	5 
    -- CP-element group 30: successors 
    -- CP-element group 30:  members (2) 
      -- CP-element group 30: 	 branch_block_stmt_285/do_while_stmt_286/loop_exit/$exit
      -- CP-element group 30: 	 branch_block_stmt_285/do_while_stmt_286/loop_exit/ack
      -- 
    ack_234_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 30_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_286_branch_ack_0, ack => performance_counters_controller_1_1_daemon_CP_139_elements(30)); -- 
    -- CP-element group 31:  transition  input  bypass  pipeline-parent 
    -- CP-element group 31: predecessors 
    -- CP-element group 31: 	5 
    -- CP-element group 31: successors 
    -- CP-element group 31:  members (2) 
      -- CP-element group 31: 	 branch_block_stmt_285/do_while_stmt_286/loop_taken/$exit
      -- CP-element group 31: 	 branch_block_stmt_285/do_while_stmt_286/loop_taken/ack
      -- 
    ack_238_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 31_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_286_branch_ack_1, ack => performance_counters_controller_1_1_daemon_CP_139_elements(31)); -- 
    -- CP-element group 32:  transition  bypass  pipeline-parent 
    -- CP-element group 32: predecessors 
    -- CP-element group 32: 	3 
    -- CP-element group 32: successors 
    -- CP-element group 32: 	1 
    -- CP-element group 32:  members (1) 
      -- CP-element group 32: 	 branch_block_stmt_285/do_while_stmt_286/$exit
      -- 
    performance_counters_controller_1_1_daemon_CP_139_elements(32) <= performance_counters_controller_1_1_daemon_CP_139_elements(3);
    performance_counters_controller_1_1_daemon_do_while_stmt_286_terminator_239: loop_terminator -- 
      generic map (name => " performance_counters_controller_1_1_daemon_do_while_stmt_286_terminator_239", max_iterations_in_flight =>7) 
      port map(loop_body_exit => performance_counters_controller_1_1_daemon_CP_139_elements(6),loop_continue => performance_counters_controller_1_1_daemon_CP_139_elements(31),loop_terminate => performance_counters_controller_1_1_daemon_CP_139_elements(30),loop_back => performance_counters_controller_1_1_daemon_CP_139_elements(4),loop_exit => performance_counters_controller_1_1_daemon_CP_139_elements(3),clk => clk, reset => reset); -- 
    entry_tmerge_164_block : block -- 
      signal preds : BooleanArray(0 to 1);
      begin -- 
        preds(0)  <= performance_counters_controller_1_1_daemon_CP_139_elements(7);
        preds(1)  <= performance_counters_controller_1_1_daemon_CP_139_elements(8);
        entry_tmerge_164 : transition_merge -- 
          generic map(name => " entry_tmerge_164")
          port map (preds => preds, symbol_out => performance_counters_controller_1_1_daemon_CP_139_elements(9));
          -- 
    end block;
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal RPIPE_AFB_PERFORMANCE_COUNTER_REQUEST_290_wire : std_logic_vector(73 downto 0);
    signal a36_295 : std_logic_vector(35 downto 0);
    signal a8_303 : std_logic_vector(7 downto 0);
    signal afb_command_288 : std_logic_vector(73 downto 0);
    signal afb_resp_319 : std_logic_vector(31 downto 0);
    signal konst_306_wire_constant : std_logic_vector(2 downto 0);
    signal konst_330_wire_constant : std_logic_vector(0 downto 0);
    signal r32_0_0_316 : std_logic_vector(31 downto 0);
    signal tid_299 : std_logic_vector(2 downto 0);
    signal to_afb_325 : std_logic_vector(32 downto 0);
    signal type_cast_322_wire_constant : std_logic_vector(0 downto 0);
    signal use_t_00_308 : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    konst_306_wire_constant <= "000";
    konst_330_wire_constant <= "1";
    type_cast_322_wire_constant <= "0";
    -- flow-through slice operator slice_294_inst
    a36_295 <= afb_command_288(67 downto 32);
    -- flow-through slice operator slice_298_inst
    tid_299 <= a36_295(10 downto 8);
    -- flow-through slice operator slice_302_inst
    a8_303 <= a36_295(7 downto 0);
    -- interlock W_afb_resp_317_inst
    process(r32_0_0_316) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := r32_0_0_316(31 downto 0);
      afb_resp_319 <= tmp_var; -- 
    end process;
    -- interlock ssrc_phi_stmt_288
    process(RPIPE_AFB_PERFORMANCE_COUNTER_REQUEST_290_wire) -- 
      variable tmp_var : std_logic_vector(73 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 73 downto 0) := RPIPE_AFB_PERFORMANCE_COUNTER_REQUEST_290_wire(73 downto 0);
      afb_command_288 <= tmp_var; -- 
    end process;
    do_while_stmt_286_branch: Block -- 
      -- branch-block
      signal condition_sig : std_logic_vector(0 downto 0);
      begin 
      condition_sig <= konst_330_wire_constant;
      branch_instance: BranchBase -- 
        generic map( name => "do_while_stmt_286_branch", condition_width => 1,  bypass_flag => true)
        port map( -- 
          condition => condition_sig,
          req => do_while_stmt_286_branch_req_0,
          ack0 => do_while_stmt_286_branch_ack_0,
          ack1 => do_while_stmt_286_branch_ack_1,
          clk => clk,
          reset => reset); -- 
      --
    end Block; -- branch-block
    -- flow through binary operator CONCAT_u1_u33_324_inst
    process(type_cast_322_wire_constant, afb_resp_319) -- 
      variable tmp_var : std_logic_vector(32 downto 0); -- 
    begin -- 
      ApConcat_proc(type_cast_322_wire_constant, afb_resp_319, tmp_var);
      to_afb_325 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_307_inst
    process(tid_299) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(tid_299, konst_306_wire_constant, tmp_var);
      use_t_00_308 <= tmp_var; --
    end process;
    -- shared inport operator group (0) : RPIPE_AFB_PERFORMANCE_COUNTER_REQUEST_290_inst 
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
      reqL_unguarded(0) <= RPIPE_AFB_PERFORMANCE_COUNTER_REQUEST_290_inst_req_0;
      RPIPE_AFB_PERFORMANCE_COUNTER_REQUEST_290_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_AFB_PERFORMANCE_COUNTER_REQUEST_290_inst_req_1;
      RPIPE_AFB_PERFORMANCE_COUNTER_REQUEST_290_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      RPIPE_AFB_PERFORMANCE_COUNTER_REQUEST_290_wire <= data_out(73 downto 0);
      AFB_PERFORMANCE_COUNTER_REQUEST_read_0_gI: SplitGuardInterface generic map(name => "AFB_PERFORMANCE_COUNTER_REQUEST_read_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      AFB_PERFORMANCE_COUNTER_REQUEST_read_0: InputPort_P2P -- 
        generic map ( name => "AFB_PERFORMANCE_COUNTER_REQUEST_read_0", data_width => 74,    bypass_flag => false,   	nonblocking_read_flag => false,  barrier_flag => false,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => AFB_PERFORMANCE_COUNTER_REQUEST_pipe_read_req(0),
          oack => AFB_PERFORMANCE_COUNTER_REQUEST_pipe_read_ack(0),
          odata => AFB_PERFORMANCE_COUNTER_REQUEST_pipe_read_data(73 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 0
    -- shared inport operator group (1) : RPIPE_PC_VALUE_0_0_315_inst 
    InportGroup_1: Block -- 
      signal data_out: std_logic_vector(31 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_PC_VALUE_0_0_315_inst_req_0;
      RPIPE_PC_VALUE_0_0_315_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_PC_VALUE_0_0_315_inst_req_1;
      RPIPE_PC_VALUE_0_0_315_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <= use_t_00_308(0);
      r32_0_0_316 <= data_out(31 downto 0);
      PC_VALUE_0_0_read_1_gI: SplitGuardInterface generic map(name => "PC_VALUE_0_0_read_1_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      PC_VALUE_0_0_read_1: InputPortRevised -- 
        generic map ( name => "PC_VALUE_0_0_read_1", data_width => 32,  num_reqs => 1,  output_buffering => outBUFs,   nonblocking_read_flag => False,  no_arbitration => false)
        port map (-- 
          sample_req => reqL , 
          sample_ack => ackL, 
          update_req => reqR, 
          update_ack => ackR, 
          data => data_out, 
          oreq => PC_VALUE_0_0_pipe_read_req(0),
          oack => PC_VALUE_0_0_pipe_read_ack(0),
          odata => PC_VALUE_0_0_pipe_read_data(31 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 1
    -- shared outport operator group (0) : WPIPE_AFB_PERFORMANCE_COUNTER_RESPONSE_326_inst 
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
      sample_req_unguarded(0) <= WPIPE_AFB_PERFORMANCE_COUNTER_RESPONSE_326_inst_req_0;
      WPIPE_AFB_PERFORMANCE_COUNTER_RESPONSE_326_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_AFB_PERFORMANCE_COUNTER_RESPONSE_326_inst_req_1;
      WPIPE_AFB_PERFORMANCE_COUNTER_RESPONSE_326_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= to_afb_325;
      AFB_PERFORMANCE_COUNTER_RESPONSE_write_0_gI: SplitGuardInterface generic map(name => "AFB_PERFORMANCE_COUNTER_RESPONSE_write_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      AFB_PERFORMANCE_COUNTER_RESPONSE_write_0: OutputPortRevised -- 
        generic map ( name => "AFB_PERFORMANCE_COUNTER_RESPONSE", data_width => 33, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_write_req(0),
          oack => AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_write_ack(0),
          odata => AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_write_data(32 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    -- shared outport operator group (1) : WPIPE_PC_ADDR_0_0_310_inst 
    OutportGroup_1: Block -- 
      signal data_in: std_logic_vector(7 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_PC_ADDR_0_0_310_inst_req_0;
      WPIPE_PC_ADDR_0_0_310_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_PC_ADDR_0_0_310_inst_req_1;
      WPIPE_PC_ADDR_0_0_310_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= use_t_00_308(0);
      data_in <= a8_303;
      PC_ADDR_0_0_write_1_gI: SplitGuardInterface generic map(name => "PC_ADDR_0_0_write_1_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      PC_ADDR_0_0_write_1: OutputPortRevised -- 
        generic map ( name => "PC_ADDR_0_0", data_width => 8, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => PC_ADDR_0_0_pipe_write_req(0),
          oack => PC_ADDR_0_0_pipe_write_ack(0),
          odata => PC_ADDR_0_0_pipe_write_data(7 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 1
    -- 
  end Block; -- data_path
  -- 
end performance_counters_controller_1_1_daemon_arch;
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
library performance_counters_lib;
use performance_counters_lib.afb_performance_counters_controller_1x1_global_package.all;
entity afb_performance_counters_controller_1x1 is  -- system 
  port (-- 
    clk : in std_logic;
    reset : in std_logic;
    AFB_PERFORMANCE_COUNTER_REQUEST_pipe_write_data: in std_logic_vector(73 downto 0);
    AFB_PERFORMANCE_COUNTER_REQUEST_pipe_write_req : in std_logic_vector(0 downto 0);
    AFB_PERFORMANCE_COUNTER_REQUEST_pipe_write_ack : out std_logic_vector(0 downto 0);
    AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_read_data: out std_logic_vector(32 downto 0);
    AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_read_req : in std_logic_vector(0 downto 0);
    AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_read_ack : out std_logic_vector(0 downto 0);
    PC_ADDR_0_0_pipe_read_data: out std_logic_vector(7 downto 0);
    PC_ADDR_0_0_pipe_read_req : in std_logic_vector(0 downto 0);
    PC_ADDR_0_0_pipe_read_ack : out std_logic_vector(0 downto 0);
    PC_VALUE_0_0_pipe_write_data: in std_logic_vector(31 downto 0);
    PC_VALUE_0_0_pipe_write_req : in std_logic_vector(0 downto 0);
    PC_VALUE_0_0_pipe_write_ack : out std_logic_vector(0 downto 0)); -- 
  -- 
end entity; 
architecture afb_performance_counters_controller_1x1_arch  of afb_performance_counters_controller_1x1 is -- system-architecture 
  -- interface signals to connect to memory space memory_space_1
  -- declarations related to module performance_counters_controller_1_1_daemon
  component performance_counters_controller_1_1_daemon is -- 
    generic (tag_length : integer); 
    port ( -- 
      AFB_PERFORMANCE_COUNTER_REQUEST_pipe_read_req : out  std_logic_vector(0 downto 0);
      AFB_PERFORMANCE_COUNTER_REQUEST_pipe_read_ack : in   std_logic_vector(0 downto 0);
      AFB_PERFORMANCE_COUNTER_REQUEST_pipe_read_data : in   std_logic_vector(73 downto 0);
      PC_VALUE_0_0_pipe_read_req : out  std_logic_vector(0 downto 0);
      PC_VALUE_0_0_pipe_read_ack : in   std_logic_vector(0 downto 0);
      PC_VALUE_0_0_pipe_read_data : in   std_logic_vector(31 downto 0);
      AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_write_req : out  std_logic_vector(0 downto 0);
      AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_write_ack : in   std_logic_vector(0 downto 0);
      AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_write_data : out  std_logic_vector(32 downto 0);
      PC_ADDR_0_0_pipe_write_req : out  std_logic_vector(0 downto 0);
      PC_ADDR_0_0_pipe_write_ack : in   std_logic_vector(0 downto 0);
      PC_ADDR_0_0_pipe_write_data : out  std_logic_vector(7 downto 0);
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
  -- argument signals for module performance_counters_controller_1_1_daemon
  signal performance_counters_controller_1_1_daemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal performance_counters_controller_1_1_daemon_tag_out   : std_logic_vector(1 downto 0);
  signal performance_counters_controller_1_1_daemon_start_req : std_logic;
  signal performance_counters_controller_1_1_daemon_start_ack : std_logic;
  signal performance_counters_controller_1_1_daemon_fin_req   : std_logic;
  signal performance_counters_controller_1_1_daemon_fin_ack : std_logic;
  -- aggregate signals for read from pipe AFB_PERFORMANCE_COUNTER_REQUEST
  signal AFB_PERFORMANCE_COUNTER_REQUEST_pipe_read_data: std_logic_vector(73 downto 0);
  signal AFB_PERFORMANCE_COUNTER_REQUEST_pipe_read_req: std_logic_vector(0 downto 0);
  signal AFB_PERFORMANCE_COUNTER_REQUEST_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe AFB_PERFORMANCE_COUNTER_RESPONSE
  signal AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_write_data: std_logic_vector(32 downto 0);
  signal AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_write_req: std_logic_vector(0 downto 0);
  signal AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe PC_ADDR_0_0
  signal PC_ADDR_0_0_pipe_write_data: std_logic_vector(7 downto 0);
  signal PC_ADDR_0_0_pipe_write_req: std_logic_vector(0 downto 0);
  signal PC_ADDR_0_0_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe PC_VALUE_0_0
  signal PC_VALUE_0_0_pipe_read_data: std_logic_vector(31 downto 0);
  signal PC_VALUE_0_0_pipe_read_req: std_logic_vector(0 downto 0);
  signal PC_VALUE_0_0_pipe_read_ack: std_logic_vector(0 downto 0);
  -- gated clock signal declarations.
  -- 
begin -- 
  -- module performance_counters_controller_1_1_daemon
  performance_counters_controller_1_1_daemon_instance:performance_counters_controller_1_1_daemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => performance_counters_controller_1_1_daemon_start_req,
      start_ack => performance_counters_controller_1_1_daemon_start_ack,
      fin_req => performance_counters_controller_1_1_daemon_fin_req,
      fin_ack => performance_counters_controller_1_1_daemon_fin_ack,
      clk => clk,
      reset => reset,
      AFB_PERFORMANCE_COUNTER_REQUEST_pipe_read_req => AFB_PERFORMANCE_COUNTER_REQUEST_pipe_read_req(0 downto 0),
      AFB_PERFORMANCE_COUNTER_REQUEST_pipe_read_ack => AFB_PERFORMANCE_COUNTER_REQUEST_pipe_read_ack(0 downto 0),
      AFB_PERFORMANCE_COUNTER_REQUEST_pipe_read_data => AFB_PERFORMANCE_COUNTER_REQUEST_pipe_read_data(73 downto 0),
      PC_VALUE_0_0_pipe_read_req => PC_VALUE_0_0_pipe_read_req(0 downto 0),
      PC_VALUE_0_0_pipe_read_ack => PC_VALUE_0_0_pipe_read_ack(0 downto 0),
      PC_VALUE_0_0_pipe_read_data => PC_VALUE_0_0_pipe_read_data(31 downto 0),
      AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_write_req => AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_write_req(0 downto 0),
      AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_write_ack => AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_write_ack(0 downto 0),
      AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_write_data => AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_write_data(32 downto 0),
      PC_ADDR_0_0_pipe_write_req => PC_ADDR_0_0_pipe_write_req(0 downto 0),
      PC_ADDR_0_0_pipe_write_ack => PC_ADDR_0_0_pipe_write_ack(0 downto 0),
      PC_ADDR_0_0_pipe_write_data => PC_ADDR_0_0_pipe_write_data(7 downto 0),
      tag_in => performance_counters_controller_1_1_daemon_tag_in,
      tag_out => performance_counters_controller_1_1_daemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  performance_counters_controller_1_1_daemon_tag_in <= (others => '0');
  performance_counters_controller_1_1_daemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => performance_counters_controller_1_1_daemon_start_req, start_ack => performance_counters_controller_1_1_daemon_start_ack,  fin_req => performance_counters_controller_1_1_daemon_fin_req,  fin_ack => performance_counters_controller_1_1_daemon_fin_ack);
  AFB_PERFORMANCE_COUNTER_REQUEST_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe AFB_PERFORMANCE_COUNTER_REQUEST",
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
      read_req => AFB_PERFORMANCE_COUNTER_REQUEST_pipe_read_req,
      read_ack => AFB_PERFORMANCE_COUNTER_REQUEST_pipe_read_ack,
      read_data => AFB_PERFORMANCE_COUNTER_REQUEST_pipe_read_data,
      write_req => AFB_PERFORMANCE_COUNTER_REQUEST_pipe_write_req,
      write_ack => AFB_PERFORMANCE_COUNTER_REQUEST_pipe_write_ack,
      write_data => AFB_PERFORMANCE_COUNTER_REQUEST_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  AFB_PERFORMANCE_COUNTER_RESPONSE_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe AFB_PERFORMANCE_COUNTER_RESPONSE",
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
      read_req => AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_read_req,
      read_ack => AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_read_ack,
      read_data => AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_read_data,
      write_req => AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_write_req,
      write_ack => AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_write_ack,
      write_data => AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  PC_ADDR_0_0_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe PC_ADDR_0_0",
      num_reads => 1,
      num_writes => 1,
      data_width => 8,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => PC_ADDR_0_0_pipe_read_req,
      read_ack => PC_ADDR_0_0_pipe_read_ack,
      read_data => PC_ADDR_0_0_pipe_read_data,
      write_req => PC_ADDR_0_0_pipe_write_req,
      write_ack => PC_ADDR_0_0_pipe_write_ack,
      write_data => PC_ADDR_0_0_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  PC_VALUE_0_0_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe PC_VALUE_0_0",
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
      read_req => PC_VALUE_0_0_pipe_read_req,
      read_ack => PC_VALUE_0_0_pipe_read_ack,
      read_data => PC_VALUE_0_0_pipe_read_data,
      write_req => PC_VALUE_0_0_pipe_write_req,
      write_ack => PC_VALUE_0_0_pipe_write_ack,
      write_data => PC_VALUE_0_0_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- gated clock generators 
  -- 
end afb_performance_counters_controller_1x1_arch;
