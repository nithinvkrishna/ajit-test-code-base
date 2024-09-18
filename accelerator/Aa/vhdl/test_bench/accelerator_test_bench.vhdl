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
library GhdlLink;
use GhdlLink.Utility_Package.all;
use GhdlLink.Vhpi_Foreign.all;
entity accelerator_Test_Bench is -- 
  -- 
end entity;
architecture VhpiLink of accelerator_Test_Bench is -- 
  component accelerator is -- 
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
  end component;
  signal clk: std_logic := '0';
  signal reset: std_logic := '1';
  signal accelerator_control_daemon_tag_in: std_logic_vector(1 downto 0);
  signal accelerator_control_daemon_tag_out: std_logic_vector(1 downto 0);
  signal accelerator_control_daemon_start_req : std_logic := '0';
  signal accelerator_control_daemon_start_ack : std_logic := '0';
  signal accelerator_control_daemon_fin_req   : std_logic := '0';
  signal accelerator_control_daemon_fin_ack   : std_logic := '0';
  signal accelerator_interrupt_daemon_tag_in: std_logic_vector(1 downto 0);
  signal accelerator_interrupt_daemon_tag_out: std_logic_vector(1 downto 0);
  signal accelerator_interrupt_daemon_start_req : std_logic := '0';
  signal accelerator_interrupt_daemon_start_ack : std_logic := '0';
  signal accelerator_interrupt_daemon_fin_req   : std_logic := '0';
  signal accelerator_interrupt_daemon_fin_ack   : std_logic := '0';
  signal accelerator_worker_daemon_tag_in: std_logic_vector(1 downto 0);
  signal accelerator_worker_daemon_tag_out: std_logic_vector(1 downto 0);
  signal accelerator_worker_daemon_start_req : std_logic := '0';
  signal accelerator_worker_daemon_start_ack : std_logic := '0';
  signal accelerator_worker_daemon_fin_req   : std_logic := '0';
  signal accelerator_worker_daemon_fin_ack   : std_logic := '0';
  -- read from pipe ACB_ACCELERATOR_MEM_REQUEST
  signal ACB_ACCELERATOR_MEM_REQUEST_pipe_read_data: std_logic_vector(109 downto 0);
  signal ACB_ACCELERATOR_MEM_REQUEST_pipe_read_req : std_logic_vector(0 downto 0) := (others => '0');
  signal ACB_ACCELERATOR_MEM_REQUEST_pipe_read_ack : std_logic_vector(0 downto 0);
  -- write to pipe ACB_ACCELERATOR_MEM_RESPONSE
  signal ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_data: std_logic_vector(64 downto 0);
  signal ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_req : std_logic_vector(0 downto 0) := (others => '0');
  signal ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_ack : std_logic_vector(0 downto 0);
  -- read from pipe ACCELERATOR_INTERRUPT
  signal ACCELERATOR_INTERRUPT_pipe_read_data: std_logic_vector(0 downto 0);
  signal ACCELERATOR_INTERRUPT_pipe_read_req : std_logic_vector(0 downto 0) := (others => '0');
  signal ACCELERATOR_INTERRUPT_pipe_read_ack : std_logic_vector(0 downto 0);
  signal ACCELERATOR_INTERRUPT: std_logic_vector(0 downto 0);
  -- write to pipe AFB_ACCELERATOR_REQUEST
  signal AFB_ACCELERATOR_REQUEST_pipe_write_data: std_logic_vector(73 downto 0);
  signal AFB_ACCELERATOR_REQUEST_pipe_write_req : std_logic_vector(0 downto 0) := (others => '0');
  signal AFB_ACCELERATOR_REQUEST_pipe_write_ack : std_logic_vector(0 downto 0);
  -- read from pipe AFB_ACCELERATOR_RESPONSE
  signal AFB_ACCELERATOR_RESPONSE_pipe_read_data: std_logic_vector(32 downto 0);
  signal AFB_ACCELERATOR_RESPONSE_pipe_read_req : std_logic_vector(0 downto 0) := (others => '0');
  signal AFB_ACCELERATOR_RESPONSE_pipe_read_ack : std_logic_vector(0 downto 0);
  -- 
begin --
  -- clock/reset generation 
  clk <= not clk after 5 ns;
  -- assert reset for four clocks.
  process
  begin --
    Vhpi_Initialize;
    wait until clk = '1';
    wait until clk = '1';
    wait until clk = '1';
    wait until clk = '1';
    reset <= '0';
    while true loop --
      wait until clk = '0';
      Vhpi_Listen;
      Vhpi_Send;
      --
    end loop;
    wait;
    --
  end process;
  -- connect all the top-level modules to Vhpi
  process
  variable port_val_string, req_val_string, ack_val_string,  obj_ref: VhpiString;
  begin --
    wait until reset = '0';
    -- let the DUT come out of reset.... give it 4 cycles.
    wait until clk = '1';
    wait until clk = '1';
    wait until clk = '1';
    wait until clk = '1';
    while true loop -- 
      wait until clk = '0';
      wait for 1 ns; 
      obj_ref := Pack_String_To_Vhpi_String("ACB_ACCELERATOR_MEM_REQUEST req");
      Vhpi_Get_Port_Value(obj_ref,req_val_string,1);
      ACB_ACCELERATOR_MEM_REQUEST_pipe_read_req <= Unpack_String(req_val_string,1);
      wait until clk = '1';
      obj_ref := Pack_String_To_Vhpi_String("ACB_ACCELERATOR_MEM_REQUEST ack");
      ack_val_string := Pack_SLV_To_Vhpi_String(ACB_ACCELERATOR_MEM_REQUEST_pipe_read_ack);
      Vhpi_Set_Port_Value(obj_ref,ack_val_string,1);
      obj_ref := Pack_String_To_Vhpi_String("ACB_ACCELERATOR_MEM_REQUEST 0");
      port_val_string := Pack_SLV_To_Vhpi_String(ACB_ACCELERATOR_MEM_REQUEST_pipe_read_data);
      Vhpi_Set_Port_Value(obj_ref,port_val_string,110);
      -- 
    end loop;
    --
  end process;
  process
  variable port_val_string, req_val_string, ack_val_string,  obj_ref: VhpiString;
  begin --
    wait until reset = '0';
    -- let the DUT come out of reset.... give it 4 cycles.
    wait until clk = '1';
    wait until clk = '1';
    wait until clk = '1';
    wait until clk = '1';
    while true loop -- 
      wait until clk = '0';
      wait for 1 ns; 
      obj_ref := Pack_String_To_Vhpi_String("ACB_ACCELERATOR_MEM_RESPONSE req");
      Vhpi_Get_Port_Value(obj_ref,req_val_string,1);
      ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_req <= Unpack_String(req_val_string,1);
      obj_ref := Pack_String_To_Vhpi_String("ACB_ACCELERATOR_MEM_RESPONSE 0");
      Vhpi_Get_Port_Value(obj_ref,port_val_string,65);
      ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_data <= Unpack_String(port_val_string,65);
      wait until clk = '1';
      obj_ref := Pack_String_To_Vhpi_String("ACB_ACCELERATOR_MEM_RESPONSE ack");
      ack_val_string := Pack_SLV_To_Vhpi_String(ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_ack);
      Vhpi_Set_Port_Value(obj_ref,ack_val_string,1);
      -- 
    end loop;
    --
  end process;
  ACCELERATOR_INTERRUPT_pipe_read_ack(0) <= '1';
  TruncateOrPad(ACCELERATOR_INTERRUPT, ACCELERATOR_INTERRUPT_pipe_read_data);
  process
  variable port_val_string, req_val_string, ack_val_string,  obj_ref: VhpiString;
  begin --
    wait until reset = '0';
    -- let the DUT come out of reset.... give it 4 cycles.
    wait until clk = '1';
    wait until clk = '1';
    wait until clk = '1';
    wait until clk = '1';
    while true loop -- 
      wait until clk = '0';
      wait for 1 ns; 
      obj_ref := Pack_String_To_Vhpi_String("ACCELERATOR_INTERRUPT req");
      Vhpi_Get_Port_Value(obj_ref,req_val_string,1);
      ACCELERATOR_INTERRUPT_pipe_read_req <= Unpack_String(req_val_string,1);
      wait until clk = '1';
      obj_ref := Pack_String_To_Vhpi_String("ACCELERATOR_INTERRUPT ack");
      ack_val_string := Pack_SLV_To_Vhpi_String(ACCELERATOR_INTERRUPT_pipe_read_ack);
      Vhpi_Set_Port_Value(obj_ref,ack_val_string,1);
      obj_ref := Pack_String_To_Vhpi_String("ACCELERATOR_INTERRUPT 0");
      port_val_string := Pack_SLV_To_Vhpi_String(ACCELERATOR_INTERRUPT_pipe_read_data);
      Vhpi_Set_Port_Value(obj_ref,port_val_string,1);
      -- 
    end loop;
    --
  end process;
  process
  variable port_val_string, req_val_string, ack_val_string,  obj_ref: VhpiString;
  begin --
    wait until reset = '0';
    -- let the DUT come out of reset.... give it 4 cycles.
    wait until clk = '1';
    wait until clk = '1';
    wait until clk = '1';
    wait until clk = '1';
    while true loop -- 
      wait until clk = '0';
      wait for 1 ns; 
      obj_ref := Pack_String_To_Vhpi_String("AFB_ACCELERATOR_REQUEST req");
      Vhpi_Get_Port_Value(obj_ref,req_val_string,1);
      AFB_ACCELERATOR_REQUEST_pipe_write_req <= Unpack_String(req_val_string,1);
      obj_ref := Pack_String_To_Vhpi_String("AFB_ACCELERATOR_REQUEST 0");
      Vhpi_Get_Port_Value(obj_ref,port_val_string,74);
      AFB_ACCELERATOR_REQUEST_pipe_write_data <= Unpack_String(port_val_string,74);
      wait until clk = '1';
      obj_ref := Pack_String_To_Vhpi_String("AFB_ACCELERATOR_REQUEST ack");
      ack_val_string := Pack_SLV_To_Vhpi_String(AFB_ACCELERATOR_REQUEST_pipe_write_ack);
      Vhpi_Set_Port_Value(obj_ref,ack_val_string,1);
      -- 
    end loop;
    --
  end process;
  process
  variable port_val_string, req_val_string, ack_val_string,  obj_ref: VhpiString;
  begin --
    wait until reset = '0';
    -- let the DUT come out of reset.... give it 4 cycles.
    wait until clk = '1';
    wait until clk = '1';
    wait until clk = '1';
    wait until clk = '1';
    while true loop -- 
      wait until clk = '0';
      wait for 1 ns; 
      obj_ref := Pack_String_To_Vhpi_String("AFB_ACCELERATOR_RESPONSE req");
      Vhpi_Get_Port_Value(obj_ref,req_val_string,1);
      AFB_ACCELERATOR_RESPONSE_pipe_read_req <= Unpack_String(req_val_string,1);
      wait until clk = '1';
      obj_ref := Pack_String_To_Vhpi_String("AFB_ACCELERATOR_RESPONSE ack");
      ack_val_string := Pack_SLV_To_Vhpi_String(AFB_ACCELERATOR_RESPONSE_pipe_read_ack);
      Vhpi_Set_Port_Value(obj_ref,ack_val_string,1);
      obj_ref := Pack_String_To_Vhpi_String("AFB_ACCELERATOR_RESPONSE 0");
      port_val_string := Pack_SLV_To_Vhpi_String(AFB_ACCELERATOR_RESPONSE_pipe_read_data);
      Vhpi_Set_Port_Value(obj_ref,port_val_string,33);
      -- 
    end loop;
    --
  end process;
  accelerator_instance: accelerator -- 
    port map ( -- 
      clk => clk,
      reset => reset,
      ACB_ACCELERATOR_MEM_REQUEST_pipe_read_data  => ACB_ACCELERATOR_MEM_REQUEST_pipe_read_data, 
      ACB_ACCELERATOR_MEM_REQUEST_pipe_read_req  => ACB_ACCELERATOR_MEM_REQUEST_pipe_read_req, 
      ACB_ACCELERATOR_MEM_REQUEST_pipe_read_ack  => ACB_ACCELERATOR_MEM_REQUEST_pipe_read_ack ,
      ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_data  => ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_data, 
      ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_req  => ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_req, 
      ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_ack  => ACB_ACCELERATOR_MEM_RESPONSE_pipe_write_ack,
      ACCELERATOR_INTERRUPT => ACCELERATOR_INTERRUPT,
      AFB_ACCELERATOR_REQUEST_pipe_write_data  => AFB_ACCELERATOR_REQUEST_pipe_write_data, 
      AFB_ACCELERATOR_REQUEST_pipe_write_req  => AFB_ACCELERATOR_REQUEST_pipe_write_req, 
      AFB_ACCELERATOR_REQUEST_pipe_write_ack  => AFB_ACCELERATOR_REQUEST_pipe_write_ack,
      AFB_ACCELERATOR_RESPONSE_pipe_read_data  => AFB_ACCELERATOR_RESPONSE_pipe_read_data, 
      AFB_ACCELERATOR_RESPONSE_pipe_read_req  => AFB_ACCELERATOR_RESPONSE_pipe_read_req, 
      AFB_ACCELERATOR_RESPONSE_pipe_read_ack  => AFB_ACCELERATOR_RESPONSE_pipe_read_ack ); -- 
  -- 
end VhpiLink;
