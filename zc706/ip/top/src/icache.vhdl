-- VHDL global package produced by vc2vhdl from virtual circuit (vc) description 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
package icache_global_package is -- 
  constant ASI_AJIT_BRIDGE_CONFIG : std_logic_vector(7 downto 0) := "00110000";
  constant ASI_BLOCK_COPY : std_logic_vector(7 downto 0) := "00010111";
  constant ASI_BLOCK_FILL : std_logic_vector(7 downto 0) := "00011111";
  constant ASI_CACHE_DATA_I : std_logic_vector(7 downto 0) := "00001101";
  constant ASI_CACHE_DATA_I_D : std_logic_vector(7 downto 0) := "00001111";
  constant ASI_CACHE_TAG_I : std_logic_vector(7 downto 0) := "00001100";
  constant ASI_CACHE_TAG_I_D : std_logic_vector(7 downto 0) := "00001110";
  constant ASI_FLUSH_I_CONTEXT : std_logic_vector(7 downto 0) := "00011011";
  constant ASI_FLUSH_I_D_CONTEXT : std_logic_vector(7 downto 0) := "00010011";
  constant ASI_FLUSH_I_D_PAGE : std_logic_vector(7 downto 0) := "00010000";
  constant ASI_FLUSH_I_D_REGION : std_logic_vector(7 downto 0) := "00010010";
  constant ASI_FLUSH_I_D_SEGMENT : std_logic_vector(7 downto 0) := "00010001";
  constant ASI_FLUSH_I_D_USER : std_logic_vector(7 downto 0) := "00010100";
  constant ASI_FLUSH_I_PAGE : std_logic_vector(7 downto 0) := "00011000";
  constant ASI_FLUSH_I_REGION : std_logic_vector(7 downto 0) := "00011010";
  constant ASI_FLUSH_I_SEGMENT : std_logic_vector(7 downto 0) := "00011001";
  constant ASI_FLUSH_I_USER : std_logic_vector(7 downto 0) := "00011100";
  constant ASI_MMU_DIAGNOSTIC_I : std_logic_vector(7 downto 0) := "00000101";
  constant ASI_MMU_DIAGNOSTIC_IO : std_logic_vector(7 downto 0) := "00000111";
  constant ASI_MMU_DIAGNOSTIC_I_D : std_logic_vector(7 downto 0) := "00000110";
  constant ASI_MMU_FLUSH_PROBE : std_logic_vector(7 downto 0) := "00000011";
  constant ASI_MMU_REGISTER : std_logic_vector(7 downto 0) := "00000100";
  constant ASI_SUPERVISOR_DATA : std_logic_vector(7 downto 0) := "00001011";
  constant ASI_SUPERVISOR_INSTRUCTION : std_logic_vector(7 downto 0) := "00001001";
  constant ASI_USER_DATA : std_logic_vector(7 downto 0) := "00001010";
  constant ASI_USER_INSTRUCTION : std_logic_vector(7 downto 0) := "00001000";
  constant CACHE_ARRAY_NOP : std_logic_vector(2 downto 0) := "011";
  constant CACHE_ARRAY_PASS_THROUGH : std_logic_vector(2 downto 0) := "100";
  constant CACHE_ARRAY_READ_DWORD : std_logic_vector(2 downto 0) := "001";
  constant CACHE_ARRAY_WRITE_DWORD : std_logic_vector(2 downto 0) := "010";
  constant CACHE_TAG_CLEAR_ALL : std_logic_vector(2 downto 0) := "100";
  constant CACHE_TAG_CLEAR_LINE : std_logic_vector(2 downto 0) := "011";
  constant CACHE_TAG_INSERT : std_logic_vector(2 downto 0) := "010";
  constant CACHE_TAG_LOOKUP : std_logic_vector(2 downto 0) := "001";
  constant CACHE_TAG_NOP : std_logic_vector(2 downto 0) := "101";
  constant DEBUG_MODE_MASK : std_logic_vector(7 downto 0) := "00000010";
  constant FOUR_3 : std_logic_vector(2 downto 0) := "100";
  constant GDB_DBG_CONNECT : std_logic_vector(7 downto 0) := "00001110";
  constant GDB_DBG_CONTINUE : std_logic_vector(7 downto 0) := "00010000";
  constant GDB_DBG_DETACH : std_logic_vector(7 downto 0) := "00001111";
  constant GDB_DBG_KILL : std_logic_vector(7 downto 0) := "00010011";
  constant GDB_DBG_READ_CONTROL_REG : std_logic_vector(7 downto 0) := "00001101";
  constant GDB_DBG_READ_CPUNIT_REG : std_logic_vector(7 downto 0) := "00010001";
  constant GDB_DBG_READ_FPUNIT_REG : std_logic_vector(7 downto 0) := "00000011";
  constant GDB_DBG_READ_INIT_NPC : std_logic_vector(7 downto 0) := "00011101";
  constant GDB_DBG_READ_INIT_PC : std_logic_vector(7 downto 0) := "00011100";
  constant GDB_DBG_READ_INIT_PSR : std_logic_vector(7 downto 0) := "00011110";
  constant GDB_DBG_READ_IUNIT_REG : std_logic_vector(7 downto 0) := "00000001";
  constant GDB_DBG_READ_MEM : std_logic_vector(7 downto 0) := "00000110";
  constant GDB_DBG_READ_MODE : std_logic_vector(7 downto 0) := "00011111";
  constant GDB_DBG_REMOVE_BREAK_POINT : std_logic_vector(7 downto 0) := "00001001";
  constant GDB_DBG_REMOVE_WATCH_POINT : std_logic_vector(7 downto 0) := "00001011";
  constant GDB_DBG_SET_BREAK_POINT : std_logic_vector(7 downto 0) := "00001000";
  constant GDB_DBG_SET_WATCH_POINT : std_logic_vector(7 downto 0) := "00001010";
  constant GDB_DBG_WRITE_CONTROL_REG : std_logic_vector(7 downto 0) := "00010100";
  constant GDB_DBG_WRITE_CPUNIT_REG : std_logic_vector(7 downto 0) := "00010010";
  constant GDB_DBG_WRITE_FPUNIT_REG : std_logic_vector(7 downto 0) := "00000100";
  constant GDB_DBG_WRITE_INIT_NPC : std_logic_vector(7 downto 0) := "00011010";
  constant GDB_DBG_WRITE_INIT_PC : std_logic_vector(7 downto 0) := "00011001";
  constant GDB_DBG_WRITE_INIT_PSR : std_logic_vector(7 downto 0) := "00011011";
  constant GDB_DBG_WRITE_IUNIT_REG : std_logic_vector(7 downto 0) := "00000010";
  constant GDB_DBG_WRITE_MEM : std_logic_vector(7 downto 0) := "00000111";
  constant GDB_DBG_WRITE_RESET : std_logic_vector(7 downto 0) := "00011000";
  constant HARD_RESET_MASK : std_logic_vector(7 downto 0) := "00000001";
  constant KILL_STREAM_MASK : std_logic_vector(7 downto 0) := "10000000";
  constant KILL_THREAD_MASK : std_logic_vector(7 downto 0) := "10000000";
  constant LOGGER_ACTIVE_MASK : std_logic_vector(7 downto 0) := "00001000";
  constant MMU_PASS_THROUGH_HLIMIT : std_logic_vector(7 downto 0) := "00101111";
  constant MMU_PASS_THROUGH_LLIMIT : std_logic_vector(7 downto 0) := "00100000";
  constant MMU_READ_DWORD : std_logic_vector(7 downto 0) := "00000010";
  constant MMU_READ_LINE : std_logic_vector(7 downto 0) := "00000011";
  constant MMU_WRITE_DWORD : std_logic_vector(7 downto 0) := "00000001";
  constant MMU_WRITE_DWORD_AND_READ_LINE : std_logic_vector(7 downto 0) := "00000111";
  constant MMU_WRITE_DWORD_NO_RESPONSE : std_logic_vector(7 downto 0) := "00000101";
  constant MMU_WRITE_FSR : std_logic_vector(7 downto 0) := "00000100";
  constant NEW_STREAM_MASK : std_logic_vector(7 downto 0) := "10000000";
  constant NEW_THREAD_MASK : std_logic_vector(7 downto 0) := "10000000";
  constant NPC_RESET_VALUE : std_logic_vector(31 downto 0) := "00000000000000000000000000000100";
  constant NWINDOWS : std_logic_vector(31 downto 0) := "00000000000000000000000000001000";
  constant NWINDOWS_MOD_MASK_32 : std_logic_vector(31 downto 0) := "00000000000000000000000000000111";
  constant NWINDOWS_MOD_MASK_5 : std_logic_vector(4 downto 0) := "00111";
  constant NWINDOWSx16 : std_logic_vector(31 downto 0) := "00000000000000000000000010000000";
  constant NWINDOWSx16_MOD_MASK_32 : std_logic_vector(31 downto 0) := "00000000000000000000000001111111";
  constant NWINDOWSx2 : std_logic_vector(31 downto 0) := "00000000000000000000000000010000";
  constant ONE_1 : std_logic_vector(0 downto 0) := "1";
  constant ONE_10 : std_logic_vector(9 downto 0) := "0000000001";
  constant ONE_11 : std_logic_vector(10 downto 0) := "00000000001";
  constant ONE_12 : std_logic_vector(11 downto 0) := "000000000001";
  constant ONE_128 : std_logic_vector(127 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001";
  constant ONE_13 : std_logic_vector(12 downto 0) := "0000000000001";
  constant ONE_14 : std_logic_vector(13 downto 0) := "00000000000001";
  constant ONE_16 : std_logic_vector(15 downto 0) := "0000000000000001";
  constant ONE_17 : std_logic_vector(16 downto 0) := "00000000000000001";
  constant ONE_18 : std_logic_vector(17 downto 0) := "000000000000000001";
  constant ONE_19 : std_logic_vector(18 downto 0) := "0000000000000000001";
  constant ONE_2 : std_logic_vector(1 downto 0) := "01";
  constant ONE_20 : std_logic_vector(19 downto 0) := "00000000000000000001";
  constant ONE_23 : std_logic_vector(22 downto 0) := "00000000000000000000001";
  constant ONE_24 : std_logic_vector(23 downto 0) := "000000000000000000000001";
  constant ONE_25 : std_logic_vector(24 downto 0) := "0000000000000000000000001";
  constant ONE_256 : std_logic_vector(255 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001";
  constant ONE_29 : std_logic_vector(28 downto 0) := "00000000000000000000000000001";
  constant ONE_3 : std_logic_vector(2 downto 0) := "001";
  constant ONE_31 : std_logic_vector(30 downto 0) := "0000000000000000000000000000001";
  constant ONE_32 : std_logic_vector(31 downto 0) := "00000000000000000000000000000001";
  constant ONE_36 : std_logic_vector(35 downto 0) := "000000000000000000000000000000000001";
  constant ONE_4 : std_logic_vector(3 downto 0) := "0001";
  constant ONE_48 : std_logic_vector(47 downto 0) := "000000000000000000000000000000000000000000000001";
  constant ONE_5 : std_logic_vector(4 downto 0) := "00001";
  constant ONE_52 : std_logic_vector(51 downto 0) := "0000000000000000000000000000000000000000000000000001";
  constant ONE_6 : std_logic_vector(5 downto 0) := "000001";
  constant ONE_62 : std_logic_vector(61 downto 0) := "00000000000000000000000000000000000000000000000000000000000001";
  constant ONE_63 : std_logic_vector(62 downto 0) := "000000000000000000000000000000000000000000000000000000000000001";
  constant ONE_64 : std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000001";
  constant ONE_7 : std_logic_vector(6 downto 0) := "0000001";
  constant ONE_8 : std_logic_vector(7 downto 0) := "00000001";
  constant ONE_9 : std_logic_vector(8 downto 0) := "000000001";
  constant PC_RESET_VALUE : std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
  constant PROCESSOR_ERROR_MODE : std_logic_vector(1 downto 0) := "11";
  constant PROCESSOR_EXECUTE_MODE : std_logic_vector(1 downto 0) := "10";
  constant PROCESSOR_RESET_MODE : std_logic_vector(1 downto 0) := "01";
  constant PROCESSOR_UNDEFINED_MODE : std_logic_vector(1 downto 0) := "00";
  constant PSR_RESET_VALUE : std_logic_vector(31 downto 0) := "00000000000000000001000011000000";
  constant REQUEST_TYPE_BRIDGE_CONFIG_READ : std_logic_vector(3 downto 0) := "1001";
  constant REQUEST_TYPE_BRIDGE_CONFIG_WRITE : std_logic_vector(3 downto 0) := "1000";
  constant REQUEST_TYPE_CCU_CACHE_READ : std_logic_vector(3 downto 0) := "0101";
  constant REQUEST_TYPE_CCU_CACHE_WRITE : std_logic_vector(3 downto 0) := "0110";
  constant REQUEST_TYPE_IFETCH : std_logic_vector(3 downto 0) := "0000";
  constant REQUEST_TYPE_NOP : std_logic_vector(3 downto 0) := "0111";
  constant REQUEST_TYPE_READ : std_logic_vector(3 downto 0) := "0001";
  constant REQUEST_TYPE_STBAR : std_logic_vector(3 downto 0) := "0011";
  constant REQUEST_TYPE_WRFSRFAR : std_logic_vector(3 downto 0) := "0100";
  constant REQUEST_TYPE_WRITE : std_logic_vector(3 downto 0) := "0010";
  constant SINGLE_STEP_MASK : std_logic_vector(7 downto 0) := "00000100";
  constant THREE_2 : std_logic_vector(1 downto 0) := "11";
  constant THREE_3 : std_logic_vector(2 downto 0) := "011";
  constant TRACE_ON : std_logic_vector(0 downto 0) := "1";
  constant TWO_2 : std_logic_vector(1 downto 0) := "10";
  constant TWO_3 : std_logic_vector(2 downto 0) := "010";
  constant WIM_MASK : std_logic_vector(31 downto 0) := "00000000000000000000000011111111";
  constant ZADDR : std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
  constant ZERO_1 : std_logic_vector(0 downto 0) := "0";
  constant ZERO_10 : std_logic_vector(9 downto 0) := "0000000000";
  constant ZERO_11 : std_logic_vector(10 downto 0) := "00000000000";
  constant ZERO_12 : std_logic_vector(11 downto 0) := "000000000000";
  constant ZERO_128 : std_logic_vector(127 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  constant ZERO_13 : std_logic_vector(12 downto 0) := "0000000000000";
  constant ZERO_14 : std_logic_vector(13 downto 0) := "00000000000000";
  constant ZERO_16 : std_logic_vector(15 downto 0) := "0000000000000000";
  constant ZERO_17 : std_logic_vector(16 downto 0) := "00000000000000000";
  constant ZERO_18 : std_logic_vector(17 downto 0) := "000000000000000000";
  constant ZERO_19 : std_logic_vector(18 downto 0) := "0000000000000000000";
  constant ZERO_2 : std_logic_vector(1 downto 0) := "00";
  constant ZERO_20 : std_logic_vector(19 downto 0) := "00000000000000000000";
  constant ZERO_23 : std_logic_vector(22 downto 0) := "00000000000000000000000";
  constant ZERO_24 : std_logic_vector(23 downto 0) := "000000000000000000000000";
  constant ZERO_25 : std_logic_vector(24 downto 0) := "0000000000000000000000000";
  constant ZERO_256 : std_logic_vector(255 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  constant ZERO_29 : std_logic_vector(28 downto 0) := "00000000000000000000000000000";
  constant ZERO_3 : std_logic_vector(2 downto 0) := "000";
  constant ZERO_31 : std_logic_vector(30 downto 0) := "0000000000000000000000000000000";
  constant ZERO_32 : std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
  constant ZERO_36 : std_logic_vector(35 downto 0) := "000000000000000000000000000000000000";
  constant ZERO_4 : std_logic_vector(3 downto 0) := "0000";
  constant ZERO_48 : std_logic_vector(47 downto 0) := "000000000000000000000000000000000000000000000000";
  constant ZERO_5 : std_logic_vector(4 downto 0) := "00000";
  constant ZERO_52 : std_logic_vector(51 downto 0) := "0000000000000000000000000000000000000000000000000000";
  constant ZERO_6 : std_logic_vector(5 downto 0) := "000000";
  constant ZERO_62 : std_logic_vector(61 downto 0) := "00000000000000000000000000000000000000000000000000000000000000";
  constant ZERO_63 : std_logic_vector(62 downto 0) := "000000000000000000000000000000000000000000000000000000000000000";
  constant ZERO_64 : std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
  constant ZERO_7 : std_logic_vector(6 downto 0) := "0000000";
  constant ZERO_8 : std_logic_vector(7 downto 0) := "00000000";
  constant ZERO_9 : std_logic_vector(8 downto 0) := "000000000";
  constant default_mem_pool_base_address : std_logic_vector(0 downto 0) := "0";
  component icache is -- 
    port (-- 
      clk : in std_logic;
      reset : in std_logic;
      ICACHE_to_CPU_reset_ack_pipe_read_data: out std_logic_vector(0 downto 0);
      ICACHE_to_CPU_reset_ack_pipe_read_req : in std_logic_vector(0 downto 0);
      ICACHE_to_CPU_reset_ack_pipe_read_ack : out std_logic_vector(0 downto 0);
      ICACHE_to_CPU_response_pipe_read_data: out std_logic_vector(89 downto 0);
      ICACHE_to_CPU_response_pipe_read_req : in std_logic_vector(0 downto 0);
      ICACHE_to_CPU_response_pipe_read_ack : out std_logic_vector(0 downto 0);
      ICACHE_to_MMU_request_pipe_read_data: out std_logic_vector(47 downto 0);
      ICACHE_to_MMU_request_pipe_read_req : in std_logic_vector(0 downto 0);
      ICACHE_to_MMU_request_pipe_read_ack : out std_logic_vector(0 downto 0);
      MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_data: in std_logic_vector(26 downto 0);
      MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_req : in std_logic_vector(0 downto 0);
      MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_ack : out std_logic_vector(0 downto 0);
      MMU_to_ICACHE_response_pipe_write_data: in std_logic_vector(92 downto 0);
      MMU_to_ICACHE_response_pipe_write_req : in std_logic_vector(0 downto 0);
      MMU_to_ICACHE_response_pipe_write_ack : out std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_ICACHE_command_pipe_write_data: in std_logic_vector(40 downto 0);
      NOBLOCK_CPU_to_ICACHE_command_pipe_write_req : in std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_ICACHE_command_pipe_write_ack : out std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_ICACHE_reset_pipe_write_data: in std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_ICACHE_reset_pipe_write_req : in std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_ICACHE_reset_pipe_write_ack : out std_logic_vector(0 downto 0);
      NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_data: in std_logic_vector(26 downto 0);
      NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_req : in std_logic_vector(0 downto 0);
      NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_ack : out std_logic_vector(0 downto 0)); -- 
    -- 
  end component;
  -- 
end package icache_global_package;
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
library munit_icache;
use munit_icache.icache_global_package.all;
entity IcacheBackendDaemon is -- 
  generic (tag_length : integer); 
  port ( -- 
    icache_frontend_to_backend_pipe_read_req : out  std_logic_vector(0 downto 0);
    icache_frontend_to_backend_pipe_read_ack : in   std_logic_vector(0 downto 0);
    icache_frontend_to_backend_pipe_read_data : in   std_logic_vector(41 downto 0);
    ICACHE_to_MMU_request_pipe_write_req : out  std_logic_vector(0 downto 0);
    ICACHE_to_MMU_request_pipe_write_ack : in   std_logic_vector(0 downto 0);
    ICACHE_to_MMU_request_pipe_write_data : out  std_logic_vector(47 downto 0);
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
end entity IcacheBackendDaemon;
architecture IcacheBackendDaemon_arch of IcacheBackendDaemon is -- 
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
  signal IcacheBackendDaemon_CP_21_start: Boolean;
  signal IcacheBackendDaemon_CP_21_symbol: Boolean;
  -- volatile/operator module components. 
  component isIcacheInstructionFetch_Volatile is -- 
    port ( -- 
      asi : in  std_logic_vector(7 downto 0);
      ret_val : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  component isIcacheFlushAsi_Volatile is -- 
    port ( -- 
      asi : in  std_logic_vector(7 downto 0);
      ret_val : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  component isIcacheSupervisorAsi_Volatile is -- 
    port ( -- 
      asi : in  std_logic_vector(7 downto 0);
      ret_val : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  -- links between control-path and data-path
  signal RPIPE_icache_frontend_to_backend_776_inst_req_0 : boolean;
  signal RPIPE_icache_frontend_to_backend_776_inst_ack_0 : boolean;
  signal RPIPE_icache_frontend_to_backend_776_inst_req_1 : boolean;
  signal RPIPE_icache_frontend_to_backend_776_inst_ack_1 : boolean;
  signal WPIPE_ICACHE_to_MMU_request_807_inst_req_0 : boolean;
  signal WPIPE_ICACHE_to_MMU_request_807_inst_ack_0 : boolean;
  signal WPIPE_ICACHE_to_MMU_request_807_inst_req_1 : boolean;
  signal WPIPE_ICACHE_to_MMU_request_807_inst_ack_1 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "IcacheBackendDaemon_input_buffer", -- 
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
  IcacheBackendDaemon_CP_21_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "IcacheBackendDaemon_out_buffer", -- 
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
    preds <= IcacheBackendDaemon_CP_21_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
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
    preds <= IcacheBackendDaemon_CP_21_start & tag_ilock_write_ack_symbol;
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
    preds <= IcacheBackendDaemon_CP_21_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  IcacheBackendDaemon_CP_21: Block -- control-path 
    signal IcacheBackendDaemon_CP_21_elements: BooleanArray(6 downto 0);
    -- 
  begin -- 
    IcacheBackendDaemon_CP_21_elements(0) <= IcacheBackendDaemon_CP_21_start;
    IcacheBackendDaemon_CP_21_symbol <= IcacheBackendDaemon_CP_21_elements(1);
    -- CP-element group 0:  branch  transition  place  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	6 
    -- CP-element group 0:  members (7) 
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 branch_block_stmt_773/$entry
      -- CP-element group 0: 	 branch_block_stmt_773/branch_block_stmt_773__entry__
      -- CP-element group 0: 	 branch_block_stmt_773/merge_stmt_774__entry__
      -- CP-element group 0: 	 branch_block_stmt_773/merge_stmt_774_dead_link/$entry
      -- CP-element group 0: 	 branch_block_stmt_773/merge_stmt_774__entry___PhiReq/$entry
      -- CP-element group 0: 	 branch_block_stmt_773/merge_stmt_774__entry___PhiReq/$exit
      -- 
    -- CP-element group 1:  transition  place  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: successors 
    -- CP-element group 1:  members (3) 
      -- CP-element group 1: 	 $exit
      -- CP-element group 1: 	 branch_block_stmt_773/$exit
      -- CP-element group 1: 	 branch_block_stmt_773/branch_block_stmt_773__exit__
      -- 
    IcacheBackendDaemon_CP_21_elements(1) <= false; 
    -- CP-element group 2:  transition  input  output  bypass 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	6 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	3 
    -- CP-element group 2:  members (6) 
      -- CP-element group 2: 	 branch_block_stmt_773/assign_stmt_777_to_assign_stmt_809/RPIPE_icache_frontend_to_backend_776_sample_completed_
      -- CP-element group 2: 	 branch_block_stmt_773/assign_stmt_777_to_assign_stmt_809/RPIPE_icache_frontend_to_backend_776_update_start_
      -- CP-element group 2: 	 branch_block_stmt_773/assign_stmt_777_to_assign_stmt_809/RPIPE_icache_frontend_to_backend_776_Sample/$exit
      -- CP-element group 2: 	 branch_block_stmt_773/assign_stmt_777_to_assign_stmt_809/RPIPE_icache_frontend_to_backend_776_Sample/ra
      -- CP-element group 2: 	 branch_block_stmt_773/assign_stmt_777_to_assign_stmt_809/RPIPE_icache_frontend_to_backend_776_Update/$entry
      -- CP-element group 2: 	 branch_block_stmt_773/assign_stmt_777_to_assign_stmt_809/RPIPE_icache_frontend_to_backend_776_Update/cr
      -- 
    ra_45_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 2_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_icache_frontend_to_backend_776_inst_ack_0, ack => IcacheBackendDaemon_CP_21_elements(2)); -- 
    cr_49_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_49_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => IcacheBackendDaemon_CP_21_elements(2), ack => RPIPE_icache_frontend_to_backend_776_inst_req_1); -- 
    -- CP-element group 3:  transition  input  output  bypass 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: 	2 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	4 
    -- CP-element group 3:  members (6) 
      -- CP-element group 3: 	 branch_block_stmt_773/assign_stmt_777_to_assign_stmt_809/RPIPE_icache_frontend_to_backend_776_update_completed_
      -- CP-element group 3: 	 branch_block_stmt_773/assign_stmt_777_to_assign_stmt_809/RPIPE_icache_frontend_to_backend_776_Update/$exit
      -- CP-element group 3: 	 branch_block_stmt_773/assign_stmt_777_to_assign_stmt_809/RPIPE_icache_frontend_to_backend_776_Update/ca
      -- CP-element group 3: 	 branch_block_stmt_773/assign_stmt_777_to_assign_stmt_809/WPIPE_ICACHE_to_MMU_request_807_sample_start_
      -- CP-element group 3: 	 branch_block_stmt_773/assign_stmt_777_to_assign_stmt_809/WPIPE_ICACHE_to_MMU_request_807_Sample/$entry
      -- CP-element group 3: 	 branch_block_stmt_773/assign_stmt_777_to_assign_stmt_809/WPIPE_ICACHE_to_MMU_request_807_Sample/req
      -- 
    ca_50_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 3_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_icache_frontend_to_backend_776_inst_ack_1, ack => IcacheBackendDaemon_CP_21_elements(3)); -- 
    req_58_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_58_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => IcacheBackendDaemon_CP_21_elements(3), ack => WPIPE_ICACHE_to_MMU_request_807_inst_req_0); -- 
    -- CP-element group 4:  transition  input  output  bypass 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: 	3 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	5 
    -- CP-element group 4:  members (6) 
      -- CP-element group 4: 	 branch_block_stmt_773/assign_stmt_777_to_assign_stmt_809/WPIPE_ICACHE_to_MMU_request_807_sample_completed_
      -- CP-element group 4: 	 branch_block_stmt_773/assign_stmt_777_to_assign_stmt_809/WPIPE_ICACHE_to_MMU_request_807_update_start_
      -- CP-element group 4: 	 branch_block_stmt_773/assign_stmt_777_to_assign_stmt_809/WPIPE_ICACHE_to_MMU_request_807_Sample/$exit
      -- CP-element group 4: 	 branch_block_stmt_773/assign_stmt_777_to_assign_stmt_809/WPIPE_ICACHE_to_MMU_request_807_Sample/ack
      -- CP-element group 4: 	 branch_block_stmt_773/assign_stmt_777_to_assign_stmt_809/WPIPE_ICACHE_to_MMU_request_807_Update/$entry
      -- CP-element group 4: 	 branch_block_stmt_773/assign_stmt_777_to_assign_stmt_809/WPIPE_ICACHE_to_MMU_request_807_Update/req
      -- 
    ack_59_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 4_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_ICACHE_to_MMU_request_807_inst_ack_0, ack => IcacheBackendDaemon_CP_21_elements(4)); -- 
    req_63_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_63_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => IcacheBackendDaemon_CP_21_elements(4), ack => WPIPE_ICACHE_to_MMU_request_807_inst_req_1); -- 
    -- CP-element group 5:  transition  place  input  bypass 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	4 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	6 
    -- CP-element group 5:  members (8) 
      -- CP-element group 5: 	 branch_block_stmt_773/assign_stmt_777_to_assign_stmt_809__exit__
      -- CP-element group 5: 	 branch_block_stmt_773/loopback
      -- CP-element group 5: 	 branch_block_stmt_773/assign_stmt_777_to_assign_stmt_809/$exit
      -- CP-element group 5: 	 branch_block_stmt_773/assign_stmt_777_to_assign_stmt_809/WPIPE_ICACHE_to_MMU_request_807_update_completed_
      -- CP-element group 5: 	 branch_block_stmt_773/assign_stmt_777_to_assign_stmt_809/WPIPE_ICACHE_to_MMU_request_807_Update/$exit
      -- CP-element group 5: 	 branch_block_stmt_773/assign_stmt_777_to_assign_stmt_809/WPIPE_ICACHE_to_MMU_request_807_Update/ack
      -- CP-element group 5: 	 branch_block_stmt_773/loopback_PhiReq/$entry
      -- CP-element group 5: 	 branch_block_stmt_773/loopback_PhiReq/$exit
      -- 
    ack_64_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 5_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_ICACHE_to_MMU_request_807_inst_ack_1, ack => IcacheBackendDaemon_CP_21_elements(5)); -- 
    -- CP-element group 6:  merge  transition  place  output  bypass 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	5 
    -- CP-element group 6: 	0 
    -- CP-element group 6: successors 
    -- CP-element group 6: 	2 
    -- CP-element group 6:  members (10) 
      -- CP-element group 6: 	 branch_block_stmt_773/merge_stmt_774__exit__
      -- CP-element group 6: 	 branch_block_stmt_773/assign_stmt_777_to_assign_stmt_809__entry__
      -- CP-element group 6: 	 branch_block_stmt_773/assign_stmt_777_to_assign_stmt_809/$entry
      -- CP-element group 6: 	 branch_block_stmt_773/assign_stmt_777_to_assign_stmt_809/RPIPE_icache_frontend_to_backend_776_sample_start_
      -- CP-element group 6: 	 branch_block_stmt_773/assign_stmt_777_to_assign_stmt_809/RPIPE_icache_frontend_to_backend_776_Sample/$entry
      -- CP-element group 6: 	 branch_block_stmt_773/assign_stmt_777_to_assign_stmt_809/RPIPE_icache_frontend_to_backend_776_Sample/rr
      -- CP-element group 6: 	 branch_block_stmt_773/merge_stmt_774_PhiReqMerge
      -- CP-element group 6: 	 branch_block_stmt_773/merge_stmt_774_PhiAck/$entry
      -- CP-element group 6: 	 branch_block_stmt_773/merge_stmt_774_PhiAck/$exit
      -- CP-element group 6: 	 branch_block_stmt_773/merge_stmt_774_PhiAck/dummy
      -- 
    rr_44_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_44_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => IcacheBackendDaemon_CP_21_elements(6), ack => RPIPE_icache_frontend_to_backend_776_inst_req_0); -- 
    IcacheBackendDaemon_CP_21_elements(6) <= OrReduce(IcacheBackendDaemon_CP_21_elements(5) & IcacheBackendDaemon_CP_21_elements(0));
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal CONCAT_u8_u16_803_wire : std_logic_vector(15 downto 0);
    signal R_MMU_READ_LINE_802_wire_constant : std_logic_vector(7 downto 0);
    signal S_799 : std_logic_vector(0 downto 0);
    signal asi_790 : std_logic_vector(7 downto 0);
    signal fe_addr_785 : std_logic_vector(31 downto 0);
    signal fe_asi_781 : std_logic_vector(7 downto 0);
    signal from_fe_777 : std_logic_vector(41 downto 0);
    signal instruction_fetch_793 : std_logic_vector(0 downto 0);
    signal is_flush_796 : std_logic_vector(0 downto 0);
    signal konst_788_wire_constant : std_logic_vector(7 downto 0);
    signal to_mmu_806 : std_logic_vector(47 downto 0);
    -- 
  begin -- 
    R_MMU_READ_LINE_802_wire_constant <= "00000011";
    konst_788_wire_constant <= "01111111";
    -- flow-through slice operator slice_780_inst
    fe_asi_781 <= from_fe_777(39 downto 32);
    -- flow-through slice operator slice_784_inst
    fe_addr_785 <= from_fe_777(31 downto 0);
    -- flow through binary operator AND_u8_u8_789_inst
    asi_790 <= (fe_asi_781 and konst_788_wire_constant);
    -- flow through binary operator CONCAT_u16_u48_805_inst
    process(CONCAT_u8_u16_803_wire, fe_addr_785) -- 
      variable tmp_var : std_logic_vector(47 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u8_u16_803_wire, fe_addr_785, tmp_var);
      to_mmu_806 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u8_u16_803_inst
    process(asi_790) -- 
      variable tmp_var : std_logic_vector(15 downto 0); -- 
    begin -- 
      ApConcat_proc(asi_790, R_MMU_READ_LINE_802_wire_constant, tmp_var);
      CONCAT_u8_u16_803_wire <= tmp_var; --
    end process;
    -- shared inport operator group (0) : RPIPE_icache_frontend_to_backend_776_inst 
    InportGroup_0: Block -- 
      signal data_out: std_logic_vector(41 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_icache_frontend_to_backend_776_inst_req_0;
      RPIPE_icache_frontend_to_backend_776_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_icache_frontend_to_backend_776_inst_req_1;
      RPIPE_icache_frontend_to_backend_776_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      from_fe_777 <= data_out(41 downto 0);
      icache_frontend_to_backend_read_0_gI: SplitGuardInterface generic map(name => "icache_frontend_to_backend_read_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      icache_frontend_to_backend_read_0: InputPort_P2P -- 
        generic map ( name => "icache_frontend_to_backend_read_0", data_width => 42,    bypass_flag => true,   	nonblocking_read_flag => false,  barrier_flag => false,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => icache_frontend_to_backend_pipe_read_req(0),
          oack => icache_frontend_to_backend_pipe_read_ack(0),
          odata => icache_frontend_to_backend_pipe_read_data(41 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 0
    -- shared outport operator group (0) : WPIPE_ICACHE_to_MMU_request_807_inst 
    OutportGroup_0: Block -- 
      signal data_in: std_logic_vector(47 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_ICACHE_to_MMU_request_807_inst_req_0;
      WPIPE_ICACHE_to_MMU_request_807_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_ICACHE_to_MMU_request_807_inst_req_1;
      WPIPE_ICACHE_to_MMU_request_807_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= to_mmu_806;
      ICACHE_to_MMU_request_write_0_gI: SplitGuardInterface generic map(name => "ICACHE_to_MMU_request_write_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      ICACHE_to_MMU_request_write_0: OutputPortRevised -- 
        generic map ( name => "ICACHE_to_MMU_request", data_width => 48, num_reqs => 1, input_buffering => inBUFs, full_rate => false,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => ICACHE_to_MMU_request_pipe_write_req(0),
          oack => ICACHE_to_MMU_request_pipe_write_ack(0),
          odata => ICACHE_to_MMU_request_pipe_write_data(47 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    volatile_operator_isIcacheInstructionFetch_673: isIcacheInstructionFetch_Volatile port map(asi => asi_790, ret_val => instruction_fetch_793); 
    volatile_operator_isIcacheFlushAsi_674: isIcacheFlushAsi_Volatile port map(asi => asi_790, ret_val => is_flush_796); 
    volatile_operator_isIcacheSupervisorAsi_675: isIcacheSupervisorAsi_Volatile port map(asi => asi_790, ret_val => S_799); 
    -- 
  end Block; -- data_path
  -- 
end IcacheBackendDaemon_arch;
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
library munit_icache;
use munit_icache.icache_global_package.all;
entity IcacheResponseDaemon is -- 
  generic (tag_length : integer); 
  port ( -- 
    MMU_to_ICACHE_response_pipe_read_req : out  std_logic_vector(0 downto 0);
    MMU_to_ICACHE_response_pipe_read_ack : in   std_logic_vector(0 downto 0);
    MMU_to_ICACHE_response_pipe_read_data : in   std_logic_vector(92 downto 0);
    noblock_icache_backend_to_frontend_pipe_write_req : out  std_logic_vector(0 downto 0);
    noblock_icache_backend_to_frontend_pipe_write_ack : in   std_logic_vector(0 downto 0);
    noblock_icache_backend_to_frontend_pipe_write_data : out  std_logic_vector(101 downto 0);
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
end entity IcacheResponseDaemon;
architecture IcacheResponseDaemon_arch of IcacheResponseDaemon is -- 
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
  signal IcacheResponseDaemon_CP_2627_start: Boolean;
  signal IcacheResponseDaemon_CP_2627_symbol: Boolean;
  -- volatile/operator module components. 
  component icache_analyze_flags_from_mmu_Volatile is -- 
    port ( -- 
      from_mmu : in  std_logic_vector(92 downto 0);
      read_line : out  std_logic_vector(0 downto 0);
      dword_id : out  std_logic_vector(2 downto 0);
      last_dword_bit : out  std_logic_vector(0 downto 0);
      acc : out  std_logic_vector(2 downto 0);
      cacheable : out  std_logic_vector(0 downto 0);
      mae : out  std_logic_vector(0 downto 0);
      access_error : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  -- links between control-path and data-path
  signal do_while_stmt_1963_branch_req_0 : boolean;
  signal RPIPE_MMU_to_ICACHE_response_1967_inst_req_0 : boolean;
  signal RPIPE_MMU_to_ICACHE_response_1967_inst_ack_0 : boolean;
  signal RPIPE_MMU_to_ICACHE_response_1967_inst_req_1 : boolean;
  signal RPIPE_MMU_to_ICACHE_response_1967_inst_ack_1 : boolean;
  signal WPIPE_noblock_icache_backend_to_frontend_2029_inst_req_0 : boolean;
  signal WPIPE_noblock_icache_backend_to_frontend_2029_inst_ack_0 : boolean;
  signal WPIPE_noblock_icache_backend_to_frontend_2029_inst_req_1 : boolean;
  signal WPIPE_noblock_icache_backend_to_frontend_2029_inst_ack_1 : boolean;
  signal do_while_stmt_1963_branch_ack_0 : boolean;
  signal do_while_stmt_1963_branch_ack_1 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "IcacheResponseDaemon_input_buffer", -- 
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
  IcacheResponseDaemon_CP_2627_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "IcacheResponseDaemon_out_buffer", -- 
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
    preds <= IcacheResponseDaemon_CP_2627_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
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
    preds <= IcacheResponseDaemon_CP_2627_start & tag_ilock_write_ack_symbol;
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
    preds <= IcacheResponseDaemon_CP_2627_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  IcacheResponseDaemon_CP_2627: Block -- control-path 
    signal IcacheResponseDaemon_CP_2627_elements: BooleanArray(25 downto 0);
    -- 
  begin -- 
    IcacheResponseDaemon_CP_2627_elements(0) <= IcacheResponseDaemon_CP_2627_start;
    IcacheResponseDaemon_CP_2627_symbol <= IcacheResponseDaemon_CP_2627_elements(1);
    -- CP-element group 0:  transition  place  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	2 
    -- CP-element group 0:  members (4) 
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 branch_block_stmt_1962/$entry
      -- CP-element group 0: 	 branch_block_stmt_1962/branch_block_stmt_1962__entry__
      -- CP-element group 0: 	 branch_block_stmt_1962/do_while_stmt_1963__entry__
      -- 
    -- CP-element group 1:  transition  place  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	25 
    -- CP-element group 1: successors 
    -- CP-element group 1:  members (4) 
      -- CP-element group 1: 	 $exit
      -- CP-element group 1: 	 branch_block_stmt_1962/$exit
      -- CP-element group 1: 	 branch_block_stmt_1962/branch_block_stmt_1962__exit__
      -- CP-element group 1: 	 branch_block_stmt_1962/do_while_stmt_1963__exit__
      -- 
    IcacheResponseDaemon_CP_2627_elements(1) <= IcacheResponseDaemon_CP_2627_elements(25);
    -- CP-element group 2:  transition  place  bypass  pipeline-parent 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	0 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	8 
    -- CP-element group 2:  members (2) 
      -- CP-element group 2: 	 branch_block_stmt_1962/do_while_stmt_1963/$entry
      -- CP-element group 2: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963__entry__
      -- 
    IcacheResponseDaemon_CP_2627_elements(2) <= IcacheResponseDaemon_CP_2627_elements(0);
    -- CP-element group 3:  merge  place  bypass  pipeline-parent 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	25 
    -- CP-element group 3:  members (1) 
      -- CP-element group 3: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963__exit__
      -- 
    -- Element group IcacheResponseDaemon_CP_2627_elements(3) is bound as output of CP function.
    -- CP-element group 4:  merge  place  bypass  pipeline-parent 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	7 
    -- CP-element group 4:  members (1) 
      -- CP-element group 4: 	 branch_block_stmt_1962/do_while_stmt_1963/loop_back
      -- 
    -- Element group IcacheResponseDaemon_CP_2627_elements(4) is bound as output of CP function.
    -- CP-element group 5:  branch  transition  place  bypass  pipeline-parent 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	10 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	23 
    -- CP-element group 5: 	24 
    -- CP-element group 5:  members (3) 
      -- CP-element group 5: 	 branch_block_stmt_1962/do_while_stmt_1963/condition_done
      -- CP-element group 5: 	 branch_block_stmt_1962/do_while_stmt_1963/loop_exit/$entry
      -- CP-element group 5: 	 branch_block_stmt_1962/do_while_stmt_1963/loop_taken/$entry
      -- 
    IcacheResponseDaemon_CP_2627_elements(5) <= IcacheResponseDaemon_CP_2627_elements(10);
    -- CP-element group 6:  branch  place  bypass  pipeline-parent 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	22 
    -- CP-element group 6: successors 
    -- CP-element group 6:  members (1) 
      -- CP-element group 6: 	 branch_block_stmt_1962/do_while_stmt_1963/loop_body_done
      -- 
    IcacheResponseDaemon_CP_2627_elements(6) <= IcacheResponseDaemon_CP_2627_elements(22);
    -- CP-element group 7:  transition  bypass  pipeline-parent 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	4 
    -- CP-element group 7: successors 
    -- CP-element group 7:  members (1) 
      -- CP-element group 7: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/back_edge_to_loop_body
      -- 
    IcacheResponseDaemon_CP_2627_elements(7) <= IcacheResponseDaemon_CP_2627_elements(4);
    -- CP-element group 8:  transition  bypass  pipeline-parent 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	2 
    -- CP-element group 8: successors 
    -- CP-element group 8:  members (1) 
      -- CP-element group 8: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/first_time_through_loop_body
      -- 
    IcacheResponseDaemon_CP_2627_elements(8) <= IcacheResponseDaemon_CP_2627_elements(2);
    -- CP-element group 9:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	13 
    -- CP-element group 9: 	21 
    -- CP-element group 9: 	11 
    -- CP-element group 9:  members (3) 
      -- CP-element group 9: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/$entry
      -- CP-element group 9: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/loop_body_start
      -- CP-element group 9: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/phi_stmt_1965_sample_start_
      -- 
    -- Element group IcacheResponseDaemon_CP_2627_elements(9) is bound as output of CP function.
    -- CP-element group 10:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	12 
    -- CP-element group 10: 	17 
    -- CP-element group 10: 	21 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	5 
    -- CP-element group 10:  members (1) 
      -- CP-element group 10: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/condition_evaluated
      -- 
    condition_evaluated_2651_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " condition_evaluated_2651_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => IcacheResponseDaemon_CP_2627_elements(10), ack => do_while_stmt_1963_branch_req_0); -- 
    IcacheResponseDaemon_cp_element_group_10: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 40) := "IcacheResponseDaemon_cp_element_group_10"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= IcacheResponseDaemon_CP_2627_elements(12) & IcacheResponseDaemon_CP_2627_elements(17) & IcacheResponseDaemon_CP_2627_elements(21);
      gj_IcacheResponseDaemon_cp_element_group_10 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => IcacheResponseDaemon_CP_2627_elements(10), clk => clk, reset => reset); --
    end block;
    -- CP-element group 11:  join  transition  bypass  pipeline-parent 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	9 
    -- CP-element group 11: marked-predecessors 
    -- CP-element group 11: 	17 
    -- CP-element group 11: successors 
    -- CP-element group 11: 	14 
    -- CP-element group 11:  members (1) 
      -- CP-element group 11: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/aggregated_phi_sample_req
      -- 
    IcacheResponseDaemon_cp_element_group_11: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 40) := "IcacheResponseDaemon_cp_element_group_11"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= IcacheResponseDaemon_CP_2627_elements(9) & IcacheResponseDaemon_CP_2627_elements(17);
      gj_IcacheResponseDaemon_cp_element_group_11 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => IcacheResponseDaemon_CP_2627_elements(11), clk => clk, reset => reset); --
    end block;
    -- CP-element group 12:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	16 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	10 
    -- CP-element group 12:  members (1) 
      -- CP-element group 12: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/aggregated_phi_sample_ack_d
      -- 
    -- Element group IcacheResponseDaemon_CP_2627_elements(12) is a control-delay.
    cp_element_12_delay: control_delay_element  generic map(name => " 12_delay", delay_value => 1)  port map(req => IcacheResponseDaemon_CP_2627_elements(16), ack => IcacheResponseDaemon_CP_2627_elements(12), clk => clk, reset =>reset);
    -- CP-element group 13:  join  transition  bypass  pipeline-parent 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: 	9 
    -- CP-element group 13: marked-predecessors 
    -- CP-element group 13: 	19 
    -- CP-element group 13: successors 
    -- CP-element group 13: 	15 
    -- CP-element group 13:  members (2) 
      -- CP-element group 13: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/aggregated_phi_update_req
      -- CP-element group 13: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/phi_stmt_1965_update_start_
      -- 
    IcacheResponseDaemon_cp_element_group_13: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 40) := "IcacheResponseDaemon_cp_element_group_13"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= IcacheResponseDaemon_CP_2627_elements(9) & IcacheResponseDaemon_CP_2627_elements(19);
      gj_IcacheResponseDaemon_cp_element_group_13 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => IcacheResponseDaemon_CP_2627_elements(13), clk => clk, reset => reset); --
    end block;
    -- CP-element group 14:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: 	11 
    -- CP-element group 14: marked-predecessors 
    -- CP-element group 14: 	17 
    -- CP-element group 14: successors 
    -- CP-element group 14: 	16 
    -- CP-element group 14:  members (3) 
      -- CP-element group 14: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/RPIPE_MMU_to_ICACHE_response_1967_sample_start_
      -- CP-element group 14: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/RPIPE_MMU_to_ICACHE_response_1967_Sample/$entry
      -- CP-element group 14: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/RPIPE_MMU_to_ICACHE_response_1967_Sample/rr
      -- 
    rr_2669_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_2669_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => IcacheResponseDaemon_CP_2627_elements(14), ack => RPIPE_MMU_to_ICACHE_response_1967_inst_req_0); -- 
    IcacheResponseDaemon_cp_element_group_14: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 40) := "IcacheResponseDaemon_cp_element_group_14"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= IcacheResponseDaemon_CP_2627_elements(11) & IcacheResponseDaemon_CP_2627_elements(17);
      gj_IcacheResponseDaemon_cp_element_group_14 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => IcacheResponseDaemon_CP_2627_elements(14), clk => clk, reset => reset); --
    end block;
    -- CP-element group 15:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: 	13 
    -- CP-element group 15: 	16 
    -- CP-element group 15: successors 
    -- CP-element group 15: 	17 
    -- CP-element group 15:  members (3) 
      -- CP-element group 15: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/RPIPE_MMU_to_ICACHE_response_1967_update_start_
      -- CP-element group 15: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/RPIPE_MMU_to_ICACHE_response_1967_Update/$entry
      -- CP-element group 15: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/RPIPE_MMU_to_ICACHE_response_1967_Update/cr
      -- 
    cr_2674_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_2674_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => IcacheResponseDaemon_CP_2627_elements(15), ack => RPIPE_MMU_to_ICACHE_response_1967_inst_req_1); -- 
    IcacheResponseDaemon_cp_element_group_15: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 40) := "IcacheResponseDaemon_cp_element_group_15"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= IcacheResponseDaemon_CP_2627_elements(13) & IcacheResponseDaemon_CP_2627_elements(16);
      gj_IcacheResponseDaemon_cp_element_group_15 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => IcacheResponseDaemon_CP_2627_elements(15), clk => clk, reset => reset); --
    end block;
    -- CP-element group 16:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: 	14 
    -- CP-element group 16: successors 
    -- CP-element group 16: 	15 
    -- CP-element group 16: 	12 
    -- CP-element group 16: 	22 
    -- CP-element group 16:  members (5) 
      -- CP-element group 16: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/aggregated_phi_sample_ack
      -- CP-element group 16: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/phi_stmt_1965_sample_completed_
      -- CP-element group 16: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/RPIPE_MMU_to_ICACHE_response_1967_sample_completed_
      -- CP-element group 16: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/RPIPE_MMU_to_ICACHE_response_1967_Sample/$exit
      -- CP-element group 16: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/RPIPE_MMU_to_ICACHE_response_1967_Sample/ra
      -- 
    ra_2670_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 16_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_MMU_to_ICACHE_response_1967_inst_ack_0, ack => IcacheResponseDaemon_CP_2627_elements(16)); -- 
    -- CP-element group 17:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 17: predecessors 
    -- CP-element group 17: 	15 
    -- CP-element group 17: successors 
    -- CP-element group 17: 	18 
    -- CP-element group 17: 	10 
    -- CP-element group 17: marked-successors 
    -- CP-element group 17: 	14 
    -- CP-element group 17: 	11 
    -- CP-element group 17:  members (5) 
      -- CP-element group 17: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/aggregated_phi_update_ack
      -- CP-element group 17: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/phi_stmt_1965_update_completed_
      -- CP-element group 17: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/RPIPE_MMU_to_ICACHE_response_1967_update_completed_
      -- CP-element group 17: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/RPIPE_MMU_to_ICACHE_response_1967_Update/$exit
      -- CP-element group 17: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/RPIPE_MMU_to_ICACHE_response_1967_Update/ca
      -- 
    ca_2675_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 17_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_MMU_to_ICACHE_response_1967_inst_ack_1, ack => IcacheResponseDaemon_CP_2627_elements(17)); -- 
    -- CP-element group 18:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 18: predecessors 
    -- CP-element group 18: 	17 
    -- CP-element group 18: marked-predecessors 
    -- CP-element group 18: 	20 
    -- CP-element group 18: successors 
    -- CP-element group 18: 	19 
    -- CP-element group 18:  members (3) 
      -- CP-element group 18: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/WPIPE_noblock_icache_backend_to_frontend_2029_sample_start_
      -- CP-element group 18: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/WPIPE_noblock_icache_backend_to_frontend_2029_Sample/$entry
      -- CP-element group 18: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/WPIPE_noblock_icache_backend_to_frontend_2029_Sample/req
      -- 
    req_2683_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2683_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => IcacheResponseDaemon_CP_2627_elements(18), ack => WPIPE_noblock_icache_backend_to_frontend_2029_inst_req_0); -- 
    IcacheResponseDaemon_cp_element_group_18: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 40) := "IcacheResponseDaemon_cp_element_group_18"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= IcacheResponseDaemon_CP_2627_elements(17) & IcacheResponseDaemon_CP_2627_elements(20);
      gj_IcacheResponseDaemon_cp_element_group_18 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => IcacheResponseDaemon_CP_2627_elements(18), clk => clk, reset => reset); --
    end block;
    -- CP-element group 19:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 19: predecessors 
    -- CP-element group 19: 	18 
    -- CP-element group 19: successors 
    -- CP-element group 19: 	20 
    -- CP-element group 19: marked-successors 
    -- CP-element group 19: 	13 
    -- CP-element group 19:  members (6) 
      -- CP-element group 19: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/WPIPE_noblock_icache_backend_to_frontend_2029_sample_completed_
      -- CP-element group 19: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/WPIPE_noblock_icache_backend_to_frontend_2029_update_start_
      -- CP-element group 19: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/WPIPE_noblock_icache_backend_to_frontend_2029_Sample/$exit
      -- CP-element group 19: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/WPIPE_noblock_icache_backend_to_frontend_2029_Sample/ack
      -- CP-element group 19: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/WPIPE_noblock_icache_backend_to_frontend_2029_Update/$entry
      -- CP-element group 19: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/WPIPE_noblock_icache_backend_to_frontend_2029_Update/req
      -- 
    ack_2684_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 19_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_icache_backend_to_frontend_2029_inst_ack_0, ack => IcacheResponseDaemon_CP_2627_elements(19)); -- 
    req_2688_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2688_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => IcacheResponseDaemon_CP_2627_elements(19), ack => WPIPE_noblock_icache_backend_to_frontend_2029_inst_req_1); -- 
    -- CP-element group 20:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 20: predecessors 
    -- CP-element group 20: 	19 
    -- CP-element group 20: successors 
    -- CP-element group 20: 	22 
    -- CP-element group 20: marked-successors 
    -- CP-element group 20: 	18 
    -- CP-element group 20:  members (3) 
      -- CP-element group 20: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/WPIPE_noblock_icache_backend_to_frontend_2029_update_completed_
      -- CP-element group 20: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/WPIPE_noblock_icache_backend_to_frontend_2029_Update/$exit
      -- CP-element group 20: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/WPIPE_noblock_icache_backend_to_frontend_2029_Update/ack
      -- 
    ack_2689_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 20_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_icache_backend_to_frontend_2029_inst_ack_1, ack => IcacheResponseDaemon_CP_2627_elements(20)); -- 
    -- CP-element group 21:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 21: predecessors 
    -- CP-element group 21: 	9 
    -- CP-element group 21: successors 
    -- CP-element group 21: 	10 
    -- CP-element group 21:  members (1) 
      -- CP-element group 21: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/loop_body_delay_to_condition_start
      -- 
    -- Element group IcacheResponseDaemon_CP_2627_elements(21) is a control-delay.
    cp_element_21_delay: control_delay_element  generic map(name => " 21_delay", delay_value => 1)  port map(req => IcacheResponseDaemon_CP_2627_elements(9), ack => IcacheResponseDaemon_CP_2627_elements(21), clk => clk, reset =>reset);
    -- CP-element group 22:  join  transition  bypass  pipeline-parent 
    -- CP-element group 22: predecessors 
    -- CP-element group 22: 	16 
    -- CP-element group 22: 	20 
    -- CP-element group 22: successors 
    -- CP-element group 22: 	6 
    -- CP-element group 22:  members (1) 
      -- CP-element group 22: 	 branch_block_stmt_1962/do_while_stmt_1963/do_while_stmt_1963_loop_body/$exit
      -- 
    IcacheResponseDaemon_cp_element_group_22: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 7);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 40) := "IcacheResponseDaemon_cp_element_group_22"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= IcacheResponseDaemon_CP_2627_elements(16) & IcacheResponseDaemon_CP_2627_elements(20);
      gj_IcacheResponseDaemon_cp_element_group_22 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => IcacheResponseDaemon_CP_2627_elements(22), clk => clk, reset => reset); --
    end block;
    -- CP-element group 23:  transition  input  bypass  pipeline-parent 
    -- CP-element group 23: predecessors 
    -- CP-element group 23: 	5 
    -- CP-element group 23: successors 
    -- CP-element group 23:  members (2) 
      -- CP-element group 23: 	 branch_block_stmt_1962/do_while_stmt_1963/loop_exit/$exit
      -- CP-element group 23: 	 branch_block_stmt_1962/do_while_stmt_1963/loop_exit/ack
      -- 
    ack_2694_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 23_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_1963_branch_ack_0, ack => IcacheResponseDaemon_CP_2627_elements(23)); -- 
    -- CP-element group 24:  transition  input  bypass  pipeline-parent 
    -- CP-element group 24: predecessors 
    -- CP-element group 24: 	5 
    -- CP-element group 24: successors 
    -- CP-element group 24:  members (2) 
      -- CP-element group 24: 	 branch_block_stmt_1962/do_while_stmt_1963/loop_taken/$exit
      -- CP-element group 24: 	 branch_block_stmt_1962/do_while_stmt_1963/loop_taken/ack
      -- 
    ack_2698_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 24_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_1963_branch_ack_1, ack => IcacheResponseDaemon_CP_2627_elements(24)); -- 
    -- CP-element group 25:  transition  bypass  pipeline-parent 
    -- CP-element group 25: predecessors 
    -- CP-element group 25: 	3 
    -- CP-element group 25: successors 
    -- CP-element group 25: 	1 
    -- CP-element group 25:  members (1) 
      -- CP-element group 25: 	 branch_block_stmt_1962/do_while_stmt_1963/$exit
      -- 
    IcacheResponseDaemon_CP_2627_elements(25) <= IcacheResponseDaemon_CP_2627_elements(3);
    IcacheResponseDaemon_do_while_stmt_1963_terminator_2699: loop_terminator -- 
      generic map (name => " IcacheResponseDaemon_do_while_stmt_1963_terminator_2699", max_iterations_in_flight =>7) 
      port map(loop_body_exit => IcacheResponseDaemon_CP_2627_elements(6),loop_continue => IcacheResponseDaemon_CP_2627_elements(24),loop_terminate => IcacheResponseDaemon_CP_2627_elements(23),loop_back => IcacheResponseDaemon_CP_2627_elements(4),loop_exit => IcacheResponseDaemon_CP_2627_elements(3),clk => clk, reset => reset); -- 
    entry_tmerge_2652_block : block -- 
      signal preds : BooleanArray(0 to 1);
      begin -- 
        preds(0)  <= IcacheResponseDaemon_CP_2627_elements(7);
        preds(1)  <= IcacheResponseDaemon_CP_2627_elements(8);
        entry_tmerge_2652 : transition_merge -- 
          generic map(name => " entry_tmerge_2652")
          port map (preds => preds, symbol_out => IcacheResponseDaemon_CP_2627_elements(9));
          -- 
    end block;
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal CONCAT_u1_u4_2019_wire_constant : std_logic_vector(3 downto 0);
    signal CONCAT_u3_u95_2026_wire : std_logic_vector(94 downto 0);
    signal CONCAT_u4_u7_2021_wire : std_logic_vector(6 downto 0);
    signal MUX_1988_wire : std_logic_vector(2 downto 0);
    signal MUX_2002_wire : std_logic_vector(2 downto 0);
    signal NOT_u1_u1_1981_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1998_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1983_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1985_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1996_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1999_wire : std_logic_vector(0 downto 0);
    signal RPIPE_MMU_to_ICACHE_response_1967_wire : std_logic_vector(92 downto 0);
    signal R_CACHE_ARRAY_PASS_THROUGH_2000_wire_constant : std_logic_vector(2 downto 0);
    signal R_CACHE_ARRAY_PASS_THROUGH_2003_wire_constant : std_logic_vector(2 downto 0);
    signal R_CACHE_ARRAY_WRITE_DWORD_2001_wire_constant : std_logic_vector(2 downto 0);
    signal R_CACHE_TAG_CLEAR_LINE_1986_wire_constant : std_logic_vector(2 downto 0);
    signal R_CACHE_TAG_INSERT_1987_wire_constant : std_logic_vector(2 downto 0);
    signal R_CACHE_TAG_NOP_1989_wire_constant : std_logic_vector(2 downto 0);
    signal array_cmd_to_fe_2005 : std_logic_vector(2 downto 0);
    signal c_acc_1977 : std_logic_vector(2 downto 0);
    signal c_access_error_1977 : std_logic_vector(0 downto 0);
    signal c_cacheable_1977 : std_logic_vector(0 downto 0);
    signal c_dword_id_1977 : std_logic_vector(2 downto 0);
    signal c_last_dword_bit_1977 : std_logic_vector(0 downto 0);
    signal c_mae_1977 : std_logic_vector(0 downto 0);
    signal c_read_line_1977 : std_logic_vector(0 downto 0);
    signal from_mmu_1965 : std_logic_vector(92 downto 0);
    signal konst_2033_wire_constant : std_logic_vector(0 downto 0);
    signal slice_2025_wire : std_logic_vector(91 downto 0);
    signal tag_cmd_to_fe_1991 : std_logic_vector(2 downto 0);
    signal to_fe_2028 : std_logic_vector(101 downto 0);
    -- 
  begin -- 
    CONCAT_u1_u4_2019_wire_constant <= "1000";
    R_CACHE_ARRAY_PASS_THROUGH_2000_wire_constant <= "100";
    R_CACHE_ARRAY_PASS_THROUGH_2003_wire_constant <= "100";
    R_CACHE_ARRAY_WRITE_DWORD_2001_wire_constant <= "010";
    R_CACHE_TAG_CLEAR_LINE_1986_wire_constant <= "011";
    R_CACHE_TAG_INSERT_1987_wire_constant <= "010";
    R_CACHE_TAG_NOP_1989_wire_constant <= "101";
    konst_2033_wire_constant <= "1";
    -- flow-through select operator MUX_1988_inst
    MUX_1988_wire <= R_CACHE_TAG_CLEAR_LINE_1986_wire_constant when (OR_u1_u1_1985_wire(0) /=  '0') else R_CACHE_TAG_INSERT_1987_wire_constant;
    -- flow-through select operator MUX_1990_inst
    tag_cmd_to_fe_1991 <= MUX_1988_wire when (c_read_line_1977(0) /=  '0') else R_CACHE_TAG_NOP_1989_wire_constant;
    -- flow-through select operator MUX_2002_inst
    MUX_2002_wire <= R_CACHE_ARRAY_PASS_THROUGH_2000_wire_constant when (OR_u1_u1_1999_wire(0) /=  '0') else R_CACHE_ARRAY_WRITE_DWORD_2001_wire_constant;
    -- flow-through select operator MUX_2004_inst
    array_cmd_to_fe_2005 <= MUX_2002_wire when (c_read_line_1977(0) /=  '0') else R_CACHE_ARRAY_PASS_THROUGH_2003_wire_constant;
    -- flow-through slice operator slice_2025_inst
    slice_2025_wire <= from_mmu_1965(91 downto 0);
    -- interlock ssrc_phi_stmt_1965
    process(RPIPE_MMU_to_ICACHE_response_1967_wire) -- 
      variable tmp_var : std_logic_vector(92 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 92 downto 0) := RPIPE_MMU_to_ICACHE_response_1967_wire(92 downto 0);
      from_mmu_1965 <= tmp_var; -- 
    end process;
    do_while_stmt_1963_branch: Block -- 
      -- branch-block
      signal condition_sig : std_logic_vector(0 downto 0);
      begin 
      condition_sig <= konst_2033_wire_constant;
      branch_instance: BranchBase -- 
        generic map( name => "do_while_stmt_1963_branch", condition_width => 1,  bypass_flag => true)
        port map( -- 
          condition => condition_sig,
          req => do_while_stmt_1963_branch_req_0,
          ack0 => do_while_stmt_1963_branch_ack_0,
          ack1 => do_while_stmt_1963_branch_ack_1,
          clk => clk,
          reset => reset); -- 
      --
    end Block; -- branch-block
    -- flow through binary operator CONCAT_u3_u95_2026_inst
    process(array_cmd_to_fe_2005, slice_2025_wire) -- 
      variable tmp_var : std_logic_vector(94 downto 0); -- 
    begin -- 
      ApConcat_proc(array_cmd_to_fe_2005, slice_2025_wire, tmp_var);
      CONCAT_u3_u95_2026_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u7_2021_inst
    process(CONCAT_u1_u4_2019_wire_constant, tag_cmd_to_fe_1991) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u4_2019_wire_constant, tag_cmd_to_fe_1991, tmp_var);
      CONCAT_u4_u7_2021_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u7_u102_2027_inst
    process(CONCAT_u4_u7_2021_wire, CONCAT_u3_u95_2026_wire) -- 
      variable tmp_var : std_logic_vector(101 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u7_2021_wire, CONCAT_u3_u95_2026_wire, tmp_var);
      to_fe_2028 <= tmp_var; --
    end process;
    -- unary operator NOT_u1_u1_1981_inst
    process(c_cacheable_1977) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", c_cacheable_1977, tmp_var);
      NOT_u1_u1_1981_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_1998_inst
    process(c_cacheable_1977) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", c_cacheable_1977, tmp_var);
      NOT_u1_u1_1998_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator OR_u1_u1_1983_inst
    OR_u1_u1_1983_wire <= (NOT_u1_u1_1981_wire or c_mae_1977);
    -- flow through binary operator OR_u1_u1_1985_inst
    OR_u1_u1_1985_wire <= (OR_u1_u1_1983_wire or c_access_error_1977);
    -- flow through binary operator OR_u1_u1_1996_inst
    OR_u1_u1_1996_wire <= (c_mae_1977 or c_access_error_1977);
    -- flow through binary operator OR_u1_u1_1999_inst
    OR_u1_u1_1999_wire <= (OR_u1_u1_1996_wire or NOT_u1_u1_1998_wire);
    -- shared inport operator group (0) : RPIPE_MMU_to_ICACHE_response_1967_inst 
    InportGroup_0: Block -- 
      signal data_out: std_logic_vector(92 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_MMU_to_ICACHE_response_1967_inst_req_0;
      RPIPE_MMU_to_ICACHE_response_1967_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_MMU_to_ICACHE_response_1967_inst_req_1;
      RPIPE_MMU_to_ICACHE_response_1967_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      RPIPE_MMU_to_ICACHE_response_1967_wire <= data_out(92 downto 0);
      MMU_to_ICACHE_response_read_0_gI: SplitGuardInterface generic map(name => "MMU_to_ICACHE_response_read_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      MMU_to_ICACHE_response_read_0: InputPortRevised -- 
        generic map ( name => "MMU_to_ICACHE_response_read_0", data_width => 93,  num_reqs => 1,  output_buffering => outBUFs,   nonblocking_read_flag => False,  no_arbitration => false)
        port map (-- 
          sample_req => reqL , 
          sample_ack => ackL, 
          update_req => reqR, 
          update_ack => ackR, 
          data => data_out, 
          oreq => MMU_to_ICACHE_response_pipe_read_req(0),
          oack => MMU_to_ICACHE_response_pipe_read_ack(0),
          odata => MMU_to_ICACHE_response_pipe_read_data(92 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 0
    -- shared outport operator group (0) : WPIPE_noblock_icache_backend_to_frontend_2029_inst 
    OutportGroup_0: Block -- 
      signal data_in: std_logic_vector(101 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_noblock_icache_backend_to_frontend_2029_inst_req_0;
      WPIPE_noblock_icache_backend_to_frontend_2029_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_noblock_icache_backend_to_frontend_2029_inst_req_1;
      WPIPE_noblock_icache_backend_to_frontend_2029_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= to_fe_2028;
      noblock_icache_backend_to_frontend_write_0_gI: SplitGuardInterface generic map(name => "noblock_icache_backend_to_frontend_write_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      noblock_icache_backend_to_frontend_write_0: OutputPortRevised -- 
        generic map ( name => "noblock_icache_backend_to_frontend", data_width => 102, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => noblock_icache_backend_to_frontend_pipe_write_req(0),
          oack => noblock_icache_backend_to_frontend_pipe_write_ack(0),
          odata => noblock_icache_backend_to_frontend_pipe_write_data(101 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    volatile_operator_icache_analyze_flags_from_mmu_4258: icache_analyze_flags_from_mmu_Volatile port map(from_mmu => from_mmu_1965, read_line => c_read_line_1977, dword_id => c_dword_id_1977, last_dword_bit => c_last_dword_bit_1977, acc => c_acc_1977, cacheable => c_cacheable_1977, mae => c_mae_1977, access_error => c_access_error_1977); 
    -- 
  end Block; -- data_path
  -- 
end IcacheResponseDaemon_arch;
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
library munit_icache;
use munit_icache.icache_global_package.all;
entity analyze_backend_response_Volatile is -- 
  port ( -- 
    from_backend : in  std_logic_vector(101 downto 0);
    be_valid : out  std_logic_vector(0 downto 0);
    be_counter : out  std_logic_vector(2 downto 0);
    be_dword_id : out  std_logic_vector(2 downto 0);
    be_last_dword : out  std_logic_vector(0 downto 0);
    be_mae : out  std_logic_vector(0 downto 0);
    be_access_error : out  std_logic_vector(0 downto 0);
    be_acc : out  std_logic_vector(2 downto 0);
    be_tag_cmd : out  std_logic_vector(2 downto 0);
    be_array_cmd : out  std_logic_vector(2 downto 0);
    be_mmu_fsr : out  std_logic_vector(17 downto 0);
    be_dword : out  std_logic_vector(63 downto 0)-- 
  );
  -- 
end entity analyze_backend_response_Volatile;
architecture analyze_backend_response_Volatile_arch of analyze_backend_response_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(102-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal from_backend_buffer :  std_logic_vector(101 downto 0);
  -- output port buffer signals
  signal be_valid_buffer :  std_logic_vector(0 downto 0);
  signal be_counter_buffer :  std_logic_vector(2 downto 0);
  signal be_dword_id_buffer :  std_logic_vector(2 downto 0);
  signal be_last_dword_buffer :  std_logic_vector(0 downto 0);
  signal be_mae_buffer :  std_logic_vector(0 downto 0);
  signal be_access_error_buffer :  std_logic_vector(0 downto 0);
  signal be_acc_buffer :  std_logic_vector(2 downto 0);
  signal be_tag_cmd_buffer :  std_logic_vector(2 downto 0);
  signal be_array_cmd_buffer :  std_logic_vector(2 downto 0);
  signal be_mmu_fsr_buffer :  std_logic_vector(17 downto 0);
  signal be_dword_buffer :  std_logic_vector(63 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  from_backend_buffer <= from_backend;
  -- output handling  -------------------------------------------------------
  be_valid <= be_valid_buffer;
  be_counter <= be_counter_buffer;
  be_dword_id <= be_dword_id_buffer;
  be_last_dword <= be_last_dword_buffer;
  be_mae <= be_mae_buffer;
  be_access_error <= be_access_error_buffer;
  be_acc <= be_acc_buffer;
  be_tag_cmd <= be_tag_cmd_buffer;
  be_array_cmd <= be_array_cmd_buffer;
  be_mmu_fsr <= be_mmu_fsr_buffer;
  be_dword <= be_dword_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal be_cacheable_975 : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    -- flow-through slice operator slice_946_inst
    be_valid_buffer <= from_backend_buffer(101 downto 101);
    -- flow-through slice operator slice_950_inst
    be_counter_buffer <= from_backend_buffer(100 downto 98);
    -- flow-through slice operator slice_954_inst
    be_tag_cmd_buffer <= from_backend_buffer(97 downto 95);
    -- flow-through slice operator slice_958_inst
    be_array_cmd_buffer <= from_backend_buffer(94 downto 92);
    -- flow-through slice operator slice_962_inst
    be_dword_id_buffer <= from_backend_buffer(91 downto 89);
    -- flow-through slice operator slice_966_inst
    be_last_dword_buffer <= from_backend_buffer(88 downto 88);
    -- flow-through slice operator slice_970_inst
    be_acc_buffer <= from_backend_buffer(87 downto 85);
    -- flow-through slice operator slice_974_inst
    be_cacheable_975 <= from_backend_buffer(84 downto 84);
    -- flow-through slice operator slice_978_inst
    be_mae_buffer <= from_backend_buffer(83 downto 83);
    -- flow-through slice operator slice_982_inst
    be_access_error_buffer <= from_backend_buffer(82 downto 82);
    -- flow-through slice operator slice_986_inst
    be_mmu_fsr_buffer <= from_backend_buffer(81 downto 64);
    -- flow-through slice operator slice_990_inst
    be_dword_buffer <= from_backend_buffer(63 downto 0);
    -- 
  end Block; -- data_path
  -- 
end analyze_backend_response_Volatile_arch;
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
library munit_icache;
use munit_icache.icache_global_package.all;
entity classify_cpu_side_requests_Volatile is -- 
  port ( -- 
    from_cpu_ifetch : in  std_logic_vector(40 downto 0);
    cpu_valid : out  std_logic_vector(0 downto 0);
    cpu_ifetch_valid : out  std_logic_vector(0 downto 0);
    exec_cpu_ifetch : out  std_logic_vector(0 downto 0);
    exec_cpu_new_stream_flush : out  std_logic_vector(0 downto 0);
    exec_cpu_flush : out  std_logic_vector(0 downto 0);
    exec_cpu_S : out  std_logic_vector(0 downto 0);
    exec_cpu_tag_command : out  std_logic_vector(2 downto 0);
    exec_cpu_array_command : out  std_logic_vector(2 downto 0);
    exec_cpu_asi : out  std_logic_vector(7 downto 0);
    exec_cpu_addr : out  std_logic_vector(31 downto 0)-- 
  );
  -- 
end entity classify_cpu_side_requests_Volatile;
architecture classify_cpu_side_requests_Volatile_arch of classify_cpu_side_requests_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(41-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal from_cpu_ifetch_buffer :  std_logic_vector(40 downto 0);
  -- output port buffer signals
  signal cpu_valid_buffer :  std_logic_vector(0 downto 0);
  signal cpu_ifetch_valid_buffer :  std_logic_vector(0 downto 0);
  signal exec_cpu_ifetch_buffer :  std_logic_vector(0 downto 0);
  signal exec_cpu_new_stream_flush_buffer :  std_logic_vector(0 downto 0);
  signal exec_cpu_flush_buffer :  std_logic_vector(0 downto 0);
  signal exec_cpu_S_buffer :  std_logic_vector(0 downto 0);
  signal exec_cpu_tag_command_buffer :  std_logic_vector(2 downto 0);
  signal exec_cpu_array_command_buffer :  std_logic_vector(2 downto 0);
  signal exec_cpu_asi_buffer :  std_logic_vector(7 downto 0);
  signal exec_cpu_addr_buffer :  std_logic_vector(31 downto 0);
  -- volatile/operator module components. 
  component isIcacheInstructionFetch_Volatile is -- 
    port ( -- 
      asi : in  std_logic_vector(7 downto 0);
      ret_val : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  component isIcacheFlushAsi_Volatile is -- 
    port ( -- 
      asi : in  std_logic_vector(7 downto 0);
      ret_val : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  component isIcacheSupervisorAsi_Volatile is -- 
    port ( -- 
      asi : in  std_logic_vector(7 downto 0);
      ret_val : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  component isIcacheFlushLineOnly_Volatile is -- 
    port ( -- 
      asi : in  std_logic_vector(7 downto 0);
      flush_line_only : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  -- 
begin --  
  -- input handling ------------------------------------------------
  from_cpu_ifetch_buffer <= from_cpu_ifetch;
  -- output handling  -------------------------------------------------------
  cpu_valid <= cpu_valid_buffer;
  cpu_ifetch_valid <= cpu_ifetch_valid_buffer;
  exec_cpu_ifetch <= exec_cpu_ifetch_buffer;
  exec_cpu_new_stream_flush <= exec_cpu_new_stream_flush_buffer;
  exec_cpu_flush <= exec_cpu_flush_buffer;
  exec_cpu_S <= exec_cpu_S_buffer;
  exec_cpu_tag_command <= exec_cpu_tag_command_buffer;
  exec_cpu_array_command <= exec_cpu_array_command_buffer;
  exec_cpu_asi <= exec_cpu_asi_buffer;
  exec_cpu_addr <= exec_cpu_addr_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal MUX_912_wire : std_logic_vector(2 downto 0);
    signal MUX_916_wire : std_logic_vector(2 downto 0);
    signal MUX_927_wire : std_logic_vector(2 downto 0);
    signal OR_u1_u1_908_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_922_wire : std_logic_vector(0 downto 0);
    signal R_CACHE_ARRAY_NOP_923_wire_constant : std_logic_vector(2 downto 0);
    signal R_CACHE_ARRAY_NOP_926_wire_constant : std_logic_vector(2 downto 0);
    signal R_CACHE_ARRAY_READ_DWORD_925_wire_constant : std_logic_vector(2 downto 0);
    signal R_CACHE_TAG_CLEAR_ALL_911_wire_constant : std_logic_vector(2 downto 0);
    signal R_CACHE_TAG_CLEAR_LINE_910_wire_constant : std_logic_vector(2 downto 0);
    signal R_CACHE_TAG_LOOKUP_914_wire_constant : std_logic_vector(2 downto 0);
    signal R_CACHE_TAG_NOP_915_wire_constant : std_logic_vector(2 downto 0);
    signal cpu_S_875 : std_logic_vector(0 downto 0);
    signal cpu_ifetch_addr_851 : std_logic_vector(31 downto 0);
    signal flush_line_904 : std_logic_vector(0 downto 0);
    signal flush_line_only_881 : std_logic_vector(0 downto 0);
    signal is_flush_asi_878 : std_logic_vector(0 downto 0);
    signal is_ifetch_asi_884 : std_logic_vector(0 downto 0);
    signal konst_862_wire_constant : std_logic_vector(7 downto 0);
    signal konst_867_wire_constant : std_logic_vector(7 downto 0);
    signal r_cpu_ifetch_asi_847 : std_logic_vector(7 downto 0);
    -- 
  begin -- 
    R_CACHE_ARRAY_NOP_923_wire_constant <= "011";
    R_CACHE_ARRAY_NOP_926_wire_constant <= "011";
    R_CACHE_ARRAY_READ_DWORD_925_wire_constant <= "001";
    R_CACHE_TAG_CLEAR_ALL_911_wire_constant <= "100";
    R_CACHE_TAG_CLEAR_LINE_910_wire_constant <= "011";
    R_CACHE_TAG_LOOKUP_914_wire_constant <= "001";
    R_CACHE_TAG_NOP_915_wire_constant <= "101";
    konst_862_wire_constant <= "01111111";
    konst_867_wire_constant <= "00000111";
    -- flow-through select operator MUX_912_inst
    MUX_912_wire <= R_CACHE_TAG_CLEAR_LINE_910_wire_constant when (flush_line_904(0) /=  '0') else R_CACHE_TAG_CLEAR_ALL_911_wire_constant;
    -- flow-through select operator MUX_916_inst
    MUX_916_wire <= R_CACHE_TAG_LOOKUP_914_wire_constant when (exec_cpu_ifetch_buffer(0) /=  '0') else R_CACHE_TAG_NOP_915_wire_constant;
    -- flow-through select operator MUX_917_inst
    exec_cpu_tag_command_buffer <= MUX_912_wire when (OR_u1_u1_908_wire(0) /=  '0') else MUX_916_wire;
    -- flow-through select operator MUX_927_inst
    MUX_927_wire <= R_CACHE_ARRAY_READ_DWORD_925_wire_constant when (exec_cpu_ifetch_buffer(0) /=  '0') else R_CACHE_ARRAY_NOP_926_wire_constant;
    -- flow-through select operator MUX_928_inst
    exec_cpu_array_command_buffer <= R_CACHE_ARRAY_NOP_923_wire_constant when (OR_u1_u1_922_wire(0) /=  '0') else MUX_927_wire;
    -- flow-through slice operator slice_842_inst
    cpu_ifetch_valid_buffer <= from_cpu_ifetch_buffer(40 downto 40);
    -- flow-through slice operator slice_846_inst
    r_cpu_ifetch_asi_847 <= from_cpu_ifetch_buffer(39 downto 32);
    -- flow-through slice operator slice_850_inst
    cpu_ifetch_addr_851 <= from_cpu_ifetch_buffer(31 downto 0);
    -- interlock W_cpu_valid_857_inst
    process(cpu_ifetch_valid_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := cpu_ifetch_valid_buffer(0 downto 0);
      cpu_valid_buffer <= tmp_var; -- 
    end process;
    -- interlock W_exec_cpu_addr_870_inst
    process(cpu_ifetch_addr_851) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := cpu_ifetch_addr_851(31 downto 0);
      exec_cpu_addr_buffer <= tmp_var; -- 
    end process;
    -- flow through binary operator AND_u1_u1_888_inst
    exec_cpu_flush_buffer <= (cpu_valid_buffer and is_flush_asi_878);
    -- flow through binary operator AND_u1_u1_893_inst
    exec_cpu_ifetch_buffer <= (cpu_valid_buffer and is_ifetch_asi_884);
    -- flow through binary operator AND_u1_u1_898_inst
    exec_cpu_S_buffer <= (cpu_valid_buffer and cpu_S_875);
    -- flow through binary operator AND_u1_u1_903_inst
    flush_line_904 <= (exec_cpu_flush_buffer and flush_line_only_881);
    -- flow through binary operator AND_u8_u8_863_inst
    exec_cpu_asi_buffer <= (r_cpu_ifetch_asi_847 and konst_862_wire_constant);
    -- flow through binary operator BITSEL_u8_u1_868_inst
    process(r_cpu_ifetch_asi_847) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(r_cpu_ifetch_asi_847, konst_867_wire_constant, tmp_var);
      exec_cpu_new_stream_flush_buffer <= tmp_var; --
    end process;
    -- flow through binary operator OR_u1_u1_908_inst
    OR_u1_u1_908_wire <= (exec_cpu_new_stream_flush_buffer or exec_cpu_flush_buffer);
    -- flow through binary operator OR_u1_u1_922_inst
    OR_u1_u1_922_wire <= (exec_cpu_flush_buffer or exec_cpu_new_stream_flush_buffer);
    volatile_operator_isIcacheSupervisorAsi_749: isIcacheSupervisorAsi_Volatile port map(asi => exec_cpu_asi_buffer, ret_val => cpu_S_875); 
    volatile_operator_isIcacheFlushAsi_750: isIcacheFlushAsi_Volatile port map(asi => exec_cpu_asi_buffer, ret_val => is_flush_asi_878); 
    volatile_operator_isIcacheFlushLineOnly_751: isIcacheFlushLineOnly_Volatile port map(asi => exec_cpu_asi_buffer, flush_line_only => flush_line_only_881); 
    volatile_operator_isIcacheInstructionFetch_752: isIcacheInstructionFetch_Volatile port map(asi => exec_cpu_asi_buffer, ret_val => is_ifetch_asi_884); 
    -- 
  end Block; -- data_path
  -- 
end classify_cpu_side_requests_Volatile_arch;
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
library munit_icache;
use munit_icache.icache_global_package.all;
entity icacheAccessPermissionsOk_Volatile is -- 
  port ( -- 
    S : in  std_logic_vector(0 downto 0);
    acc : in  std_logic_vector(2 downto 0);
    perms_ok : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity icacheAccessPermissionsOk_Volatile;
architecture icacheAccessPermissionsOk_Volatile_arch of icacheAccessPermissionsOk_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(4-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal S_buffer :  std_logic_vector(0 downto 0);
  signal acc_buffer :  std_logic_vector(2 downto 0);
  -- output port buffer signals
  signal perms_ok_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  S_buffer <= S;
  acc_buffer <= acc;
  -- output handling  -------------------------------------------------------
  perms_ok <= perms_ok_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_1065_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1073_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_1054_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_1057_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1058_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1066_wire : std_logic_vector(0 downto 0);
    signal UGE_u3_u1_1061_wire : std_logic_vector(0 downto 0);
    signal UGE_u3_u1_1069_wire : std_logic_vector(0 downto 0);
    signal ULE_u3_u1_1064_wire : std_logic_vector(0 downto 0);
    signal ULE_u3_u1_1072_wire : std_logic_vector(0 downto 0);
    signal konst_1053_wire_constant : std_logic_vector(2 downto 0);
    signal konst_1056_wire_constant : std_logic_vector(2 downto 0);
    signal konst_1060_wire_constant : std_logic_vector(2 downto 0);
    signal konst_1063_wire_constant : std_logic_vector(2 downto 0);
    signal konst_1068_wire_constant : std_logic_vector(2 downto 0);
    signal konst_1071_wire_constant : std_logic_vector(2 downto 0);
    -- 
  begin -- 
    konst_1053_wire_constant <= "110";
    konst_1056_wire_constant <= "111";
    konst_1060_wire_constant <= "010";
    konst_1063_wire_constant <= "100";
    konst_1068_wire_constant <= "010";
    konst_1071_wire_constant <= "100";
    -- flow-through select operator MUX_1074_inst
    perms_ok_buffer <= OR_u1_u1_1066_wire when (S_buffer(0) /=  '0') else AND_u1_u1_1073_wire;
    -- flow through binary operator AND_u1_u1_1065_inst
    AND_u1_u1_1065_wire <= (UGE_u3_u1_1061_wire and ULE_u3_u1_1064_wire);
    -- flow through binary operator AND_u1_u1_1073_inst
    AND_u1_u1_1073_wire <= (UGE_u3_u1_1069_wire and ULE_u3_u1_1072_wire);
    -- flow through binary operator EQ_u3_u1_1054_inst
    process(acc_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(acc_buffer, konst_1053_wire_constant, tmp_var);
      EQ_u3_u1_1054_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_1057_inst
    process(acc_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(acc_buffer, konst_1056_wire_constant, tmp_var);
      EQ_u3_u1_1057_wire <= tmp_var; --
    end process;
    -- flow through binary operator OR_u1_u1_1058_inst
    OR_u1_u1_1058_wire <= (EQ_u3_u1_1054_wire or EQ_u3_u1_1057_wire);
    -- flow through binary operator OR_u1_u1_1066_inst
    OR_u1_u1_1066_wire <= (OR_u1_u1_1058_wire or AND_u1_u1_1065_wire);
    -- flow through binary operator UGE_u3_u1_1061_inst
    process(acc_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUge_proc(acc_buffer, konst_1060_wire_constant, tmp_var);
      UGE_u3_u1_1061_wire <= tmp_var; --
    end process;
    -- flow through binary operator UGE_u3_u1_1069_inst
    process(acc_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUge_proc(acc_buffer, konst_1068_wire_constant, tmp_var);
      UGE_u3_u1_1069_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULE_u3_u1_1064_inst
    process(acc_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUle_proc(acc_buffer, konst_1063_wire_constant, tmp_var);
      ULE_u3_u1_1064_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULE_u3_u1_1072_inst
    process(acc_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUle_proc(acc_buffer, konst_1071_wire_constant, tmp_var);
      ULE_u3_u1_1072_wire <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end icacheAccessPermissionsOk_Volatile_arch;
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
library munit_icache;
use munit_icache.icache_global_package.all;
entity icacheBlockAlign_Volatile is -- 
  port ( -- 
    addr : in  std_logic_vector(31 downto 0);
    addr_aligned : out  std_logic_vector(31 downto 0)-- 
  );
  -- 
end entity icacheBlockAlign_Volatile;
architecture icacheBlockAlign_Volatile_arch of icacheBlockAlign_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(32-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal addr_buffer :  std_logic_vector(31 downto 0);
  -- output port buffer signals
  signal addr_aligned_buffer :  std_logic_vector(31 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  addr_buffer <= addr;
  -- output handling  -------------------------------------------------------
  addr_aligned <= addr_aligned_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal NOT_u32_u32_1042_wire_constant : std_logic_vector(31 downto 0);
    -- 
  begin -- 
    NOT_u32_u32_1042_wire_constant <= "11111111111111111111111111000000";
    -- flow through binary operator AND_u32_u32_1043_inst
    addr_aligned_buffer <= (addr_buffer and NOT_u32_u32_1042_wire_constant);
    -- 
  end Block; -- data_path
  -- 
end icacheBlockAlign_Volatile_arch;
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
library munit_icache;
use munit_icache.icache_global_package.all;
entity icacheBlockId_Volatile is -- 
  port ( -- 
    addr : in  std_logic_vector(31 downto 0);
    block_id : out  std_logic_vector(31 downto 0)-- 
  );
  -- 
end entity icacheBlockId_Volatile;
architecture icacheBlockId_Volatile_arch of icacheBlockId_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(32-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal addr_buffer :  std_logic_vector(31 downto 0);
  -- output port buffer signals
  signal block_id_buffer :  std_logic_vector(31 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  addr_buffer <= addr;
  -- output handling  -------------------------------------------------------
  block_id <= block_id_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal LSHR_u32_u32_1011_wire : std_logic_vector(31 downto 0);
    signal LSHR_u32_u32_1015_wire_constant : std_logic_vector(31 downto 0);
    signal konst_1010_wire_constant : std_logic_vector(31 downto 0);
    -- 
  begin -- 
    LSHR_u32_u32_1015_wire_constant <= "00000000000000000000000001111111";
    konst_1010_wire_constant <= "00000000000000000000000000000110";
    -- flow through binary operator AND_u32_u32_1016_inst
    block_id_buffer <= (LSHR_u32_u32_1011_wire and LSHR_u32_u32_1015_wire_constant);
    -- flow through binary operator LSHR_u32_u32_1011_inst
    process(addr_buffer) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApIntLSHR_proc(addr_buffer, konst_1010_wire_constant, tmp_var);
      LSHR_u32_u32_1011_wire <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end icacheBlockId_Volatile_arch;
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
library munit_icache;
use munit_icache.icache_global_package.all;
entity icacheOffsetInBlock_Volatile is -- 
  port ( -- 
    addr : in  std_logic_vector(31 downto 0);
    offset : out  std_logic_vector(31 downto 0)-- 
  );
  -- 
end entity icacheOffsetInBlock_Volatile;
architecture icacheOffsetInBlock_Volatile_arch of icacheOffsetInBlock_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(32-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal addr_buffer :  std_logic_vector(31 downto 0);
  -- output port buffer signals
  signal offset_buffer :  std_logic_vector(31 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  addr_buffer <= addr;
  -- output handling  -------------------------------------------------------
  offset <= offset_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal LSHR_u32_u32_1025_wire : std_logic_vector(31 downto 0);
    signal LSHR_u32_u32_1029_wire_constant : std_logic_vector(31 downto 0);
    signal konst_1024_wire_constant : std_logic_vector(31 downto 0);
    -- 
  begin -- 
    LSHR_u32_u32_1029_wire_constant <= "00000000000000000000000000000111";
    konst_1024_wire_constant <= "00000000000000000000000000000011";
    -- flow through binary operator AND_u32_u32_1030_inst
    offset_buffer <= (LSHR_u32_u32_1025_wire and LSHR_u32_u32_1029_wire_constant);
    -- flow through binary operator LSHR_u32_u32_1025_inst
    process(addr_buffer) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApIntLSHR_proc(addr_buffer, konst_1024_wire_constant, tmp_var);
      LSHR_u32_u32_1025_wire <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end icacheOffsetInBlock_Volatile_arch;
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
library munit_icache;
use munit_icache.icache_global_package.all;
entity icache_analyze_flags_from_mmu_Volatile is -- 
  port ( -- 
    from_mmu : in  std_logic_vector(92 downto 0);
    read_line : out  std_logic_vector(0 downto 0);
    dword_id : out  std_logic_vector(2 downto 0);
    last_dword_bit : out  std_logic_vector(0 downto 0);
    acc : out  std_logic_vector(2 downto 0);
    cacheable : out  std_logic_vector(0 downto 0);
    mae : out  std_logic_vector(0 downto 0);
    access_error : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity icache_analyze_flags_from_mmu_Volatile;
architecture icache_analyze_flags_from_mmu_Volatile_arch of icache_analyze_flags_from_mmu_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(93-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal from_mmu_buffer :  std_logic_vector(92 downto 0);
  -- output port buffer signals
  signal read_line_buffer :  std_logic_vector(0 downto 0);
  signal dword_id_buffer :  std_logic_vector(2 downto 0);
  signal last_dword_bit_buffer :  std_logic_vector(0 downto 0);
  signal acc_buffer :  std_logic_vector(2 downto 0);
  signal cacheable_buffer :  std_logic_vector(0 downto 0);
  signal mae_buffer :  std_logic_vector(0 downto 0);
  signal access_error_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  from_mmu_buffer <= from_mmu;
  -- output handling  -------------------------------------------------------
  read_line <= read_line_buffer;
  dword_id <= dword_id_buffer;
  last_dword_bit <= last_dword_bit_buffer;
  acc <= acc_buffer;
  cacheable <= cacheable_buffer;
  mae <= mae_buffer;
  access_error <= access_error_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal konst_1929_wire_constant : std_logic_vector(92 downto 0);
    signal konst_1938_wire_constant : std_logic_vector(92 downto 0);
    signal konst_1947_wire_constant : std_logic_vector(92 downto 0);
    signal konst_1952_wire_constant : std_logic_vector(92 downto 0);
    signal konst_1957_wire_constant : std_logic_vector(92 downto 0);
    -- 
  begin -- 
    konst_1929_wire_constant <= "000000000000000000000000000000000000000000000000000000000000000000000000000000000000001011100";
    konst_1938_wire_constant <= "000000000000000000000000000000000000000000000000000000000000000000000000000000000000001011000";
    konst_1947_wire_constant <= "000000000000000000000000000000000000000000000000000000000000000000000000000000000000001010100";
    konst_1952_wire_constant <= "000000000000000000000000000000000000000000000000000000000000000000000000000000000000001010011";
    konst_1957_wire_constant <= "000000000000000000000000000000000000000000000000000000000000000000000000000000000000001010010";
    -- flow-through slice operator slice_1934_inst
    dword_id_buffer <= from_mmu_buffer(91 downto 89);
    -- flow-through slice operator slice_1943_inst
    acc_buffer <= from_mmu_buffer(87 downto 85);
    -- flow through binary operator BITSEL_u93_u1_1930_inst
    process(from_mmu_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(from_mmu_buffer, konst_1929_wire_constant, tmp_var);
      read_line_buffer <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u93_u1_1939_inst
    process(from_mmu_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(from_mmu_buffer, konst_1938_wire_constant, tmp_var);
      last_dword_bit_buffer <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u93_u1_1948_inst
    process(from_mmu_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(from_mmu_buffer, konst_1947_wire_constant, tmp_var);
      cacheable_buffer <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u93_u1_1953_inst
    process(from_mmu_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(from_mmu_buffer, konst_1952_wire_constant, tmp_var);
      mae_buffer <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u93_u1_1958_inst
    process(from_mmu_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(from_mmu_buffer, konst_1957_wire_constant, tmp_var);
      access_error_buffer <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end icache_analyze_flags_from_mmu_Volatile_arch;
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
library munit_icache;
use munit_icache.icache_global_package.all;
entity isIcacheFlushAsi_Volatile is -- 
  port ( -- 
    asi : in  std_logic_vector(7 downto 0);
    ret_val : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity isIcacheFlushAsi_Volatile;
architecture isIcacheFlushAsi_Volatile_arch of isIcacheFlushAsi_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(8-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal asi_buffer :  std_logic_vector(7 downto 0);
  -- output port buffer signals
  signal ret_val_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  asi_buffer <= asi;
  -- output handling  -------------------------------------------------------
  ret_val <= ret_val_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal UGE_u8_u1_756_wire : std_logic_vector(0 downto 0);
    signal ULE_u8_u1_759_wire : std_logic_vector(0 downto 0);
    signal konst_755_wire_constant : std_logic_vector(7 downto 0);
    signal konst_758_wire_constant : std_logic_vector(7 downto 0);
    -- 
  begin -- 
    konst_755_wire_constant <= "00011000";
    konst_758_wire_constant <= "00011100";
    -- flow through binary operator AND_u1_u1_760_inst
    ret_val_buffer <= (UGE_u8_u1_756_wire and ULE_u8_u1_759_wire);
    -- flow through binary operator UGE_u8_u1_756_inst
    process(asi_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUge_proc(asi_buffer, konst_755_wire_constant, tmp_var);
      UGE_u8_u1_756_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULE_u8_u1_759_inst
    process(asi_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUle_proc(asi_buffer, konst_758_wire_constant, tmp_var);
      ULE_u8_u1_759_wire <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end isIcacheFlushAsi_Volatile_arch;
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
library munit_icache;
use munit_icache.icache_global_package.all;
entity isIcacheFlushLineOnly_Volatile is -- 
  port ( -- 
    asi : in  std_logic_vector(7 downto 0);
    flush_line_only : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity isIcacheFlushLineOnly_Volatile;
architecture isIcacheFlushLineOnly_Volatile_arch of isIcacheFlushLineOnly_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(8-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal asi_buffer :  std_logic_vector(7 downto 0);
  -- output port buffer signals
  signal flush_line_only_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  asi_buffer <= asi;
  -- output handling  -------------------------------------------------------
  flush_line_only <= flush_line_only_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal EQ_u8_u1_821_wire : std_logic_vector(0 downto 0);
    signal EQ_u8_u1_824_wire : std_logic_vector(0 downto 0);
    signal R_ASI_FLUSH_I_D_USER_823_wire_constant : std_logic_vector(7 downto 0);
    signal R_ASI_FLUSH_I_USER_820_wire_constant : std_logic_vector(7 downto 0);
    -- 
  begin -- 
    R_ASI_FLUSH_I_D_USER_823_wire_constant <= "00010100";
    R_ASI_FLUSH_I_USER_820_wire_constant <= "00011100";
    -- flow through binary operator EQ_u8_u1_821_inst
    process(asi_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_buffer, R_ASI_FLUSH_I_USER_820_wire_constant, tmp_var);
      EQ_u8_u1_821_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_824_inst
    process(asi_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_buffer, R_ASI_FLUSH_I_D_USER_823_wire_constant, tmp_var);
      EQ_u8_u1_824_wire <= tmp_var; --
    end process;
    -- flow through binary operator OR_u1_u1_825_inst
    flush_line_only_buffer <= (EQ_u8_u1_821_wire or EQ_u8_u1_824_wire);
    -- 
  end Block; -- data_path
  -- 
end isIcacheFlushLineOnly_Volatile_arch;
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
library munit_icache;
use munit_icache.icache_global_package.all;
entity isIcacheInstructionFetch_Volatile is -- 
  port ( -- 
    asi : in  std_logic_vector(7 downto 0);
    ret_val : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity isIcacheInstructionFetch_Volatile;
architecture isIcacheInstructionFetch_Volatile_arch of isIcacheInstructionFetch_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(8-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal asi_buffer :  std_logic_vector(7 downto 0);
  -- output port buffer signals
  signal ret_val_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  asi_buffer <= asi;
  -- output handling  -------------------------------------------------------
  ret_val <= ret_val_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal EQ_u8_u1_743_wire : std_logic_vector(0 downto 0);
    signal EQ_u8_u1_746_wire : std_logic_vector(0 downto 0);
    signal R_ASI_SUPERVISOR_INSTRUCTION_745_wire_constant : std_logic_vector(7 downto 0);
    signal R_ASI_USER_INSTRUCTION_742_wire_constant : std_logic_vector(7 downto 0);
    -- 
  begin -- 
    R_ASI_SUPERVISOR_INSTRUCTION_745_wire_constant <= "00001001";
    R_ASI_USER_INSTRUCTION_742_wire_constant <= "00001000";
    -- flow through binary operator EQ_u8_u1_743_inst
    process(asi_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_buffer, R_ASI_USER_INSTRUCTION_742_wire_constant, tmp_var);
      EQ_u8_u1_743_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_746_inst
    process(asi_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_buffer, R_ASI_SUPERVISOR_INSTRUCTION_745_wire_constant, tmp_var);
      EQ_u8_u1_746_wire <= tmp_var; --
    end process;
    -- flow through binary operator OR_u1_u1_747_inst
    ret_val_buffer <= (EQ_u8_u1_743_wire or EQ_u8_u1_746_wire);
    -- 
  end Block; -- data_path
  -- 
end isIcacheInstructionFetch_Volatile_arch;
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
library munit_icache;
use munit_icache.icache_global_package.all;
entity isIcacheSupervisorAsi_Volatile is -- 
  port ( -- 
    asi : in  std_logic_vector(7 downto 0);
    ret_val : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity isIcacheSupervisorAsi_Volatile;
architecture isIcacheSupervisorAsi_Volatile_arch of isIcacheSupervisorAsi_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(8-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal asi_buffer :  std_logic_vector(7 downto 0);
  -- output port buffer signals
  signal ret_val_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  asi_buffer <= asi;
  -- output handling  -------------------------------------------------------
  ret_val <= ret_val_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal R_ASI_SUPERVISOR_INSTRUCTION_768_wire_constant : std_logic_vector(7 downto 0);
    -- 
  begin -- 
    R_ASI_SUPERVISOR_INSTRUCTION_768_wire_constant <= "00001001";
    -- flow through binary operator EQ_u8_u1_769_inst
    process(asi_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_buffer, R_ASI_SUPERVISOR_INSTRUCTION_768_wire_constant, tmp_var);
      ret_val_buffer <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end isIcacheSupervisorAsi_Volatile_arch;
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
library munit_icache;
use munit_icache.icache_global_package.all;
entity icache is  -- system 
  port (-- 
    clk : in std_logic;
    reset : in std_logic;
    ICACHE_to_CPU_reset_ack_pipe_read_data: out std_logic_vector(0 downto 0);
    ICACHE_to_CPU_reset_ack_pipe_read_req : in std_logic_vector(0 downto 0);
    ICACHE_to_CPU_reset_ack_pipe_read_ack : out std_logic_vector(0 downto 0);
    ICACHE_to_CPU_response_pipe_read_data: out std_logic_vector(89 downto 0);
    ICACHE_to_CPU_response_pipe_read_req : in std_logic_vector(0 downto 0);
    ICACHE_to_CPU_response_pipe_read_ack : out std_logic_vector(0 downto 0);
    ICACHE_to_MMU_request_pipe_read_data: out std_logic_vector(47 downto 0);
    ICACHE_to_MMU_request_pipe_read_req : in std_logic_vector(0 downto 0);
    ICACHE_to_MMU_request_pipe_read_ack : out std_logic_vector(0 downto 0);
    MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_data: in std_logic_vector(26 downto 0);
    MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_req : in std_logic_vector(0 downto 0);
    MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_ack : out std_logic_vector(0 downto 0);
    MMU_to_ICACHE_response_pipe_write_data: in std_logic_vector(92 downto 0);
    MMU_to_ICACHE_response_pipe_write_req : in std_logic_vector(0 downto 0);
    MMU_to_ICACHE_response_pipe_write_ack : out std_logic_vector(0 downto 0);
    NOBLOCK_CPU_to_ICACHE_command_pipe_write_data: in std_logic_vector(40 downto 0);
    NOBLOCK_CPU_to_ICACHE_command_pipe_write_req : in std_logic_vector(0 downto 0);
    NOBLOCK_CPU_to_ICACHE_command_pipe_write_ack : out std_logic_vector(0 downto 0);
    NOBLOCK_CPU_to_ICACHE_reset_pipe_write_data: in std_logic_vector(0 downto 0);
    NOBLOCK_CPU_to_ICACHE_reset_pipe_write_req : in std_logic_vector(0 downto 0);
    NOBLOCK_CPU_to_ICACHE_reset_pipe_write_ack : out std_logic_vector(0 downto 0);
    NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_data: in std_logic_vector(26 downto 0);
    NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_req : in std_logic_vector(0 downto 0);
    NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_ack : out std_logic_vector(0 downto 0)); -- 
  -- 
end entity; 
architecture icache_arch  of icache is -- system-architecture 
  -- interface signals to connect to memory space memory_space_1
  -- declarations related to module IcacheBackendDaemon
  component IcacheBackendDaemon is -- 
    generic (tag_length : integer); 
    port ( -- 
      icache_frontend_to_backend_pipe_read_req : out  std_logic_vector(0 downto 0);
      icache_frontend_to_backend_pipe_read_ack : in   std_logic_vector(0 downto 0);
      icache_frontend_to_backend_pipe_read_data : in   std_logic_vector(41 downto 0);
      ICACHE_to_MMU_request_pipe_write_req : out  std_logic_vector(0 downto 0);
      ICACHE_to_MMU_request_pipe_write_ack : in   std_logic_vector(0 downto 0);
      ICACHE_to_MMU_request_pipe_write_data : out  std_logic_vector(47 downto 0);
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
  -- argument signals for module IcacheBackendDaemon
  signal IcacheBackendDaemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal IcacheBackendDaemon_tag_out   : std_logic_vector(1 downto 0);
  signal IcacheBackendDaemon_start_req : std_logic;
  signal IcacheBackendDaemon_start_ack : std_logic;
  signal IcacheBackendDaemon_fin_req   : std_logic;
  signal IcacheBackendDaemon_fin_ack : std_logic;
  -- declarations related to module IcacheFrontendDaemon
  -- argument signals for module IcacheFrontendDaemon
  signal IcacheFrontendDaemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal IcacheFrontendDaemon_tag_out   : std_logic_vector(1 downto 0);
  signal IcacheFrontendDaemon_start_req : std_logic;
  signal IcacheFrontendDaemon_start_ack : std_logic;
  signal IcacheFrontendDaemon_fin_req   : std_logic;
  signal IcacheFrontendDaemon_fin_ack : std_logic;
  -- declarations related to module IcacheResponseDaemon
  component IcacheResponseDaemon is -- 
    generic (tag_length : integer); 
    port ( -- 
      MMU_to_ICACHE_response_pipe_read_req : out  std_logic_vector(0 downto 0);
      MMU_to_ICACHE_response_pipe_read_ack : in   std_logic_vector(0 downto 0);
      MMU_to_ICACHE_response_pipe_read_data : in   std_logic_vector(92 downto 0);
      noblock_icache_backend_to_frontend_pipe_write_req : out  std_logic_vector(0 downto 0);
      noblock_icache_backend_to_frontend_pipe_write_ack : in   std_logic_vector(0 downto 0);
      noblock_icache_backend_to_frontend_pipe_write_data : out  std_logic_vector(101 downto 0);
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
  -- argument signals for module IcacheResponseDaemon
  signal IcacheResponseDaemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal IcacheResponseDaemon_tag_out   : std_logic_vector(1 downto 0);
  signal IcacheResponseDaemon_start_req : std_logic;
  signal IcacheResponseDaemon_start_ack : std_logic;
  signal IcacheResponseDaemon_fin_req   : std_logic;
  signal IcacheResponseDaemon_fin_ack : std_logic;
  -- declarations related to module accessIcacheArray
  -- declarations related to module accessIcacheTags
  -- declarations related to module analyze_backend_response
  -- declarations related to module classify_cpu_side_requests
  -- declarations related to module icacheAccessPermissionsOk
  -- declarations related to module icacheBlockAlign
  -- declarations related to module icacheBlockId
  -- declarations related to module icacheOffsetInBlock
  -- declarations related to module icache_analyze_flags_from_mmu
  -- declarations related to module isIcacheFlushAsi
  -- declarations related to module isIcacheFlushLineOnly
  -- declarations related to module isIcacheInstructionFetch
  -- declarations related to module isIcacheSupervisorAsi
  -- aggregate signals for write to pipe ICACHE_to_CPU_reset_ack
  signal ICACHE_to_CPU_reset_ack_pipe_write_data: std_logic_vector(0 downto 0);
  signal ICACHE_to_CPU_reset_ack_pipe_write_req: std_logic_vector(0 downto 0);
  signal ICACHE_to_CPU_reset_ack_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe ICACHE_to_CPU_response
  signal ICACHE_to_CPU_response_pipe_write_data: std_logic_vector(89 downto 0);
  signal ICACHE_to_CPU_response_pipe_write_req: std_logic_vector(0 downto 0);
  signal ICACHE_to_CPU_response_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe ICACHE_to_MMU_request
  signal ICACHE_to_MMU_request_pipe_write_data: std_logic_vector(47 downto 0);
  signal ICACHE_to_MMU_request_pipe_write_req: std_logic_vector(0 downto 0);
  signal ICACHE_to_MMU_request_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE
  signal MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_data: std_logic_vector(26 downto 0);
  signal MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_req: std_logic_vector(0 downto 0);
  signal MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe MMU_to_ICACHE_response
  signal MMU_to_ICACHE_response_pipe_read_data: std_logic_vector(92 downto 0);
  signal MMU_to_ICACHE_response_pipe_read_req: std_logic_vector(0 downto 0);
  signal MMU_to_ICACHE_response_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe NOBLOCK_CPU_to_ICACHE_command
  signal NOBLOCK_CPU_to_ICACHE_command_pipe_read_data: std_logic_vector(40 downto 0);
  signal NOBLOCK_CPU_to_ICACHE_command_pipe_read_req: std_logic_vector(0 downto 0);
  signal NOBLOCK_CPU_to_ICACHE_command_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe NOBLOCK_CPU_to_ICACHE_reset
  signal NOBLOCK_CPU_to_ICACHE_reset_pipe_read_data: std_logic_vector(0 downto 0);
  signal NOBLOCK_CPU_to_ICACHE_reset_pipe_read_req: std_logic_vector(0 downto 0);
  signal NOBLOCK_CPU_to_ICACHE_reset_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE
  signal NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_data: std_logic_vector(26 downto 0);
  signal NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_req: std_logic_vector(0 downto 0);
  signal NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe icache_frontend_to_backend
  signal icache_frontend_to_backend_pipe_write_data: std_logic_vector(41 downto 0);
  signal icache_frontend_to_backend_pipe_write_req: std_logic_vector(0 downto 0);
  signal icache_frontend_to_backend_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe icache_frontend_to_backend
  signal icache_frontend_to_backend_pipe_read_data: std_logic_vector(41 downto 0);
  signal icache_frontend_to_backend_pipe_read_req: std_logic_vector(0 downto 0);
  signal icache_frontend_to_backend_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe noblock_icache_backend_to_frontend
  signal noblock_icache_backend_to_frontend_pipe_write_data: std_logic_vector(101 downto 0);
  signal noblock_icache_backend_to_frontend_pipe_write_req: std_logic_vector(0 downto 0);
  signal noblock_icache_backend_to_frontend_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe noblock_icache_backend_to_frontend
  signal noblock_icache_backend_to_frontend_pipe_read_data: std_logic_vector(101 downto 0);
  signal noblock_icache_backend_to_frontend_pipe_read_req: std_logic_vector(0 downto 0);
  signal noblock_icache_backend_to_frontend_pipe_read_ack: std_logic_vector(0 downto 0);
  -- gated clock signal declarations.
  -- 
begin -- 
  -- module IcacheBackendDaemon
  IcacheBackendDaemon_instance:IcacheBackendDaemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => IcacheBackendDaemon_start_req,
      start_ack => IcacheBackendDaemon_start_ack,
      fin_req => IcacheBackendDaemon_fin_req,
      fin_ack => IcacheBackendDaemon_fin_ack,
      clk => clk,
      reset => reset,
      icache_frontend_to_backend_pipe_read_req => icache_frontend_to_backend_pipe_read_req(0 downto 0),
      icache_frontend_to_backend_pipe_read_ack => icache_frontend_to_backend_pipe_read_ack(0 downto 0),
      icache_frontend_to_backend_pipe_read_data => icache_frontend_to_backend_pipe_read_data(41 downto 0),
      ICACHE_to_MMU_request_pipe_write_req => ICACHE_to_MMU_request_pipe_write_req(0 downto 0),
      ICACHE_to_MMU_request_pipe_write_ack => ICACHE_to_MMU_request_pipe_write_ack(0 downto 0),
      ICACHE_to_MMU_request_pipe_write_data => ICACHE_to_MMU_request_pipe_write_data(47 downto 0),
      tag_in => IcacheBackendDaemon_tag_in,
      tag_out => IcacheBackendDaemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  IcacheBackendDaemon_tag_in <= (others => '0');
  IcacheBackendDaemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => IcacheBackendDaemon_start_req, start_ack => IcacheBackendDaemon_start_ack,  fin_req => IcacheBackendDaemon_fin_req,  fin_ack => IcacheBackendDaemon_fin_ack);
  -- module IcacheFrontendDaemon
  IcacheFrontendDaemon_instance:IcacheFrontendDaemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => IcacheFrontendDaemon_start_req,
      start_ack => IcacheFrontendDaemon_start_ack,
      fin_req => IcacheFrontendDaemon_fin_req,
      fin_ack => IcacheFrontendDaemon_fin_ack,
      clk => clk,
      reset => reset,
      noblock_icache_backend_to_frontend_pipe_read_req => noblock_icache_backend_to_frontend_pipe_read_req(0 downto 0),
      noblock_icache_backend_to_frontend_pipe_read_ack => noblock_icache_backend_to_frontend_pipe_read_ack(0 downto 0),
      noblock_icache_backend_to_frontend_pipe_read_data => noblock_icache_backend_to_frontend_pipe_read_data(101 downto 0),
      MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_req => MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_req(0 downto 0),
      MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_ack => MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_ack(0 downto 0),
      MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_data => MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_data(26 downto 0),
      NOBLOCK_CPU_to_ICACHE_command_pipe_read_req => NOBLOCK_CPU_to_ICACHE_command_pipe_read_req(0 downto 0),
      NOBLOCK_CPU_to_ICACHE_command_pipe_read_ack => NOBLOCK_CPU_to_ICACHE_command_pipe_read_ack(0 downto 0),
      NOBLOCK_CPU_to_ICACHE_command_pipe_read_data => NOBLOCK_CPU_to_ICACHE_command_pipe_read_data(40 downto 0),
      NOBLOCK_CPU_to_ICACHE_reset_pipe_read_req => NOBLOCK_CPU_to_ICACHE_reset_pipe_read_req(0 downto 0),
      NOBLOCK_CPU_to_ICACHE_reset_pipe_read_ack => NOBLOCK_CPU_to_ICACHE_reset_pipe_read_ack(0 downto 0),
      NOBLOCK_CPU_to_ICACHE_reset_pipe_read_data => NOBLOCK_CPU_to_ICACHE_reset_pipe_read_data(0 downto 0),
      NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_req => NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_req(0 downto 0),
      NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_ack => NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_ack(0 downto 0),
      NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_data => NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_data(26 downto 0),
      ICACHE_to_CPU_reset_ack_pipe_write_req => ICACHE_to_CPU_reset_ack_pipe_write_req(0 downto 0),
      ICACHE_to_CPU_reset_ack_pipe_write_ack => ICACHE_to_CPU_reset_ack_pipe_write_ack(0 downto 0),
      ICACHE_to_CPU_reset_ack_pipe_write_data => ICACHE_to_CPU_reset_ack_pipe_write_data(0 downto 0),
      ICACHE_to_CPU_response_pipe_write_req => ICACHE_to_CPU_response_pipe_write_req(0 downto 0),
      ICACHE_to_CPU_response_pipe_write_ack => ICACHE_to_CPU_response_pipe_write_ack(0 downto 0),
      ICACHE_to_CPU_response_pipe_write_data => ICACHE_to_CPU_response_pipe_write_data(89 downto 0),
      icache_frontend_to_backend_pipe_write_req => icache_frontend_to_backend_pipe_write_req(0 downto 0),
      icache_frontend_to_backend_pipe_write_ack => icache_frontend_to_backend_pipe_write_ack(0 downto 0),
      icache_frontend_to_backend_pipe_write_data => icache_frontend_to_backend_pipe_write_data(41 downto 0),
      tag_in => IcacheFrontendDaemon_tag_in,
      tag_out => IcacheFrontendDaemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  IcacheFrontendDaemon_tag_in <= (others => '0');
  IcacheFrontendDaemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => IcacheFrontendDaemon_start_req, start_ack => IcacheFrontendDaemon_start_ack,  fin_req => IcacheFrontendDaemon_fin_req,  fin_ack => IcacheFrontendDaemon_fin_ack);
  -- module IcacheResponseDaemon
  IcacheResponseDaemon_instance:IcacheResponseDaemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => IcacheResponseDaemon_start_req,
      start_ack => IcacheResponseDaemon_start_ack,
      fin_req => IcacheResponseDaemon_fin_req,
      fin_ack => IcacheResponseDaemon_fin_ack,
      clk => clk,
      reset => reset,
      MMU_to_ICACHE_response_pipe_read_req => MMU_to_ICACHE_response_pipe_read_req(0 downto 0),
      MMU_to_ICACHE_response_pipe_read_ack => MMU_to_ICACHE_response_pipe_read_ack(0 downto 0),
      MMU_to_ICACHE_response_pipe_read_data => MMU_to_ICACHE_response_pipe_read_data(92 downto 0),
      noblock_icache_backend_to_frontend_pipe_write_req => noblock_icache_backend_to_frontend_pipe_write_req(0 downto 0),
      noblock_icache_backend_to_frontend_pipe_write_ack => noblock_icache_backend_to_frontend_pipe_write_ack(0 downto 0),
      noblock_icache_backend_to_frontend_pipe_write_data => noblock_icache_backend_to_frontend_pipe_write_data(101 downto 0),
      tag_in => IcacheResponseDaemon_tag_in,
      tag_out => IcacheResponseDaemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  IcacheResponseDaemon_tag_in <= (others => '0');
  IcacheResponseDaemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => IcacheResponseDaemon_start_req, start_ack => IcacheResponseDaemon_start_ack,  fin_req => IcacheResponseDaemon_fin_req,  fin_ack => IcacheResponseDaemon_fin_ack);
  ICACHE_to_CPU_reset_ack_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe ICACHE_to_CPU_reset_ack",
      num_reads => 1,
      num_writes => 1,
      data_width => 1,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => ICACHE_to_CPU_reset_ack_pipe_read_req,
      read_ack => ICACHE_to_CPU_reset_ack_pipe_read_ack,
      read_data => ICACHE_to_CPU_reset_ack_pipe_read_data,
      write_req => ICACHE_to_CPU_reset_ack_pipe_write_req,
      write_ack => ICACHE_to_CPU_reset_ack_pipe_write_ack,
      write_data => ICACHE_to_CPU_reset_ack_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  ICACHE_to_CPU_response_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe ICACHE_to_CPU_response",
      num_reads => 1,
      num_writes => 1,
      data_width => 90,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => true,
      depth => 0 --
    )
    port map( -- 
      read_req => ICACHE_to_CPU_response_pipe_read_req,
      read_ack => ICACHE_to_CPU_response_pipe_read_ack,
      read_data => ICACHE_to_CPU_response_pipe_read_data,
      write_req => ICACHE_to_CPU_response_pipe_write_req,
      write_ack => ICACHE_to_CPU_response_pipe_write_ack,
      write_data => ICACHE_to_CPU_response_pipe_write_data,
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
  MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE",
      num_reads => 1,
      num_writes => 1,
      data_width => 27,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_req,
      read_ack => MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_ack,
      read_data => MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_data,
      write_req => MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_req,
      write_ack => MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_ack,
      write_data => MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  MMU_to_ICACHE_response_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe MMU_to_ICACHE_response",
      num_reads => 1,
      num_writes => 1,
      data_width => 93,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => MMU_to_ICACHE_response_pipe_read_req,
      read_ack => MMU_to_ICACHE_response_pipe_read_ack,
      read_data => MMU_to_ICACHE_response_pipe_read_data,
      write_req => MMU_to_ICACHE_response_pipe_write_req,
      write_ack => MMU_to_ICACHE_response_pipe_write_ack,
      write_data => MMU_to_ICACHE_response_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  NOBLOCK_CPU_to_ICACHE_command_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe NOBLOCK_CPU_to_ICACHE_command",
      num_reads => 1,
      num_writes => 1,
      data_width => 41,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => true,
      depth => 0 --
    )
    port map( -- 
      read_req => NOBLOCK_CPU_to_ICACHE_command_pipe_read_req,
      read_ack => NOBLOCK_CPU_to_ICACHE_command_pipe_read_ack,
      read_data => NOBLOCK_CPU_to_ICACHE_command_pipe_read_data,
      write_req => NOBLOCK_CPU_to_ICACHE_command_pipe_write_req,
      write_ack => NOBLOCK_CPU_to_ICACHE_command_pipe_write_ack,
      write_data => NOBLOCK_CPU_to_ICACHE_command_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  NOBLOCK_CPU_to_ICACHE_reset_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe NOBLOCK_CPU_to_ICACHE_reset",
      num_reads => 1,
      num_writes => 1,
      data_width => 1,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => NOBLOCK_CPU_to_ICACHE_reset_pipe_read_req,
      read_ack => NOBLOCK_CPU_to_ICACHE_reset_pipe_read_ack,
      read_data => NOBLOCK_CPU_to_ICACHE_reset_pipe_read_data,
      write_req => NOBLOCK_CPU_to_ICACHE_reset_pipe_write_req,
      write_ack => NOBLOCK_CPU_to_ICACHE_reset_pipe_write_ack,
      write_data => NOBLOCK_CPU_to_ICACHE_reset_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE",
      num_reads => 1,
      num_writes => 1,
      data_width => 27,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_req,
      read_ack => NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_ack,
      read_data => NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_data,
      write_req => NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_req,
      write_ack => NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_ack,
      write_data => NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  icache_frontend_to_backend_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe icache_frontend_to_backend",
      num_reads => 1,
      num_writes => 1,
      data_width => 42,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => true,
      depth => 0 --
    )
    port map( -- 
      read_req => icache_frontend_to_backend_pipe_read_req,
      read_ack => icache_frontend_to_backend_pipe_read_ack,
      read_data => icache_frontend_to_backend_pipe_read_data,
      write_req => icache_frontend_to_backend_pipe_write_req,
      write_ack => icache_frontend_to_backend_pipe_write_ack,
      write_data => icache_frontend_to_backend_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  noblock_icache_backend_to_frontend_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe noblock_icache_backend_to_frontend",
      num_reads => 1,
      num_writes => 1,
      data_width => 102,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => true,
      depth => 2 --
    )
    port map( -- 
      read_req => noblock_icache_backend_to_frontend_pipe_read_req,
      read_ack => noblock_icache_backend_to_frontend_pipe_read_ack,
      read_data => noblock_icache_backend_to_frontend_pipe_read_data,
      write_req => noblock_icache_backend_to_frontend_pipe_write_req,
      write_ack => noblock_icache_backend_to_frontend_pipe_write_ack,
      write_data => noblock_icache_backend_to_frontend_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- gated clock generators 
  -- 
end icache_arch;
