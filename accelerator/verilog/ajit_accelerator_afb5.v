
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
    
   
    assign ACCELERATOR_INTERRUPT = 1'b0;
  
    
  
  
endmodule
	

