-- VHDL global package produced by vc2vhdl from virtual circuit (vc) description 
library ieee;
use ieee.std_logic_1164.all;
package axi_acb_core_global_package is -- 
  constant WRITEOK : std_logic_vector(1 downto 0) := "00";
  component axi_acb_core is -- 
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
  end component;
  -- 
end package axi_acb_core_global_package;
