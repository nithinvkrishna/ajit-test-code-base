library ieee;
use ieee.std_logic_1164.all;
package afb_performance_counters_1x1_Type_Package is -- 
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
library performance_counters_lib;
use performance_counters_lib.afb_performance_counters_1x1_Type_Package.all;
--<<<<<
-->>>>>
library performance_counters_lib;
library performance_counters_lib;
--<<<<<
entity afb_performance_counters_1x1 is -- 
  port( -- 
    AFB_PERFORMANCE_COUNTER_REQUEST_pipe_write_data : in std_logic_vector(73 downto 0);
    AFB_PERFORMANCE_COUNTER_REQUEST_pipe_write_req  : in std_logic_vector(0  downto 0);
    AFB_PERFORMANCE_COUNTER_REQUEST_pipe_write_ack  : out std_logic_vector(0  downto 0);
    CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_write_data : in std_logic_vector(9 downto 0);
    CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_write_req  : in std_logic_vector(0  downto 0);
    CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_write_ack  : out std_logic_vector(0  downto 0);
    AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_read_data : out std_logic_vector(32 downto 0);
    AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_read_req  : in std_logic_vector(0  downto 0);
    AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_read_ack  : out std_logic_vector(0  downto 0);
    clk, reset: in std_logic 
    -- 
  );
  --
end entity afb_performance_counters_1x1;
architecture struct of afb_performance_counters_1x1 is -- 
  signal hsys_tie_low, hsys_tie_high: std_logic;
  signal PC_ADDR_0_0_pipe_write_data: std_logic_vector(7 downto 0);
  signal PC_ADDR_0_0_pipe_write_req : std_logic_vector(0  downto 0);
  signal PC_ADDR_0_0_pipe_write_ack : std_logic_vector(0  downto 0);
  signal PC_ADDR_0_0_pipe_read_data: std_logic_vector(7 downto 0);
  signal PC_ADDR_0_0_pipe_read_req : std_logic_vector(0  downto 0);
  signal PC_ADDR_0_0_pipe_read_ack : std_logic_vector(0  downto 0);
  signal PC_VALUE_0_0_pipe_write_data: std_logic_vector(31 downto 0);
  signal PC_VALUE_0_0_pipe_write_req : std_logic_vector(0  downto 0);
  signal PC_VALUE_0_0_pipe_write_ack : std_logic_vector(0  downto 0);
  signal PC_VALUE_0_0_pipe_read_data: std_logic_vector(31 downto 0);
  signal PC_VALUE_0_0_pipe_read_req : std_logic_vector(0  downto 0);
  signal PC_VALUE_0_0_pipe_read_ack : std_logic_vector(0  downto 0);
  component afb_performance_counters_base is -- 
    port( -- 
      PERFORMANCE_COUNTER_ADDR_pipe_write_data : in std_logic_vector(7 downto 0);
      PERFORMANCE_COUNTER_ADDR_pipe_write_req  : in std_logic_vector(0  downto 0);
      PERFORMANCE_COUNTER_ADDR_pipe_write_ack  : out std_logic_vector(0  downto 0);
      PERFORMANCE_COUNTER_UPDATE_pipe_write_data : in std_logic_vector(9 downto 0);
      PERFORMANCE_COUNTER_UPDATE_pipe_write_req  : in std_logic_vector(0  downto 0);
      PERFORMANCE_COUNTER_UPDATE_pipe_write_ack  : out std_logic_vector(0  downto 0);
      PERFORMANCE_COUNTER_VALUE_pipe_read_data : out std_logic_vector(31 downto 0);
      PERFORMANCE_COUNTER_VALUE_pipe_read_req  : in std_logic_vector(0  downto 0);
      PERFORMANCE_COUNTER_VALUE_pipe_read_ack  : out std_logic_vector(0  downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for base_0_0 :  afb_performance_counters_base -- 
    use entity performance_counters_lib.afb_performance_counters_base; -- 
  --<<<<<
  component afb_performance_counters_controller_1x1 is -- 
    port( -- 
      AFB_PERFORMANCE_COUNTER_REQUEST_pipe_write_data : in std_logic_vector(73 downto 0);
      AFB_PERFORMANCE_COUNTER_REQUEST_pipe_write_req  : in std_logic_vector(0  downto 0);
      AFB_PERFORMANCE_COUNTER_REQUEST_pipe_write_ack  : out std_logic_vector(0  downto 0);
      PC_VALUE_0_0_pipe_write_data : in std_logic_vector(31 downto 0);
      PC_VALUE_0_0_pipe_write_req  : in std_logic_vector(0  downto 0);
      PC_VALUE_0_0_pipe_write_ack  : out std_logic_vector(0  downto 0);
      AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_read_data : out std_logic_vector(32 downto 0);
      AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_read_req  : in std_logic_vector(0  downto 0);
      AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_read_ack  : out std_logic_vector(0  downto 0);
      PC_ADDR_0_0_pipe_read_data : out std_logic_vector(7 downto 0);
      PC_ADDR_0_0_pipe_read_req  : in std_logic_vector(0  downto 0);
      PC_ADDR_0_0_pipe_read_ack  : out std_logic_vector(0  downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for p_controller :  afb_performance_counters_controller_1x1 -- 
    use entity performance_counters_lib.afb_performance_counters_controller_1x1; -- 
  --<<<<<
  -- 
begin -- 
  hsys_tie_low  <= '0';
  hsys_tie_high <= '1';
  base_0_0: afb_performance_counters_base
  port map ( --
    PERFORMANCE_COUNTER_ADDR_pipe_write_data => PC_ADDR_0_0_pipe_read_data,
    PERFORMANCE_COUNTER_ADDR_pipe_write_req => PC_ADDR_0_0_pipe_read_ack,
    PERFORMANCE_COUNTER_ADDR_pipe_write_ack => PC_ADDR_0_0_pipe_read_req,
    PERFORMANCE_COUNTER_UPDATE_pipe_write_data => CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_write_data,
    PERFORMANCE_COUNTER_UPDATE_pipe_write_req => CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_write_req,
    PERFORMANCE_COUNTER_UPDATE_pipe_write_ack => CPU_to_PERFORMANCE_COUNTER_UPDATE_0_0_pipe_write_ack,
    PERFORMANCE_COUNTER_VALUE_pipe_read_data => PC_VALUE_0_0_pipe_write_data,
    PERFORMANCE_COUNTER_VALUE_pipe_read_req => PC_VALUE_0_0_pipe_write_ack,
    PERFORMANCE_COUNTER_VALUE_pipe_read_ack => PC_VALUE_0_0_pipe_write_req,
    clk => clk,  reset => reset
    ); -- 
  p_controller: afb_performance_counters_controller_1x1
  port map ( --
    AFB_PERFORMANCE_COUNTER_REQUEST_pipe_write_data => AFB_PERFORMANCE_COUNTER_REQUEST_pipe_write_data,
    AFB_PERFORMANCE_COUNTER_REQUEST_pipe_write_req => AFB_PERFORMANCE_COUNTER_REQUEST_pipe_write_req,
    AFB_PERFORMANCE_COUNTER_REQUEST_pipe_write_ack => AFB_PERFORMANCE_COUNTER_REQUEST_pipe_write_ack,
    AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_read_data => AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_read_data,
    AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_read_req => AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_read_req,
    AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_read_ack => AFB_PERFORMANCE_COUNTER_RESPONSE_pipe_read_ack,
    PC_ADDR_0_0_pipe_read_data => PC_ADDR_0_0_pipe_write_data,
    PC_ADDR_0_0_pipe_read_req => PC_ADDR_0_0_pipe_write_ack,
    PC_ADDR_0_0_pipe_read_ack => PC_ADDR_0_0_pipe_write_req,
    PC_VALUE_0_0_pipe_write_data => PC_VALUE_0_0_pipe_read_data,
    PC_VALUE_0_0_pipe_write_req => PC_VALUE_0_0_pipe_read_ack,
    PC_VALUE_0_0_pipe_write_ack => PC_VALUE_0_0_pipe_read_req,
    clk => clk,  reset => reset
    ); -- 
  PC_ADDR_0_0_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe PC_ADDR_0_0",
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
      read_req => PC_ADDR_0_0_pipe_read_req,
      read_ack => PC_ADDR_0_0_pipe_read_ack,
      read_data => PC_ADDR_0_0_pipe_read_data,
      write_req => PC_ADDR_0_0_pipe_write_req,
      write_ack => PC_ADDR_0_0_pipe_write_ack,
      write_data => PC_ADDR_0_0_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  PC_VALUE_0_0_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe PC_VALUE_0_0",
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
      read_req => PC_VALUE_0_0_pipe_read_req,
      read_ack => PC_VALUE_0_0_pipe_read_ack,
      read_data => PC_VALUE_0_0_pipe_read_data,
      write_req => PC_VALUE_0_0_pipe_write_req,
      write_ack => PC_VALUE_0_0_pipe_write_ack,
      write_data => PC_VALUE_0_0_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- 
end struct;
