-- VHDL global package produced by vc2vhdl from virtual circuit (vc) description 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
package mmu_mux_global_package is -- 
  constant default_mem_pool_base_address : std_logic_vector(0 downto 0) := "0";
  component mmu_mux is -- 
    port (-- 
      clk : in std_logic;
      reset : in std_logic;
      DCACHE_to_MMU_request_pipe_write_data: in std_logic_vector(119 downto 0);
      DCACHE_to_MMU_request_pipe_write_req : in std_logic_vector(0 downto 0);
      DCACHE_to_MMU_request_pipe_write_ack : out std_logic_vector(0 downto 0);
      ICACHE_to_MMU_request_pipe_write_data: in std_logic_vector(47 downto 0);
      ICACHE_to_MMU_request_pipe_write_req : in std_logic_vector(0 downto 0);
      ICACHE_to_MMU_request_pipe_write_ack : out std_logic_vector(0 downto 0);
      NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_read_data: out std_logic_vector(121 downto 0);
      NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_read_req : in std_logic_vector(0 downto 0);
      NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_read_ack : out std_logic_vector(0 downto 0)); -- 
    -- 
  end component;
  -- 
end package mmu_mux_global_package;
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
library AjitCustom;
use AjitCustom.AjitCustomComponents.all;
library munit_mmu_mux;
use munit_mmu_mux.mmu_mux_global_package.all;
entity constructDcacheMmuRequest_Volatile is -- 
  port ( -- 
    from_dcache : in  std_logic_vector(119 downto 0);
    to_mmu : out  std_logic_vector(121 downto 0)-- 
  );
  -- 
end entity constructDcacheMmuRequest_Volatile;
architecture constructDcacheMmuRequest_Volatile_arch of constructDcacheMmuRequest_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(120-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal from_dcache_buffer :  std_logic_vector(119 downto 0);
  -- output port buffer signals
  signal to_mmu_buffer :  std_logic_vector(121 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  from_dcache_buffer <= from_dcache;
  -- output handling  -------------------------------------------------------
  to_mmu <= to_mmu_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal CONCAT_u16_u56_109_wire : std_logic_vector(55 downto 0);
    signal CONCAT_u64_u65_113_wire : std_logic_vector(64 downto 0);
    signal CONCAT_u65_u66_116_wire : std_logic_vector(65 downto 0);
    signal CONCAT_u8_u16_105_wire : std_logic_vector(15 downto 0);
    signal CONCAT_u8_u40_108_wire : std_logic_vector(39 downto 0);
    signal addr_97 : std_logic_vector(31 downto 0);
    signal asi_85 : std_logic_vector(7 downto 0);
    signal byte_mask_89 : std_logic_vector(7 downto 0);
    signal request_type_93 : std_logic_vector(7 downto 0);
    signal type_cast_112_wire_constant : std_logic_vector(0 downto 0);
    signal type_cast_115_wire_constant : std_logic_vector(0 downto 0);
    signal write_data_101 : std_logic_vector(63 downto 0);
    -- 
  begin -- 
    type_cast_112_wire_constant <= "1";
    type_cast_115_wire_constant <= "1";
    -- flow-through slice operator slice_100_inst
    write_data_101 <= from_dcache_buffer(63 downto 0);
    -- flow-through slice operator slice_84_inst
    asi_85 <= from_dcache_buffer(119 downto 112);
    -- flow-through slice operator slice_88_inst
    byte_mask_89 <= from_dcache_buffer(111 downto 104);
    -- flow-through slice operator slice_92_inst
    request_type_93 <= from_dcache_buffer(103 downto 96);
    -- flow-through slice operator slice_96_inst
    addr_97 <= from_dcache_buffer(95 downto 64);
    -- flow through binary operator CONCAT_u16_u56_109_inst
    process(CONCAT_u8_u16_105_wire, CONCAT_u8_u40_108_wire) -- 
      variable tmp_var : std_logic_vector(55 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u8_u16_105_wire, CONCAT_u8_u40_108_wire, tmp_var);
      CONCAT_u16_u56_109_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u56_u122_117_inst
    process(CONCAT_u16_u56_109_wire, CONCAT_u65_u66_116_wire) -- 
      variable tmp_var : std_logic_vector(121 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u16_u56_109_wire, CONCAT_u65_u66_116_wire, tmp_var);
      to_mmu_buffer <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u64_u65_113_inst
    process(write_data_101) -- 
      variable tmp_var : std_logic_vector(64 downto 0); -- 
    begin -- 
      ApConcat_proc(write_data_101, type_cast_112_wire_constant, tmp_var);
      CONCAT_u64_u65_113_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u65_u66_116_inst
    process(CONCAT_u64_u65_113_wire) -- 
      variable tmp_var : std_logic_vector(65 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u64_u65_113_wire, type_cast_115_wire_constant, tmp_var);
      CONCAT_u65_u66_116_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u8_u16_105_inst
    process(asi_85, request_type_93) -- 
      variable tmp_var : std_logic_vector(15 downto 0); -- 
    begin -- 
      ApConcat_proc(asi_85, request_type_93, tmp_var);
      CONCAT_u8_u16_105_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u8_u40_108_inst
    process(byte_mask_89, addr_97) -- 
      variable tmp_var : std_logic_vector(39 downto 0); -- 
    begin -- 
      ApConcat_proc(byte_mask_89, addr_97, tmp_var);
      CONCAT_u8_u40_108_wire <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end constructDcacheMmuRequest_Volatile_arch;
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
library AjitCustom;
use AjitCustom.AjitCustomComponents.all;
library munit_mmu_mux;
use munit_mmu_mux.mmu_mux_global_package.all;
entity constructIcacheMmuRequest_Volatile is -- 
  port ( -- 
    from_icache : in  std_logic_vector(47 downto 0);
    to_mmu : out  std_logic_vector(121 downto 0)-- 
  );
  -- 
end entity constructIcacheMmuRequest_Volatile;
architecture constructIcacheMmuRequest_Volatile_arch of constructIcacheMmuRequest_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(48-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal from_icache_buffer :  std_logic_vector(47 downto 0);
  -- output port buffer signals
  signal to_mmu_buffer :  std_logic_vector(121 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  from_icache_buffer <= from_icache;
  -- output handling  -------------------------------------------------------
  to_mmu <= to_mmu_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal CONCAT_u16_u56_144_wire : std_logic_vector(55 downto 0);
    signal CONCAT_u65_u66_153_wire_constant : std_logic_vector(65 downto 0);
    signal CONCAT_u8_u16_138_wire : std_logic_vector(15 downto 0);
    signal CONCAT_u8_u40_143_wire : std_logic_vector(39 downto 0);
    signal NOT_u8_u8_141_wire_constant : std_logic_vector(7 downto 0);
    signal addr_134 : std_logic_vector(31 downto 0);
    signal asi_126 : std_logic_vector(7 downto 0);
    signal request_type_130 : std_logic_vector(7 downto 0);
    -- 
  begin -- 
    CONCAT_u65_u66_153_wire_constant <= "000000000000000000000000000000000000000000000000000000000000000001";
    NOT_u8_u8_141_wire_constant <= "11111111";
    -- flow-through slice operator slice_125_inst
    asi_126 <= from_icache_buffer(47 downto 40);
    -- flow-through slice operator slice_129_inst
    request_type_130 <= from_icache_buffer(39 downto 32);
    -- flow-through slice operator slice_133_inst
    addr_134 <= from_icache_buffer(31 downto 0);
    -- flow through binary operator CONCAT_u16_u56_144_inst
    process(CONCAT_u8_u16_138_wire, CONCAT_u8_u40_143_wire) -- 
      variable tmp_var : std_logic_vector(55 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u8_u16_138_wire, CONCAT_u8_u40_143_wire, tmp_var);
      CONCAT_u16_u56_144_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u56_u122_155_inst
    process(CONCAT_u16_u56_144_wire) -- 
      variable tmp_var : std_logic_vector(121 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u16_u56_144_wire, CONCAT_u65_u66_153_wire_constant, tmp_var);
      to_mmu_buffer <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u8_u16_138_inst
    process(asi_126, request_type_130) -- 
      variable tmp_var : std_logic_vector(15 downto 0); -- 
    begin -- 
      ApConcat_proc(asi_126, request_type_130, tmp_var);
      CONCAT_u8_u16_138_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u8_u40_143_inst
    process(NOT_u8_u8_141_wire_constant, addr_134) -- 
      variable tmp_var : std_logic_vector(39 downto 0); -- 
    begin -- 
      ApConcat_proc(NOT_u8_u8_141_wire_constant, addr_134, tmp_var);
      CONCAT_u8_u40_143_wire <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end constructIcacheMmuRequest_Volatile_arch;
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
library AjitCustom;
use AjitCustom.AjitCustomComponents.all;
library munit_mmu_mux;
use munit_mmu_mux.mmu_mux_global_package.all;
entity mmu_mux is  -- system 
  port (-- 
    clk : in std_logic;
    reset : in std_logic;
    DCACHE_to_MMU_request_pipe_write_data: in std_logic_vector(119 downto 0);
    DCACHE_to_MMU_request_pipe_write_req : in std_logic_vector(0 downto 0);
    DCACHE_to_MMU_request_pipe_write_ack : out std_logic_vector(0 downto 0);
    ICACHE_to_MMU_request_pipe_write_data: in std_logic_vector(47 downto 0);
    ICACHE_to_MMU_request_pipe_write_req : in std_logic_vector(0 downto 0);
    ICACHE_to_MMU_request_pipe_write_ack : out std_logic_vector(0 downto 0);
    NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_read_data: out std_logic_vector(121 downto 0);
    NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_read_req : in std_logic_vector(0 downto 0);
    NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_read_ack : out std_logic_vector(0 downto 0)); -- 
  -- 
end entity; 
architecture mmu_mux_arch  of mmu_mux is -- system-architecture 
  -- interface signals to connect to memory space memory_space_1
  -- declarations related to module constructDcacheMmuRequest
  -- declarations related to module constructIcacheMmuRequest
  -- declarations related to module mmuDcacheServiceDaemon
  -- argument signals for module mmuDcacheServiceDaemon
  signal mmuDcacheServiceDaemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal mmuDcacheServiceDaemon_tag_out   : std_logic_vector(1 downto 0);
  signal mmuDcacheServiceDaemon_start_req : std_logic;
  signal mmuDcacheServiceDaemon_start_ack : std_logic;
  signal mmuDcacheServiceDaemon_fin_req   : std_logic;
  signal mmuDcacheServiceDaemon_fin_ack : std_logic;
  -- declarations related to module mmuIcacheServiceDaemon
  -- argument signals for module mmuIcacheServiceDaemon
  signal mmuIcacheServiceDaemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal mmuIcacheServiceDaemon_tag_out   : std_logic_vector(1 downto 0);
  signal mmuIcacheServiceDaemon_start_req : std_logic;
  signal mmuIcacheServiceDaemon_start_ack : std_logic;
  signal mmuIcacheServiceDaemon_fin_req   : std_logic;
  signal mmuIcacheServiceDaemon_fin_ack : std_logic;
  -- declarations related to module mmuMuxDaemon
  -- argument signals for module mmuMuxDaemon
  signal mmuMuxDaemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal mmuMuxDaemon_tag_out   : std_logic_vector(1 downto 0);
  signal mmuMuxDaemon_start_req : std_logic;
  signal mmuMuxDaemon_start_ack : std_logic;
  signal mmuMuxDaemon_fin_req   : std_logic;
  signal mmuMuxDaemon_fin_ack : std_logic;
  -- aggregate signals for read from pipe DCACHE_to_MMU_request
  signal DCACHE_to_MMU_request_pipe_read_data: std_logic_vector(119 downto 0);
  signal DCACHE_to_MMU_request_pipe_read_req: std_logic_vector(0 downto 0);
  signal DCACHE_to_MMU_request_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe ICACHE_to_MMU_request
  signal ICACHE_to_MMU_request_pipe_read_data: std_logic_vector(47 downto 0);
  signal ICACHE_to_MMU_request_pipe_read_req: std_logic_vector(0 downto 0);
  signal ICACHE_to_MMU_request_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe NOBLOCK_CACHE_TO_MMU_REQUEST
  signal NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_write_data: std_logic_vector(121 downto 0);
  signal NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_write_req: std_logic_vector(0 downto 0);
  signal NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe NOBLOCK_DCACHE_TO_MMU_REQUEST
  signal NOBLOCK_DCACHE_TO_MMU_REQUEST_pipe_write_data: std_logic_vector(121 downto 0);
  signal NOBLOCK_DCACHE_TO_MMU_REQUEST_pipe_write_req: std_logic_vector(0 downto 0);
  signal NOBLOCK_DCACHE_TO_MMU_REQUEST_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe NOBLOCK_DCACHE_TO_MMU_REQUEST
  signal NOBLOCK_DCACHE_TO_MMU_REQUEST_pipe_read_data: std_logic_vector(121 downto 0);
  signal NOBLOCK_DCACHE_TO_MMU_REQUEST_pipe_read_req: std_logic_vector(0 downto 0);
  signal NOBLOCK_DCACHE_TO_MMU_REQUEST_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe NOBLOCK_ICACHE_TO_MMU_REQUEST
  signal NOBLOCK_ICACHE_TO_MMU_REQUEST_pipe_write_data: std_logic_vector(121 downto 0);
  signal NOBLOCK_ICACHE_TO_MMU_REQUEST_pipe_write_req: std_logic_vector(0 downto 0);
  signal NOBLOCK_ICACHE_TO_MMU_REQUEST_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe NOBLOCK_ICACHE_TO_MMU_REQUEST
  signal NOBLOCK_ICACHE_TO_MMU_REQUEST_pipe_read_data: std_logic_vector(121 downto 0);
  signal NOBLOCK_ICACHE_TO_MMU_REQUEST_pipe_read_req: std_logic_vector(0 downto 0);
  signal NOBLOCK_ICACHE_TO_MMU_REQUEST_pipe_read_ack: std_logic_vector(0 downto 0);
  -- gated clock signal declarations.
  -- 
begin -- 
  -- module mmuDcacheServiceDaemon
  mmuDcacheServiceDaemon_instance:mmuDcacheServiceDaemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => mmuDcacheServiceDaemon_start_req,
      start_ack => mmuDcacheServiceDaemon_start_ack,
      fin_req => mmuDcacheServiceDaemon_fin_req,
      fin_ack => mmuDcacheServiceDaemon_fin_ack,
      clk => clk,
      reset => reset,
      DCACHE_to_MMU_request_pipe_read_req => DCACHE_to_MMU_request_pipe_read_req(0 downto 0),
      DCACHE_to_MMU_request_pipe_read_ack => DCACHE_to_MMU_request_pipe_read_ack(0 downto 0),
      DCACHE_to_MMU_request_pipe_read_data => DCACHE_to_MMU_request_pipe_read_data(119 downto 0),
      NOBLOCK_DCACHE_TO_MMU_REQUEST_pipe_write_req => NOBLOCK_DCACHE_TO_MMU_REQUEST_pipe_write_req(0 downto 0),
      NOBLOCK_DCACHE_TO_MMU_REQUEST_pipe_write_ack => NOBLOCK_DCACHE_TO_MMU_REQUEST_pipe_write_ack(0 downto 0),
      NOBLOCK_DCACHE_TO_MMU_REQUEST_pipe_write_data => NOBLOCK_DCACHE_TO_MMU_REQUEST_pipe_write_data(121 downto 0),
      tag_in => mmuDcacheServiceDaemon_tag_in,
      tag_out => mmuDcacheServiceDaemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  mmuDcacheServiceDaemon_tag_in <= (others => '0');
  mmuDcacheServiceDaemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => mmuDcacheServiceDaemon_start_req, start_ack => mmuDcacheServiceDaemon_start_ack,  fin_req => mmuDcacheServiceDaemon_fin_req,  fin_ack => mmuDcacheServiceDaemon_fin_ack);
  -- module mmuIcacheServiceDaemon
  mmuIcacheServiceDaemon_instance:mmuIcacheServiceDaemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => mmuIcacheServiceDaemon_start_req,
      start_ack => mmuIcacheServiceDaemon_start_ack,
      fin_req => mmuIcacheServiceDaemon_fin_req,
      fin_ack => mmuIcacheServiceDaemon_fin_ack,
      clk => clk,
      reset => reset,
      ICACHE_to_MMU_request_pipe_read_req => ICACHE_to_MMU_request_pipe_read_req(0 downto 0),
      ICACHE_to_MMU_request_pipe_read_ack => ICACHE_to_MMU_request_pipe_read_ack(0 downto 0),
      ICACHE_to_MMU_request_pipe_read_data => ICACHE_to_MMU_request_pipe_read_data(47 downto 0),
      NOBLOCK_ICACHE_TO_MMU_REQUEST_pipe_write_req => NOBLOCK_ICACHE_TO_MMU_REQUEST_pipe_write_req(0 downto 0),
      NOBLOCK_ICACHE_TO_MMU_REQUEST_pipe_write_ack => NOBLOCK_ICACHE_TO_MMU_REQUEST_pipe_write_ack(0 downto 0),
      NOBLOCK_ICACHE_TO_MMU_REQUEST_pipe_write_data => NOBLOCK_ICACHE_TO_MMU_REQUEST_pipe_write_data(121 downto 0),
      tag_in => mmuIcacheServiceDaemon_tag_in,
      tag_out => mmuIcacheServiceDaemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  mmuIcacheServiceDaemon_tag_in <= (others => '0');
  mmuIcacheServiceDaemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => mmuIcacheServiceDaemon_start_req, start_ack => mmuIcacheServiceDaemon_start_ack,  fin_req => mmuIcacheServiceDaemon_fin_req,  fin_ack => mmuIcacheServiceDaemon_fin_ack);
  -- module mmuMuxDaemon
  mmuMuxDaemon_instance:mmuMuxDaemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => mmuMuxDaemon_start_req,
      start_ack => mmuMuxDaemon_start_ack,
      fin_req => mmuMuxDaemon_fin_req,
      fin_ack => mmuMuxDaemon_fin_ack,
      clk => clk,
      reset => reset,
      NOBLOCK_DCACHE_TO_MMU_REQUEST_pipe_read_req => NOBLOCK_DCACHE_TO_MMU_REQUEST_pipe_read_req(0 downto 0),
      NOBLOCK_DCACHE_TO_MMU_REQUEST_pipe_read_ack => NOBLOCK_DCACHE_TO_MMU_REQUEST_pipe_read_ack(0 downto 0),
      NOBLOCK_DCACHE_TO_MMU_REQUEST_pipe_read_data => NOBLOCK_DCACHE_TO_MMU_REQUEST_pipe_read_data(121 downto 0),
      NOBLOCK_ICACHE_TO_MMU_REQUEST_pipe_read_req => NOBLOCK_ICACHE_TO_MMU_REQUEST_pipe_read_req(0 downto 0),
      NOBLOCK_ICACHE_TO_MMU_REQUEST_pipe_read_ack => NOBLOCK_ICACHE_TO_MMU_REQUEST_pipe_read_ack(0 downto 0),
      NOBLOCK_ICACHE_TO_MMU_REQUEST_pipe_read_data => NOBLOCK_ICACHE_TO_MMU_REQUEST_pipe_read_data(121 downto 0),
      NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_write_req => NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_write_req(0 downto 0),
      NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_write_ack => NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_write_ack(0 downto 0),
      NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_write_data => NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_write_data(121 downto 0),
      tag_in => mmuMuxDaemon_tag_in,
      tag_out => mmuMuxDaemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  mmuMuxDaemon_tag_in <= (others => '0');
  mmuMuxDaemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => mmuMuxDaemon_start_req, start_ack => mmuMuxDaemon_start_ack,  fin_req => mmuMuxDaemon_fin_req,  fin_ack => mmuMuxDaemon_fin_ack);
  DCACHE_to_MMU_request_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe DCACHE_to_MMU_request",
      num_reads => 1,
      num_writes => 1,
      data_width => 120,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => DCACHE_to_MMU_request_pipe_read_req,
      read_ack => DCACHE_to_MMU_request_pipe_read_ack,
      read_data => DCACHE_to_MMU_request_pipe_read_data,
      write_req => DCACHE_to_MMU_request_pipe_write_req,
      write_ack => DCACHE_to_MMU_request_pipe_write_ack,
      write_data => DCACHE_to_MMU_request_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  ICACHE_to_MMU_request_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe ICACHE_to_MMU_request",
      num_reads => 1,
      num_writes => 1,
      data_width => 48,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => ICACHE_to_MMU_request_pipe_read_req,
      read_ack => ICACHE_to_MMU_request_pipe_read_ack,
      read_data => ICACHE_to_MMU_request_pipe_read_data,
      write_req => ICACHE_to_MMU_request_pipe_write_req,
      write_ack => ICACHE_to_MMU_request_pipe_write_ack,
      write_data => ICACHE_to_MMU_request_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  NOBLOCK_CACHE_TO_MMU_REQUEST_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe NOBLOCK_CACHE_TO_MMU_REQUEST",
      num_reads => 1,
      num_writes => 1,
      data_width => 122,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_read_req,
      read_ack => NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_read_ack,
      read_data => NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_read_data,
      write_req => NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_write_req,
      write_ack => NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_write_ack,
      write_data => NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  NOBLOCK_DCACHE_TO_MMU_REQUEST_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe NOBLOCK_DCACHE_TO_MMU_REQUEST",
      num_reads => 1,
      num_writes => 1,
      data_width => 122,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => NOBLOCK_DCACHE_TO_MMU_REQUEST_pipe_read_req,
      read_ack => NOBLOCK_DCACHE_TO_MMU_REQUEST_pipe_read_ack,
      read_data => NOBLOCK_DCACHE_TO_MMU_REQUEST_pipe_read_data,
      write_req => NOBLOCK_DCACHE_TO_MMU_REQUEST_pipe_write_req,
      write_ack => NOBLOCK_DCACHE_TO_MMU_REQUEST_pipe_write_ack,
      write_data => NOBLOCK_DCACHE_TO_MMU_REQUEST_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  NOBLOCK_ICACHE_TO_MMU_REQUEST_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe NOBLOCK_ICACHE_TO_MMU_REQUEST",
      num_reads => 1,
      num_writes => 1,
      data_width => 122,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => NOBLOCK_ICACHE_TO_MMU_REQUEST_pipe_read_req,
      read_ack => NOBLOCK_ICACHE_TO_MMU_REQUEST_pipe_read_ack,
      read_data => NOBLOCK_ICACHE_TO_MMU_REQUEST_pipe_read_data,
      write_req => NOBLOCK_ICACHE_TO_MMU_REQUEST_pipe_write_req,
      write_ack => NOBLOCK_ICACHE_TO_MMU_REQUEST_pipe_write_ack,
      write_data => NOBLOCK_ICACHE_TO_MMU_REQUEST_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- gated clock generators 
  -- 
end mmu_mux_arch;
