
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
    -- aggregate signals for read from pipe AFB_ACCELERATOR_REQUEST
  signal AFB_ACCELERATOR_REQUEST_pipe_read_data: std_logic_vector(73 downto 0);
  signal AFB_ACCELERATOR_REQUEST_pipe_read_req: std_logic_vector(0 downto 0);
  signal AFB_ACCELERATOR_REQUEST_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe AFB_ACCELERATOR_RESPONSE
  signal AFB_ACCELERATOR_RESPONSE_pipe_write_data: std_logic_vector(32 downto 0);
  signal AFB_ACCELERATOR_RESPONSE_pipe_write_req: std_logic_vector(0 downto 0);
  signal AFB_ACCELERATOR_RESPONSE_pipe_write_ack: std_logic_vector(0 downto 0);
  
  begin -- 
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
    
 end accelerator_arch;
    
  
    
  
  

	

