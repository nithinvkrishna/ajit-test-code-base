-- VHDL global package produced by vc2vhdl from virtual circuit (vc) description 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
package afb_performance_counters_base_global_package is -- 
  constant default_mem_pool_base_address : std_logic_vector(0 downto 0) := "0";
  component afb_performance_counters_base is -- 
    port (-- 
      clk : in std_logic;
      reset : in std_logic;
      PERFORMANCE_COUNTER_ADDR_pipe_write_data: in std_logic_vector(7 downto 0);
      PERFORMANCE_COUNTER_ADDR_pipe_write_req : in std_logic_vector(0 downto 0);
      PERFORMANCE_COUNTER_ADDR_pipe_write_ack : out std_logic_vector(0 downto 0);
      PERFORMANCE_COUNTER_UPDATE_pipe_write_data: in std_logic_vector(9 downto 0);
      PERFORMANCE_COUNTER_UPDATE_pipe_write_req : in std_logic_vector(0 downto 0);
      PERFORMANCE_COUNTER_UPDATE_pipe_write_ack : out std_logic_vector(0 downto 0);
      PERFORMANCE_COUNTER_VALUE_pipe_read_data: out std_logic_vector(31 downto 0);
      PERFORMANCE_COUNTER_VALUE_pipe_read_req : in std_logic_vector(0 downto 0);
      PERFORMANCE_COUNTER_VALUE_pipe_read_ack : out std_logic_vector(0 downto 0)); -- 
    -- 
  end component;
  -- 
end package afb_performance_counters_base_global_package;
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
use performance_counters_lib.afb_performance_counters_base_global_package.all;
entity performance_counters_access_daemon is -- 
  generic (tag_length : integer); 
  port ( -- 
    PERFORMANCE_COUNTER_ADDR_pipe_read_req : out  std_logic_vector(0 downto 0);
    PERFORMANCE_COUNTER_ADDR_pipe_read_ack : in   std_logic_vector(0 downto 0);
    PERFORMANCE_COUNTER_ADDR_pipe_read_data : in   std_logic_vector(7 downto 0);
    cti_mispredict_count : in std_logic_vector(63 downto 0);
    executed_instruction_count : in std_logic_vector(63 downto 0);
    icache_access_count : in std_logic_vector(63 downto 0);
    icache_miss_count : in std_logic_vector(63 downto 0);
    load_count : in std_logic_vector(63 downto 0);
    load_miss_count : in std_logic_vector(63 downto 0);
    skipped_instruction_count : in std_logic_vector(63 downto 0);
    store_count : in std_logic_vector(63 downto 0);
    store_miss_count : in std_logic_vector(63 downto 0);
    trap_count : in std_logic_vector(63 downto 0);
    PERFORMANCE_COUNTER_VALUE_pipe_write_req : out  std_logic_vector(0 downto 0);
    PERFORMANCE_COUNTER_VALUE_pipe_write_ack : in   std_logic_vector(0 downto 0);
    PERFORMANCE_COUNTER_VALUE_pipe_write_data : out  std_logic_vector(31 downto 0);
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
end entity performance_counters_access_daemon;
architecture performance_counters_access_daemon_arch of performance_counters_access_daemon is -- 
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
  signal performance_counters_access_daemon_CP_139_start: Boolean;
  signal performance_counters_access_daemon_CP_139_symbol: Boolean;
  -- volatile/operator module components. 
  -- links between control-path and data-path
  signal RPIPE_store_miss_count_319_wire_319_buf_req_0 : boolean;
  signal RPIPE_store_miss_count_319_wire_319_buf_ack_0 : boolean;
  signal RPIPE_store_miss_count_319_wire_319_buf_req_1 : boolean;
  signal RPIPE_store_miss_count_319_wire_319_buf_ack_1 : boolean;
  signal do_while_stmt_297_branch_req_0 : boolean;
  signal RPIPE_PERFORMANCE_COUNTER_ADDR_301_inst_req_0 : boolean;
  signal RPIPE_PERFORMANCE_COUNTER_ADDR_301_inst_ack_0 : boolean;
  signal RPIPE_PERFORMANCE_COUNTER_ADDR_301_inst_req_1 : boolean;
  signal RPIPE_PERFORMANCE_COUNTER_ADDR_301_inst_ack_1 : boolean;
  signal RPIPE_executed_instruction_count_304_wire_304_buf_req_0 : boolean;
  signal RPIPE_executed_instruction_count_304_wire_304_buf_ack_0 : boolean;
  signal RPIPE_executed_instruction_count_304_wire_304_buf_req_1 : boolean;
  signal RPIPE_executed_instruction_count_304_wire_304_buf_ack_1 : boolean;
  signal RPIPE_skipped_instruction_count_307_wire_307_buf_req_0 : boolean;
  signal RPIPE_skipped_instruction_count_307_wire_307_buf_ack_0 : boolean;
  signal RPIPE_skipped_instruction_count_307_wire_307_buf_req_1 : boolean;
  signal RPIPE_skipped_instruction_count_307_wire_307_buf_ack_1 : boolean;
  signal RPIPE_load_count_310_wire_310_buf_req_0 : boolean;
  signal RPIPE_load_count_310_wire_310_buf_ack_0 : boolean;
  signal RPIPE_load_count_310_wire_310_buf_req_1 : boolean;
  signal RPIPE_load_count_310_wire_310_buf_ack_1 : boolean;
  signal RPIPE_load_miss_count_313_wire_313_buf_req_0 : boolean;
  signal RPIPE_load_miss_count_313_wire_313_buf_ack_0 : boolean;
  signal RPIPE_load_miss_count_313_wire_313_buf_req_1 : boolean;
  signal RPIPE_load_miss_count_313_wire_313_buf_ack_1 : boolean;
  signal RPIPE_store_count_316_wire_316_buf_req_0 : boolean;
  signal RPIPE_store_count_316_wire_316_buf_ack_0 : boolean;
  signal RPIPE_store_count_316_wire_316_buf_req_1 : boolean;
  signal RPIPE_store_count_316_wire_316_buf_ack_1 : boolean;
  signal RPIPE_cti_mispredict_count_322_wire_322_buf_req_0 : boolean;
  signal RPIPE_cti_mispredict_count_322_wire_322_buf_ack_0 : boolean;
  signal RPIPE_cti_mispredict_count_322_wire_322_buf_req_1 : boolean;
  signal RPIPE_cti_mispredict_count_322_wire_322_buf_ack_1 : boolean;
  signal RPIPE_trap_count_325_wire_325_buf_req_0 : boolean;
  signal RPIPE_trap_count_325_wire_325_buf_ack_0 : boolean;
  signal RPIPE_trap_count_325_wire_325_buf_req_1 : boolean;
  signal RPIPE_trap_count_325_wire_325_buf_ack_1 : boolean;
  signal RPIPE_icache_access_count_328_wire_328_buf_req_0 : boolean;
  signal RPIPE_icache_access_count_328_wire_328_buf_ack_0 : boolean;
  signal RPIPE_icache_access_count_328_wire_328_buf_req_1 : boolean;
  signal RPIPE_icache_access_count_328_wire_328_buf_ack_1 : boolean;
  signal RPIPE_icache_miss_count_331_wire_331_buf_req_0 : boolean;
  signal RPIPE_icache_miss_count_331_wire_331_buf_ack_0 : boolean;
  signal RPIPE_icache_miss_count_331_wire_331_buf_req_1 : boolean;
  signal RPIPE_icache_miss_count_331_wire_331_buf_ack_1 : boolean;
  signal WPIPE_PERFORMANCE_COUNTER_VALUE_493_inst_req_0 : boolean;
  signal WPIPE_PERFORMANCE_COUNTER_VALUE_493_inst_ack_0 : boolean;
  signal WPIPE_PERFORMANCE_COUNTER_VALUE_493_inst_req_1 : boolean;
  signal WPIPE_PERFORMANCE_COUNTER_VALUE_493_inst_ack_1 : boolean;
  signal do_while_stmt_297_branch_ack_0 : boolean;
  signal do_while_stmt_297_branch_ack_1 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "performance_counters_access_daemon_input_buffer", -- 
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
  performance_counters_access_daemon_CP_139_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "performance_counters_access_daemon_out_buffer", -- 
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
    preds <= performance_counters_access_daemon_CP_139_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
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
    preds <= performance_counters_access_daemon_CP_139_start & tag_ilock_write_ack_symbol;
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
    preds <= performance_counters_access_daemon_CP_139_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  performance_counters_access_daemon_CP_139: Block -- control-path 
    signal performance_counters_access_daemon_CP_139_elements: BooleanArray(58 downto 0);
    -- 
  begin -- 
    performance_counters_access_daemon_CP_139_elements(0) <= performance_counters_access_daemon_CP_139_start;
    performance_counters_access_daemon_CP_139_symbol <= performance_counters_access_daemon_CP_139_elements(1);
    -- CP-element group 0:  transition  place  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	2 
    -- CP-element group 0:  members (4) 
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 branch_block_stmt_296/$entry
      -- CP-element group 0: 	 branch_block_stmt_296/branch_block_stmt_296__entry__
      -- CP-element group 0: 	 branch_block_stmt_296/do_while_stmt_297__entry__
      -- 
    -- CP-element group 1:  transition  place  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	58 
    -- CP-element group 1: successors 
    -- CP-element group 1:  members (4) 
      -- CP-element group 1: 	 $exit
      -- CP-element group 1: 	 branch_block_stmt_296/$exit
      -- CP-element group 1: 	 branch_block_stmt_296/branch_block_stmt_296__exit__
      -- CP-element group 1: 	 branch_block_stmt_296/do_while_stmt_297__exit__
      -- 
    performance_counters_access_daemon_CP_139_elements(1) <= performance_counters_access_daemon_CP_139_elements(58);
    -- CP-element group 2:  transition  place  bypass  pipeline-parent 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	0 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	8 
    -- CP-element group 2:  members (2) 
      -- CP-element group 2: 	 branch_block_stmt_296/do_while_stmt_297/$entry
      -- CP-element group 2: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297__entry__
      -- 
    performance_counters_access_daemon_CP_139_elements(2) <= performance_counters_access_daemon_CP_139_elements(0);
    -- CP-element group 3:  merge  place  bypass  pipeline-parent 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	58 
    -- CP-element group 3:  members (1) 
      -- CP-element group 3: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297__exit__
      -- 
    -- Element group performance_counters_access_daemon_CP_139_elements(3) is bound as output of CP function.
    -- CP-element group 4:  merge  place  bypass  pipeline-parent 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	7 
    -- CP-element group 4:  members (1) 
      -- CP-element group 4: 	 branch_block_stmt_296/do_while_stmt_297/loop_back
      -- 
    -- Element group performance_counters_access_daemon_CP_139_elements(4) is bound as output of CP function.
    -- CP-element group 5:  branch  transition  place  bypass  pipeline-parent 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	10 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	56 
    -- CP-element group 5: 	57 
    -- CP-element group 5:  members (3) 
      -- CP-element group 5: 	 branch_block_stmt_296/do_while_stmt_297/condition_done
      -- CP-element group 5: 	 branch_block_stmt_296/do_while_stmt_297/loop_exit/$entry
      -- CP-element group 5: 	 branch_block_stmt_296/do_while_stmt_297/loop_taken/$entry
      -- 
    performance_counters_access_daemon_CP_139_elements(5) <= performance_counters_access_daemon_CP_139_elements(10);
    -- CP-element group 6:  branch  place  bypass  pipeline-parent 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	55 
    -- CP-element group 6: successors 
    -- CP-element group 6:  members (1) 
      -- CP-element group 6: 	 branch_block_stmt_296/do_while_stmt_297/loop_body_done
      -- 
    performance_counters_access_daemon_CP_139_elements(6) <= performance_counters_access_daemon_CP_139_elements(55);
    -- CP-element group 7:  transition  bypass  pipeline-parent 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	4 
    -- CP-element group 7: successors 
    -- CP-element group 7:  members (1) 
      -- CP-element group 7: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/back_edge_to_loop_body
      -- 
    performance_counters_access_daemon_CP_139_elements(7) <= performance_counters_access_daemon_CP_139_elements(4);
    -- CP-element group 8:  transition  bypass  pipeline-parent 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	2 
    -- CP-element group 8: successors 
    -- CP-element group 8:  members (1) 
      -- CP-element group 8: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/first_time_through_loop_body
      -- 
    performance_counters_access_daemon_CP_139_elements(8) <= performance_counters_access_daemon_CP_139_elements(2);
    -- CP-element group 9:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	11 
    -- CP-element group 9: 	16 
    -- CP-element group 9: 	21 
    -- CP-element group 9: 	24 
    -- CP-element group 9: 	27 
    -- CP-element group 9: 	30 
    -- CP-element group 9: 	33 
    -- CP-element group 9: 	36 
    -- CP-element group 9: 	39 
    -- CP-element group 9: 	42 
    -- CP-element group 9: 	45 
    -- CP-element group 9: 	48 
    -- CP-element group 9: 	54 
    -- CP-element group 9:  members (13) 
      -- CP-element group 9: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_317_sample_start_
      -- CP-element group 9: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/$entry
      -- CP-element group 9: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/loop_body_start
      -- CP-element group 9: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_299_sample_start_
      -- CP-element group 9: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_302_sample_start_
      -- CP-element group 9: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_305_sample_start_
      -- CP-element group 9: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_308_sample_start_
      -- CP-element group 9: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_311_sample_start_
      -- CP-element group 9: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_314_sample_start_
      -- CP-element group 9: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_320_sample_start_
      -- CP-element group 9: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_323_sample_start_
      -- CP-element group 9: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_326_sample_start_
      -- CP-element group 9: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_329_sample_start_
      -- 
    -- Element group performance_counters_access_daemon_CP_139_elements(9) is bound as output of CP function.
    -- CP-element group 10:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	13 
    -- CP-element group 10: 	15 
    -- CP-element group 10: 	54 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	5 
    -- CP-element group 10:  members (1) 
      -- CP-element group 10: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/condition_evaluated
      -- 
    condition_evaluated_163_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " condition_evaluated_163_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_access_daemon_CP_139_elements(10), ack => do_while_stmt_297_branch_req_0); -- 
    performance_counters_access_daemon_cp_element_group_10: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 54) := "performance_counters_access_daemon_cp_element_group_10"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= performance_counters_access_daemon_CP_139_elements(13) & performance_counters_access_daemon_CP_139_elements(15) & performance_counters_access_daemon_CP_139_elements(54);
      gj_performance_counters_access_daemon_cp_element_group_10 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_access_daemon_CP_139_elements(10), clk => clk, reset => reset); --
    end block;
    -- CP-element group 11:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	9 
    -- CP-element group 11: marked-predecessors 
    -- CP-element group 11: 	15 
    -- CP-element group 11: successors 
    -- CP-element group 11: 	17 
    -- CP-element group 11: 	22 
    -- CP-element group 11: 	25 
    -- CP-element group 11: 	28 
    -- CP-element group 11: 	31 
    -- CP-element group 11: 	34 
    -- CP-element group 11: 	37 
    -- CP-element group 11: 	40 
    -- CP-element group 11: 	43 
    -- CP-element group 11: 	46 
    -- CP-element group 11: 	49 
    -- CP-element group 11:  members (31) 
      -- CP-element group 11: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_store_miss_count_319_sample_start_
      -- CP-element group 11: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_store_miss_count_319_Sample/$entry
      -- CP-element group 11: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_store_miss_count_319_Sample/req
      -- CP-element group 11: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/aggregated_phi_sample_req
      -- CP-element group 11: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_executed_instruction_count_304_sample_start_
      -- CP-element group 11: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_executed_instruction_count_304_Sample/$entry
      -- CP-element group 11: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_executed_instruction_count_304_Sample/req
      -- CP-element group 11: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_skipped_instruction_count_307_sample_start_
      -- CP-element group 11: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_skipped_instruction_count_307_Sample/$entry
      -- CP-element group 11: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_skipped_instruction_count_307_Sample/req
      -- CP-element group 11: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_load_count_310_sample_start_
      -- CP-element group 11: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_load_count_310_Sample/$entry
      -- CP-element group 11: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_load_count_310_Sample/req
      -- CP-element group 11: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_load_miss_count_313_sample_start_
      -- CP-element group 11: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_load_miss_count_313_Sample/$entry
      -- CP-element group 11: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_load_miss_count_313_Sample/req
      -- CP-element group 11: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_store_count_316_sample_start_
      -- CP-element group 11: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_store_count_316_Sample/$entry
      -- CP-element group 11: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_store_count_316_Sample/req
      -- CP-element group 11: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_cti_mispredict_count_322_sample_start_
      -- CP-element group 11: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_cti_mispredict_count_322_Sample/$entry
      -- CP-element group 11: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_cti_mispredict_count_322_Sample/req
      -- CP-element group 11: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_trap_count_325_sample_start_
      -- CP-element group 11: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_trap_count_325_Sample/$entry
      -- CP-element group 11: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_trap_count_325_Sample/req
      -- CP-element group 11: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_icache_access_count_328_sample_start_
      -- CP-element group 11: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_icache_access_count_328_Sample/$entry
      -- CP-element group 11: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_icache_access_count_328_Sample/req
      -- CP-element group 11: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_icache_miss_count_331_sample_start_
      -- CP-element group 11: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_icache_miss_count_331_Sample/$entry
      -- CP-element group 11: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_icache_miss_count_331_Sample/req
      -- 
    req_199_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_199_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_access_daemon_CP_139_elements(11), ack => RPIPE_executed_instruction_count_304_wire_304_buf_req_0); -- 
    req_217_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_217_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_access_daemon_CP_139_elements(11), ack => RPIPE_skipped_instruction_count_307_wire_307_buf_req_0); -- 
    req_235_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_235_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_access_daemon_CP_139_elements(11), ack => RPIPE_load_count_310_wire_310_buf_req_0); -- 
    req_253_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_253_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_access_daemon_CP_139_elements(11), ack => RPIPE_load_miss_count_313_wire_313_buf_req_0); -- 
    req_271_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_271_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_access_daemon_CP_139_elements(11), ack => RPIPE_store_count_316_wire_316_buf_req_0); -- 
    req_289_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_289_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_access_daemon_CP_139_elements(11), ack => RPIPE_store_miss_count_319_wire_319_buf_req_0); -- 
    req_307_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_307_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_access_daemon_CP_139_elements(11), ack => RPIPE_cti_mispredict_count_322_wire_322_buf_req_0); -- 
    req_325_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_325_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_access_daemon_CP_139_elements(11), ack => RPIPE_trap_count_325_wire_325_buf_req_0); -- 
    req_343_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_343_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_access_daemon_CP_139_elements(11), ack => RPIPE_icache_access_count_328_wire_328_buf_req_0); -- 
    req_361_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_361_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_access_daemon_CP_139_elements(11), ack => RPIPE_icache_miss_count_331_wire_331_buf_req_0); -- 
    performance_counters_access_daemon_cp_element_group_11: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 54) := "performance_counters_access_daemon_cp_element_group_11"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_access_daemon_CP_139_elements(9) & performance_counters_access_daemon_CP_139_elements(15);
      gj_performance_counters_access_daemon_cp_element_group_11 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_access_daemon_CP_139_elements(11), clk => clk, reset => reset); --
    end block;
    -- CP-element group 12:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	19 
    -- CP-element group 12: 	22 
    -- CP-element group 12: 	25 
    -- CP-element group 12: 	28 
    -- CP-element group 12: 	31 
    -- CP-element group 12: 	34 
    -- CP-element group 12: 	37 
    -- CP-element group 12: 	40 
    -- CP-element group 12: 	43 
    -- CP-element group 12: 	46 
    -- CP-element group 12: 	49 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	13 
    -- CP-element group 12: 	55 
    -- CP-element group 12:  members (12) 
      -- CP-element group 12: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_317_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/aggregated_phi_sample_ack
      -- CP-element group 12: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_299_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_302_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_305_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_308_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_311_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_314_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_320_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_323_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_326_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_329_sample_completed_
      -- 
    performance_counters_access_daemon_cp_element_group_12: block -- 
      constant place_capacities: IntegerArray(0 to 10) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1,10 => 1);
      constant place_markings: IntegerArray(0 to 10)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0);
      constant place_delays: IntegerArray(0 to 10) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0);
      constant joinName: string(1 to 54) := "performance_counters_access_daemon_cp_element_group_12"; 
      signal preds: BooleanArray(1 to 11); -- 
    begin -- 
      preds <= performance_counters_access_daemon_CP_139_elements(19) & performance_counters_access_daemon_CP_139_elements(22) & performance_counters_access_daemon_CP_139_elements(25) & performance_counters_access_daemon_CP_139_elements(28) & performance_counters_access_daemon_CP_139_elements(31) & performance_counters_access_daemon_CP_139_elements(34) & performance_counters_access_daemon_CP_139_elements(37) & performance_counters_access_daemon_CP_139_elements(40) & performance_counters_access_daemon_CP_139_elements(43) & performance_counters_access_daemon_CP_139_elements(46) & performance_counters_access_daemon_CP_139_elements(49);
      gj_performance_counters_access_daemon_cp_element_group_12 : generic_join generic map(name => joinName, number_of_predecessors => 11, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_access_daemon_CP_139_elements(12), clk => clk, reset => reset); --
    end block;
    -- CP-element group 13:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: 	12 
    -- CP-element group 13: successors 
    -- CP-element group 13: 	10 
    -- CP-element group 13:  members (1) 
      -- CP-element group 13: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/aggregated_phi_sample_ack_d
      -- 
    -- Element group performance_counters_access_daemon_CP_139_elements(13) is a control-delay.
    cp_element_13_delay: control_delay_element  generic map(name => " 13_delay", delay_value => 1)  port map(req => performance_counters_access_daemon_CP_139_elements(12), ack => performance_counters_access_daemon_CP_139_elements(13), clk => clk, reset =>reset);
    -- CP-element group 14:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: 	16 
    -- CP-element group 14: 	21 
    -- CP-element group 14: 	24 
    -- CP-element group 14: 	27 
    -- CP-element group 14: 	30 
    -- CP-element group 14: 	33 
    -- CP-element group 14: 	36 
    -- CP-element group 14: 	39 
    -- CP-element group 14: 	42 
    -- CP-element group 14: 	45 
    -- CP-element group 14: 	48 
    -- CP-element group 14: successors 
    -- CP-element group 14: 	18 
    -- CP-element group 14: 	23 
    -- CP-element group 14: 	26 
    -- CP-element group 14: 	29 
    -- CP-element group 14: 	32 
    -- CP-element group 14: 	35 
    -- CP-element group 14: 	38 
    -- CP-element group 14: 	41 
    -- CP-element group 14: 	44 
    -- CP-element group 14: 	47 
    -- CP-element group 14: 	50 
    -- CP-element group 14:  members (31) 
      -- CP-element group 14: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_store_miss_count_319_update_start_
      -- CP-element group 14: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_store_miss_count_319_Update/$entry
      -- CP-element group 14: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_store_miss_count_319_Update/req
      -- CP-element group 14: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/aggregated_phi_update_req
      -- CP-element group 14: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_executed_instruction_count_304_update_start_
      -- CP-element group 14: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_executed_instruction_count_304_Update/$entry
      -- CP-element group 14: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_executed_instruction_count_304_Update/req
      -- CP-element group 14: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_skipped_instruction_count_307_update_start_
      -- CP-element group 14: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_skipped_instruction_count_307_Update/$entry
      -- CP-element group 14: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_skipped_instruction_count_307_Update/req
      -- CP-element group 14: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_load_count_310_update_start_
      -- CP-element group 14: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_load_count_310_Update/$entry
      -- CP-element group 14: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_load_count_310_Update/req
      -- CP-element group 14: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_load_miss_count_313_update_start_
      -- CP-element group 14: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_load_miss_count_313_Update/$entry
      -- CP-element group 14: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_load_miss_count_313_Update/req
      -- CP-element group 14: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_store_count_316_update_start_
      -- CP-element group 14: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_store_count_316_Update/$entry
      -- CP-element group 14: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_store_count_316_Update/req
      -- CP-element group 14: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_cti_mispredict_count_322_update_start_
      -- CP-element group 14: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_cti_mispredict_count_322_Update/$entry
      -- CP-element group 14: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_cti_mispredict_count_322_Update/req
      -- CP-element group 14: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_trap_count_325_update_start_
      -- CP-element group 14: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_trap_count_325_Update/$entry
      -- CP-element group 14: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_trap_count_325_Update/req
      -- CP-element group 14: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_icache_access_count_328_update_start_
      -- CP-element group 14: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_icache_access_count_328_Update/$entry
      -- CP-element group 14: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_icache_access_count_328_Update/req
      -- CP-element group 14: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_icache_miss_count_331_update_start_
      -- CP-element group 14: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_icache_miss_count_331_Update/$entry
      -- CP-element group 14: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_icache_miss_count_331_Update/req
      -- 
    req_204_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_204_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_access_daemon_CP_139_elements(14), ack => RPIPE_executed_instruction_count_304_wire_304_buf_req_1); -- 
    req_222_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_222_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_access_daemon_CP_139_elements(14), ack => RPIPE_skipped_instruction_count_307_wire_307_buf_req_1); -- 
    req_240_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_240_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_access_daemon_CP_139_elements(14), ack => RPIPE_load_count_310_wire_310_buf_req_1); -- 
    req_258_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_258_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_access_daemon_CP_139_elements(14), ack => RPIPE_load_miss_count_313_wire_313_buf_req_1); -- 
    req_276_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_276_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_access_daemon_CP_139_elements(14), ack => RPIPE_store_count_316_wire_316_buf_req_1); -- 
    req_294_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_294_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_access_daemon_CP_139_elements(14), ack => RPIPE_store_miss_count_319_wire_319_buf_req_1); -- 
    req_312_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_312_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_access_daemon_CP_139_elements(14), ack => RPIPE_cti_mispredict_count_322_wire_322_buf_req_1); -- 
    req_330_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_330_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_access_daemon_CP_139_elements(14), ack => RPIPE_trap_count_325_wire_325_buf_req_1); -- 
    req_348_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_348_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_access_daemon_CP_139_elements(14), ack => RPIPE_icache_access_count_328_wire_328_buf_req_1); -- 
    req_366_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_366_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_access_daemon_CP_139_elements(14), ack => RPIPE_icache_miss_count_331_wire_331_buf_req_1); -- 
    performance_counters_access_daemon_cp_element_group_14: block -- 
      constant place_capacities: IntegerArray(0 to 10) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1,10 => 1);
      constant place_markings: IntegerArray(0 to 10)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0);
      constant place_delays: IntegerArray(0 to 10) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0);
      constant joinName: string(1 to 54) := "performance_counters_access_daemon_cp_element_group_14"; 
      signal preds: BooleanArray(1 to 11); -- 
    begin -- 
      preds <= performance_counters_access_daemon_CP_139_elements(16) & performance_counters_access_daemon_CP_139_elements(21) & performance_counters_access_daemon_CP_139_elements(24) & performance_counters_access_daemon_CP_139_elements(27) & performance_counters_access_daemon_CP_139_elements(30) & performance_counters_access_daemon_CP_139_elements(33) & performance_counters_access_daemon_CP_139_elements(36) & performance_counters_access_daemon_CP_139_elements(39) & performance_counters_access_daemon_CP_139_elements(42) & performance_counters_access_daemon_CP_139_elements(45) & performance_counters_access_daemon_CP_139_elements(48);
      gj_performance_counters_access_daemon_cp_element_group_14 : generic_join generic map(name => joinName, number_of_predecessors => 11, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_access_daemon_CP_139_elements(14), clk => clk, reset => reset); --
    end block;
    -- CP-element group 15:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: 	20 
    -- CP-element group 15: 	23 
    -- CP-element group 15: 	26 
    -- CP-element group 15: 	29 
    -- CP-element group 15: 	32 
    -- CP-element group 15: 	35 
    -- CP-element group 15: 	38 
    -- CP-element group 15: 	41 
    -- CP-element group 15: 	44 
    -- CP-element group 15: 	47 
    -- CP-element group 15: 	50 
    -- CP-element group 15: successors 
    -- CP-element group 15: 	10 
    -- CP-element group 15: marked-successors 
    -- CP-element group 15: 	11 
    -- CP-element group 15:  members (1) 
      -- CP-element group 15: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/aggregated_phi_update_ack
      -- 
    performance_counters_access_daemon_cp_element_group_15: block -- 
      constant place_capacities: IntegerArray(0 to 10) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1,10 => 1);
      constant place_markings: IntegerArray(0 to 10)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0);
      constant place_delays: IntegerArray(0 to 10) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0);
      constant joinName: string(1 to 54) := "performance_counters_access_daemon_cp_element_group_15"; 
      signal preds: BooleanArray(1 to 11); -- 
    begin -- 
      preds <= performance_counters_access_daemon_CP_139_elements(20) & performance_counters_access_daemon_CP_139_elements(23) & performance_counters_access_daemon_CP_139_elements(26) & performance_counters_access_daemon_CP_139_elements(29) & performance_counters_access_daemon_CP_139_elements(32) & performance_counters_access_daemon_CP_139_elements(35) & performance_counters_access_daemon_CP_139_elements(38) & performance_counters_access_daemon_CP_139_elements(41) & performance_counters_access_daemon_CP_139_elements(44) & performance_counters_access_daemon_CP_139_elements(47) & performance_counters_access_daemon_CP_139_elements(50);
      gj_performance_counters_access_daemon_cp_element_group_15 : generic_join generic map(name => joinName, number_of_predecessors => 11, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_access_daemon_CP_139_elements(15), clk => clk, reset => reset); --
    end block;
    -- CP-element group 16:  join  transition  bypass  pipeline-parent 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: 	9 
    -- CP-element group 16: marked-predecessors 
    -- CP-element group 16: 	52 
    -- CP-element group 16: successors 
    -- CP-element group 16: 	14 
    -- CP-element group 16:  members (1) 
      -- CP-element group 16: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_299_update_start_
      -- 
    performance_counters_access_daemon_cp_element_group_16: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 54) := "performance_counters_access_daemon_cp_element_group_16"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_access_daemon_CP_139_elements(9) & performance_counters_access_daemon_CP_139_elements(52);
      gj_performance_counters_access_daemon_cp_element_group_16 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_access_daemon_CP_139_elements(16), clk => clk, reset => reset); --
    end block;
    -- CP-element group 17:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 17: predecessors 
    -- CP-element group 17: 	11 
    -- CP-element group 17: marked-predecessors 
    -- CP-element group 17: 	20 
    -- CP-element group 17: successors 
    -- CP-element group 17: 	19 
    -- CP-element group 17:  members (3) 
      -- CP-element group 17: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_PERFORMANCE_COUNTER_ADDR_301_sample_start_
      -- CP-element group 17: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_PERFORMANCE_COUNTER_ADDR_301_Sample/$entry
      -- CP-element group 17: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_PERFORMANCE_COUNTER_ADDR_301_Sample/rr
      -- 
    rr_181_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_181_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_access_daemon_CP_139_elements(17), ack => RPIPE_PERFORMANCE_COUNTER_ADDR_301_inst_req_0); -- 
    performance_counters_access_daemon_cp_element_group_17: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 54) := "performance_counters_access_daemon_cp_element_group_17"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_access_daemon_CP_139_elements(11) & performance_counters_access_daemon_CP_139_elements(20);
      gj_performance_counters_access_daemon_cp_element_group_17 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_access_daemon_CP_139_elements(17), clk => clk, reset => reset); --
    end block;
    -- CP-element group 18:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 18: predecessors 
    -- CP-element group 18: 	14 
    -- CP-element group 18: 	19 
    -- CP-element group 18: successors 
    -- CP-element group 18: 	20 
    -- CP-element group 18:  members (3) 
      -- CP-element group 18: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_PERFORMANCE_COUNTER_ADDR_301_update_start_
      -- CP-element group 18: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_PERFORMANCE_COUNTER_ADDR_301_Update/$entry
      -- CP-element group 18: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_PERFORMANCE_COUNTER_ADDR_301_Update/cr
      -- 
    cr_186_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_186_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_access_daemon_CP_139_elements(18), ack => RPIPE_PERFORMANCE_COUNTER_ADDR_301_inst_req_1); -- 
    performance_counters_access_daemon_cp_element_group_18: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 54) := "performance_counters_access_daemon_cp_element_group_18"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_access_daemon_CP_139_elements(14) & performance_counters_access_daemon_CP_139_elements(19);
      gj_performance_counters_access_daemon_cp_element_group_18 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_access_daemon_CP_139_elements(18), clk => clk, reset => reset); --
    end block;
    -- CP-element group 19:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 19: predecessors 
    -- CP-element group 19: 	17 
    -- CP-element group 19: successors 
    -- CP-element group 19: 	12 
    -- CP-element group 19: 	18 
    -- CP-element group 19:  members (3) 
      -- CP-element group 19: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_PERFORMANCE_COUNTER_ADDR_301_sample_completed_
      -- CP-element group 19: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_PERFORMANCE_COUNTER_ADDR_301_Sample/$exit
      -- CP-element group 19: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_PERFORMANCE_COUNTER_ADDR_301_Sample/ra
      -- 
    ra_182_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 19_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_PERFORMANCE_COUNTER_ADDR_301_inst_ack_0, ack => performance_counters_access_daemon_CP_139_elements(19)); -- 
    -- CP-element group 20:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 20: predecessors 
    -- CP-element group 20: 	18 
    -- CP-element group 20: successors 
    -- CP-element group 20: 	15 
    -- CP-element group 20: 	51 
    -- CP-element group 20: marked-successors 
    -- CP-element group 20: 	17 
    -- CP-element group 20:  members (4) 
      -- CP-element group 20: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_299_update_completed_
      -- CP-element group 20: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_PERFORMANCE_COUNTER_ADDR_301_update_completed_
      -- CP-element group 20: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_PERFORMANCE_COUNTER_ADDR_301_Update/$exit
      -- CP-element group 20: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_PERFORMANCE_COUNTER_ADDR_301_Update/ca
      -- 
    ca_187_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 20_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_PERFORMANCE_COUNTER_ADDR_301_inst_ack_1, ack => performance_counters_access_daemon_CP_139_elements(20)); -- 
    -- CP-element group 21:  join  transition  bypass  pipeline-parent 
    -- CP-element group 21: predecessors 
    -- CP-element group 21: 	9 
    -- CP-element group 21: marked-predecessors 
    -- CP-element group 21: 	52 
    -- CP-element group 21: successors 
    -- CP-element group 21: 	14 
    -- CP-element group 21:  members (1) 
      -- CP-element group 21: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_302_update_start_
      -- 
    performance_counters_access_daemon_cp_element_group_21: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 54) := "performance_counters_access_daemon_cp_element_group_21"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_access_daemon_CP_139_elements(9) & performance_counters_access_daemon_CP_139_elements(52);
      gj_performance_counters_access_daemon_cp_element_group_21 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_access_daemon_CP_139_elements(21), clk => clk, reset => reset); --
    end block;
    -- CP-element group 22:  transition  input  bypass  pipeline-parent 
    -- CP-element group 22: predecessors 
    -- CP-element group 22: 	11 
    -- CP-element group 22: successors 
    -- CP-element group 22: 	12 
    -- CP-element group 22:  members (3) 
      -- CP-element group 22: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_executed_instruction_count_304_sample_completed_
      -- CP-element group 22: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_executed_instruction_count_304_Sample/$exit
      -- CP-element group 22: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_executed_instruction_count_304_Sample/ack
      -- 
    ack_200_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 22_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_executed_instruction_count_304_wire_304_buf_ack_0, ack => performance_counters_access_daemon_CP_139_elements(22)); -- 
    -- CP-element group 23:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 23: predecessors 
    -- CP-element group 23: 	14 
    -- CP-element group 23: successors 
    -- CP-element group 23: 	15 
    -- CP-element group 23: 	51 
    -- CP-element group 23:  members (4) 
      -- CP-element group 23: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_302_update_completed_
      -- CP-element group 23: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_executed_instruction_count_304_update_completed_
      -- CP-element group 23: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_executed_instruction_count_304_Update/$exit
      -- CP-element group 23: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_executed_instruction_count_304_Update/ack
      -- 
    ack_205_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 23_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_executed_instruction_count_304_wire_304_buf_ack_1, ack => performance_counters_access_daemon_CP_139_elements(23)); -- 
    -- CP-element group 24:  join  transition  bypass  pipeline-parent 
    -- CP-element group 24: predecessors 
    -- CP-element group 24: 	9 
    -- CP-element group 24: marked-predecessors 
    -- CP-element group 24: 	52 
    -- CP-element group 24: successors 
    -- CP-element group 24: 	14 
    -- CP-element group 24:  members (1) 
      -- CP-element group 24: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_305_update_start_
      -- 
    performance_counters_access_daemon_cp_element_group_24: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 54) := "performance_counters_access_daemon_cp_element_group_24"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_access_daemon_CP_139_elements(9) & performance_counters_access_daemon_CP_139_elements(52);
      gj_performance_counters_access_daemon_cp_element_group_24 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_access_daemon_CP_139_elements(24), clk => clk, reset => reset); --
    end block;
    -- CP-element group 25:  transition  input  bypass  pipeline-parent 
    -- CP-element group 25: predecessors 
    -- CP-element group 25: 	11 
    -- CP-element group 25: successors 
    -- CP-element group 25: 	12 
    -- CP-element group 25:  members (3) 
      -- CP-element group 25: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_skipped_instruction_count_307_sample_completed_
      -- CP-element group 25: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_skipped_instruction_count_307_Sample/$exit
      -- CP-element group 25: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_skipped_instruction_count_307_Sample/ack
      -- 
    ack_218_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 25_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_skipped_instruction_count_307_wire_307_buf_ack_0, ack => performance_counters_access_daemon_CP_139_elements(25)); -- 
    -- CP-element group 26:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 26: predecessors 
    -- CP-element group 26: 	14 
    -- CP-element group 26: successors 
    -- CP-element group 26: 	15 
    -- CP-element group 26: 	51 
    -- CP-element group 26:  members (4) 
      -- CP-element group 26: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_305_update_completed_
      -- CP-element group 26: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_skipped_instruction_count_307_update_completed_
      -- CP-element group 26: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_skipped_instruction_count_307_Update/$exit
      -- CP-element group 26: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_skipped_instruction_count_307_Update/ack
      -- 
    ack_223_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 26_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_skipped_instruction_count_307_wire_307_buf_ack_1, ack => performance_counters_access_daemon_CP_139_elements(26)); -- 
    -- CP-element group 27:  join  transition  bypass  pipeline-parent 
    -- CP-element group 27: predecessors 
    -- CP-element group 27: 	9 
    -- CP-element group 27: marked-predecessors 
    -- CP-element group 27: 	52 
    -- CP-element group 27: successors 
    -- CP-element group 27: 	14 
    -- CP-element group 27:  members (1) 
      -- CP-element group 27: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_308_update_start_
      -- 
    performance_counters_access_daemon_cp_element_group_27: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 54) := "performance_counters_access_daemon_cp_element_group_27"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_access_daemon_CP_139_elements(9) & performance_counters_access_daemon_CP_139_elements(52);
      gj_performance_counters_access_daemon_cp_element_group_27 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_access_daemon_CP_139_elements(27), clk => clk, reset => reset); --
    end block;
    -- CP-element group 28:  transition  input  bypass  pipeline-parent 
    -- CP-element group 28: predecessors 
    -- CP-element group 28: 	11 
    -- CP-element group 28: successors 
    -- CP-element group 28: 	12 
    -- CP-element group 28:  members (3) 
      -- CP-element group 28: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_load_count_310_sample_completed_
      -- CP-element group 28: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_load_count_310_Sample/$exit
      -- CP-element group 28: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_load_count_310_Sample/ack
      -- 
    ack_236_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 28_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_load_count_310_wire_310_buf_ack_0, ack => performance_counters_access_daemon_CP_139_elements(28)); -- 
    -- CP-element group 29:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 29: predecessors 
    -- CP-element group 29: 	14 
    -- CP-element group 29: successors 
    -- CP-element group 29: 	15 
    -- CP-element group 29: 	51 
    -- CP-element group 29:  members (4) 
      -- CP-element group 29: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_308_update_completed_
      -- CP-element group 29: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_load_count_310_update_completed_
      -- CP-element group 29: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_load_count_310_Update/$exit
      -- CP-element group 29: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_load_count_310_Update/ack
      -- 
    ack_241_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 29_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_load_count_310_wire_310_buf_ack_1, ack => performance_counters_access_daemon_CP_139_elements(29)); -- 
    -- CP-element group 30:  join  transition  bypass  pipeline-parent 
    -- CP-element group 30: predecessors 
    -- CP-element group 30: 	9 
    -- CP-element group 30: marked-predecessors 
    -- CP-element group 30: 	52 
    -- CP-element group 30: successors 
    -- CP-element group 30: 	14 
    -- CP-element group 30:  members (1) 
      -- CP-element group 30: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_311_update_start_
      -- 
    performance_counters_access_daemon_cp_element_group_30: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 54) := "performance_counters_access_daemon_cp_element_group_30"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_access_daemon_CP_139_elements(9) & performance_counters_access_daemon_CP_139_elements(52);
      gj_performance_counters_access_daemon_cp_element_group_30 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_access_daemon_CP_139_elements(30), clk => clk, reset => reset); --
    end block;
    -- CP-element group 31:  transition  input  bypass  pipeline-parent 
    -- CP-element group 31: predecessors 
    -- CP-element group 31: 	11 
    -- CP-element group 31: successors 
    -- CP-element group 31: 	12 
    -- CP-element group 31:  members (3) 
      -- CP-element group 31: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_load_miss_count_313_sample_completed_
      -- CP-element group 31: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_load_miss_count_313_Sample/$exit
      -- CP-element group 31: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_load_miss_count_313_Sample/ack
      -- 
    ack_254_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 31_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_load_miss_count_313_wire_313_buf_ack_0, ack => performance_counters_access_daemon_CP_139_elements(31)); -- 
    -- CP-element group 32:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 32: predecessors 
    -- CP-element group 32: 	14 
    -- CP-element group 32: successors 
    -- CP-element group 32: 	15 
    -- CP-element group 32: 	51 
    -- CP-element group 32:  members (4) 
      -- CP-element group 32: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_311_update_completed_
      -- CP-element group 32: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_load_miss_count_313_update_completed_
      -- CP-element group 32: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_load_miss_count_313_Update/$exit
      -- CP-element group 32: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_load_miss_count_313_Update/ack
      -- 
    ack_259_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 32_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_load_miss_count_313_wire_313_buf_ack_1, ack => performance_counters_access_daemon_CP_139_elements(32)); -- 
    -- CP-element group 33:  join  transition  bypass  pipeline-parent 
    -- CP-element group 33: predecessors 
    -- CP-element group 33: 	9 
    -- CP-element group 33: marked-predecessors 
    -- CP-element group 33: 	52 
    -- CP-element group 33: successors 
    -- CP-element group 33: 	14 
    -- CP-element group 33:  members (1) 
      -- CP-element group 33: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_314_update_start_
      -- 
    performance_counters_access_daemon_cp_element_group_33: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 54) := "performance_counters_access_daemon_cp_element_group_33"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_access_daemon_CP_139_elements(9) & performance_counters_access_daemon_CP_139_elements(52);
      gj_performance_counters_access_daemon_cp_element_group_33 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_access_daemon_CP_139_elements(33), clk => clk, reset => reset); --
    end block;
    -- CP-element group 34:  transition  input  bypass  pipeline-parent 
    -- CP-element group 34: predecessors 
    -- CP-element group 34: 	11 
    -- CP-element group 34: successors 
    -- CP-element group 34: 	12 
    -- CP-element group 34:  members (3) 
      -- CP-element group 34: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_store_count_316_sample_completed_
      -- CP-element group 34: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_store_count_316_Sample/$exit
      -- CP-element group 34: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_store_count_316_Sample/ack
      -- 
    ack_272_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 34_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_store_count_316_wire_316_buf_ack_0, ack => performance_counters_access_daemon_CP_139_elements(34)); -- 
    -- CP-element group 35:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 35: predecessors 
    -- CP-element group 35: 	14 
    -- CP-element group 35: successors 
    -- CP-element group 35: 	15 
    -- CP-element group 35: 	51 
    -- CP-element group 35:  members (4) 
      -- CP-element group 35: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_314_update_completed_
      -- CP-element group 35: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_store_count_316_update_completed_
      -- CP-element group 35: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_store_count_316_Update/$exit
      -- CP-element group 35: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_store_count_316_Update/ack
      -- 
    ack_277_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 35_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_store_count_316_wire_316_buf_ack_1, ack => performance_counters_access_daemon_CP_139_elements(35)); -- 
    -- CP-element group 36:  join  transition  bypass  pipeline-parent 
    -- CP-element group 36: predecessors 
    -- CP-element group 36: 	9 
    -- CP-element group 36: marked-predecessors 
    -- CP-element group 36: 	52 
    -- CP-element group 36: successors 
    -- CP-element group 36: 	14 
    -- CP-element group 36:  members (1) 
      -- CP-element group 36: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_317_update_start_
      -- 
    performance_counters_access_daemon_cp_element_group_36: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 54) := "performance_counters_access_daemon_cp_element_group_36"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_access_daemon_CP_139_elements(9) & performance_counters_access_daemon_CP_139_elements(52);
      gj_performance_counters_access_daemon_cp_element_group_36 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_access_daemon_CP_139_elements(36), clk => clk, reset => reset); --
    end block;
    -- CP-element group 37:  transition  input  bypass  pipeline-parent 
    -- CP-element group 37: predecessors 
    -- CP-element group 37: 	11 
    -- CP-element group 37: successors 
    -- CP-element group 37: 	12 
    -- CP-element group 37:  members (3) 
      -- CP-element group 37: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_store_miss_count_319_sample_completed_
      -- CP-element group 37: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_store_miss_count_319_Sample/$exit
      -- CP-element group 37: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_store_miss_count_319_Sample/ack
      -- 
    ack_290_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 37_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_store_miss_count_319_wire_319_buf_ack_0, ack => performance_counters_access_daemon_CP_139_elements(37)); -- 
    -- CP-element group 38:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 38: predecessors 
    -- CP-element group 38: 	14 
    -- CP-element group 38: successors 
    -- CP-element group 38: 	15 
    -- CP-element group 38: 	51 
    -- CP-element group 38:  members (4) 
      -- CP-element group 38: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_317_update_completed_
      -- CP-element group 38: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_store_miss_count_319_update_completed_
      -- CP-element group 38: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_store_miss_count_319_Update/$exit
      -- CP-element group 38: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_store_miss_count_319_Update/ack
      -- 
    ack_295_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 38_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_store_miss_count_319_wire_319_buf_ack_1, ack => performance_counters_access_daemon_CP_139_elements(38)); -- 
    -- CP-element group 39:  join  transition  bypass  pipeline-parent 
    -- CP-element group 39: predecessors 
    -- CP-element group 39: 	9 
    -- CP-element group 39: marked-predecessors 
    -- CP-element group 39: 	52 
    -- CP-element group 39: successors 
    -- CP-element group 39: 	14 
    -- CP-element group 39:  members (1) 
      -- CP-element group 39: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_320_update_start_
      -- 
    performance_counters_access_daemon_cp_element_group_39: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 54) := "performance_counters_access_daemon_cp_element_group_39"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_access_daemon_CP_139_elements(9) & performance_counters_access_daemon_CP_139_elements(52);
      gj_performance_counters_access_daemon_cp_element_group_39 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_access_daemon_CP_139_elements(39), clk => clk, reset => reset); --
    end block;
    -- CP-element group 40:  transition  input  bypass  pipeline-parent 
    -- CP-element group 40: predecessors 
    -- CP-element group 40: 	11 
    -- CP-element group 40: successors 
    -- CP-element group 40: 	12 
    -- CP-element group 40:  members (3) 
      -- CP-element group 40: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_cti_mispredict_count_322_sample_completed_
      -- CP-element group 40: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_cti_mispredict_count_322_Sample/$exit
      -- CP-element group 40: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_cti_mispredict_count_322_Sample/ack
      -- 
    ack_308_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 40_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_cti_mispredict_count_322_wire_322_buf_ack_0, ack => performance_counters_access_daemon_CP_139_elements(40)); -- 
    -- CP-element group 41:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 41: predecessors 
    -- CP-element group 41: 	14 
    -- CP-element group 41: successors 
    -- CP-element group 41: 	15 
    -- CP-element group 41: 	51 
    -- CP-element group 41:  members (4) 
      -- CP-element group 41: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_320_update_completed_
      -- CP-element group 41: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_cti_mispredict_count_322_update_completed_
      -- CP-element group 41: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_cti_mispredict_count_322_Update/$exit
      -- CP-element group 41: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_cti_mispredict_count_322_Update/ack
      -- 
    ack_313_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 41_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_cti_mispredict_count_322_wire_322_buf_ack_1, ack => performance_counters_access_daemon_CP_139_elements(41)); -- 
    -- CP-element group 42:  join  transition  bypass  pipeline-parent 
    -- CP-element group 42: predecessors 
    -- CP-element group 42: 	9 
    -- CP-element group 42: marked-predecessors 
    -- CP-element group 42: 	52 
    -- CP-element group 42: successors 
    -- CP-element group 42: 	14 
    -- CP-element group 42:  members (1) 
      -- CP-element group 42: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_323_update_start_
      -- 
    performance_counters_access_daemon_cp_element_group_42: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 54) := "performance_counters_access_daemon_cp_element_group_42"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_access_daemon_CP_139_elements(9) & performance_counters_access_daemon_CP_139_elements(52);
      gj_performance_counters_access_daemon_cp_element_group_42 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_access_daemon_CP_139_elements(42), clk => clk, reset => reset); --
    end block;
    -- CP-element group 43:  transition  input  bypass  pipeline-parent 
    -- CP-element group 43: predecessors 
    -- CP-element group 43: 	11 
    -- CP-element group 43: successors 
    -- CP-element group 43: 	12 
    -- CP-element group 43:  members (3) 
      -- CP-element group 43: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_trap_count_325_sample_completed_
      -- CP-element group 43: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_trap_count_325_Sample/$exit
      -- CP-element group 43: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_trap_count_325_Sample/ack
      -- 
    ack_326_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 43_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_trap_count_325_wire_325_buf_ack_0, ack => performance_counters_access_daemon_CP_139_elements(43)); -- 
    -- CP-element group 44:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 44: predecessors 
    -- CP-element group 44: 	14 
    -- CP-element group 44: successors 
    -- CP-element group 44: 	15 
    -- CP-element group 44: 	51 
    -- CP-element group 44:  members (4) 
      -- CP-element group 44: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_323_update_completed_
      -- CP-element group 44: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_trap_count_325_update_completed_
      -- CP-element group 44: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_trap_count_325_Update/$exit
      -- CP-element group 44: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_trap_count_325_Update/ack
      -- 
    ack_331_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 44_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_trap_count_325_wire_325_buf_ack_1, ack => performance_counters_access_daemon_CP_139_elements(44)); -- 
    -- CP-element group 45:  join  transition  bypass  pipeline-parent 
    -- CP-element group 45: predecessors 
    -- CP-element group 45: 	9 
    -- CP-element group 45: marked-predecessors 
    -- CP-element group 45: 	52 
    -- CP-element group 45: successors 
    -- CP-element group 45: 	14 
    -- CP-element group 45:  members (1) 
      -- CP-element group 45: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_326_update_start_
      -- 
    performance_counters_access_daemon_cp_element_group_45: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 54) := "performance_counters_access_daemon_cp_element_group_45"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_access_daemon_CP_139_elements(9) & performance_counters_access_daemon_CP_139_elements(52);
      gj_performance_counters_access_daemon_cp_element_group_45 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_access_daemon_CP_139_elements(45), clk => clk, reset => reset); --
    end block;
    -- CP-element group 46:  transition  input  bypass  pipeline-parent 
    -- CP-element group 46: predecessors 
    -- CP-element group 46: 	11 
    -- CP-element group 46: successors 
    -- CP-element group 46: 	12 
    -- CP-element group 46:  members (3) 
      -- CP-element group 46: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_icache_access_count_328_sample_completed_
      -- CP-element group 46: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_icache_access_count_328_Sample/$exit
      -- CP-element group 46: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_icache_access_count_328_Sample/ack
      -- 
    ack_344_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 46_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_icache_access_count_328_wire_328_buf_ack_0, ack => performance_counters_access_daemon_CP_139_elements(46)); -- 
    -- CP-element group 47:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 47: predecessors 
    -- CP-element group 47: 	14 
    -- CP-element group 47: successors 
    -- CP-element group 47: 	15 
    -- CP-element group 47: 	51 
    -- CP-element group 47:  members (4) 
      -- CP-element group 47: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_326_update_completed_
      -- CP-element group 47: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_icache_access_count_328_update_completed_
      -- CP-element group 47: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_icache_access_count_328_Update/$exit
      -- CP-element group 47: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_icache_access_count_328_Update/ack
      -- 
    ack_349_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 47_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_icache_access_count_328_wire_328_buf_ack_1, ack => performance_counters_access_daemon_CP_139_elements(47)); -- 
    -- CP-element group 48:  join  transition  bypass  pipeline-parent 
    -- CP-element group 48: predecessors 
    -- CP-element group 48: 	9 
    -- CP-element group 48: marked-predecessors 
    -- CP-element group 48: 	52 
    -- CP-element group 48: successors 
    -- CP-element group 48: 	14 
    -- CP-element group 48:  members (1) 
      -- CP-element group 48: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_329_update_start_
      -- 
    performance_counters_access_daemon_cp_element_group_48: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 54) := "performance_counters_access_daemon_cp_element_group_48"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_access_daemon_CP_139_elements(9) & performance_counters_access_daemon_CP_139_elements(52);
      gj_performance_counters_access_daemon_cp_element_group_48 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_access_daemon_CP_139_elements(48), clk => clk, reset => reset); --
    end block;
    -- CP-element group 49:  transition  input  bypass  pipeline-parent 
    -- CP-element group 49: predecessors 
    -- CP-element group 49: 	11 
    -- CP-element group 49: successors 
    -- CP-element group 49: 	12 
    -- CP-element group 49:  members (3) 
      -- CP-element group 49: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_icache_miss_count_331_sample_completed_
      -- CP-element group 49: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_icache_miss_count_331_Sample/$exit
      -- CP-element group 49: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_icache_miss_count_331_Sample/ack
      -- 
    ack_362_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 49_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_icache_miss_count_331_wire_331_buf_ack_0, ack => performance_counters_access_daemon_CP_139_elements(49)); -- 
    -- CP-element group 50:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 50: predecessors 
    -- CP-element group 50: 	14 
    -- CP-element group 50: successors 
    -- CP-element group 50: 	15 
    -- CP-element group 50: 	51 
    -- CP-element group 50:  members (4) 
      -- CP-element group 50: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/phi_stmt_329_update_completed_
      -- CP-element group 50: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_icache_miss_count_331_update_completed_
      -- CP-element group 50: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_icache_miss_count_331_Update/$exit
      -- CP-element group 50: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/RPIPE_icache_miss_count_331_Update/ack
      -- 
    ack_367_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 50_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_icache_miss_count_331_wire_331_buf_ack_1, ack => performance_counters_access_daemon_CP_139_elements(50)); -- 
    -- CP-element group 51:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 51: predecessors 
    -- CP-element group 51: 	20 
    -- CP-element group 51: 	23 
    -- CP-element group 51: 	26 
    -- CP-element group 51: 	29 
    -- CP-element group 51: 	32 
    -- CP-element group 51: 	35 
    -- CP-element group 51: 	38 
    -- CP-element group 51: 	41 
    -- CP-element group 51: 	44 
    -- CP-element group 51: 	47 
    -- CP-element group 51: 	50 
    -- CP-element group 51: marked-predecessors 
    -- CP-element group 51: 	53 
    -- CP-element group 51: successors 
    -- CP-element group 51: 	52 
    -- CP-element group 51:  members (3) 
      -- CP-element group 51: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/WPIPE_PERFORMANCE_COUNTER_VALUE_493_sample_start_
      -- CP-element group 51: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/WPIPE_PERFORMANCE_COUNTER_VALUE_493_Sample/$entry
      -- CP-element group 51: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/WPIPE_PERFORMANCE_COUNTER_VALUE_493_Sample/req
      -- 
    req_375_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_375_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_access_daemon_CP_139_elements(51), ack => WPIPE_PERFORMANCE_COUNTER_VALUE_493_inst_req_0); -- 
    performance_counters_access_daemon_cp_element_group_51: block -- 
      constant place_capacities: IntegerArray(0 to 11) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1,10 => 1,11 => 1);
      constant place_markings: IntegerArray(0 to 11)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0,11 => 1);
      constant place_delays: IntegerArray(0 to 11) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0,11 => 0);
      constant joinName: string(1 to 54) := "performance_counters_access_daemon_cp_element_group_51"; 
      signal preds: BooleanArray(1 to 12); -- 
    begin -- 
      preds <= performance_counters_access_daemon_CP_139_elements(20) & performance_counters_access_daemon_CP_139_elements(23) & performance_counters_access_daemon_CP_139_elements(26) & performance_counters_access_daemon_CP_139_elements(29) & performance_counters_access_daemon_CP_139_elements(32) & performance_counters_access_daemon_CP_139_elements(35) & performance_counters_access_daemon_CP_139_elements(38) & performance_counters_access_daemon_CP_139_elements(41) & performance_counters_access_daemon_CP_139_elements(44) & performance_counters_access_daemon_CP_139_elements(47) & performance_counters_access_daemon_CP_139_elements(50) & performance_counters_access_daemon_CP_139_elements(53);
      gj_performance_counters_access_daemon_cp_element_group_51 : generic_join generic map(name => joinName, number_of_predecessors => 12, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_access_daemon_CP_139_elements(51), clk => clk, reset => reset); --
    end block;
    -- CP-element group 52:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 52: predecessors 
    -- CP-element group 52: 	51 
    -- CP-element group 52: successors 
    -- CP-element group 52: 	53 
    -- CP-element group 52: marked-successors 
    -- CP-element group 52: 	16 
    -- CP-element group 52: 	21 
    -- CP-element group 52: 	24 
    -- CP-element group 52: 	27 
    -- CP-element group 52: 	30 
    -- CP-element group 52: 	33 
    -- CP-element group 52: 	36 
    -- CP-element group 52: 	39 
    -- CP-element group 52: 	42 
    -- CP-element group 52: 	45 
    -- CP-element group 52: 	48 
    -- CP-element group 52:  members (6) 
      -- CP-element group 52: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/WPIPE_PERFORMANCE_COUNTER_VALUE_493_sample_completed_
      -- CP-element group 52: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/WPIPE_PERFORMANCE_COUNTER_VALUE_493_update_start_
      -- CP-element group 52: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/WPIPE_PERFORMANCE_COUNTER_VALUE_493_Sample/$exit
      -- CP-element group 52: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/WPIPE_PERFORMANCE_COUNTER_VALUE_493_Sample/ack
      -- CP-element group 52: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/WPIPE_PERFORMANCE_COUNTER_VALUE_493_Update/$entry
      -- CP-element group 52: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/WPIPE_PERFORMANCE_COUNTER_VALUE_493_Update/req
      -- 
    ack_376_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 52_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_PERFORMANCE_COUNTER_VALUE_493_inst_ack_0, ack => performance_counters_access_daemon_CP_139_elements(52)); -- 
    req_380_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_380_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_access_daemon_CP_139_elements(52), ack => WPIPE_PERFORMANCE_COUNTER_VALUE_493_inst_req_1); -- 
    -- CP-element group 53:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 53: predecessors 
    -- CP-element group 53: 	52 
    -- CP-element group 53: successors 
    -- CP-element group 53: 	55 
    -- CP-element group 53: marked-successors 
    -- CP-element group 53: 	51 
    -- CP-element group 53:  members (3) 
      -- CP-element group 53: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/WPIPE_PERFORMANCE_COUNTER_VALUE_493_update_completed_
      -- CP-element group 53: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/WPIPE_PERFORMANCE_COUNTER_VALUE_493_Update/$exit
      -- CP-element group 53: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/WPIPE_PERFORMANCE_COUNTER_VALUE_493_Update/ack
      -- 
    ack_381_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 53_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_PERFORMANCE_COUNTER_VALUE_493_inst_ack_1, ack => performance_counters_access_daemon_CP_139_elements(53)); -- 
    -- CP-element group 54:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 54: predecessors 
    -- CP-element group 54: 	9 
    -- CP-element group 54: successors 
    -- CP-element group 54: 	10 
    -- CP-element group 54:  members (1) 
      -- CP-element group 54: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/loop_body_delay_to_condition_start
      -- 
    -- Element group performance_counters_access_daemon_CP_139_elements(54) is a control-delay.
    cp_element_54_delay: control_delay_element  generic map(name => " 54_delay", delay_value => 1)  port map(req => performance_counters_access_daemon_CP_139_elements(9), ack => performance_counters_access_daemon_CP_139_elements(54), clk => clk, reset =>reset);
    -- CP-element group 55:  join  transition  bypass  pipeline-parent 
    -- CP-element group 55: predecessors 
    -- CP-element group 55: 	12 
    -- CP-element group 55: 	53 
    -- CP-element group 55: successors 
    -- CP-element group 55: 	6 
    -- CP-element group 55:  members (1) 
      -- CP-element group 55: 	 branch_block_stmt_296/do_while_stmt_297/do_while_stmt_297_loop_body/$exit
      -- 
    performance_counters_access_daemon_cp_element_group_55: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 7);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 54) := "performance_counters_access_daemon_cp_element_group_55"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_access_daemon_CP_139_elements(12) & performance_counters_access_daemon_CP_139_elements(53);
      gj_performance_counters_access_daemon_cp_element_group_55 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_access_daemon_CP_139_elements(55), clk => clk, reset => reset); --
    end block;
    -- CP-element group 56:  transition  input  bypass  pipeline-parent 
    -- CP-element group 56: predecessors 
    -- CP-element group 56: 	5 
    -- CP-element group 56: successors 
    -- CP-element group 56:  members (2) 
      -- CP-element group 56: 	 branch_block_stmt_296/do_while_stmt_297/loop_exit/$exit
      -- CP-element group 56: 	 branch_block_stmt_296/do_while_stmt_297/loop_exit/ack
      -- 
    ack_386_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 56_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_297_branch_ack_0, ack => performance_counters_access_daemon_CP_139_elements(56)); -- 
    -- CP-element group 57:  transition  input  bypass  pipeline-parent 
    -- CP-element group 57: predecessors 
    -- CP-element group 57: 	5 
    -- CP-element group 57: successors 
    -- CP-element group 57:  members (2) 
      -- CP-element group 57: 	 branch_block_stmt_296/do_while_stmt_297/loop_taken/$exit
      -- CP-element group 57: 	 branch_block_stmt_296/do_while_stmt_297/loop_taken/ack
      -- 
    ack_390_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 57_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_297_branch_ack_1, ack => performance_counters_access_daemon_CP_139_elements(57)); -- 
    -- CP-element group 58:  transition  bypass  pipeline-parent 
    -- CP-element group 58: predecessors 
    -- CP-element group 58: 	3 
    -- CP-element group 58: successors 
    -- CP-element group 58: 	1 
    -- CP-element group 58:  members (1) 
      -- CP-element group 58: 	 branch_block_stmt_296/do_while_stmt_297/$exit
      -- 
    performance_counters_access_daemon_CP_139_elements(58) <= performance_counters_access_daemon_CP_139_elements(3);
    performance_counters_access_daemon_do_while_stmt_297_terminator_391: loop_terminator -- 
      generic map (name => " performance_counters_access_daemon_do_while_stmt_297_terminator_391", max_iterations_in_flight =>7) 
      port map(loop_body_exit => performance_counters_access_daemon_CP_139_elements(6),loop_continue => performance_counters_access_daemon_CP_139_elements(57),loop_terminate => performance_counters_access_daemon_CP_139_elements(56),loop_back => performance_counters_access_daemon_CP_139_elements(4),loop_exit => performance_counters_access_daemon_CP_139_elements(3),clk => clk, reset => reset); -- 
    entry_tmerge_164_block : block -- 
      signal preds : BooleanArray(0 to 1);
      begin -- 
        preds(0)  <= performance_counters_access_daemon_CP_139_elements(7);
        preds(1)  <= performance_counters_access_daemon_CP_139_elements(8);
        entry_tmerge_164 : transition_merge -- 
          generic map(name => " entry_tmerge_164")
          port map (preds => preds, symbol_out => performance_counters_access_daemon_CP_139_elements(9));
          -- 
    end block;
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal MUX_399_wire : std_logic_vector(31 downto 0);
    signal MUX_401_wire : std_logic_vector(31 downto 0);
    signal MUX_408_wire : std_logic_vector(31 downto 0);
    signal MUX_410_wire : std_logic_vector(31 downto 0);
    signal MUX_418_wire : std_logic_vector(31 downto 0);
    signal MUX_420_wire : std_logic_vector(31 downto 0);
    signal MUX_428_wire : std_logic_vector(31 downto 0);
    signal MUX_430_wire : std_logic_vector(31 downto 0);
    signal MUX_437_wire : std_logic_vector(31 downto 0);
    signal MUX_439_wire : std_logic_vector(31 downto 0);
    signal MUX_448_wire : std_logic_vector(31 downto 0);
    signal MUX_450_wire : std_logic_vector(31 downto 0);
    signal MUX_457_wire : std_logic_vector(31 downto 0);
    signal MUX_459_wire : std_logic_vector(31 downto 0);
    signal MUX_467_wire : std_logic_vector(31 downto 0);
    signal MUX_469_wire : std_logic_vector(31 downto 0);
    signal MUX_477_wire : std_logic_vector(31 downto 0);
    signal MUX_479_wire : std_logic_vector(31 downto 0);
    signal MUX_486_wire : std_logic_vector(31 downto 0);
    signal MUX_488_wire : std_logic_vector(31 downto 0);
    signal OR_u32_u32_411_wire : std_logic_vector(31 downto 0);
    signal OR_u32_u32_421_wire : std_logic_vector(31 downto 0);
    signal OR_u32_u32_440_wire : std_logic_vector(31 downto 0);
    signal OR_u32_u32_441_wire : std_logic_vector(31 downto 0);
    signal OR_u32_u32_460_wire : std_logic_vector(31 downto 0);
    signal OR_u32_u32_470_wire : std_logic_vector(31 downto 0);
    signal OR_u32_u32_489_wire : std_logic_vector(31 downto 0);
    signal OR_u32_u32_490_wire : std_logic_vector(31 downto 0);
    signal RPIPE_PERFORMANCE_COUNTER_ADDR_301_wire : std_logic_vector(7 downto 0);
    signal RPIPE_cti_mispredict_count_322_wire : std_logic_vector(63 downto 0);
    signal RPIPE_cti_mispredict_count_322_wire_322_buffered : std_logic_vector(63 downto 0);
    signal RPIPE_executed_instruction_count_304_wire : std_logic_vector(63 downto 0);
    signal RPIPE_executed_instruction_count_304_wire_304_buffered : std_logic_vector(63 downto 0);
    signal RPIPE_icache_access_count_328_wire : std_logic_vector(63 downto 0);
    signal RPIPE_icache_access_count_328_wire_328_buffered : std_logic_vector(63 downto 0);
    signal RPIPE_icache_miss_count_331_wire : std_logic_vector(63 downto 0);
    signal RPIPE_icache_miss_count_331_wire_331_buffered : std_logic_vector(63 downto 0);
    signal RPIPE_load_count_310_wire : std_logic_vector(63 downto 0);
    signal RPIPE_load_count_310_wire_310_buffered : std_logic_vector(63 downto 0);
    signal RPIPE_load_miss_count_313_wire : std_logic_vector(63 downto 0);
    signal RPIPE_load_miss_count_313_wire_313_buffered : std_logic_vector(63 downto 0);
    signal RPIPE_skipped_instruction_count_307_wire : std_logic_vector(63 downto 0);
    signal RPIPE_skipped_instruction_count_307_wire_307_buffered : std_logic_vector(63 downto 0);
    signal RPIPE_store_count_316_wire : std_logic_vector(63 downto 0);
    signal RPIPE_store_count_316_wire_316_buffered : std_logic_vector(63 downto 0);
    signal RPIPE_store_miss_count_319_wire : std_logic_vector(63 downto 0);
    signal RPIPE_store_miss_count_319_wire_319_buffered : std_logic_vector(63 downto 0);
    signal RPIPE_trap_count_325_wire : std_logic_vector(63 downto 0);
    signal RPIPE_trap_count_325_wire_325_buffered : std_logic_vector(63 downto 0);
    signal a8_299 : std_logic_vector(7 downto 0);
    signal b4_336 : std_logic_vector(3 downto 0);
    signal cmc_320 : std_logic_vector(63 downto 0);
    signal eic_302 : std_logic_vector(63 downto 0);
    signal iac_326 : std_logic_vector(63 downto 0);
    signal imc_329 : std_logic_vector(63 downto 0);
    signal konst_339_wire_constant : std_logic_vector(7 downto 0);
    signal konst_344_wire_constant : std_logic_vector(3 downto 0);
    signal konst_349_wire_constant : std_logic_vector(3 downto 0);
    signal konst_354_wire_constant : std_logic_vector(3 downto 0);
    signal konst_359_wire_constant : std_logic_vector(3 downto 0);
    signal konst_364_wire_constant : std_logic_vector(3 downto 0);
    signal konst_369_wire_constant : std_logic_vector(3 downto 0);
    signal konst_374_wire_constant : std_logic_vector(3 downto 0);
    signal konst_379_wire_constant : std_logic_vector(3 downto 0);
    signal konst_384_wire_constant : std_logic_vector(3 downto 0);
    signal konst_389_wire_constant : std_logic_vector(3 downto 0);
    signal konst_400_wire_constant : std_logic_vector(31 downto 0);
    signal konst_409_wire_constant : std_logic_vector(31 downto 0);
    signal konst_419_wire_constant : std_logic_vector(31 downto 0);
    signal konst_429_wire_constant : std_logic_vector(31 downto 0);
    signal konst_438_wire_constant : std_logic_vector(31 downto 0);
    signal konst_449_wire_constant : std_logic_vector(31 downto 0);
    signal konst_458_wire_constant : std_logic_vector(31 downto 0);
    signal konst_468_wire_constant : std_logic_vector(31 downto 0);
    signal konst_478_wire_constant : std_logic_vector(31 downto 0);
    signal konst_487_wire_constant : std_logic_vector(31 downto 0);
    signal konst_497_wire_constant : std_logic_vector(0 downto 0);
    signal lc_308 : std_logic_vector(63 downto 0);
    signal lmc_311 : std_logic_vector(63 downto 0);
    signal lw_341 : std_logic_vector(0 downto 0);
    signal ret_val_492 : std_logic_vector(31 downto 0);
    signal sc_314 : std_logic_vector(63 downto 0);
    signal sel_cmc_376 : std_logic_vector(0 downto 0);
    signal sel_eic_346 : std_logic_vector(0 downto 0);
    signal sel_iac_386 : std_logic_vector(0 downto 0);
    signal sel_imc_391 : std_logic_vector(0 downto 0);
    signal sel_lc_356 : std_logic_vector(0 downto 0);
    signal sel_lmc_361 : std_logic_vector(0 downto 0);
    signal sel_sc_366 : std_logic_vector(0 downto 0);
    signal sel_sic_351 : std_logic_vector(0 downto 0);
    signal sel_smc_371 : std_logic_vector(0 downto 0);
    signal sel_tc_381 : std_logic_vector(0 downto 0);
    signal sic_305 : std_logic_vector(63 downto 0);
    signal slice_396_wire : std_logic_vector(31 downto 0);
    signal slice_398_wire : std_logic_vector(31 downto 0);
    signal slice_405_wire : std_logic_vector(31 downto 0);
    signal slice_407_wire : std_logic_vector(31 downto 0);
    signal slice_415_wire : std_logic_vector(31 downto 0);
    signal slice_417_wire : std_logic_vector(31 downto 0);
    signal slice_425_wire : std_logic_vector(31 downto 0);
    signal slice_427_wire : std_logic_vector(31 downto 0);
    signal slice_434_wire : std_logic_vector(31 downto 0);
    signal slice_436_wire : std_logic_vector(31 downto 0);
    signal slice_445_wire : std_logic_vector(31 downto 0);
    signal slice_447_wire : std_logic_vector(31 downto 0);
    signal slice_454_wire : std_logic_vector(31 downto 0);
    signal slice_456_wire : std_logic_vector(31 downto 0);
    signal slice_464_wire : std_logic_vector(31 downto 0);
    signal slice_466_wire : std_logic_vector(31 downto 0);
    signal slice_474_wire : std_logic_vector(31 downto 0);
    signal slice_476_wire : std_logic_vector(31 downto 0);
    signal slice_483_wire : std_logic_vector(31 downto 0);
    signal slice_485_wire : std_logic_vector(31 downto 0);
    signal smc_317 : std_logic_vector(63 downto 0);
    signal tc_323 : std_logic_vector(63 downto 0);
    -- 
  begin -- 
    konst_339_wire_constant <= "00000010";
    konst_344_wire_constant <= "0000";
    konst_349_wire_constant <= "0001";
    konst_354_wire_constant <= "0010";
    konst_359_wire_constant <= "0011";
    konst_364_wire_constant <= "0100";
    konst_369_wire_constant <= "0101";
    konst_374_wire_constant <= "0110";
    konst_379_wire_constant <= "0111";
    konst_384_wire_constant <= "1000";
    konst_389_wire_constant <= "1001";
    konst_400_wire_constant <= "00000000000000000000000000000000";
    konst_409_wire_constant <= "00000000000000000000000000000000";
    konst_419_wire_constant <= "00000000000000000000000000000000";
    konst_429_wire_constant <= "00000000000000000000000000000000";
    konst_438_wire_constant <= "00000000000000000000000000000000";
    konst_449_wire_constant <= "00000000000000000000000000000000";
    konst_458_wire_constant <= "00000000000000000000000000000000";
    konst_468_wire_constant <= "00000000000000000000000000000000";
    konst_478_wire_constant <= "00000000000000000000000000000000";
    konst_487_wire_constant <= "00000000000000000000000000000000";
    konst_497_wire_constant <= "1";
    -- flow-through select operator MUX_399_inst
    MUX_399_wire <= slice_396_wire when (lw_341(0) /=  '0') else slice_398_wire;
    -- flow-through select operator MUX_401_inst
    MUX_401_wire <= MUX_399_wire when (sel_eic_346(0) /=  '0') else konst_400_wire_constant;
    -- flow-through select operator MUX_408_inst
    MUX_408_wire <= slice_405_wire when (lw_341(0) /=  '0') else slice_407_wire;
    -- flow-through select operator MUX_410_inst
    MUX_410_wire <= MUX_408_wire when (sel_sic_351(0) /=  '0') else konst_409_wire_constant;
    -- flow-through select operator MUX_418_inst
    MUX_418_wire <= slice_415_wire when (lw_341(0) /=  '0') else slice_417_wire;
    -- flow-through select operator MUX_420_inst
    MUX_420_wire <= MUX_418_wire when (sel_lc_356(0) /=  '0') else konst_419_wire_constant;
    -- flow-through select operator MUX_428_inst
    MUX_428_wire <= slice_425_wire when (lw_341(0) /=  '0') else slice_427_wire;
    -- flow-through select operator MUX_430_inst
    MUX_430_wire <= MUX_428_wire when (sel_lmc_361(0) /=  '0') else konst_429_wire_constant;
    -- flow-through select operator MUX_437_inst
    MUX_437_wire <= slice_434_wire when (lw_341(0) /=  '0') else slice_436_wire;
    -- flow-through select operator MUX_439_inst
    MUX_439_wire <= MUX_437_wire when (sel_sc_366(0) /=  '0') else konst_438_wire_constant;
    -- flow-through select operator MUX_448_inst
    MUX_448_wire <= slice_445_wire when (lw_341(0) /=  '0') else slice_447_wire;
    -- flow-through select operator MUX_450_inst
    MUX_450_wire <= MUX_448_wire when (sel_smc_371(0) /=  '0') else konst_449_wire_constant;
    -- flow-through select operator MUX_457_inst
    MUX_457_wire <= slice_454_wire when (lw_341(0) /=  '0') else slice_456_wire;
    -- flow-through select operator MUX_459_inst
    MUX_459_wire <= MUX_457_wire when (sel_cmc_376(0) /=  '0') else konst_458_wire_constant;
    -- flow-through select operator MUX_467_inst
    MUX_467_wire <= slice_464_wire when (lw_341(0) /=  '0') else slice_466_wire;
    -- flow-through select operator MUX_469_inst
    MUX_469_wire <= MUX_467_wire when (sel_tc_381(0) /=  '0') else konst_468_wire_constant;
    -- flow-through select operator MUX_477_inst
    MUX_477_wire <= slice_474_wire when (lw_341(0) /=  '0') else slice_476_wire;
    -- flow-through select operator MUX_479_inst
    MUX_479_wire <= MUX_477_wire when (sel_iac_386(0) /=  '0') else konst_478_wire_constant;
    -- flow-through select operator MUX_486_inst
    MUX_486_wire <= slice_483_wire when (lw_341(0) /=  '0') else slice_485_wire;
    -- flow-through select operator MUX_488_inst
    MUX_488_wire <= MUX_486_wire when (sel_imc_391(0) /=  '0') else konst_487_wire_constant;
    -- flow-through slice operator slice_335_inst
    b4_336 <= a8_299(6 downto 3);
    -- flow-through slice operator slice_396_inst
    slice_396_wire <= eic_302(31 downto 0);
    -- flow-through slice operator slice_398_inst
    slice_398_wire <= eic_302(63 downto 32);
    -- flow-through slice operator slice_405_inst
    slice_405_wire <= sic_305(31 downto 0);
    -- flow-through slice operator slice_407_inst
    slice_407_wire <= sic_305(63 downto 32);
    -- flow-through slice operator slice_415_inst
    slice_415_wire <= lc_308(31 downto 0);
    -- flow-through slice operator slice_417_inst
    slice_417_wire <= lc_308(63 downto 32);
    -- flow-through slice operator slice_425_inst
    slice_425_wire <= lmc_311(31 downto 0);
    -- flow-through slice operator slice_427_inst
    slice_427_wire <= lmc_311(63 downto 32);
    -- flow-through slice operator slice_434_inst
    slice_434_wire <= sc_314(31 downto 0);
    -- flow-through slice operator slice_436_inst
    slice_436_wire <= sc_314(63 downto 32);
    -- flow-through slice operator slice_445_inst
    slice_445_wire <= smc_317(31 downto 0);
    -- flow-through slice operator slice_447_inst
    slice_447_wire <= smc_317(63 downto 32);
    -- flow-through slice operator slice_454_inst
    slice_454_wire <= cmc_320(31 downto 0);
    -- flow-through slice operator slice_456_inst
    slice_456_wire <= cmc_320(63 downto 32);
    -- flow-through slice operator slice_464_inst
    slice_464_wire <= tc_323(31 downto 0);
    -- flow-through slice operator slice_466_inst
    slice_466_wire <= tc_323(63 downto 32);
    -- flow-through slice operator slice_474_inst
    slice_474_wire <= iac_326(31 downto 0);
    -- flow-through slice operator slice_476_inst
    slice_476_wire <= iac_326(63 downto 32);
    -- flow-through slice operator slice_483_inst
    slice_483_wire <= imc_329(31 downto 0);
    -- flow-through slice operator slice_485_inst
    slice_485_wire <= imc_329(63 downto 32);
    RPIPE_cti_mispredict_count_322_wire_322_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= RPIPE_cti_mispredict_count_322_wire_322_buf_req_0;
      RPIPE_cti_mispredict_count_322_wire_322_buf_ack_0<= wack(0);
      rreq(0) <= RPIPE_cti_mispredict_count_322_wire_322_buf_req_1;
      RPIPE_cti_mispredict_count_322_wire_322_buf_ack_1<= rack(0);
      RPIPE_cti_mispredict_count_322_wire_322_buf : InterlockBuffer generic map ( -- 
        name => "RPIPE_cti_mispredict_count_322_wire_322_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 64,
        out_data_width => 64,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => RPIPE_cti_mispredict_count_322_wire,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => RPIPE_cti_mispredict_count_322_wire_322_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    RPIPE_executed_instruction_count_304_wire_304_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= RPIPE_executed_instruction_count_304_wire_304_buf_req_0;
      RPIPE_executed_instruction_count_304_wire_304_buf_ack_0<= wack(0);
      rreq(0) <= RPIPE_executed_instruction_count_304_wire_304_buf_req_1;
      RPIPE_executed_instruction_count_304_wire_304_buf_ack_1<= rack(0);
      RPIPE_executed_instruction_count_304_wire_304_buf : InterlockBuffer generic map ( -- 
        name => "RPIPE_executed_instruction_count_304_wire_304_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 64,
        out_data_width => 64,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => RPIPE_executed_instruction_count_304_wire,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => RPIPE_executed_instruction_count_304_wire_304_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    RPIPE_icache_access_count_328_wire_328_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= RPIPE_icache_access_count_328_wire_328_buf_req_0;
      RPIPE_icache_access_count_328_wire_328_buf_ack_0<= wack(0);
      rreq(0) <= RPIPE_icache_access_count_328_wire_328_buf_req_1;
      RPIPE_icache_access_count_328_wire_328_buf_ack_1<= rack(0);
      RPIPE_icache_access_count_328_wire_328_buf : InterlockBuffer generic map ( -- 
        name => "RPIPE_icache_access_count_328_wire_328_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 64,
        out_data_width => 64,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => RPIPE_icache_access_count_328_wire,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => RPIPE_icache_access_count_328_wire_328_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    RPIPE_icache_miss_count_331_wire_331_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= RPIPE_icache_miss_count_331_wire_331_buf_req_0;
      RPIPE_icache_miss_count_331_wire_331_buf_ack_0<= wack(0);
      rreq(0) <= RPIPE_icache_miss_count_331_wire_331_buf_req_1;
      RPIPE_icache_miss_count_331_wire_331_buf_ack_1<= rack(0);
      RPIPE_icache_miss_count_331_wire_331_buf : InterlockBuffer generic map ( -- 
        name => "RPIPE_icache_miss_count_331_wire_331_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 64,
        out_data_width => 64,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => RPIPE_icache_miss_count_331_wire,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => RPIPE_icache_miss_count_331_wire_331_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    RPIPE_load_count_310_wire_310_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= RPIPE_load_count_310_wire_310_buf_req_0;
      RPIPE_load_count_310_wire_310_buf_ack_0<= wack(0);
      rreq(0) <= RPIPE_load_count_310_wire_310_buf_req_1;
      RPIPE_load_count_310_wire_310_buf_ack_1<= rack(0);
      RPIPE_load_count_310_wire_310_buf : InterlockBuffer generic map ( -- 
        name => "RPIPE_load_count_310_wire_310_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 64,
        out_data_width => 64,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => RPIPE_load_count_310_wire,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => RPIPE_load_count_310_wire_310_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    RPIPE_load_miss_count_313_wire_313_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= RPIPE_load_miss_count_313_wire_313_buf_req_0;
      RPIPE_load_miss_count_313_wire_313_buf_ack_0<= wack(0);
      rreq(0) <= RPIPE_load_miss_count_313_wire_313_buf_req_1;
      RPIPE_load_miss_count_313_wire_313_buf_ack_1<= rack(0);
      RPIPE_load_miss_count_313_wire_313_buf : InterlockBuffer generic map ( -- 
        name => "RPIPE_load_miss_count_313_wire_313_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 64,
        out_data_width => 64,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => RPIPE_load_miss_count_313_wire,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => RPIPE_load_miss_count_313_wire_313_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    RPIPE_skipped_instruction_count_307_wire_307_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= RPIPE_skipped_instruction_count_307_wire_307_buf_req_0;
      RPIPE_skipped_instruction_count_307_wire_307_buf_ack_0<= wack(0);
      rreq(0) <= RPIPE_skipped_instruction_count_307_wire_307_buf_req_1;
      RPIPE_skipped_instruction_count_307_wire_307_buf_ack_1<= rack(0);
      RPIPE_skipped_instruction_count_307_wire_307_buf : InterlockBuffer generic map ( -- 
        name => "RPIPE_skipped_instruction_count_307_wire_307_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 64,
        out_data_width => 64,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => RPIPE_skipped_instruction_count_307_wire,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => RPIPE_skipped_instruction_count_307_wire_307_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    RPIPE_store_count_316_wire_316_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= RPIPE_store_count_316_wire_316_buf_req_0;
      RPIPE_store_count_316_wire_316_buf_ack_0<= wack(0);
      rreq(0) <= RPIPE_store_count_316_wire_316_buf_req_1;
      RPIPE_store_count_316_wire_316_buf_ack_1<= rack(0);
      RPIPE_store_count_316_wire_316_buf : InterlockBuffer generic map ( -- 
        name => "RPIPE_store_count_316_wire_316_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 64,
        out_data_width => 64,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => RPIPE_store_count_316_wire,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => RPIPE_store_count_316_wire_316_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    RPIPE_store_miss_count_319_wire_319_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= RPIPE_store_miss_count_319_wire_319_buf_req_0;
      RPIPE_store_miss_count_319_wire_319_buf_ack_0<= wack(0);
      rreq(0) <= RPIPE_store_miss_count_319_wire_319_buf_req_1;
      RPIPE_store_miss_count_319_wire_319_buf_ack_1<= rack(0);
      RPIPE_store_miss_count_319_wire_319_buf : InterlockBuffer generic map ( -- 
        name => "RPIPE_store_miss_count_319_wire_319_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 64,
        out_data_width => 64,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => RPIPE_store_miss_count_319_wire,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => RPIPE_store_miss_count_319_wire_319_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    RPIPE_trap_count_325_wire_325_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= RPIPE_trap_count_325_wire_325_buf_req_0;
      RPIPE_trap_count_325_wire_325_buf_ack_0<= wack(0);
      rreq(0) <= RPIPE_trap_count_325_wire_325_buf_req_1;
      RPIPE_trap_count_325_wire_325_buf_ack_1<= rack(0);
      RPIPE_trap_count_325_wire_325_buf : InterlockBuffer generic map ( -- 
        name => "RPIPE_trap_count_325_wire_325_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 64,
        out_data_width => 64,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => RPIPE_trap_count_325_wire,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => RPIPE_trap_count_325_wire_325_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    -- interlock ssrc_phi_stmt_299
    process(RPIPE_PERFORMANCE_COUNTER_ADDR_301_wire) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 7 downto 0) := RPIPE_PERFORMANCE_COUNTER_ADDR_301_wire(7 downto 0);
      a8_299 <= tmp_var; -- 
    end process;
    -- interlock ssrc_phi_stmt_302
    process(RPIPE_executed_instruction_count_304_wire_304_buffered) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 63 downto 0) := RPIPE_executed_instruction_count_304_wire_304_buffered(63 downto 0);
      eic_302 <= tmp_var; -- 
    end process;
    -- interlock ssrc_phi_stmt_305
    process(RPIPE_skipped_instruction_count_307_wire_307_buffered) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 63 downto 0) := RPIPE_skipped_instruction_count_307_wire_307_buffered(63 downto 0);
      sic_305 <= tmp_var; -- 
    end process;
    -- interlock ssrc_phi_stmt_308
    process(RPIPE_load_count_310_wire_310_buffered) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 63 downto 0) := RPIPE_load_count_310_wire_310_buffered(63 downto 0);
      lc_308 <= tmp_var; -- 
    end process;
    -- interlock ssrc_phi_stmt_311
    process(RPIPE_load_miss_count_313_wire_313_buffered) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 63 downto 0) := RPIPE_load_miss_count_313_wire_313_buffered(63 downto 0);
      lmc_311 <= tmp_var; -- 
    end process;
    -- interlock ssrc_phi_stmt_314
    process(RPIPE_store_count_316_wire_316_buffered) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 63 downto 0) := RPIPE_store_count_316_wire_316_buffered(63 downto 0);
      sc_314 <= tmp_var; -- 
    end process;
    -- interlock ssrc_phi_stmt_317
    process(RPIPE_store_miss_count_319_wire_319_buffered) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 63 downto 0) := RPIPE_store_miss_count_319_wire_319_buffered(63 downto 0);
      smc_317 <= tmp_var; -- 
    end process;
    -- interlock ssrc_phi_stmt_320
    process(RPIPE_cti_mispredict_count_322_wire_322_buffered) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 63 downto 0) := RPIPE_cti_mispredict_count_322_wire_322_buffered(63 downto 0);
      cmc_320 <= tmp_var; -- 
    end process;
    -- interlock ssrc_phi_stmt_323
    process(RPIPE_trap_count_325_wire_325_buffered) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 63 downto 0) := RPIPE_trap_count_325_wire_325_buffered(63 downto 0);
      tc_323 <= tmp_var; -- 
    end process;
    -- interlock ssrc_phi_stmt_326
    process(RPIPE_icache_access_count_328_wire_328_buffered) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 63 downto 0) := RPIPE_icache_access_count_328_wire_328_buffered(63 downto 0);
      iac_326 <= tmp_var; -- 
    end process;
    -- interlock ssrc_phi_stmt_329
    process(RPIPE_icache_miss_count_331_wire_331_buffered) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 63 downto 0) := RPIPE_icache_miss_count_331_wire_331_buffered(63 downto 0);
      imc_329 <= tmp_var; -- 
    end process;
    do_while_stmt_297_branch: Block -- 
      -- branch-block
      signal condition_sig : std_logic_vector(0 downto 0);
      begin 
      condition_sig <= konst_497_wire_constant;
      branch_instance: BranchBase -- 
        generic map( name => "do_while_stmt_297_branch", condition_width => 1,  bypass_flag => true)
        port map( -- 
          condition => condition_sig,
          req => do_while_stmt_297_branch_req_0,
          ack0 => do_while_stmt_297_branch_ack_0,
          ack1 => do_while_stmt_297_branch_ack_1,
          clk => clk,
          reset => reset); -- 
      --
    end Block; -- branch-block
    -- flow through binary operator BITSEL_u8_u1_340_inst
    process(a8_299) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(a8_299, konst_339_wire_constant, tmp_var);
      lw_341 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_345_inst
    process(b4_336) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(b4_336, konst_344_wire_constant, tmp_var);
      sel_eic_346 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_350_inst
    process(b4_336) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(b4_336, konst_349_wire_constant, tmp_var);
      sel_sic_351 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_355_inst
    process(b4_336) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(b4_336, konst_354_wire_constant, tmp_var);
      sel_lc_356 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_360_inst
    process(b4_336) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(b4_336, konst_359_wire_constant, tmp_var);
      sel_lmc_361 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_365_inst
    process(b4_336) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(b4_336, konst_364_wire_constant, tmp_var);
      sel_sc_366 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_370_inst
    process(b4_336) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(b4_336, konst_369_wire_constant, tmp_var);
      sel_smc_371 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_375_inst
    process(b4_336) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(b4_336, konst_374_wire_constant, tmp_var);
      sel_cmc_376 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_380_inst
    process(b4_336) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(b4_336, konst_379_wire_constant, tmp_var);
      sel_tc_381 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_385_inst
    process(b4_336) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(b4_336, konst_384_wire_constant, tmp_var);
      sel_iac_386 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_390_inst
    process(b4_336) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(b4_336, konst_389_wire_constant, tmp_var);
      sel_imc_391 <= tmp_var; --
    end process;
    -- flow through binary operator OR_u32_u32_411_inst
    OR_u32_u32_411_wire <= (MUX_401_wire or MUX_410_wire);
    -- flow through binary operator OR_u32_u32_421_inst
    OR_u32_u32_421_wire <= (OR_u32_u32_411_wire or MUX_420_wire);
    -- flow through binary operator OR_u32_u32_440_inst
    OR_u32_u32_440_wire <= (MUX_430_wire or MUX_439_wire);
    -- flow through binary operator OR_u32_u32_441_inst
    OR_u32_u32_441_wire <= (OR_u32_u32_421_wire or OR_u32_u32_440_wire);
    -- flow through binary operator OR_u32_u32_460_inst
    OR_u32_u32_460_wire <= (MUX_450_wire or MUX_459_wire);
    -- flow through binary operator OR_u32_u32_470_inst
    OR_u32_u32_470_wire <= (OR_u32_u32_460_wire or MUX_469_wire);
    -- flow through binary operator OR_u32_u32_489_inst
    OR_u32_u32_489_wire <= (MUX_479_wire or MUX_488_wire);
    -- flow through binary operator OR_u32_u32_490_inst
    OR_u32_u32_490_wire <= (OR_u32_u32_470_wire or OR_u32_u32_489_wire);
    -- flow through binary operator OR_u32_u32_491_inst
    ret_val_492 <= (OR_u32_u32_441_wire or OR_u32_u32_490_wire);
    -- shared inport operator group (0) : RPIPE_PERFORMANCE_COUNTER_ADDR_301_inst 
    InportGroup_0: Block -- 
      signal data_out: std_logic_vector(7 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_PERFORMANCE_COUNTER_ADDR_301_inst_req_0;
      RPIPE_PERFORMANCE_COUNTER_ADDR_301_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_PERFORMANCE_COUNTER_ADDR_301_inst_req_1;
      RPIPE_PERFORMANCE_COUNTER_ADDR_301_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      RPIPE_PERFORMANCE_COUNTER_ADDR_301_wire <= data_out(7 downto 0);
      PERFORMANCE_COUNTER_ADDR_read_0_gI: SplitGuardInterface generic map(name => "PERFORMANCE_COUNTER_ADDR_read_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      PERFORMANCE_COUNTER_ADDR_read_0: InputPortRevised -- 
        generic map ( name => "PERFORMANCE_COUNTER_ADDR_read_0", data_width => 8,  num_reqs => 1,  output_buffering => outBUFs,   nonblocking_read_flag => False,  no_arbitration => false)
        port map (-- 
          sample_req => reqL , 
          sample_ack => ackL, 
          update_req => reqR, 
          update_ack => ackR, 
          data => data_out, 
          oreq => PERFORMANCE_COUNTER_ADDR_pipe_read_req(0),
          oack => PERFORMANCE_COUNTER_ADDR_pipe_read_ack(0),
          odata => PERFORMANCE_COUNTER_ADDR_pipe_read_data(7 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 0
    -- read from input-signal cti_mispredict_count
    RPIPE_cti_mispredict_count_322_wire <= cti_mispredict_count;
    -- read from input-signal executed_instruction_count
    RPIPE_executed_instruction_count_304_wire <= executed_instruction_count;
    -- read from input-signal icache_access_count
    RPIPE_icache_access_count_328_wire <= icache_access_count;
    -- read from input-signal icache_miss_count
    RPIPE_icache_miss_count_331_wire <= icache_miss_count;
    -- read from input-signal load_count
    RPIPE_load_count_310_wire <= load_count;
    -- read from input-signal load_miss_count
    RPIPE_load_miss_count_313_wire <= load_miss_count;
    -- read from input-signal skipped_instruction_count
    RPIPE_skipped_instruction_count_307_wire <= skipped_instruction_count;
    -- read from input-signal store_count
    RPIPE_store_count_316_wire <= store_count;
    -- read from input-signal store_miss_count
    RPIPE_store_miss_count_319_wire <= store_miss_count;
    -- read from input-signal trap_count
    RPIPE_trap_count_325_wire <= trap_count;
    -- shared outport operator group (0) : WPIPE_PERFORMANCE_COUNTER_VALUE_493_inst 
    OutportGroup_0: Block -- 
      signal data_in: std_logic_vector(31 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_PERFORMANCE_COUNTER_VALUE_493_inst_req_0;
      WPIPE_PERFORMANCE_COUNTER_VALUE_493_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_PERFORMANCE_COUNTER_VALUE_493_inst_req_1;
      WPIPE_PERFORMANCE_COUNTER_VALUE_493_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= ret_val_492;
      PERFORMANCE_COUNTER_VALUE_write_0_gI: SplitGuardInterface generic map(name => "PERFORMANCE_COUNTER_VALUE_write_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      PERFORMANCE_COUNTER_VALUE_write_0: OutputPortRevised -- 
        generic map ( name => "PERFORMANCE_COUNTER_VALUE", data_width => 32, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => PERFORMANCE_COUNTER_VALUE_pipe_write_req(0),
          oack => PERFORMANCE_COUNTER_VALUE_pipe_write_ack(0),
          odata => PERFORMANCE_COUNTER_VALUE_pipe_write_data(31 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    -- 
  end Block; -- data_path
  -- 
end performance_counters_access_daemon_arch;
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
use performance_counters_lib.afb_performance_counters_base_global_package.all;
entity performance_counters_update_daemon is -- 
  generic (tag_length : integer); 
  port ( -- 
    PERFORMANCE_COUNTER_UPDATE_pipe_read_req : out  std_logic_vector(0 downto 0);
    PERFORMANCE_COUNTER_UPDATE_pipe_read_ack : in   std_logic_vector(0 downto 0);
    PERFORMANCE_COUNTER_UPDATE_pipe_read_data : in   std_logic_vector(9 downto 0);
    cti_mispredict_count_pipe_write_req : out  std_logic_vector(0 downto 0);
    cti_mispredict_count_pipe_write_ack : in   std_logic_vector(0 downto 0);
    cti_mispredict_count_pipe_write_data : out  std_logic_vector(63 downto 0);
    executed_instruction_count_pipe_write_req : out  std_logic_vector(0 downto 0);
    executed_instruction_count_pipe_write_ack : in   std_logic_vector(0 downto 0);
    executed_instruction_count_pipe_write_data : out  std_logic_vector(63 downto 0);
    icache_access_count_pipe_write_req : out  std_logic_vector(0 downto 0);
    icache_access_count_pipe_write_ack : in   std_logic_vector(0 downto 0);
    icache_access_count_pipe_write_data : out  std_logic_vector(63 downto 0);
    icache_miss_count_pipe_write_req : out  std_logic_vector(0 downto 0);
    icache_miss_count_pipe_write_ack : in   std_logic_vector(0 downto 0);
    icache_miss_count_pipe_write_data : out  std_logic_vector(63 downto 0);
    load_count_pipe_write_req : out  std_logic_vector(0 downto 0);
    load_count_pipe_write_ack : in   std_logic_vector(0 downto 0);
    load_count_pipe_write_data : out  std_logic_vector(63 downto 0);
    load_miss_count_pipe_write_req : out  std_logic_vector(0 downto 0);
    load_miss_count_pipe_write_ack : in   std_logic_vector(0 downto 0);
    load_miss_count_pipe_write_data : out  std_logic_vector(63 downto 0);
    skipped_instruction_count_pipe_write_req : out  std_logic_vector(0 downto 0);
    skipped_instruction_count_pipe_write_ack : in   std_logic_vector(0 downto 0);
    skipped_instruction_count_pipe_write_data : out  std_logic_vector(63 downto 0);
    store_count_pipe_write_req : out  std_logic_vector(0 downto 0);
    store_count_pipe_write_ack : in   std_logic_vector(0 downto 0);
    store_count_pipe_write_data : out  std_logic_vector(63 downto 0);
    store_miss_count_pipe_write_req : out  std_logic_vector(0 downto 0);
    store_miss_count_pipe_write_ack : in   std_logic_vector(0 downto 0);
    store_miss_count_pipe_write_data : out  std_logic_vector(63 downto 0);
    trap_count_pipe_write_req : out  std_logic_vector(0 downto 0);
    trap_count_pipe_write_ack : in   std_logic_vector(0 downto 0);
    trap_count_pipe_write_data : out  std_logic_vector(63 downto 0);
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
end entity performance_counters_update_daemon;
architecture performance_counters_update_daemon_arch of performance_counters_update_daemon is -- 
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
  signal performance_counters_update_daemon_CP_392_start: Boolean;
  signal performance_counters_update_daemon_CP_392_symbol: Boolean;
  -- volatile/operator module components. 
  -- links between control-path and data-path
  signal WPIPE_store_miss_count_693_inst_ack_1 : boolean;
  signal WPIPE_load_miss_count_687_inst_ack_0 : boolean;
  signal WPIPE_store_miss_count_693_inst_req_0 : boolean;
  signal WPIPE_icache_access_count_702_inst_req_1 : boolean;
  signal WPIPE_icache_access_count_702_inst_req_0 : boolean;
  signal WPIPE_icache_access_count_702_inst_ack_0 : boolean;
  signal WPIPE_cti_mispredict_count_696_inst_ack_1 : boolean;
  signal WPIPE_store_count_690_inst_ack_0 : boolean;
  signal WPIPE_load_count_684_inst_req_0 : boolean;
  signal n_imc_677_551_buf_req_0 : boolean;
  signal WPIPE_icache_miss_count_705_inst_req_1 : boolean;
  signal WPIPE_icache_access_count_702_inst_ack_1 : boolean;
  signal WPIPE_cti_mispredict_count_696_inst_req_1 : boolean;
  signal WPIPE_load_miss_count_687_inst_req_1 : boolean;
  signal WPIPE_executed_instruction_count_678_inst_req_0 : boolean;
  signal WPIPE_load_miss_count_687_inst_ack_1 : boolean;
  signal n_tc_661_541_buf_req_0 : boolean;
  signal WPIPE_skipped_instruction_count_681_inst_ack_1 : boolean;
  signal WPIPE_trap_count_699_inst_req_1 : boolean;
  signal WPIPE_skipped_instruction_count_681_inst_req_1 : boolean;
  signal WPIPE_icache_miss_count_705_inst_ack_1 : boolean;
  signal WPIPE_store_miss_count_693_inst_ack_0 : boolean;
  signal WPIPE_cti_mispredict_count_696_inst_ack_0 : boolean;
  signal WPIPE_executed_instruction_count_678_inst_ack_0 : boolean;
  signal RPIPE_PERFORMANCE_COUNTER_UPDATE_556_inst_req_1 : boolean;
  signal WPIPE_load_count_684_inst_ack_0 : boolean;
  signal WPIPE_icache_miss_count_705_inst_req_0 : boolean;
  signal WPIPE_icache_miss_count_705_inst_ack_0 : boolean;
  signal WPIPE_trap_count_699_inst_ack_1 : boolean;
  signal WPIPE_trap_count_699_inst_req_0 : boolean;
  signal phi_stmt_544_ack_0 : boolean;
  signal WPIPE_store_count_690_inst_ack_1 : boolean;
  signal WPIPE_executed_instruction_count_678_inst_ack_1 : boolean;
  signal n_imc_677_551_buf_ack_0 : boolean;
  signal do_while_stmt_502_branch_req_0 : boolean;
  signal phi_stmt_504_req_1 : boolean;
  signal RPIPE_PERFORMANCE_COUNTER_UPDATE_556_inst_ack_0 : boolean;
  signal n_eic_605_506_buf_ack_0 : boolean;
  signal n_eic_605_506_buf_req_1 : boolean;
  signal n_eic_605_506_buf_ack_1 : boolean;
  signal RPIPE_PERFORMANCE_COUNTER_UPDATE_556_inst_req_0 : boolean;
  signal phi_stmt_504_req_0 : boolean;
  signal phi_stmt_504_ack_0 : boolean;
  signal n_eic_605_506_buf_req_0 : boolean;
  signal n_tc_661_541_buf_ack_1 : boolean;
  signal WPIPE_load_count_684_inst_req_1 : boolean;
  signal n_imc_677_551_buf_ack_1 : boolean;
  signal WPIPE_trap_count_699_inst_ack_0 : boolean;
  signal WPIPE_store_count_690_inst_req_1 : boolean;
  signal phi_stmt_544_req_1 : boolean;
  signal WPIPE_load_count_684_inst_ack_1 : boolean;
  signal WPIPE_cti_mispredict_count_696_inst_req_0 : boolean;
  signal n_tc_661_541_buf_ack_0 : boolean;
  signal WPIPE_store_count_690_inst_req_0 : boolean;
  signal n_tc_661_541_buf_req_1 : boolean;
  signal n_imc_677_551_buf_req_1 : boolean;
  signal phi_stmt_539_req_1 : boolean;
  signal phi_stmt_544_req_0 : boolean;
  signal WPIPE_executed_instruction_count_678_inst_req_1 : boolean;
  signal WPIPE_load_miss_count_687_inst_req_0 : boolean;
  signal RPIPE_PERFORMANCE_COUNTER_UPDATE_556_inst_ack_1 : boolean;
  signal phi_stmt_539_ack_0 : boolean;
  signal WPIPE_store_miss_count_693_inst_req_1 : boolean;
  signal WPIPE_skipped_instruction_count_681_inst_ack_0 : boolean;
  signal WPIPE_skipped_instruction_count_681_inst_req_0 : boolean;
  signal phi_stmt_549_ack_0 : boolean;
  signal phi_stmt_509_req_0 : boolean;
  signal phi_stmt_509_req_1 : boolean;
  signal phi_stmt_509_ack_0 : boolean;
  signal n_sic_613_511_buf_req_0 : boolean;
  signal phi_stmt_549_req_1 : boolean;
  signal n_sic_613_511_buf_ack_0 : boolean;
  signal phi_stmt_539_req_0 : boolean;
  signal n_sic_613_511_buf_req_1 : boolean;
  signal n_sic_613_511_buf_ack_1 : boolean;
  signal phi_stmt_549_req_0 : boolean;
  signal n_iac_669_548_buf_ack_1 : boolean;
  signal n_iac_669_548_buf_req_1 : boolean;
  signal n_iac_669_548_buf_ack_0 : boolean;
  signal phi_stmt_514_req_0 : boolean;
  signal n_iac_669_548_buf_req_0 : boolean;
  signal phi_stmt_514_req_1 : boolean;
  signal phi_stmt_514_ack_0 : boolean;
  signal n_lc_621_516_buf_req_0 : boolean;
  signal n_lc_621_516_buf_ack_0 : boolean;
  signal n_lc_621_516_buf_req_1 : boolean;
  signal n_lc_621_516_buf_ack_1 : boolean;
  signal phi_stmt_519_req_0 : boolean;
  signal phi_stmt_519_req_1 : boolean;
  signal phi_stmt_519_ack_0 : boolean;
  signal n_lmc_629_521_buf_req_0 : boolean;
  signal n_lmc_629_521_buf_ack_0 : boolean;
  signal n_lmc_629_521_buf_req_1 : boolean;
  signal n_lmc_629_521_buf_ack_1 : boolean;
  signal phi_stmt_524_req_0 : boolean;
  signal phi_stmt_524_req_1 : boolean;
  signal phi_stmt_524_ack_0 : boolean;
  signal n_sc_637_526_buf_req_0 : boolean;
  signal n_sc_637_526_buf_ack_0 : boolean;
  signal n_sc_637_526_buf_req_1 : boolean;
  signal n_sc_637_526_buf_ack_1 : boolean;
  signal phi_stmt_529_req_1 : boolean;
  signal phi_stmt_529_req_0 : boolean;
  signal phi_stmt_529_ack_0 : boolean;
  signal n_smc_645_533_buf_req_0 : boolean;
  signal n_smc_645_533_buf_ack_0 : boolean;
  signal n_smc_645_533_buf_req_1 : boolean;
  signal n_smc_645_533_buf_ack_1 : boolean;
  signal phi_stmt_534_req_0 : boolean;
  signal phi_stmt_534_req_1 : boolean;
  signal phi_stmt_534_ack_0 : boolean;
  signal n_cmc_653_536_buf_req_0 : boolean;
  signal n_cmc_653_536_buf_ack_0 : boolean;
  signal n_cmc_653_536_buf_req_1 : boolean;
  signal n_cmc_653_536_buf_ack_1 : boolean;
  signal do_while_stmt_502_branch_ack_0 : boolean;
  signal do_while_stmt_502_branch_ack_1 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "performance_counters_update_daemon_input_buffer", -- 
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
  performance_counters_update_daemon_CP_392_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "performance_counters_update_daemon_out_buffer", -- 
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
    preds <= performance_counters_update_daemon_CP_392_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
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
    preds <= performance_counters_update_daemon_CP_392_start & tag_ilock_write_ack_symbol;
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
    preds <= performance_counters_update_daemon_CP_392_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  performance_counters_update_daemon_CP_392: Block -- control-path 
    signal performance_counters_update_daemon_CP_392_elements: BooleanArray(243 downto 0);
    -- 
  begin -- 
    performance_counters_update_daemon_CP_392_elements(0) <= performance_counters_update_daemon_CP_392_start;
    performance_counters_update_daemon_CP_392_symbol <= performance_counters_update_daemon_CP_392_elements(1);
    -- CP-element group 0:  transition  place  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	2 
    -- CP-element group 0:  members (4) 
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 branch_block_stmt_501/do_while_stmt_502__entry__
      -- CP-element group 0: 	 branch_block_stmt_501/branch_block_stmt_501__entry__
      -- CP-element group 0: 	 branch_block_stmt_501/$entry
      -- 
    -- CP-element group 1:  transition  place  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	243 
    -- CP-element group 1: successors 
    -- CP-element group 1:  members (4) 
      -- CP-element group 1: 	 $exit
      -- CP-element group 1: 	 branch_block_stmt_501/branch_block_stmt_501__exit__
      -- CP-element group 1: 	 branch_block_stmt_501/$exit
      -- CP-element group 1: 	 branch_block_stmt_501/do_while_stmt_502__exit__
      -- 
    performance_counters_update_daemon_CP_392_elements(1) <= performance_counters_update_daemon_CP_392_elements(243);
    -- CP-element group 2:  transition  place  bypass  pipeline-parent 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	0 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	8 
    -- CP-element group 2:  members (2) 
      -- CP-element group 2: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502__entry__
      -- CP-element group 2: 	 branch_block_stmt_501/do_while_stmt_502/$entry
      -- 
    performance_counters_update_daemon_CP_392_elements(2) <= performance_counters_update_daemon_CP_392_elements(0);
    -- CP-element group 3:  merge  place  bypass  pipeline-parent 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	243 
    -- CP-element group 3:  members (1) 
      -- CP-element group 3: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502__exit__
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(3) is bound as output of CP function.
    -- CP-element group 4:  merge  place  bypass  pipeline-parent 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	7 
    -- CP-element group 4:  members (1) 
      -- CP-element group 4: 	 branch_block_stmt_501/do_while_stmt_502/loop_back
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(4) is bound as output of CP function.
    -- CP-element group 5:  branch  transition  place  bypass  pipeline-parent 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	10 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	241 
    -- CP-element group 5: 	242 
    -- CP-element group 5:  members (3) 
      -- CP-element group 5: 	 branch_block_stmt_501/do_while_stmt_502/condition_done
      -- CP-element group 5: 	 branch_block_stmt_501/do_while_stmt_502/loop_exit/$entry
      -- CP-element group 5: 	 branch_block_stmt_501/do_while_stmt_502/loop_taken/$entry
      -- 
    performance_counters_update_daemon_CP_392_elements(5) <= performance_counters_update_daemon_CP_392_elements(10);
    -- CP-element group 6:  branch  place  bypass  pipeline-parent 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	240 
    -- CP-element group 6: successors 
    -- CP-element group 6:  members (1) 
      -- CP-element group 6: 	 branch_block_stmt_501/do_while_stmt_502/loop_body_done
      -- 
    performance_counters_update_daemon_CP_392_elements(6) <= performance_counters_update_daemon_CP_392_elements(240);
    -- CP-element group 7:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	4 
    -- CP-element group 7: successors 
    -- CP-element group 7: 	78 
    -- CP-element group 7: 	97 
    -- CP-element group 7: 	134 
    -- CP-element group 7: 	153 
    -- CP-element group 7: 	191 
    -- CP-element group 7: 	172 
    -- CP-element group 7: 	22 
    -- CP-element group 7: 	41 
    -- CP-element group 7: 	115 
    -- CP-element group 7: 	60 
    -- CP-element group 7:  members (1) 
      -- CP-element group 7: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/back_edge_to_loop_body
      -- 
    performance_counters_update_daemon_CP_392_elements(7) <= performance_counters_update_daemon_CP_392_elements(4);
    -- CP-element group 8:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	2 
    -- CP-element group 8: successors 
    -- CP-element group 8: 	80 
    -- CP-element group 8: 	99 
    -- CP-element group 8: 	155 
    -- CP-element group 8: 	117 
    -- CP-element group 8: 	193 
    -- CP-element group 8: 	174 
    -- CP-element group 8: 	136 
    -- CP-element group 8: 	24 
    -- CP-element group 8: 	43 
    -- CP-element group 8: 	62 
    -- CP-element group 8:  members (1) 
      -- CP-element group 8: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/first_time_through_loop_body
      -- 
    performance_counters_update_daemon_CP_392_elements(8) <= performance_counters_update_daemon_CP_392_elements(2);
    -- CP-element group 9:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	91 
    -- CP-element group 9: 	74 
    -- CP-element group 9: 	128 
    -- CP-element group 9: 	129 
    -- CP-element group 9: 	166 
    -- CP-element group 9: 	186 
    -- CP-element group 9: 	185 
    -- CP-element group 9: 	147 
    -- CP-element group 9: 	73 
    -- CP-element group 9: 	92 
    -- CP-element group 9: 	148 
    -- CP-element group 9: 	110 
    -- CP-element group 9: 	167 
    -- CP-element group 9: 	111 
    -- CP-element group 9: 	11 
    -- CP-element group 9: 	16 
    -- CP-element group 9: 	17 
    -- CP-element group 9: 	35 
    -- CP-element group 9: 	36 
    -- CP-element group 9: 	204 
    -- CP-element group 9: 	239 
    -- CP-element group 9: 	54 
    -- CP-element group 9: 	55 
    -- CP-element group 9:  members (3) 
      -- CP-element group 9: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/loop_body_start
      -- CP-element group 9: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/$entry
      -- CP-element group 9: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_554_sample_start_
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(9) is bound as output of CP function.
    -- CP-element group 10:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	13 
    -- CP-element group 10: 	15 
    -- CP-element group 10: 	239 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	5 
    -- CP-element group 10:  members (1) 
      -- CP-element group 10: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/condition_evaluated
      -- 
    condition_evaluated_416_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " condition_evaluated_416_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(10), ack => do_while_stmt_502_branch_req_0); -- 
    performance_counters_update_daemon_cp_element_group_10: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 54) := "performance_counters_update_daemon_cp_element_group_10"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= performance_counters_update_daemon_CP_392_elements(13) & performance_counters_update_daemon_CP_392_elements(15) & performance_counters_update_daemon_CP_392_elements(239);
      gj_performance_counters_update_daemon_cp_element_group_10 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(10), clk => clk, reset => reset); --
    end block;
    -- CP-element group 11:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	91 
    -- CP-element group 11: 	128 
    -- CP-element group 11: 	166 
    -- CP-element group 11: 	185 
    -- CP-element group 11: 	147 
    -- CP-element group 11: 	73 
    -- CP-element group 11: 	110 
    -- CP-element group 11: 	9 
    -- CP-element group 11: 	16 
    -- CP-element group 11: 	35 
    -- CP-element group 11: 	54 
    -- CP-element group 11: marked-predecessors 
    -- CP-element group 11: 	15 
    -- CP-element group 11: successors 
    -- CP-element group 11: 	75 
    -- CP-element group 11: 	149 
    -- CP-element group 11: 	93 
    -- CP-element group 11: 	130 
    -- CP-element group 11: 	187 
    -- CP-element group 11: 	168 
    -- CP-element group 11: 	18 
    -- CP-element group 11: 	37 
    -- CP-element group 11: 	205 
    -- CP-element group 11: 	56 
    -- CP-element group 11:  members (2) 
      -- CP-element group 11: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/aggregated_phi_sample_req
      -- CP-element group 11: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_529_sample_start__ps
      -- 
    performance_counters_update_daemon_cp_element_group_11: block -- 
      constant place_capacities: IntegerArray(0 to 11) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1,10 => 1,11 => 1);
      constant place_markings: IntegerArray(0 to 11)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0,11 => 1);
      constant place_delays: IntegerArray(0 to 11) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0,11 => 0);
      constant joinName: string(1 to 54) := "performance_counters_update_daemon_cp_element_group_11"; 
      signal preds: BooleanArray(1 to 12); -- 
    begin -- 
      preds <= performance_counters_update_daemon_CP_392_elements(91) & performance_counters_update_daemon_CP_392_elements(128) & performance_counters_update_daemon_CP_392_elements(166) & performance_counters_update_daemon_CP_392_elements(185) & performance_counters_update_daemon_CP_392_elements(147) & performance_counters_update_daemon_CP_392_elements(73) & performance_counters_update_daemon_CP_392_elements(110) & performance_counters_update_daemon_CP_392_elements(9) & performance_counters_update_daemon_CP_392_elements(16) & performance_counters_update_daemon_CP_392_elements(35) & performance_counters_update_daemon_CP_392_elements(54) & performance_counters_update_daemon_CP_392_elements(15);
      gj_performance_counters_update_daemon_cp_element_group_11 : generic_join generic map(name => joinName, number_of_predecessors => 12, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(11), clk => clk, reset => reset); --
    end block;
    -- CP-element group 12:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	76 
    -- CP-element group 12: 	131 
    -- CP-element group 12: 	150 
    -- CP-element group 12: 	94 
    -- CP-element group 12: 	188 
    -- CP-element group 12: 	169 
    -- CP-element group 12: 	112 
    -- CP-element group 12: 	19 
    -- CP-element group 12: 	38 
    -- CP-element group 12: 	207 
    -- CP-element group 12: 	57 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	13 
    -- CP-element group 12: 	240 
    -- CP-element group 12: marked-successors 
    -- CP-element group 12: 	91 
    -- CP-element group 12: 	128 
    -- CP-element group 12: 	166 
    -- CP-element group 12: 	185 
    -- CP-element group 12: 	147 
    -- CP-element group 12: 	73 
    -- CP-element group 12: 	110 
    -- CP-element group 12: 	16 
    -- CP-element group 12: 	35 
    -- CP-element group 12: 	54 
    -- CP-element group 12:  members (12) 
      -- CP-element group 12: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_504_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/aggregated_phi_sample_ack
      -- CP-element group 12: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_544_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_554_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_509_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_514_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_549_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_519_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_524_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_529_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_534_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_539_sample_completed_
      -- 
    performance_counters_update_daemon_cp_element_group_12: block -- 
      constant place_capacities: IntegerArray(0 to 10) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1,10 => 1);
      constant place_markings: IntegerArray(0 to 10)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0);
      constant place_delays: IntegerArray(0 to 10) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0);
      constant joinName: string(1 to 54) := "performance_counters_update_daemon_cp_element_group_12"; 
      signal preds: BooleanArray(1 to 11); -- 
    begin -- 
      preds <= performance_counters_update_daemon_CP_392_elements(76) & performance_counters_update_daemon_CP_392_elements(131) & performance_counters_update_daemon_CP_392_elements(150) & performance_counters_update_daemon_CP_392_elements(94) & performance_counters_update_daemon_CP_392_elements(188) & performance_counters_update_daemon_CP_392_elements(169) & performance_counters_update_daemon_CP_392_elements(112) & performance_counters_update_daemon_CP_392_elements(19) & performance_counters_update_daemon_CP_392_elements(38) & performance_counters_update_daemon_CP_392_elements(207) & performance_counters_update_daemon_CP_392_elements(57);
      gj_performance_counters_update_daemon_cp_element_group_12 : generic_join generic map(name => joinName, number_of_predecessors => 11, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(12), clk => clk, reset => reset); --
    end block;
    -- CP-element group 13:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: 	12 
    -- CP-element group 13: successors 
    -- CP-element group 13: 	10 
    -- CP-element group 13:  members (1) 
      -- CP-element group 13: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/aggregated_phi_sample_ack_d
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(13) is a control-delay.
    cp_element_13_delay: control_delay_element  generic map(name => " 13_delay", delay_value => 1)  port map(req => performance_counters_update_daemon_CP_392_elements(12), ack => performance_counters_update_daemon_CP_392_elements(13), clk => clk, reset =>reset);
    -- CP-element group 14:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: 	74 
    -- CP-element group 14: 	129 
    -- CP-element group 14: 	186 
    -- CP-element group 14: 	92 
    -- CP-element group 14: 	148 
    -- CP-element group 14: 	167 
    -- CP-element group 14: 	111 
    -- CP-element group 14: 	17 
    -- CP-element group 14: 	36 
    -- CP-element group 14: 	204 
    -- CP-element group 14: 	55 
    -- CP-element group 14: successors 
    -- CP-element group 14: 	151 
    -- CP-element group 14: 	95 
    -- CP-element group 14: 	132 
    -- CP-element group 14: 	170 
    -- CP-element group 14: 	189 
    -- CP-element group 14: 	113 
    -- CP-element group 14: 	20 
    -- CP-element group 14: 	39 
    -- CP-element group 14: 	206 
    -- CP-element group 14: 	58 
    -- CP-element group 14:  members (2) 
      -- CP-element group 14: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/aggregated_phi_update_req
      -- CP-element group 14: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_519_update_start__ps
      -- 
    performance_counters_update_daemon_cp_element_group_14: block -- 
      constant place_capacities: IntegerArray(0 to 10) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1,10 => 1);
      constant place_markings: IntegerArray(0 to 10)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0);
      constant place_delays: IntegerArray(0 to 10) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0);
      constant joinName: string(1 to 54) := "performance_counters_update_daemon_cp_element_group_14"; 
      signal preds: BooleanArray(1 to 11); -- 
    begin -- 
      preds <= performance_counters_update_daemon_CP_392_elements(74) & performance_counters_update_daemon_CP_392_elements(129) & performance_counters_update_daemon_CP_392_elements(186) & performance_counters_update_daemon_CP_392_elements(92) & performance_counters_update_daemon_CP_392_elements(148) & performance_counters_update_daemon_CP_392_elements(167) & performance_counters_update_daemon_CP_392_elements(111) & performance_counters_update_daemon_CP_392_elements(17) & performance_counters_update_daemon_CP_392_elements(36) & performance_counters_update_daemon_CP_392_elements(204) & performance_counters_update_daemon_CP_392_elements(55);
      gj_performance_counters_update_daemon_cp_element_group_14 : generic_join generic map(name => joinName, number_of_predecessors => 11, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(14), clk => clk, reset => reset); --
    end block;
    -- CP-element group 15:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: 	77 
    -- CP-element group 15: 	133 
    -- CP-element group 15: 	152 
    -- CP-element group 15: 	96 
    -- CP-element group 15: 	171 
    -- CP-element group 15: 	190 
    -- CP-element group 15: 	114 
    -- CP-element group 15: 	21 
    -- CP-element group 15: 	40 
    -- CP-element group 15: 	208 
    -- CP-element group 15: 	59 
    -- CP-element group 15: successors 
    -- CP-element group 15: 	10 
    -- CP-element group 15: marked-successors 
    -- CP-element group 15: 	11 
    -- CP-element group 15:  members (1) 
      -- CP-element group 15: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/aggregated_phi_update_ack
      -- 
    performance_counters_update_daemon_cp_element_group_15: block -- 
      constant place_capacities: IntegerArray(0 to 10) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1,10 => 1);
      constant place_markings: IntegerArray(0 to 10)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0);
      constant place_delays: IntegerArray(0 to 10) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0);
      constant joinName: string(1 to 54) := "performance_counters_update_daemon_cp_element_group_15"; 
      signal preds: BooleanArray(1 to 11); -- 
    begin -- 
      preds <= performance_counters_update_daemon_CP_392_elements(77) & performance_counters_update_daemon_CP_392_elements(133) & performance_counters_update_daemon_CP_392_elements(152) & performance_counters_update_daemon_CP_392_elements(96) & performance_counters_update_daemon_CP_392_elements(171) & performance_counters_update_daemon_CP_392_elements(190) & performance_counters_update_daemon_CP_392_elements(114) & performance_counters_update_daemon_CP_392_elements(21) & performance_counters_update_daemon_CP_392_elements(40) & performance_counters_update_daemon_CP_392_elements(208) & performance_counters_update_daemon_CP_392_elements(59);
      gj_performance_counters_update_daemon_cp_element_group_15 : generic_join generic map(name => joinName, number_of_predecessors => 11, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(15), clk => clk, reset => reset); --
    end block;
    -- CP-element group 16:  join  transition  bypass  pipeline-parent 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: 	9 
    -- CP-element group 16: marked-predecessors 
    -- CP-element group 16: 	12 
    -- CP-element group 16: successors 
    -- CP-element group 16: 	11 
    -- CP-element group 16:  members (1) 
      -- CP-element group 16: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_504_sample_start_
      -- 
    performance_counters_update_daemon_cp_element_group_16: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 54) := "performance_counters_update_daemon_cp_element_group_16"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_update_daemon_CP_392_elements(9) & performance_counters_update_daemon_CP_392_elements(12);
      gj_performance_counters_update_daemon_cp_element_group_16 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(16), clk => clk, reset => reset); --
    end block;
    -- CP-element group 17:  join  transition  bypass  pipeline-parent 
    -- CP-element group 17: predecessors 
    -- CP-element group 17: 	9 
    -- CP-element group 17: marked-predecessors 
    -- CP-element group 17: 	210 
    -- CP-element group 17: successors 
    -- CP-element group 17: 	14 
    -- CP-element group 17:  members (1) 
      -- CP-element group 17: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_504_update_start_
      -- 
    performance_counters_update_daemon_cp_element_group_17: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 54) := "performance_counters_update_daemon_cp_element_group_17"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_update_daemon_CP_392_elements(9) & performance_counters_update_daemon_CP_392_elements(210);
      gj_performance_counters_update_daemon_cp_element_group_17 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(17), clk => clk, reset => reset); --
    end block;
    -- CP-element group 18:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 18: predecessors 
    -- CP-element group 18: 	11 
    -- CP-element group 18: successors 
    -- CP-element group 18:  members (1) 
      -- CP-element group 18: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_504_sample_start__ps
      -- 
    performance_counters_update_daemon_CP_392_elements(18) <= performance_counters_update_daemon_CP_392_elements(11);
    -- CP-element group 19:  join  transition  bypass  pipeline-parent 
    -- CP-element group 19: predecessors 
    -- CP-element group 19: successors 
    -- CP-element group 19: 	12 
    -- CP-element group 19:  members (1) 
      -- CP-element group 19: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_504_sample_completed__ps
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(19) is bound as output of CP function.
    -- CP-element group 20:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 20: predecessors 
    -- CP-element group 20: 	14 
    -- CP-element group 20: successors 
    -- CP-element group 20:  members (1) 
      -- CP-element group 20: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_504_update_start__ps
      -- 
    performance_counters_update_daemon_CP_392_elements(20) <= performance_counters_update_daemon_CP_392_elements(14);
    -- CP-element group 21:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 21: predecessors 
    -- CP-element group 21: successors 
    -- CP-element group 21: 	15 
    -- CP-element group 21: 	209 
    -- CP-element group 21:  members (2) 
      -- CP-element group 21: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_504_update_completed__ps
      -- CP-element group 21: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_504_update_completed_
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(21) is bound as output of CP function.
    -- CP-element group 22:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 22: predecessors 
    -- CP-element group 22: 	7 
    -- CP-element group 22: successors 
    -- CP-element group 22:  members (1) 
      -- CP-element group 22: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_504_loopback_trigger
      -- 
    performance_counters_update_daemon_CP_392_elements(22) <= performance_counters_update_daemon_CP_392_elements(7);
    -- CP-element group 23:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 23: predecessors 
    -- CP-element group 23: successors 
    -- CP-element group 23:  members (2) 
      -- CP-element group 23: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_504_loopback_sample_req_ps
      -- CP-element group 23: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_504_loopback_sample_req
      -- 
    phi_stmt_504_loopback_sample_req_432_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_504_loopback_sample_req_432_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(23), ack => phi_stmt_504_req_0); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(23) is bound as output of CP function.
    -- CP-element group 24:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 24: predecessors 
    -- CP-element group 24: 	8 
    -- CP-element group 24: successors 
    -- CP-element group 24:  members (1) 
      -- CP-element group 24: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_504_entry_trigger
      -- 
    performance_counters_update_daemon_CP_392_elements(24) <= performance_counters_update_daemon_CP_392_elements(8);
    -- CP-element group 25:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 25: predecessors 
    -- CP-element group 25: successors 
    -- CP-element group 25:  members (2) 
      -- CP-element group 25: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_504_entry_sample_req_ps
      -- CP-element group 25: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_504_entry_sample_req
      -- 
    phi_stmt_504_entry_sample_req_435_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_504_entry_sample_req_435_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(25), ack => phi_stmt_504_req_1); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(25) is bound as output of CP function.
    -- CP-element group 26:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 26: predecessors 
    -- CP-element group 26: successors 
    -- CP-element group 26:  members (2) 
      -- CP-element group 26: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_504_phi_mux_ack_ps
      -- CP-element group 26: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_504_phi_mux_ack
      -- 
    phi_stmt_504_phi_mux_ack_438_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 26_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_504_ack_0, ack => performance_counters_update_daemon_CP_392_elements(26)); -- 
    -- CP-element group 27:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 27: predecessors 
    -- CP-element group 27: successors 
    -- CP-element group 27: 	29 
    -- CP-element group 27:  members (4) 
      -- CP-element group 27: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_eic_506_sample_start_
      -- CP-element group 27: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_eic_506_sample_start__ps
      -- CP-element group 27: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_eic_506_Sample/$entry
      -- CP-element group 27: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_eic_506_Sample/req
      -- 
    req_451_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_451_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(27), ack => n_eic_605_506_buf_req_0); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(27) is bound as output of CP function.
    -- CP-element group 28:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 28: predecessors 
    -- CP-element group 28: successors 
    -- CP-element group 28: 	30 
    -- CP-element group 28:  members (4) 
      -- CP-element group 28: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_eic_506_update_start__ps
      -- CP-element group 28: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_eic_506_Update/$entry
      -- CP-element group 28: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_eic_506_Update/req
      -- CP-element group 28: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_eic_506_update_start_
      -- 
    req_456_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_456_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(28), ack => n_eic_605_506_buf_req_1); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(28) is bound as output of CP function.
    -- CP-element group 29:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 29: predecessors 
    -- CP-element group 29: 	27 
    -- CP-element group 29: successors 
    -- CP-element group 29:  members (4) 
      -- CP-element group 29: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_eic_506_sample_completed__ps
      -- CP-element group 29: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_eic_506_Sample/ack
      -- CP-element group 29: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_eic_506_sample_completed_
      -- CP-element group 29: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_eic_506_Sample/$exit
      -- 
    ack_452_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 29_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => n_eic_605_506_buf_ack_0, ack => performance_counters_update_daemon_CP_392_elements(29)); -- 
    -- CP-element group 30:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 30: predecessors 
    -- CP-element group 30: 	28 
    -- CP-element group 30: successors 
    -- CP-element group 30:  members (4) 
      -- CP-element group 30: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_eic_506_update_completed__ps
      -- CP-element group 30: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_eic_506_Update/$exit
      -- CP-element group 30: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_eic_506_Update/ack
      -- CP-element group 30: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_eic_506_update_completed_
      -- 
    ack_457_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 30_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => n_eic_605_506_buf_ack_1, ack => performance_counters_update_daemon_CP_392_elements(30)); -- 
    -- CP-element group 31:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 31: predecessors 
    -- CP-element group 31: successors 
    -- CP-element group 31:  members (4) 
      -- CP-element group 31: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_508_sample_start__ps
      -- CP-element group 31: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_508_sample_completed__ps
      -- CP-element group 31: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_508_sample_start_
      -- CP-element group 31: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_508_sample_completed_
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(31) is bound as output of CP function.
    -- CP-element group 32:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 32: predecessors 
    -- CP-element group 32: successors 
    -- CP-element group 32: 	34 
    -- CP-element group 32:  members (2) 
      -- CP-element group 32: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_508_update_start__ps
      -- CP-element group 32: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_508_update_start_
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(32) is bound as output of CP function.
    -- CP-element group 33:  join  transition  bypass  pipeline-parent 
    -- CP-element group 33: predecessors 
    -- CP-element group 33: 	34 
    -- CP-element group 33: successors 
    -- CP-element group 33:  members (1) 
      -- CP-element group 33: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_508_update_completed__ps
      -- 
    performance_counters_update_daemon_CP_392_elements(33) <= performance_counters_update_daemon_CP_392_elements(34);
    -- CP-element group 34:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 34: predecessors 
    -- CP-element group 34: 	32 
    -- CP-element group 34: successors 
    -- CP-element group 34: 	33 
    -- CP-element group 34:  members (1) 
      -- CP-element group 34: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_508_update_completed_
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(34) is a control-delay.
    cp_element_34_delay: control_delay_element  generic map(name => " 34_delay", delay_value => 1)  port map(req => performance_counters_update_daemon_CP_392_elements(32), ack => performance_counters_update_daemon_CP_392_elements(34), clk => clk, reset =>reset);
    -- CP-element group 35:  join  transition  bypass  pipeline-parent 
    -- CP-element group 35: predecessors 
    -- CP-element group 35: 	9 
    -- CP-element group 35: marked-predecessors 
    -- CP-element group 35: 	12 
    -- CP-element group 35: successors 
    -- CP-element group 35: 	11 
    -- CP-element group 35:  members (1) 
      -- CP-element group 35: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_509_sample_start_
      -- 
    performance_counters_update_daemon_cp_element_group_35: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 54) := "performance_counters_update_daemon_cp_element_group_35"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_update_daemon_CP_392_elements(9) & performance_counters_update_daemon_CP_392_elements(12);
      gj_performance_counters_update_daemon_cp_element_group_35 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(35), clk => clk, reset => reset); --
    end block;
    -- CP-element group 36:  join  transition  bypass  pipeline-parent 
    -- CP-element group 36: predecessors 
    -- CP-element group 36: 	9 
    -- CP-element group 36: marked-predecessors 
    -- CP-element group 36: 	213 
    -- CP-element group 36: successors 
    -- CP-element group 36: 	14 
    -- CP-element group 36:  members (1) 
      -- CP-element group 36: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_509_update_start_
      -- 
    performance_counters_update_daemon_cp_element_group_36: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 54) := "performance_counters_update_daemon_cp_element_group_36"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_update_daemon_CP_392_elements(9) & performance_counters_update_daemon_CP_392_elements(213);
      gj_performance_counters_update_daemon_cp_element_group_36 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(36), clk => clk, reset => reset); --
    end block;
    -- CP-element group 37:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 37: predecessors 
    -- CP-element group 37: 	11 
    -- CP-element group 37: successors 
    -- CP-element group 37:  members (1) 
      -- CP-element group 37: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_509_sample_start__ps
      -- 
    performance_counters_update_daemon_CP_392_elements(37) <= performance_counters_update_daemon_CP_392_elements(11);
    -- CP-element group 38:  join  transition  bypass  pipeline-parent 
    -- CP-element group 38: predecessors 
    -- CP-element group 38: successors 
    -- CP-element group 38: 	12 
    -- CP-element group 38:  members (1) 
      -- CP-element group 38: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_509_sample_completed__ps
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(38) is bound as output of CP function.
    -- CP-element group 39:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 39: predecessors 
    -- CP-element group 39: 	14 
    -- CP-element group 39: successors 
    -- CP-element group 39:  members (1) 
      -- CP-element group 39: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_509_update_start__ps
      -- 
    performance_counters_update_daemon_CP_392_elements(39) <= performance_counters_update_daemon_CP_392_elements(14);
    -- CP-element group 40:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 40: predecessors 
    -- CP-element group 40: successors 
    -- CP-element group 40: 	15 
    -- CP-element group 40: 	212 
    -- CP-element group 40:  members (2) 
      -- CP-element group 40: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_509_update_completed_
      -- CP-element group 40: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_509_update_completed__ps
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(40) is bound as output of CP function.
    -- CP-element group 41:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 41: predecessors 
    -- CP-element group 41: 	7 
    -- CP-element group 41: successors 
    -- CP-element group 41:  members (1) 
      -- CP-element group 41: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_509_loopback_trigger
      -- 
    performance_counters_update_daemon_CP_392_elements(41) <= performance_counters_update_daemon_CP_392_elements(7);
    -- CP-element group 42:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 42: predecessors 
    -- CP-element group 42: successors 
    -- CP-element group 42:  members (2) 
      -- CP-element group 42: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_509_loopback_sample_req
      -- CP-element group 42: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_509_loopback_sample_req_ps
      -- 
    phi_stmt_509_loopback_sample_req_476_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_509_loopback_sample_req_476_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(42), ack => phi_stmt_509_req_0); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(42) is bound as output of CP function.
    -- CP-element group 43:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 43: predecessors 
    -- CP-element group 43: 	8 
    -- CP-element group 43: successors 
    -- CP-element group 43:  members (1) 
      -- CP-element group 43: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_509_entry_trigger
      -- 
    performance_counters_update_daemon_CP_392_elements(43) <= performance_counters_update_daemon_CP_392_elements(8);
    -- CP-element group 44:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 44: predecessors 
    -- CP-element group 44: successors 
    -- CP-element group 44:  members (2) 
      -- CP-element group 44: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_509_entry_sample_req
      -- CP-element group 44: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_509_entry_sample_req_ps
      -- 
    phi_stmt_509_entry_sample_req_479_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_509_entry_sample_req_479_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(44), ack => phi_stmt_509_req_1); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(44) is bound as output of CP function.
    -- CP-element group 45:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 45: predecessors 
    -- CP-element group 45: successors 
    -- CP-element group 45:  members (2) 
      -- CP-element group 45: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_509_phi_mux_ack
      -- CP-element group 45: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_509_phi_mux_ack_ps
      -- 
    phi_stmt_509_phi_mux_ack_482_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 45_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_509_ack_0, ack => performance_counters_update_daemon_CP_392_elements(45)); -- 
    -- CP-element group 46:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 46: predecessors 
    -- CP-element group 46: successors 
    -- CP-element group 46: 	48 
    -- CP-element group 46:  members (4) 
      -- CP-element group 46: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_sic_511_sample_start__ps
      -- CP-element group 46: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_sic_511_sample_start_
      -- CP-element group 46: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_sic_511_Sample/$entry
      -- CP-element group 46: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_sic_511_Sample/req
      -- 
    req_495_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_495_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(46), ack => n_sic_613_511_buf_req_0); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(46) is bound as output of CP function.
    -- CP-element group 47:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 47: predecessors 
    -- CP-element group 47: successors 
    -- CP-element group 47: 	49 
    -- CP-element group 47:  members (4) 
      -- CP-element group 47: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_sic_511_update_start__ps
      -- CP-element group 47: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_sic_511_update_start_
      -- CP-element group 47: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_sic_511_Update/$entry
      -- CP-element group 47: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_sic_511_Update/req
      -- 
    req_500_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_500_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(47), ack => n_sic_613_511_buf_req_1); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(47) is bound as output of CP function.
    -- CP-element group 48:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 48: predecessors 
    -- CP-element group 48: 	46 
    -- CP-element group 48: successors 
    -- CP-element group 48:  members (4) 
      -- CP-element group 48: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_sic_511_sample_completed__ps
      -- CP-element group 48: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_sic_511_sample_completed_
      -- CP-element group 48: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_sic_511_Sample/$exit
      -- CP-element group 48: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_sic_511_Sample/ack
      -- 
    ack_496_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 48_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => n_sic_613_511_buf_ack_0, ack => performance_counters_update_daemon_CP_392_elements(48)); -- 
    -- CP-element group 49:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 49: predecessors 
    -- CP-element group 49: 	47 
    -- CP-element group 49: successors 
    -- CP-element group 49:  members (4) 
      -- CP-element group 49: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_sic_511_update_completed__ps
      -- CP-element group 49: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_sic_511_update_completed_
      -- CP-element group 49: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_sic_511_Update/$exit
      -- CP-element group 49: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_sic_511_Update/ack
      -- 
    ack_501_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 49_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => n_sic_613_511_buf_ack_1, ack => performance_counters_update_daemon_CP_392_elements(49)); -- 
    -- CP-element group 50:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 50: predecessors 
    -- CP-element group 50: successors 
    -- CP-element group 50:  members (4) 
      -- CP-element group 50: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_513_sample_start__ps
      -- CP-element group 50: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_513_sample_completed__ps
      -- CP-element group 50: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_513_sample_start_
      -- CP-element group 50: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_513_sample_completed_
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(50) is bound as output of CP function.
    -- CP-element group 51:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 51: predecessors 
    -- CP-element group 51: successors 
    -- CP-element group 51: 	53 
    -- CP-element group 51:  members (2) 
      -- CP-element group 51: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_513_update_start__ps
      -- CP-element group 51: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_513_update_start_
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(51) is bound as output of CP function.
    -- CP-element group 52:  join  transition  bypass  pipeline-parent 
    -- CP-element group 52: predecessors 
    -- CP-element group 52: 	53 
    -- CP-element group 52: successors 
    -- CP-element group 52:  members (1) 
      -- CP-element group 52: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_513_update_completed__ps
      -- 
    performance_counters_update_daemon_CP_392_elements(52) <= performance_counters_update_daemon_CP_392_elements(53);
    -- CP-element group 53:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 53: predecessors 
    -- CP-element group 53: 	51 
    -- CP-element group 53: successors 
    -- CP-element group 53: 	52 
    -- CP-element group 53:  members (1) 
      -- CP-element group 53: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_513_update_completed_
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(53) is a control-delay.
    cp_element_53_delay: control_delay_element  generic map(name => " 53_delay", delay_value => 1)  port map(req => performance_counters_update_daemon_CP_392_elements(51), ack => performance_counters_update_daemon_CP_392_elements(53), clk => clk, reset =>reset);
    -- CP-element group 54:  join  transition  bypass  pipeline-parent 
    -- CP-element group 54: predecessors 
    -- CP-element group 54: 	9 
    -- CP-element group 54: marked-predecessors 
    -- CP-element group 54: 	12 
    -- CP-element group 54: successors 
    -- CP-element group 54: 	11 
    -- CP-element group 54:  members (1) 
      -- CP-element group 54: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_514_sample_start_
      -- 
    performance_counters_update_daemon_cp_element_group_54: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 54) := "performance_counters_update_daemon_cp_element_group_54"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_update_daemon_CP_392_elements(9) & performance_counters_update_daemon_CP_392_elements(12);
      gj_performance_counters_update_daemon_cp_element_group_54 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(54), clk => clk, reset => reset); --
    end block;
    -- CP-element group 55:  join  transition  bypass  pipeline-parent 
    -- CP-element group 55: predecessors 
    -- CP-element group 55: 	9 
    -- CP-element group 55: marked-predecessors 
    -- CP-element group 55: 	216 
    -- CP-element group 55: successors 
    -- CP-element group 55: 	14 
    -- CP-element group 55:  members (1) 
      -- CP-element group 55: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_514_update_start_
      -- 
    performance_counters_update_daemon_cp_element_group_55: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 54) := "performance_counters_update_daemon_cp_element_group_55"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_update_daemon_CP_392_elements(9) & performance_counters_update_daemon_CP_392_elements(216);
      gj_performance_counters_update_daemon_cp_element_group_55 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(55), clk => clk, reset => reset); --
    end block;
    -- CP-element group 56:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 56: predecessors 
    -- CP-element group 56: 	11 
    -- CP-element group 56: successors 
    -- CP-element group 56:  members (1) 
      -- CP-element group 56: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_514_sample_start__ps
      -- 
    performance_counters_update_daemon_CP_392_elements(56) <= performance_counters_update_daemon_CP_392_elements(11);
    -- CP-element group 57:  join  transition  bypass  pipeline-parent 
    -- CP-element group 57: predecessors 
    -- CP-element group 57: successors 
    -- CP-element group 57: 	12 
    -- CP-element group 57:  members (1) 
      -- CP-element group 57: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_514_sample_completed__ps
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(57) is bound as output of CP function.
    -- CP-element group 58:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 58: predecessors 
    -- CP-element group 58: 	14 
    -- CP-element group 58: successors 
    -- CP-element group 58:  members (1) 
      -- CP-element group 58: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_514_update_start__ps
      -- 
    performance_counters_update_daemon_CP_392_elements(58) <= performance_counters_update_daemon_CP_392_elements(14);
    -- CP-element group 59:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 59: predecessors 
    -- CP-element group 59: successors 
    -- CP-element group 59: 	15 
    -- CP-element group 59: 	215 
    -- CP-element group 59:  members (2) 
      -- CP-element group 59: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_514_update_completed_
      -- CP-element group 59: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_514_update_completed__ps
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(59) is bound as output of CP function.
    -- CP-element group 60:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 60: predecessors 
    -- CP-element group 60: 	7 
    -- CP-element group 60: successors 
    -- CP-element group 60:  members (1) 
      -- CP-element group 60: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_514_loopback_trigger
      -- 
    performance_counters_update_daemon_CP_392_elements(60) <= performance_counters_update_daemon_CP_392_elements(7);
    -- CP-element group 61:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 61: predecessors 
    -- CP-element group 61: successors 
    -- CP-element group 61:  members (2) 
      -- CP-element group 61: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_514_loopback_sample_req
      -- CP-element group 61: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_514_loopback_sample_req_ps
      -- 
    phi_stmt_514_loopback_sample_req_520_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_514_loopback_sample_req_520_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(61), ack => phi_stmt_514_req_0); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(61) is bound as output of CP function.
    -- CP-element group 62:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 62: predecessors 
    -- CP-element group 62: 	8 
    -- CP-element group 62: successors 
    -- CP-element group 62:  members (1) 
      -- CP-element group 62: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_514_entry_trigger
      -- 
    performance_counters_update_daemon_CP_392_elements(62) <= performance_counters_update_daemon_CP_392_elements(8);
    -- CP-element group 63:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 63: predecessors 
    -- CP-element group 63: successors 
    -- CP-element group 63:  members (2) 
      -- CP-element group 63: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_514_entry_sample_req
      -- CP-element group 63: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_514_entry_sample_req_ps
      -- 
    phi_stmt_514_entry_sample_req_523_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_514_entry_sample_req_523_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(63), ack => phi_stmt_514_req_1); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(63) is bound as output of CP function.
    -- CP-element group 64:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 64: predecessors 
    -- CP-element group 64: successors 
    -- CP-element group 64:  members (2) 
      -- CP-element group 64: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_514_phi_mux_ack
      -- CP-element group 64: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_514_phi_mux_ack_ps
      -- 
    phi_stmt_514_phi_mux_ack_526_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 64_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_514_ack_0, ack => performance_counters_update_daemon_CP_392_elements(64)); -- 
    -- CP-element group 65:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 65: predecessors 
    -- CP-element group 65: successors 
    -- CP-element group 65: 	67 
    -- CP-element group 65:  members (4) 
      -- CP-element group 65: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_lc_516_sample_start__ps
      -- CP-element group 65: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_lc_516_sample_start_
      -- CP-element group 65: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_lc_516_Sample/$entry
      -- CP-element group 65: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_lc_516_Sample/req
      -- 
    req_539_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_539_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(65), ack => n_lc_621_516_buf_req_0); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(65) is bound as output of CP function.
    -- CP-element group 66:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 66: predecessors 
    -- CP-element group 66: successors 
    -- CP-element group 66: 	68 
    -- CP-element group 66:  members (4) 
      -- CP-element group 66: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_lc_516_update_start__ps
      -- CP-element group 66: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_lc_516_update_start_
      -- CP-element group 66: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_lc_516_Update/$entry
      -- CP-element group 66: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_lc_516_Update/req
      -- 
    req_544_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_544_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(66), ack => n_lc_621_516_buf_req_1); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(66) is bound as output of CP function.
    -- CP-element group 67:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 67: predecessors 
    -- CP-element group 67: 	65 
    -- CP-element group 67: successors 
    -- CP-element group 67:  members (4) 
      -- CP-element group 67: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_lc_516_sample_completed__ps
      -- CP-element group 67: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_lc_516_sample_completed_
      -- CP-element group 67: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_lc_516_Sample/$exit
      -- CP-element group 67: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_lc_516_Sample/ack
      -- 
    ack_540_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 67_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => n_lc_621_516_buf_ack_0, ack => performance_counters_update_daemon_CP_392_elements(67)); -- 
    -- CP-element group 68:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 68: predecessors 
    -- CP-element group 68: 	66 
    -- CP-element group 68: successors 
    -- CP-element group 68:  members (4) 
      -- CP-element group 68: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_lc_516_update_completed__ps
      -- CP-element group 68: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_lc_516_update_completed_
      -- CP-element group 68: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_lc_516_Update/$exit
      -- CP-element group 68: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_lc_516_Update/ack
      -- 
    ack_545_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 68_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => n_lc_621_516_buf_ack_1, ack => performance_counters_update_daemon_CP_392_elements(68)); -- 
    -- CP-element group 69:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 69: predecessors 
    -- CP-element group 69: successors 
    -- CP-element group 69:  members (4) 
      -- CP-element group 69: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_518_sample_start__ps
      -- CP-element group 69: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_518_sample_completed__ps
      -- CP-element group 69: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_518_sample_start_
      -- CP-element group 69: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_518_sample_completed_
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(69) is bound as output of CP function.
    -- CP-element group 70:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 70: predecessors 
    -- CP-element group 70: successors 
    -- CP-element group 70: 	72 
    -- CP-element group 70:  members (2) 
      -- CP-element group 70: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_518_update_start__ps
      -- CP-element group 70: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_518_update_start_
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(70) is bound as output of CP function.
    -- CP-element group 71:  join  transition  bypass  pipeline-parent 
    -- CP-element group 71: predecessors 
    -- CP-element group 71: 	72 
    -- CP-element group 71: successors 
    -- CP-element group 71:  members (1) 
      -- CP-element group 71: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_518_update_completed__ps
      -- 
    performance_counters_update_daemon_CP_392_elements(71) <= performance_counters_update_daemon_CP_392_elements(72);
    -- CP-element group 72:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 72: predecessors 
    -- CP-element group 72: 	70 
    -- CP-element group 72: successors 
    -- CP-element group 72: 	71 
    -- CP-element group 72:  members (1) 
      -- CP-element group 72: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_518_update_completed_
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(72) is a control-delay.
    cp_element_72_delay: control_delay_element  generic map(name => " 72_delay", delay_value => 1)  port map(req => performance_counters_update_daemon_CP_392_elements(70), ack => performance_counters_update_daemon_CP_392_elements(72), clk => clk, reset =>reset);
    -- CP-element group 73:  join  transition  bypass  pipeline-parent 
    -- CP-element group 73: predecessors 
    -- CP-element group 73: 	9 
    -- CP-element group 73: marked-predecessors 
    -- CP-element group 73: 	12 
    -- CP-element group 73: successors 
    -- CP-element group 73: 	11 
    -- CP-element group 73:  members (1) 
      -- CP-element group 73: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_519_sample_start_
      -- 
    performance_counters_update_daemon_cp_element_group_73: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 54) := "performance_counters_update_daemon_cp_element_group_73"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_update_daemon_CP_392_elements(9) & performance_counters_update_daemon_CP_392_elements(12);
      gj_performance_counters_update_daemon_cp_element_group_73 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(73), clk => clk, reset => reset); --
    end block;
    -- CP-element group 74:  join  transition  bypass  pipeline-parent 
    -- CP-element group 74: predecessors 
    -- CP-element group 74: 	9 
    -- CP-element group 74: marked-predecessors 
    -- CP-element group 74: 	219 
    -- CP-element group 74: successors 
    -- CP-element group 74: 	14 
    -- CP-element group 74:  members (1) 
      -- CP-element group 74: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_519_update_start_
      -- 
    performance_counters_update_daemon_cp_element_group_74: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 54) := "performance_counters_update_daemon_cp_element_group_74"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_update_daemon_CP_392_elements(9) & performance_counters_update_daemon_CP_392_elements(219);
      gj_performance_counters_update_daemon_cp_element_group_74 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(74), clk => clk, reset => reset); --
    end block;
    -- CP-element group 75:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 75: predecessors 
    -- CP-element group 75: 	11 
    -- CP-element group 75: successors 
    -- CP-element group 75:  members (1) 
      -- CP-element group 75: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_519_sample_start__ps
      -- 
    performance_counters_update_daemon_CP_392_elements(75) <= performance_counters_update_daemon_CP_392_elements(11);
    -- CP-element group 76:  join  transition  bypass  pipeline-parent 
    -- CP-element group 76: predecessors 
    -- CP-element group 76: successors 
    -- CP-element group 76: 	12 
    -- CP-element group 76:  members (1) 
      -- CP-element group 76: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_519_sample_completed__ps
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(76) is bound as output of CP function.
    -- CP-element group 77:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 77: predecessors 
    -- CP-element group 77: successors 
    -- CP-element group 77: 	218 
    -- CP-element group 77: 	15 
    -- CP-element group 77:  members (2) 
      -- CP-element group 77: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_519_update_completed_
      -- CP-element group 77: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_519_update_completed__ps
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(77) is bound as output of CP function.
    -- CP-element group 78:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 78: predecessors 
    -- CP-element group 78: 	7 
    -- CP-element group 78: successors 
    -- CP-element group 78:  members (1) 
      -- CP-element group 78: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_519_loopback_trigger
      -- 
    performance_counters_update_daemon_CP_392_elements(78) <= performance_counters_update_daemon_CP_392_elements(7);
    -- CP-element group 79:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 79: predecessors 
    -- CP-element group 79: successors 
    -- CP-element group 79:  members (2) 
      -- CP-element group 79: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_519_loopback_sample_req
      -- CP-element group 79: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_519_loopback_sample_req_ps
      -- 
    phi_stmt_519_loopback_sample_req_564_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_519_loopback_sample_req_564_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(79), ack => phi_stmt_519_req_0); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(79) is bound as output of CP function.
    -- CP-element group 80:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 80: predecessors 
    -- CP-element group 80: 	8 
    -- CP-element group 80: successors 
    -- CP-element group 80:  members (1) 
      -- CP-element group 80: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_519_entry_trigger
      -- 
    performance_counters_update_daemon_CP_392_elements(80) <= performance_counters_update_daemon_CP_392_elements(8);
    -- CP-element group 81:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 81: predecessors 
    -- CP-element group 81: successors 
    -- CP-element group 81:  members (2) 
      -- CP-element group 81: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_519_entry_sample_req
      -- CP-element group 81: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_519_entry_sample_req_ps
      -- 
    phi_stmt_519_entry_sample_req_567_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_519_entry_sample_req_567_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(81), ack => phi_stmt_519_req_1); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(81) is bound as output of CP function.
    -- CP-element group 82:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 82: predecessors 
    -- CP-element group 82: successors 
    -- CP-element group 82:  members (2) 
      -- CP-element group 82: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_519_phi_mux_ack
      -- CP-element group 82: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_519_phi_mux_ack_ps
      -- 
    phi_stmt_519_phi_mux_ack_570_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 82_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_519_ack_0, ack => performance_counters_update_daemon_CP_392_elements(82)); -- 
    -- CP-element group 83:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 83: predecessors 
    -- CP-element group 83: successors 
    -- CP-element group 83: 	85 
    -- CP-element group 83:  members (4) 
      -- CP-element group 83: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_lmc_521_sample_start__ps
      -- CP-element group 83: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_lmc_521_sample_start_
      -- CP-element group 83: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_lmc_521_Sample/$entry
      -- CP-element group 83: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_lmc_521_Sample/req
      -- 
    req_583_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_583_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(83), ack => n_lmc_629_521_buf_req_0); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(83) is bound as output of CP function.
    -- CP-element group 84:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 84: predecessors 
    -- CP-element group 84: successors 
    -- CP-element group 84: 	86 
    -- CP-element group 84:  members (4) 
      -- CP-element group 84: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_lmc_521_update_start__ps
      -- CP-element group 84: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_lmc_521_update_start_
      -- CP-element group 84: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_lmc_521_Update/$entry
      -- CP-element group 84: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_lmc_521_Update/req
      -- 
    req_588_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_588_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(84), ack => n_lmc_629_521_buf_req_1); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(84) is bound as output of CP function.
    -- CP-element group 85:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 85: predecessors 
    -- CP-element group 85: 	83 
    -- CP-element group 85: successors 
    -- CP-element group 85:  members (4) 
      -- CP-element group 85: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_lmc_521_sample_completed__ps
      -- CP-element group 85: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_lmc_521_sample_completed_
      -- CP-element group 85: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_lmc_521_Sample/$exit
      -- CP-element group 85: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_lmc_521_Sample/ack
      -- 
    ack_584_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 85_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => n_lmc_629_521_buf_ack_0, ack => performance_counters_update_daemon_CP_392_elements(85)); -- 
    -- CP-element group 86:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 86: predecessors 
    -- CP-element group 86: 	84 
    -- CP-element group 86: successors 
    -- CP-element group 86:  members (4) 
      -- CP-element group 86: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_lmc_521_update_completed__ps
      -- CP-element group 86: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_lmc_521_update_completed_
      -- CP-element group 86: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_lmc_521_Update/$exit
      -- CP-element group 86: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_lmc_521_Update/ack
      -- 
    ack_589_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 86_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => n_lmc_629_521_buf_ack_1, ack => performance_counters_update_daemon_CP_392_elements(86)); -- 
    -- CP-element group 87:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 87: predecessors 
    -- CP-element group 87: successors 
    -- CP-element group 87:  members (4) 
      -- CP-element group 87: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_523_sample_start__ps
      -- CP-element group 87: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_523_sample_completed__ps
      -- CP-element group 87: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_523_sample_start_
      -- CP-element group 87: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_523_sample_completed_
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(87) is bound as output of CP function.
    -- CP-element group 88:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 88: predecessors 
    -- CP-element group 88: successors 
    -- CP-element group 88: 	90 
    -- CP-element group 88:  members (2) 
      -- CP-element group 88: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_523_update_start__ps
      -- CP-element group 88: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_523_update_start_
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(88) is bound as output of CP function.
    -- CP-element group 89:  join  transition  bypass  pipeline-parent 
    -- CP-element group 89: predecessors 
    -- CP-element group 89: 	90 
    -- CP-element group 89: successors 
    -- CP-element group 89:  members (1) 
      -- CP-element group 89: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_523_update_completed__ps
      -- 
    performance_counters_update_daemon_CP_392_elements(89) <= performance_counters_update_daemon_CP_392_elements(90);
    -- CP-element group 90:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 90: predecessors 
    -- CP-element group 90: 	88 
    -- CP-element group 90: successors 
    -- CP-element group 90: 	89 
    -- CP-element group 90:  members (1) 
      -- CP-element group 90: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_523_update_completed_
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(90) is a control-delay.
    cp_element_90_delay: control_delay_element  generic map(name => " 90_delay", delay_value => 1)  port map(req => performance_counters_update_daemon_CP_392_elements(88), ack => performance_counters_update_daemon_CP_392_elements(90), clk => clk, reset =>reset);
    -- CP-element group 91:  join  transition  bypass  pipeline-parent 
    -- CP-element group 91: predecessors 
    -- CP-element group 91: 	9 
    -- CP-element group 91: marked-predecessors 
    -- CP-element group 91: 	12 
    -- CP-element group 91: successors 
    -- CP-element group 91: 	11 
    -- CP-element group 91:  members (1) 
      -- CP-element group 91: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_524_sample_start_
      -- 
    performance_counters_update_daemon_cp_element_group_91: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 54) := "performance_counters_update_daemon_cp_element_group_91"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_update_daemon_CP_392_elements(9) & performance_counters_update_daemon_CP_392_elements(12);
      gj_performance_counters_update_daemon_cp_element_group_91 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(91), clk => clk, reset => reset); --
    end block;
    -- CP-element group 92:  join  transition  bypass  pipeline-parent 
    -- CP-element group 92: predecessors 
    -- CP-element group 92: 	9 
    -- CP-element group 92: marked-predecessors 
    -- CP-element group 92: 	222 
    -- CP-element group 92: successors 
    -- CP-element group 92: 	14 
    -- CP-element group 92:  members (1) 
      -- CP-element group 92: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_524_update_start_
      -- 
    performance_counters_update_daemon_cp_element_group_92: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 54) := "performance_counters_update_daemon_cp_element_group_92"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_update_daemon_CP_392_elements(9) & performance_counters_update_daemon_CP_392_elements(222);
      gj_performance_counters_update_daemon_cp_element_group_92 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(92), clk => clk, reset => reset); --
    end block;
    -- CP-element group 93:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 93: predecessors 
    -- CP-element group 93: 	11 
    -- CP-element group 93: successors 
    -- CP-element group 93:  members (1) 
      -- CP-element group 93: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_524_sample_start__ps
      -- 
    performance_counters_update_daemon_CP_392_elements(93) <= performance_counters_update_daemon_CP_392_elements(11);
    -- CP-element group 94:  join  transition  bypass  pipeline-parent 
    -- CP-element group 94: predecessors 
    -- CP-element group 94: successors 
    -- CP-element group 94: 	12 
    -- CP-element group 94:  members (1) 
      -- CP-element group 94: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_524_sample_completed__ps
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(94) is bound as output of CP function.
    -- CP-element group 95:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 95: predecessors 
    -- CP-element group 95: 	14 
    -- CP-element group 95: successors 
    -- CP-element group 95:  members (1) 
      -- CP-element group 95: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_524_update_start__ps
      -- 
    performance_counters_update_daemon_CP_392_elements(95) <= performance_counters_update_daemon_CP_392_elements(14);
    -- CP-element group 96:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 96: predecessors 
    -- CP-element group 96: successors 
    -- CP-element group 96: 	15 
    -- CP-element group 96: 	221 
    -- CP-element group 96:  members (2) 
      -- CP-element group 96: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_524_update_completed_
      -- CP-element group 96: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_524_update_completed__ps
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(96) is bound as output of CP function.
    -- CP-element group 97:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 97: predecessors 
    -- CP-element group 97: 	7 
    -- CP-element group 97: successors 
    -- CP-element group 97:  members (1) 
      -- CP-element group 97: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_524_loopback_trigger
      -- 
    performance_counters_update_daemon_CP_392_elements(97) <= performance_counters_update_daemon_CP_392_elements(7);
    -- CP-element group 98:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 98: predecessors 
    -- CP-element group 98: successors 
    -- CP-element group 98:  members (2) 
      -- CP-element group 98: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_524_loopback_sample_req
      -- CP-element group 98: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_524_loopback_sample_req_ps
      -- 
    phi_stmt_524_loopback_sample_req_608_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_524_loopback_sample_req_608_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(98), ack => phi_stmt_524_req_0); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(98) is bound as output of CP function.
    -- CP-element group 99:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 99: predecessors 
    -- CP-element group 99: 	8 
    -- CP-element group 99: successors 
    -- CP-element group 99:  members (1) 
      -- CP-element group 99: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_524_entry_trigger
      -- 
    performance_counters_update_daemon_CP_392_elements(99) <= performance_counters_update_daemon_CP_392_elements(8);
    -- CP-element group 100:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 100: predecessors 
    -- CP-element group 100: successors 
    -- CP-element group 100:  members (2) 
      -- CP-element group 100: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_524_entry_sample_req
      -- CP-element group 100: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_524_entry_sample_req_ps
      -- 
    phi_stmt_524_entry_sample_req_611_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_524_entry_sample_req_611_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(100), ack => phi_stmt_524_req_1); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(100) is bound as output of CP function.
    -- CP-element group 101:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 101: predecessors 
    -- CP-element group 101: successors 
    -- CP-element group 101:  members (2) 
      -- CP-element group 101: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_524_phi_mux_ack
      -- CP-element group 101: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_524_phi_mux_ack_ps
      -- 
    phi_stmt_524_phi_mux_ack_614_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 101_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_524_ack_0, ack => performance_counters_update_daemon_CP_392_elements(101)); -- 
    -- CP-element group 102:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 102: predecessors 
    -- CP-element group 102: successors 
    -- CP-element group 102: 	104 
    -- CP-element group 102:  members (4) 
      -- CP-element group 102: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_sc_526_sample_start__ps
      -- CP-element group 102: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_sc_526_sample_start_
      -- CP-element group 102: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_sc_526_Sample/$entry
      -- CP-element group 102: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_sc_526_Sample/req
      -- 
    req_627_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_627_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(102), ack => n_sc_637_526_buf_req_0); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(102) is bound as output of CP function.
    -- CP-element group 103:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 103: predecessors 
    -- CP-element group 103: successors 
    -- CP-element group 103: 	105 
    -- CP-element group 103:  members (4) 
      -- CP-element group 103: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_sc_526_update_start__ps
      -- CP-element group 103: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_sc_526_update_start_
      -- CP-element group 103: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_sc_526_Update/$entry
      -- CP-element group 103: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_sc_526_Update/req
      -- 
    req_632_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_632_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(103), ack => n_sc_637_526_buf_req_1); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(103) is bound as output of CP function.
    -- CP-element group 104:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 104: predecessors 
    -- CP-element group 104: 	102 
    -- CP-element group 104: successors 
    -- CP-element group 104:  members (4) 
      -- CP-element group 104: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_sc_526_sample_completed__ps
      -- CP-element group 104: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_sc_526_sample_completed_
      -- CP-element group 104: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_sc_526_Sample/$exit
      -- CP-element group 104: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_sc_526_Sample/ack
      -- 
    ack_628_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 104_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => n_sc_637_526_buf_ack_0, ack => performance_counters_update_daemon_CP_392_elements(104)); -- 
    -- CP-element group 105:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 105: predecessors 
    -- CP-element group 105: 	103 
    -- CP-element group 105: successors 
    -- CP-element group 105:  members (4) 
      -- CP-element group 105: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_sc_526_update_completed__ps
      -- CP-element group 105: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_sc_526_update_completed_
      -- CP-element group 105: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_sc_526_Update/$exit
      -- CP-element group 105: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_sc_526_Update/ack
      -- 
    ack_633_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 105_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => n_sc_637_526_buf_ack_1, ack => performance_counters_update_daemon_CP_392_elements(105)); -- 
    -- CP-element group 106:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 106: predecessors 
    -- CP-element group 106: successors 
    -- CP-element group 106:  members (4) 
      -- CP-element group 106: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_528_sample_start__ps
      -- CP-element group 106: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_528_sample_completed__ps
      -- CP-element group 106: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_528_sample_start_
      -- CP-element group 106: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_528_sample_completed_
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(106) is bound as output of CP function.
    -- CP-element group 107:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 107: predecessors 
    -- CP-element group 107: successors 
    -- CP-element group 107: 	109 
    -- CP-element group 107:  members (2) 
      -- CP-element group 107: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_528_update_start__ps
      -- CP-element group 107: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_528_update_start_
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(107) is bound as output of CP function.
    -- CP-element group 108:  join  transition  bypass  pipeline-parent 
    -- CP-element group 108: predecessors 
    -- CP-element group 108: 	109 
    -- CP-element group 108: successors 
    -- CP-element group 108:  members (1) 
      -- CP-element group 108: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_528_update_completed__ps
      -- 
    performance_counters_update_daemon_CP_392_elements(108) <= performance_counters_update_daemon_CP_392_elements(109);
    -- CP-element group 109:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 109: predecessors 
    -- CP-element group 109: 	107 
    -- CP-element group 109: successors 
    -- CP-element group 109: 	108 
    -- CP-element group 109:  members (1) 
      -- CP-element group 109: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_528_update_completed_
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(109) is a control-delay.
    cp_element_109_delay: control_delay_element  generic map(name => " 109_delay", delay_value => 1)  port map(req => performance_counters_update_daemon_CP_392_elements(107), ack => performance_counters_update_daemon_CP_392_elements(109), clk => clk, reset =>reset);
    -- CP-element group 110:  join  transition  bypass  pipeline-parent 
    -- CP-element group 110: predecessors 
    -- CP-element group 110: 	9 
    -- CP-element group 110: marked-predecessors 
    -- CP-element group 110: 	12 
    -- CP-element group 110: successors 
    -- CP-element group 110: 	11 
    -- CP-element group 110:  members (1) 
      -- CP-element group 110: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_529_sample_start_
      -- 
    performance_counters_update_daemon_cp_element_group_110: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 55) := "performance_counters_update_daemon_cp_element_group_110"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_update_daemon_CP_392_elements(9) & performance_counters_update_daemon_CP_392_elements(12);
      gj_performance_counters_update_daemon_cp_element_group_110 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(110), clk => clk, reset => reset); --
    end block;
    -- CP-element group 111:  join  transition  bypass  pipeline-parent 
    -- CP-element group 111: predecessors 
    -- CP-element group 111: 	9 
    -- CP-element group 111: marked-predecessors 
    -- CP-element group 111: 	225 
    -- CP-element group 111: successors 
    -- CP-element group 111: 	14 
    -- CP-element group 111:  members (1) 
      -- CP-element group 111: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_529_update_start_
      -- 
    performance_counters_update_daemon_cp_element_group_111: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 55) := "performance_counters_update_daemon_cp_element_group_111"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_update_daemon_CP_392_elements(9) & performance_counters_update_daemon_CP_392_elements(225);
      gj_performance_counters_update_daemon_cp_element_group_111 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(111), clk => clk, reset => reset); --
    end block;
    -- CP-element group 112:  join  transition  bypass  pipeline-parent 
    -- CP-element group 112: predecessors 
    -- CP-element group 112: successors 
    -- CP-element group 112: 	12 
    -- CP-element group 112:  members (1) 
      -- CP-element group 112: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_529_sample_completed__ps
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(112) is bound as output of CP function.
    -- CP-element group 113:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 113: predecessors 
    -- CP-element group 113: 	14 
    -- CP-element group 113: successors 
    -- CP-element group 113:  members (1) 
      -- CP-element group 113: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_529_update_start__ps
      -- 
    performance_counters_update_daemon_CP_392_elements(113) <= performance_counters_update_daemon_CP_392_elements(14);
    -- CP-element group 114:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 114: predecessors 
    -- CP-element group 114: successors 
    -- CP-element group 114: 	15 
    -- CP-element group 114: 	224 
    -- CP-element group 114:  members (2) 
      -- CP-element group 114: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_529_update_completed_
      -- CP-element group 114: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_529_update_completed__ps
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(114) is bound as output of CP function.
    -- CP-element group 115:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 115: predecessors 
    -- CP-element group 115: 	7 
    -- CP-element group 115: successors 
    -- CP-element group 115:  members (1) 
      -- CP-element group 115: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_529_loopback_trigger
      -- 
    performance_counters_update_daemon_CP_392_elements(115) <= performance_counters_update_daemon_CP_392_elements(7);
    -- CP-element group 116:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 116: predecessors 
    -- CP-element group 116: successors 
    -- CP-element group 116:  members (2) 
      -- CP-element group 116: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_529_loopback_sample_req
      -- CP-element group 116: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_529_loopback_sample_req_ps
      -- 
    phi_stmt_529_loopback_sample_req_652_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_529_loopback_sample_req_652_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(116), ack => phi_stmt_529_req_1); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(116) is bound as output of CP function.
    -- CP-element group 117:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 117: predecessors 
    -- CP-element group 117: 	8 
    -- CP-element group 117: successors 
    -- CP-element group 117:  members (1) 
      -- CP-element group 117: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_529_entry_trigger
      -- 
    performance_counters_update_daemon_CP_392_elements(117) <= performance_counters_update_daemon_CP_392_elements(8);
    -- CP-element group 118:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 118: predecessors 
    -- CP-element group 118: successors 
    -- CP-element group 118:  members (2) 
      -- CP-element group 118: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_529_entry_sample_req
      -- CP-element group 118: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_529_entry_sample_req_ps
      -- 
    phi_stmt_529_entry_sample_req_655_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_529_entry_sample_req_655_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(118), ack => phi_stmt_529_req_0); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(118) is bound as output of CP function.
    -- CP-element group 119:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 119: predecessors 
    -- CP-element group 119: successors 
    -- CP-element group 119:  members (2) 
      -- CP-element group 119: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_529_phi_mux_ack
      -- CP-element group 119: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_529_phi_mux_ack_ps
      -- 
    phi_stmt_529_phi_mux_ack_658_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 119_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_529_ack_0, ack => performance_counters_update_daemon_CP_392_elements(119)); -- 
    -- CP-element group 120:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 120: predecessors 
    -- CP-element group 120: successors 
    -- CP-element group 120:  members (4) 
      -- CP-element group 120: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_532_sample_start__ps
      -- CP-element group 120: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_532_sample_completed__ps
      -- CP-element group 120: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_532_sample_start_
      -- CP-element group 120: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_532_sample_completed_
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(120) is bound as output of CP function.
    -- CP-element group 121:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 121: predecessors 
    -- CP-element group 121: successors 
    -- CP-element group 121: 	123 
    -- CP-element group 121:  members (2) 
      -- CP-element group 121: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_532_update_start__ps
      -- CP-element group 121: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_532_update_start_
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(121) is bound as output of CP function.
    -- CP-element group 122:  join  transition  bypass  pipeline-parent 
    -- CP-element group 122: predecessors 
    -- CP-element group 122: 	123 
    -- CP-element group 122: successors 
    -- CP-element group 122:  members (1) 
      -- CP-element group 122: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_532_update_completed__ps
      -- 
    performance_counters_update_daemon_CP_392_elements(122) <= performance_counters_update_daemon_CP_392_elements(123);
    -- CP-element group 123:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 123: predecessors 
    -- CP-element group 123: 	121 
    -- CP-element group 123: successors 
    -- CP-element group 123: 	122 
    -- CP-element group 123:  members (1) 
      -- CP-element group 123: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_532_update_completed_
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(123) is a control-delay.
    cp_element_123_delay: control_delay_element  generic map(name => " 123_delay", delay_value => 1)  port map(req => performance_counters_update_daemon_CP_392_elements(121), ack => performance_counters_update_daemon_CP_392_elements(123), clk => clk, reset =>reset);
    -- CP-element group 124:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 124: predecessors 
    -- CP-element group 124: successors 
    -- CP-element group 124: 	126 
    -- CP-element group 124:  members (4) 
      -- CP-element group 124: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_smc_533_sample_start__ps
      -- CP-element group 124: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_smc_533_sample_start_
      -- CP-element group 124: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_smc_533_Sample/$entry
      -- CP-element group 124: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_smc_533_Sample/req
      -- 
    req_679_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_679_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(124), ack => n_smc_645_533_buf_req_0); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(124) is bound as output of CP function.
    -- CP-element group 125:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 125: predecessors 
    -- CP-element group 125: successors 
    -- CP-element group 125: 	127 
    -- CP-element group 125:  members (4) 
      -- CP-element group 125: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_smc_533_update_start__ps
      -- CP-element group 125: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_smc_533_update_start_
      -- CP-element group 125: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_smc_533_Update/$entry
      -- CP-element group 125: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_smc_533_Update/req
      -- 
    req_684_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_684_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(125), ack => n_smc_645_533_buf_req_1); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(125) is bound as output of CP function.
    -- CP-element group 126:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 126: predecessors 
    -- CP-element group 126: 	124 
    -- CP-element group 126: successors 
    -- CP-element group 126:  members (4) 
      -- CP-element group 126: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_smc_533_sample_completed__ps
      -- CP-element group 126: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_smc_533_sample_completed_
      -- CP-element group 126: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_smc_533_Sample/$exit
      -- CP-element group 126: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_smc_533_Sample/ack
      -- 
    ack_680_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 126_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => n_smc_645_533_buf_ack_0, ack => performance_counters_update_daemon_CP_392_elements(126)); -- 
    -- CP-element group 127:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 127: predecessors 
    -- CP-element group 127: 	125 
    -- CP-element group 127: successors 
    -- CP-element group 127:  members (4) 
      -- CP-element group 127: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_smc_533_update_completed__ps
      -- CP-element group 127: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_smc_533_update_completed_
      -- CP-element group 127: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_smc_533_Update/$exit
      -- CP-element group 127: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_smc_533_Update/ack
      -- 
    ack_685_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 127_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => n_smc_645_533_buf_ack_1, ack => performance_counters_update_daemon_CP_392_elements(127)); -- 
    -- CP-element group 128:  join  transition  bypass  pipeline-parent 
    -- CP-element group 128: predecessors 
    -- CP-element group 128: 	9 
    -- CP-element group 128: marked-predecessors 
    -- CP-element group 128: 	12 
    -- CP-element group 128: successors 
    -- CP-element group 128: 	11 
    -- CP-element group 128:  members (1) 
      -- CP-element group 128: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_534_sample_start_
      -- 
    performance_counters_update_daemon_cp_element_group_128: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 55) := "performance_counters_update_daemon_cp_element_group_128"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_update_daemon_CP_392_elements(9) & performance_counters_update_daemon_CP_392_elements(12);
      gj_performance_counters_update_daemon_cp_element_group_128 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(128), clk => clk, reset => reset); --
    end block;
    -- CP-element group 129:  join  transition  bypass  pipeline-parent 
    -- CP-element group 129: predecessors 
    -- CP-element group 129: 	9 
    -- CP-element group 129: marked-predecessors 
    -- CP-element group 129: 	228 
    -- CP-element group 129: successors 
    -- CP-element group 129: 	14 
    -- CP-element group 129:  members (1) 
      -- CP-element group 129: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_534_update_start_
      -- 
    performance_counters_update_daemon_cp_element_group_129: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 55) := "performance_counters_update_daemon_cp_element_group_129"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_update_daemon_CP_392_elements(9) & performance_counters_update_daemon_CP_392_elements(228);
      gj_performance_counters_update_daemon_cp_element_group_129 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(129), clk => clk, reset => reset); --
    end block;
    -- CP-element group 130:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 130: predecessors 
    -- CP-element group 130: 	11 
    -- CP-element group 130: successors 
    -- CP-element group 130:  members (1) 
      -- CP-element group 130: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_534_sample_start__ps
      -- 
    performance_counters_update_daemon_CP_392_elements(130) <= performance_counters_update_daemon_CP_392_elements(11);
    -- CP-element group 131:  join  transition  bypass  pipeline-parent 
    -- CP-element group 131: predecessors 
    -- CP-element group 131: successors 
    -- CP-element group 131: 	12 
    -- CP-element group 131:  members (1) 
      -- CP-element group 131: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_534_sample_completed__ps
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(131) is bound as output of CP function.
    -- CP-element group 132:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 132: predecessors 
    -- CP-element group 132: 	14 
    -- CP-element group 132: successors 
    -- CP-element group 132:  members (1) 
      -- CP-element group 132: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_534_update_start__ps
      -- 
    performance_counters_update_daemon_CP_392_elements(132) <= performance_counters_update_daemon_CP_392_elements(14);
    -- CP-element group 133:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 133: predecessors 
    -- CP-element group 133: successors 
    -- CP-element group 133: 	15 
    -- CP-element group 133: 	227 
    -- CP-element group 133:  members (2) 
      -- CP-element group 133: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_534_update_completed_
      -- CP-element group 133: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_534_update_completed__ps
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(133) is bound as output of CP function.
    -- CP-element group 134:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 134: predecessors 
    -- CP-element group 134: 	7 
    -- CP-element group 134: successors 
    -- CP-element group 134:  members (1) 
      -- CP-element group 134: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_534_loopback_trigger
      -- 
    performance_counters_update_daemon_CP_392_elements(134) <= performance_counters_update_daemon_CP_392_elements(7);
    -- CP-element group 135:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 135: predecessors 
    -- CP-element group 135: successors 
    -- CP-element group 135:  members (2) 
      -- CP-element group 135: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_534_loopback_sample_req
      -- CP-element group 135: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_534_loopback_sample_req_ps
      -- 
    phi_stmt_534_loopback_sample_req_696_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_534_loopback_sample_req_696_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(135), ack => phi_stmt_534_req_0); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(135) is bound as output of CP function.
    -- CP-element group 136:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 136: predecessors 
    -- CP-element group 136: 	8 
    -- CP-element group 136: successors 
    -- CP-element group 136:  members (1) 
      -- CP-element group 136: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_534_entry_trigger
      -- 
    performance_counters_update_daemon_CP_392_elements(136) <= performance_counters_update_daemon_CP_392_elements(8);
    -- CP-element group 137:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 137: predecessors 
    -- CP-element group 137: successors 
    -- CP-element group 137:  members (2) 
      -- CP-element group 137: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_534_entry_sample_req
      -- CP-element group 137: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_534_entry_sample_req_ps
      -- 
    phi_stmt_534_entry_sample_req_699_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_534_entry_sample_req_699_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(137), ack => phi_stmt_534_req_1); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(137) is bound as output of CP function.
    -- CP-element group 138:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 138: predecessors 
    -- CP-element group 138: successors 
    -- CP-element group 138:  members (2) 
      -- CP-element group 138: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_534_phi_mux_ack
      -- CP-element group 138: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_534_phi_mux_ack_ps
      -- 
    phi_stmt_534_phi_mux_ack_702_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 138_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_534_ack_0, ack => performance_counters_update_daemon_CP_392_elements(138)); -- 
    -- CP-element group 139:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 139: predecessors 
    -- CP-element group 139: successors 
    -- CP-element group 139: 	141 
    -- CP-element group 139:  members (4) 
      -- CP-element group 139: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_cmc_536_sample_start__ps
      -- CP-element group 139: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_cmc_536_sample_start_
      -- CP-element group 139: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_cmc_536_Sample/$entry
      -- CP-element group 139: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_cmc_536_Sample/req
      -- 
    req_715_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_715_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(139), ack => n_cmc_653_536_buf_req_0); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(139) is bound as output of CP function.
    -- CP-element group 140:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 140: predecessors 
    -- CP-element group 140: successors 
    -- CP-element group 140: 	142 
    -- CP-element group 140:  members (4) 
      -- CP-element group 140: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_cmc_536_update_start__ps
      -- CP-element group 140: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_cmc_536_update_start_
      -- CP-element group 140: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_cmc_536_Update/$entry
      -- CP-element group 140: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_cmc_536_Update/req
      -- 
    req_720_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_720_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(140), ack => n_cmc_653_536_buf_req_1); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(140) is bound as output of CP function.
    -- CP-element group 141:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 141: predecessors 
    -- CP-element group 141: 	139 
    -- CP-element group 141: successors 
    -- CP-element group 141:  members (4) 
      -- CP-element group 141: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_cmc_536_sample_completed__ps
      -- CP-element group 141: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_cmc_536_sample_completed_
      -- CP-element group 141: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_cmc_536_Sample/$exit
      -- CP-element group 141: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_cmc_536_Sample/ack
      -- 
    ack_716_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 141_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => n_cmc_653_536_buf_ack_0, ack => performance_counters_update_daemon_CP_392_elements(141)); -- 
    -- CP-element group 142:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 142: predecessors 
    -- CP-element group 142: 	140 
    -- CP-element group 142: successors 
    -- CP-element group 142:  members (4) 
      -- CP-element group 142: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_cmc_536_update_completed__ps
      -- CP-element group 142: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_cmc_536_update_completed_
      -- CP-element group 142: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_cmc_536_Update/$exit
      -- CP-element group 142: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_cmc_536_Update/ack
      -- 
    ack_721_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 142_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => n_cmc_653_536_buf_ack_1, ack => performance_counters_update_daemon_CP_392_elements(142)); -- 
    -- CP-element group 143:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 143: predecessors 
    -- CP-element group 143: successors 
    -- CP-element group 143:  members (4) 
      -- CP-element group 143: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_538_sample_start__ps
      -- CP-element group 143: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_538_sample_completed__ps
      -- CP-element group 143: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_538_sample_start_
      -- CP-element group 143: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_538_sample_completed_
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(143) is bound as output of CP function.
    -- CP-element group 144:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 144: predecessors 
    -- CP-element group 144: successors 
    -- CP-element group 144: 	146 
    -- CP-element group 144:  members (2) 
      -- CP-element group 144: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_538_update_start__ps
      -- CP-element group 144: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_538_update_start_
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(144) is bound as output of CP function.
    -- CP-element group 145:  join  transition  bypass  pipeline-parent 
    -- CP-element group 145: predecessors 
    -- CP-element group 145: 	146 
    -- CP-element group 145: successors 
    -- CP-element group 145:  members (1) 
      -- CP-element group 145: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_538_update_completed__ps
      -- 
    performance_counters_update_daemon_CP_392_elements(145) <= performance_counters_update_daemon_CP_392_elements(146);
    -- CP-element group 146:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 146: predecessors 
    -- CP-element group 146: 	144 
    -- CP-element group 146: successors 
    -- CP-element group 146: 	145 
    -- CP-element group 146:  members (1) 
      -- CP-element group 146: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_538_update_completed_
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(146) is a control-delay.
    cp_element_146_delay: control_delay_element  generic map(name => " 146_delay", delay_value => 1)  port map(req => performance_counters_update_daemon_CP_392_elements(144), ack => performance_counters_update_daemon_CP_392_elements(146), clk => clk, reset =>reset);
    -- CP-element group 147:  join  transition  bypass  pipeline-parent 
    -- CP-element group 147: predecessors 
    -- CP-element group 147: 	9 
    -- CP-element group 147: marked-predecessors 
    -- CP-element group 147: 	12 
    -- CP-element group 147: successors 
    -- CP-element group 147: 	11 
    -- CP-element group 147:  members (1) 
      -- CP-element group 147: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_539_sample_start_
      -- 
    performance_counters_update_daemon_cp_element_group_147: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 55) := "performance_counters_update_daemon_cp_element_group_147"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_update_daemon_CP_392_elements(9) & performance_counters_update_daemon_CP_392_elements(12);
      gj_performance_counters_update_daemon_cp_element_group_147 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(147), clk => clk, reset => reset); --
    end block;
    -- CP-element group 148:  join  transition  bypass  pipeline-parent 
    -- CP-element group 148: predecessors 
    -- CP-element group 148: 	9 
    -- CP-element group 148: marked-predecessors 
    -- CP-element group 148: 	231 
    -- CP-element group 148: successors 
    -- CP-element group 148: 	14 
    -- CP-element group 148:  members (1) 
      -- CP-element group 148: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_539_update_start_
      -- 
    performance_counters_update_daemon_cp_element_group_148: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 55) := "performance_counters_update_daemon_cp_element_group_148"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_update_daemon_CP_392_elements(9) & performance_counters_update_daemon_CP_392_elements(231);
      gj_performance_counters_update_daemon_cp_element_group_148 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(148), clk => clk, reset => reset); --
    end block;
    -- CP-element group 149:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 149: predecessors 
    -- CP-element group 149: 	11 
    -- CP-element group 149: successors 
    -- CP-element group 149:  members (1) 
      -- CP-element group 149: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_539_sample_start__ps
      -- 
    performance_counters_update_daemon_CP_392_elements(149) <= performance_counters_update_daemon_CP_392_elements(11);
    -- CP-element group 150:  join  transition  bypass  pipeline-parent 
    -- CP-element group 150: predecessors 
    -- CP-element group 150: successors 
    -- CP-element group 150: 	12 
    -- CP-element group 150:  members (1) 
      -- CP-element group 150: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_539_sample_completed__ps
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(150) is bound as output of CP function.
    -- CP-element group 151:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 151: predecessors 
    -- CP-element group 151: 	14 
    -- CP-element group 151: successors 
    -- CP-element group 151:  members (1) 
      -- CP-element group 151: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_539_update_start__ps
      -- 
    performance_counters_update_daemon_CP_392_elements(151) <= performance_counters_update_daemon_CP_392_elements(14);
    -- CP-element group 152:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 152: predecessors 
    -- CP-element group 152: successors 
    -- CP-element group 152: 	15 
    -- CP-element group 152: 	230 
    -- CP-element group 152:  members (2) 
      -- CP-element group 152: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_539_update_completed__ps
      -- CP-element group 152: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_539_update_completed_
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(152) is bound as output of CP function.
    -- CP-element group 153:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 153: predecessors 
    -- CP-element group 153: 	7 
    -- CP-element group 153: successors 
    -- CP-element group 153:  members (1) 
      -- CP-element group 153: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_539_loopback_trigger
      -- 
    performance_counters_update_daemon_CP_392_elements(153) <= performance_counters_update_daemon_CP_392_elements(7);
    -- CP-element group 154:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 154: predecessors 
    -- CP-element group 154: successors 
    -- CP-element group 154:  members (2) 
      -- CP-element group 154: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_539_loopback_sample_req
      -- CP-element group 154: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_539_loopback_sample_req_ps
      -- 
    phi_stmt_539_loopback_sample_req_740_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_539_loopback_sample_req_740_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(154), ack => phi_stmt_539_req_0); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(154) is bound as output of CP function.
    -- CP-element group 155:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 155: predecessors 
    -- CP-element group 155: 	8 
    -- CP-element group 155: successors 
    -- CP-element group 155:  members (1) 
      -- CP-element group 155: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_539_entry_trigger
      -- 
    performance_counters_update_daemon_CP_392_elements(155) <= performance_counters_update_daemon_CP_392_elements(8);
    -- CP-element group 156:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 156: predecessors 
    -- CP-element group 156: successors 
    -- CP-element group 156:  members (2) 
      -- CP-element group 156: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_539_entry_sample_req_ps
      -- CP-element group 156: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_539_entry_sample_req
      -- 
    phi_stmt_539_entry_sample_req_743_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_539_entry_sample_req_743_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(156), ack => phi_stmt_539_req_1); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(156) is bound as output of CP function.
    -- CP-element group 157:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 157: predecessors 
    -- CP-element group 157: successors 
    -- CP-element group 157:  members (2) 
      -- CP-element group 157: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_539_phi_mux_ack_ps
      -- CP-element group 157: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_539_phi_mux_ack
      -- 
    phi_stmt_539_phi_mux_ack_746_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 157_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_539_ack_0, ack => performance_counters_update_daemon_CP_392_elements(157)); -- 
    -- CP-element group 158:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 158: predecessors 
    -- CP-element group 158: successors 
    -- CP-element group 158: 	160 
    -- CP-element group 158:  members (4) 
      -- CP-element group 158: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_tc_541_Sample/$entry
      -- CP-element group 158: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_tc_541_sample_start__ps
      -- CP-element group 158: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_tc_541_Sample/req
      -- CP-element group 158: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_tc_541_sample_start_
      -- 
    req_759_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_759_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(158), ack => n_tc_661_541_buf_req_0); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(158) is bound as output of CP function.
    -- CP-element group 159:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 159: predecessors 
    -- CP-element group 159: successors 
    -- CP-element group 159: 	161 
    -- CP-element group 159:  members (4) 
      -- CP-element group 159: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_tc_541_update_start_
      -- CP-element group 159: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_tc_541_update_start__ps
      -- CP-element group 159: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_tc_541_Update/$entry
      -- CP-element group 159: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_tc_541_Update/req
      -- 
    req_764_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_764_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(159), ack => n_tc_661_541_buf_req_1); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(159) is bound as output of CP function.
    -- CP-element group 160:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 160: predecessors 
    -- CP-element group 160: 	158 
    -- CP-element group 160: successors 
    -- CP-element group 160:  members (4) 
      -- CP-element group 160: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_tc_541_sample_completed__ps
      -- CP-element group 160: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_tc_541_Sample/$exit
      -- CP-element group 160: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_tc_541_Sample/ack
      -- CP-element group 160: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_tc_541_sample_completed_
      -- 
    ack_760_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 160_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => n_tc_661_541_buf_ack_0, ack => performance_counters_update_daemon_CP_392_elements(160)); -- 
    -- CP-element group 161:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 161: predecessors 
    -- CP-element group 161: 	159 
    -- CP-element group 161: successors 
    -- CP-element group 161:  members (4) 
      -- CP-element group 161: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_tc_541_update_completed_
      -- CP-element group 161: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_tc_541_Update/ack
      -- CP-element group 161: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_tc_541_Update/$exit
      -- CP-element group 161: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_tc_541_update_completed__ps
      -- 
    ack_765_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 161_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => n_tc_661_541_buf_ack_1, ack => performance_counters_update_daemon_CP_392_elements(161)); -- 
    -- CP-element group 162:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 162: predecessors 
    -- CP-element group 162: successors 
    -- CP-element group 162:  members (4) 
      -- CP-element group 162: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_543_sample_start_
      -- CP-element group 162: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_543_sample_completed_
      -- CP-element group 162: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_543_sample_start__ps
      -- CP-element group 162: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_543_sample_completed__ps
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(162) is bound as output of CP function.
    -- CP-element group 163:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 163: predecessors 
    -- CP-element group 163: successors 
    -- CP-element group 163: 	165 
    -- CP-element group 163:  members (2) 
      -- CP-element group 163: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_543_update_start_
      -- CP-element group 163: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_543_update_start__ps
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(163) is bound as output of CP function.
    -- CP-element group 164:  join  transition  bypass  pipeline-parent 
    -- CP-element group 164: predecessors 
    -- CP-element group 164: 	165 
    -- CP-element group 164: successors 
    -- CP-element group 164:  members (1) 
      -- CP-element group 164: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_543_update_completed__ps
      -- 
    performance_counters_update_daemon_CP_392_elements(164) <= performance_counters_update_daemon_CP_392_elements(165);
    -- CP-element group 165:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 165: predecessors 
    -- CP-element group 165: 	163 
    -- CP-element group 165: successors 
    -- CP-element group 165: 	164 
    -- CP-element group 165:  members (1) 
      -- CP-element group 165: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_543_update_completed_
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(165) is a control-delay.
    cp_element_165_delay: control_delay_element  generic map(name => " 165_delay", delay_value => 1)  port map(req => performance_counters_update_daemon_CP_392_elements(163), ack => performance_counters_update_daemon_CP_392_elements(165), clk => clk, reset =>reset);
    -- CP-element group 166:  join  transition  bypass  pipeline-parent 
    -- CP-element group 166: predecessors 
    -- CP-element group 166: 	9 
    -- CP-element group 166: marked-predecessors 
    -- CP-element group 166: 	12 
    -- CP-element group 166: successors 
    -- CP-element group 166: 	11 
    -- CP-element group 166:  members (1) 
      -- CP-element group 166: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_544_sample_start_
      -- 
    performance_counters_update_daemon_cp_element_group_166: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 55) := "performance_counters_update_daemon_cp_element_group_166"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_update_daemon_CP_392_elements(9) & performance_counters_update_daemon_CP_392_elements(12);
      gj_performance_counters_update_daemon_cp_element_group_166 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(166), clk => clk, reset => reset); --
    end block;
    -- CP-element group 167:  join  transition  bypass  pipeline-parent 
    -- CP-element group 167: predecessors 
    -- CP-element group 167: 	9 
    -- CP-element group 167: marked-predecessors 
    -- CP-element group 167: 	234 
    -- CP-element group 167: successors 
    -- CP-element group 167: 	14 
    -- CP-element group 167:  members (1) 
      -- CP-element group 167: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_544_update_start_
      -- 
    performance_counters_update_daemon_cp_element_group_167: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 55) := "performance_counters_update_daemon_cp_element_group_167"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_update_daemon_CP_392_elements(9) & performance_counters_update_daemon_CP_392_elements(234);
      gj_performance_counters_update_daemon_cp_element_group_167 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(167), clk => clk, reset => reset); --
    end block;
    -- CP-element group 168:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 168: predecessors 
    -- CP-element group 168: 	11 
    -- CP-element group 168: successors 
    -- CP-element group 168:  members (1) 
      -- CP-element group 168: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_544_sample_start__ps
      -- 
    performance_counters_update_daemon_CP_392_elements(168) <= performance_counters_update_daemon_CP_392_elements(11);
    -- CP-element group 169:  join  transition  bypass  pipeline-parent 
    -- CP-element group 169: predecessors 
    -- CP-element group 169: successors 
    -- CP-element group 169: 	12 
    -- CP-element group 169:  members (1) 
      -- CP-element group 169: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_544_sample_completed__ps
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(169) is bound as output of CP function.
    -- CP-element group 170:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 170: predecessors 
    -- CP-element group 170: 	14 
    -- CP-element group 170: successors 
    -- CP-element group 170:  members (1) 
      -- CP-element group 170: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_544_update_start__ps
      -- 
    performance_counters_update_daemon_CP_392_elements(170) <= performance_counters_update_daemon_CP_392_elements(14);
    -- CP-element group 171:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 171: predecessors 
    -- CP-element group 171: successors 
    -- CP-element group 171: 	15 
    -- CP-element group 171: 	233 
    -- CP-element group 171:  members (2) 
      -- CP-element group 171: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_544_update_completed_
      -- CP-element group 171: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_544_update_completed__ps
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(171) is bound as output of CP function.
    -- CP-element group 172:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 172: predecessors 
    -- CP-element group 172: 	7 
    -- CP-element group 172: successors 
    -- CP-element group 172:  members (1) 
      -- CP-element group 172: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_544_loopback_trigger
      -- 
    performance_counters_update_daemon_CP_392_elements(172) <= performance_counters_update_daemon_CP_392_elements(7);
    -- CP-element group 173:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 173: predecessors 
    -- CP-element group 173: successors 
    -- CP-element group 173:  members (2) 
      -- CP-element group 173: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_544_loopback_sample_req
      -- CP-element group 173: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_544_loopback_sample_req_ps
      -- 
    phi_stmt_544_loopback_sample_req_784_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_544_loopback_sample_req_784_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(173), ack => phi_stmt_544_req_1); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(173) is bound as output of CP function.
    -- CP-element group 174:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 174: predecessors 
    -- CP-element group 174: 	8 
    -- CP-element group 174: successors 
    -- CP-element group 174:  members (1) 
      -- CP-element group 174: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_544_entry_trigger
      -- 
    performance_counters_update_daemon_CP_392_elements(174) <= performance_counters_update_daemon_CP_392_elements(8);
    -- CP-element group 175:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 175: predecessors 
    -- CP-element group 175: successors 
    -- CP-element group 175:  members (2) 
      -- CP-element group 175: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_544_entry_sample_req
      -- CP-element group 175: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_544_entry_sample_req_ps
      -- 
    phi_stmt_544_entry_sample_req_787_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_544_entry_sample_req_787_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(175), ack => phi_stmt_544_req_0); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(175) is bound as output of CP function.
    -- CP-element group 176:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 176: predecessors 
    -- CP-element group 176: successors 
    -- CP-element group 176:  members (2) 
      -- CP-element group 176: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_544_phi_mux_ack
      -- CP-element group 176: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_544_phi_mux_ack_ps
      -- 
    phi_stmt_544_phi_mux_ack_790_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 176_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_544_ack_0, ack => performance_counters_update_daemon_CP_392_elements(176)); -- 
    -- CP-element group 177:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 177: predecessors 
    -- CP-element group 177: successors 
    -- CP-element group 177:  members (4) 
      -- CP-element group 177: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_547_sample_start__ps
      -- CP-element group 177: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_547_sample_start_
      -- CP-element group 177: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_547_sample_completed__ps
      -- CP-element group 177: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_547_sample_completed_
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(177) is bound as output of CP function.
    -- CP-element group 178:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 178: predecessors 
    -- CP-element group 178: successors 
    -- CP-element group 178: 	180 
    -- CP-element group 178:  members (2) 
      -- CP-element group 178: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_547_update_start__ps
      -- CP-element group 178: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_547_update_start_
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(178) is bound as output of CP function.
    -- CP-element group 179:  join  transition  bypass  pipeline-parent 
    -- CP-element group 179: predecessors 
    -- CP-element group 179: 	180 
    -- CP-element group 179: successors 
    -- CP-element group 179:  members (1) 
      -- CP-element group 179: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_547_update_completed__ps
      -- 
    performance_counters_update_daemon_CP_392_elements(179) <= performance_counters_update_daemon_CP_392_elements(180);
    -- CP-element group 180:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 180: predecessors 
    -- CP-element group 180: 	178 
    -- CP-element group 180: successors 
    -- CP-element group 180: 	179 
    -- CP-element group 180:  members (1) 
      -- CP-element group 180: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_547_update_completed_
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(180) is a control-delay.
    cp_element_180_delay: control_delay_element  generic map(name => " 180_delay", delay_value => 1)  port map(req => performance_counters_update_daemon_CP_392_elements(178), ack => performance_counters_update_daemon_CP_392_elements(180), clk => clk, reset =>reset);
    -- CP-element group 181:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 181: predecessors 
    -- CP-element group 181: successors 
    -- CP-element group 181: 	183 
    -- CP-element group 181:  members (4) 
      -- CP-element group 181: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_iac_548_Sample/req
      -- CP-element group 181: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_iac_548_Sample/$entry
      -- CP-element group 181: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_iac_548_sample_start_
      -- CP-element group 181: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_iac_548_sample_start__ps
      -- 
    req_811_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_811_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(181), ack => n_iac_669_548_buf_req_0); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(181) is bound as output of CP function.
    -- CP-element group 182:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 182: predecessors 
    -- CP-element group 182: successors 
    -- CP-element group 182: 	184 
    -- CP-element group 182:  members (4) 
      -- CP-element group 182: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_iac_548_Update/req
      -- CP-element group 182: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_iac_548_Update/$entry
      -- CP-element group 182: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_iac_548_update_start_
      -- CP-element group 182: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_iac_548_update_start__ps
      -- 
    req_816_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_816_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(182), ack => n_iac_669_548_buf_req_1); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(182) is bound as output of CP function.
    -- CP-element group 183:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 183: predecessors 
    -- CP-element group 183: 	181 
    -- CP-element group 183: successors 
    -- CP-element group 183:  members (4) 
      -- CP-element group 183: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_iac_548_Sample/ack
      -- CP-element group 183: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_iac_548_Sample/$exit
      -- CP-element group 183: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_iac_548_sample_completed_
      -- CP-element group 183: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_iac_548_sample_completed__ps
      -- 
    ack_812_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 183_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => n_iac_669_548_buf_ack_0, ack => performance_counters_update_daemon_CP_392_elements(183)); -- 
    -- CP-element group 184:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 184: predecessors 
    -- CP-element group 184: 	182 
    -- CP-element group 184: successors 
    -- CP-element group 184:  members (4) 
      -- CP-element group 184: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_iac_548_Update/ack
      -- CP-element group 184: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_iac_548_Update/$exit
      -- CP-element group 184: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_iac_548_update_completed_
      -- CP-element group 184: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_iac_548_update_completed__ps
      -- 
    ack_817_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 184_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => n_iac_669_548_buf_ack_1, ack => performance_counters_update_daemon_CP_392_elements(184)); -- 
    -- CP-element group 185:  join  transition  bypass  pipeline-parent 
    -- CP-element group 185: predecessors 
    -- CP-element group 185: 	9 
    -- CP-element group 185: marked-predecessors 
    -- CP-element group 185: 	12 
    -- CP-element group 185: successors 
    -- CP-element group 185: 	11 
    -- CP-element group 185:  members (1) 
      -- CP-element group 185: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_549_sample_start_
      -- 
    performance_counters_update_daemon_cp_element_group_185: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 55) := "performance_counters_update_daemon_cp_element_group_185"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_update_daemon_CP_392_elements(9) & performance_counters_update_daemon_CP_392_elements(12);
      gj_performance_counters_update_daemon_cp_element_group_185 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(185), clk => clk, reset => reset); --
    end block;
    -- CP-element group 186:  join  transition  bypass  pipeline-parent 
    -- CP-element group 186: predecessors 
    -- CP-element group 186: 	9 
    -- CP-element group 186: marked-predecessors 
    -- CP-element group 186: 	237 
    -- CP-element group 186: successors 
    -- CP-element group 186: 	14 
    -- CP-element group 186:  members (1) 
      -- CP-element group 186: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_549_update_start_
      -- 
    performance_counters_update_daemon_cp_element_group_186: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 55) := "performance_counters_update_daemon_cp_element_group_186"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_update_daemon_CP_392_elements(9) & performance_counters_update_daemon_CP_392_elements(237);
      gj_performance_counters_update_daemon_cp_element_group_186 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(186), clk => clk, reset => reset); --
    end block;
    -- CP-element group 187:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 187: predecessors 
    -- CP-element group 187: 	11 
    -- CP-element group 187: successors 
    -- CP-element group 187:  members (1) 
      -- CP-element group 187: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_549_sample_start__ps
      -- 
    performance_counters_update_daemon_CP_392_elements(187) <= performance_counters_update_daemon_CP_392_elements(11);
    -- CP-element group 188:  join  transition  bypass  pipeline-parent 
    -- CP-element group 188: predecessors 
    -- CP-element group 188: successors 
    -- CP-element group 188: 	12 
    -- CP-element group 188:  members (1) 
      -- CP-element group 188: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_549_sample_completed__ps
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(188) is bound as output of CP function.
    -- CP-element group 189:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 189: predecessors 
    -- CP-element group 189: 	14 
    -- CP-element group 189: successors 
    -- CP-element group 189:  members (1) 
      -- CP-element group 189: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_549_update_start__ps
      -- 
    performance_counters_update_daemon_CP_392_elements(189) <= performance_counters_update_daemon_CP_392_elements(14);
    -- CP-element group 190:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 190: predecessors 
    -- CP-element group 190: successors 
    -- CP-element group 190: 	15 
    -- CP-element group 190: 	236 
    -- CP-element group 190:  members (2) 
      -- CP-element group 190: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_549_update_completed__ps
      -- CP-element group 190: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_549_update_completed_
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(190) is bound as output of CP function.
    -- CP-element group 191:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 191: predecessors 
    -- CP-element group 191: 	7 
    -- CP-element group 191: successors 
    -- CP-element group 191:  members (1) 
      -- CP-element group 191: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_549_loopback_trigger
      -- 
    performance_counters_update_daemon_CP_392_elements(191) <= performance_counters_update_daemon_CP_392_elements(7);
    -- CP-element group 192:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 192: predecessors 
    -- CP-element group 192: successors 
    -- CP-element group 192:  members (2) 
      -- CP-element group 192: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_549_loopback_sample_req_ps
      -- CP-element group 192: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_549_loopback_sample_req
      -- 
    phi_stmt_549_loopback_sample_req_828_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_549_loopback_sample_req_828_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(192), ack => phi_stmt_549_req_0); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(192) is bound as output of CP function.
    -- CP-element group 193:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 193: predecessors 
    -- CP-element group 193: 	8 
    -- CP-element group 193: successors 
    -- CP-element group 193:  members (1) 
      -- CP-element group 193: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_549_entry_trigger
      -- 
    performance_counters_update_daemon_CP_392_elements(193) <= performance_counters_update_daemon_CP_392_elements(8);
    -- CP-element group 194:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 194: predecessors 
    -- CP-element group 194: successors 
    -- CP-element group 194:  members (2) 
      -- CP-element group 194: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_549_entry_sample_req_ps
      -- CP-element group 194: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_549_entry_sample_req
      -- 
    phi_stmt_549_entry_sample_req_831_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_549_entry_sample_req_831_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(194), ack => phi_stmt_549_req_1); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(194) is bound as output of CP function.
    -- CP-element group 195:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 195: predecessors 
    -- CP-element group 195: successors 
    -- CP-element group 195:  members (2) 
      -- CP-element group 195: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_549_phi_mux_ack_ps
      -- CP-element group 195: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_549_phi_mux_ack
      -- 
    phi_stmt_549_phi_mux_ack_834_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 195_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_549_ack_0, ack => performance_counters_update_daemon_CP_392_elements(195)); -- 
    -- CP-element group 196:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 196: predecessors 
    -- CP-element group 196: successors 
    -- CP-element group 196: 	198 
    -- CP-element group 196:  members (4) 
      -- CP-element group 196: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_imc_551_Sample/req
      -- CP-element group 196: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_imc_551_sample_start_
      -- CP-element group 196: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_imc_551_Sample/$entry
      -- CP-element group 196: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_imc_551_sample_start__ps
      -- 
    req_847_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_847_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(196), ack => n_imc_677_551_buf_req_0); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(196) is bound as output of CP function.
    -- CP-element group 197:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 197: predecessors 
    -- CP-element group 197: successors 
    -- CP-element group 197: 	199 
    -- CP-element group 197:  members (4) 
      -- CP-element group 197: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_imc_551_Update/$entry
      -- CP-element group 197: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_imc_551_update_start_
      -- CP-element group 197: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_imc_551_Update/req
      -- CP-element group 197: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_imc_551_update_start__ps
      -- 
    req_852_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_852_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(197), ack => n_imc_677_551_buf_req_1); -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(197) is bound as output of CP function.
    -- CP-element group 198:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 198: predecessors 
    -- CP-element group 198: 	196 
    -- CP-element group 198: successors 
    -- CP-element group 198:  members (4) 
      -- CP-element group 198: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_imc_551_Sample/ack
      -- CP-element group 198: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_imc_551_sample_completed_
      -- CP-element group 198: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_imc_551_Sample/$exit
      -- CP-element group 198: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_imc_551_sample_completed__ps
      -- 
    ack_848_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 198_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => n_imc_677_551_buf_ack_0, ack => performance_counters_update_daemon_CP_392_elements(198)); -- 
    -- CP-element group 199:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 199: predecessors 
    -- CP-element group 199: 	197 
    -- CP-element group 199: successors 
    -- CP-element group 199:  members (4) 
      -- CP-element group 199: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_imc_551_Update/$exit
      -- CP-element group 199: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_imc_551_update_completed__ps
      -- CP-element group 199: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_imc_551_update_completed_
      -- CP-element group 199: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/R_n_imc_551_Update/ack
      -- 
    ack_853_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 199_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => n_imc_677_551_buf_ack_1, ack => performance_counters_update_daemon_CP_392_elements(199)); -- 
    -- CP-element group 200:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 200: predecessors 
    -- CP-element group 200: successors 
    -- CP-element group 200:  members (4) 
      -- CP-element group 200: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_553_sample_start_
      -- CP-element group 200: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_553_sample_completed_
      -- CP-element group 200: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_553_sample_completed__ps
      -- CP-element group 200: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_553_sample_start__ps
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(200) is bound as output of CP function.
    -- CP-element group 201:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 201: predecessors 
    -- CP-element group 201: successors 
    -- CP-element group 201: 	203 
    -- CP-element group 201:  members (2) 
      -- CP-element group 201: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_553_update_start__ps
      -- CP-element group 201: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_553_update_start_
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(201) is bound as output of CP function.
    -- CP-element group 202:  join  transition  bypass  pipeline-parent 
    -- CP-element group 202: predecessors 
    -- CP-element group 202: 	203 
    -- CP-element group 202: successors 
    -- CP-element group 202:  members (1) 
      -- CP-element group 202: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_553_update_completed__ps
      -- 
    performance_counters_update_daemon_CP_392_elements(202) <= performance_counters_update_daemon_CP_392_elements(203);
    -- CP-element group 203:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 203: predecessors 
    -- CP-element group 203: 	201 
    -- CP-element group 203: successors 
    -- CP-element group 203: 	202 
    -- CP-element group 203:  members (1) 
      -- CP-element group 203: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/type_cast_553_update_completed_
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(203) is a control-delay.
    cp_element_203_delay: control_delay_element  generic map(name => " 203_delay", delay_value => 1)  port map(req => performance_counters_update_daemon_CP_392_elements(201), ack => performance_counters_update_daemon_CP_392_elements(203), clk => clk, reset =>reset);
    -- CP-element group 204:  join  transition  bypass  pipeline-parent 
    -- CP-element group 204: predecessors 
    -- CP-element group 204: 	9 
    -- CP-element group 204: marked-predecessors 
    -- CP-element group 204: 	216 
    -- CP-element group 204: 	219 
    -- CP-element group 204: 	234 
    -- CP-element group 204: 	225 
    -- CP-element group 204: 	228 
    -- CP-element group 204: 	222 
    -- CP-element group 204: 	231 
    -- CP-element group 204: 	237 
    -- CP-element group 204: 	210 
    -- CP-element group 204: 	213 
    -- CP-element group 204: successors 
    -- CP-element group 204: 	14 
    -- CP-element group 204:  members (1) 
      -- CP-element group 204: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_554_update_start_
      -- 
    performance_counters_update_daemon_cp_element_group_204: block -- 
      constant place_capacities: IntegerArray(0 to 10) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1,10 => 1);
      constant place_markings: IntegerArray(0 to 10)  := (0 => 0,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1,10 => 1);
      constant place_delays: IntegerArray(0 to 10) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0);
      constant joinName: string(1 to 55) := "performance_counters_update_daemon_cp_element_group_204"; 
      signal preds: BooleanArray(1 to 11); -- 
    begin -- 
      preds <= performance_counters_update_daemon_CP_392_elements(9) & performance_counters_update_daemon_CP_392_elements(216) & performance_counters_update_daemon_CP_392_elements(219) & performance_counters_update_daemon_CP_392_elements(234) & performance_counters_update_daemon_CP_392_elements(225) & performance_counters_update_daemon_CP_392_elements(228) & performance_counters_update_daemon_CP_392_elements(222) & performance_counters_update_daemon_CP_392_elements(231) & performance_counters_update_daemon_CP_392_elements(237) & performance_counters_update_daemon_CP_392_elements(210) & performance_counters_update_daemon_CP_392_elements(213);
      gj_performance_counters_update_daemon_cp_element_group_204 : generic_join generic map(name => joinName, number_of_predecessors => 11, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(204), clk => clk, reset => reset); --
    end block;
    -- CP-element group 205:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 205: predecessors 
    -- CP-element group 205: 	11 
    -- CP-element group 205: marked-predecessors 
    -- CP-element group 205: 	208 
    -- CP-element group 205: successors 
    -- CP-element group 205: 	207 
    -- CP-element group 205:  members (3) 
      -- CP-element group 205: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/RPIPE_PERFORMANCE_COUNTER_UPDATE_556_sample_start_
      -- CP-element group 205: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/RPIPE_PERFORMANCE_COUNTER_UPDATE_556_Sample/rr
      -- CP-element group 205: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/RPIPE_PERFORMANCE_COUNTER_UPDATE_556_Sample/$entry
      -- 
    rr_874_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_874_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(205), ack => RPIPE_PERFORMANCE_COUNTER_UPDATE_556_inst_req_0); -- 
    performance_counters_update_daemon_cp_element_group_205: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 55) := "performance_counters_update_daemon_cp_element_group_205"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_update_daemon_CP_392_elements(11) & performance_counters_update_daemon_CP_392_elements(208);
      gj_performance_counters_update_daemon_cp_element_group_205 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(205), clk => clk, reset => reset); --
    end block;
    -- CP-element group 206:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 206: predecessors 
    -- CP-element group 206: 	14 
    -- CP-element group 206: 	207 
    -- CP-element group 206: successors 
    -- CP-element group 206: 	208 
    -- CP-element group 206:  members (3) 
      -- CP-element group 206: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/RPIPE_PERFORMANCE_COUNTER_UPDATE_556_Update/cr
      -- CP-element group 206: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/RPIPE_PERFORMANCE_COUNTER_UPDATE_556_Update/$entry
      -- CP-element group 206: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/RPIPE_PERFORMANCE_COUNTER_UPDATE_556_update_start_
      -- 
    cr_879_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_879_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(206), ack => RPIPE_PERFORMANCE_COUNTER_UPDATE_556_inst_req_1); -- 
    performance_counters_update_daemon_cp_element_group_206: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 55) := "performance_counters_update_daemon_cp_element_group_206"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= performance_counters_update_daemon_CP_392_elements(14) & performance_counters_update_daemon_CP_392_elements(207);
      gj_performance_counters_update_daemon_cp_element_group_206 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(206), clk => clk, reset => reset); --
    end block;
    -- CP-element group 207:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 207: predecessors 
    -- CP-element group 207: 	205 
    -- CP-element group 207: successors 
    -- CP-element group 207: 	12 
    -- CP-element group 207: 	206 
    -- CP-element group 207:  members (3) 
      -- CP-element group 207: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/RPIPE_PERFORMANCE_COUNTER_UPDATE_556_Sample/ra
      -- CP-element group 207: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/RPIPE_PERFORMANCE_COUNTER_UPDATE_556_sample_completed_
      -- CP-element group 207: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/RPIPE_PERFORMANCE_COUNTER_UPDATE_556_Sample/$exit
      -- 
    ra_875_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 207_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_PERFORMANCE_COUNTER_UPDATE_556_inst_ack_0, ack => performance_counters_update_daemon_CP_392_elements(207)); -- 
    -- CP-element group 208:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 208: predecessors 
    -- CP-element group 208: 	206 
    -- CP-element group 208: successors 
    -- CP-element group 208: 	218 
    -- CP-element group 208: 	15 
    -- CP-element group 208: 	221 
    -- CP-element group 208: 	233 
    -- CP-element group 208: 	227 
    -- CP-element group 208: 	230 
    -- CP-element group 208: 	224 
    -- CP-element group 208: 	236 
    -- CP-element group 208: 	209 
    -- CP-element group 208: 	215 
    -- CP-element group 208: 	212 
    -- CP-element group 208: marked-successors 
    -- CP-element group 208: 	205 
    -- CP-element group 208:  members (4) 
      -- CP-element group 208: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/phi_stmt_554_update_completed_
      -- CP-element group 208: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/RPIPE_PERFORMANCE_COUNTER_UPDATE_556_Update/$exit
      -- CP-element group 208: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/RPIPE_PERFORMANCE_COUNTER_UPDATE_556_update_completed_
      -- CP-element group 208: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/RPIPE_PERFORMANCE_COUNTER_UPDATE_556_Update/ca
      -- 
    ca_880_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 208_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_PERFORMANCE_COUNTER_UPDATE_556_inst_ack_1, ack => performance_counters_update_daemon_CP_392_elements(208)); -- 
    -- CP-element group 209:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 209: predecessors 
    -- CP-element group 209: 	21 
    -- CP-element group 209: 	208 
    -- CP-element group 209: marked-predecessors 
    -- CP-element group 209: 	211 
    -- CP-element group 209: successors 
    -- CP-element group 209: 	210 
    -- CP-element group 209:  members (3) 
      -- CP-element group 209: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_executed_instruction_count_678_Sample/$entry
      -- CP-element group 209: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_executed_instruction_count_678_Sample/req
      -- CP-element group 209: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_executed_instruction_count_678_sample_start_
      -- 
    req_888_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_888_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(209), ack => WPIPE_executed_instruction_count_678_inst_req_0); -- 
    performance_counters_update_daemon_cp_element_group_209: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 55) := "performance_counters_update_daemon_cp_element_group_209"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= performance_counters_update_daemon_CP_392_elements(21) & performance_counters_update_daemon_CP_392_elements(208) & performance_counters_update_daemon_CP_392_elements(211);
      gj_performance_counters_update_daemon_cp_element_group_209 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(209), clk => clk, reset => reset); --
    end block;
    -- CP-element group 210:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 210: predecessors 
    -- CP-element group 210: 	209 
    -- CP-element group 210: successors 
    -- CP-element group 210: 	211 
    -- CP-element group 210: marked-successors 
    -- CP-element group 210: 	17 
    -- CP-element group 210: 	204 
    -- CP-element group 210:  members (6) 
      -- CP-element group 210: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_executed_instruction_count_678_Sample/$exit
      -- CP-element group 210: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_executed_instruction_count_678_Sample/ack
      -- CP-element group 210: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_executed_instruction_count_678_Update/$entry
      -- CP-element group 210: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_executed_instruction_count_678_Update/req
      -- CP-element group 210: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_executed_instruction_count_678_update_start_
      -- CP-element group 210: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_executed_instruction_count_678_sample_completed_
      -- 
    ack_889_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 210_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_executed_instruction_count_678_inst_ack_0, ack => performance_counters_update_daemon_CP_392_elements(210)); -- 
    req_893_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_893_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(210), ack => WPIPE_executed_instruction_count_678_inst_req_1); -- 
    -- CP-element group 211:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 211: predecessors 
    -- CP-element group 211: 	210 
    -- CP-element group 211: successors 
    -- CP-element group 211: 	240 
    -- CP-element group 211: marked-successors 
    -- CP-element group 211: 	209 
    -- CP-element group 211:  members (3) 
      -- CP-element group 211: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_executed_instruction_count_678_update_completed_
      -- CP-element group 211: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_executed_instruction_count_678_Update/ack
      -- CP-element group 211: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_executed_instruction_count_678_Update/$exit
      -- 
    ack_894_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 211_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_executed_instruction_count_678_inst_ack_1, ack => performance_counters_update_daemon_CP_392_elements(211)); -- 
    -- CP-element group 212:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 212: predecessors 
    -- CP-element group 212: 	40 
    -- CP-element group 212: 	208 
    -- CP-element group 212: marked-predecessors 
    -- CP-element group 212: 	214 
    -- CP-element group 212: successors 
    -- CP-element group 212: 	213 
    -- CP-element group 212:  members (3) 
      -- CP-element group 212: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_skipped_instruction_count_681_Sample/req
      -- CP-element group 212: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_skipped_instruction_count_681_Sample/$entry
      -- CP-element group 212: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_skipped_instruction_count_681_sample_start_
      -- 
    req_902_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_902_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(212), ack => WPIPE_skipped_instruction_count_681_inst_req_0); -- 
    performance_counters_update_daemon_cp_element_group_212: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 55) := "performance_counters_update_daemon_cp_element_group_212"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= performance_counters_update_daemon_CP_392_elements(40) & performance_counters_update_daemon_CP_392_elements(208) & performance_counters_update_daemon_CP_392_elements(214);
      gj_performance_counters_update_daemon_cp_element_group_212 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(212), clk => clk, reset => reset); --
    end block;
    -- CP-element group 213:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 213: predecessors 
    -- CP-element group 213: 	212 
    -- CP-element group 213: successors 
    -- CP-element group 213: 	214 
    -- CP-element group 213: marked-successors 
    -- CP-element group 213: 	36 
    -- CP-element group 213: 	204 
    -- CP-element group 213:  members (6) 
      -- CP-element group 213: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_skipped_instruction_count_681_Update/req
      -- CP-element group 213: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_skipped_instruction_count_681_Update/$entry
      -- CP-element group 213: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_skipped_instruction_count_681_Sample/ack
      -- CP-element group 213: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_skipped_instruction_count_681_Sample/$exit
      -- CP-element group 213: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_skipped_instruction_count_681_update_start_
      -- CP-element group 213: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_skipped_instruction_count_681_sample_completed_
      -- 
    ack_903_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 213_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_skipped_instruction_count_681_inst_ack_0, ack => performance_counters_update_daemon_CP_392_elements(213)); -- 
    req_907_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_907_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(213), ack => WPIPE_skipped_instruction_count_681_inst_req_1); -- 
    -- CP-element group 214:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 214: predecessors 
    -- CP-element group 214: 	213 
    -- CP-element group 214: successors 
    -- CP-element group 214: 	240 
    -- CP-element group 214: marked-successors 
    -- CP-element group 214: 	212 
    -- CP-element group 214:  members (3) 
      -- CP-element group 214: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_skipped_instruction_count_681_Update/ack
      -- CP-element group 214: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_skipped_instruction_count_681_Update/$exit
      -- CP-element group 214: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_skipped_instruction_count_681_update_completed_
      -- 
    ack_908_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 214_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_skipped_instruction_count_681_inst_ack_1, ack => performance_counters_update_daemon_CP_392_elements(214)); -- 
    -- CP-element group 215:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 215: predecessors 
    -- CP-element group 215: 	208 
    -- CP-element group 215: 	59 
    -- CP-element group 215: marked-predecessors 
    -- CP-element group 215: 	217 
    -- CP-element group 215: successors 
    -- CP-element group 215: 	216 
    -- CP-element group 215:  members (3) 
      -- CP-element group 215: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_load_count_684_Sample/req
      -- CP-element group 215: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_load_count_684_sample_start_
      -- CP-element group 215: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_load_count_684_Sample/$entry
      -- 
    req_916_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_916_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(215), ack => WPIPE_load_count_684_inst_req_0); -- 
    performance_counters_update_daemon_cp_element_group_215: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 55) := "performance_counters_update_daemon_cp_element_group_215"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= performance_counters_update_daemon_CP_392_elements(208) & performance_counters_update_daemon_CP_392_elements(59) & performance_counters_update_daemon_CP_392_elements(217);
      gj_performance_counters_update_daemon_cp_element_group_215 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(215), clk => clk, reset => reset); --
    end block;
    -- CP-element group 216:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 216: predecessors 
    -- CP-element group 216: 	215 
    -- CP-element group 216: successors 
    -- CP-element group 216: 	217 
    -- CP-element group 216: marked-successors 
    -- CP-element group 216: 	204 
    -- CP-element group 216: 	55 
    -- CP-element group 216:  members (6) 
      -- CP-element group 216: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_load_count_684_Sample/ack
      -- CP-element group 216: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_load_count_684_Update/$entry
      -- CP-element group 216: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_load_count_684_sample_completed_
      -- CP-element group 216: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_load_count_684_Update/req
      -- CP-element group 216: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_load_count_684_update_start_
      -- CP-element group 216: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_load_count_684_Sample/$exit
      -- 
    ack_917_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 216_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_load_count_684_inst_ack_0, ack => performance_counters_update_daemon_CP_392_elements(216)); -- 
    req_921_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_921_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(216), ack => WPIPE_load_count_684_inst_req_1); -- 
    -- CP-element group 217:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 217: predecessors 
    -- CP-element group 217: 	216 
    -- CP-element group 217: successors 
    -- CP-element group 217: 	240 
    -- CP-element group 217: marked-successors 
    -- CP-element group 217: 	215 
    -- CP-element group 217:  members (3) 
      -- CP-element group 217: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_load_count_684_update_completed_
      -- CP-element group 217: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_load_count_684_Update/$exit
      -- CP-element group 217: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_load_count_684_Update/ack
      -- 
    ack_922_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 217_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_load_count_684_inst_ack_1, ack => performance_counters_update_daemon_CP_392_elements(217)); -- 
    -- CP-element group 218:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 218: predecessors 
    -- CP-element group 218: 	77 
    -- CP-element group 218: 	208 
    -- CP-element group 218: marked-predecessors 
    -- CP-element group 218: 	220 
    -- CP-element group 218: successors 
    -- CP-element group 218: 	219 
    -- CP-element group 218:  members (3) 
      -- CP-element group 218: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_load_miss_count_687_sample_start_
      -- CP-element group 218: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_load_miss_count_687_Sample/$entry
      -- CP-element group 218: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_load_miss_count_687_Sample/req
      -- 
    req_930_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_930_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(218), ack => WPIPE_load_miss_count_687_inst_req_0); -- 
    performance_counters_update_daemon_cp_element_group_218: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 55) := "performance_counters_update_daemon_cp_element_group_218"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= performance_counters_update_daemon_CP_392_elements(77) & performance_counters_update_daemon_CP_392_elements(208) & performance_counters_update_daemon_CP_392_elements(220);
      gj_performance_counters_update_daemon_cp_element_group_218 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(218), clk => clk, reset => reset); --
    end block;
    -- CP-element group 219:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 219: predecessors 
    -- CP-element group 219: 	218 
    -- CP-element group 219: successors 
    -- CP-element group 219: 	220 
    -- CP-element group 219: marked-successors 
    -- CP-element group 219: 	74 
    -- CP-element group 219: 	204 
    -- CP-element group 219:  members (6) 
      -- CP-element group 219: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_load_miss_count_687_Sample/ack
      -- CP-element group 219: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_load_miss_count_687_Update/$entry
      -- CP-element group 219: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_load_miss_count_687_Update/req
      -- CP-element group 219: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_load_miss_count_687_sample_completed_
      -- CP-element group 219: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_load_miss_count_687_update_start_
      -- CP-element group 219: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_load_miss_count_687_Sample/$exit
      -- 
    ack_931_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 219_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_load_miss_count_687_inst_ack_0, ack => performance_counters_update_daemon_CP_392_elements(219)); -- 
    req_935_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_935_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(219), ack => WPIPE_load_miss_count_687_inst_req_1); -- 
    -- CP-element group 220:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 220: predecessors 
    -- CP-element group 220: 	219 
    -- CP-element group 220: successors 
    -- CP-element group 220: 	240 
    -- CP-element group 220: marked-successors 
    -- CP-element group 220: 	218 
    -- CP-element group 220:  members (3) 
      -- CP-element group 220: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_load_miss_count_687_Update/$exit
      -- CP-element group 220: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_load_miss_count_687_Update/ack
      -- CP-element group 220: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_load_miss_count_687_update_completed_
      -- 
    ack_936_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 220_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_load_miss_count_687_inst_ack_1, ack => performance_counters_update_daemon_CP_392_elements(220)); -- 
    -- CP-element group 221:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 221: predecessors 
    -- CP-element group 221: 	96 
    -- CP-element group 221: 	208 
    -- CP-element group 221: marked-predecessors 
    -- CP-element group 221: 	223 
    -- CP-element group 221: successors 
    -- CP-element group 221: 	222 
    -- CP-element group 221:  members (3) 
      -- CP-element group 221: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_store_count_690_sample_start_
      -- CP-element group 221: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_store_count_690_Sample/req
      -- CP-element group 221: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_store_count_690_Sample/$entry
      -- 
    req_944_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_944_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(221), ack => WPIPE_store_count_690_inst_req_0); -- 
    performance_counters_update_daemon_cp_element_group_221: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 55) := "performance_counters_update_daemon_cp_element_group_221"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= performance_counters_update_daemon_CP_392_elements(96) & performance_counters_update_daemon_CP_392_elements(208) & performance_counters_update_daemon_CP_392_elements(223);
      gj_performance_counters_update_daemon_cp_element_group_221 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(221), clk => clk, reset => reset); --
    end block;
    -- CP-element group 222:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 222: predecessors 
    -- CP-element group 222: 	221 
    -- CP-element group 222: successors 
    -- CP-element group 222: 	223 
    -- CP-element group 222: marked-successors 
    -- CP-element group 222: 	92 
    -- CP-element group 222: 	204 
    -- CP-element group 222:  members (6) 
      -- CP-element group 222: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_store_count_690_update_start_
      -- CP-element group 222: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_store_count_690_Sample/ack
      -- CP-element group 222: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_store_count_690_Update/$entry
      -- CP-element group 222: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_store_count_690_sample_completed_
      -- CP-element group 222: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_store_count_690_Update/req
      -- CP-element group 222: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_store_count_690_Sample/$exit
      -- 
    ack_945_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 222_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_store_count_690_inst_ack_0, ack => performance_counters_update_daemon_CP_392_elements(222)); -- 
    req_949_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_949_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(222), ack => WPIPE_store_count_690_inst_req_1); -- 
    -- CP-element group 223:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 223: predecessors 
    -- CP-element group 223: 	222 
    -- CP-element group 223: successors 
    -- CP-element group 223: 	240 
    -- CP-element group 223: marked-successors 
    -- CP-element group 223: 	221 
    -- CP-element group 223:  members (3) 
      -- CP-element group 223: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_store_count_690_update_completed_
      -- CP-element group 223: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_store_count_690_Update/ack
      -- CP-element group 223: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_store_count_690_Update/$exit
      -- 
    ack_950_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 223_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_store_count_690_inst_ack_1, ack => performance_counters_update_daemon_CP_392_elements(223)); -- 
    -- CP-element group 224:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 224: predecessors 
    -- CP-element group 224: 	114 
    -- CP-element group 224: 	208 
    -- CP-element group 224: marked-predecessors 
    -- CP-element group 224: 	226 
    -- CP-element group 224: successors 
    -- CP-element group 224: 	225 
    -- CP-element group 224:  members (3) 
      -- CP-element group 224: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_store_miss_count_693_Sample/req
      -- CP-element group 224: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_store_miss_count_693_Sample/$entry
      -- CP-element group 224: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_store_miss_count_693_sample_start_
      -- 
    req_958_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_958_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(224), ack => WPIPE_store_miss_count_693_inst_req_0); -- 
    performance_counters_update_daemon_cp_element_group_224: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 55) := "performance_counters_update_daemon_cp_element_group_224"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= performance_counters_update_daemon_CP_392_elements(114) & performance_counters_update_daemon_CP_392_elements(208) & performance_counters_update_daemon_CP_392_elements(226);
      gj_performance_counters_update_daemon_cp_element_group_224 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(224), clk => clk, reset => reset); --
    end block;
    -- CP-element group 225:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 225: predecessors 
    -- CP-element group 225: 	224 
    -- CP-element group 225: successors 
    -- CP-element group 225: 	226 
    -- CP-element group 225: marked-successors 
    -- CP-element group 225: 	111 
    -- CP-element group 225: 	204 
    -- CP-element group 225:  members (6) 
      -- CP-element group 225: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_store_miss_count_693_Sample/ack
      -- CP-element group 225: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_store_miss_count_693_Update/$entry
      -- CP-element group 225: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_store_miss_count_693_sample_completed_
      -- CP-element group 225: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_store_miss_count_693_update_start_
      -- CP-element group 225: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_store_miss_count_693_Sample/$exit
      -- CP-element group 225: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_store_miss_count_693_Update/req
      -- 
    ack_959_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 225_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_store_miss_count_693_inst_ack_0, ack => performance_counters_update_daemon_CP_392_elements(225)); -- 
    req_963_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_963_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(225), ack => WPIPE_store_miss_count_693_inst_req_1); -- 
    -- CP-element group 226:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 226: predecessors 
    -- CP-element group 226: 	225 
    -- CP-element group 226: successors 
    -- CP-element group 226: 	240 
    -- CP-element group 226: marked-successors 
    -- CP-element group 226: 	224 
    -- CP-element group 226:  members (3) 
      -- CP-element group 226: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_store_miss_count_693_Update/ack
      -- CP-element group 226: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_store_miss_count_693_update_completed_
      -- CP-element group 226: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_store_miss_count_693_Update/$exit
      -- 
    ack_964_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 226_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_store_miss_count_693_inst_ack_1, ack => performance_counters_update_daemon_CP_392_elements(226)); -- 
    -- CP-element group 227:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 227: predecessors 
    -- CP-element group 227: 	133 
    -- CP-element group 227: 	208 
    -- CP-element group 227: marked-predecessors 
    -- CP-element group 227: 	229 
    -- CP-element group 227: successors 
    -- CP-element group 227: 	228 
    -- CP-element group 227:  members (3) 
      -- CP-element group 227: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_cti_mispredict_count_696_Sample/$entry
      -- CP-element group 227: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_cti_mispredict_count_696_sample_start_
      -- CP-element group 227: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_cti_mispredict_count_696_Sample/req
      -- 
    req_972_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_972_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(227), ack => WPIPE_cti_mispredict_count_696_inst_req_0); -- 
    performance_counters_update_daemon_cp_element_group_227: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 55) := "performance_counters_update_daemon_cp_element_group_227"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= performance_counters_update_daemon_CP_392_elements(133) & performance_counters_update_daemon_CP_392_elements(208) & performance_counters_update_daemon_CP_392_elements(229);
      gj_performance_counters_update_daemon_cp_element_group_227 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(227), clk => clk, reset => reset); --
    end block;
    -- CP-element group 228:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 228: predecessors 
    -- CP-element group 228: 	227 
    -- CP-element group 228: successors 
    -- CP-element group 228: 	229 
    -- CP-element group 228: marked-successors 
    -- CP-element group 228: 	129 
    -- CP-element group 228: 	204 
    -- CP-element group 228:  members (6) 
      -- CP-element group 228: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_cti_mispredict_count_696_sample_completed_
      -- CP-element group 228: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_cti_mispredict_count_696_Update/req
      -- CP-element group 228: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_cti_mispredict_count_696_update_start_
      -- CP-element group 228: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_cti_mispredict_count_696_Sample/ack
      -- CP-element group 228: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_cti_mispredict_count_696_Update/$entry
      -- CP-element group 228: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_cti_mispredict_count_696_Sample/$exit
      -- 
    ack_973_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 228_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_cti_mispredict_count_696_inst_ack_0, ack => performance_counters_update_daemon_CP_392_elements(228)); -- 
    req_977_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_977_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(228), ack => WPIPE_cti_mispredict_count_696_inst_req_1); -- 
    -- CP-element group 229:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 229: predecessors 
    -- CP-element group 229: 	228 
    -- CP-element group 229: successors 
    -- CP-element group 229: 	240 
    -- CP-element group 229: marked-successors 
    -- CP-element group 229: 	227 
    -- CP-element group 229:  members (3) 
      -- CP-element group 229: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_cti_mispredict_count_696_Update/$exit
      -- CP-element group 229: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_cti_mispredict_count_696_Update/ack
      -- CP-element group 229: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_cti_mispredict_count_696_update_completed_
      -- 
    ack_978_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 229_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_cti_mispredict_count_696_inst_ack_1, ack => performance_counters_update_daemon_CP_392_elements(229)); -- 
    -- CP-element group 230:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 230: predecessors 
    -- CP-element group 230: 	152 
    -- CP-element group 230: 	208 
    -- CP-element group 230: marked-predecessors 
    -- CP-element group 230: 	232 
    -- CP-element group 230: successors 
    -- CP-element group 230: 	231 
    -- CP-element group 230:  members (3) 
      -- CP-element group 230: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_trap_count_699_sample_start_
      -- CP-element group 230: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_trap_count_699_Sample/$entry
      -- CP-element group 230: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_trap_count_699_Sample/req
      -- 
    req_986_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_986_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(230), ack => WPIPE_trap_count_699_inst_req_0); -- 
    performance_counters_update_daemon_cp_element_group_230: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 55) := "performance_counters_update_daemon_cp_element_group_230"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= performance_counters_update_daemon_CP_392_elements(152) & performance_counters_update_daemon_CP_392_elements(208) & performance_counters_update_daemon_CP_392_elements(232);
      gj_performance_counters_update_daemon_cp_element_group_230 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(230), clk => clk, reset => reset); --
    end block;
    -- CP-element group 231:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 231: predecessors 
    -- CP-element group 231: 	230 
    -- CP-element group 231: successors 
    -- CP-element group 231: 	232 
    -- CP-element group 231: marked-successors 
    -- CP-element group 231: 	148 
    -- CP-element group 231: 	204 
    -- CP-element group 231:  members (6) 
      -- CP-element group 231: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_trap_count_699_Update/$entry
      -- CP-element group 231: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_trap_count_699_Update/req
      -- CP-element group 231: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_trap_count_699_sample_completed_
      -- CP-element group 231: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_trap_count_699_update_start_
      -- CP-element group 231: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_trap_count_699_Sample/$exit
      -- CP-element group 231: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_trap_count_699_Sample/ack
      -- 
    ack_987_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 231_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_trap_count_699_inst_ack_0, ack => performance_counters_update_daemon_CP_392_elements(231)); -- 
    req_991_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_991_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(231), ack => WPIPE_trap_count_699_inst_req_1); -- 
    -- CP-element group 232:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 232: predecessors 
    -- CP-element group 232: 	231 
    -- CP-element group 232: successors 
    -- CP-element group 232: 	240 
    -- CP-element group 232: marked-successors 
    -- CP-element group 232: 	230 
    -- CP-element group 232:  members (3) 
      -- CP-element group 232: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_trap_count_699_Update/$exit
      -- CP-element group 232: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_trap_count_699_update_completed_
      -- CP-element group 232: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_trap_count_699_Update/ack
      -- 
    ack_992_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 232_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_trap_count_699_inst_ack_1, ack => performance_counters_update_daemon_CP_392_elements(232)); -- 
    -- CP-element group 233:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 233: predecessors 
    -- CP-element group 233: 	171 
    -- CP-element group 233: 	208 
    -- CP-element group 233: marked-predecessors 
    -- CP-element group 233: 	235 
    -- CP-element group 233: successors 
    -- CP-element group 233: 	234 
    -- CP-element group 233:  members (3) 
      -- CP-element group 233: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_icache_access_count_702_Sample/req
      -- CP-element group 233: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_icache_access_count_702_sample_start_
      -- CP-element group 233: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_icache_access_count_702_Sample/$entry
      -- 
    req_1000_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1000_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(233), ack => WPIPE_icache_access_count_702_inst_req_0); -- 
    performance_counters_update_daemon_cp_element_group_233: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 55) := "performance_counters_update_daemon_cp_element_group_233"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= performance_counters_update_daemon_CP_392_elements(171) & performance_counters_update_daemon_CP_392_elements(208) & performance_counters_update_daemon_CP_392_elements(235);
      gj_performance_counters_update_daemon_cp_element_group_233 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(233), clk => clk, reset => reset); --
    end block;
    -- CP-element group 234:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 234: predecessors 
    -- CP-element group 234: 	233 
    -- CP-element group 234: successors 
    -- CP-element group 234: 	235 
    -- CP-element group 234: marked-successors 
    -- CP-element group 234: 	167 
    -- CP-element group 234: 	204 
    -- CP-element group 234:  members (6) 
      -- CP-element group 234: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_icache_access_count_702_Update/req
      -- CP-element group 234: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_icache_access_count_702_Sample/ack
      -- CP-element group 234: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_icache_access_count_702_sample_completed_
      -- CP-element group 234: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_icache_access_count_702_Sample/$exit
      -- CP-element group 234: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_icache_access_count_702_Update/$entry
      -- CP-element group 234: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_icache_access_count_702_update_start_
      -- 
    ack_1001_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 234_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_icache_access_count_702_inst_ack_0, ack => performance_counters_update_daemon_CP_392_elements(234)); -- 
    req_1005_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1005_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(234), ack => WPIPE_icache_access_count_702_inst_req_1); -- 
    -- CP-element group 235:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 235: predecessors 
    -- CP-element group 235: 	234 
    -- CP-element group 235: successors 
    -- CP-element group 235: 	240 
    -- CP-element group 235: marked-successors 
    -- CP-element group 235: 	233 
    -- CP-element group 235:  members (3) 
      -- CP-element group 235: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_icache_access_count_702_Update/ack
      -- CP-element group 235: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_icache_access_count_702_update_completed_
      -- CP-element group 235: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_icache_access_count_702_Update/$exit
      -- 
    ack_1006_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 235_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_icache_access_count_702_inst_ack_1, ack => performance_counters_update_daemon_CP_392_elements(235)); -- 
    -- CP-element group 236:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 236: predecessors 
    -- CP-element group 236: 	190 
    -- CP-element group 236: 	208 
    -- CP-element group 236: marked-predecessors 
    -- CP-element group 236: 	238 
    -- CP-element group 236: successors 
    -- CP-element group 236: 	237 
    -- CP-element group 236:  members (3) 
      -- CP-element group 236: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_icache_miss_count_705_sample_start_
      -- CP-element group 236: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_icache_miss_count_705_Sample/$entry
      -- CP-element group 236: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_icache_miss_count_705_Sample/req
      -- 
    req_1014_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1014_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(236), ack => WPIPE_icache_miss_count_705_inst_req_0); -- 
    performance_counters_update_daemon_cp_element_group_236: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 55) := "performance_counters_update_daemon_cp_element_group_236"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= performance_counters_update_daemon_CP_392_elements(190) & performance_counters_update_daemon_CP_392_elements(208) & performance_counters_update_daemon_CP_392_elements(238);
      gj_performance_counters_update_daemon_cp_element_group_236 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(236), clk => clk, reset => reset); --
    end block;
    -- CP-element group 237:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 237: predecessors 
    -- CP-element group 237: 	236 
    -- CP-element group 237: successors 
    -- CP-element group 237: 	238 
    -- CP-element group 237: marked-successors 
    -- CP-element group 237: 	186 
    -- CP-element group 237: 	204 
    -- CP-element group 237:  members (6) 
      -- CP-element group 237: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_icache_miss_count_705_Update/$entry
      -- CP-element group 237: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_icache_miss_count_705_Update/req
      -- CP-element group 237: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_icache_miss_count_705_sample_completed_
      -- CP-element group 237: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_icache_miss_count_705_update_start_
      -- CP-element group 237: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_icache_miss_count_705_Sample/$exit
      -- CP-element group 237: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_icache_miss_count_705_Sample/ack
      -- 
    ack_1015_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 237_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_icache_miss_count_705_inst_ack_0, ack => performance_counters_update_daemon_CP_392_elements(237)); -- 
    req_1019_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1019_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => performance_counters_update_daemon_CP_392_elements(237), ack => WPIPE_icache_miss_count_705_inst_req_1); -- 
    -- CP-element group 238:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 238: predecessors 
    -- CP-element group 238: 	237 
    -- CP-element group 238: successors 
    -- CP-element group 238: 	240 
    -- CP-element group 238: marked-successors 
    -- CP-element group 238: 	236 
    -- CP-element group 238:  members (3) 
      -- CP-element group 238: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_icache_miss_count_705_Update/$exit
      -- CP-element group 238: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_icache_miss_count_705_Update/ack
      -- CP-element group 238: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/WPIPE_icache_miss_count_705_update_completed_
      -- 
    ack_1020_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 238_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_icache_miss_count_705_inst_ack_1, ack => performance_counters_update_daemon_CP_392_elements(238)); -- 
    -- CP-element group 239:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 239: predecessors 
    -- CP-element group 239: 	9 
    -- CP-element group 239: successors 
    -- CP-element group 239: 	10 
    -- CP-element group 239:  members (1) 
      -- CP-element group 239: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/loop_body_delay_to_condition_start
      -- 
    -- Element group performance_counters_update_daemon_CP_392_elements(239) is a control-delay.
    cp_element_239_delay: control_delay_element  generic map(name => " 239_delay", delay_value => 1)  port map(req => performance_counters_update_daemon_CP_392_elements(9), ack => performance_counters_update_daemon_CP_392_elements(239), clk => clk, reset =>reset);
    -- CP-element group 240:  join  transition  bypass  pipeline-parent 
    -- CP-element group 240: predecessors 
    -- CP-element group 240: 	217 
    -- CP-element group 240: 	12 
    -- CP-element group 240: 	220 
    -- CP-element group 240: 	235 
    -- CP-element group 240: 	226 
    -- CP-element group 240: 	229 
    -- CP-element group 240: 	223 
    -- CP-element group 240: 	232 
    -- CP-element group 240: 	214 
    -- CP-element group 240: 	211 
    -- CP-element group 240: 	238 
    -- CP-element group 240: successors 
    -- CP-element group 240: 	6 
    -- CP-element group 240:  members (1) 
      -- CP-element group 240: 	 branch_block_stmt_501/do_while_stmt_502/do_while_stmt_502_loop_body/$exit
      -- 
    performance_counters_update_daemon_cp_element_group_240: block -- 
      constant place_capacities: IntegerArray(0 to 10) := (0 => 7,1 => 7,2 => 7,3 => 7,4 => 7,5 => 7,6 => 7,7 => 7,8 => 7,9 => 7,10 => 7);
      constant place_markings: IntegerArray(0 to 10)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0);
      constant place_delays: IntegerArray(0 to 10) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0);
      constant joinName: string(1 to 55) := "performance_counters_update_daemon_cp_element_group_240"; 
      signal preds: BooleanArray(1 to 11); -- 
    begin -- 
      preds <= performance_counters_update_daemon_CP_392_elements(217) & performance_counters_update_daemon_CP_392_elements(12) & performance_counters_update_daemon_CP_392_elements(220) & performance_counters_update_daemon_CP_392_elements(235) & performance_counters_update_daemon_CP_392_elements(226) & performance_counters_update_daemon_CP_392_elements(229) & performance_counters_update_daemon_CP_392_elements(223) & performance_counters_update_daemon_CP_392_elements(232) & performance_counters_update_daemon_CP_392_elements(214) & performance_counters_update_daemon_CP_392_elements(211) & performance_counters_update_daemon_CP_392_elements(238);
      gj_performance_counters_update_daemon_cp_element_group_240 : generic_join generic map(name => joinName, number_of_predecessors => 11, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(240), clk => clk, reset => reset); --
    end block;
    -- CP-element group 241:  transition  input  bypass  pipeline-parent 
    -- CP-element group 241: predecessors 
    -- CP-element group 241: 	5 
    -- CP-element group 241: successors 
    -- CP-element group 241:  members (2) 
      -- CP-element group 241: 	 branch_block_stmt_501/do_while_stmt_502/loop_exit/$exit
      -- CP-element group 241: 	 branch_block_stmt_501/do_while_stmt_502/loop_exit/ack
      -- 
    ack_1025_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 241_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_502_branch_ack_0, ack => performance_counters_update_daemon_CP_392_elements(241)); -- 
    -- CP-element group 242:  transition  input  bypass  pipeline-parent 
    -- CP-element group 242: predecessors 
    -- CP-element group 242: 	5 
    -- CP-element group 242: successors 
    -- CP-element group 242:  members (2) 
      -- CP-element group 242: 	 branch_block_stmt_501/do_while_stmt_502/loop_taken/$exit
      -- CP-element group 242: 	 branch_block_stmt_501/do_while_stmt_502/loop_taken/ack
      -- 
    ack_1029_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 242_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_502_branch_ack_1, ack => performance_counters_update_daemon_CP_392_elements(242)); -- 
    -- CP-element group 243:  transition  bypass  pipeline-parent 
    -- CP-element group 243: predecessors 
    -- CP-element group 243: 	3 
    -- CP-element group 243: successors 
    -- CP-element group 243: 	1 
    -- CP-element group 243:  members (1) 
      -- CP-element group 243: 	 branch_block_stmt_501/do_while_stmt_502/$exit
      -- 
    performance_counters_update_daemon_CP_392_elements(243) <= performance_counters_update_daemon_CP_392_elements(3);
    performance_counters_update_daemon_do_while_stmt_502_terminator_1030: loop_terminator -- 
      generic map (name => " performance_counters_update_daemon_do_while_stmt_502_terminator_1030", max_iterations_in_flight =>7) 
      port map(loop_body_exit => performance_counters_update_daemon_CP_392_elements(6),loop_continue => performance_counters_update_daemon_CP_392_elements(242),loop_terminate => performance_counters_update_daemon_CP_392_elements(241),loop_back => performance_counters_update_daemon_CP_392_elements(4),loop_exit => performance_counters_update_daemon_CP_392_elements(3),clk => clk, reset => reset); -- 
    phi_stmt_504_phi_seq_466_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= performance_counters_update_daemon_CP_392_elements(22);
      performance_counters_update_daemon_CP_392_elements(27)<= src_sample_reqs(0);
      src_sample_acks(0)  <= performance_counters_update_daemon_CP_392_elements(29);
      performance_counters_update_daemon_CP_392_elements(28)<= src_update_reqs(0);
      src_update_acks(0)  <= performance_counters_update_daemon_CP_392_elements(30);
      performance_counters_update_daemon_CP_392_elements(23) <= phi_mux_reqs(0);
      triggers(1)  <= performance_counters_update_daemon_CP_392_elements(24);
      performance_counters_update_daemon_CP_392_elements(31)<= src_sample_reqs(1);
      src_sample_acks(1)  <= performance_counters_update_daemon_CP_392_elements(31);
      performance_counters_update_daemon_CP_392_elements(32)<= src_update_reqs(1);
      src_update_acks(1)  <= performance_counters_update_daemon_CP_392_elements(33);
      performance_counters_update_daemon_CP_392_elements(25) <= phi_mux_reqs(1);
      phi_stmt_504_phi_seq_466 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_504_phi_seq_466") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => performance_counters_update_daemon_CP_392_elements(18), 
          phi_sample_ack => performance_counters_update_daemon_CP_392_elements(19), 
          phi_update_req => performance_counters_update_daemon_CP_392_elements(20), 
          phi_update_ack => performance_counters_update_daemon_CP_392_elements(21), 
          phi_mux_ack => performance_counters_update_daemon_CP_392_elements(26), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_509_phi_seq_510_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= performance_counters_update_daemon_CP_392_elements(41);
      performance_counters_update_daemon_CP_392_elements(46)<= src_sample_reqs(0);
      src_sample_acks(0)  <= performance_counters_update_daemon_CP_392_elements(48);
      performance_counters_update_daemon_CP_392_elements(47)<= src_update_reqs(0);
      src_update_acks(0)  <= performance_counters_update_daemon_CP_392_elements(49);
      performance_counters_update_daemon_CP_392_elements(42) <= phi_mux_reqs(0);
      triggers(1)  <= performance_counters_update_daemon_CP_392_elements(43);
      performance_counters_update_daemon_CP_392_elements(50)<= src_sample_reqs(1);
      src_sample_acks(1)  <= performance_counters_update_daemon_CP_392_elements(50);
      performance_counters_update_daemon_CP_392_elements(51)<= src_update_reqs(1);
      src_update_acks(1)  <= performance_counters_update_daemon_CP_392_elements(52);
      performance_counters_update_daemon_CP_392_elements(44) <= phi_mux_reqs(1);
      phi_stmt_509_phi_seq_510 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_509_phi_seq_510") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => performance_counters_update_daemon_CP_392_elements(37), 
          phi_sample_ack => performance_counters_update_daemon_CP_392_elements(38), 
          phi_update_req => performance_counters_update_daemon_CP_392_elements(39), 
          phi_update_ack => performance_counters_update_daemon_CP_392_elements(40), 
          phi_mux_ack => performance_counters_update_daemon_CP_392_elements(45), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_514_phi_seq_554_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= performance_counters_update_daemon_CP_392_elements(60);
      performance_counters_update_daemon_CP_392_elements(65)<= src_sample_reqs(0);
      src_sample_acks(0)  <= performance_counters_update_daemon_CP_392_elements(67);
      performance_counters_update_daemon_CP_392_elements(66)<= src_update_reqs(0);
      src_update_acks(0)  <= performance_counters_update_daemon_CP_392_elements(68);
      performance_counters_update_daemon_CP_392_elements(61) <= phi_mux_reqs(0);
      triggers(1)  <= performance_counters_update_daemon_CP_392_elements(62);
      performance_counters_update_daemon_CP_392_elements(69)<= src_sample_reqs(1);
      src_sample_acks(1)  <= performance_counters_update_daemon_CP_392_elements(69);
      performance_counters_update_daemon_CP_392_elements(70)<= src_update_reqs(1);
      src_update_acks(1)  <= performance_counters_update_daemon_CP_392_elements(71);
      performance_counters_update_daemon_CP_392_elements(63) <= phi_mux_reqs(1);
      phi_stmt_514_phi_seq_554 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_514_phi_seq_554") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => performance_counters_update_daemon_CP_392_elements(56), 
          phi_sample_ack => performance_counters_update_daemon_CP_392_elements(57), 
          phi_update_req => performance_counters_update_daemon_CP_392_elements(58), 
          phi_update_ack => performance_counters_update_daemon_CP_392_elements(59), 
          phi_mux_ack => performance_counters_update_daemon_CP_392_elements(64), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_519_phi_seq_598_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= performance_counters_update_daemon_CP_392_elements(78);
      performance_counters_update_daemon_CP_392_elements(83)<= src_sample_reqs(0);
      src_sample_acks(0)  <= performance_counters_update_daemon_CP_392_elements(85);
      performance_counters_update_daemon_CP_392_elements(84)<= src_update_reqs(0);
      src_update_acks(0)  <= performance_counters_update_daemon_CP_392_elements(86);
      performance_counters_update_daemon_CP_392_elements(79) <= phi_mux_reqs(0);
      triggers(1)  <= performance_counters_update_daemon_CP_392_elements(80);
      performance_counters_update_daemon_CP_392_elements(87)<= src_sample_reqs(1);
      src_sample_acks(1)  <= performance_counters_update_daemon_CP_392_elements(87);
      performance_counters_update_daemon_CP_392_elements(88)<= src_update_reqs(1);
      src_update_acks(1)  <= performance_counters_update_daemon_CP_392_elements(89);
      performance_counters_update_daemon_CP_392_elements(81) <= phi_mux_reqs(1);
      phi_stmt_519_phi_seq_598 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_519_phi_seq_598") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => performance_counters_update_daemon_CP_392_elements(75), 
          phi_sample_ack => performance_counters_update_daemon_CP_392_elements(76), 
          phi_update_req => performance_counters_update_daemon_CP_392_elements(14), 
          phi_update_ack => performance_counters_update_daemon_CP_392_elements(77), 
          phi_mux_ack => performance_counters_update_daemon_CP_392_elements(82), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_524_phi_seq_642_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= performance_counters_update_daemon_CP_392_elements(97);
      performance_counters_update_daemon_CP_392_elements(102)<= src_sample_reqs(0);
      src_sample_acks(0)  <= performance_counters_update_daemon_CP_392_elements(104);
      performance_counters_update_daemon_CP_392_elements(103)<= src_update_reqs(0);
      src_update_acks(0)  <= performance_counters_update_daemon_CP_392_elements(105);
      performance_counters_update_daemon_CP_392_elements(98) <= phi_mux_reqs(0);
      triggers(1)  <= performance_counters_update_daemon_CP_392_elements(99);
      performance_counters_update_daemon_CP_392_elements(106)<= src_sample_reqs(1);
      src_sample_acks(1)  <= performance_counters_update_daemon_CP_392_elements(106);
      performance_counters_update_daemon_CP_392_elements(107)<= src_update_reqs(1);
      src_update_acks(1)  <= performance_counters_update_daemon_CP_392_elements(108);
      performance_counters_update_daemon_CP_392_elements(100) <= phi_mux_reqs(1);
      phi_stmt_524_phi_seq_642 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_524_phi_seq_642") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => performance_counters_update_daemon_CP_392_elements(93), 
          phi_sample_ack => performance_counters_update_daemon_CP_392_elements(94), 
          phi_update_req => performance_counters_update_daemon_CP_392_elements(95), 
          phi_update_ack => performance_counters_update_daemon_CP_392_elements(96), 
          phi_mux_ack => performance_counters_update_daemon_CP_392_elements(101), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_529_phi_seq_686_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= performance_counters_update_daemon_CP_392_elements(117);
      performance_counters_update_daemon_CP_392_elements(120)<= src_sample_reqs(0);
      src_sample_acks(0)  <= performance_counters_update_daemon_CP_392_elements(120);
      performance_counters_update_daemon_CP_392_elements(121)<= src_update_reqs(0);
      src_update_acks(0)  <= performance_counters_update_daemon_CP_392_elements(122);
      performance_counters_update_daemon_CP_392_elements(118) <= phi_mux_reqs(0);
      triggers(1)  <= performance_counters_update_daemon_CP_392_elements(115);
      performance_counters_update_daemon_CP_392_elements(124)<= src_sample_reqs(1);
      src_sample_acks(1)  <= performance_counters_update_daemon_CP_392_elements(126);
      performance_counters_update_daemon_CP_392_elements(125)<= src_update_reqs(1);
      src_update_acks(1)  <= performance_counters_update_daemon_CP_392_elements(127);
      performance_counters_update_daemon_CP_392_elements(116) <= phi_mux_reqs(1);
      phi_stmt_529_phi_seq_686 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_529_phi_seq_686") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => performance_counters_update_daemon_CP_392_elements(11), 
          phi_sample_ack => performance_counters_update_daemon_CP_392_elements(112), 
          phi_update_req => performance_counters_update_daemon_CP_392_elements(113), 
          phi_update_ack => performance_counters_update_daemon_CP_392_elements(114), 
          phi_mux_ack => performance_counters_update_daemon_CP_392_elements(119), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_534_phi_seq_730_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= performance_counters_update_daemon_CP_392_elements(134);
      performance_counters_update_daemon_CP_392_elements(139)<= src_sample_reqs(0);
      src_sample_acks(0)  <= performance_counters_update_daemon_CP_392_elements(141);
      performance_counters_update_daemon_CP_392_elements(140)<= src_update_reqs(0);
      src_update_acks(0)  <= performance_counters_update_daemon_CP_392_elements(142);
      performance_counters_update_daemon_CP_392_elements(135) <= phi_mux_reqs(0);
      triggers(1)  <= performance_counters_update_daemon_CP_392_elements(136);
      performance_counters_update_daemon_CP_392_elements(143)<= src_sample_reqs(1);
      src_sample_acks(1)  <= performance_counters_update_daemon_CP_392_elements(143);
      performance_counters_update_daemon_CP_392_elements(144)<= src_update_reqs(1);
      src_update_acks(1)  <= performance_counters_update_daemon_CP_392_elements(145);
      performance_counters_update_daemon_CP_392_elements(137) <= phi_mux_reqs(1);
      phi_stmt_534_phi_seq_730 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_534_phi_seq_730") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => performance_counters_update_daemon_CP_392_elements(130), 
          phi_sample_ack => performance_counters_update_daemon_CP_392_elements(131), 
          phi_update_req => performance_counters_update_daemon_CP_392_elements(132), 
          phi_update_ack => performance_counters_update_daemon_CP_392_elements(133), 
          phi_mux_ack => performance_counters_update_daemon_CP_392_elements(138), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_539_phi_seq_774_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= performance_counters_update_daemon_CP_392_elements(153);
      performance_counters_update_daemon_CP_392_elements(158)<= src_sample_reqs(0);
      src_sample_acks(0)  <= performance_counters_update_daemon_CP_392_elements(160);
      performance_counters_update_daemon_CP_392_elements(159)<= src_update_reqs(0);
      src_update_acks(0)  <= performance_counters_update_daemon_CP_392_elements(161);
      performance_counters_update_daemon_CP_392_elements(154) <= phi_mux_reqs(0);
      triggers(1)  <= performance_counters_update_daemon_CP_392_elements(155);
      performance_counters_update_daemon_CP_392_elements(162)<= src_sample_reqs(1);
      src_sample_acks(1)  <= performance_counters_update_daemon_CP_392_elements(162);
      performance_counters_update_daemon_CP_392_elements(163)<= src_update_reqs(1);
      src_update_acks(1)  <= performance_counters_update_daemon_CP_392_elements(164);
      performance_counters_update_daemon_CP_392_elements(156) <= phi_mux_reqs(1);
      phi_stmt_539_phi_seq_774 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_539_phi_seq_774") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => performance_counters_update_daemon_CP_392_elements(149), 
          phi_sample_ack => performance_counters_update_daemon_CP_392_elements(150), 
          phi_update_req => performance_counters_update_daemon_CP_392_elements(151), 
          phi_update_ack => performance_counters_update_daemon_CP_392_elements(152), 
          phi_mux_ack => performance_counters_update_daemon_CP_392_elements(157), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_544_phi_seq_818_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= performance_counters_update_daemon_CP_392_elements(174);
      performance_counters_update_daemon_CP_392_elements(177)<= src_sample_reqs(0);
      src_sample_acks(0)  <= performance_counters_update_daemon_CP_392_elements(177);
      performance_counters_update_daemon_CP_392_elements(178)<= src_update_reqs(0);
      src_update_acks(0)  <= performance_counters_update_daemon_CP_392_elements(179);
      performance_counters_update_daemon_CP_392_elements(175) <= phi_mux_reqs(0);
      triggers(1)  <= performance_counters_update_daemon_CP_392_elements(172);
      performance_counters_update_daemon_CP_392_elements(181)<= src_sample_reqs(1);
      src_sample_acks(1)  <= performance_counters_update_daemon_CP_392_elements(183);
      performance_counters_update_daemon_CP_392_elements(182)<= src_update_reqs(1);
      src_update_acks(1)  <= performance_counters_update_daemon_CP_392_elements(184);
      performance_counters_update_daemon_CP_392_elements(173) <= phi_mux_reqs(1);
      phi_stmt_544_phi_seq_818 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_544_phi_seq_818") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => performance_counters_update_daemon_CP_392_elements(168), 
          phi_sample_ack => performance_counters_update_daemon_CP_392_elements(169), 
          phi_update_req => performance_counters_update_daemon_CP_392_elements(170), 
          phi_update_ack => performance_counters_update_daemon_CP_392_elements(171), 
          phi_mux_ack => performance_counters_update_daemon_CP_392_elements(176), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_549_phi_seq_862_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= performance_counters_update_daemon_CP_392_elements(191);
      performance_counters_update_daemon_CP_392_elements(196)<= src_sample_reqs(0);
      src_sample_acks(0)  <= performance_counters_update_daemon_CP_392_elements(198);
      performance_counters_update_daemon_CP_392_elements(197)<= src_update_reqs(0);
      src_update_acks(0)  <= performance_counters_update_daemon_CP_392_elements(199);
      performance_counters_update_daemon_CP_392_elements(192) <= phi_mux_reqs(0);
      triggers(1)  <= performance_counters_update_daemon_CP_392_elements(193);
      performance_counters_update_daemon_CP_392_elements(200)<= src_sample_reqs(1);
      src_sample_acks(1)  <= performance_counters_update_daemon_CP_392_elements(200);
      performance_counters_update_daemon_CP_392_elements(201)<= src_update_reqs(1);
      src_update_acks(1)  <= performance_counters_update_daemon_CP_392_elements(202);
      performance_counters_update_daemon_CP_392_elements(194) <= phi_mux_reqs(1);
      phi_stmt_549_phi_seq_862 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_549_phi_seq_862") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => performance_counters_update_daemon_CP_392_elements(187), 
          phi_sample_ack => performance_counters_update_daemon_CP_392_elements(188), 
          phi_update_req => performance_counters_update_daemon_CP_392_elements(189), 
          phi_update_ack => performance_counters_update_daemon_CP_392_elements(190), 
          phi_mux_ack => performance_counters_update_daemon_CP_392_elements(195), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    entry_tmerge_417_block : block -- 
      signal preds : BooleanArray(0 to 1);
      begin -- 
        preds(0)  <= performance_counters_update_daemon_CP_392_elements(7);
        preds(1)  <= performance_counters_update_daemon_CP_392_elements(8);
        entry_tmerge_417 : transition_merge -- 
          generic map(name => " entry_tmerge_417")
          port map (preds => preds, symbol_out => performance_counters_update_daemon_CP_392_elements(9));
          -- 
    end block;
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal ADD_u64_u64_602_wire : std_logic_vector(63 downto 0);
    signal ADD_u64_u64_610_wire : std_logic_vector(63 downto 0);
    signal ADD_u64_u64_618_wire : std_logic_vector(63 downto 0);
    signal ADD_u64_u64_626_wire : std_logic_vector(63 downto 0);
    signal ADD_u64_u64_634_wire : std_logic_vector(63 downto 0);
    signal ADD_u64_u64_642_wire : std_logic_vector(63 downto 0);
    signal ADD_u64_u64_650_wire : std_logic_vector(63 downto 0);
    signal ADD_u64_u64_658_wire : std_logic_vector(63 downto 0);
    signal ADD_u64_u64_666_wire : std_logic_vector(63 downto 0);
    signal ADD_u64_u64_674_wire : std_logic_vector(63 downto 0);
    signal RPIPE_PERFORMANCE_COUNTER_UPDATE_556_wire : std_logic_vector(9 downto 0);
    signal cmc_534 : std_logic_vector(63 downto 0);
    signal eic_504 : std_logic_vector(63 downto 0);
    signal iac_544 : std_logic_vector(63 downto 0);
    signal icmc_585 : std_logic_vector(0 downto 0);
    signal ieic_561 : std_logic_vector(0 downto 0);
    signal iiac_593 : std_logic_vector(0 downto 0);
    signal iimc_597 : std_logic_vector(0 downto 0);
    signal ilc_569 : std_logic_vector(0 downto 0);
    signal ilmc_573 : std_logic_vector(0 downto 0);
    signal imc_549 : std_logic_vector(63 downto 0);
    signal isc_577 : std_logic_vector(0 downto 0);
    signal isic_565 : std_logic_vector(0 downto 0);
    signal ismc_581 : std_logic_vector(0 downto 0);
    signal itc_589 : std_logic_vector(0 downto 0);
    signal konst_601_wire_constant : std_logic_vector(63 downto 0);
    signal konst_609_wire_constant : std_logic_vector(63 downto 0);
    signal konst_617_wire_constant : std_logic_vector(63 downto 0);
    signal konst_625_wire_constant : std_logic_vector(63 downto 0);
    signal konst_633_wire_constant : std_logic_vector(63 downto 0);
    signal konst_641_wire_constant : std_logic_vector(63 downto 0);
    signal konst_649_wire_constant : std_logic_vector(63 downto 0);
    signal konst_657_wire_constant : std_logic_vector(63 downto 0);
    signal konst_665_wire_constant : std_logic_vector(63 downto 0);
    signal konst_673_wire_constant : std_logic_vector(63 downto 0);
    signal konst_709_wire_constant : std_logic_vector(0 downto 0);
    signal lc_514 : std_logic_vector(63 downto 0);
    signal lmc_519 : std_logic_vector(63 downto 0);
    signal n_cmc_653 : std_logic_vector(63 downto 0);
    signal n_cmc_653_536_buffered : std_logic_vector(63 downto 0);
    signal n_eic_605 : std_logic_vector(63 downto 0);
    signal n_eic_605_506_buffered : std_logic_vector(63 downto 0);
    signal n_iac_669 : std_logic_vector(63 downto 0);
    signal n_iac_669_548_buffered : std_logic_vector(63 downto 0);
    signal n_imc_677 : std_logic_vector(63 downto 0);
    signal n_imc_677_551_buffered : std_logic_vector(63 downto 0);
    signal n_lc_621 : std_logic_vector(63 downto 0);
    signal n_lc_621_516_buffered : std_logic_vector(63 downto 0);
    signal n_lmc_629 : std_logic_vector(63 downto 0);
    signal n_lmc_629_521_buffered : std_logic_vector(63 downto 0);
    signal n_sc_637 : std_logic_vector(63 downto 0);
    signal n_sc_637_526_buffered : std_logic_vector(63 downto 0);
    signal n_sic_613 : std_logic_vector(63 downto 0);
    signal n_sic_613_511_buffered : std_logic_vector(63 downto 0);
    signal n_smc_645 : std_logic_vector(63 downto 0);
    signal n_smc_645_533_buffered : std_logic_vector(63 downto 0);
    signal n_tc_661 : std_logic_vector(63 downto 0);
    signal n_tc_661_541_buffered : std_logic_vector(63 downto 0);
    signal sc_524 : std_logic_vector(63 downto 0);
    signal sic_509 : std_logic_vector(63 downto 0);
    signal smc_529 : std_logic_vector(63 downto 0);
    signal tc_539 : std_logic_vector(63 downto 0);
    signal type_cast_508_wire_constant : std_logic_vector(63 downto 0);
    signal type_cast_513_wire_constant : std_logic_vector(63 downto 0);
    signal type_cast_518_wire_constant : std_logic_vector(63 downto 0);
    signal type_cast_523_wire_constant : std_logic_vector(63 downto 0);
    signal type_cast_528_wire_constant : std_logic_vector(63 downto 0);
    signal type_cast_532_wire_constant : std_logic_vector(63 downto 0);
    signal type_cast_538_wire_constant : std_logic_vector(63 downto 0);
    signal type_cast_543_wire_constant : std_logic_vector(63 downto 0);
    signal type_cast_547_wire_constant : std_logic_vector(63 downto 0);
    signal type_cast_553_wire_constant : std_logic_vector(63 downto 0);
    signal update_sig_554 : std_logic_vector(9 downto 0);
    -- 
  begin -- 
    konst_601_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000001";
    konst_609_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000001";
    konst_617_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000001";
    konst_625_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000001";
    konst_633_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000001";
    konst_641_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000001";
    konst_649_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000001";
    konst_657_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000001";
    konst_665_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000001";
    konst_673_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000001";
    konst_709_wire_constant <= "1";
    type_cast_508_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000000";
    type_cast_513_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000000";
    type_cast_518_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000000";
    type_cast_523_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000000";
    type_cast_528_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000000";
    type_cast_532_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000000";
    type_cast_538_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000000";
    type_cast_543_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000000";
    type_cast_547_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000000";
    type_cast_553_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000000";
    phi_stmt_504: Block -- phi operator 
      signal idata: std_logic_vector(127 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= n_eic_605_506_buffered & type_cast_508_wire_constant;
      req <= phi_stmt_504_req_0 & phi_stmt_504_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_504",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 64) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_504_ack_0,
          idata => idata,
          odata => eic_504,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_504
    phi_stmt_509: Block -- phi operator 
      signal idata: std_logic_vector(127 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= n_sic_613_511_buffered & type_cast_513_wire_constant;
      req <= phi_stmt_509_req_0 & phi_stmt_509_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_509",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 64) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_509_ack_0,
          idata => idata,
          odata => sic_509,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_509
    phi_stmt_514: Block -- phi operator 
      signal idata: std_logic_vector(127 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= n_lc_621_516_buffered & type_cast_518_wire_constant;
      req <= phi_stmt_514_req_0 & phi_stmt_514_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_514",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 64) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_514_ack_0,
          idata => idata,
          odata => lc_514,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_514
    phi_stmt_519: Block -- phi operator 
      signal idata: std_logic_vector(127 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= n_lmc_629_521_buffered & type_cast_523_wire_constant;
      req <= phi_stmt_519_req_0 & phi_stmt_519_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_519",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 64) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_519_ack_0,
          idata => idata,
          odata => lmc_519,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_519
    phi_stmt_524: Block -- phi operator 
      signal idata: std_logic_vector(127 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= n_sc_637_526_buffered & type_cast_528_wire_constant;
      req <= phi_stmt_524_req_0 & phi_stmt_524_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_524",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 64) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_524_ack_0,
          idata => idata,
          odata => sc_524,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_524
    phi_stmt_529: Block -- phi operator 
      signal idata: std_logic_vector(127 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= type_cast_532_wire_constant & n_smc_645_533_buffered;
      req <= phi_stmt_529_req_0 & phi_stmt_529_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_529",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 64) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_529_ack_0,
          idata => idata,
          odata => smc_529,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_529
    phi_stmt_534: Block -- phi operator 
      signal idata: std_logic_vector(127 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= n_cmc_653_536_buffered & type_cast_538_wire_constant;
      req <= phi_stmt_534_req_0 & phi_stmt_534_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_534",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 64) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_534_ack_0,
          idata => idata,
          odata => cmc_534,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_534
    phi_stmt_539: Block -- phi operator 
      signal idata: std_logic_vector(127 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= n_tc_661_541_buffered & type_cast_543_wire_constant;
      req <= phi_stmt_539_req_0 & phi_stmt_539_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_539",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 64) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_539_ack_0,
          idata => idata,
          odata => tc_539,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_539
    phi_stmt_544: Block -- phi operator 
      signal idata: std_logic_vector(127 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= type_cast_547_wire_constant & n_iac_669_548_buffered;
      req <= phi_stmt_544_req_0 & phi_stmt_544_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_544",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 64) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_544_ack_0,
          idata => idata,
          odata => iac_544,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_544
    phi_stmt_549: Block -- phi operator 
      signal idata: std_logic_vector(127 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= n_imc_677_551_buffered & type_cast_553_wire_constant;
      req <= phi_stmt_549_req_0 & phi_stmt_549_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_549",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 64) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_549_ack_0,
          idata => idata,
          odata => imc_549,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_549
    -- flow-through select operator MUX_604_inst
    n_eic_605 <= ADD_u64_u64_602_wire when (ieic_561(0) /=  '0') else eic_504;
    -- flow-through select operator MUX_612_inst
    n_sic_613 <= ADD_u64_u64_610_wire when (isic_565(0) /=  '0') else sic_509;
    -- flow-through select operator MUX_620_inst
    n_lc_621 <= ADD_u64_u64_618_wire when (ilc_569(0) /=  '0') else lc_514;
    -- flow-through select operator MUX_628_inst
    n_lmc_629 <= ADD_u64_u64_626_wire when (ilmc_573(0) /=  '0') else lmc_519;
    -- flow-through select operator MUX_636_inst
    n_sc_637 <= ADD_u64_u64_634_wire when (isc_577(0) /=  '0') else sc_524;
    -- flow-through select operator MUX_644_inst
    n_smc_645 <= ADD_u64_u64_642_wire when (ismc_581(0) /=  '0') else smc_529;
    -- flow-through select operator MUX_652_inst
    n_cmc_653 <= ADD_u64_u64_650_wire when (icmc_585(0) /=  '0') else cmc_534;
    -- flow-through select operator MUX_660_inst
    n_tc_661 <= ADD_u64_u64_658_wire when (itc_589(0) /=  '0') else tc_539;
    -- flow-through select operator MUX_668_inst
    n_iac_669 <= ADD_u64_u64_666_wire when (iiac_593(0) /=  '0') else iac_544;
    -- flow-through select operator MUX_676_inst
    n_imc_677 <= ADD_u64_u64_674_wire when (iimc_597(0) /=  '0') else imc_549;
    -- flow-through slice operator slice_560_inst
    ieic_561 <= update_sig_554(9 downto 9);
    -- flow-through slice operator slice_564_inst
    isic_565 <= update_sig_554(8 downto 8);
    -- flow-through slice operator slice_568_inst
    ilc_569 <= update_sig_554(7 downto 7);
    -- flow-through slice operator slice_572_inst
    ilmc_573 <= update_sig_554(6 downto 6);
    -- flow-through slice operator slice_576_inst
    isc_577 <= update_sig_554(5 downto 5);
    -- flow-through slice operator slice_580_inst
    ismc_581 <= update_sig_554(4 downto 4);
    -- flow-through slice operator slice_584_inst
    icmc_585 <= update_sig_554(3 downto 3);
    -- flow-through slice operator slice_588_inst
    itc_589 <= update_sig_554(2 downto 2);
    -- flow-through slice operator slice_592_inst
    iiac_593 <= update_sig_554(1 downto 1);
    -- flow-through slice operator slice_596_inst
    iimc_597 <= update_sig_554(0 downto 0);
    n_cmc_653_536_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= n_cmc_653_536_buf_req_0;
      n_cmc_653_536_buf_ack_0<= wack(0);
      rreq(0) <= n_cmc_653_536_buf_req_1;
      n_cmc_653_536_buf_ack_1<= rack(0);
      n_cmc_653_536_buf : InterlockBuffer generic map ( -- 
        name => "n_cmc_653_536_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 64,
        out_data_width => 64,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => n_cmc_653,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => n_cmc_653_536_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    n_eic_605_506_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= n_eic_605_506_buf_req_0;
      n_eic_605_506_buf_ack_0<= wack(0);
      rreq(0) <= n_eic_605_506_buf_req_1;
      n_eic_605_506_buf_ack_1<= rack(0);
      n_eic_605_506_buf : InterlockBuffer generic map ( -- 
        name => "n_eic_605_506_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 64,
        out_data_width => 64,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => n_eic_605,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => n_eic_605_506_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    n_iac_669_548_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= n_iac_669_548_buf_req_0;
      n_iac_669_548_buf_ack_0<= wack(0);
      rreq(0) <= n_iac_669_548_buf_req_1;
      n_iac_669_548_buf_ack_1<= rack(0);
      n_iac_669_548_buf : InterlockBuffer generic map ( -- 
        name => "n_iac_669_548_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 64,
        out_data_width => 64,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => n_iac_669,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => n_iac_669_548_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    n_imc_677_551_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= n_imc_677_551_buf_req_0;
      n_imc_677_551_buf_ack_0<= wack(0);
      rreq(0) <= n_imc_677_551_buf_req_1;
      n_imc_677_551_buf_ack_1<= rack(0);
      n_imc_677_551_buf : InterlockBuffer generic map ( -- 
        name => "n_imc_677_551_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 64,
        out_data_width => 64,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => n_imc_677,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => n_imc_677_551_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    n_lc_621_516_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= n_lc_621_516_buf_req_0;
      n_lc_621_516_buf_ack_0<= wack(0);
      rreq(0) <= n_lc_621_516_buf_req_1;
      n_lc_621_516_buf_ack_1<= rack(0);
      n_lc_621_516_buf : InterlockBuffer generic map ( -- 
        name => "n_lc_621_516_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 64,
        out_data_width => 64,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => n_lc_621,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => n_lc_621_516_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    n_lmc_629_521_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= n_lmc_629_521_buf_req_0;
      n_lmc_629_521_buf_ack_0<= wack(0);
      rreq(0) <= n_lmc_629_521_buf_req_1;
      n_lmc_629_521_buf_ack_1<= rack(0);
      n_lmc_629_521_buf : InterlockBuffer generic map ( -- 
        name => "n_lmc_629_521_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 64,
        out_data_width => 64,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => n_lmc_629,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => n_lmc_629_521_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    n_sc_637_526_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= n_sc_637_526_buf_req_0;
      n_sc_637_526_buf_ack_0<= wack(0);
      rreq(0) <= n_sc_637_526_buf_req_1;
      n_sc_637_526_buf_ack_1<= rack(0);
      n_sc_637_526_buf : InterlockBuffer generic map ( -- 
        name => "n_sc_637_526_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 64,
        out_data_width => 64,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => n_sc_637,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => n_sc_637_526_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    n_sic_613_511_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= n_sic_613_511_buf_req_0;
      n_sic_613_511_buf_ack_0<= wack(0);
      rreq(0) <= n_sic_613_511_buf_req_1;
      n_sic_613_511_buf_ack_1<= rack(0);
      n_sic_613_511_buf : InterlockBuffer generic map ( -- 
        name => "n_sic_613_511_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 64,
        out_data_width => 64,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => n_sic_613,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => n_sic_613_511_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    n_smc_645_533_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= n_smc_645_533_buf_req_0;
      n_smc_645_533_buf_ack_0<= wack(0);
      rreq(0) <= n_smc_645_533_buf_req_1;
      n_smc_645_533_buf_ack_1<= rack(0);
      n_smc_645_533_buf : InterlockBuffer generic map ( -- 
        name => "n_smc_645_533_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 64,
        out_data_width => 64,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => n_smc_645,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => n_smc_645_533_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    n_tc_661_541_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= n_tc_661_541_buf_req_0;
      n_tc_661_541_buf_ack_0<= wack(0);
      rreq(0) <= n_tc_661_541_buf_req_1;
      n_tc_661_541_buf_ack_1<= rack(0);
      n_tc_661_541_buf : InterlockBuffer generic map ( -- 
        name => "n_tc_661_541_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 64,
        out_data_width => 64,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => n_tc_661,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => n_tc_661_541_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    -- interlock ssrc_phi_stmt_554
    process(RPIPE_PERFORMANCE_COUNTER_UPDATE_556_wire) -- 
      variable tmp_var : std_logic_vector(9 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 9 downto 0) := RPIPE_PERFORMANCE_COUNTER_UPDATE_556_wire(9 downto 0);
      update_sig_554 <= tmp_var; -- 
    end process;
    do_while_stmt_502_branch: Block -- 
      -- branch-block
      signal condition_sig : std_logic_vector(0 downto 0);
      begin 
      condition_sig <= konst_709_wire_constant;
      branch_instance: BranchBase -- 
        generic map( name => "do_while_stmt_502_branch", condition_width => 1,  bypass_flag => true)
        port map( -- 
          condition => condition_sig,
          req => do_while_stmt_502_branch_req_0,
          ack0 => do_while_stmt_502_branch_ack_0,
          ack1 => do_while_stmt_502_branch_ack_1,
          clk => clk,
          reset => reset); -- 
      --
    end Block; -- branch-block
    -- flow through binary operator ADD_u64_u64_602_inst
    ADD_u64_u64_602_wire <= std_logic_vector(unsigned(eic_504) + unsigned(konst_601_wire_constant));
    -- flow through binary operator ADD_u64_u64_610_inst
    ADD_u64_u64_610_wire <= std_logic_vector(unsigned(sic_509) + unsigned(konst_609_wire_constant));
    -- flow through binary operator ADD_u64_u64_618_inst
    ADD_u64_u64_618_wire <= std_logic_vector(unsigned(lc_514) + unsigned(konst_617_wire_constant));
    -- flow through binary operator ADD_u64_u64_626_inst
    ADD_u64_u64_626_wire <= std_logic_vector(unsigned(lmc_519) + unsigned(konst_625_wire_constant));
    -- flow through binary operator ADD_u64_u64_634_inst
    ADD_u64_u64_634_wire <= std_logic_vector(unsigned(sc_524) + unsigned(konst_633_wire_constant));
    -- flow through binary operator ADD_u64_u64_642_inst
    ADD_u64_u64_642_wire <= std_logic_vector(unsigned(smc_529) + unsigned(konst_641_wire_constant));
    -- flow through binary operator ADD_u64_u64_650_inst
    ADD_u64_u64_650_wire <= std_logic_vector(unsigned(cmc_534) + unsigned(konst_649_wire_constant));
    -- flow through binary operator ADD_u64_u64_658_inst
    ADD_u64_u64_658_wire <= std_logic_vector(unsigned(tc_539) + unsigned(konst_657_wire_constant));
    -- flow through binary operator ADD_u64_u64_666_inst
    ADD_u64_u64_666_wire <= std_logic_vector(unsigned(iac_544) + unsigned(konst_665_wire_constant));
    -- flow through binary operator ADD_u64_u64_674_inst
    ADD_u64_u64_674_wire <= std_logic_vector(unsigned(imc_549) + unsigned(konst_673_wire_constant));
    -- shared inport operator group (0) : RPIPE_PERFORMANCE_COUNTER_UPDATE_556_inst 
    InportGroup_0: Block -- 
      signal data_out: std_logic_vector(9 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_PERFORMANCE_COUNTER_UPDATE_556_inst_req_0;
      RPIPE_PERFORMANCE_COUNTER_UPDATE_556_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_PERFORMANCE_COUNTER_UPDATE_556_inst_req_1;
      RPIPE_PERFORMANCE_COUNTER_UPDATE_556_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      RPIPE_PERFORMANCE_COUNTER_UPDATE_556_wire <= data_out(9 downto 0);
      PERFORMANCE_COUNTER_UPDATE_read_0_gI: SplitGuardInterface generic map(name => "PERFORMANCE_COUNTER_UPDATE_read_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      PERFORMANCE_COUNTER_UPDATE_read_0: InputPortRevised -- 
        generic map ( name => "PERFORMANCE_COUNTER_UPDATE_read_0", data_width => 10,  num_reqs => 1,  output_buffering => outBUFs,   nonblocking_read_flag => False,  no_arbitration => false)
        port map (-- 
          sample_req => reqL , 
          sample_ack => ackL, 
          update_req => reqR, 
          update_ack => ackR, 
          data => data_out, 
          oreq => PERFORMANCE_COUNTER_UPDATE_pipe_read_req(0),
          oack => PERFORMANCE_COUNTER_UPDATE_pipe_read_ack(0),
          odata => PERFORMANCE_COUNTER_UPDATE_pipe_read_data(9 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 0
    -- shared outport operator group (0) : WPIPE_cti_mispredict_count_696_inst 
    OutportGroup_0: Block -- 
      signal data_in: std_logic_vector(63 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_cti_mispredict_count_696_inst_req_0;
      WPIPE_cti_mispredict_count_696_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_cti_mispredict_count_696_inst_req_1;
      WPIPE_cti_mispredict_count_696_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= n_cmc_653;
      cti_mispredict_count_write_0_gI: SplitGuardInterface generic map(name => "cti_mispredict_count_write_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      cti_mispredict_count_write_0: OutputPortRevised -- 
        generic map ( name => "cti_mispredict_count", data_width => 64, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => cti_mispredict_count_pipe_write_req(0),
          oack => cti_mispredict_count_pipe_write_ack(0),
          odata => cti_mispredict_count_pipe_write_data(63 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    -- shared outport operator group (1) : WPIPE_executed_instruction_count_678_inst 
    OutportGroup_1: Block -- 
      signal data_in: std_logic_vector(63 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_executed_instruction_count_678_inst_req_0;
      WPIPE_executed_instruction_count_678_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_executed_instruction_count_678_inst_req_1;
      WPIPE_executed_instruction_count_678_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= n_eic_605;
      executed_instruction_count_write_1_gI: SplitGuardInterface generic map(name => "executed_instruction_count_write_1_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      executed_instruction_count_write_1: OutputPortRevised -- 
        generic map ( name => "executed_instruction_count", data_width => 64, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => executed_instruction_count_pipe_write_req(0),
          oack => executed_instruction_count_pipe_write_ack(0),
          odata => executed_instruction_count_pipe_write_data(63 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 1
    -- shared outport operator group (2) : WPIPE_icache_access_count_702_inst 
    OutportGroup_2: Block -- 
      signal data_in: std_logic_vector(63 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_icache_access_count_702_inst_req_0;
      WPIPE_icache_access_count_702_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_icache_access_count_702_inst_req_1;
      WPIPE_icache_access_count_702_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= n_iac_669;
      icache_access_count_write_2_gI: SplitGuardInterface generic map(name => "icache_access_count_write_2_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      icache_access_count_write_2: OutputPortRevised -- 
        generic map ( name => "icache_access_count", data_width => 64, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => icache_access_count_pipe_write_req(0),
          oack => icache_access_count_pipe_write_ack(0),
          odata => icache_access_count_pipe_write_data(63 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 2
    -- shared outport operator group (3) : WPIPE_icache_miss_count_705_inst 
    OutportGroup_3: Block -- 
      signal data_in: std_logic_vector(63 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_icache_miss_count_705_inst_req_0;
      WPIPE_icache_miss_count_705_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_icache_miss_count_705_inst_req_1;
      WPIPE_icache_miss_count_705_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= n_imc_677;
      icache_miss_count_write_3_gI: SplitGuardInterface generic map(name => "icache_miss_count_write_3_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      icache_miss_count_write_3: OutputPortRevised -- 
        generic map ( name => "icache_miss_count", data_width => 64, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => icache_miss_count_pipe_write_req(0),
          oack => icache_miss_count_pipe_write_ack(0),
          odata => icache_miss_count_pipe_write_data(63 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 3
    -- shared outport operator group (4) : WPIPE_load_count_684_inst 
    OutportGroup_4: Block -- 
      signal data_in: std_logic_vector(63 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_load_count_684_inst_req_0;
      WPIPE_load_count_684_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_load_count_684_inst_req_1;
      WPIPE_load_count_684_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= n_lc_621;
      load_count_write_4_gI: SplitGuardInterface generic map(name => "load_count_write_4_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      load_count_write_4: OutputPortRevised -- 
        generic map ( name => "load_count", data_width => 64, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => load_count_pipe_write_req(0),
          oack => load_count_pipe_write_ack(0),
          odata => load_count_pipe_write_data(63 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 4
    -- shared outport operator group (5) : WPIPE_load_miss_count_687_inst 
    OutportGroup_5: Block -- 
      signal data_in: std_logic_vector(63 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_load_miss_count_687_inst_req_0;
      WPIPE_load_miss_count_687_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_load_miss_count_687_inst_req_1;
      WPIPE_load_miss_count_687_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= n_lmc_629;
      load_miss_count_write_5_gI: SplitGuardInterface generic map(name => "load_miss_count_write_5_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      load_miss_count_write_5: OutputPortRevised -- 
        generic map ( name => "load_miss_count", data_width => 64, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => load_miss_count_pipe_write_req(0),
          oack => load_miss_count_pipe_write_ack(0),
          odata => load_miss_count_pipe_write_data(63 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 5
    -- shared outport operator group (6) : WPIPE_skipped_instruction_count_681_inst 
    OutportGroup_6: Block -- 
      signal data_in: std_logic_vector(63 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_skipped_instruction_count_681_inst_req_0;
      WPIPE_skipped_instruction_count_681_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_skipped_instruction_count_681_inst_req_1;
      WPIPE_skipped_instruction_count_681_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= n_sic_613;
      skipped_instruction_count_write_6_gI: SplitGuardInterface generic map(name => "skipped_instruction_count_write_6_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      skipped_instruction_count_write_6: OutputPortRevised -- 
        generic map ( name => "skipped_instruction_count", data_width => 64, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => skipped_instruction_count_pipe_write_req(0),
          oack => skipped_instruction_count_pipe_write_ack(0),
          odata => skipped_instruction_count_pipe_write_data(63 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 6
    -- shared outport operator group (7) : WPIPE_store_count_690_inst 
    OutportGroup_7: Block -- 
      signal data_in: std_logic_vector(63 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_store_count_690_inst_req_0;
      WPIPE_store_count_690_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_store_count_690_inst_req_1;
      WPIPE_store_count_690_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= n_sc_637;
      store_count_write_7_gI: SplitGuardInterface generic map(name => "store_count_write_7_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      store_count_write_7: OutputPortRevised -- 
        generic map ( name => "store_count", data_width => 64, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => store_count_pipe_write_req(0),
          oack => store_count_pipe_write_ack(0),
          odata => store_count_pipe_write_data(63 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 7
    -- shared outport operator group (8) : WPIPE_store_miss_count_693_inst 
    OutportGroup_8: Block -- 
      signal data_in: std_logic_vector(63 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_store_miss_count_693_inst_req_0;
      WPIPE_store_miss_count_693_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_store_miss_count_693_inst_req_1;
      WPIPE_store_miss_count_693_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= n_smc_645;
      store_miss_count_write_8_gI: SplitGuardInterface generic map(name => "store_miss_count_write_8_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      store_miss_count_write_8: OutputPortRevised -- 
        generic map ( name => "store_miss_count", data_width => 64, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => store_miss_count_pipe_write_req(0),
          oack => store_miss_count_pipe_write_ack(0),
          odata => store_miss_count_pipe_write_data(63 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 8
    -- shared outport operator group (9) : WPIPE_trap_count_699_inst 
    OutportGroup_9: Block -- 
      signal data_in: std_logic_vector(63 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_trap_count_699_inst_req_0;
      WPIPE_trap_count_699_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_trap_count_699_inst_req_1;
      WPIPE_trap_count_699_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= n_tc_661;
      trap_count_write_9_gI: SplitGuardInterface generic map(name => "trap_count_write_9_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      trap_count_write_9: OutputPortRevised -- 
        generic map ( name => "trap_count", data_width => 64, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => trap_count_pipe_write_req(0),
          oack => trap_count_pipe_write_ack(0),
          odata => trap_count_pipe_write_data(63 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 9
    -- 
  end Block; -- data_path
  -- 
end performance_counters_update_daemon_arch;
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
use performance_counters_lib.afb_performance_counters_base_global_package.all;
entity afb_performance_counters_base is  -- system 
  port (-- 
    clk : in std_logic;
    reset : in std_logic;
    PERFORMANCE_COUNTER_ADDR_pipe_write_data: in std_logic_vector(7 downto 0);
    PERFORMANCE_COUNTER_ADDR_pipe_write_req : in std_logic_vector(0 downto 0);
    PERFORMANCE_COUNTER_ADDR_pipe_write_ack : out std_logic_vector(0 downto 0);
    PERFORMANCE_COUNTER_UPDATE_pipe_write_data: in std_logic_vector(9 downto 0);
    PERFORMANCE_COUNTER_UPDATE_pipe_write_req : in std_logic_vector(0 downto 0);
    PERFORMANCE_COUNTER_UPDATE_pipe_write_ack : out std_logic_vector(0 downto 0);
    PERFORMANCE_COUNTER_VALUE_pipe_read_data: out std_logic_vector(31 downto 0);
    PERFORMANCE_COUNTER_VALUE_pipe_read_req : in std_logic_vector(0 downto 0);
    PERFORMANCE_COUNTER_VALUE_pipe_read_ack : out std_logic_vector(0 downto 0)); -- 
  -- 
end entity; 
architecture afb_performance_counters_base_arch  of afb_performance_counters_base is -- system-architecture 
  -- interface signals to connect to memory space memory_space_1
  -- declarations related to module performance_counters_access_daemon
  component performance_counters_access_daemon is -- 
    generic (tag_length : integer); 
    port ( -- 
      PERFORMANCE_COUNTER_ADDR_pipe_read_req : out  std_logic_vector(0 downto 0);
      PERFORMANCE_COUNTER_ADDR_pipe_read_ack : in   std_logic_vector(0 downto 0);
      PERFORMANCE_COUNTER_ADDR_pipe_read_data : in   std_logic_vector(7 downto 0);
      cti_mispredict_count : in std_logic_vector(63 downto 0);
      executed_instruction_count : in std_logic_vector(63 downto 0);
      icache_access_count : in std_logic_vector(63 downto 0);
      icache_miss_count : in std_logic_vector(63 downto 0);
      load_count : in std_logic_vector(63 downto 0);
      load_miss_count : in std_logic_vector(63 downto 0);
      skipped_instruction_count : in std_logic_vector(63 downto 0);
      store_count : in std_logic_vector(63 downto 0);
      store_miss_count : in std_logic_vector(63 downto 0);
      trap_count : in std_logic_vector(63 downto 0);
      PERFORMANCE_COUNTER_VALUE_pipe_write_req : out  std_logic_vector(0 downto 0);
      PERFORMANCE_COUNTER_VALUE_pipe_write_ack : in   std_logic_vector(0 downto 0);
      PERFORMANCE_COUNTER_VALUE_pipe_write_data : out  std_logic_vector(31 downto 0);
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
  -- argument signals for module performance_counters_access_daemon
  signal performance_counters_access_daemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal performance_counters_access_daemon_tag_out   : std_logic_vector(1 downto 0);
  signal performance_counters_access_daemon_start_req : std_logic;
  signal performance_counters_access_daemon_start_ack : std_logic;
  signal performance_counters_access_daemon_fin_req   : std_logic;
  signal performance_counters_access_daemon_fin_ack : std_logic;
  -- declarations related to module performance_counters_update_daemon
  component performance_counters_update_daemon is -- 
    generic (tag_length : integer); 
    port ( -- 
      PERFORMANCE_COUNTER_UPDATE_pipe_read_req : out  std_logic_vector(0 downto 0);
      PERFORMANCE_COUNTER_UPDATE_pipe_read_ack : in   std_logic_vector(0 downto 0);
      PERFORMANCE_COUNTER_UPDATE_pipe_read_data : in   std_logic_vector(9 downto 0);
      cti_mispredict_count_pipe_write_req : out  std_logic_vector(0 downto 0);
      cti_mispredict_count_pipe_write_ack : in   std_logic_vector(0 downto 0);
      cti_mispredict_count_pipe_write_data : out  std_logic_vector(63 downto 0);
      executed_instruction_count_pipe_write_req : out  std_logic_vector(0 downto 0);
      executed_instruction_count_pipe_write_ack : in   std_logic_vector(0 downto 0);
      executed_instruction_count_pipe_write_data : out  std_logic_vector(63 downto 0);
      icache_access_count_pipe_write_req : out  std_logic_vector(0 downto 0);
      icache_access_count_pipe_write_ack : in   std_logic_vector(0 downto 0);
      icache_access_count_pipe_write_data : out  std_logic_vector(63 downto 0);
      icache_miss_count_pipe_write_req : out  std_logic_vector(0 downto 0);
      icache_miss_count_pipe_write_ack : in   std_logic_vector(0 downto 0);
      icache_miss_count_pipe_write_data : out  std_logic_vector(63 downto 0);
      load_count_pipe_write_req : out  std_logic_vector(0 downto 0);
      load_count_pipe_write_ack : in   std_logic_vector(0 downto 0);
      load_count_pipe_write_data : out  std_logic_vector(63 downto 0);
      load_miss_count_pipe_write_req : out  std_logic_vector(0 downto 0);
      load_miss_count_pipe_write_ack : in   std_logic_vector(0 downto 0);
      load_miss_count_pipe_write_data : out  std_logic_vector(63 downto 0);
      skipped_instruction_count_pipe_write_req : out  std_logic_vector(0 downto 0);
      skipped_instruction_count_pipe_write_ack : in   std_logic_vector(0 downto 0);
      skipped_instruction_count_pipe_write_data : out  std_logic_vector(63 downto 0);
      store_count_pipe_write_req : out  std_logic_vector(0 downto 0);
      store_count_pipe_write_ack : in   std_logic_vector(0 downto 0);
      store_count_pipe_write_data : out  std_logic_vector(63 downto 0);
      store_miss_count_pipe_write_req : out  std_logic_vector(0 downto 0);
      store_miss_count_pipe_write_ack : in   std_logic_vector(0 downto 0);
      store_miss_count_pipe_write_data : out  std_logic_vector(63 downto 0);
      trap_count_pipe_write_req : out  std_logic_vector(0 downto 0);
      trap_count_pipe_write_ack : in   std_logic_vector(0 downto 0);
      trap_count_pipe_write_data : out  std_logic_vector(63 downto 0);
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
  -- argument signals for module performance_counters_update_daemon
  signal performance_counters_update_daemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal performance_counters_update_daemon_tag_out   : std_logic_vector(1 downto 0);
  signal performance_counters_update_daemon_start_req : std_logic;
  signal performance_counters_update_daemon_start_ack : std_logic;
  signal performance_counters_update_daemon_fin_req   : std_logic;
  signal performance_counters_update_daemon_fin_ack : std_logic;
  -- aggregate signals for read from pipe PERFORMANCE_COUNTER_ADDR
  signal PERFORMANCE_COUNTER_ADDR_pipe_read_data: std_logic_vector(7 downto 0);
  signal PERFORMANCE_COUNTER_ADDR_pipe_read_req: std_logic_vector(0 downto 0);
  signal PERFORMANCE_COUNTER_ADDR_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe PERFORMANCE_COUNTER_UPDATE
  signal PERFORMANCE_COUNTER_UPDATE_pipe_read_data: std_logic_vector(9 downto 0);
  signal PERFORMANCE_COUNTER_UPDATE_pipe_read_req: std_logic_vector(0 downto 0);
  signal PERFORMANCE_COUNTER_UPDATE_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe PERFORMANCE_COUNTER_VALUE
  signal PERFORMANCE_COUNTER_VALUE_pipe_write_data: std_logic_vector(31 downto 0);
  signal PERFORMANCE_COUNTER_VALUE_pipe_write_req: std_logic_vector(0 downto 0);
  signal PERFORMANCE_COUNTER_VALUE_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe cti_mispredict_count
  signal cti_mispredict_count_pipe_write_data: std_logic_vector(63 downto 0);
  signal cti_mispredict_count_pipe_write_req: std_logic_vector(0 downto 0);
  signal cti_mispredict_count_pipe_write_ack: std_logic_vector(0 downto 0);
  -- signal decl. for read from internal signal pipe cti_mispredict_count
  signal cti_mispredict_count: std_logic_vector(63 downto 0);
  -- aggregate signals for write to pipe executed_instruction_count
  signal executed_instruction_count_pipe_write_data: std_logic_vector(63 downto 0);
  signal executed_instruction_count_pipe_write_req: std_logic_vector(0 downto 0);
  signal executed_instruction_count_pipe_write_ack: std_logic_vector(0 downto 0);
  -- signal decl. for read from internal signal pipe executed_instruction_count
  signal executed_instruction_count: std_logic_vector(63 downto 0);
  -- aggregate signals for write to pipe icache_access_count
  signal icache_access_count_pipe_write_data: std_logic_vector(63 downto 0);
  signal icache_access_count_pipe_write_req: std_logic_vector(0 downto 0);
  signal icache_access_count_pipe_write_ack: std_logic_vector(0 downto 0);
  -- signal decl. for read from internal signal pipe icache_access_count
  signal icache_access_count: std_logic_vector(63 downto 0);
  -- aggregate signals for write to pipe icache_miss_count
  signal icache_miss_count_pipe_write_data: std_logic_vector(63 downto 0);
  signal icache_miss_count_pipe_write_req: std_logic_vector(0 downto 0);
  signal icache_miss_count_pipe_write_ack: std_logic_vector(0 downto 0);
  -- signal decl. for read from internal signal pipe icache_miss_count
  signal icache_miss_count: std_logic_vector(63 downto 0);
  -- aggregate signals for write to pipe load_count
  signal load_count_pipe_write_data: std_logic_vector(63 downto 0);
  signal load_count_pipe_write_req: std_logic_vector(0 downto 0);
  signal load_count_pipe_write_ack: std_logic_vector(0 downto 0);
  -- signal decl. for read from internal signal pipe load_count
  signal load_count: std_logic_vector(63 downto 0);
  -- aggregate signals for write to pipe load_miss_count
  signal load_miss_count_pipe_write_data: std_logic_vector(63 downto 0);
  signal load_miss_count_pipe_write_req: std_logic_vector(0 downto 0);
  signal load_miss_count_pipe_write_ack: std_logic_vector(0 downto 0);
  -- signal decl. for read from internal signal pipe load_miss_count
  signal load_miss_count: std_logic_vector(63 downto 0);
  -- aggregate signals for write to pipe skipped_instruction_count
  signal skipped_instruction_count_pipe_write_data: std_logic_vector(63 downto 0);
  signal skipped_instruction_count_pipe_write_req: std_logic_vector(0 downto 0);
  signal skipped_instruction_count_pipe_write_ack: std_logic_vector(0 downto 0);
  -- signal decl. for read from internal signal pipe skipped_instruction_count
  signal skipped_instruction_count: std_logic_vector(63 downto 0);
  -- aggregate signals for write to pipe store_count
  signal store_count_pipe_write_data: std_logic_vector(63 downto 0);
  signal store_count_pipe_write_req: std_logic_vector(0 downto 0);
  signal store_count_pipe_write_ack: std_logic_vector(0 downto 0);
  -- signal decl. for read from internal signal pipe store_count
  signal store_count: std_logic_vector(63 downto 0);
  -- aggregate signals for write to pipe store_miss_count
  signal store_miss_count_pipe_write_data: std_logic_vector(63 downto 0);
  signal store_miss_count_pipe_write_req: std_logic_vector(0 downto 0);
  signal store_miss_count_pipe_write_ack: std_logic_vector(0 downto 0);
  -- signal decl. for read from internal signal pipe store_miss_count
  signal store_miss_count: std_logic_vector(63 downto 0);
  -- aggregate signals for write to pipe trap_count
  signal trap_count_pipe_write_data: std_logic_vector(63 downto 0);
  signal trap_count_pipe_write_req: std_logic_vector(0 downto 0);
  signal trap_count_pipe_write_ack: std_logic_vector(0 downto 0);
  -- signal decl. for read from internal signal pipe trap_count
  signal trap_count: std_logic_vector(63 downto 0);
  -- gated clock signal declarations.
  -- 
begin -- 
  -- module performance_counters_access_daemon
  performance_counters_access_daemon_instance:performance_counters_access_daemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => performance_counters_access_daemon_start_req,
      start_ack => performance_counters_access_daemon_start_ack,
      fin_req => performance_counters_access_daemon_fin_req,
      fin_ack => performance_counters_access_daemon_fin_ack,
      clk => clk,
      reset => reset,
      PERFORMANCE_COUNTER_ADDR_pipe_read_req => PERFORMANCE_COUNTER_ADDR_pipe_read_req(0 downto 0),
      PERFORMANCE_COUNTER_ADDR_pipe_read_ack => PERFORMANCE_COUNTER_ADDR_pipe_read_ack(0 downto 0),
      PERFORMANCE_COUNTER_ADDR_pipe_read_data => PERFORMANCE_COUNTER_ADDR_pipe_read_data(7 downto 0),
      cti_mispredict_count => cti_mispredict_count,
      executed_instruction_count => executed_instruction_count,
      icache_access_count => icache_access_count,
      icache_miss_count => icache_miss_count,
      load_count => load_count,
      load_miss_count => load_miss_count,
      skipped_instruction_count => skipped_instruction_count,
      store_count => store_count,
      store_miss_count => store_miss_count,
      trap_count => trap_count,
      PERFORMANCE_COUNTER_VALUE_pipe_write_req => PERFORMANCE_COUNTER_VALUE_pipe_write_req(0 downto 0),
      PERFORMANCE_COUNTER_VALUE_pipe_write_ack => PERFORMANCE_COUNTER_VALUE_pipe_write_ack(0 downto 0),
      PERFORMANCE_COUNTER_VALUE_pipe_write_data => PERFORMANCE_COUNTER_VALUE_pipe_write_data(31 downto 0),
      tag_in => performance_counters_access_daemon_tag_in,
      tag_out => performance_counters_access_daemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  performance_counters_access_daemon_tag_in <= (others => '0');
  performance_counters_access_daemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => performance_counters_access_daemon_start_req, start_ack => performance_counters_access_daemon_start_ack,  fin_req => performance_counters_access_daemon_fin_req,  fin_ack => performance_counters_access_daemon_fin_ack);
  -- module performance_counters_update_daemon
  performance_counters_update_daemon_instance:performance_counters_update_daemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => performance_counters_update_daemon_start_req,
      start_ack => performance_counters_update_daemon_start_ack,
      fin_req => performance_counters_update_daemon_fin_req,
      fin_ack => performance_counters_update_daemon_fin_ack,
      clk => clk,
      reset => reset,
      PERFORMANCE_COUNTER_UPDATE_pipe_read_req => PERFORMANCE_COUNTER_UPDATE_pipe_read_req(0 downto 0),
      PERFORMANCE_COUNTER_UPDATE_pipe_read_ack => PERFORMANCE_COUNTER_UPDATE_pipe_read_ack(0 downto 0),
      PERFORMANCE_COUNTER_UPDATE_pipe_read_data => PERFORMANCE_COUNTER_UPDATE_pipe_read_data(9 downto 0),
      cti_mispredict_count_pipe_write_req => cti_mispredict_count_pipe_write_req(0 downto 0),
      cti_mispredict_count_pipe_write_ack => cti_mispredict_count_pipe_write_ack(0 downto 0),
      cti_mispredict_count_pipe_write_data => cti_mispredict_count_pipe_write_data(63 downto 0),
      executed_instruction_count_pipe_write_req => executed_instruction_count_pipe_write_req(0 downto 0),
      executed_instruction_count_pipe_write_ack => executed_instruction_count_pipe_write_ack(0 downto 0),
      executed_instruction_count_pipe_write_data => executed_instruction_count_pipe_write_data(63 downto 0),
      icache_access_count_pipe_write_req => icache_access_count_pipe_write_req(0 downto 0),
      icache_access_count_pipe_write_ack => icache_access_count_pipe_write_ack(0 downto 0),
      icache_access_count_pipe_write_data => icache_access_count_pipe_write_data(63 downto 0),
      icache_miss_count_pipe_write_req => icache_miss_count_pipe_write_req(0 downto 0),
      icache_miss_count_pipe_write_ack => icache_miss_count_pipe_write_ack(0 downto 0),
      icache_miss_count_pipe_write_data => icache_miss_count_pipe_write_data(63 downto 0),
      load_count_pipe_write_req => load_count_pipe_write_req(0 downto 0),
      load_count_pipe_write_ack => load_count_pipe_write_ack(0 downto 0),
      load_count_pipe_write_data => load_count_pipe_write_data(63 downto 0),
      load_miss_count_pipe_write_req => load_miss_count_pipe_write_req(0 downto 0),
      load_miss_count_pipe_write_ack => load_miss_count_pipe_write_ack(0 downto 0),
      load_miss_count_pipe_write_data => load_miss_count_pipe_write_data(63 downto 0),
      skipped_instruction_count_pipe_write_req => skipped_instruction_count_pipe_write_req(0 downto 0),
      skipped_instruction_count_pipe_write_ack => skipped_instruction_count_pipe_write_ack(0 downto 0),
      skipped_instruction_count_pipe_write_data => skipped_instruction_count_pipe_write_data(63 downto 0),
      store_count_pipe_write_req => store_count_pipe_write_req(0 downto 0),
      store_count_pipe_write_ack => store_count_pipe_write_ack(0 downto 0),
      store_count_pipe_write_data => store_count_pipe_write_data(63 downto 0),
      store_miss_count_pipe_write_req => store_miss_count_pipe_write_req(0 downto 0),
      store_miss_count_pipe_write_ack => store_miss_count_pipe_write_ack(0 downto 0),
      store_miss_count_pipe_write_data => store_miss_count_pipe_write_data(63 downto 0),
      trap_count_pipe_write_req => trap_count_pipe_write_req(0 downto 0),
      trap_count_pipe_write_ack => trap_count_pipe_write_ack(0 downto 0),
      trap_count_pipe_write_data => trap_count_pipe_write_data(63 downto 0),
      tag_in => performance_counters_update_daemon_tag_in,
      tag_out => performance_counters_update_daemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  performance_counters_update_daemon_tag_in <= (others => '0');
  performance_counters_update_daemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => performance_counters_update_daemon_start_req, start_ack => performance_counters_update_daemon_start_ack,  fin_req => performance_counters_update_daemon_fin_req,  fin_ack => performance_counters_update_daemon_fin_ack);
  PERFORMANCE_COUNTER_ADDR_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe PERFORMANCE_COUNTER_ADDR",
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
      read_req => PERFORMANCE_COUNTER_ADDR_pipe_read_req,
      read_ack => PERFORMANCE_COUNTER_ADDR_pipe_read_ack,
      read_data => PERFORMANCE_COUNTER_ADDR_pipe_read_data,
      write_req => PERFORMANCE_COUNTER_ADDR_pipe_write_req,
      write_ack => PERFORMANCE_COUNTER_ADDR_pipe_write_ack,
      write_data => PERFORMANCE_COUNTER_ADDR_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  PERFORMANCE_COUNTER_UPDATE_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe PERFORMANCE_COUNTER_UPDATE",
      num_reads => 1,
      num_writes => 1,
      data_width => 10,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => PERFORMANCE_COUNTER_UPDATE_pipe_read_req,
      read_ack => PERFORMANCE_COUNTER_UPDATE_pipe_read_ack,
      read_data => PERFORMANCE_COUNTER_UPDATE_pipe_read_data,
      write_req => PERFORMANCE_COUNTER_UPDATE_pipe_write_req,
      write_ack => PERFORMANCE_COUNTER_UPDATE_pipe_write_ack,
      write_data => PERFORMANCE_COUNTER_UPDATE_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  PERFORMANCE_COUNTER_VALUE_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe PERFORMANCE_COUNTER_VALUE",
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
      read_req => PERFORMANCE_COUNTER_VALUE_pipe_read_req,
      read_ack => PERFORMANCE_COUNTER_VALUE_pipe_read_ack,
      read_data => PERFORMANCE_COUNTER_VALUE_pipe_read_data,
      write_req => PERFORMANCE_COUNTER_VALUE_pipe_write_req,
      write_ack => PERFORMANCE_COUNTER_VALUE_pipe_write_ack,
      write_data => PERFORMANCE_COUNTER_VALUE_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  cti_mispredict_count_Signal: SignalBase -- 
    generic map( -- 
      name => "pipe cti_mispredict_count",
      volatile_flag => false,
      num_writes => 1,
      data_width => 64 --
    ) 
    port map( -- 
      read_data => cti_mispredict_count,
      write_req => cti_mispredict_count_pipe_write_req,
      write_ack => cti_mispredict_count_pipe_write_ack,
      write_data => cti_mispredict_count_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  executed_instruction_count_Signal: SignalBase -- 
    generic map( -- 
      name => "pipe executed_instruction_count",
      volatile_flag => false,
      num_writes => 1,
      data_width => 64 --
    ) 
    port map( -- 
      read_data => executed_instruction_count,
      write_req => executed_instruction_count_pipe_write_req,
      write_ack => executed_instruction_count_pipe_write_ack,
      write_data => executed_instruction_count_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  icache_access_count_Signal: SignalBase -- 
    generic map( -- 
      name => "pipe icache_access_count",
      volatile_flag => false,
      num_writes => 1,
      data_width => 64 --
    ) 
    port map( -- 
      read_data => icache_access_count,
      write_req => icache_access_count_pipe_write_req,
      write_ack => icache_access_count_pipe_write_ack,
      write_data => icache_access_count_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  icache_miss_count_Signal: SignalBase -- 
    generic map( -- 
      name => "pipe icache_miss_count",
      volatile_flag => false,
      num_writes => 1,
      data_width => 64 --
    ) 
    port map( -- 
      read_data => icache_miss_count,
      write_req => icache_miss_count_pipe_write_req,
      write_ack => icache_miss_count_pipe_write_ack,
      write_data => icache_miss_count_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  load_count_Signal: SignalBase -- 
    generic map( -- 
      name => "pipe load_count",
      volatile_flag => false,
      num_writes => 1,
      data_width => 64 --
    ) 
    port map( -- 
      read_data => load_count,
      write_req => load_count_pipe_write_req,
      write_ack => load_count_pipe_write_ack,
      write_data => load_count_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  load_miss_count_Signal: SignalBase -- 
    generic map( -- 
      name => "pipe load_miss_count",
      volatile_flag => false,
      num_writes => 1,
      data_width => 64 --
    ) 
    port map( -- 
      read_data => load_miss_count,
      write_req => load_miss_count_pipe_write_req,
      write_ack => load_miss_count_pipe_write_ack,
      write_data => load_miss_count_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  skipped_instruction_count_Signal: SignalBase -- 
    generic map( -- 
      name => "pipe skipped_instruction_count",
      volatile_flag => false,
      num_writes => 1,
      data_width => 64 --
    ) 
    port map( -- 
      read_data => skipped_instruction_count,
      write_req => skipped_instruction_count_pipe_write_req,
      write_ack => skipped_instruction_count_pipe_write_ack,
      write_data => skipped_instruction_count_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  store_count_Signal: SignalBase -- 
    generic map( -- 
      name => "pipe store_count",
      volatile_flag => false,
      num_writes => 1,
      data_width => 64 --
    ) 
    port map( -- 
      read_data => store_count,
      write_req => store_count_pipe_write_req,
      write_ack => store_count_pipe_write_ack,
      write_data => store_count_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  store_miss_count_Signal: SignalBase -- 
    generic map( -- 
      name => "pipe store_miss_count",
      volatile_flag => false,
      num_writes => 1,
      data_width => 64 --
    ) 
    port map( -- 
      read_data => store_miss_count,
      write_req => store_miss_count_pipe_write_req,
      write_ack => store_miss_count_pipe_write_ack,
      write_data => store_miss_count_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  trap_count_Signal: SignalBase -- 
    generic map( -- 
      name => "pipe trap_count",
      volatile_flag => false,
      num_writes => 1,
      data_width => 64 --
    ) 
    port map( -- 
      read_data => trap_count,
      write_req => trap_count_pipe_write_req,
      write_ack => trap_count_pipe_write_ack,
      write_data => trap_count_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- gated clock generators 
  -- 
end afb_performance_counters_base_arch;
