-- VHDL global package produced by vc2vhdl from virtual circuit (vc) description 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
package dummy_mmu_global_package is -- 
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
  constant DACCESS : std_logic_vector(1 downto 0) := "10";
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
  constant IACCESS : std_logic_vector(1 downto 0) := "01";
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
  constant NOFAULT : std_logic_vector(1 downto 0) := "00";
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
  constant acc_ok_for_all : std_logic_vector(2 downto 0) := "011";
  constant default_mem_pool_base_address : std_logic_vector(0 downto 0) := "0";
  component dummy_mmu is -- 
    port (-- 
      clk : in std_logic;
      reset : in std_logic;
      CORE_BUS_REQUEST_pipe_read_data: out std_logic_vector(109 downto 0);
      CORE_BUS_REQUEST_pipe_read_req : in std_logic_vector(0 downto 0);
      CORE_BUS_REQUEST_pipe_read_ack : out std_logic_vector(0 downto 0);
      CORE_BUS_RESPONSE_pipe_write_data: in std_logic_vector(64 downto 0);
      CORE_BUS_RESPONSE_pipe_write_req : in std_logic_vector(0 downto 0);
      CORE_BUS_RESPONSE_pipe_write_ack : out std_logic_vector(0 downto 0);
      INVALIDATE_REQUEST_pipe_write_data: in std_logic_vector(29 downto 0);
      INVALIDATE_REQUEST_pipe_write_req : in std_logic_vector(0 downto 0);
      INVALIDATE_REQUEST_pipe_write_ack : out std_logic_vector(0 downto 0);
      MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_data: out std_logic_vector(26 downto 0);
      MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_req : in std_logic_vector(0 downto 0);
      MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_ack : out std_logic_vector(0 downto 0);
      MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_data: out std_logic_vector(26 downto 0);
      MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_req : in std_logic_vector(0 downto 0);
      MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_ack : out std_logic_vector(0 downto 0);
      MMU_to_CPU_reset_ack_pipe_read_data: out std_logic_vector(0 downto 0);
      MMU_to_CPU_reset_ack_pipe_read_req : in std_logic_vector(0 downto 0);
      MMU_to_CPU_reset_ack_pipe_read_ack : out std_logic_vector(0 downto 0);
      MMU_to_DCACHE_response_pipe_read_data: out std_logic_vector(74 downto 0);
      MMU_to_DCACHE_response_pipe_read_req : in std_logic_vector(0 downto 0);
      MMU_to_DCACHE_response_pipe_read_ack : out std_logic_vector(0 downto 0);
      MMU_to_ICACHE_response_pipe_read_data: out std_logic_vector(92 downto 0);
      MMU_to_ICACHE_response_pipe_read_req : in std_logic_vector(0 downto 0);
      MMU_to_ICACHE_response_pipe_read_ack : out std_logic_vector(0 downto 0);
      NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_write_data: in std_logic_vector(121 downto 0);
      NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_write_req : in std_logic_vector(0 downto 0);
      NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_write_ack : out std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_MMU_reset_pipe_write_data: in std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_MMU_reset_pipe_write_req : in std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_MMU_reset_pipe_write_ack : out std_logic_vector(0 downto 0);
      NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_read_data: out std_logic_vector(0 downto 0);
      NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_read_req : in std_logic_vector(0 downto 0);
      NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_read_ack : out std_logic_vector(0 downto 0);
      NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_data: out std_logic_vector(26 downto 0);
      NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_req : in std_logic_vector(0 downto 0);
      NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_ack : out std_logic_vector(0 downto 0);
      NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_data: out std_logic_vector(26 downto 0);
      NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_req : in std_logic_vector(0 downto 0);
      NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_ack : out std_logic_vector(0 downto 0)); -- 
    -- 
  end component;
  -- 
end package dummy_mmu_global_package;
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
library munit_dummy_mmu;
use munit_dummy_mmu.dummy_mmu_global_package.all;
entity accessMemLineAndSendResponse is -- 
  generic (tag_length : integer); 
  port ( -- 
    send_line_to_dcache : in  std_logic_vector(0 downto 0);
    send_line_to_icache : in  std_logic_vector(0 downto 0);
    write_dword : in  std_logic_vector(0 downto 0);
    access_mem_line : in  std_logic_vector(0 downto 0);
    lock_bus : in  std_logic_vector(0 downto 0);
    first_dword_id : in  std_logic_vector(2 downto 0);
    acc : in  std_logic_vector(2 downto 0);
    line_aligned_addr : in  std_logic_vector(35 downto 0);
    write_byte_mask : in  std_logic_vector(7 downto 0);
    write_data : in  std_logic_vector(63 downto 0);
    access_error : out  std_logic_vector(0 downto 0);
    singleMemAccessAndSendResponse_call_reqs : out  std_logic_vector(0 downto 0);
    singleMemAccessAndSendResponse_call_acks : in   std_logic_vector(0 downto 0);
    singleMemAccessAndSendResponse_call_data : out  std_logic_vector(142 downto 0);
    singleMemAccessAndSendResponse_call_tag  :  out  std_logic_vector(0 downto 0);
    singleMemAccessAndSendResponse_return_reqs : out  std_logic_vector(0 downto 0);
    singleMemAccessAndSendResponse_return_acks : in   std_logic_vector(0 downto 0);
    singleMemAccessAndSendResponse_return_data : in   std_logic_vector(0 downto 0);
    singleMemAccessAndSendResponse_return_tag :  in   std_logic_vector(0 downto 0);
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
end entity accessMemLineAndSendResponse;
architecture accessMemLineAndSendResponse_arch of accessMemLineAndSendResponse is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector((tag_length + 119)-1 downto 0);
  signal default_zero_sig: std_logic;
  signal in_buffer_write_req: std_logic;
  signal in_buffer_write_ack: std_logic;
  signal in_buffer_unload_req_symbol: Boolean;
  signal in_buffer_unload_ack_symbol: Boolean;
  signal out_buffer_data_in, out_buffer_data_out: std_logic_vector((tag_length + 1)-1 downto 0);
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
  signal send_line_to_dcache_buffer :  std_logic_vector(0 downto 0);
  signal send_line_to_dcache_update_enable: Boolean;
  signal send_line_to_icache_buffer :  std_logic_vector(0 downto 0);
  signal send_line_to_icache_update_enable: Boolean;
  signal write_dword_buffer :  std_logic_vector(0 downto 0);
  signal write_dword_update_enable: Boolean;
  signal access_mem_line_buffer :  std_logic_vector(0 downto 0);
  signal access_mem_line_update_enable: Boolean;
  signal lock_bus_buffer :  std_logic_vector(0 downto 0);
  signal lock_bus_update_enable: Boolean;
  signal first_dword_id_buffer :  std_logic_vector(2 downto 0);
  signal first_dword_id_update_enable: Boolean;
  signal acc_buffer :  std_logic_vector(2 downto 0);
  signal acc_update_enable: Boolean;
  signal line_aligned_addr_buffer :  std_logic_vector(35 downto 0);
  signal line_aligned_addr_update_enable: Boolean;
  signal write_byte_mask_buffer :  std_logic_vector(7 downto 0);
  signal write_byte_mask_update_enable: Boolean;
  signal write_data_buffer :  std_logic_vector(63 downto 0);
  signal write_data_update_enable: Boolean;
  -- output port buffer signals
  signal access_error_buffer :  std_logic_vector(0 downto 0);
  signal access_error_update_enable: Boolean;
  signal accessMemLineAndSendResponse_CP_602_start: Boolean;
  signal accessMemLineAndSendResponse_CP_602_symbol: Boolean;
  -- volatile/operator module components. 
  component singleMemAccessAndSendResponse is -- 
    generic (tag_length : integer); 
    port ( -- 
      ret_token : in  std_logic_vector(0 downto 0);
      lock_bus : in  std_logic_vector(0 downto 0);
      last_access : in  std_logic_vector(0 downto 0);
      send_to_dcache : in  std_logic_vector(0 downto 0);
      send_to_icache : in  std_logic_vector(0 downto 0);
      do_mem_write : in  std_logic_vector(0 downto 0);
      do_mem_read : in  std_logic_vector(0 downto 0);
      access_mem_line : in  std_logic_vector(0 downto 0);
      is_ctrl_reg_read : in  std_logic_vector(0 downto 0);
      do_not_send_write_response : in  std_logic_vector(0 downto 0);
      acc : in  std_logic_vector(2 downto 0);
      faulty_fsr_generated : in  std_logic_vector(0 downto 0);
      cacheable : in  std_logic_vector(0 downto 0);
      mae : in  std_logic_vector(0 downto 0);
      pte_error : in  std_logic_vector(0 downto 0);
      fsr : in  std_logic_vector(17 downto 0);
      byte_mask : in  std_logic_vector(7 downto 0);
      addr : in  std_logic_vector(35 downto 0);
      write_data : in  std_logic_vector(63 downto 0);
      access_error : out  std_logic_vector(0 downto 0);
      MMU_to_DCACHE_response_pipe_write_req : out  std_logic_vector(0 downto 0);
      MMU_to_DCACHE_response_pipe_write_ack : in   std_logic_vector(0 downto 0);
      MMU_to_DCACHE_response_pipe_write_data : out  std_logic_vector(74 downto 0);
      MMU_to_ICACHE_response_pipe_write_req : out  std_logic_vector(0 downto 0);
      MMU_to_ICACHE_response_pipe_write_ack : in   std_logic_vector(0 downto 0);
      MMU_to_ICACHE_response_pipe_write_data : out  std_logic_vector(92 downto 0);
      NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_req : out  std_logic_vector(0 downto 0);
      NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_ack : in   std_logic_vector(0 downto 0);
      NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_data : out  std_logic_vector(0 downto 0);
      noblock_dword_token_return_pipe_write_req : out  std_logic_vector(0 downto 0);
      noblock_dword_token_return_pipe_write_ack : in   std_logic_vector(0 downto 0);
      noblock_dword_token_return_pipe_write_data : out  std_logic_vector(0 downto 0);
      singleMemAccess_call_reqs : out  std_logic_vector(0 downto 0);
      singleMemAccess_call_acks : in   std_logic_vector(0 downto 0);
      singleMemAccess_call_data : out  std_logic_vector(109 downto 0);
      singleMemAccess_call_tag  :  out  std_logic_vector(0 downto 0);
      singleMemAccess_return_reqs : out  std_logic_vector(0 downto 0);
      singleMemAccess_return_acks : in   std_logic_vector(0 downto 0);
      singleMemAccess_return_data : in   std_logic_vector(64 downto 0);
      singleMemAccess_return_tag :  in   std_logic_vector(0 downto 0);
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
  -- links between control-path and data-path
  signal call_stmt_1507_call_ack_0 : boolean;
  signal W_access_error_1511_inst_ack_0 : boolean;
  signal call_stmt_1507_call_req_1 : boolean;
  signal slice_1409_inst_ack_0 : boolean;
  signal do_while_stmt_1394_branch_ack_1 : boolean;
  signal call_stmt_1507_call_req_0 : boolean;
  signal slice_1409_inst_req_0 : boolean;
  signal W_access_error_1511_inst_req_0 : boolean;
  signal call_stmt_1507_call_ack_1 : boolean;
  signal W_access_error_1511_inst_ack_1 : boolean;
  signal do_while_stmt_1394_branch_ack_0 : boolean;
  signal W_access_error_1511_inst_req_1 : boolean;
  signal slice_1409_inst_ack_1 : boolean;
  signal slice_1409_inst_req_1 : boolean;
  signal do_while_stmt_1394_branch_req_0 : boolean;
  signal phi_stmt_1396_req_0 : boolean;
  signal phi_stmt_1396_req_1 : boolean;
  signal phi_stmt_1396_ack_0 : boolean;
  signal next_dword_id_1427_1398_buf_req_0 : boolean;
  signal next_dword_id_1427_1398_buf_ack_0 : boolean;
  signal next_dword_id_1427_1398_buf_req_1 : boolean;
  signal next_dword_id_1427_1398_buf_ack_1 : boolean;
  signal first_dword_id_1399_buf_req_0 : boolean;
  signal first_dword_id_1399_buf_ack_0 : boolean;
  signal first_dword_id_1399_buf_req_1 : boolean;
  signal first_dword_id_1399_buf_ack_1 : boolean;
  signal phi_stmt_1400_req_0 : boolean;
  signal phi_stmt_1400_req_1 : boolean;
  signal phi_stmt_1400_ack_0 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "accessMemLineAndSendResponse_input_buffer", -- 
      buffer_size => 0,
      bypass_flag => true,
      data_width => tag_length + 119) -- 
    port map(write_req => in_buffer_write_req, -- 
      write_ack => in_buffer_write_ack, 
      write_data => in_buffer_data_in,
      unload_req => in_buffer_unload_req_symbol, 
      unload_ack => in_buffer_unload_ack_symbol, 
      read_data => in_buffer_data_out,
      clk => clk, reset => reset); -- 
  in_buffer_data_in(0 downto 0) <= send_line_to_dcache;
  send_line_to_dcache_buffer <= in_buffer_data_out(0 downto 0);
  in_buffer_data_in(1 downto 1) <= send_line_to_icache;
  send_line_to_icache_buffer <= in_buffer_data_out(1 downto 1);
  in_buffer_data_in(2 downto 2) <= write_dword;
  write_dword_buffer <= in_buffer_data_out(2 downto 2);
  in_buffer_data_in(3 downto 3) <= access_mem_line;
  access_mem_line_buffer <= in_buffer_data_out(3 downto 3);
  in_buffer_data_in(4 downto 4) <= lock_bus;
  lock_bus_buffer <= in_buffer_data_out(4 downto 4);
  in_buffer_data_in(7 downto 5) <= first_dword_id;
  first_dword_id_buffer <= in_buffer_data_out(7 downto 5);
  in_buffer_data_in(10 downto 8) <= acc;
  acc_buffer <= in_buffer_data_out(10 downto 8);
  in_buffer_data_in(46 downto 11) <= line_aligned_addr;
  line_aligned_addr_buffer <= in_buffer_data_out(46 downto 11);
  in_buffer_data_in(54 downto 47) <= write_byte_mask;
  write_byte_mask_buffer <= in_buffer_data_out(54 downto 47);
  in_buffer_data_in(118 downto 55) <= write_data;
  write_data_buffer <= in_buffer_data_out(118 downto 55);
  in_buffer_data_in(tag_length + 118 downto 119) <= tag_in;
  tag_ub_out <= in_buffer_data_out(tag_length + 118 downto 119);
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
  accessMemLineAndSendResponse_CP_602_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "accessMemLineAndSendResponse_out_buffer", -- 
      buffer_size => 0,
      full_rate => false,
      data_width => tag_length + 1) --
    port map(write_req => out_buffer_write_req_symbol, -- 
      write_ack => out_buffer_write_ack_symbol, 
      write_data => out_buffer_data_in,
      read_req => out_buffer_read_req, 
      read_ack => out_buffer_read_ack, 
      read_data => out_buffer_data_out,
      clk => clk, reset => reset); -- 
  out_buffer_data_in(0 downto 0) <= access_error_buffer;
  access_error <= out_buffer_data_out(0 downto 0);
  out_buffer_data_in(tag_length + 0 downto 1) <= tag_ilock_out;
  tag_out <= out_buffer_data_out(tag_length + 0 downto 1);
  out_buffer_write_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
    constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 0);
    constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 1,2 => 0);
    constant joinName: string(1 to 32) := "out_buffer_write_req_symbol_join"; 
    signal preds: BooleanArray(1 to 3); -- 
  begin -- 
    preds <= accessMemLineAndSendResponse_CP_602_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
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
    preds <= accessMemLineAndSendResponse_CP_602_start & tag_ilock_write_ack_symbol;
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
    preds <= accessMemLineAndSendResponse_CP_602_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  accessMemLineAndSendResponse_CP_602: Block -- control-path 
    signal accessMemLineAndSendResponse_CP_602_elements: BooleanArray(66 downto 0);
    -- 
  begin -- 
    accessMemLineAndSendResponse_CP_602_elements(0) <= accessMemLineAndSendResponse_CP_602_start;
    accessMemLineAndSendResponse_CP_602_symbol <= accessMemLineAndSendResponse_CP_602_elements(66);
    -- CP-element group 0:  transition  place  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	2 
    -- CP-element group 0:  members (4) 
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 branch_block_stmt_1393/$entry
      -- CP-element group 0: 	 branch_block_stmt_1393/branch_block_stmt_1393__entry__
      -- CP-element group 0: 	 branch_block_stmt_1393/do_while_stmt_1394__entry__
      -- 
    -- CP-element group 1:  fork  transition  place  output  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	64 
    -- CP-element group 1: successors 
    -- CP-element group 1: 	65 
    -- CP-element group 1: 	66 
    -- CP-element group 1:  members (10) 
      -- CP-element group 1: 	 assign_stmt_1513/$entry
      -- CP-element group 1: 	 assign_stmt_1513/assign_stmt_1513_Update/$entry
      -- CP-element group 1: 	 assign_stmt_1513/assign_stmt_1513_sample_start_
      -- CP-element group 1: 	 assign_stmt_1513/assign_stmt_1513_Sample/$entry
      -- CP-element group 1: 	 assign_stmt_1513/assign_stmt_1513_Sample/req
      -- CP-element group 1: 	 assign_stmt_1513/assign_stmt_1513_update_start_
      -- CP-element group 1: 	 assign_stmt_1513/assign_stmt_1513_Update/req
      -- CP-element group 1: 	 branch_block_stmt_1393/$exit
      -- CP-element group 1: 	 branch_block_stmt_1393/branch_block_stmt_1393__exit__
      -- CP-element group 1: 	 branch_block_stmt_1393/do_while_stmt_1394__exit__
      -- 
    req_769_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_769_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accessMemLineAndSendResponse_CP_602_elements(1), ack => W_access_error_1511_inst_req_0); -- 
    req_774_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_774_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accessMemLineAndSendResponse_CP_602_elements(1), ack => W_access_error_1511_inst_req_1); -- 
    accessMemLineAndSendResponse_CP_602_elements(1) <= accessMemLineAndSendResponse_CP_602_elements(64);
    -- CP-element group 2:  transition  place  bypass  pipeline-parent 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	0 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	8 
    -- CP-element group 2:  members (2) 
      -- CP-element group 2: 	 branch_block_stmt_1393/do_while_stmt_1394/$entry
      -- CP-element group 2: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394__entry__
      -- 
    accessMemLineAndSendResponse_CP_602_elements(2) <= accessMemLineAndSendResponse_CP_602_elements(0);
    -- CP-element group 3:  merge  place  bypass  pipeline-parent 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	64 
    -- CP-element group 3:  members (1) 
      -- CP-element group 3: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394__exit__
      -- 
    -- Element group accessMemLineAndSendResponse_CP_602_elements(3) is bound as output of CP function.
    -- CP-element group 4:  merge  place  bypass  pipeline-parent 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	7 
    -- CP-element group 4:  members (1) 
      -- CP-element group 4: 	 branch_block_stmt_1393/do_while_stmt_1394/loop_back
      -- 
    -- Element group accessMemLineAndSendResponse_CP_602_elements(4) is bound as output of CP function.
    -- CP-element group 5:  branch  transition  place  bypass  pipeline-parent 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	10 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	63 
    -- CP-element group 5: 	62 
    -- CP-element group 5:  members (3) 
      -- CP-element group 5: 	 branch_block_stmt_1393/do_while_stmt_1394/loop_exit/$entry
      -- CP-element group 5: 	 branch_block_stmt_1393/do_while_stmt_1394/loop_taken/$entry
      -- CP-element group 5: 	 branch_block_stmt_1393/do_while_stmt_1394/condition_done
      -- 
    accessMemLineAndSendResponse_CP_602_elements(5) <= accessMemLineAndSendResponse_CP_602_elements(10);
    -- CP-element group 6:  branch  place  bypass  pipeline-parent 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	61 
    -- CP-element group 6: successors 
    -- CP-element group 6:  members (1) 
      -- CP-element group 6: 	 branch_block_stmt_1393/do_while_stmt_1394/loop_body_done
      -- 
    accessMemLineAndSendResponse_CP_602_elements(6) <= accessMemLineAndSendResponse_CP_602_elements(61);
    -- CP-element group 7:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	4 
    -- CP-element group 7: successors 
    -- CP-element group 7: 	20 
    -- CP-element group 7: 	39 
    -- CP-element group 7:  members (1) 
      -- CP-element group 7: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/back_edge_to_loop_body
      -- 
    accessMemLineAndSendResponse_CP_602_elements(7) <= accessMemLineAndSendResponse_CP_602_elements(4);
    -- CP-element group 8:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	2 
    -- CP-element group 8: successors 
    -- CP-element group 8: 	22 
    -- CP-element group 8: 	41 
    -- CP-element group 8:  members (1) 
      -- CP-element group 8: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/first_time_through_loop_body
      -- 
    accessMemLineAndSendResponse_CP_602_elements(8) <= accessMemLineAndSendResponse_CP_602_elements(2);
    -- CP-element group 9:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	60 
    -- CP-element group 9: 	16 
    -- CP-element group 9: 	17 
    -- CP-element group 9: 	33 
    -- CP-element group 9: 	34 
    -- CP-element group 9: 	52 
    -- CP-element group 9:  members (2) 
      -- CP-element group 9: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/$entry
      -- CP-element group 9: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/loop_body_start
      -- 
    -- Element group accessMemLineAndSendResponse_CP_602_elements(9) is bound as output of CP function.
    -- CP-element group 10:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	60 
    -- CP-element group 10: 	13 
    -- CP-element group 10: 	15 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	5 
    -- CP-element group 10:  members (1) 
      -- CP-element group 10: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/condition_evaluated
      -- 
    condition_evaluated_626_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " condition_evaluated_626_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accessMemLineAndSendResponse_CP_602_elements(10), ack => do_while_stmt_1394_branch_req_0); -- 
    accessMemLineAndSendResponse_cp_element_group_10: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 48) := "accessMemLineAndSendResponse_cp_element_group_10"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= accessMemLineAndSendResponse_CP_602_elements(60) & accessMemLineAndSendResponse_CP_602_elements(13) & accessMemLineAndSendResponse_CP_602_elements(15);
      gj_accessMemLineAndSendResponse_cp_element_group_10 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => accessMemLineAndSendResponse_CP_602_elements(10), clk => clk, reset => reset); --
    end block;
    -- CP-element group 11:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	16 
    -- CP-element group 11: 	33 
    -- CP-element group 11: marked-predecessors 
    -- CP-element group 11: 	15 
    -- CP-element group 11: successors 
    -- CP-element group 11: 	35 
    -- CP-element group 11:  members (2) 
      -- CP-element group 11: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/aggregated_phi_sample_req
      -- CP-element group 11: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/phi_stmt_1396_sample_start__ps
      -- 
    accessMemLineAndSendResponse_cp_element_group_11: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 48) := "accessMemLineAndSendResponse_cp_element_group_11"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= accessMemLineAndSendResponse_CP_602_elements(16) & accessMemLineAndSendResponse_CP_602_elements(33) & accessMemLineAndSendResponse_CP_602_elements(15);
      gj_accessMemLineAndSendResponse_cp_element_group_11 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => accessMemLineAndSendResponse_CP_602_elements(11), clk => clk, reset => reset); --
    end block;
    -- CP-element group 12:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	18 
    -- CP-element group 12: 	36 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	61 
    -- CP-element group 12: 	13 
    -- CP-element group 12: marked-successors 
    -- CP-element group 12: 	16 
    -- CP-element group 12: 	33 
    -- CP-element group 12:  members (3) 
      -- CP-element group 12: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/aggregated_phi_sample_ack
      -- CP-element group 12: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/phi_stmt_1396_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/phi_stmt_1400_sample_completed_
      -- 
    accessMemLineAndSendResponse_cp_element_group_12: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 48) := "accessMemLineAndSendResponse_cp_element_group_12"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= accessMemLineAndSendResponse_CP_602_elements(18) & accessMemLineAndSendResponse_CP_602_elements(36);
      gj_accessMemLineAndSendResponse_cp_element_group_12 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => accessMemLineAndSendResponse_CP_602_elements(12), clk => clk, reset => reset); --
    end block;
    -- CP-element group 13:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: 	12 
    -- CP-element group 13: successors 
    -- CP-element group 13: 	10 
    -- CP-element group 13:  members (1) 
      -- CP-element group 13: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/aggregated_phi_sample_ack_d
      -- 
    -- Element group accessMemLineAndSendResponse_CP_602_elements(13) is a control-delay.
    cp_element_13_delay: control_delay_element  generic map(name => " 13_delay", delay_value => 1)  port map(req => accessMemLineAndSendResponse_CP_602_elements(12), ack => accessMemLineAndSendResponse_CP_602_elements(13), clk => clk, reset =>reset);
    -- CP-element group 14:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: 	17 
    -- CP-element group 14: 	34 
    -- CP-element group 14: successors 
    -- CP-element group 14: 	37 
    -- CP-element group 14:  members (2) 
      -- CP-element group 14: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/aggregated_phi_update_req
      -- CP-element group 14: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/phi_stmt_1396_update_start__ps
      -- 
    accessMemLineAndSendResponse_cp_element_group_14: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 48) := "accessMemLineAndSendResponse_cp_element_group_14"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= accessMemLineAndSendResponse_CP_602_elements(17) & accessMemLineAndSendResponse_CP_602_elements(34);
      gj_accessMemLineAndSendResponse_cp_element_group_14 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => accessMemLineAndSendResponse_CP_602_elements(14), clk => clk, reset => reset); --
    end block;
    -- CP-element group 15:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: 	19 
    -- CP-element group 15: 	38 
    -- CP-element group 15: successors 
    -- CP-element group 15: 	10 
    -- CP-element group 15: marked-successors 
    -- CP-element group 15: 	11 
    -- CP-element group 15:  members (1) 
      -- CP-element group 15: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/aggregated_phi_update_ack
      -- 
    accessMemLineAndSendResponse_cp_element_group_15: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 48) := "accessMemLineAndSendResponse_cp_element_group_15"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= accessMemLineAndSendResponse_CP_602_elements(19) & accessMemLineAndSendResponse_CP_602_elements(38);
      gj_accessMemLineAndSendResponse_cp_element_group_15 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => accessMemLineAndSendResponse_CP_602_elements(15), clk => clk, reset => reset); --
    end block;
    -- CP-element group 16:  join  transition  bypass  pipeline-parent 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: 	9 
    -- CP-element group 16: marked-predecessors 
    -- CP-element group 16: 	12 
    -- CP-element group 16: successors 
    -- CP-element group 16: 	11 
    -- CP-element group 16:  members (1) 
      -- CP-element group 16: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/phi_stmt_1396_sample_start_
      -- 
    accessMemLineAndSendResponse_cp_element_group_16: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 48) := "accessMemLineAndSendResponse_cp_element_group_16"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= accessMemLineAndSendResponse_CP_602_elements(9) & accessMemLineAndSendResponse_CP_602_elements(12);
      gj_accessMemLineAndSendResponse_cp_element_group_16 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => accessMemLineAndSendResponse_CP_602_elements(16), clk => clk, reset => reset); --
    end block;
    -- CP-element group 17:  join  transition  bypass  pipeline-parent 
    -- CP-element group 17: predecessors 
    -- CP-element group 17: 	9 
    -- CP-element group 17: marked-predecessors 
    -- CP-element group 17: 	58 
    -- CP-element group 17: successors 
    -- CP-element group 17: 	14 
    -- CP-element group 17:  members (1) 
      -- CP-element group 17: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/phi_stmt_1396_update_start_
      -- 
    accessMemLineAndSendResponse_cp_element_group_17: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 48) := "accessMemLineAndSendResponse_cp_element_group_17"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= accessMemLineAndSendResponse_CP_602_elements(9) & accessMemLineAndSendResponse_CP_602_elements(58);
      gj_accessMemLineAndSendResponse_cp_element_group_17 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => accessMemLineAndSendResponse_CP_602_elements(17), clk => clk, reset => reset); --
    end block;
    -- CP-element group 18:  join  transition  bypass  pipeline-parent 
    -- CP-element group 18: predecessors 
    -- CP-element group 18: successors 
    -- CP-element group 18: 	12 
    -- CP-element group 18:  members (1) 
      -- CP-element group 18: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/phi_stmt_1396_sample_completed__ps
      -- 
    -- Element group accessMemLineAndSendResponse_CP_602_elements(18) is bound as output of CP function.
    -- CP-element group 19:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 19: predecessors 
    -- CP-element group 19: successors 
    -- CP-element group 19: 	56 
    -- CP-element group 19: 	15 
    -- CP-element group 19:  members (2) 
      -- CP-element group 19: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/phi_stmt_1396_update_completed_
      -- CP-element group 19: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/phi_stmt_1396_update_completed__ps
      -- 
    -- Element group accessMemLineAndSendResponse_CP_602_elements(19) is bound as output of CP function.
    -- CP-element group 20:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 20: predecessors 
    -- CP-element group 20: 	7 
    -- CP-element group 20: successors 
    -- CP-element group 20:  members (1) 
      -- CP-element group 20: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/phi_stmt_1396_loopback_trigger
      -- 
    accessMemLineAndSendResponse_CP_602_elements(20) <= accessMemLineAndSendResponse_CP_602_elements(7);
    -- CP-element group 21:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 21: predecessors 
    -- CP-element group 21: successors 
    -- CP-element group 21:  members (2) 
      -- CP-element group 21: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/phi_stmt_1396_loopback_sample_req
      -- CP-element group 21: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/phi_stmt_1396_loopback_sample_req_ps
      -- 
    phi_stmt_1396_loopback_sample_req_642_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_1396_loopback_sample_req_642_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accessMemLineAndSendResponse_CP_602_elements(21), ack => phi_stmt_1396_req_0); -- 
    -- Element group accessMemLineAndSendResponse_CP_602_elements(21) is bound as output of CP function.
    -- CP-element group 22:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 22: predecessors 
    -- CP-element group 22: 	8 
    -- CP-element group 22: successors 
    -- CP-element group 22:  members (1) 
      -- CP-element group 22: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/phi_stmt_1396_entry_trigger
      -- 
    accessMemLineAndSendResponse_CP_602_elements(22) <= accessMemLineAndSendResponse_CP_602_elements(8);
    -- CP-element group 23:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 23: predecessors 
    -- CP-element group 23: successors 
    -- CP-element group 23:  members (2) 
      -- CP-element group 23: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/phi_stmt_1396_entry_sample_req
      -- CP-element group 23: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/phi_stmt_1396_entry_sample_req_ps
      -- 
    phi_stmt_1396_entry_sample_req_645_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_1396_entry_sample_req_645_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accessMemLineAndSendResponse_CP_602_elements(23), ack => phi_stmt_1396_req_1); -- 
    -- Element group accessMemLineAndSendResponse_CP_602_elements(23) is bound as output of CP function.
    -- CP-element group 24:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 24: predecessors 
    -- CP-element group 24: successors 
    -- CP-element group 24:  members (2) 
      -- CP-element group 24: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/phi_stmt_1396_phi_mux_ack
      -- CP-element group 24: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/phi_stmt_1396_phi_mux_ack_ps
      -- 
    phi_stmt_1396_phi_mux_ack_648_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 24_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_1396_ack_0, ack => accessMemLineAndSendResponse_CP_602_elements(24)); -- 
    -- CP-element group 25:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 25: predecessors 
    -- CP-element group 25: successors 
    -- CP-element group 25: 	27 
    -- CP-element group 25:  members (4) 
      -- CP-element group 25: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/R_next_dword_id_1398_sample_start__ps
      -- CP-element group 25: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/R_next_dword_id_1398_sample_start_
      -- CP-element group 25: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/R_next_dword_id_1398_Sample/$entry
      -- CP-element group 25: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/R_next_dword_id_1398_Sample/req
      -- 
    req_661_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_661_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accessMemLineAndSendResponse_CP_602_elements(25), ack => next_dword_id_1427_1398_buf_req_0); -- 
    -- Element group accessMemLineAndSendResponse_CP_602_elements(25) is bound as output of CP function.
    -- CP-element group 26:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 26: predecessors 
    -- CP-element group 26: successors 
    -- CP-element group 26: 	28 
    -- CP-element group 26:  members (4) 
      -- CP-element group 26: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/R_next_dword_id_1398_update_start__ps
      -- CP-element group 26: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/R_next_dword_id_1398_update_start_
      -- CP-element group 26: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/R_next_dword_id_1398_Update/$entry
      -- CP-element group 26: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/R_next_dword_id_1398_Update/req
      -- 
    req_666_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_666_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accessMemLineAndSendResponse_CP_602_elements(26), ack => next_dword_id_1427_1398_buf_req_1); -- 
    -- Element group accessMemLineAndSendResponse_CP_602_elements(26) is bound as output of CP function.
    -- CP-element group 27:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 27: predecessors 
    -- CP-element group 27: 	25 
    -- CP-element group 27: successors 
    -- CP-element group 27:  members (4) 
      -- CP-element group 27: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/R_next_dword_id_1398_sample_completed__ps
      -- CP-element group 27: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/R_next_dword_id_1398_sample_completed_
      -- CP-element group 27: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/R_next_dword_id_1398_Sample/$exit
      -- CP-element group 27: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/R_next_dword_id_1398_Sample/ack
      -- 
    ack_662_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 27_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_dword_id_1427_1398_buf_ack_0, ack => accessMemLineAndSendResponse_CP_602_elements(27)); -- 
    -- CP-element group 28:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 28: predecessors 
    -- CP-element group 28: 	26 
    -- CP-element group 28: successors 
    -- CP-element group 28:  members (4) 
      -- CP-element group 28: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/R_next_dword_id_1398_update_completed__ps
      -- CP-element group 28: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/R_next_dword_id_1398_update_completed_
      -- CP-element group 28: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/R_next_dword_id_1398_Update/$exit
      -- CP-element group 28: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/R_next_dword_id_1398_Update/ack
      -- 
    ack_667_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 28_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_dword_id_1427_1398_buf_ack_1, ack => accessMemLineAndSendResponse_CP_602_elements(28)); -- 
    -- CP-element group 29:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 29: predecessors 
    -- CP-element group 29: successors 
    -- CP-element group 29: 	31 
    -- CP-element group 29:  members (4) 
      -- CP-element group 29: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/R_first_dword_id_1399_sample_start__ps
      -- CP-element group 29: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/R_first_dword_id_1399_sample_start_
      -- CP-element group 29: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/R_first_dword_id_1399_Sample/$entry
      -- CP-element group 29: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/R_first_dword_id_1399_Sample/req
      -- 
    req_679_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_679_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accessMemLineAndSendResponse_CP_602_elements(29), ack => first_dword_id_1399_buf_req_0); -- 
    -- Element group accessMemLineAndSendResponse_CP_602_elements(29) is bound as output of CP function.
    -- CP-element group 30:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 30: predecessors 
    -- CP-element group 30: successors 
    -- CP-element group 30: 	32 
    -- CP-element group 30:  members (4) 
      -- CP-element group 30: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/R_first_dword_id_1399_update_start__ps
      -- CP-element group 30: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/R_first_dword_id_1399_update_start_
      -- CP-element group 30: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/R_first_dword_id_1399_Update/$entry
      -- CP-element group 30: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/R_first_dword_id_1399_Update/req
      -- 
    req_684_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_684_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accessMemLineAndSendResponse_CP_602_elements(30), ack => first_dword_id_1399_buf_req_1); -- 
    -- Element group accessMemLineAndSendResponse_CP_602_elements(30) is bound as output of CP function.
    -- CP-element group 31:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 31: predecessors 
    -- CP-element group 31: 	29 
    -- CP-element group 31: successors 
    -- CP-element group 31:  members (4) 
      -- CP-element group 31: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/R_first_dword_id_1399_sample_completed__ps
      -- CP-element group 31: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/R_first_dword_id_1399_sample_completed_
      -- CP-element group 31: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/R_first_dword_id_1399_Sample/$exit
      -- CP-element group 31: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/R_first_dword_id_1399_Sample/ack
      -- 
    ack_680_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 31_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => first_dword_id_1399_buf_ack_0, ack => accessMemLineAndSendResponse_CP_602_elements(31)); -- 
    -- CP-element group 32:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 32: predecessors 
    -- CP-element group 32: 	30 
    -- CP-element group 32: successors 
    -- CP-element group 32:  members (4) 
      -- CP-element group 32: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/R_first_dword_id_1399_update_completed__ps
      -- CP-element group 32: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/R_first_dword_id_1399_update_completed_
      -- CP-element group 32: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/R_first_dword_id_1399_Update/$exit
      -- CP-element group 32: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/R_first_dword_id_1399_Update/ack
      -- 
    ack_685_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 32_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => first_dword_id_1399_buf_ack_1, ack => accessMemLineAndSendResponse_CP_602_elements(32)); -- 
    -- CP-element group 33:  join  transition  bypass  pipeline-parent 
    -- CP-element group 33: predecessors 
    -- CP-element group 33: 	9 
    -- CP-element group 33: marked-predecessors 
    -- CP-element group 33: 	12 
    -- CP-element group 33: successors 
    -- CP-element group 33: 	11 
    -- CP-element group 33:  members (1) 
      -- CP-element group 33: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/phi_stmt_1400_sample_start_
      -- 
    accessMemLineAndSendResponse_cp_element_group_33: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 48) := "accessMemLineAndSendResponse_cp_element_group_33"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= accessMemLineAndSendResponse_CP_602_elements(9) & accessMemLineAndSendResponse_CP_602_elements(12);
      gj_accessMemLineAndSendResponse_cp_element_group_33 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => accessMemLineAndSendResponse_CP_602_elements(33), clk => clk, reset => reset); --
    end block;
    -- CP-element group 34:  join  transition  bypass  pipeline-parent 
    -- CP-element group 34: predecessors 
    -- CP-element group 34: 	9 
    -- CP-element group 34: marked-predecessors 
    -- CP-element group 34: 	58 
    -- CP-element group 34: successors 
    -- CP-element group 34: 	14 
    -- CP-element group 34:  members (1) 
      -- CP-element group 34: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/phi_stmt_1400_update_start_
      -- 
    accessMemLineAndSendResponse_cp_element_group_34: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 48) := "accessMemLineAndSendResponse_cp_element_group_34"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= accessMemLineAndSendResponse_CP_602_elements(9) & accessMemLineAndSendResponse_CP_602_elements(58);
      gj_accessMemLineAndSendResponse_cp_element_group_34 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => accessMemLineAndSendResponse_CP_602_elements(34), clk => clk, reset => reset); --
    end block;
    -- CP-element group 35:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 35: predecessors 
    -- CP-element group 35: 	11 
    -- CP-element group 35: successors 
    -- CP-element group 35:  members (1) 
      -- CP-element group 35: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/phi_stmt_1400_sample_start__ps
      -- 
    accessMemLineAndSendResponse_CP_602_elements(35) <= accessMemLineAndSendResponse_CP_602_elements(11);
    -- CP-element group 36:  join  transition  bypass  pipeline-parent 
    -- CP-element group 36: predecessors 
    -- CP-element group 36: successors 
    -- CP-element group 36: 	12 
    -- CP-element group 36:  members (1) 
      -- CP-element group 36: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/phi_stmt_1400_sample_completed__ps
      -- 
    -- Element group accessMemLineAndSendResponse_CP_602_elements(36) is bound as output of CP function.
    -- CP-element group 37:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 37: predecessors 
    -- CP-element group 37: 	14 
    -- CP-element group 37: successors 
    -- CP-element group 37:  members (1) 
      -- CP-element group 37: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/phi_stmt_1400_update_start__ps
      -- 
    accessMemLineAndSendResponse_CP_602_elements(37) <= accessMemLineAndSendResponse_CP_602_elements(14);
    -- CP-element group 38:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 38: predecessors 
    -- CP-element group 38: successors 
    -- CP-element group 38: 	56 
    -- CP-element group 38: 	15 
    -- CP-element group 38:  members (2) 
      -- CP-element group 38: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/phi_stmt_1400_update_completed_
      -- CP-element group 38: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/phi_stmt_1400_update_completed__ps
      -- 
    -- Element group accessMemLineAndSendResponse_CP_602_elements(38) is bound as output of CP function.
    -- CP-element group 39:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 39: predecessors 
    -- CP-element group 39: 	7 
    -- CP-element group 39: successors 
    -- CP-element group 39:  members (1) 
      -- CP-element group 39: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/phi_stmt_1400_loopback_trigger
      -- 
    accessMemLineAndSendResponse_CP_602_elements(39) <= accessMemLineAndSendResponse_CP_602_elements(7);
    -- CP-element group 40:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 40: predecessors 
    -- CP-element group 40: successors 
    -- CP-element group 40:  members (2) 
      -- CP-element group 40: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/phi_stmt_1400_loopback_sample_req
      -- CP-element group 40: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/phi_stmt_1400_loopback_sample_req_ps
      -- 
    phi_stmt_1400_loopback_sample_req_696_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_1400_loopback_sample_req_696_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accessMemLineAndSendResponse_CP_602_elements(40), ack => phi_stmt_1400_req_0); -- 
    -- Element group accessMemLineAndSendResponse_CP_602_elements(40) is bound as output of CP function.
    -- CP-element group 41:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 41: predecessors 
    -- CP-element group 41: 	8 
    -- CP-element group 41: successors 
    -- CP-element group 41:  members (1) 
      -- CP-element group 41: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/phi_stmt_1400_entry_trigger
      -- 
    accessMemLineAndSendResponse_CP_602_elements(41) <= accessMemLineAndSendResponse_CP_602_elements(8);
    -- CP-element group 42:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 42: predecessors 
    -- CP-element group 42: successors 
    -- CP-element group 42:  members (2) 
      -- CP-element group 42: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/phi_stmt_1400_entry_sample_req
      -- CP-element group 42: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/phi_stmt_1400_entry_sample_req_ps
      -- 
    phi_stmt_1400_entry_sample_req_699_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_1400_entry_sample_req_699_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accessMemLineAndSendResponse_CP_602_elements(42), ack => phi_stmt_1400_req_1); -- 
    -- Element group accessMemLineAndSendResponse_CP_602_elements(42) is bound as output of CP function.
    -- CP-element group 43:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 43: predecessors 
    -- CP-element group 43: successors 
    -- CP-element group 43:  members (2) 
      -- CP-element group 43: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/phi_stmt_1400_phi_mux_ack
      -- CP-element group 43: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/phi_stmt_1400_phi_mux_ack_ps
      -- 
    phi_stmt_1400_phi_mux_ack_702_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 43_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_1400_ack_0, ack => accessMemLineAndSendResponse_CP_602_elements(43)); -- 
    -- CP-element group 44:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 44: predecessors 
    -- CP-element group 44: successors 
    -- CP-element group 44:  members (4) 
      -- CP-element group 44: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/type_cast_1403_sample_start__ps
      -- CP-element group 44: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/type_cast_1403_sample_completed__ps
      -- CP-element group 44: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/type_cast_1403_sample_start_
      -- CP-element group 44: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/type_cast_1403_sample_completed_
      -- 
    -- Element group accessMemLineAndSendResponse_CP_602_elements(44) is bound as output of CP function.
    -- CP-element group 45:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 45: predecessors 
    -- CP-element group 45: successors 
    -- CP-element group 45: 	47 
    -- CP-element group 45:  members (2) 
      -- CP-element group 45: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/type_cast_1403_update_start__ps
      -- CP-element group 45: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/type_cast_1403_update_start_
      -- 
    -- Element group accessMemLineAndSendResponse_CP_602_elements(45) is bound as output of CP function.
    -- CP-element group 46:  join  transition  bypass  pipeline-parent 
    -- CP-element group 46: predecessors 
    -- CP-element group 46: 	47 
    -- CP-element group 46: successors 
    -- CP-element group 46:  members (1) 
      -- CP-element group 46: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/type_cast_1403_update_completed__ps
      -- 
    accessMemLineAndSendResponse_CP_602_elements(46) <= accessMemLineAndSendResponse_CP_602_elements(47);
    -- CP-element group 47:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 47: predecessors 
    -- CP-element group 47: 	45 
    -- CP-element group 47: successors 
    -- CP-element group 47: 	46 
    -- CP-element group 47:  members (1) 
      -- CP-element group 47: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/type_cast_1403_update_completed_
      -- 
    -- Element group accessMemLineAndSendResponse_CP_602_elements(47) is a control-delay.
    cp_element_47_delay: control_delay_element  generic map(name => " 47_delay", delay_value => 1)  port map(req => accessMemLineAndSendResponse_CP_602_elements(45), ack => accessMemLineAndSendResponse_CP_602_elements(47), clk => clk, reset =>reset);
    -- CP-element group 48:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 48: predecessors 
    -- CP-element group 48: successors 
    -- CP-element group 48:  members (4) 
      -- CP-element group 48: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/type_cast_1405_sample_completed__ps
      -- CP-element group 48: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/type_cast_1405_sample_completed_
      -- CP-element group 48: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/type_cast_1405_sample_start_
      -- CP-element group 48: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/type_cast_1405_sample_start__ps
      -- 
    -- Element group accessMemLineAndSendResponse_CP_602_elements(48) is bound as output of CP function.
    -- CP-element group 49:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 49: predecessors 
    -- CP-element group 49: successors 
    -- CP-element group 49: 	51 
    -- CP-element group 49:  members (2) 
      -- CP-element group 49: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/type_cast_1405_update_start__ps
      -- CP-element group 49: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/type_cast_1405_update_start_
      -- 
    -- Element group accessMemLineAndSendResponse_CP_602_elements(49) is bound as output of CP function.
    -- CP-element group 50:  join  transition  bypass  pipeline-parent 
    -- CP-element group 50: predecessors 
    -- CP-element group 50: 	51 
    -- CP-element group 50: successors 
    -- CP-element group 50:  members (1) 
      -- CP-element group 50: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/type_cast_1405_update_completed__ps
      -- 
    accessMemLineAndSendResponse_CP_602_elements(50) <= accessMemLineAndSendResponse_CP_602_elements(51);
    -- CP-element group 51:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 51: predecessors 
    -- CP-element group 51: 	49 
    -- CP-element group 51: successors 
    -- CP-element group 51: 	50 
    -- CP-element group 51:  members (1) 
      -- CP-element group 51: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/type_cast_1405_update_completed_
      -- 
    -- Element group accessMemLineAndSendResponse_CP_602_elements(51) is a control-delay.
    cp_element_51_delay: control_delay_element  generic map(name => " 51_delay", delay_value => 1)  port map(req => accessMemLineAndSendResponse_CP_602_elements(49), ack => accessMemLineAndSendResponse_CP_602_elements(51), clk => clk, reset =>reset);
    -- CP-element group 52:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 52: predecessors 
    -- CP-element group 52: 	9 
    -- CP-element group 52: marked-predecessors 
    -- CP-element group 52: 	54 
    -- CP-element group 52: successors 
    -- CP-element group 52: 	54 
    -- CP-element group 52:  members (3) 
      -- CP-element group 52: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/slice_1409_sample_start_
      -- CP-element group 52: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/slice_1409_Sample/rr
      -- CP-element group 52: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/slice_1409_Sample/$entry
      -- 
    rr_728_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_728_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accessMemLineAndSendResponse_CP_602_elements(52), ack => slice_1409_inst_req_0); -- 
    accessMemLineAndSendResponse_cp_element_group_52: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 48) := "accessMemLineAndSendResponse_cp_element_group_52"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= accessMemLineAndSendResponse_CP_602_elements(9) & accessMemLineAndSendResponse_CP_602_elements(54);
      gj_accessMemLineAndSendResponse_cp_element_group_52 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => accessMemLineAndSendResponse_CP_602_elements(52), clk => clk, reset => reset); --
    end block;
    -- CP-element group 53:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 53: predecessors 
    -- CP-element group 53: marked-predecessors 
    -- CP-element group 53: 	58 
    -- CP-element group 53: successors 
    -- CP-element group 53: 	55 
    -- CP-element group 53:  members (3) 
      -- CP-element group 53: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/slice_1409_update_start_
      -- CP-element group 53: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/slice_1409_Update/$entry
      -- CP-element group 53: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/slice_1409_Update/cr
      -- 
    cr_733_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_733_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accessMemLineAndSendResponse_CP_602_elements(53), ack => slice_1409_inst_req_1); -- 
    accessMemLineAndSendResponse_cp_element_group_53: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 48) := "accessMemLineAndSendResponse_cp_element_group_53"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= accessMemLineAndSendResponse_CP_602_elements(58);
      gj_accessMemLineAndSendResponse_cp_element_group_53 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => accessMemLineAndSendResponse_CP_602_elements(53), clk => clk, reset => reset); --
    end block;
    -- CP-element group 54:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 54: predecessors 
    -- CP-element group 54: 	52 
    -- CP-element group 54: successors 
    -- CP-element group 54: marked-successors 
    -- CP-element group 54: 	52 
    -- CP-element group 54:  members (3) 
      -- CP-element group 54: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/slice_1409_Sample/ra
      -- CP-element group 54: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/slice_1409_sample_completed_
      -- CP-element group 54: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/slice_1409_Sample/$exit
      -- 
    ra_729_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 54_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => slice_1409_inst_ack_0, ack => accessMemLineAndSendResponse_CP_602_elements(54)); -- 
    -- CP-element group 55:  transition  input  bypass  pipeline-parent 
    -- CP-element group 55: predecessors 
    -- CP-element group 55: 	53 
    -- CP-element group 55: successors 
    -- CP-element group 55: 	56 
    -- CP-element group 55:  members (3) 
      -- CP-element group 55: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/slice_1409_update_completed_
      -- CP-element group 55: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/slice_1409_Update/ca
      -- CP-element group 55: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/slice_1409_Update/$exit
      -- 
    ca_734_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 55_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => slice_1409_inst_ack_1, ack => accessMemLineAndSendResponse_CP_602_elements(55)); -- 
    -- CP-element group 56:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 56: predecessors 
    -- CP-element group 56: 	55 
    -- CP-element group 56: 	19 
    -- CP-element group 56: 	38 
    -- CP-element group 56: successors 
    -- CP-element group 56: 	58 
    -- CP-element group 56:  members (3) 
      -- CP-element group 56: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/call_stmt_1507_Sample/$entry
      -- CP-element group 56: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/call_stmt_1507_Sample/crr
      -- CP-element group 56: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/call_stmt_1507_sample_start_
      -- 
    crr_742_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " crr_742_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accessMemLineAndSendResponse_CP_602_elements(56), ack => call_stmt_1507_call_req_0); -- 
    accessMemLineAndSendResponse_cp_element_group_56: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 48) := "accessMemLineAndSendResponse_cp_element_group_56"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= accessMemLineAndSendResponse_CP_602_elements(55) & accessMemLineAndSendResponse_CP_602_elements(19) & accessMemLineAndSendResponse_CP_602_elements(38);
      gj_accessMemLineAndSendResponse_cp_element_group_56 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => accessMemLineAndSendResponse_CP_602_elements(56), clk => clk, reset => reset); --
    end block;
    -- CP-element group 57:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 57: predecessors 
    -- CP-element group 57: marked-predecessors 
    -- CP-element group 57: 	59 
    -- CP-element group 57: successors 
    -- CP-element group 57: 	59 
    -- CP-element group 57:  members (3) 
      -- CP-element group 57: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/call_stmt_1507_Update/ccr
      -- CP-element group 57: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/call_stmt_1507_Update/$entry
      -- CP-element group 57: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/call_stmt_1507_update_start_
      -- 
    ccr_747_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " ccr_747_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => accessMemLineAndSendResponse_CP_602_elements(57), ack => call_stmt_1507_call_req_1); -- 
    accessMemLineAndSendResponse_cp_element_group_57: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 48) := "accessMemLineAndSendResponse_cp_element_group_57"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= accessMemLineAndSendResponse_CP_602_elements(59);
      gj_accessMemLineAndSendResponse_cp_element_group_57 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => accessMemLineAndSendResponse_CP_602_elements(57), clk => clk, reset => reset); --
    end block;
    -- CP-element group 58:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 58: predecessors 
    -- CP-element group 58: 	56 
    -- CP-element group 58: successors 
    -- CP-element group 58: marked-successors 
    -- CP-element group 58: 	53 
    -- CP-element group 58: 	17 
    -- CP-element group 58: 	34 
    -- CP-element group 58:  members (3) 
      -- CP-element group 58: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/call_stmt_1507_Sample/cra
      -- CP-element group 58: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/call_stmt_1507_Sample/$exit
      -- CP-element group 58: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/call_stmt_1507_sample_completed_
      -- 
    cra_743_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 58_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_1507_call_ack_0, ack => accessMemLineAndSendResponse_CP_602_elements(58)); -- 
    -- CP-element group 59:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 59: predecessors 
    -- CP-element group 59: 	57 
    -- CP-element group 59: successors 
    -- CP-element group 59: 	61 
    -- CP-element group 59: marked-successors 
    -- CP-element group 59: 	57 
    -- CP-element group 59:  members (3) 
      -- CP-element group 59: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/call_stmt_1507_Update/$exit
      -- CP-element group 59: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/call_stmt_1507_Update/cca
      -- CP-element group 59: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/call_stmt_1507_update_completed_
      -- 
    cca_748_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 59_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_1507_call_ack_1, ack => accessMemLineAndSendResponse_CP_602_elements(59)); -- 
    -- CP-element group 60:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 60: predecessors 
    -- CP-element group 60: 	9 
    -- CP-element group 60: successors 
    -- CP-element group 60: 	10 
    -- CP-element group 60:  members (1) 
      -- CP-element group 60: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/loop_body_delay_to_condition_start
      -- 
    -- Element group accessMemLineAndSendResponse_CP_602_elements(60) is a control-delay.
    cp_element_60_delay: control_delay_element  generic map(name => " 60_delay", delay_value => 1)  port map(req => accessMemLineAndSendResponse_CP_602_elements(9), ack => accessMemLineAndSendResponse_CP_602_elements(60), clk => clk, reset =>reset);
    -- CP-element group 61:  join  transition  bypass  pipeline-parent 
    -- CP-element group 61: predecessors 
    -- CP-element group 61: 	12 
    -- CP-element group 61: 	59 
    -- CP-element group 61: successors 
    -- CP-element group 61: 	6 
    -- CP-element group 61:  members (1) 
      -- CP-element group 61: 	 branch_block_stmt_1393/do_while_stmt_1394/do_while_stmt_1394_loop_body/$exit
      -- 
    accessMemLineAndSendResponse_cp_element_group_61: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 15);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 48) := "accessMemLineAndSendResponse_cp_element_group_61"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= accessMemLineAndSendResponse_CP_602_elements(12) & accessMemLineAndSendResponse_CP_602_elements(59);
      gj_accessMemLineAndSendResponse_cp_element_group_61 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => accessMemLineAndSendResponse_CP_602_elements(61), clk => clk, reset => reset); --
    end block;
    -- CP-element group 62:  transition  input  bypass  pipeline-parent 
    -- CP-element group 62: predecessors 
    -- CP-element group 62: 	5 
    -- CP-element group 62: successors 
    -- CP-element group 62:  members (2) 
      -- CP-element group 62: 	 branch_block_stmt_1393/do_while_stmt_1394/loop_exit/ack
      -- CP-element group 62: 	 branch_block_stmt_1393/do_while_stmt_1394/loop_exit/$exit
      -- 
    ack_753_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 62_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_1394_branch_ack_0, ack => accessMemLineAndSendResponse_CP_602_elements(62)); -- 
    -- CP-element group 63:  transition  input  bypass  pipeline-parent 
    -- CP-element group 63: predecessors 
    -- CP-element group 63: 	5 
    -- CP-element group 63: successors 
    -- CP-element group 63:  members (2) 
      -- CP-element group 63: 	 branch_block_stmt_1393/do_while_stmt_1394/loop_taken/$exit
      -- CP-element group 63: 	 branch_block_stmt_1393/do_while_stmt_1394/loop_taken/ack
      -- 
    ack_757_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 63_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_1394_branch_ack_1, ack => accessMemLineAndSendResponse_CP_602_elements(63)); -- 
    -- CP-element group 64:  transition  bypass  pipeline-parent 
    -- CP-element group 64: predecessors 
    -- CP-element group 64: 	3 
    -- CP-element group 64: successors 
    -- CP-element group 64: 	1 
    -- CP-element group 64:  members (1) 
      -- CP-element group 64: 	 branch_block_stmt_1393/do_while_stmt_1394/$exit
      -- 
    accessMemLineAndSendResponse_CP_602_elements(64) <= accessMemLineAndSendResponse_CP_602_elements(3);
    -- CP-element group 65:  transition  input  bypass 
    -- CP-element group 65: predecessors 
    -- CP-element group 65: 	1 
    -- CP-element group 65: successors 
    -- CP-element group 65:  members (3) 
      -- CP-element group 65: 	 assign_stmt_1513/assign_stmt_1513_sample_completed_
      -- CP-element group 65: 	 assign_stmt_1513/assign_stmt_1513_Sample/ack
      -- CP-element group 65: 	 assign_stmt_1513/assign_stmt_1513_Sample/$exit
      -- 
    ack_770_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 65_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_access_error_1511_inst_ack_0, ack => accessMemLineAndSendResponse_CP_602_elements(65)); -- 
    -- CP-element group 66:  transition  input  bypass 
    -- CP-element group 66: predecessors 
    -- CP-element group 66: 	1 
    -- CP-element group 66: successors 
    -- CP-element group 66:  members (5) 
      -- CP-element group 66: 	 assign_stmt_1513/$exit
      -- CP-element group 66: 	 assign_stmt_1513/assign_stmt_1513_Update/$exit
      -- CP-element group 66: 	 assign_stmt_1513/assign_stmt_1513_update_completed_
      -- CP-element group 66: 	 assign_stmt_1513/assign_stmt_1513_Update/ack
      -- CP-element group 66: 	 $exit
      -- 
    ack_775_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 66_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_access_error_1511_inst_ack_1, ack => accessMemLineAndSendResponse_CP_602_elements(66)); -- 
    accessMemLineAndSendResponse_do_while_stmt_1394_terminator_758: loop_terminator -- 
      generic map (name => " accessMemLineAndSendResponse_do_while_stmt_1394_terminator_758", max_iterations_in_flight =>15) 
      port map(loop_body_exit => accessMemLineAndSendResponse_CP_602_elements(6),loop_continue => accessMemLineAndSendResponse_CP_602_elements(63),loop_terminate => accessMemLineAndSendResponse_CP_602_elements(62),loop_back => accessMemLineAndSendResponse_CP_602_elements(4),loop_exit => accessMemLineAndSendResponse_CP_602_elements(3),clk => clk, reset => reset); -- 
    phi_stmt_1396_phi_seq_686_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= accessMemLineAndSendResponse_CP_602_elements(20);
      accessMemLineAndSendResponse_CP_602_elements(25)<= src_sample_reqs(0);
      src_sample_acks(0)  <= accessMemLineAndSendResponse_CP_602_elements(27);
      accessMemLineAndSendResponse_CP_602_elements(26)<= src_update_reqs(0);
      src_update_acks(0)  <= accessMemLineAndSendResponse_CP_602_elements(28);
      accessMemLineAndSendResponse_CP_602_elements(21) <= phi_mux_reqs(0);
      triggers(1)  <= accessMemLineAndSendResponse_CP_602_elements(22);
      accessMemLineAndSendResponse_CP_602_elements(29)<= src_sample_reqs(1);
      src_sample_acks(1)  <= accessMemLineAndSendResponse_CP_602_elements(31);
      accessMemLineAndSendResponse_CP_602_elements(30)<= src_update_reqs(1);
      src_update_acks(1)  <= accessMemLineAndSendResponse_CP_602_elements(32);
      accessMemLineAndSendResponse_CP_602_elements(23) <= phi_mux_reqs(1);
      phi_stmt_1396_phi_seq_686 : phi_sequencer_v2-- 
        generic map (place_capacity => 15, ntriggers => 2, name => "phi_stmt_1396_phi_seq_686") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => accessMemLineAndSendResponse_CP_602_elements(11), 
          phi_sample_ack => accessMemLineAndSendResponse_CP_602_elements(18), 
          phi_update_req => accessMemLineAndSendResponse_CP_602_elements(14), 
          phi_update_ack => accessMemLineAndSendResponse_CP_602_elements(19), 
          phi_mux_ack => accessMemLineAndSendResponse_CP_602_elements(24), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_1400_phi_seq_720_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= accessMemLineAndSendResponse_CP_602_elements(39);
      accessMemLineAndSendResponse_CP_602_elements(44)<= src_sample_reqs(0);
      src_sample_acks(0)  <= accessMemLineAndSendResponse_CP_602_elements(44);
      accessMemLineAndSendResponse_CP_602_elements(45)<= src_update_reqs(0);
      src_update_acks(0)  <= accessMemLineAndSendResponse_CP_602_elements(46);
      accessMemLineAndSendResponse_CP_602_elements(40) <= phi_mux_reqs(0);
      triggers(1)  <= accessMemLineAndSendResponse_CP_602_elements(41);
      accessMemLineAndSendResponse_CP_602_elements(48)<= src_sample_reqs(1);
      src_sample_acks(1)  <= accessMemLineAndSendResponse_CP_602_elements(48);
      accessMemLineAndSendResponse_CP_602_elements(49)<= src_update_reqs(1);
      src_update_acks(1)  <= accessMemLineAndSendResponse_CP_602_elements(50);
      accessMemLineAndSendResponse_CP_602_elements(42) <= phi_mux_reqs(1);
      phi_stmt_1400_phi_seq_720 : phi_sequencer_v2-- 
        generic map (place_capacity => 15, ntriggers => 2, name => "phi_stmt_1400_phi_seq_720") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => accessMemLineAndSendResponse_CP_602_elements(35), 
          phi_sample_ack => accessMemLineAndSendResponse_CP_602_elements(36), 
          phi_update_req => accessMemLineAndSendResponse_CP_602_elements(37), 
          phi_update_ack => accessMemLineAndSendResponse_CP_602_elements(38), 
          phi_mux_ack => accessMemLineAndSendResponse_CP_602_elements(43), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    entry_tmerge_627_block : block -- 
      signal preds : BooleanArray(0 to 1);
      begin -- 
        preds(0)  <= accessMemLineAndSendResponse_CP_602_elements(7);
        preds(1)  <= accessMemLineAndSendResponse_CP_602_elements(8);
        entry_tmerge_627 : transition_merge -- 
          generic map(name => " entry_tmerge_627")
          port map (preds => preds, symbol_out => accessMemLineAndSendResponse_CP_602_elements(9));
          -- 
    end block;
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal ADD_u3_u3_1425_wire : std_logic_vector(2 downto 0);
    signal AND_u1_u1_1421_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1467_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1477_wire : std_logic_vector(0 downto 0);
    signal CONCAT_u30_u33_1414_wire : std_logic_vector(32 downto 0);
    signal NOT_u1_u1_1437_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1440_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1475_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1491_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1438_wire : std_logic_vector(0 downto 0);
    signal R_ZERO_1_1489_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_3_1415_wire_constant : std_logic_vector(2 downto 0);
    signal addr_1417 : std_logic_vector(35 downto 0);
    signal all_dwords_covered_1432 : std_logic_vector(0 downto 0);
    signal byte_mask_to_be_used_1471 : std_logic_vector(7 downto 0);
    signal continue_flag_1442 : std_logic_vector(0 downto 0);
    signal dword_id_1396 : std_logic_vector(2 downto 0);
    signal first_dword_id_1399_buffered : std_logic_vector(2 downto 0);
    signal first_time_1400 : std_logic_vector(0 downto 0);
    signal konst_1424_wire_constant : std_logic_vector(2 downto 0);
    signal konst_1469_wire_constant : std_logic_vector(7 downto 0);
    signal last_access_1446 : std_logic_vector(0 downto 0);
    signal line_access_1463 : std_logic_vector(0 downto 0);
    signal line_lock_flag_1479 : std_logic_vector(0 downto 0);
    signal next_dword_id_1427 : std_logic_vector(2 downto 0);
    signal next_dword_id_1427_1398_buffered : std_logic_vector(2 downto 0);
    signal read_flag_1459 : std_logic_vector(0 downto 0);
    signal s_error_1507 : std_logic_vector(0 downto 0);
    signal send_response_1455 : std_logic_vector(0 downto 0);
    signal slice_1392_1392_delayed_1_0_1410 : std_logic_vector(29 downto 0);
    signal type_cast_1403_wire_constant : std_logic_vector(0 downto 0);
    signal type_cast_1405_wire_constant : std_logic_vector(0 downto 0);
    signal type_cast_1481_wire_constant : std_logic_vector(0 downto 0);
    signal type_cast_1494_wire_constant : std_logic_vector(0 downto 0);
    signal type_cast_1496_wire_constant : std_logic_vector(0 downto 0);
    signal type_cast_1498_wire_constant : std_logic_vector(0 downto 0);
    signal type_cast_1500_wire_constant : std_logic_vector(0 downto 0);
    signal type_cast_1502_wire_constant : std_logic_vector(17 downto 0);
    signal write_flag_1451 : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    R_ZERO_1_1489_wire_constant <= "0";
    R_ZERO_3_1415_wire_constant <= "000";
    konst_1424_wire_constant <= "001";
    konst_1469_wire_constant <= "11111111";
    line_access_1463 <= "1";
    type_cast_1403_wire_constant <= "0";
    type_cast_1405_wire_constant <= "1";
    type_cast_1481_wire_constant <= "0";
    type_cast_1494_wire_constant <= "0";
    type_cast_1496_wire_constant <= "1";
    type_cast_1498_wire_constant <= "0";
    type_cast_1500_wire_constant <= "0";
    type_cast_1502_wire_constant <= "000000000000000000";
    phi_stmt_1396: Block -- phi operator 
      signal idata: std_logic_vector(5 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= next_dword_id_1427_1398_buffered & first_dword_id_1399_buffered;
      req <= phi_stmt_1396_req_0 & phi_stmt_1396_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_1396",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 3) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_1396_ack_0,
          idata => idata,
          odata => dword_id_1396,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_1396
    phi_stmt_1400: Block -- phi operator 
      signal idata: std_logic_vector(1 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= type_cast_1403_wire_constant & type_cast_1405_wire_constant;
      req <= phi_stmt_1400_req_0 & phi_stmt_1400_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_1400",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 1) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_1400_ack_0,
          idata => idata,
          odata => first_time_1400,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_1400
    -- flow-through select operator MUX_1426_inst
    next_dword_id_1427 <= dword_id_1396 when (AND_u1_u1_1421_wire(0) /=  '0') else ADD_u3_u3_1425_wire;
    -- flow-through select operator MUX_1441_inst
    continue_flag_1442 <= OR_u1_u1_1438_wire when (write_dword_buffer(0) /=  '0') else NOT_u1_u1_1440_wire;
    -- flow-through select operator MUX_1470_inst
    byte_mask_to_be_used_1471 <= write_byte_mask_buffer when (AND_u1_u1_1467_wire(0) /=  '0') else konst_1469_wire_constant;
    slice_1409_inst_block : block -- 
      signal sample_req, sample_ack, update_req, update_ack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      sample_req(0) <= slice_1409_inst_req_0;
      slice_1409_inst_ack_0<= sample_ack(0);
      update_req(0) <= slice_1409_inst_req_1;
      slice_1409_inst_ack_1<= update_ack(0);
      slice_1409_inst: SliceSplitProtocol generic map(name => "slice_1409_inst", in_data_width => 36, high_index => 35, low_index => 6, buffering => 1, flow_through => false,  full_rate => true) -- 
        port map( din => line_aligned_addr_buffer, dout => slice_1392_1392_delayed_1_0_1410, sample_req => sample_req(0) , sample_ack => sample_ack(0) , update_req => update_req(0) , update_ack => update_ack(0) , clk => clk, reset => reset); -- 
      -- 
    end block;
    W_access_error_1511_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_access_error_1511_inst_req_0;
      W_access_error_1511_inst_ack_0<= wack(0);
      rreq(0) <= W_access_error_1511_inst_req_1;
      W_access_error_1511_inst_ack_1<= rack(0);
      W_access_error_1511_inst : InterlockBuffer generic map ( -- 
        name => "W_access_error_1511_inst",
        buffer_size => 2,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 1,
        out_data_width => 1,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => s_error_1507,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => access_error_buffer,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    first_dword_id_1399_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= first_dword_id_1399_buf_req_0;
      first_dword_id_1399_buf_ack_0<= wack(0);
      rreq(0) <= first_dword_id_1399_buf_req_1;
      first_dword_id_1399_buf_ack_1<= rack(0);
      first_dword_id_1399_buf : InterlockBuffer generic map ( -- 
        name => "first_dword_id_1399_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 3,
        out_data_width => 3,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => first_dword_id_buffer,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => first_dword_id_1399_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    next_dword_id_1427_1398_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= next_dword_id_1427_1398_buf_req_0;
      next_dword_id_1427_1398_buf_ack_0<= wack(0);
      rreq(0) <= next_dword_id_1427_1398_buf_req_1;
      next_dword_id_1427_1398_buf_ack_1<= rack(0);
      next_dword_id_1427_1398_buf : InterlockBuffer generic map ( -- 
        name => "next_dword_id_1427_1398_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 3,
        out_data_width => 3,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => next_dword_id_1427,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => next_dword_id_1427_1398_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    do_while_stmt_1394_branch: Block -- 
      -- branch-block
      signal condition_sig : std_logic_vector(0 downto 0);
      begin 
      condition_sig <= continue_flag_1442;
      branch_instance: BranchBase -- 
        generic map( name => "do_while_stmt_1394_branch", condition_width => 1,  bypass_flag => true)
        port map( -- 
          condition => condition_sig,
          req => do_while_stmt_1394_branch_req_0,
          ack0 => do_while_stmt_1394_branch_ack_0,
          ack1 => do_while_stmt_1394_branch_ack_1,
          clk => clk,
          reset => reset); -- 
      --
    end Block; -- branch-block
    -- flow through binary operator ADD_u3_u3_1425_inst
    ADD_u3_u3_1425_wire <= std_logic_vector(unsigned(dword_id_1396) + unsigned(konst_1424_wire_constant));
    -- flow through binary operator AND_u1_u1_1421_inst
    AND_u1_u1_1421_wire <= (write_dword_buffer and first_time_1400);
    -- flow through binary operator AND_u1_u1_1450_inst
    write_flag_1451 <= (write_dword_buffer and first_time_1400);
    -- flow through binary operator AND_u1_u1_1467_inst
    AND_u1_u1_1467_wire <= (write_dword_buffer and first_time_1400);
    -- flow through binary operator AND_u1_u1_1477_inst
    AND_u1_u1_1477_wire <= (NOT_u1_u1_1475_wire and continue_flag_1442);
    -- flow through binary operator CONCAT_u30_u33_1414_inst
    process(slice_1392_1392_delayed_1_0_1410, dword_id_1396) -- 
      variable tmp_var : std_logic_vector(32 downto 0); -- 
    begin -- 
      ApConcat_proc(slice_1392_1392_delayed_1_0_1410, dword_id_1396, tmp_var);
      CONCAT_u30_u33_1414_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u33_u36_1416_inst
    process(CONCAT_u30_u33_1414_wire) -- 
      variable tmp_var : std_logic_vector(35 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u30_u33_1414_wire, R_ZERO_3_1415_wire_constant, tmp_var);
      addr_1417 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_1431_inst
    process(next_dword_id_1427, first_dword_id_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(next_dword_id_1427, first_dword_id_buffer, tmp_var);
      all_dwords_covered_1432 <= tmp_var; --
    end process;
    -- unary operator NOT_u1_u1_1437_inst
    process(all_dwords_covered_1432) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", all_dwords_covered_1432, tmp_var);
      NOT_u1_u1_1437_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_1440_inst
    process(all_dwords_covered_1432) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", all_dwords_covered_1432, tmp_var);
      NOT_u1_u1_1440_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_1445_inst
    process(continue_flag_1442) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", continue_flag_1442, tmp_var);
      last_access_1446 <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_1454_inst
    process(write_flag_1451) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", write_flag_1451, tmp_var);
      send_response_1455 <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_1458_inst
    process(write_flag_1451) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", write_flag_1451, tmp_var);
      read_flag_1459 <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_1475_inst
    process(write_flag_1451) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", write_flag_1451, tmp_var);
      NOT_u1_u1_1475_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_1491_inst
    process(send_response_1455) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", send_response_1455, tmp_var);
      NOT_u1_u1_1491_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator OR_u1_u1_1438_inst
    OR_u1_u1_1438_wire <= (first_time_1400 or NOT_u1_u1_1437_wire);
    -- flow through binary operator OR_u1_u1_1478_inst
    line_lock_flag_1479 <= (lock_bus_buffer or AND_u1_u1_1477_wire);
    -- shared call operator group (0) : call_stmt_1507_call 
    singleMemAccessAndSendResponse_call_group_0: Block -- 
      signal data_in: std_logic_vector(142 downto 0);
      signal data_out: std_logic_vector(0 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqL_unregulated, ackL_unregulated : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 2);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 2);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 10);
      -- 
    begin -- 
      reqL_unguarded(0) <= call_stmt_1507_call_req_0;
      call_stmt_1507_call_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= call_stmt_1507_call_req_1;
      call_stmt_1507_call_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      reqL <= reqL_unregulated;
      ackL_unregulated <= ackL;
      singleMemAccessAndSendResponse_call_group_0_gI: SplitGuardInterface generic map(name => "singleMemAccessAndSendResponse_call_group_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL_unregulated,
        sa_in => ackL_unregulated,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      data_in <= type_cast_1481_wire_constant & line_lock_flag_1479 & last_access_1446 & send_line_to_dcache_buffer & send_line_to_icache_buffer & write_flag_1451 & read_flag_1459 & line_access_1463 & R_ZERO_1_1489_wire_constant & NOT_u1_u1_1491_wire & acc_buffer & type_cast_1494_wire_constant & type_cast_1496_wire_constant & type_cast_1498_wire_constant & type_cast_1500_wire_constant & type_cast_1502_wire_constant & byte_mask_to_be_used_1471 & addr_1417 & write_data_buffer;
      s_error_1507 <= data_out(0 downto 0);
      CallReq: InputMuxWithBuffering -- 
        generic map (name => "InputMuxWithBuffering",
        iwidth => 143,
        owidth => 143,
        buffering => inBUFs,
        full_rate =>  true,
        twidth => 1,
        nreqs => 1,
        registered_output => false,
        no_arbitration => false)
        port map ( -- 
          reqL => reqL , 
          ackL => ackL , 
          dataL => data_in, 
          reqR => singleMemAccessAndSendResponse_call_reqs(0),
          ackR => singleMemAccessAndSendResponse_call_acks(0),
          dataR => singleMemAccessAndSendResponse_call_data(142 downto 0),
          tagR => singleMemAccessAndSendResponse_call_tag(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      CallComplete: OutputDemuxBaseWithBuffering -- 
        generic map ( -- 
          iwidth => 1,
          owidth => 1,
          detailed_buffering_per_output => outBUFs, 
          full_rate => true, 
          twidth => 1,
          name => "OutputDemuxBaseWithBuffering",
          nreqs => 1) -- 
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          dataR => data_out, 
          reqL => singleMemAccessAndSendResponse_return_acks(0), -- cross-over
          ackL => singleMemAccessAndSendResponse_return_reqs(0), -- cross-over
          dataL => singleMemAccessAndSendResponse_return_data(0 downto 0),
          tagL => singleMemAccessAndSendResponse_return_tag(0 downto 0),
          clk => clk,
          reset => reset -- 
        ); -- 
      -- 
    end Block; -- call group 0
    -- 
  end Block; -- data_path
  -- 
end accessMemLineAndSendResponse_arch;
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
library munit_dummy_mmu;
use munit_dummy_mmu.dummy_mmu_global_package.all;
entity construct_core_request_Volatile is -- 
  port ( -- 
    request_type : in  std_logic_vector(7 downto 0);
    byte_mask : in  std_logic_vector(7 downto 0);
    write_data : in  std_logic_vector(63 downto 0);
    addr36 : in  std_logic_vector(35 downto 0);
    to_bus : out  std_logic_vector(109 downto 0)-- 
  );
  -- 
end entity construct_core_request_Volatile;
architecture construct_core_request_Volatile_arch of construct_core_request_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(116-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal request_type_buffer :  std_logic_vector(7 downto 0);
  signal byte_mask_buffer :  std_logic_vector(7 downto 0);
  signal write_data_buffer :  std_logic_vector(63 downto 0);
  signal addr36_buffer :  std_logic_vector(35 downto 0);
  -- output port buffer signals
  signal to_bus_buffer :  std_logic_vector(109 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  request_type_buffer <= request_type;
  byte_mask_buffer <= byte_mask;
  write_data_buffer <= write_data;
  addr36_buffer <= addr36;
  -- output handling  -------------------------------------------------------
  to_bus <= to_bus_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal CONCAT_u1_u2_1057_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u2_u10_1059_wire : std_logic_vector(9 downto 0);
    signal CONCAT_u36_u100_1062_wire : std_logic_vector(99 downto 0);
    signal EQ_u4_u1_1044_wire : std_logic_vector(0 downto 0);
    signal R_ONE_1_1046_wire_constant : std_logic_vector(0 downto 0);
    signal R_REQUEST_TYPE_WRITE_1043_wire_constant : std_logic_vector(3 downto 0);
    signal R_ZERO_1_1045_wire_constant : std_logic_vector(0 downto 0);
    signal konst_1051_wire_constant : std_logic_vector(7 downto 0);
    signal lock_flag_1053 : std_logic_vector(0 downto 0);
    signal read_write_bar_1048 : std_logic_vector(0 downto 0);
    signal slice_1042_wire : std_logic_vector(3 downto 0);
    -- 
  begin -- 
    R_ONE_1_1046_wire_constant <= "1";
    R_REQUEST_TYPE_WRITE_1043_wire_constant <= "0010";
    R_ZERO_1_1045_wire_constant <= "0";
    konst_1051_wire_constant <= "00000110";
    -- flow-through select operator MUX_1047_inst
    read_write_bar_1048 <= R_ZERO_1_1045_wire_constant when (EQ_u4_u1_1044_wire(0) /=  '0') else R_ONE_1_1046_wire_constant;
    -- flow-through slice operator slice_1042_inst
    slice_1042_wire <= request_type_buffer(3 downto 0);
    -- flow through binary operator BITSEL_u8_u1_1052_inst
    process(request_type_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(request_type_buffer, konst_1051_wire_constant, tmp_var);
      lock_flag_1053 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u10_u110_1063_inst
    process(CONCAT_u2_u10_1059_wire, CONCAT_u36_u100_1062_wire) -- 
      variable tmp_var : std_logic_vector(109 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u10_1059_wire, CONCAT_u36_u100_1062_wire, tmp_var);
      to_bus_buffer <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_1057_inst
    process(lock_flag_1053, read_write_bar_1048) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(lock_flag_1053, read_write_bar_1048, tmp_var);
      CONCAT_u1_u2_1057_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u10_1059_inst
    process(CONCAT_u1_u2_1057_wire, byte_mask_buffer) -- 
      variable tmp_var : std_logic_vector(9 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_1057_wire, byte_mask_buffer, tmp_var);
      CONCAT_u2_u10_1059_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u36_u100_1062_inst
    process(addr36_buffer, write_data_buffer) -- 
      variable tmp_var : std_logic_vector(99 downto 0); -- 
    begin -- 
      ApConcat_proc(addr36_buffer, write_data_buffer, tmp_var);
      CONCAT_u36_u100_1062_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_1044_inst
    process(slice_1042_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(slice_1042_wire, R_REQUEST_TYPE_WRITE_1043_wire_constant, tmp_var);
      EQ_u4_u1_1044_wire <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end construct_core_request_Volatile_arch;
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
library munit_dummy_mmu;
use munit_dummy_mmu.dummy_mmu_global_package.all;
entity decodeAsi_Volatile is -- 
  port ( -- 
    asi_in : in  std_logic_vector(7 downto 0);
    is_ifetch : out  std_logic_vector(0 downto 0);
    is_data_mem_access : out  std_logic_vector(0 downto 0);
    is_mmu_diagnostic : out  std_logic_vector(0 downto 0);
    is_mmu_ctrl_reg : out  std_logic_vector(0 downto 0);
    is_mmu_bypass : out  std_logic_vector(0 downto 0);
    is_mmu_flush_probe : out  std_logic_vector(0 downto 0);
    invalid_asi : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity decodeAsi_Volatile;
architecture decodeAsi_Volatile_arch of decodeAsi_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(8-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal asi_in_buffer :  std_logic_vector(7 downto 0);
  -- output port buffer signals
  signal is_ifetch_buffer :  std_logic_vector(0 downto 0);
  signal is_data_mem_access_buffer :  std_logic_vector(0 downto 0);
  signal is_mmu_diagnostic_buffer :  std_logic_vector(0 downto 0);
  signal is_mmu_ctrl_reg_buffer :  std_logic_vector(0 downto 0);
  signal is_mmu_bypass_buffer :  std_logic_vector(0 downto 0);
  signal is_mmu_flush_probe_buffer :  std_logic_vector(0 downto 0);
  signal invalid_asi_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  asi_in_buffer <= asi_in;
  -- output handling  -------------------------------------------------------
  is_ifetch <= is_ifetch_buffer;
  is_data_mem_access <= is_data_mem_access_buffer;
  is_mmu_diagnostic <= is_mmu_diagnostic_buffer;
  is_mmu_ctrl_reg <= is_mmu_ctrl_reg_buffer;
  is_mmu_bypass <= is_mmu_bypass_buffer;
  is_mmu_flush_probe <= is_mmu_flush_probe_buffer;
  invalid_asi <= invalid_asi_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal EQ_u8_u1_3166_wire : std_logic_vector(0 downto 0);
    signal EQ_u8_u1_3169_wire : std_logic_vector(0 downto 0);
    signal EQ_u8_u1_3175_wire : std_logic_vector(0 downto 0);
    signal EQ_u8_u1_3178_wire : std_logic_vector(0 downto 0);
    signal EQ_u8_u1_3184_wire : std_logic_vector(0 downto 0);
    signal EQ_u8_u1_3187_wire : std_logic_vector(0 downto 0);
    signal EQ_u8_u1_3191_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3188_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3216_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3218_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3221_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3223_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3224_wire : std_logic_vector(0 downto 0);
    signal R_ASI_MMU_DIAGNOSTIC_IO_3190_wire_constant : std_logic_vector(7 downto 0);
    signal R_ASI_MMU_DIAGNOSTIC_I_3183_wire_constant : std_logic_vector(7 downto 0);
    signal R_ASI_MMU_DIAGNOSTIC_I_D_3186_wire_constant : std_logic_vector(7 downto 0);
    signal R_ASI_MMU_FLUSH_PROBE_3196_wire_constant : std_logic_vector(7 downto 0);
    signal R_ASI_MMU_REGISTER_3201_wire_constant : std_logic_vector(7 downto 0);
    signal R_ASI_SUPERVISOR_DATA_3177_wire_constant : std_logic_vector(7 downto 0);
    signal R_ASI_SUPERVISOR_INSTRUCTION_3168_wire_constant : std_logic_vector(7 downto 0);
    signal R_ASI_USER_DATA_3174_wire_constant : std_logic_vector(7 downto 0);
    signal R_ASI_USER_INSTRUCTION_3165_wire_constant : std_logic_vector(7 downto 0);
    signal UGE_u8_u1_3207_wire : std_logic_vector(0 downto 0);
    signal ULE_u8_u1_3210_wire : std_logic_vector(0 downto 0);
    signal asi_3162 : std_logic_vector(7 downto 0);
    signal konst_3160_wire_constant : std_logic_vector(7 downto 0);
    signal konst_3206_wire_constant : std_logic_vector(7 downto 0);
    signal konst_3209_wire_constant : std_logic_vector(7 downto 0);
    -- 
  begin -- 
    R_ASI_MMU_DIAGNOSTIC_IO_3190_wire_constant <= "00000111";
    R_ASI_MMU_DIAGNOSTIC_I_3183_wire_constant <= "00000101";
    R_ASI_MMU_DIAGNOSTIC_I_D_3186_wire_constant <= "00000110";
    R_ASI_MMU_FLUSH_PROBE_3196_wire_constant <= "00000011";
    R_ASI_MMU_REGISTER_3201_wire_constant <= "00000100";
    R_ASI_SUPERVISOR_DATA_3177_wire_constant <= "00001011";
    R_ASI_SUPERVISOR_INSTRUCTION_3168_wire_constant <= "00001001";
    R_ASI_USER_DATA_3174_wire_constant <= "00001010";
    R_ASI_USER_INSTRUCTION_3165_wire_constant <= "00001000";
    konst_3160_wire_constant <= "01111111";
    konst_3206_wire_constant <= "00100000";
    konst_3209_wire_constant <= "00101111";
    -- flow through binary operator AND_u1_u1_3211_inst
    is_mmu_bypass_buffer <= (UGE_u8_u1_3207_wire and ULE_u8_u1_3210_wire);
    -- flow through binary operator AND_u8_u8_3161_inst
    asi_3162 <= (asi_in_buffer and konst_3160_wire_constant);
    -- flow through binary operator EQ_u8_u1_3166_inst
    process(asi_3162) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_3162, R_ASI_USER_INSTRUCTION_3165_wire_constant, tmp_var);
      EQ_u8_u1_3166_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_3169_inst
    process(asi_3162) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_3162, R_ASI_SUPERVISOR_INSTRUCTION_3168_wire_constant, tmp_var);
      EQ_u8_u1_3169_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_3175_inst
    process(asi_3162) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_3162, R_ASI_USER_DATA_3174_wire_constant, tmp_var);
      EQ_u8_u1_3175_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_3178_inst
    process(asi_3162) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_3162, R_ASI_SUPERVISOR_DATA_3177_wire_constant, tmp_var);
      EQ_u8_u1_3178_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_3184_inst
    process(asi_3162) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_3162, R_ASI_MMU_DIAGNOSTIC_I_3183_wire_constant, tmp_var);
      EQ_u8_u1_3184_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_3187_inst
    process(asi_3162) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_3162, R_ASI_MMU_DIAGNOSTIC_I_D_3186_wire_constant, tmp_var);
      EQ_u8_u1_3187_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_3191_inst
    process(asi_3162) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_3162, R_ASI_MMU_DIAGNOSTIC_IO_3190_wire_constant, tmp_var);
      EQ_u8_u1_3191_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_3197_inst
    process(asi_3162) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_3162, R_ASI_MMU_FLUSH_PROBE_3196_wire_constant, tmp_var);
      is_mmu_flush_probe_buffer <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_3202_inst
    process(asi_3162) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_3162, R_ASI_MMU_REGISTER_3201_wire_constant, tmp_var);
      is_mmu_ctrl_reg_buffer <= tmp_var; --
    end process;
    -- unary operator NOT_u1_u1_3225_inst
    process(OR_u1_u1_3224_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", OR_u1_u1_3224_wire, tmp_var);
      invalid_asi_buffer <= tmp_var; -- 
    end process;
    -- flow through binary operator OR_u1_u1_3170_inst
    is_ifetch_buffer <= (EQ_u8_u1_3166_wire or EQ_u8_u1_3169_wire);
    -- flow through binary operator OR_u1_u1_3179_inst
    is_data_mem_access_buffer <= (EQ_u8_u1_3175_wire or EQ_u8_u1_3178_wire);
    -- flow through binary operator OR_u1_u1_3188_inst
    OR_u1_u1_3188_wire <= (EQ_u8_u1_3184_wire or EQ_u8_u1_3187_wire);
    -- flow through binary operator OR_u1_u1_3192_inst
    is_mmu_diagnostic_buffer <= (OR_u1_u1_3188_wire or EQ_u8_u1_3191_wire);
    -- flow through binary operator OR_u1_u1_3216_inst
    OR_u1_u1_3216_wire <= (is_ifetch_buffer or is_data_mem_access_buffer);
    -- flow through binary operator OR_u1_u1_3218_inst
    OR_u1_u1_3218_wire <= (OR_u1_u1_3216_wire or is_mmu_diagnostic_buffer);
    -- flow through binary operator OR_u1_u1_3221_inst
    OR_u1_u1_3221_wire <= (is_mmu_flush_probe_buffer or is_mmu_ctrl_reg_buffer);
    -- flow through binary operator OR_u1_u1_3223_inst
    OR_u1_u1_3223_wire <= (OR_u1_u1_3221_wire or is_mmu_bypass_buffer);
    -- flow through binary operator OR_u1_u1_3224_inst
    OR_u1_u1_3224_wire <= (OR_u1_u1_3218_wire or OR_u1_u1_3223_wire);
    -- flow through binary operator UGE_u8_u1_3207_inst
    process(asi_3162) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUge_proc(asi_3162, konst_3206_wire_constant, tmp_var);
      UGE_u8_u1_3207_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULE_u8_u1_3210_inst
    process(asi_3162) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUle_proc(asi_3162, konst_3209_wire_constant, tmp_var);
      ULE_u8_u1_3210_wire <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end decodeAsi_Volatile_arch;
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
library munit_dummy_mmu;
use munit_dummy_mmu.dummy_mmu_global_package.all;
entity decodeCacheRequest_Volatile is -- 
  port ( -- 
    valid_flag : in  std_logic_vector(0 downto 0);
    from_dcache : in  std_logic_vector(0 downto 0);
    asi : in  std_logic_vector(7 downto 0);
    request_type : in  std_logic_vector(7 downto 0);
    ctrl_word_id : in  std_logic_vector(2 downto 0);
    is_read_dword : out  std_logic_vector(0 downto 0);
    is_read_line : out  std_logic_vector(0 downto 0);
    is_write_dword : out  std_logic_vector(0 downto 0);
    is_write_fsr_far : out  std_logic_vector(0 downto 0);
    is_flush_tlb : out  std_logic_vector(0 downto 0);
    send_response : out  std_logic_vector(0 downto 0);
    is_mmu_probe : out  std_logic_vector(0 downto 0);
    is_normal_mem_access : out  std_logic_vector(0 downto 0);
    is_mmu_reg_access : out  std_logic_vector(0 downto 0);
    is_mmu_bypass_request : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity decodeCacheRequest_Volatile;
architecture decodeCacheRequest_Volatile_arch of decodeCacheRequest_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(21-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal valid_flag_buffer :  std_logic_vector(0 downto 0);
  signal from_dcache_buffer :  std_logic_vector(0 downto 0);
  signal asi_buffer :  std_logic_vector(7 downto 0);
  signal request_type_buffer :  std_logic_vector(7 downto 0);
  signal ctrl_word_id_buffer :  std_logic_vector(2 downto 0);
  -- output port buffer signals
  signal is_read_dword_buffer :  std_logic_vector(0 downto 0);
  signal is_read_line_buffer :  std_logic_vector(0 downto 0);
  signal is_write_dword_buffer :  std_logic_vector(0 downto 0);
  signal is_write_fsr_far_buffer :  std_logic_vector(0 downto 0);
  signal is_flush_tlb_buffer :  std_logic_vector(0 downto 0);
  signal send_response_buffer :  std_logic_vector(0 downto 0);
  signal is_mmu_probe_buffer :  std_logic_vector(0 downto 0);
  signal is_normal_mem_access_buffer :  std_logic_vector(0 downto 0);
  signal is_mmu_reg_access_buffer :  std_logic_vector(0 downto 0);
  signal is_mmu_bypass_request_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  component decodeAsi_Volatile is -- 
    port ( -- 
      asi_in : in  std_logic_vector(7 downto 0);
      is_ifetch : out  std_logic_vector(0 downto 0);
      is_data_mem_access : out  std_logic_vector(0 downto 0);
      is_mmu_diagnostic : out  std_logic_vector(0 downto 0);
      is_mmu_ctrl_reg : out  std_logic_vector(0 downto 0);
      is_mmu_bypass : out  std_logic_vector(0 downto 0);
      is_mmu_flush_probe : out  std_logic_vector(0 downto 0);
      invalid_asi : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  component decodeRequestType_Volatile is -- 
    port ( -- 
      req_type_in : in  std_logic_vector(7 downto 0);
      read_dword : out  std_logic_vector(0 downto 0);
      read_line : out  std_logic_vector(0 downto 0);
      write_dword : out  std_logic_vector(0 downto 0);
      send_response : out  std_logic_vector(0 downto 0);
      is_write_fsr_far : out  std_logic_vector(0 downto 0);
      nop : out  std_logic_vector(0 downto 0);
      invalid_request : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  -- 
begin --  
  -- input handling ------------------------------------------------
  valid_flag_buffer <= valid_flag;
  from_dcache_buffer <= from_dcache;
  asi_buffer <= asi;
  request_type_buffer <= request_type;
  ctrl_word_id_buffer <= ctrl_word_id;
  -- output handling  -------------------------------------------------------
  is_read_dword <= is_read_dword_buffer;
  is_read_line <= is_read_line_buffer;
  is_write_dword <= is_write_dword_buffer;
  is_write_fsr_far <= is_write_fsr_far_buffer;
  is_flush_tlb <= is_flush_tlb_buffer;
  send_response <= send_response_buffer;
  is_mmu_probe <= is_mmu_probe_buffer;
  is_normal_mem_access <= is_normal_mem_access_buffer;
  is_mmu_reg_access <= is_mmu_reg_access_buffer;
  is_mmu_bypass_request <= is_mmu_bypass_request_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_3359_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3368_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3382_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_3362_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3371_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3390_wire : std_logic_vector(0 downto 0);
    signal invalid_asi_3321 : std_logic_vector(0 downto 0);
    signal invalid_request_3335 : std_logic_vector(0 downto 0);
    signal is_ctxt_table_ptr_access_3364 : std_logic_vector(0 downto 0);
    signal is_data_mem_access_3321 : std_logic_vector(0 downto 0);
    signal is_ifetch_3321 : std_logic_vector(0 downto 0);
    signal is_mmu_bypass_3321 : std_logic_vector(0 downto 0);
    signal is_mmu_ctrl_reg_3321 : std_logic_vector(0 downto 0);
    signal is_mmu_diagnostic_3321 : std_logic_vector(0 downto 0);
    signal is_mmu_flush_probe_3321 : std_logic_vector(0 downto 0);
    signal konst_3324_wire_constant : std_logic_vector(7 downto 0);
    signal konst_3361_wire_constant : std_logic_vector(2 downto 0);
    signal nop_3335 : std_logic_vector(0 downto 0);
    signal r_send_response_3335 : std_logic_vector(0 downto 0);
    signal read_dword_3335 : std_logic_vector(0 downto 0);
    signal read_line_3335 : std_logic_vector(0 downto 0);
    signal req_type_base_3326 : std_logic_vector(7 downto 0);
    signal wr_fsr_3335 : std_logic_vector(0 downto 0);
    signal write_dword_3335 : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    konst_3324_wire_constant <= "00001111";
    konst_3361_wire_constant <= "001";
    -- flow through binary operator AND_u1_u1_3339_inst
    is_read_dword_buffer <= (valid_flag_buffer and read_dword_3335);
    -- flow through binary operator AND_u1_u1_3344_inst
    is_read_line_buffer <= (valid_flag_buffer and read_line_3335);
    -- flow through binary operator AND_u1_u1_3349_inst
    is_write_dword_buffer <= (valid_flag_buffer and write_dword_3335);
    -- flow through binary operator AND_u1_u1_3354_inst
    is_write_fsr_far_buffer <= (valid_flag_buffer and wr_fsr_3335);
    -- flow through binary operator AND_u1_u1_3359_inst
    AND_u1_u1_3359_wire <= (valid_flag_buffer and is_mmu_ctrl_reg_3321);
    -- flow through binary operator AND_u1_u1_3363_inst
    is_ctxt_table_ptr_access_3364 <= (AND_u1_u1_3359_wire and EQ_u3_u1_3362_wire);
    -- flow through binary operator AND_u1_u1_3368_inst
    AND_u1_u1_3368_wire <= (valid_flag_buffer and write_dword_3335);
    -- flow through binary operator AND_u1_u1_3372_inst
    is_flush_tlb_buffer <= (AND_u1_u1_3368_wire and OR_u1_u1_3371_wire);
    -- flow through binary operator AND_u1_u1_3377_inst
    send_response_buffer <= (valid_flag_buffer and r_send_response_3335);
    -- flow through binary operator AND_u1_u1_3382_inst
    AND_u1_u1_3382_wire <= (valid_flag_buffer and read_dword_3335);
    -- flow through binary operator AND_u1_u1_3384_inst
    is_mmu_probe_buffer <= (AND_u1_u1_3382_wire and is_mmu_flush_probe_3321);
    -- flow through binary operator AND_u1_u1_3391_inst
    is_normal_mem_access_buffer <= (valid_flag_buffer and OR_u1_u1_3390_wire);
    -- flow through binary operator AND_u1_u1_3396_inst
    is_mmu_reg_access_buffer <= (valid_flag_buffer and is_mmu_ctrl_reg_3321);
    -- flow through binary operator AND_u1_u1_3401_inst
    is_mmu_bypass_request_buffer <= (valid_flag_buffer and is_mmu_bypass_3321);
    -- flow through binary operator AND_u8_u8_3325_inst
    req_type_base_3326 <= (request_type_buffer and konst_3324_wire_constant);
    -- flow through binary operator EQ_u3_u1_3362_inst
    process(ctrl_word_id_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(ctrl_word_id_buffer, konst_3361_wire_constant, tmp_var);
      EQ_u3_u1_3362_wire <= tmp_var; --
    end process;
    -- flow through binary operator OR_u1_u1_3371_inst
    OR_u1_u1_3371_wire <= (is_ctxt_table_ptr_access_3364 or is_mmu_flush_probe_3321);
    -- flow through binary operator OR_u1_u1_3390_inst
    OR_u1_u1_3390_wire <= (is_ifetch_3321 or is_data_mem_access_3321);
    volatile_operator_decodeAsi_5305: decodeAsi_Volatile port map(asi_in => asi_buffer, is_ifetch => is_ifetch_3321, is_data_mem_access => is_data_mem_access_3321, is_mmu_diagnostic => is_mmu_diagnostic_3321, is_mmu_ctrl_reg => is_mmu_ctrl_reg_3321, is_mmu_bypass => is_mmu_bypass_3321, is_mmu_flush_probe => is_mmu_flush_probe_3321, invalid_asi => invalid_asi_3321); 
    volatile_operator_decodeRequestType_5307: decodeRequestType_Volatile port map(req_type_in => req_type_base_3326, read_dword => read_dword_3335, read_line => read_line_3335, write_dword => write_dword_3335, send_response => r_send_response_3335, is_write_fsr_far => wr_fsr_3335, nop => nop_3335, invalid_request => invalid_request_3335); 
    -- 
  end Block; -- data_path
  -- 
end decodeCacheRequest_Volatile_arch;
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
library munit_dummy_mmu;
use munit_dummy_mmu.dummy_mmu_global_package.all;
entity decodeRequestType_Volatile is -- 
  port ( -- 
    req_type_in : in  std_logic_vector(7 downto 0);
    read_dword : out  std_logic_vector(0 downto 0);
    read_line : out  std_logic_vector(0 downto 0);
    write_dword : out  std_logic_vector(0 downto 0);
    send_response : out  std_logic_vector(0 downto 0);
    is_write_fsr_far : out  std_logic_vector(0 downto 0);
    nop : out  std_logic_vector(0 downto 0);
    invalid_request : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity decodeRequestType_Volatile;
architecture decodeRequestType_Volatile_arch of decodeRequestType_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(8-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal req_type_in_buffer :  std_logic_vector(7 downto 0);
  -- output port buffer signals
  signal read_dword_buffer :  std_logic_vector(0 downto 0);
  signal read_line_buffer :  std_logic_vector(0 downto 0);
  signal write_dword_buffer :  std_logic_vector(0 downto 0);
  signal send_response_buffer :  std_logic_vector(0 downto 0);
  signal is_write_fsr_far_buffer :  std_logic_vector(0 downto 0);
  signal nop_buffer :  std_logic_vector(0 downto 0);
  signal invalid_request_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  req_type_in_buffer <= req_type_in;
  -- output handling  -------------------------------------------------------
  read_dword <= read_dword_buffer;
  read_line <= read_line_buffer;
  write_dword <= write_dword_buffer;
  send_response <= send_response_buffer;
  is_write_fsr_far <= is_write_fsr_far_buffer;
  nop <= nop_buffer;
  nop_buffer <= "0";
  invalid_request <= invalid_request_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal EQ_u8_u1_3250_wire : std_logic_vector(0 downto 0);
    signal EQ_u8_u1_3253_wire : std_logic_vector(0 downto 0);
    signal EQ_u8_u1_3259_wire : std_logic_vector(0 downto 0);
    signal EQ_u8_u1_3262_wire : std_logic_vector(0 downto 0);
    signal EQ_u8_u1_3266_wire : std_logic_vector(0 downto 0);
    signal EQ_u8_u1_3280_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3263_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3277_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3289_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3292_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3293_wire : std_logic_vector(0 downto 0);
    signal R_MMU_READ_DWORD_3244_wire_constant : std_logic_vector(7 downto 0);
    signal R_MMU_READ_LINE_3249_wire_constant : std_logic_vector(7 downto 0);
    signal R_MMU_WRITE_DWORD_3261_wire_constant : std_logic_vector(7 downto 0);
    signal R_MMU_WRITE_DWORD_3279_wire_constant : std_logic_vector(7 downto 0);
    signal R_MMU_WRITE_DWORD_AND_READ_LINE_3252_wire_constant : std_logic_vector(7 downto 0);
    signal R_MMU_WRITE_DWORD_AND_READ_LINE_3265_wire_constant : std_logic_vector(7 downto 0);
    signal R_MMU_WRITE_DWORD_NO_RESPONSE_3258_wire_constant : std_logic_vector(7 downto 0);
    signal R_MMU_WRITE_FSR_3271_wire_constant : std_logic_vector(7 downto 0);
    signal konst_3239_wire_constant : std_logic_vector(7 downto 0);
    signal req_type_3241 : std_logic_vector(7 downto 0);
    -- 
  begin -- 
    R_MMU_READ_DWORD_3244_wire_constant <= "00000010";
    R_MMU_READ_LINE_3249_wire_constant <= "00000011";
    R_MMU_WRITE_DWORD_3261_wire_constant <= "00000001";
    R_MMU_WRITE_DWORD_3279_wire_constant <= "00000001";
    R_MMU_WRITE_DWORD_AND_READ_LINE_3252_wire_constant <= "00000111";
    R_MMU_WRITE_DWORD_AND_READ_LINE_3265_wire_constant <= "00000111";
    R_MMU_WRITE_DWORD_NO_RESPONSE_3258_wire_constant <= "00000101";
    R_MMU_WRITE_FSR_3271_wire_constant <= "00000100";
    konst_3239_wire_constant <= "01111111";
    -- flow through binary operator AND_u8_u8_3240_inst
    req_type_3241 <= (req_type_in_buffer and konst_3239_wire_constant);
    -- flow through binary operator EQ_u8_u1_3245_inst
    process(req_type_3241) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(req_type_3241, R_MMU_READ_DWORD_3244_wire_constant, tmp_var);
      read_dword_buffer <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_3250_inst
    process(req_type_3241) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(req_type_3241, R_MMU_READ_LINE_3249_wire_constant, tmp_var);
      EQ_u8_u1_3250_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_3253_inst
    process(req_type_3241) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(req_type_3241, R_MMU_WRITE_DWORD_AND_READ_LINE_3252_wire_constant, tmp_var);
      EQ_u8_u1_3253_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_3259_inst
    process(req_type_3241) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(req_type_3241, R_MMU_WRITE_DWORD_NO_RESPONSE_3258_wire_constant, tmp_var);
      EQ_u8_u1_3259_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_3262_inst
    process(req_type_3241) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(req_type_3241, R_MMU_WRITE_DWORD_3261_wire_constant, tmp_var);
      EQ_u8_u1_3262_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_3266_inst
    process(req_type_3241) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(req_type_3241, R_MMU_WRITE_DWORD_AND_READ_LINE_3265_wire_constant, tmp_var);
      EQ_u8_u1_3266_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_3272_inst
    process(req_type_3241) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(req_type_3241, R_MMU_WRITE_FSR_3271_wire_constant, tmp_var);
      is_write_fsr_far_buffer <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_3280_inst
    process(req_type_3241) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(req_type_3241, R_MMU_WRITE_DWORD_3279_wire_constant, tmp_var);
      EQ_u8_u1_3280_wire <= tmp_var; --
    end process;
    -- unary operator NOT_u1_u1_3294_inst
    process(OR_u1_u1_3293_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", OR_u1_u1_3293_wire, tmp_var);
      invalid_request_buffer <= tmp_var; -- 
    end process;
    -- flow through binary operator OR_u1_u1_3254_inst
    read_line_buffer <= (EQ_u8_u1_3250_wire or EQ_u8_u1_3253_wire);
    -- flow through binary operator OR_u1_u1_3263_inst
    OR_u1_u1_3263_wire <= (EQ_u8_u1_3259_wire or EQ_u8_u1_3262_wire);
    -- flow through binary operator OR_u1_u1_3267_inst
    write_dword_buffer <= (OR_u1_u1_3263_wire or EQ_u8_u1_3266_wire);
    -- flow through binary operator OR_u1_u1_3277_inst
    OR_u1_u1_3277_wire <= (read_dword_buffer or read_line_buffer);
    -- flow through binary operator OR_u1_u1_3281_inst
    send_response_buffer <= (OR_u1_u1_3277_wire or EQ_u8_u1_3280_wire);
    -- flow through binary operator OR_u1_u1_3289_inst
    OR_u1_u1_3289_wire <= (read_dword_buffer or read_line_buffer);
    -- flow through binary operator OR_u1_u1_3292_inst
    OR_u1_u1_3292_wire <= (write_dword_buffer or is_write_fsr_far_buffer);
    -- flow through binary operator OR_u1_u1_3293_inst
    OR_u1_u1_3293_wire <= (OR_u1_u1_3289_wire or OR_u1_u1_3292_wire);
    -- 
  end Block; -- data_path
  -- 
end decodeRequestType_Volatile_arch;
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
library munit_dummy_mmu;
use munit_dummy_mmu.dummy_mmu_global_package.all;
entity deconstruct_core_response_Volatile is -- 
  port ( -- 
    from_bus : in  std_logic_vector(64 downto 0);
    read_data : out  std_logic_vector(63 downto 0);
    access_error : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity deconstruct_core_response_Volatile;
architecture deconstruct_core_response_Volatile_arch of deconstruct_core_response_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(65-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal from_bus_buffer :  std_logic_vector(64 downto 0);
  -- output port buffer signals
  signal read_data_buffer :  std_logic_vector(63 downto 0);
  signal access_error_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  from_bus_buffer <= from_bus;
  -- output handling  -------------------------------------------------------
  read_data <= read_data_buffer;
  access_error <= access_error_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    -- 
  begin -- 
    -- flow-through slice operator slice_1072_inst
    access_error_buffer <= from_bus_buffer(64 downto 64);
    -- flow-through slice operator slice_1076_inst
    read_data_buffer <= from_bus_buffer(63 downto 0);
    -- 
  end Block; -- data_path
  -- 
end deconstruct_core_response_Volatile_arch;
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
library munit_dummy_mmu;
use munit_dummy_mmu.dummy_mmu_global_package.all;
entity dummyCoherencyDaemon is -- 
  generic (tag_length : integer); 
  port ( -- 
    INVALIDATE_REQUEST_pipe_read_req : out  std_logic_vector(0 downto 0);
    INVALIDATE_REQUEST_pipe_read_ack : in   std_logic_vector(0 downto 0);
    INVALIDATE_REQUEST_pipe_read_data : in   std_logic_vector(29 downto 0);
    NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_req : out  std_logic_vector(0 downto 0);
    NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_ack : in   std_logic_vector(0 downto 0);
    NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_data : out  std_logic_vector(26 downto 0);
    NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_req : out  std_logic_vector(0 downto 0);
    NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_ack : in   std_logic_vector(0 downto 0);
    NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_data : out  std_logic_vector(26 downto 0);
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
end entity dummyCoherencyDaemon;
architecture dummyCoherencyDaemon_arch of dummyCoherencyDaemon is -- 
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
  signal dummyCoherencyDaemon_CP_2740_start: Boolean;
  signal dummyCoherencyDaemon_CP_2740_symbol: Boolean;
  -- volatile/operator module components. 
  -- links between control-path and data-path
  signal do_while_stmt_3424_branch_req_0 : boolean;
  signal RPIPE_INVALIDATE_REQUEST_3427_inst_ack_0 : boolean;
  signal WPIPE_NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_3440_inst_ack_0 : boolean;
  signal WPIPE_NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_3437_inst_req_1 : boolean;
  signal RPIPE_INVALIDATE_REQUEST_3427_inst_req_0 : boolean;
  signal WPIPE_NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_3437_inst_ack_1 : boolean;
  signal WPIPE_NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_3440_inst_ack_1 : boolean;
  signal WPIPE_NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_3440_inst_req_1 : boolean;
  signal RPIPE_INVALIDATE_REQUEST_3427_inst_req_1 : boolean;
  signal RPIPE_INVALIDATE_REQUEST_3427_inst_ack_1 : boolean;
  signal WPIPE_NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_3437_inst_ack_0 : boolean;
  signal WPIPE_NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_3437_inst_req_0 : boolean;
  signal WPIPE_NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_3440_inst_req_0 : boolean;
  signal do_while_stmt_3424_branch_ack_1 : boolean;
  signal do_while_stmt_3424_branch_ack_0 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "dummyCoherencyDaemon_input_buffer", -- 
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
  dummyCoherencyDaemon_CP_2740_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "dummyCoherencyDaemon_out_buffer", -- 
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
    preds <= dummyCoherencyDaemon_CP_2740_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
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
    preds <= dummyCoherencyDaemon_CP_2740_start & tag_ilock_write_ack_symbol;
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
    preds <= dummyCoherencyDaemon_CP_2740_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  dummyCoherencyDaemon_CP_2740: Block -- control-path 
    signal dummyCoherencyDaemon_CP_2740_elements: BooleanArray(24 downto 0);
    -- 
  begin -- 
    dummyCoherencyDaemon_CP_2740_elements(0) <= dummyCoherencyDaemon_CP_2740_start;
    dummyCoherencyDaemon_CP_2740_symbol <= dummyCoherencyDaemon_CP_2740_elements(1);
    -- CP-element group 0:  transition  place  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	2 
    -- CP-element group 0:  members (4) 
      -- CP-element group 0: 	 branch_block_stmt_3423/branch_block_stmt_3423__entry__
      -- CP-element group 0: 	 branch_block_stmt_3423/$entry
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 branch_block_stmt_3423/do_while_stmt_3424__entry__
      -- 
    -- CP-element group 1:  transition  place  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	24 
    -- CP-element group 1: successors 
    -- CP-element group 1:  members (4) 
      -- CP-element group 1: 	 branch_block_stmt_3423/branch_block_stmt_3423__exit__
      -- CP-element group 1: 	 $exit
      -- CP-element group 1: 	 branch_block_stmt_3423/do_while_stmt_3424__exit__
      -- CP-element group 1: 	 branch_block_stmt_3423/$exit
      -- 
    dummyCoherencyDaemon_CP_2740_elements(1) <= dummyCoherencyDaemon_CP_2740_elements(24);
    -- CP-element group 2:  transition  place  bypass  pipeline-parent 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	0 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	8 
    -- CP-element group 2:  members (2) 
      -- CP-element group 2: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424__entry__
      -- CP-element group 2: 	 branch_block_stmt_3423/do_while_stmt_3424/$entry
      -- 
    dummyCoherencyDaemon_CP_2740_elements(2) <= dummyCoherencyDaemon_CP_2740_elements(0);
    -- CP-element group 3:  merge  place  bypass  pipeline-parent 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	24 
    -- CP-element group 3:  members (1) 
      -- CP-element group 3: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424__exit__
      -- 
    -- Element group dummyCoherencyDaemon_CP_2740_elements(3) is bound as output of CP function.
    -- CP-element group 4:  merge  place  bypass  pipeline-parent 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	7 
    -- CP-element group 4:  members (1) 
      -- CP-element group 4: 	 branch_block_stmt_3423/do_while_stmt_3424/loop_back
      -- 
    -- Element group dummyCoherencyDaemon_CP_2740_elements(4) is bound as output of CP function.
    -- CP-element group 5:  branch  transition  place  bypass  pipeline-parent 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	20 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	22 
    -- CP-element group 5: 	23 
    -- CP-element group 5:  members (3) 
      -- CP-element group 5: 	 branch_block_stmt_3423/do_while_stmt_3424/condition_done
      -- CP-element group 5: 	 branch_block_stmt_3423/do_while_stmt_3424/loop_exit/$entry
      -- CP-element group 5: 	 branch_block_stmt_3423/do_while_stmt_3424/loop_taken/$entry
      -- 
    dummyCoherencyDaemon_CP_2740_elements(5) <= dummyCoherencyDaemon_CP_2740_elements(20);
    -- CP-element group 6:  branch  place  bypass  pipeline-parent 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	21 
    -- CP-element group 6: successors 
    -- CP-element group 6:  members (1) 
      -- CP-element group 6: 	 branch_block_stmt_3423/do_while_stmt_3424/loop_body_done
      -- 
    dummyCoherencyDaemon_CP_2740_elements(6) <= dummyCoherencyDaemon_CP_2740_elements(21);
    -- CP-element group 7:  transition  bypass  pipeline-parent 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	4 
    -- CP-element group 7: successors 
    -- CP-element group 7:  members (1) 
      -- CP-element group 7: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/back_edge_to_loop_body
      -- 
    dummyCoherencyDaemon_CP_2740_elements(7) <= dummyCoherencyDaemon_CP_2740_elements(4);
    -- CP-element group 8:  transition  bypass  pipeline-parent 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	2 
    -- CP-element group 8: successors 
    -- CP-element group 8:  members (1) 
      -- CP-element group 8: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/first_time_through_loop_body
      -- 
    dummyCoherencyDaemon_CP_2740_elements(8) <= dummyCoherencyDaemon_CP_2740_elements(2);
    -- CP-element group 9:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	20 
    -- CP-element group 9: 	10 
    -- CP-element group 9:  members (2) 
      -- CP-element group 9: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/$entry
      -- CP-element group 9: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/loop_body_start
      -- 
    -- Element group dummyCoherencyDaemon_CP_2740_elements(9) is bound as output of CP function.
    -- CP-element group 10:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	9 
    -- CP-element group 10: marked-predecessors 
    -- CP-element group 10: 	13 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	12 
    -- CP-element group 10:  members (3) 
      -- CP-element group 10: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/RPIPE_INVALIDATE_REQUEST_3427_sample_start_
      -- CP-element group 10: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/RPIPE_INVALIDATE_REQUEST_3427_Sample/rr
      -- CP-element group 10: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/RPIPE_INVALIDATE_REQUEST_3427_Sample/$entry
      -- 
    rr_2773_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_2773_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyCoherencyDaemon_CP_2740_elements(10), ack => RPIPE_INVALIDATE_REQUEST_3427_inst_req_0); -- 
    dummyCoherencyDaemon_cp_element_group_10: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 40) := "dummyCoherencyDaemon_cp_element_group_10"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dummyCoherencyDaemon_CP_2740_elements(9) & dummyCoherencyDaemon_CP_2740_elements(13);
      gj_dummyCoherencyDaemon_cp_element_group_10 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyCoherencyDaemon_CP_2740_elements(10), clk => clk, reset => reset); --
    end block;
    -- CP-element group 11:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	12 
    -- CP-element group 11: marked-predecessors 
    -- CP-element group 11: 	15 
    -- CP-element group 11: 	18 
    -- CP-element group 11: successors 
    -- CP-element group 11: 	13 
    -- CP-element group 11:  members (3) 
      -- CP-element group 11: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/RPIPE_INVALIDATE_REQUEST_3427_update_start_
      -- CP-element group 11: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/RPIPE_INVALIDATE_REQUEST_3427_Update/$entry
      -- CP-element group 11: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/RPIPE_INVALIDATE_REQUEST_3427_Update/cr
      -- 
    cr_2778_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_2778_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyCoherencyDaemon_CP_2740_elements(11), ack => RPIPE_INVALIDATE_REQUEST_3427_inst_req_1); -- 
    dummyCoherencyDaemon_cp_element_group_11: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 40) := "dummyCoherencyDaemon_cp_element_group_11"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= dummyCoherencyDaemon_CP_2740_elements(12) & dummyCoherencyDaemon_CP_2740_elements(15) & dummyCoherencyDaemon_CP_2740_elements(18);
      gj_dummyCoherencyDaemon_cp_element_group_11 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyCoherencyDaemon_CP_2740_elements(11), clk => clk, reset => reset); --
    end block;
    -- CP-element group 12:  transition  input  bypass  pipeline-parent 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	10 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	11 
    -- CP-element group 12:  members (3) 
      -- CP-element group 12: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/RPIPE_INVALIDATE_REQUEST_3427_Sample/ra
      -- CP-element group 12: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/RPIPE_INVALIDATE_REQUEST_3427_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/RPIPE_INVALIDATE_REQUEST_3427_Sample/$exit
      -- 
    ra_2774_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 12_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_INVALIDATE_REQUEST_3427_inst_ack_0, ack => dummyCoherencyDaemon_CP_2740_elements(12)); -- 
    -- CP-element group 13:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: 	11 
    -- CP-element group 13: successors 
    -- CP-element group 13: 	17 
    -- CP-element group 13: 	14 
    -- CP-element group 13: marked-successors 
    -- CP-element group 13: 	10 
    -- CP-element group 13:  members (3) 
      -- CP-element group 13: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/RPIPE_INVALIDATE_REQUEST_3427_update_completed_
      -- CP-element group 13: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/RPIPE_INVALIDATE_REQUEST_3427_Update/$exit
      -- CP-element group 13: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/RPIPE_INVALIDATE_REQUEST_3427_Update/ca
      -- 
    ca_2779_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 13_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_INVALIDATE_REQUEST_3427_inst_ack_1, ack => dummyCoherencyDaemon_CP_2740_elements(13)); -- 
    -- CP-element group 14:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: 	13 
    -- CP-element group 14: marked-predecessors 
    -- CP-element group 14: 	16 
    -- CP-element group 14: successors 
    -- CP-element group 14: 	15 
    -- CP-element group 14:  members (3) 
      -- CP-element group 14: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/WPIPE_NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_3437_sample_start_
      -- CP-element group 14: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/WPIPE_NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_3437_Sample/$entry
      -- CP-element group 14: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/WPIPE_NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_3437_Sample/req
      -- 
    req_2787_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2787_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyCoherencyDaemon_CP_2740_elements(14), ack => WPIPE_NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_3437_inst_req_0); -- 
    dummyCoherencyDaemon_cp_element_group_14: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 40) := "dummyCoherencyDaemon_cp_element_group_14"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dummyCoherencyDaemon_CP_2740_elements(13) & dummyCoherencyDaemon_CP_2740_elements(16);
      gj_dummyCoherencyDaemon_cp_element_group_14 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyCoherencyDaemon_CP_2740_elements(14), clk => clk, reset => reset); --
    end block;
    -- CP-element group 15:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: 	14 
    -- CP-element group 15: successors 
    -- CP-element group 15: 	16 
    -- CP-element group 15: marked-successors 
    -- CP-element group 15: 	11 
    -- CP-element group 15:  members (6) 
      -- CP-element group 15: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/WPIPE_NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_3437_sample_completed_
      -- CP-element group 15: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/WPIPE_NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_3437_update_start_
      -- CP-element group 15: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/WPIPE_NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_3437_Update/$entry
      -- CP-element group 15: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/WPIPE_NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_3437_Sample/$exit
      -- CP-element group 15: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/WPIPE_NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_3437_Update/req
      -- CP-element group 15: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/WPIPE_NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_3437_Sample/ack
      -- 
    ack_2788_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 15_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_3437_inst_ack_0, ack => dummyCoherencyDaemon_CP_2740_elements(15)); -- 
    req_2792_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2792_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyCoherencyDaemon_CP_2740_elements(15), ack => WPIPE_NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_3437_inst_req_1); -- 
    -- CP-element group 16:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: 	15 
    -- CP-element group 16: successors 
    -- CP-element group 16: 	21 
    -- CP-element group 16: marked-successors 
    -- CP-element group 16: 	14 
    -- CP-element group 16:  members (3) 
      -- CP-element group 16: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/WPIPE_NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_3437_update_completed_
      -- CP-element group 16: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/WPIPE_NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_3437_Update/ack
      -- CP-element group 16: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/WPIPE_NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_3437_Update/$exit
      -- 
    ack_2793_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 16_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_3437_inst_ack_1, ack => dummyCoherencyDaemon_CP_2740_elements(16)); -- 
    -- CP-element group 17:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 17: predecessors 
    -- CP-element group 17: 	13 
    -- CP-element group 17: marked-predecessors 
    -- CP-element group 17: 	19 
    -- CP-element group 17: successors 
    -- CP-element group 17: 	18 
    -- CP-element group 17:  members (3) 
      -- CP-element group 17: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/WPIPE_NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_3440_sample_start_
      -- CP-element group 17: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/WPIPE_NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_3440_Sample/$entry
      -- CP-element group 17: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/WPIPE_NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_3440_Sample/req
      -- 
    req_2801_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2801_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyCoherencyDaemon_CP_2740_elements(17), ack => WPIPE_NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_3440_inst_req_0); -- 
    dummyCoherencyDaemon_cp_element_group_17: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 40) := "dummyCoherencyDaemon_cp_element_group_17"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dummyCoherencyDaemon_CP_2740_elements(13) & dummyCoherencyDaemon_CP_2740_elements(19);
      gj_dummyCoherencyDaemon_cp_element_group_17 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyCoherencyDaemon_CP_2740_elements(17), clk => clk, reset => reset); --
    end block;
    -- CP-element group 18:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 18: predecessors 
    -- CP-element group 18: 	17 
    -- CP-element group 18: successors 
    -- CP-element group 18: 	19 
    -- CP-element group 18: marked-successors 
    -- CP-element group 18: 	11 
    -- CP-element group 18:  members (6) 
      -- CP-element group 18: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/WPIPE_NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_3440_Sample/ack
      -- CP-element group 18: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/WPIPE_NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_3440_sample_completed_
      -- CP-element group 18: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/WPIPE_NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_3440_update_start_
      -- CP-element group 18: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/WPIPE_NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_3440_Update/$entry
      -- CP-element group 18: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/WPIPE_NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_3440_Update/req
      -- CP-element group 18: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/WPIPE_NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_3440_Sample/$exit
      -- 
    ack_2802_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 18_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_3440_inst_ack_0, ack => dummyCoherencyDaemon_CP_2740_elements(18)); -- 
    req_2806_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2806_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyCoherencyDaemon_CP_2740_elements(18), ack => WPIPE_NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_3440_inst_req_1); -- 
    -- CP-element group 19:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 19: predecessors 
    -- CP-element group 19: 	18 
    -- CP-element group 19: successors 
    -- CP-element group 19: 	21 
    -- CP-element group 19: marked-successors 
    -- CP-element group 19: 	17 
    -- CP-element group 19:  members (3) 
      -- CP-element group 19: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/WPIPE_NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_3440_update_completed_
      -- CP-element group 19: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/WPIPE_NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_3440_Update/ack
      -- CP-element group 19: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/WPIPE_NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_3440_Update/$exit
      -- 
    ack_2807_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 19_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_3440_inst_ack_1, ack => dummyCoherencyDaemon_CP_2740_elements(19)); -- 
    -- CP-element group 20:  transition  output  delay-element  bypass  pipeline-parent 
    -- CP-element group 20: predecessors 
    -- CP-element group 20: 	9 
    -- CP-element group 20: successors 
    -- CP-element group 20: 	5 
    -- CP-element group 20:  members (2) 
      -- CP-element group 20: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/condition_evaluated
      -- CP-element group 20: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/loop_body_delay_to_condition_start
      -- 
    condition_evaluated_2764_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " condition_evaluated_2764_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyCoherencyDaemon_CP_2740_elements(20), ack => do_while_stmt_3424_branch_req_0); -- 
    -- Element group dummyCoherencyDaemon_CP_2740_elements(20) is a control-delay.
    cp_element_20_delay: control_delay_element  generic map(name => " 20_delay", delay_value => 1)  port map(req => dummyCoherencyDaemon_CP_2740_elements(9), ack => dummyCoherencyDaemon_CP_2740_elements(20), clk => clk, reset =>reset);
    -- CP-element group 21:  join  transition  bypass  pipeline-parent 
    -- CP-element group 21: predecessors 
    -- CP-element group 21: 	16 
    -- CP-element group 21: 	19 
    -- CP-element group 21: successors 
    -- CP-element group 21: 	6 
    -- CP-element group 21:  members (1) 
      -- CP-element group 21: 	 branch_block_stmt_3423/do_while_stmt_3424/do_while_stmt_3424_loop_body/$exit
      -- 
    dummyCoherencyDaemon_cp_element_group_21: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 7);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 40) := "dummyCoherencyDaemon_cp_element_group_21"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dummyCoherencyDaemon_CP_2740_elements(16) & dummyCoherencyDaemon_CP_2740_elements(19);
      gj_dummyCoherencyDaemon_cp_element_group_21 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyCoherencyDaemon_CP_2740_elements(21), clk => clk, reset => reset); --
    end block;
    -- CP-element group 22:  transition  input  bypass  pipeline-parent 
    -- CP-element group 22: predecessors 
    -- CP-element group 22: 	5 
    -- CP-element group 22: successors 
    -- CP-element group 22:  members (2) 
      -- CP-element group 22: 	 branch_block_stmt_3423/do_while_stmt_3424/loop_exit/ack
      -- CP-element group 22: 	 branch_block_stmt_3423/do_while_stmt_3424/loop_exit/$exit
      -- 
    ack_2812_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 22_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_3424_branch_ack_0, ack => dummyCoherencyDaemon_CP_2740_elements(22)); -- 
    -- CP-element group 23:  transition  input  bypass  pipeline-parent 
    -- CP-element group 23: predecessors 
    -- CP-element group 23: 	5 
    -- CP-element group 23: successors 
    -- CP-element group 23:  members (2) 
      -- CP-element group 23: 	 branch_block_stmt_3423/do_while_stmt_3424/loop_taken/ack
      -- CP-element group 23: 	 branch_block_stmt_3423/do_while_stmt_3424/loop_taken/$exit
      -- 
    ack_2816_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 23_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_3424_branch_ack_1, ack => dummyCoherencyDaemon_CP_2740_elements(23)); -- 
    -- CP-element group 24:  transition  bypass  pipeline-parent 
    -- CP-element group 24: predecessors 
    -- CP-element group 24: 	3 
    -- CP-element group 24: successors 
    -- CP-element group 24: 	1 
    -- CP-element group 24:  members (1) 
      -- CP-element group 24: 	 branch_block_stmt_3423/do_while_stmt_3424/$exit
      -- 
    dummyCoherencyDaemon_CP_2740_elements(24) <= dummyCoherencyDaemon_CP_2740_elements(3);
    dummyCoherencyDaemon_do_while_stmt_3424_terminator_2817: loop_terminator -- 
      generic map (name => " dummyCoherencyDaemon_do_while_stmt_3424_terminator_2817", max_iterations_in_flight =>7) 
      port map(loop_body_exit => dummyCoherencyDaemon_CP_2740_elements(6),loop_continue => dummyCoherencyDaemon_CP_2740_elements(23),loop_terminate => dummyCoherencyDaemon_CP_2740_elements(22),loop_back => dummyCoherencyDaemon_CP_2740_elements(4),loop_exit => dummyCoherencyDaemon_CP_2740_elements(3),clk => clk, reset => reset); -- 
    entry_tmerge_2765_block : block -- 
      signal preds : BooleanArray(0 to 1);
      begin -- 
        preds(0)  <= dummyCoherencyDaemon_CP_2740_elements(7);
        preds(1)  <= dummyCoherencyDaemon_CP_2740_elements(8);
        entry_tmerge_2765 : transition_merge -- 
          generic map(name => " entry_tmerge_2765")
          port map (preds => preds, symbol_out => dummyCoherencyDaemon_CP_2740_elements(9));
          -- 
    end block;
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal ireq_3428 : std_logic_vector(29 downto 0);
    signal konst_3444_wire_constant : std_logic_vector(0 downto 0);
    signal slice_3434_wire : std_logic_vector(25 downto 0);
    signal syn_invalidate_word_3436 : std_logic_vector(26 downto 0);
    signal type_cast_3431_wire_constant : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    konst_3444_wire_constant <= "1";
    type_cast_3431_wire_constant <= "1";
    -- flow-through slice operator slice_3434_inst
    slice_3434_wire <= ireq_3428(25 downto 0);
    do_while_stmt_3424_branch: Block -- 
      -- branch-block
      signal condition_sig : std_logic_vector(0 downto 0);
      begin 
      condition_sig <= konst_3444_wire_constant;
      branch_instance: BranchBase -- 
        generic map( name => "do_while_stmt_3424_branch", condition_width => 1,  bypass_flag => true)
        port map( -- 
          condition => condition_sig,
          req => do_while_stmt_3424_branch_req_0,
          ack0 => do_while_stmt_3424_branch_ack_0,
          ack1 => do_while_stmt_3424_branch_ack_1,
          clk => clk,
          reset => reset); -- 
      --
    end Block; -- branch-block
    -- flow through binary operator CONCAT_u1_u27_3435_inst
    process(type_cast_3431_wire_constant, slice_3434_wire) -- 
      variable tmp_var : std_logic_vector(26 downto 0); -- 
    begin -- 
      ApConcat_proc(type_cast_3431_wire_constant, slice_3434_wire, tmp_var);
      syn_invalidate_word_3436 <= tmp_var; --
    end process;
    -- shared inport operator group (0) : RPIPE_INVALIDATE_REQUEST_3427_inst 
    InportGroup_0: Block -- 
      signal data_out: std_logic_vector(29 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_INVALIDATE_REQUEST_3427_inst_req_0;
      RPIPE_INVALIDATE_REQUEST_3427_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_INVALIDATE_REQUEST_3427_inst_req_1;
      RPIPE_INVALIDATE_REQUEST_3427_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      ireq_3428 <= data_out(29 downto 0);
      INVALIDATE_REQUEST_read_0_gI: SplitGuardInterface generic map(name => "INVALIDATE_REQUEST_read_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      INVALIDATE_REQUEST_read_0: InputPortRevised -- 
        generic map ( name => "INVALIDATE_REQUEST_read_0", data_width => 30,  num_reqs => 1,  output_buffering => outBUFs,   nonblocking_read_flag => False,  no_arbitration => false)
        port map (-- 
          sample_req => reqL , 
          sample_ack => ackL, 
          update_req => reqR, 
          update_ack => ackR, 
          data => data_out, 
          oreq => INVALIDATE_REQUEST_pipe_read_req(0),
          oack => INVALIDATE_REQUEST_pipe_read_ack(0),
          odata => INVALIDATE_REQUEST_pipe_read_data(29 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 0
    -- shared outport operator group (0) : WPIPE_NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_3437_inst 
    OutportGroup_0: Block -- 
      signal data_in: std_logic_vector(26 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_3437_inst_req_0;
      WPIPE_NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_3437_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_3437_inst_req_1;
      WPIPE_NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_3437_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= syn_invalidate_word_3436;
      NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_write_0_gI: SplitGuardInterface generic map(name => "NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_write_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_write_0: OutputPortRevised -- 
        generic map ( name => "NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE", data_width => 27, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_req(0),
          oack => NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_ack(0),
          odata => NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_data(26 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    -- shared outport operator group (1) : WPIPE_NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_3440_inst 
    OutportGroup_1: Block -- 
      signal data_in: std_logic_vector(26 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_3440_inst_req_0;
      WPIPE_NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_3440_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_3440_inst_req_1;
      WPIPE_NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_3440_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= syn_invalidate_word_3436;
      NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_write_1_gI: SplitGuardInterface generic map(name => "NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_write_1_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_write_1: OutputPortRevised -- 
        generic map ( name => "NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE", data_width => 27, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_req(0),
          oack => NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_ack(0),
          odata => NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_data(26 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 1
    -- 
  end Block; -- data_path
  -- 
end dummyCoherencyDaemon_arch;
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
library munit_dummy_mmu;
use munit_dummy_mmu.dummy_mmu_global_package.all;
entity dummyMmuDaemon is -- 
  generic (tag_length : integer); 
  port ( -- 
    NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_read_req : out  std_logic_vector(0 downto 0);
    NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_read_ack : in   std_logic_vector(0 downto 0);
    NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_read_data : in   std_logic_vector(121 downto 0);
    NOBLOCK_CPU_to_MMU_reset_pipe_read_req : out  std_logic_vector(0 downto 0);
    NOBLOCK_CPU_to_MMU_reset_pipe_read_ack : in   std_logic_vector(0 downto 0);
    NOBLOCK_CPU_to_MMU_reset_pipe_read_data : in   std_logic_vector(0 downto 0);
    MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_req : out  std_logic_vector(0 downto 0);
    MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_ack : in   std_logic_vector(0 downto 0);
    MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_data : out  std_logic_vector(26 downto 0);
    MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_req : out  std_logic_vector(0 downto 0);
    MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_ack : in   std_logic_vector(0 downto 0);
    MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_data : out  std_logic_vector(26 downto 0);
    MMU_to_CPU_reset_ack_pipe_write_req : out  std_logic_vector(0 downto 0);
    MMU_to_CPU_reset_ack_pipe_write_ack : in   std_logic_vector(0 downto 0);
    MMU_to_CPU_reset_ack_pipe_write_data : out  std_logic_vector(0 downto 0);
    noblock_mem_access_and_send_response_command_pipe_write_req : out  std_logic_vector(0 downto 0);
    noblock_mem_access_and_send_response_command_pipe_write_ack : in   std_logic_vector(0 downto 0);
    noblock_mem_access_and_send_response_command_pipe_write_data : out  std_logic_vector(208 downto 0);
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
end entity dummyMmuDaemon;
architecture dummyMmuDaemon_arch of dummyMmuDaemon is -- 
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
  signal dummyMmuDaemon_CP_2818_start: Boolean;
  signal dummyMmuDaemon_CP_2818_symbol: Boolean;
  -- volatile/operator module components. 
  component decodeCacheRequest_Volatile is -- 
    port ( -- 
      valid_flag : in  std_logic_vector(0 downto 0);
      from_dcache : in  std_logic_vector(0 downto 0);
      asi : in  std_logic_vector(7 downto 0);
      request_type : in  std_logic_vector(7 downto 0);
      ctrl_word_id : in  std_logic_vector(2 downto 0);
      is_read_dword : out  std_logic_vector(0 downto 0);
      is_read_line : out  std_logic_vector(0 downto 0);
      is_write_dword : out  std_logic_vector(0 downto 0);
      is_write_fsr_far : out  std_logic_vector(0 downto 0);
      is_flush_tlb : out  std_logic_vector(0 downto 0);
      send_response : out  std_logic_vector(0 downto 0);
      is_mmu_probe : out  std_logic_vector(0 downto 0);
      is_normal_mem_access : out  std_logic_vector(0 downto 0);
      is_mmu_reg_access : out  std_logic_vector(0 downto 0);
      is_mmu_bypass_request : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  -- links between control-path and data-path
  signal RPIPE_NOBLOCK_CPU_to_MMU_reset_3458_inst_req_0 : boolean;
  signal do_while_stmt_3449_branch_req_0 : boolean;
  signal phi_stmt_3455_ack_0 : boolean;
  signal phi_stmt_3455_req_0 : boolean;
  signal phi_stmt_3459_req_0 : boolean;
  signal RPIPE_NOBLOCK_CPU_to_MMU_reset_3458_inst_ack_0 : boolean;
  signal phi_stmt_3459_req_1 : boolean;
  signal phi_stmt_3455_req_1 : boolean;
  signal phi_stmt_3451_req_1 : boolean;
  signal phi_stmt_3451_ack_0 : boolean;
  signal phi_stmt_3451_req_0 : boolean;
  signal RPIPE_NOBLOCK_CPU_to_MMU_reset_3458_inst_req_1 : boolean;
  signal RPIPE_NOBLOCK_CPU_to_MMU_reset_3458_inst_ack_1 : boolean;
  signal phi_stmt_3459_ack_0 : boolean;
  signal RPIPE_NOBLOCK_CACHE_TO_MMU_REQUEST_3462_inst_req_0 : boolean;
  signal RPIPE_NOBLOCK_CACHE_TO_MMU_REQUEST_3462_inst_ack_0 : boolean;
  signal RPIPE_NOBLOCK_CACHE_TO_MMU_REQUEST_3462_inst_req_1 : boolean;
  signal RPIPE_NOBLOCK_CACHE_TO_MMU_REQUEST_3462_inst_ack_1 : boolean;
  signal WPIPE_MMU_to_CPU_reset_ack_3465_inst_req_0 : boolean;
  signal WPIPE_MMU_to_CPU_reset_ack_3465_inst_ack_0 : boolean;
  signal WPIPE_MMU_to_CPU_reset_ack_3465_inst_req_1 : boolean;
  signal WPIPE_MMU_to_CPU_reset_ack_3465_inst_ack_1 : boolean;
  signal WPIPE_MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_3583_inst_req_0 : boolean;
  signal WPIPE_MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_3583_inst_ack_0 : boolean;
  signal WPIPE_MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_3583_inst_req_1 : boolean;
  signal WPIPE_MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_3583_inst_ack_1 : boolean;
  signal WPIPE_MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_3588_inst_req_0 : boolean;
  signal WPIPE_MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_3588_inst_ack_0 : boolean;
  signal WPIPE_MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_3588_inst_req_1 : boolean;
  signal WPIPE_MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_3588_inst_ack_1 : boolean;
  signal WPIPE_noblock_mem_access_and_send_response_command_3659_inst_req_0 : boolean;
  signal WPIPE_noblock_mem_access_and_send_response_command_3659_inst_ack_0 : boolean;
  signal WPIPE_noblock_mem_access_and_send_response_command_3659_inst_req_1 : boolean;
  signal WPIPE_noblock_mem_access_and_send_response_command_3659_inst_ack_1 : boolean;
  signal do_while_stmt_3449_branch_ack_0 : boolean;
  signal do_while_stmt_3449_branch_ack_1 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "dummyMmuDaemon_input_buffer", -- 
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
  dummyMmuDaemon_CP_2818_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "dummyMmuDaemon_out_buffer", -- 
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
    preds <= dummyMmuDaemon_CP_2818_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
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
    preds <= dummyMmuDaemon_CP_2818_start & tag_ilock_write_ack_symbol;
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
    preds <= dummyMmuDaemon_CP_2818_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  dummyMmuDaemon_CP_2818: Block -- control-path 
    signal dummyMmuDaemon_CP_2818_elements: BooleanArray(91 downto 0);
    -- 
  begin -- 
    dummyMmuDaemon_CP_2818_elements(0) <= dummyMmuDaemon_CP_2818_start;
    dummyMmuDaemon_CP_2818_symbol <= dummyMmuDaemon_CP_2818_elements(1);
    -- CP-element group 0:  transition  place  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	2 
    -- CP-element group 0:  members (4) 
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 branch_block_stmt_3448/$entry
      -- CP-element group 0: 	 branch_block_stmt_3448/do_while_stmt_3449__entry__
      -- CP-element group 0: 	 branch_block_stmt_3448/branch_block_stmt_3448__entry__
      -- 
    -- CP-element group 1:  transition  place  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	91 
    -- CP-element group 1: successors 
    -- CP-element group 1:  members (4) 
      -- CP-element group 1: 	 branch_block_stmt_3448/$exit
      -- CP-element group 1: 	 $exit
      -- CP-element group 1: 	 branch_block_stmt_3448/do_while_stmt_3449__exit__
      -- CP-element group 1: 	 branch_block_stmt_3448/branch_block_stmt_3448__exit__
      -- 
    dummyMmuDaemon_CP_2818_elements(1) <= dummyMmuDaemon_CP_2818_elements(91);
    -- CP-element group 2:  transition  place  bypass  pipeline-parent 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	0 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	8 
    -- CP-element group 2:  members (2) 
      -- CP-element group 2: 	 branch_block_stmt_3448/do_while_stmt_3449/$entry
      -- CP-element group 2: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449__entry__
      -- 
    dummyMmuDaemon_CP_2818_elements(2) <= dummyMmuDaemon_CP_2818_elements(0);
    -- CP-element group 3:  merge  place  bypass  pipeline-parent 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	91 
    -- CP-element group 3:  members (1) 
      -- CP-element group 3: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449__exit__
      -- 
    -- Element group dummyMmuDaemon_CP_2818_elements(3) is bound as output of CP function.
    -- CP-element group 4:  merge  place  bypass  pipeline-parent 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	7 
    -- CP-element group 4:  members (1) 
      -- CP-element group 4: 	 branch_block_stmt_3448/do_while_stmt_3449/loop_back
      -- 
    -- Element group dummyMmuDaemon_CP_2818_elements(4) is bound as output of CP function.
    -- CP-element group 5:  branch  transition  place  bypass  pipeline-parent 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	10 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	89 
    -- CP-element group 5: 	90 
    -- CP-element group 5:  members (3) 
      -- CP-element group 5: 	 branch_block_stmt_3448/do_while_stmt_3449/condition_done
      -- CP-element group 5: 	 branch_block_stmt_3448/do_while_stmt_3449/loop_exit/$entry
      -- CP-element group 5: 	 branch_block_stmt_3448/do_while_stmt_3449/loop_taken/$entry
      -- 
    dummyMmuDaemon_CP_2818_elements(5) <= dummyMmuDaemon_CP_2818_elements(10);
    -- CP-element group 6:  branch  place  bypass  pipeline-parent 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	88 
    -- CP-element group 6: successors 
    -- CP-element group 6:  members (1) 
      -- CP-element group 6: 	 branch_block_stmt_3448/do_while_stmt_3449/loop_body_done
      -- 
    dummyMmuDaemon_CP_2818_elements(6) <= dummyMmuDaemon_CP_2818_elements(88);
    -- CP-element group 7:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	4 
    -- CP-element group 7: successors 
    -- CP-element group 7: 	20 
    -- CP-element group 7: 	39 
    -- CP-element group 7: 	60 
    -- CP-element group 7:  members (1) 
      -- CP-element group 7: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/back_edge_to_loop_body
      -- 
    dummyMmuDaemon_CP_2818_elements(7) <= dummyMmuDaemon_CP_2818_elements(4);
    -- CP-element group 8:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	2 
    -- CP-element group 8: successors 
    -- CP-element group 8: 	22 
    -- CP-element group 8: 	41 
    -- CP-element group 8: 	62 
    -- CP-element group 8:  members (1) 
      -- CP-element group 8: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/first_time_through_loop_body
      -- 
    dummyMmuDaemon_CP_2818_elements(8) <= dummyMmuDaemon_CP_2818_elements(2);
    -- CP-element group 9:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	16 
    -- CP-element group 9: 	17 
    -- CP-element group 9: 	33 
    -- CP-element group 9: 	34 
    -- CP-element group 9: 	54 
    -- CP-element group 9: 	55 
    -- CP-element group 9: 	87 
    -- CP-element group 9:  members (2) 
      -- CP-element group 9: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/loop_body_start
      -- CP-element group 9: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/$entry
      -- 
    -- Element group dummyMmuDaemon_CP_2818_elements(9) is bound as output of CP function.
    -- CP-element group 10:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	13 
    -- CP-element group 10: 	15 
    -- CP-element group 10: 	87 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	5 
    -- CP-element group 10:  members (1) 
      -- CP-element group 10: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/condition_evaluated
      -- 
    condition_evaluated_2842_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " condition_evaluated_2842_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyMmuDaemon_CP_2818_elements(10), ack => do_while_stmt_3449_branch_req_0); -- 
    dummyMmuDaemon_cp_element_group_10: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 34) := "dummyMmuDaemon_cp_element_group_10"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= dummyMmuDaemon_CP_2818_elements(13) & dummyMmuDaemon_CP_2818_elements(15) & dummyMmuDaemon_CP_2818_elements(87);
      gj_dummyMmuDaemon_cp_element_group_10 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyMmuDaemon_CP_2818_elements(10), clk => clk, reset => reset); --
    end block;
    -- CP-element group 11:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	16 
    -- CP-element group 11: 	33 
    -- CP-element group 11: 	54 
    -- CP-element group 11: marked-predecessors 
    -- CP-element group 11: 	15 
    -- CP-element group 11: successors 
    -- CP-element group 11: 	35 
    -- CP-element group 11: 	56 
    -- CP-element group 11:  members (2) 
      -- CP-element group 11: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/aggregated_phi_sample_req
      -- CP-element group 11: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3451_sample_start__ps
      -- 
    dummyMmuDaemon_cp_element_group_11: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 0,2 => 0,3 => 1);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 34) := "dummyMmuDaemon_cp_element_group_11"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= dummyMmuDaemon_CP_2818_elements(16) & dummyMmuDaemon_CP_2818_elements(33) & dummyMmuDaemon_CP_2818_elements(54) & dummyMmuDaemon_CP_2818_elements(15);
      gj_dummyMmuDaemon_cp_element_group_11 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyMmuDaemon_CP_2818_elements(11), clk => clk, reset => reset); --
    end block;
    -- CP-element group 12:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	18 
    -- CP-element group 12: 	36 
    -- CP-element group 12: 	57 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	13 
    -- CP-element group 12: 	88 
    -- CP-element group 12: marked-successors 
    -- CP-element group 12: 	16 
    -- CP-element group 12: 	33 
    -- CP-element group 12: 	54 
    -- CP-element group 12:  members (4) 
      -- CP-element group 12: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/aggregated_phi_sample_ack
      -- CP-element group 12: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3451_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3455_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3459_sample_completed_
      -- 
    dummyMmuDaemon_cp_element_group_12: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 34) := "dummyMmuDaemon_cp_element_group_12"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= dummyMmuDaemon_CP_2818_elements(18) & dummyMmuDaemon_CP_2818_elements(36) & dummyMmuDaemon_CP_2818_elements(57);
      gj_dummyMmuDaemon_cp_element_group_12 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyMmuDaemon_CP_2818_elements(12), clk => clk, reset => reset); --
    end block;
    -- CP-element group 13:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: 	12 
    -- CP-element group 13: successors 
    -- CP-element group 13: 	10 
    -- CP-element group 13:  members (1) 
      -- CP-element group 13: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/aggregated_phi_sample_ack_d
      -- 
    -- Element group dummyMmuDaemon_CP_2818_elements(13) is a control-delay.
    cp_element_13_delay: control_delay_element  generic map(name => " 13_delay", delay_value => 1)  port map(req => dummyMmuDaemon_CP_2818_elements(12), ack => dummyMmuDaemon_CP_2818_elements(13), clk => clk, reset =>reset);
    -- CP-element group 14:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: 	17 
    -- CP-element group 14: 	34 
    -- CP-element group 14: 	55 
    -- CP-element group 14: successors 
    -- CP-element group 14: 	37 
    -- CP-element group 14: 	58 
    -- CP-element group 14:  members (2) 
      -- CP-element group 14: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/aggregated_phi_update_req
      -- CP-element group 14: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3451_update_start__ps
      -- 
    dummyMmuDaemon_cp_element_group_14: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 34) := "dummyMmuDaemon_cp_element_group_14"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= dummyMmuDaemon_CP_2818_elements(17) & dummyMmuDaemon_CP_2818_elements(34) & dummyMmuDaemon_CP_2818_elements(55);
      gj_dummyMmuDaemon_cp_element_group_14 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyMmuDaemon_CP_2818_elements(14), clk => clk, reset => reset); --
    end block;
    -- CP-element group 15:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: 	19 
    -- CP-element group 15: 	38 
    -- CP-element group 15: 	59 
    -- CP-element group 15: successors 
    -- CP-element group 15: 	10 
    -- CP-element group 15: marked-successors 
    -- CP-element group 15: 	11 
    -- CP-element group 15:  members (1) 
      -- CP-element group 15: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/aggregated_phi_update_ack
      -- 
    dummyMmuDaemon_cp_element_group_15: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 34) := "dummyMmuDaemon_cp_element_group_15"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= dummyMmuDaemon_CP_2818_elements(19) & dummyMmuDaemon_CP_2818_elements(38) & dummyMmuDaemon_CP_2818_elements(59);
      gj_dummyMmuDaemon_cp_element_group_15 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyMmuDaemon_CP_2818_elements(15), clk => clk, reset => reset); --
    end block;
    -- CP-element group 16:  join  transition  bypass  pipeline-parent 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: 	9 
    -- CP-element group 16: marked-predecessors 
    -- CP-element group 16: 	12 
    -- CP-element group 16: successors 
    -- CP-element group 16: 	11 
    -- CP-element group 16:  members (1) 
      -- CP-element group 16: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3451_sample_start_
      -- 
    dummyMmuDaemon_cp_element_group_16: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 34) := "dummyMmuDaemon_cp_element_group_16"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dummyMmuDaemon_CP_2818_elements(9) & dummyMmuDaemon_CP_2818_elements(12);
      gj_dummyMmuDaemon_cp_element_group_16 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyMmuDaemon_CP_2818_elements(16), clk => clk, reset => reset); --
    end block;
    -- CP-element group 17:  join  transition  bypass  pipeline-parent 
    -- CP-element group 17: predecessors 
    -- CP-element group 17: 	9 
    -- CP-element group 17: marked-predecessors 
    -- CP-element group 17: 	19 
    -- CP-element group 17: successors 
    -- CP-element group 17: 	14 
    -- CP-element group 17:  members (1) 
      -- CP-element group 17: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3451_update_start_
      -- 
    dummyMmuDaemon_cp_element_group_17: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 34) := "dummyMmuDaemon_cp_element_group_17"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dummyMmuDaemon_CP_2818_elements(9) & dummyMmuDaemon_CP_2818_elements(19);
      gj_dummyMmuDaemon_cp_element_group_17 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyMmuDaemon_CP_2818_elements(17), clk => clk, reset => reset); --
    end block;
    -- CP-element group 18:  join  transition  bypass  pipeline-parent 
    -- CP-element group 18: predecessors 
    -- CP-element group 18: successors 
    -- CP-element group 18: 	12 
    -- CP-element group 18:  members (1) 
      -- CP-element group 18: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3451_sample_completed__ps
      -- 
    -- Element group dummyMmuDaemon_CP_2818_elements(18) is bound as output of CP function.
    -- CP-element group 19:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 19: predecessors 
    -- CP-element group 19: successors 
    -- CP-element group 19: 	15 
    -- CP-element group 19: marked-successors 
    -- CP-element group 19: 	17 
    -- CP-element group 19:  members (2) 
      -- CP-element group 19: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3451_update_completed_
      -- CP-element group 19: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3451_update_completed__ps
      -- 
    -- Element group dummyMmuDaemon_CP_2818_elements(19) is bound as output of CP function.
    -- CP-element group 20:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 20: predecessors 
    -- CP-element group 20: 	7 
    -- CP-element group 20: successors 
    -- CP-element group 20:  members (1) 
      -- CP-element group 20: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3451_loopback_trigger
      -- 
    dummyMmuDaemon_CP_2818_elements(20) <= dummyMmuDaemon_CP_2818_elements(7);
    -- CP-element group 21:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 21: predecessors 
    -- CP-element group 21: successors 
    -- CP-element group 21:  members (2) 
      -- CP-element group 21: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3451_loopback_sample_req_ps
      -- CP-element group 21: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3451_loopback_sample_req
      -- 
    phi_stmt_3451_loopback_sample_req_2858_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_3451_loopback_sample_req_2858_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyMmuDaemon_CP_2818_elements(21), ack => phi_stmt_3451_req_1); -- 
    -- Element group dummyMmuDaemon_CP_2818_elements(21) is bound as output of CP function.
    -- CP-element group 22:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 22: predecessors 
    -- CP-element group 22: 	8 
    -- CP-element group 22: successors 
    -- CP-element group 22:  members (1) 
      -- CP-element group 22: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3451_entry_trigger
      -- 
    dummyMmuDaemon_CP_2818_elements(22) <= dummyMmuDaemon_CP_2818_elements(8);
    -- CP-element group 23:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 23: predecessors 
    -- CP-element group 23: successors 
    -- CP-element group 23:  members (2) 
      -- CP-element group 23: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3451_entry_sample_req_ps
      -- CP-element group 23: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3451_entry_sample_req
      -- 
    phi_stmt_3451_entry_sample_req_2861_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_3451_entry_sample_req_2861_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyMmuDaemon_CP_2818_elements(23), ack => phi_stmt_3451_req_0); -- 
    -- Element group dummyMmuDaemon_CP_2818_elements(23) is bound as output of CP function.
    -- CP-element group 24:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 24: predecessors 
    -- CP-element group 24: successors 
    -- CP-element group 24:  members (2) 
      -- CP-element group 24: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3451_phi_mux_ack_ps
      -- CP-element group 24: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3451_phi_mux_ack
      -- 
    phi_stmt_3451_phi_mux_ack_2864_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 24_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_3451_ack_0, ack => dummyMmuDaemon_CP_2818_elements(24)); -- 
    -- CP-element group 25:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 25: predecessors 
    -- CP-element group 25: successors 
    -- CP-element group 25:  members (4) 
      -- CP-element group 25: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/R_ONE_1_3453_sample_completed_
      -- CP-element group 25: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/R_ONE_1_3453_sample_start_
      -- CP-element group 25: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/R_ONE_1_3453_sample_completed__ps
      -- CP-element group 25: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/R_ONE_1_3453_sample_start__ps
      -- 
    -- Element group dummyMmuDaemon_CP_2818_elements(25) is bound as output of CP function.
    -- CP-element group 26:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 26: predecessors 
    -- CP-element group 26: successors 
    -- CP-element group 26: 	28 
    -- CP-element group 26:  members (2) 
      -- CP-element group 26: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/R_ONE_1_3453_update_start_
      -- CP-element group 26: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/R_ONE_1_3453_update_start__ps
      -- 
    -- Element group dummyMmuDaemon_CP_2818_elements(26) is bound as output of CP function.
    -- CP-element group 27:  join  transition  bypass  pipeline-parent 
    -- CP-element group 27: predecessors 
    -- CP-element group 27: 	28 
    -- CP-element group 27: successors 
    -- CP-element group 27:  members (1) 
      -- CP-element group 27: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/R_ONE_1_3453_update_completed__ps
      -- 
    dummyMmuDaemon_CP_2818_elements(27) <= dummyMmuDaemon_CP_2818_elements(28);
    -- CP-element group 28:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 28: predecessors 
    -- CP-element group 28: 	26 
    -- CP-element group 28: successors 
    -- CP-element group 28: 	27 
    -- CP-element group 28:  members (1) 
      -- CP-element group 28: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/R_ONE_1_3453_update_completed_
      -- 
    -- Element group dummyMmuDaemon_CP_2818_elements(28) is a control-delay.
    cp_element_28_delay: control_delay_element  generic map(name => " 28_delay", delay_value => 1)  port map(req => dummyMmuDaemon_CP_2818_elements(26), ack => dummyMmuDaemon_CP_2818_elements(28), clk => clk, reset =>reset);
    -- CP-element group 29:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 29: predecessors 
    -- CP-element group 29: successors 
    -- CP-element group 29:  members (4) 
      -- CP-element group 29: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/R_ZERO_1_3454_sample_completed_
      -- CP-element group 29: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/R_ZERO_1_3454_sample_completed__ps
      -- CP-element group 29: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/R_ZERO_1_3454_sample_start_
      -- CP-element group 29: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/R_ZERO_1_3454_sample_start__ps
      -- 
    -- Element group dummyMmuDaemon_CP_2818_elements(29) is bound as output of CP function.
    -- CP-element group 30:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 30: predecessors 
    -- CP-element group 30: successors 
    -- CP-element group 30: 	32 
    -- CP-element group 30:  members (2) 
      -- CP-element group 30: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/R_ZERO_1_3454_update_start__ps
      -- CP-element group 30: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/R_ZERO_1_3454_update_start_
      -- 
    -- Element group dummyMmuDaemon_CP_2818_elements(30) is bound as output of CP function.
    -- CP-element group 31:  join  transition  bypass  pipeline-parent 
    -- CP-element group 31: predecessors 
    -- CP-element group 31: 	32 
    -- CP-element group 31: successors 
    -- CP-element group 31:  members (1) 
      -- CP-element group 31: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/R_ZERO_1_3454_update_completed__ps
      -- 
    dummyMmuDaemon_CP_2818_elements(31) <= dummyMmuDaemon_CP_2818_elements(32);
    -- CP-element group 32:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 32: predecessors 
    -- CP-element group 32: 	30 
    -- CP-element group 32: successors 
    -- CP-element group 32: 	31 
    -- CP-element group 32:  members (1) 
      -- CP-element group 32: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/R_ZERO_1_3454_update_completed_
      -- 
    -- Element group dummyMmuDaemon_CP_2818_elements(32) is a control-delay.
    cp_element_32_delay: control_delay_element  generic map(name => " 32_delay", delay_value => 1)  port map(req => dummyMmuDaemon_CP_2818_elements(30), ack => dummyMmuDaemon_CP_2818_elements(32), clk => clk, reset =>reset);
    -- CP-element group 33:  join  transition  bypass  pipeline-parent 
    -- CP-element group 33: predecessors 
    -- CP-element group 33: 	9 
    -- CP-element group 33: marked-predecessors 
    -- CP-element group 33: 	12 
    -- CP-element group 33: successors 
    -- CP-element group 33: 	11 
    -- CP-element group 33:  members (1) 
      -- CP-element group 33: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3455_sample_start_
      -- 
    dummyMmuDaemon_cp_element_group_33: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 34) := "dummyMmuDaemon_cp_element_group_33"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dummyMmuDaemon_CP_2818_elements(9) & dummyMmuDaemon_CP_2818_elements(12);
      gj_dummyMmuDaemon_cp_element_group_33 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyMmuDaemon_CP_2818_elements(33), clk => clk, reset => reset); --
    end block;
    -- CP-element group 34:  join  transition  bypass  pipeline-parent 
    -- CP-element group 34: predecessors 
    -- CP-element group 34: 	9 
    -- CP-element group 34: marked-predecessors 
    -- CP-element group 34: 	76 
    -- CP-element group 34: successors 
    -- CP-element group 34: 	14 
    -- CP-element group 34:  members (1) 
      -- CP-element group 34: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3455_update_start_
      -- 
    dummyMmuDaemon_cp_element_group_34: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 34) := "dummyMmuDaemon_cp_element_group_34"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dummyMmuDaemon_CP_2818_elements(9) & dummyMmuDaemon_CP_2818_elements(76);
      gj_dummyMmuDaemon_cp_element_group_34 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyMmuDaemon_CP_2818_elements(34), clk => clk, reset => reset); --
    end block;
    -- CP-element group 35:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 35: predecessors 
    -- CP-element group 35: 	11 
    -- CP-element group 35: successors 
    -- CP-element group 35:  members (1) 
      -- CP-element group 35: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3455_sample_start__ps
      -- 
    dummyMmuDaemon_CP_2818_elements(35) <= dummyMmuDaemon_CP_2818_elements(11);
    -- CP-element group 36:  join  transition  bypass  pipeline-parent 
    -- CP-element group 36: predecessors 
    -- CP-element group 36: successors 
    -- CP-element group 36: 	12 
    -- CP-element group 36:  members (1) 
      -- CP-element group 36: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3455_sample_completed__ps
      -- 
    -- Element group dummyMmuDaemon_CP_2818_elements(36) is bound as output of CP function.
    -- CP-element group 37:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 37: predecessors 
    -- CP-element group 37: 	14 
    -- CP-element group 37: successors 
    -- CP-element group 37:  members (1) 
      -- CP-element group 37: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3455_update_start__ps
      -- 
    dummyMmuDaemon_CP_2818_elements(37) <= dummyMmuDaemon_CP_2818_elements(14);
    -- CP-element group 38:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 38: predecessors 
    -- CP-element group 38: successors 
    -- CP-element group 38: 	15 
    -- CP-element group 38: 	75 
    -- CP-element group 38:  members (2) 
      -- CP-element group 38: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3455_update_completed_
      -- CP-element group 38: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3455_update_completed__ps
      -- 
    -- Element group dummyMmuDaemon_CP_2818_elements(38) is bound as output of CP function.
    -- CP-element group 39:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 39: predecessors 
    -- CP-element group 39: 	7 
    -- CP-element group 39: successors 
    -- CP-element group 39:  members (1) 
      -- CP-element group 39: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3455_loopback_trigger
      -- 
    dummyMmuDaemon_CP_2818_elements(39) <= dummyMmuDaemon_CP_2818_elements(7);
    -- CP-element group 40:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 40: predecessors 
    -- CP-element group 40: successors 
    -- CP-element group 40:  members (2) 
      -- CP-element group 40: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3455_loopback_sample_req_ps
      -- CP-element group 40: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3455_loopback_sample_req
      -- 
    phi_stmt_3455_loopback_sample_req_2892_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_3455_loopback_sample_req_2892_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyMmuDaemon_CP_2818_elements(40), ack => phi_stmt_3455_req_1); -- 
    -- Element group dummyMmuDaemon_CP_2818_elements(40) is bound as output of CP function.
    -- CP-element group 41:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 41: predecessors 
    -- CP-element group 41: 	8 
    -- CP-element group 41: successors 
    -- CP-element group 41:  members (1) 
      -- CP-element group 41: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3455_entry_trigger
      -- 
    dummyMmuDaemon_CP_2818_elements(41) <= dummyMmuDaemon_CP_2818_elements(8);
    -- CP-element group 42:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 42: predecessors 
    -- CP-element group 42: successors 
    -- CP-element group 42:  members (2) 
      -- CP-element group 42: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3455_entry_sample_req_ps
      -- CP-element group 42: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3455_entry_sample_req
      -- 
    phi_stmt_3455_entry_sample_req_2895_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_3455_entry_sample_req_2895_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyMmuDaemon_CP_2818_elements(42), ack => phi_stmt_3455_req_0); -- 
    -- Element group dummyMmuDaemon_CP_2818_elements(42) is bound as output of CP function.
    -- CP-element group 43:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 43: predecessors 
    -- CP-element group 43: successors 
    -- CP-element group 43:  members (2) 
      -- CP-element group 43: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3455_phi_mux_ack_ps
      -- CP-element group 43: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3455_phi_mux_ack
      -- 
    phi_stmt_3455_phi_mux_ack_2898_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 43_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_3455_ack_0, ack => dummyMmuDaemon_CP_2818_elements(43)); -- 
    -- CP-element group 44:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 44: predecessors 
    -- CP-element group 44: successors 
    -- CP-element group 44:  members (4) 
      -- CP-element group 44: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/R_ZERO_1_3457_sample_start_
      -- CP-element group 44: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/R_ZERO_1_3457_sample_completed__ps
      -- CP-element group 44: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/R_ZERO_1_3457_sample_start__ps
      -- CP-element group 44: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/R_ZERO_1_3457_sample_completed_
      -- 
    -- Element group dummyMmuDaemon_CP_2818_elements(44) is bound as output of CP function.
    -- CP-element group 45:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 45: predecessors 
    -- CP-element group 45: successors 
    -- CP-element group 45: 	47 
    -- CP-element group 45:  members (2) 
      -- CP-element group 45: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/R_ZERO_1_3457_update_start_
      -- CP-element group 45: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/R_ZERO_1_3457_update_start__ps
      -- 
    -- Element group dummyMmuDaemon_CP_2818_elements(45) is bound as output of CP function.
    -- CP-element group 46:  join  transition  bypass  pipeline-parent 
    -- CP-element group 46: predecessors 
    -- CP-element group 46: 	47 
    -- CP-element group 46: successors 
    -- CP-element group 46:  members (1) 
      -- CP-element group 46: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/R_ZERO_1_3457_update_completed__ps
      -- 
    dummyMmuDaemon_CP_2818_elements(46) <= dummyMmuDaemon_CP_2818_elements(47);
    -- CP-element group 47:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 47: predecessors 
    -- CP-element group 47: 	45 
    -- CP-element group 47: successors 
    -- CP-element group 47: 	46 
    -- CP-element group 47:  members (1) 
      -- CP-element group 47: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/R_ZERO_1_3457_update_completed_
      -- 
    -- Element group dummyMmuDaemon_CP_2818_elements(47) is a control-delay.
    cp_element_47_delay: control_delay_element  generic map(name => " 47_delay", delay_value => 1)  port map(req => dummyMmuDaemon_CP_2818_elements(45), ack => dummyMmuDaemon_CP_2818_elements(47), clk => clk, reset =>reset);
    -- CP-element group 48:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 48: predecessors 
    -- CP-element group 48: successors 
    -- CP-element group 48: 	50 
    -- CP-element group 48:  members (1) 
      -- CP-element group 48: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/RPIPE_NOBLOCK_CPU_to_MMU_reset_3458_sample_start__ps
      -- 
    -- Element group dummyMmuDaemon_CP_2818_elements(48) is bound as output of CP function.
    -- CP-element group 49:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 49: predecessors 
    -- CP-element group 49: successors 
    -- CP-element group 49: 	51 
    -- CP-element group 49:  members (1) 
      -- CP-element group 49: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/RPIPE_NOBLOCK_CPU_to_MMU_reset_3458_update_start__ps
      -- 
    -- Element group dummyMmuDaemon_CP_2818_elements(49) is bound as output of CP function.
    -- CP-element group 50:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 50: predecessors 
    -- CP-element group 50: 	48 
    -- CP-element group 50: marked-predecessors 
    -- CP-element group 50: 	53 
    -- CP-element group 50: successors 
    -- CP-element group 50: 	52 
    -- CP-element group 50:  members (3) 
      -- CP-element group 50: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/RPIPE_NOBLOCK_CPU_to_MMU_reset_3458_Sample/rr
      -- CP-element group 50: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/RPIPE_NOBLOCK_CPU_to_MMU_reset_3458_sample_start_
      -- CP-element group 50: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/RPIPE_NOBLOCK_CPU_to_MMU_reset_3458_Sample/$entry
      -- 
    rr_2919_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_2919_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyMmuDaemon_CP_2818_elements(50), ack => RPIPE_NOBLOCK_CPU_to_MMU_reset_3458_inst_req_0); -- 
    dummyMmuDaemon_cp_element_group_50: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 34) := "dummyMmuDaemon_cp_element_group_50"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dummyMmuDaemon_CP_2818_elements(48) & dummyMmuDaemon_CP_2818_elements(53);
      gj_dummyMmuDaemon_cp_element_group_50 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyMmuDaemon_CP_2818_elements(50), clk => clk, reset => reset); --
    end block;
    -- CP-element group 51:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 51: predecessors 
    -- CP-element group 51: 	49 
    -- CP-element group 51: 	52 
    -- CP-element group 51: successors 
    -- CP-element group 51: 	53 
    -- CP-element group 51:  members (3) 
      -- CP-element group 51: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/RPIPE_NOBLOCK_CPU_to_MMU_reset_3458_Update/$entry
      -- CP-element group 51: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/RPIPE_NOBLOCK_CPU_to_MMU_reset_3458_Update/cr
      -- CP-element group 51: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/RPIPE_NOBLOCK_CPU_to_MMU_reset_3458_update_start_
      -- 
    cr_2924_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_2924_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyMmuDaemon_CP_2818_elements(51), ack => RPIPE_NOBLOCK_CPU_to_MMU_reset_3458_inst_req_1); -- 
    dummyMmuDaemon_cp_element_group_51: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 34) := "dummyMmuDaemon_cp_element_group_51"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dummyMmuDaemon_CP_2818_elements(49) & dummyMmuDaemon_CP_2818_elements(52);
      gj_dummyMmuDaemon_cp_element_group_51 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyMmuDaemon_CP_2818_elements(51), clk => clk, reset => reset); --
    end block;
    -- CP-element group 52:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 52: predecessors 
    -- CP-element group 52: 	50 
    -- CP-element group 52: successors 
    -- CP-element group 52: 	51 
    -- CP-element group 52:  members (4) 
      -- CP-element group 52: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/RPIPE_NOBLOCK_CPU_to_MMU_reset_3458_Sample/$exit
      -- CP-element group 52: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/RPIPE_NOBLOCK_CPU_to_MMU_reset_3458_Sample/ra
      -- CP-element group 52: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/RPIPE_NOBLOCK_CPU_to_MMU_reset_3458_sample_completed__ps
      -- CP-element group 52: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/RPIPE_NOBLOCK_CPU_to_MMU_reset_3458_sample_completed_
      -- 
    ra_2920_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 52_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_NOBLOCK_CPU_to_MMU_reset_3458_inst_ack_0, ack => dummyMmuDaemon_CP_2818_elements(52)); -- 
    -- CP-element group 53:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 53: predecessors 
    -- CP-element group 53: 	51 
    -- CP-element group 53: successors 
    -- CP-element group 53: marked-successors 
    -- CP-element group 53: 	50 
    -- CP-element group 53:  members (4) 
      -- CP-element group 53: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/RPIPE_NOBLOCK_CPU_to_MMU_reset_3458_update_completed__ps
      -- CP-element group 53: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/RPIPE_NOBLOCK_CPU_to_MMU_reset_3458_Update/$exit
      -- CP-element group 53: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/RPIPE_NOBLOCK_CPU_to_MMU_reset_3458_Update/ca
      -- CP-element group 53: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/RPIPE_NOBLOCK_CPU_to_MMU_reset_3458_update_completed_
      -- 
    ca_2925_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 53_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_NOBLOCK_CPU_to_MMU_reset_3458_inst_ack_1, ack => dummyMmuDaemon_CP_2818_elements(53)); -- 
    -- CP-element group 54:  join  transition  bypass  pipeline-parent 
    -- CP-element group 54: predecessors 
    -- CP-element group 54: 	9 
    -- CP-element group 54: marked-predecessors 
    -- CP-element group 54: 	12 
    -- CP-element group 54: successors 
    -- CP-element group 54: 	11 
    -- CP-element group 54:  members (1) 
      -- CP-element group 54: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3459_sample_start_
      -- 
    dummyMmuDaemon_cp_element_group_54: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 34) := "dummyMmuDaemon_cp_element_group_54"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dummyMmuDaemon_CP_2818_elements(9) & dummyMmuDaemon_CP_2818_elements(12);
      gj_dummyMmuDaemon_cp_element_group_54 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyMmuDaemon_CP_2818_elements(54), clk => clk, reset => reset); --
    end block;
    -- CP-element group 55:  join  transition  bypass  pipeline-parent 
    -- CP-element group 55: predecessors 
    -- CP-element group 55: 	9 
    -- CP-element group 55: marked-predecessors 
    -- CP-element group 55: 	79 
    -- CP-element group 55: 	82 
    -- CP-element group 55: 	85 
    -- CP-element group 55: successors 
    -- CP-element group 55: 	14 
    -- CP-element group 55:  members (1) 
      -- CP-element group 55: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3459_update_start_
      -- 
    dummyMmuDaemon_cp_element_group_55: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 1,2 => 1,3 => 1);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 34) := "dummyMmuDaemon_cp_element_group_55"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= dummyMmuDaemon_CP_2818_elements(9) & dummyMmuDaemon_CP_2818_elements(79) & dummyMmuDaemon_CP_2818_elements(82) & dummyMmuDaemon_CP_2818_elements(85);
      gj_dummyMmuDaemon_cp_element_group_55 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyMmuDaemon_CP_2818_elements(55), clk => clk, reset => reset); --
    end block;
    -- CP-element group 56:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 56: predecessors 
    -- CP-element group 56: 	11 
    -- CP-element group 56: successors 
    -- CP-element group 56:  members (1) 
      -- CP-element group 56: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3459_sample_start__ps
      -- 
    dummyMmuDaemon_CP_2818_elements(56) <= dummyMmuDaemon_CP_2818_elements(11);
    -- CP-element group 57:  join  transition  bypass  pipeline-parent 
    -- CP-element group 57: predecessors 
    -- CP-element group 57: successors 
    -- CP-element group 57: 	12 
    -- CP-element group 57:  members (1) 
      -- CP-element group 57: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3459_sample_completed__ps
      -- 
    -- Element group dummyMmuDaemon_CP_2818_elements(57) is bound as output of CP function.
    -- CP-element group 58:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 58: predecessors 
    -- CP-element group 58: 	14 
    -- CP-element group 58: successors 
    -- CP-element group 58:  members (1) 
      -- CP-element group 58: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3459_update_start__ps
      -- 
    dummyMmuDaemon_CP_2818_elements(58) <= dummyMmuDaemon_CP_2818_elements(14);
    -- CP-element group 59:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 59: predecessors 
    -- CP-element group 59: successors 
    -- CP-element group 59: 	15 
    -- CP-element group 59: 	78 
    -- CP-element group 59: 	81 
    -- CP-element group 59: 	84 
    -- CP-element group 59:  members (2) 
      -- CP-element group 59: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3459_update_completed__ps
      -- CP-element group 59: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3459_update_completed_
      -- 
    -- Element group dummyMmuDaemon_CP_2818_elements(59) is bound as output of CP function.
    -- CP-element group 60:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 60: predecessors 
    -- CP-element group 60: 	7 
    -- CP-element group 60: successors 
    -- CP-element group 60:  members (1) 
      -- CP-element group 60: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3459_loopback_trigger
      -- 
    dummyMmuDaemon_CP_2818_elements(60) <= dummyMmuDaemon_CP_2818_elements(7);
    -- CP-element group 61:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 61: predecessors 
    -- CP-element group 61: successors 
    -- CP-element group 61:  members (2) 
      -- CP-element group 61: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3459_loopback_sample_req_ps
      -- CP-element group 61: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3459_loopback_sample_req
      -- 
    phi_stmt_3459_loopback_sample_req_2936_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_3459_loopback_sample_req_2936_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyMmuDaemon_CP_2818_elements(61), ack => phi_stmt_3459_req_1); -- 
    -- Element group dummyMmuDaemon_CP_2818_elements(61) is bound as output of CP function.
    -- CP-element group 62:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 62: predecessors 
    -- CP-element group 62: 	8 
    -- CP-element group 62: successors 
    -- CP-element group 62:  members (1) 
      -- CP-element group 62: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3459_entry_trigger
      -- 
    dummyMmuDaemon_CP_2818_elements(62) <= dummyMmuDaemon_CP_2818_elements(8);
    -- CP-element group 63:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 63: predecessors 
    -- CP-element group 63: successors 
    -- CP-element group 63:  members (2) 
      -- CP-element group 63: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3459_entry_sample_req
      -- CP-element group 63: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3459_entry_sample_req_ps
      -- 
    phi_stmt_3459_entry_sample_req_2939_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_3459_entry_sample_req_2939_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyMmuDaemon_CP_2818_elements(63), ack => phi_stmt_3459_req_0); -- 
    -- Element group dummyMmuDaemon_CP_2818_elements(63) is bound as output of CP function.
    -- CP-element group 64:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 64: predecessors 
    -- CP-element group 64: successors 
    -- CP-element group 64:  members (2) 
      -- CP-element group 64: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3459_phi_mux_ack_ps
      -- CP-element group 64: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/phi_stmt_3459_phi_mux_ack
      -- 
    phi_stmt_3459_phi_mux_ack_2942_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 64_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_3459_ack_0, ack => dummyMmuDaemon_CP_2818_elements(64)); -- 
    -- CP-element group 65:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 65: predecessors 
    -- CP-element group 65: successors 
    -- CP-element group 65:  members (4) 
      -- CP-element group 65: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/konst_3461_sample_start__ps
      -- CP-element group 65: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/konst_3461_sample_completed__ps
      -- CP-element group 65: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/konst_3461_sample_start_
      -- CP-element group 65: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/konst_3461_sample_completed_
      -- 
    -- Element group dummyMmuDaemon_CP_2818_elements(65) is bound as output of CP function.
    -- CP-element group 66:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 66: predecessors 
    -- CP-element group 66: successors 
    -- CP-element group 66: 	68 
    -- CP-element group 66:  members (2) 
      -- CP-element group 66: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/konst_3461_update_start__ps
      -- CP-element group 66: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/konst_3461_update_start_
      -- 
    -- Element group dummyMmuDaemon_CP_2818_elements(66) is bound as output of CP function.
    -- CP-element group 67:  join  transition  bypass  pipeline-parent 
    -- CP-element group 67: predecessors 
    -- CP-element group 67: 	68 
    -- CP-element group 67: successors 
    -- CP-element group 67:  members (1) 
      -- CP-element group 67: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/konst_3461_update_completed__ps
      -- 
    dummyMmuDaemon_CP_2818_elements(67) <= dummyMmuDaemon_CP_2818_elements(68);
    -- CP-element group 68:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 68: predecessors 
    -- CP-element group 68: 	66 
    -- CP-element group 68: successors 
    -- CP-element group 68: 	67 
    -- CP-element group 68:  members (1) 
      -- CP-element group 68: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/konst_3461_update_completed_
      -- 
    -- Element group dummyMmuDaemon_CP_2818_elements(68) is a control-delay.
    cp_element_68_delay: control_delay_element  generic map(name => " 68_delay", delay_value => 1)  port map(req => dummyMmuDaemon_CP_2818_elements(66), ack => dummyMmuDaemon_CP_2818_elements(68), clk => clk, reset =>reset);
    -- CP-element group 69:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 69: predecessors 
    -- CP-element group 69: successors 
    -- CP-element group 69: 	71 
    -- CP-element group 69:  members (1) 
      -- CP-element group 69: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/RPIPE_NOBLOCK_CACHE_TO_MMU_REQUEST_3462_sample_start__ps
      -- 
    -- Element group dummyMmuDaemon_CP_2818_elements(69) is bound as output of CP function.
    -- CP-element group 70:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 70: predecessors 
    -- CP-element group 70: successors 
    -- CP-element group 70: 	72 
    -- CP-element group 70:  members (1) 
      -- CP-element group 70: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/RPIPE_NOBLOCK_CACHE_TO_MMU_REQUEST_3462_update_start__ps
      -- 
    -- Element group dummyMmuDaemon_CP_2818_elements(70) is bound as output of CP function.
    -- CP-element group 71:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 71: predecessors 
    -- CP-element group 71: 	69 
    -- CP-element group 71: marked-predecessors 
    -- CP-element group 71: 	74 
    -- CP-element group 71: successors 
    -- CP-element group 71: 	73 
    -- CP-element group 71:  members (3) 
      -- CP-element group 71: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/RPIPE_NOBLOCK_CACHE_TO_MMU_REQUEST_3462_sample_start_
      -- CP-element group 71: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/RPIPE_NOBLOCK_CACHE_TO_MMU_REQUEST_3462_Sample/$entry
      -- CP-element group 71: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/RPIPE_NOBLOCK_CACHE_TO_MMU_REQUEST_3462_Sample/rr
      -- 
    rr_2963_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_2963_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyMmuDaemon_CP_2818_elements(71), ack => RPIPE_NOBLOCK_CACHE_TO_MMU_REQUEST_3462_inst_req_0); -- 
    dummyMmuDaemon_cp_element_group_71: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 34) := "dummyMmuDaemon_cp_element_group_71"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dummyMmuDaemon_CP_2818_elements(69) & dummyMmuDaemon_CP_2818_elements(74);
      gj_dummyMmuDaemon_cp_element_group_71 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyMmuDaemon_CP_2818_elements(71), clk => clk, reset => reset); --
    end block;
    -- CP-element group 72:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 72: predecessors 
    -- CP-element group 72: 	70 
    -- CP-element group 72: 	73 
    -- CP-element group 72: successors 
    -- CP-element group 72: 	74 
    -- CP-element group 72:  members (3) 
      -- CP-element group 72: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/RPIPE_NOBLOCK_CACHE_TO_MMU_REQUEST_3462_update_start_
      -- CP-element group 72: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/RPIPE_NOBLOCK_CACHE_TO_MMU_REQUEST_3462_Update/$entry
      -- CP-element group 72: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/RPIPE_NOBLOCK_CACHE_TO_MMU_REQUEST_3462_Update/cr
      -- 
    cr_2968_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_2968_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyMmuDaemon_CP_2818_elements(72), ack => RPIPE_NOBLOCK_CACHE_TO_MMU_REQUEST_3462_inst_req_1); -- 
    dummyMmuDaemon_cp_element_group_72: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 34) := "dummyMmuDaemon_cp_element_group_72"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dummyMmuDaemon_CP_2818_elements(70) & dummyMmuDaemon_CP_2818_elements(73);
      gj_dummyMmuDaemon_cp_element_group_72 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyMmuDaemon_CP_2818_elements(72), clk => clk, reset => reset); --
    end block;
    -- CP-element group 73:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 73: predecessors 
    -- CP-element group 73: 	71 
    -- CP-element group 73: successors 
    -- CP-element group 73: 	72 
    -- CP-element group 73:  members (4) 
      -- CP-element group 73: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/RPIPE_NOBLOCK_CACHE_TO_MMU_REQUEST_3462_sample_completed__ps
      -- CP-element group 73: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/RPIPE_NOBLOCK_CACHE_TO_MMU_REQUEST_3462_sample_completed_
      -- CP-element group 73: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/RPIPE_NOBLOCK_CACHE_TO_MMU_REQUEST_3462_Sample/$exit
      -- CP-element group 73: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/RPIPE_NOBLOCK_CACHE_TO_MMU_REQUEST_3462_Sample/ra
      -- 
    ra_2964_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 73_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_NOBLOCK_CACHE_TO_MMU_REQUEST_3462_inst_ack_0, ack => dummyMmuDaemon_CP_2818_elements(73)); -- 
    -- CP-element group 74:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 74: predecessors 
    -- CP-element group 74: 	72 
    -- CP-element group 74: successors 
    -- CP-element group 74: marked-successors 
    -- CP-element group 74: 	71 
    -- CP-element group 74:  members (4) 
      -- CP-element group 74: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/RPIPE_NOBLOCK_CACHE_TO_MMU_REQUEST_3462_update_completed__ps
      -- CP-element group 74: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/RPIPE_NOBLOCK_CACHE_TO_MMU_REQUEST_3462_update_completed_
      -- CP-element group 74: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/RPIPE_NOBLOCK_CACHE_TO_MMU_REQUEST_3462_Update/$exit
      -- CP-element group 74: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/RPIPE_NOBLOCK_CACHE_TO_MMU_REQUEST_3462_Update/ca
      -- 
    ca_2969_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 74_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_NOBLOCK_CACHE_TO_MMU_REQUEST_3462_inst_ack_1, ack => dummyMmuDaemon_CP_2818_elements(74)); -- 
    -- CP-element group 75:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 75: predecessors 
    -- CP-element group 75: 	38 
    -- CP-element group 75: marked-predecessors 
    -- CP-element group 75: 	77 
    -- CP-element group 75: successors 
    -- CP-element group 75: 	76 
    -- CP-element group 75:  members (3) 
      -- CP-element group 75: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_MMU_to_CPU_reset_ack_3465_sample_start_
      -- CP-element group 75: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_MMU_to_CPU_reset_ack_3465_Sample/$entry
      -- CP-element group 75: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_MMU_to_CPU_reset_ack_3465_Sample/req
      -- 
    req_2978_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2978_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyMmuDaemon_CP_2818_elements(75), ack => WPIPE_MMU_to_CPU_reset_ack_3465_inst_req_0); -- 
    dummyMmuDaemon_cp_element_group_75: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 34) := "dummyMmuDaemon_cp_element_group_75"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dummyMmuDaemon_CP_2818_elements(38) & dummyMmuDaemon_CP_2818_elements(77);
      gj_dummyMmuDaemon_cp_element_group_75 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyMmuDaemon_CP_2818_elements(75), clk => clk, reset => reset); --
    end block;
    -- CP-element group 76:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 76: predecessors 
    -- CP-element group 76: 	75 
    -- CP-element group 76: successors 
    -- CP-element group 76: 	77 
    -- CP-element group 76: marked-successors 
    -- CP-element group 76: 	34 
    -- CP-element group 76:  members (6) 
      -- CP-element group 76: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_MMU_to_CPU_reset_ack_3465_sample_completed_
      -- CP-element group 76: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_MMU_to_CPU_reset_ack_3465_update_start_
      -- CP-element group 76: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_MMU_to_CPU_reset_ack_3465_Sample/$exit
      -- CP-element group 76: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_MMU_to_CPU_reset_ack_3465_Sample/ack
      -- CP-element group 76: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_MMU_to_CPU_reset_ack_3465_Update/$entry
      -- CP-element group 76: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_MMU_to_CPU_reset_ack_3465_Update/req
      -- 
    ack_2979_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 76_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_MMU_to_CPU_reset_ack_3465_inst_ack_0, ack => dummyMmuDaemon_CP_2818_elements(76)); -- 
    req_2983_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2983_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyMmuDaemon_CP_2818_elements(76), ack => WPIPE_MMU_to_CPU_reset_ack_3465_inst_req_1); -- 
    -- CP-element group 77:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 77: predecessors 
    -- CP-element group 77: 	76 
    -- CP-element group 77: successors 
    -- CP-element group 77: 	88 
    -- CP-element group 77: marked-successors 
    -- CP-element group 77: 	75 
    -- CP-element group 77:  members (3) 
      -- CP-element group 77: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_MMU_to_CPU_reset_ack_3465_update_completed_
      -- CP-element group 77: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_MMU_to_CPU_reset_ack_3465_Update/$exit
      -- CP-element group 77: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_MMU_to_CPU_reset_ack_3465_Update/ack
      -- 
    ack_2984_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 77_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_MMU_to_CPU_reset_ack_3465_inst_ack_1, ack => dummyMmuDaemon_CP_2818_elements(77)); -- 
    -- CP-element group 78:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 78: predecessors 
    -- CP-element group 78: 	59 
    -- CP-element group 78: marked-predecessors 
    -- CP-element group 78: 	80 
    -- CP-element group 78: successors 
    -- CP-element group 78: 	79 
    -- CP-element group 78:  members (3) 
      -- CP-element group 78: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_3583_sample_start_
      -- CP-element group 78: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_3583_Sample/$entry
      -- CP-element group 78: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_3583_Sample/req
      -- 
    req_2992_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2992_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyMmuDaemon_CP_2818_elements(78), ack => WPIPE_MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_3583_inst_req_0); -- 
    dummyMmuDaemon_cp_element_group_78: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 34) := "dummyMmuDaemon_cp_element_group_78"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dummyMmuDaemon_CP_2818_elements(59) & dummyMmuDaemon_CP_2818_elements(80);
      gj_dummyMmuDaemon_cp_element_group_78 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyMmuDaemon_CP_2818_elements(78), clk => clk, reset => reset); --
    end block;
    -- CP-element group 79:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 79: predecessors 
    -- CP-element group 79: 	78 
    -- CP-element group 79: successors 
    -- CP-element group 79: 	80 
    -- CP-element group 79: marked-successors 
    -- CP-element group 79: 	55 
    -- CP-element group 79:  members (6) 
      -- CP-element group 79: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_3583_sample_completed_
      -- CP-element group 79: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_3583_update_start_
      -- CP-element group 79: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_3583_Sample/$exit
      -- CP-element group 79: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_3583_Sample/ack
      -- CP-element group 79: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_3583_Update/$entry
      -- CP-element group 79: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_3583_Update/req
      -- 
    ack_2993_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 79_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_3583_inst_ack_0, ack => dummyMmuDaemon_CP_2818_elements(79)); -- 
    req_2997_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2997_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyMmuDaemon_CP_2818_elements(79), ack => WPIPE_MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_3583_inst_req_1); -- 
    -- CP-element group 80:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 80: predecessors 
    -- CP-element group 80: 	79 
    -- CP-element group 80: successors 
    -- CP-element group 80: 	88 
    -- CP-element group 80: marked-successors 
    -- CP-element group 80: 	78 
    -- CP-element group 80:  members (3) 
      -- CP-element group 80: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_3583_update_completed_
      -- CP-element group 80: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_3583_Update/$exit
      -- CP-element group 80: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_3583_Update/ack
      -- 
    ack_2998_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 80_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_3583_inst_ack_1, ack => dummyMmuDaemon_CP_2818_elements(80)); -- 
    -- CP-element group 81:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 81: predecessors 
    -- CP-element group 81: 	59 
    -- CP-element group 81: marked-predecessors 
    -- CP-element group 81: 	83 
    -- CP-element group 81: successors 
    -- CP-element group 81: 	82 
    -- CP-element group 81:  members (3) 
      -- CP-element group 81: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_3588_sample_start_
      -- CP-element group 81: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_3588_Sample/$entry
      -- CP-element group 81: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_3588_Sample/req
      -- 
    req_3006_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_3006_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyMmuDaemon_CP_2818_elements(81), ack => WPIPE_MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_3588_inst_req_0); -- 
    dummyMmuDaemon_cp_element_group_81: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 34) := "dummyMmuDaemon_cp_element_group_81"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dummyMmuDaemon_CP_2818_elements(59) & dummyMmuDaemon_CP_2818_elements(83);
      gj_dummyMmuDaemon_cp_element_group_81 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyMmuDaemon_CP_2818_elements(81), clk => clk, reset => reset); --
    end block;
    -- CP-element group 82:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 82: predecessors 
    -- CP-element group 82: 	81 
    -- CP-element group 82: successors 
    -- CP-element group 82: 	83 
    -- CP-element group 82: marked-successors 
    -- CP-element group 82: 	55 
    -- CP-element group 82:  members (6) 
      -- CP-element group 82: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_3588_sample_completed_
      -- CP-element group 82: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_3588_update_start_
      -- CP-element group 82: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_3588_Sample/$exit
      -- CP-element group 82: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_3588_Sample/ack
      -- CP-element group 82: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_3588_Update/$entry
      -- CP-element group 82: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_3588_Update/req
      -- 
    ack_3007_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 82_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_3588_inst_ack_0, ack => dummyMmuDaemon_CP_2818_elements(82)); -- 
    req_3011_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_3011_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyMmuDaemon_CP_2818_elements(82), ack => WPIPE_MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_3588_inst_req_1); -- 
    -- CP-element group 83:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 83: predecessors 
    -- CP-element group 83: 	82 
    -- CP-element group 83: successors 
    -- CP-element group 83: 	88 
    -- CP-element group 83: marked-successors 
    -- CP-element group 83: 	81 
    -- CP-element group 83:  members (3) 
      -- CP-element group 83: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_3588_update_completed_
      -- CP-element group 83: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_3588_Update/$exit
      -- CP-element group 83: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_3588_Update/ack
      -- 
    ack_3012_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 83_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_3588_inst_ack_1, ack => dummyMmuDaemon_CP_2818_elements(83)); -- 
    -- CP-element group 84:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 84: predecessors 
    -- CP-element group 84: 	59 
    -- CP-element group 84: marked-predecessors 
    -- CP-element group 84: 	86 
    -- CP-element group 84: successors 
    -- CP-element group 84: 	85 
    -- CP-element group 84:  members (3) 
      -- CP-element group 84: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_noblock_mem_access_and_send_response_command_3659_sample_start_
      -- CP-element group 84: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_noblock_mem_access_and_send_response_command_3659_Sample/$entry
      -- CP-element group 84: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_noblock_mem_access_and_send_response_command_3659_Sample/req
      -- 
    req_3020_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_3020_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyMmuDaemon_CP_2818_elements(84), ack => WPIPE_noblock_mem_access_and_send_response_command_3659_inst_req_0); -- 
    dummyMmuDaemon_cp_element_group_84: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 34) := "dummyMmuDaemon_cp_element_group_84"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dummyMmuDaemon_CP_2818_elements(59) & dummyMmuDaemon_CP_2818_elements(86);
      gj_dummyMmuDaemon_cp_element_group_84 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyMmuDaemon_CP_2818_elements(84), clk => clk, reset => reset); --
    end block;
    -- CP-element group 85:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 85: predecessors 
    -- CP-element group 85: 	84 
    -- CP-element group 85: successors 
    -- CP-element group 85: 	86 
    -- CP-element group 85: marked-successors 
    -- CP-element group 85: 	55 
    -- CP-element group 85:  members (6) 
      -- CP-element group 85: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_noblock_mem_access_and_send_response_command_3659_sample_completed_
      -- CP-element group 85: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_noblock_mem_access_and_send_response_command_3659_update_start_
      -- CP-element group 85: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_noblock_mem_access_and_send_response_command_3659_Sample/$exit
      -- CP-element group 85: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_noblock_mem_access_and_send_response_command_3659_Sample/ack
      -- CP-element group 85: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_noblock_mem_access_and_send_response_command_3659_Update/$entry
      -- CP-element group 85: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_noblock_mem_access_and_send_response_command_3659_Update/req
      -- 
    ack_3021_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 85_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_mem_access_and_send_response_command_3659_inst_ack_0, ack => dummyMmuDaemon_CP_2818_elements(85)); -- 
    req_3025_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_3025_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dummyMmuDaemon_CP_2818_elements(85), ack => WPIPE_noblock_mem_access_and_send_response_command_3659_inst_req_1); -- 
    -- CP-element group 86:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 86: predecessors 
    -- CP-element group 86: 	85 
    -- CP-element group 86: successors 
    -- CP-element group 86: 	88 
    -- CP-element group 86: marked-successors 
    -- CP-element group 86: 	84 
    -- CP-element group 86:  members (3) 
      -- CP-element group 86: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_noblock_mem_access_and_send_response_command_3659_update_completed_
      -- CP-element group 86: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_noblock_mem_access_and_send_response_command_3659_Update/$exit
      -- CP-element group 86: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/WPIPE_noblock_mem_access_and_send_response_command_3659_Update/ack
      -- 
    ack_3026_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 86_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_mem_access_and_send_response_command_3659_inst_ack_1, ack => dummyMmuDaemon_CP_2818_elements(86)); -- 
    -- CP-element group 87:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 87: predecessors 
    -- CP-element group 87: 	9 
    -- CP-element group 87: successors 
    -- CP-element group 87: 	10 
    -- CP-element group 87:  members (1) 
      -- CP-element group 87: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/loop_body_delay_to_condition_start
      -- 
    -- Element group dummyMmuDaemon_CP_2818_elements(87) is a control-delay.
    cp_element_87_delay: control_delay_element  generic map(name => " 87_delay", delay_value => 1)  port map(req => dummyMmuDaemon_CP_2818_elements(9), ack => dummyMmuDaemon_CP_2818_elements(87), clk => clk, reset =>reset);
    -- CP-element group 88:  join  transition  bypass  pipeline-parent 
    -- CP-element group 88: predecessors 
    -- CP-element group 88: 	12 
    -- CP-element group 88: 	77 
    -- CP-element group 88: 	80 
    -- CP-element group 88: 	83 
    -- CP-element group 88: 	86 
    -- CP-element group 88: successors 
    -- CP-element group 88: 	6 
    -- CP-element group 88:  members (1) 
      -- CP-element group 88: 	 branch_block_stmt_3448/do_while_stmt_3449/do_while_stmt_3449_loop_body/$exit
      -- 
    dummyMmuDaemon_cp_element_group_88: block -- 
      constant place_capacities: IntegerArray(0 to 4) := (0 => 15,1 => 15,2 => 15,3 => 15,4 => 15);
      constant place_markings: IntegerArray(0 to 4)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0);
      constant place_delays: IntegerArray(0 to 4) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0);
      constant joinName: string(1 to 34) := "dummyMmuDaemon_cp_element_group_88"; 
      signal preds: BooleanArray(1 to 5); -- 
    begin -- 
      preds <= dummyMmuDaemon_CP_2818_elements(12) & dummyMmuDaemon_CP_2818_elements(77) & dummyMmuDaemon_CP_2818_elements(80) & dummyMmuDaemon_CP_2818_elements(83) & dummyMmuDaemon_CP_2818_elements(86);
      gj_dummyMmuDaemon_cp_element_group_88 : generic_join generic map(name => joinName, number_of_predecessors => 5, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dummyMmuDaemon_CP_2818_elements(88), clk => clk, reset => reset); --
    end block;
    -- CP-element group 89:  transition  input  bypass  pipeline-parent 
    -- CP-element group 89: predecessors 
    -- CP-element group 89: 	5 
    -- CP-element group 89: successors 
    -- CP-element group 89:  members (2) 
      -- CP-element group 89: 	 branch_block_stmt_3448/do_while_stmt_3449/loop_exit/$exit
      -- CP-element group 89: 	 branch_block_stmt_3448/do_while_stmt_3449/loop_exit/ack
      -- 
    ack_3031_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 89_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_3449_branch_ack_0, ack => dummyMmuDaemon_CP_2818_elements(89)); -- 
    -- CP-element group 90:  transition  input  bypass  pipeline-parent 
    -- CP-element group 90: predecessors 
    -- CP-element group 90: 	5 
    -- CP-element group 90: successors 
    -- CP-element group 90:  members (2) 
      -- CP-element group 90: 	 branch_block_stmt_3448/do_while_stmt_3449/loop_taken/$exit
      -- CP-element group 90: 	 branch_block_stmt_3448/do_while_stmt_3449/loop_taken/ack
      -- 
    ack_3035_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 90_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_3449_branch_ack_1, ack => dummyMmuDaemon_CP_2818_elements(90)); -- 
    -- CP-element group 91:  transition  bypass  pipeline-parent 
    -- CP-element group 91: predecessors 
    -- CP-element group 91: 	3 
    -- CP-element group 91: successors 
    -- CP-element group 91: 	1 
    -- CP-element group 91:  members (1) 
      -- CP-element group 91: 	 branch_block_stmt_3448/do_while_stmt_3449/$exit
      -- 
    dummyMmuDaemon_CP_2818_elements(91) <= dummyMmuDaemon_CP_2818_elements(3);
    dummyMmuDaemon_do_while_stmt_3449_terminator_3036: loop_terminator -- 
      generic map (name => " dummyMmuDaemon_do_while_stmt_3449_terminator_3036", max_iterations_in_flight =>15) 
      port map(loop_body_exit => dummyMmuDaemon_CP_2818_elements(6),loop_continue => dummyMmuDaemon_CP_2818_elements(90),loop_terminate => dummyMmuDaemon_CP_2818_elements(89),loop_back => dummyMmuDaemon_CP_2818_elements(4),loop_exit => dummyMmuDaemon_CP_2818_elements(3),clk => clk, reset => reset); -- 
    phi_stmt_3451_phi_seq_2882_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= dummyMmuDaemon_CP_2818_elements(22);
      dummyMmuDaemon_CP_2818_elements(25)<= src_sample_reqs(0);
      src_sample_acks(0)  <= dummyMmuDaemon_CP_2818_elements(25);
      dummyMmuDaemon_CP_2818_elements(26)<= src_update_reqs(0);
      src_update_acks(0)  <= dummyMmuDaemon_CP_2818_elements(27);
      dummyMmuDaemon_CP_2818_elements(23) <= phi_mux_reqs(0);
      triggers(1)  <= dummyMmuDaemon_CP_2818_elements(20);
      dummyMmuDaemon_CP_2818_elements(29)<= src_sample_reqs(1);
      src_sample_acks(1)  <= dummyMmuDaemon_CP_2818_elements(29);
      dummyMmuDaemon_CP_2818_elements(30)<= src_update_reqs(1);
      src_update_acks(1)  <= dummyMmuDaemon_CP_2818_elements(31);
      dummyMmuDaemon_CP_2818_elements(21) <= phi_mux_reqs(1);
      phi_stmt_3451_phi_seq_2882 : phi_sequencer_v2-- 
        generic map (place_capacity => 15, ntriggers => 2, name => "phi_stmt_3451_phi_seq_2882") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => dummyMmuDaemon_CP_2818_elements(11), 
          phi_sample_ack => dummyMmuDaemon_CP_2818_elements(18), 
          phi_update_req => dummyMmuDaemon_CP_2818_elements(14), 
          phi_update_ack => dummyMmuDaemon_CP_2818_elements(19), 
          phi_mux_ack => dummyMmuDaemon_CP_2818_elements(24), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_3455_phi_seq_2926_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= dummyMmuDaemon_CP_2818_elements(41);
      dummyMmuDaemon_CP_2818_elements(44)<= src_sample_reqs(0);
      src_sample_acks(0)  <= dummyMmuDaemon_CP_2818_elements(44);
      dummyMmuDaemon_CP_2818_elements(45)<= src_update_reqs(0);
      src_update_acks(0)  <= dummyMmuDaemon_CP_2818_elements(46);
      dummyMmuDaemon_CP_2818_elements(42) <= phi_mux_reqs(0);
      triggers(1)  <= dummyMmuDaemon_CP_2818_elements(39);
      dummyMmuDaemon_CP_2818_elements(48)<= src_sample_reqs(1);
      src_sample_acks(1)  <= dummyMmuDaemon_CP_2818_elements(52);
      dummyMmuDaemon_CP_2818_elements(49)<= src_update_reqs(1);
      src_update_acks(1)  <= dummyMmuDaemon_CP_2818_elements(53);
      dummyMmuDaemon_CP_2818_elements(40) <= phi_mux_reqs(1);
      phi_stmt_3455_phi_seq_2926 : phi_sequencer_v2-- 
        generic map (place_capacity => 15, ntriggers => 2, name => "phi_stmt_3455_phi_seq_2926") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => dummyMmuDaemon_CP_2818_elements(35), 
          phi_sample_ack => dummyMmuDaemon_CP_2818_elements(36), 
          phi_update_req => dummyMmuDaemon_CP_2818_elements(37), 
          phi_update_ack => dummyMmuDaemon_CP_2818_elements(38), 
          phi_mux_ack => dummyMmuDaemon_CP_2818_elements(43), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_3459_phi_seq_2970_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= dummyMmuDaemon_CP_2818_elements(62);
      dummyMmuDaemon_CP_2818_elements(65)<= src_sample_reqs(0);
      src_sample_acks(0)  <= dummyMmuDaemon_CP_2818_elements(65);
      dummyMmuDaemon_CP_2818_elements(66)<= src_update_reqs(0);
      src_update_acks(0)  <= dummyMmuDaemon_CP_2818_elements(67);
      dummyMmuDaemon_CP_2818_elements(63) <= phi_mux_reqs(0);
      triggers(1)  <= dummyMmuDaemon_CP_2818_elements(60);
      dummyMmuDaemon_CP_2818_elements(69)<= src_sample_reqs(1);
      src_sample_acks(1)  <= dummyMmuDaemon_CP_2818_elements(73);
      dummyMmuDaemon_CP_2818_elements(70)<= src_update_reqs(1);
      src_update_acks(1)  <= dummyMmuDaemon_CP_2818_elements(74);
      dummyMmuDaemon_CP_2818_elements(61) <= phi_mux_reqs(1);
      phi_stmt_3459_phi_seq_2970 : phi_sequencer_v2-- 
        generic map (place_capacity => 15, ntriggers => 2, name => "phi_stmt_3459_phi_seq_2970") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => dummyMmuDaemon_CP_2818_elements(56), 
          phi_sample_ack => dummyMmuDaemon_CP_2818_elements(57), 
          phi_update_req => dummyMmuDaemon_CP_2818_elements(58), 
          phi_update_ack => dummyMmuDaemon_CP_2818_elements(59), 
          phi_mux_ack => dummyMmuDaemon_CP_2818_elements(64), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    entry_tmerge_2843_block : block -- 
      signal preds : BooleanArray(0 to 1);
      begin -- 
        preds(0)  <= dummyMmuDaemon_CP_2818_elements(7);
        preds(1)  <= dummyMmuDaemon_CP_2818_elements(8);
        entry_tmerge_2843 : transition_merge -- 
          generic map(name => " entry_tmerge_2843")
          port map (preds => preds, symbol_out => dummyMmuDaemon_CP_2818_elements(9));
          -- 
    end block;
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal CONCAT_u1_u2_3604_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_3621_wire_constant : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_3626_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_3646_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u9_3650_wire : std_logic_vector(8 downto 0);
    signal CONCAT_u2_u3_3607_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_3623_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u32_u33_3641_wire : std_logic_vector(32 downto 0);
    signal CONCAT_u32_u50_3635_wire_constant : std_logic_vector(49 downto 0);
    signal CONCAT_u33_u34_3643_wire : std_logic_vector(33 downto 0);
    signal CONCAT_u34_u36_3647_wire : std_logic_vector(35 downto 0);
    signal CONCAT_u36_u100_3653_wire : std_logic_vector(99 downto 0);
    signal CONCAT_u36_u145_3655_wire : std_logic_vector(144 downto 0);
    signal CONCAT_u3_u5_3627_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u4_u36_3564_wire : std_logic_vector(35 downto 0);
    signal CONCAT_u4_u36_3568_wire : std_logic_vector(35 downto 0);
    signal CONCAT_u4_u5_3600_wire_constant : std_logic_vector(4 downto 0);
    signal CONCAT_u5_u64_3637_wire : std_logic_vector(63 downto 0);
    signal CONCAT_u8_u9_3630_wire : std_logic_vector(8 downto 0);
    signal CONCAT_u9_u109_3654_wire : std_logic_vector(108 downto 0);
    signal CONCAT_u9_u59_3636_wire : std_logic_vector(58 downto 0);
    signal NOT_u1_u1_3579_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3549_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3556_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3613_wire : std_logic_vector(0 downto 0);
    signal RPIPE_NOBLOCK_CACHE_TO_MMU_REQUEST_3462_wire : std_logic_vector(121 downto 0);
    signal RPIPE_NOBLOCK_CPU_to_MMU_reset_3458_wire : std_logic_vector(0 downto 0);
    signal R_ONE_1_3453_wire_constant : std_logic_vector(0 downto 0);
    signal R_ONE_1_3466_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_3454_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_3457_wire_constant : std_logic_vector(0 downto 0);
    signal asi_3507 : std_logic_vector(7 downto 0);
    signal byte_mask_3481 : std_logic_vector(7 downto 0);
    signal cacheable_to_cache_3594 : std_logic_vector(0 downto 0);
    signal ctrl_word_id_3516 : std_logic_vector(2 downto 0);
    signal ext_asi_3473 : std_logic_vector(7 downto 0);
    signal ext_request_type_3477 : std_logic_vector(7 downto 0);
    signal from_dcache_3493 : std_logic_vector(0 downto 0);
    signal init_flag_3451 : std_logic_vector(0 downto 0);
    signal is_flush_tlb_3532 : std_logic_vector(0 downto 0);
    signal is_mem_read_dword_3551 : std_logic_vector(0 downto 0);
    signal is_mem_write_dword_3558 : std_logic_vector(0 downto 0);
    signal is_mmu_bypass_access_3532 : std_logic_vector(0 downto 0);
    signal is_mmu_probe_3532 : std_logic_vector(0 downto 0);
    signal is_mmu_reg_access_3532 : std_logic_vector(0 downto 0);
    signal is_normal_mem_access_3532 : std_logic_vector(0 downto 0);
    signal is_read_dword_3532 : std_logic_vector(0 downto 0);
    signal is_read_line_3532 : std_logic_vector(0 downto 0);
    signal is_write_dword_3532 : std_logic_vector(0 downto 0);
    signal is_write_fsr_far_3532 : std_logic_vector(0 downto 0);
    signal konst_3461_wire_constant : std_logic_vector(121 downto 0);
    signal konst_3500_wire_constant : std_logic_vector(7 downto 0);
    signal konst_3505_wire_constant : std_logic_vector(7 downto 0);
    signal konst_3510_wire_constant : std_logic_vector(7 downto 0);
    signal konst_3663_wire_constant : std_logic_vector(0 downto 0);
    signal lock_bus_3512 : std_logic_vector(0 downto 0);
    signal physical_addr_to_mem_3570 : std_logic_vector(35 downto 0);
    signal req_valid_3497 : std_logic_vector(0 downto 0);
    signal request_from_cache_3459 : std_logic_vector(121 downto 0);
    signal request_type_3502 : std_logic_vector(7 downto 0);
    signal reset_from_cpu_3455 : std_logic_vector(0 downto 0);
    signal resp_flags_3609 : std_logic_vector(7 downto 0);
    signal resp_is_mmu_reg_read_3615 : std_logic_vector(0 downto 0);
    signal send_response_3532 : std_logic_vector(0 downto 0);
    signal send_syn_to_dcache_3575 : std_logic_vector(0 downto 0);
    signal send_syn_to_icache_3581 : std_logic_vector(0 downto 0);
    signal slice_3562_wire : std_logic_vector(3 downto 0);
    signal to_mem_response_daemon_3657 : std_logic_vector(208 downto 0);
    signal type_cast_3566_wire_constant : std_logic_vector(3 downto 0);
    signal type_cast_3585_wire_constant : std_logic_vector(26 downto 0);
    signal type_cast_3590_wire_constant : std_logic_vector(26 downto 0);
    signal type_cast_3602_wire_constant : std_logic_vector(0 downto 0);
    signal type_cast_3606_wire_constant : std_logic_vector(0 downto 0);
    signal type_cast_3640_wire_constant : std_logic_vector(0 downto 0);
    signal virtual_addr_3485 : std_logic_vector(31 downto 0);
    signal write_data_3489 : std_logic_vector(63 downto 0);
    -- 
  begin -- 
    CONCAT_u1_u2_3621_wire_constant <= "10";
    CONCAT_u32_u50_3635_wire_constant <= "00000000000000000000000000000000000000000000000000";
    CONCAT_u4_u5_3600_wire_constant <= "00110";
    R_ONE_1_3453_wire_constant <= "1";
    R_ONE_1_3466_wire_constant <= "1";
    R_ZERO_1_3454_wire_constant <= "0";
    R_ZERO_1_3457_wire_constant <= "0";
    konst_3461_wire_constant <= "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    konst_3500_wire_constant <= "00011111";
    konst_3505_wire_constant <= "01111111";
    konst_3510_wire_constant <= "00000110";
    konst_3663_wire_constant <= "1";
    type_cast_3566_wire_constant <= "0000";
    type_cast_3585_wire_constant <= "000000000000000000000000000";
    type_cast_3590_wire_constant <= "000000000000000000000000000";
    type_cast_3602_wire_constant <= "0";
    type_cast_3606_wire_constant <= "0";
    type_cast_3640_wire_constant <= "0";
    phi_stmt_3451: Block -- phi operator 
      signal idata: std_logic_vector(1 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= R_ONE_1_3453_wire_constant & R_ZERO_1_3454_wire_constant;
      req <= phi_stmt_3451_req_0 & phi_stmt_3451_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_3451",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 1) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_3451_ack_0,
          idata => idata,
          odata => init_flag_3451,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_3451
    phi_stmt_3455: Block -- phi operator 
      signal idata: std_logic_vector(1 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= R_ZERO_1_3457_wire_constant & RPIPE_NOBLOCK_CPU_to_MMU_reset_3458_wire;
      req <= phi_stmt_3455_req_0 & phi_stmt_3455_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_3455",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 1) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_3455_ack_0,
          idata => idata,
          odata => reset_from_cpu_3455,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_3455
    phi_stmt_3459: Block -- phi operator 
      signal idata: std_logic_vector(243 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= konst_3461_wire_constant & RPIPE_NOBLOCK_CACHE_TO_MMU_REQUEST_3462_wire;
      req <= phi_stmt_3459_req_0 & phi_stmt_3459_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_3459",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 122) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_3459_ack_0,
          idata => idata,
          odata => request_from_cache_3459,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_3459
    -- flow-through select operator MUX_3569_inst
    physical_addr_to_mem_3570 <= CONCAT_u4_u36_3564_wire when (is_mmu_bypass_access_3532(0) /=  '0') else CONCAT_u4_u36_3568_wire;
    -- flow-through slice operator slice_3472_inst
    ext_asi_3473 <= request_from_cache_3459(121 downto 114);
    -- flow-through slice operator slice_3476_inst
    ext_request_type_3477 <= request_from_cache_3459(113 downto 106);
    -- flow-through slice operator slice_3480_inst
    byte_mask_3481 <= request_from_cache_3459(105 downto 98);
    -- flow-through slice operator slice_3484_inst
    virtual_addr_3485 <= request_from_cache_3459(97 downto 66);
    -- flow-through slice operator slice_3488_inst
    write_data_3489 <= request_from_cache_3459(65 downto 2);
    -- flow-through slice operator slice_3492_inst
    from_dcache_3493 <= request_from_cache_3459(1 downto 1);
    -- flow-through slice operator slice_3496_inst
    req_valid_3497 <= request_from_cache_3459(0 downto 0);
    -- flow-through slice operator slice_3515_inst
    ctrl_word_id_3516 <= virtual_addr_3485(10 downto 8);
    -- flow-through slice operator slice_3562_inst
    slice_3562_wire <= asi_3507(3 downto 0);
    -- interlock W_cacheable_to_cache_3592_inst
    process(is_normal_mem_access_3532) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := is_normal_mem_access_3532(0 downto 0);
      cacheable_to_cache_3594 <= tmp_var; -- 
    end process;
    do_while_stmt_3449_branch: Block -- 
      -- branch-block
      signal condition_sig : std_logic_vector(0 downto 0);
      begin 
      condition_sig <= konst_3663_wire_constant;
      branch_instance: BranchBase -- 
        generic map( name => "do_while_stmt_3449_branch", condition_width => 1,  bypass_flag => true)
        port map( -- 
          condition => condition_sig,
          req => do_while_stmt_3449_branch_req_0,
          ack0 => do_while_stmt_3449_branch_ack_0,
          ack1 => do_while_stmt_3449_branch_ack_1,
          clk => clk,
          reset => reset); -- 
      --
    end Block; -- branch-block
    -- flow through binary operator AND_u1_u1_3550_inst
    is_mem_read_dword_3551 <= (is_read_dword_3532 and OR_u1_u1_3549_wire);
    -- flow through binary operator AND_u1_u1_3557_inst
    is_mem_write_dword_3558 <= (is_write_dword_3532 and OR_u1_u1_3556_wire);
    -- flow through binary operator AND_u1_u1_3574_inst
    send_syn_to_dcache_3575 <= (is_read_line_3532 and from_dcache_3493);
    -- flow through binary operator AND_u1_u1_3580_inst
    send_syn_to_icache_3581 <= (is_read_line_3532 and NOT_u1_u1_3579_wire);
    -- flow through binary operator AND_u8_u8_3501_inst
    request_type_3502 <= (ext_request_type_3477 and konst_3500_wire_constant);
    -- flow through binary operator AND_u8_u8_3506_inst
    asi_3507 <= (ext_asi_3473 and konst_3505_wire_constant);
    -- flow through binary operator BITSEL_u8_u1_3511_inst
    process(ext_request_type_3477) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(ext_request_type_3477, konst_3510_wire_constant, tmp_var);
      lock_bus_3512 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_3604_inst
    process(type_cast_3602_wire_constant, cacheable_to_cache_3594) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(type_cast_3602_wire_constant, cacheable_to_cache_3594, tmp_var);
      CONCAT_u1_u2_3604_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_3626_inst
    process(send_response_3532, from_dcache_3493) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(send_response_3532, from_dcache_3493, tmp_var);
      CONCAT_u1_u2_3626_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_3646_inst
    process(is_mem_write_dword_3558, is_mem_read_dword_3551) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_mem_write_dword_3558, is_mem_read_dword_3551, tmp_var);
      CONCAT_u1_u2_3646_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u9_3650_inst
    process(is_read_line_3532, byte_mask_3481) -- 
      variable tmp_var : std_logic_vector(8 downto 0); -- 
    begin -- 
      ApConcat_proc(is_read_line_3532, byte_mask_3481, tmp_var);
      CONCAT_u1_u9_3650_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_3607_inst
    process(CONCAT_u1_u2_3604_wire) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_3604_wire, type_cast_3606_wire_constant, tmp_var);
      CONCAT_u2_u3_3607_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_3623_inst
    process(CONCAT_u1_u2_3621_wire_constant, cacheable_to_cache_3594) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_3621_wire_constant, cacheable_to_cache_3594, tmp_var);
      CONCAT_u2_u3_3623_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u33_3641_inst
    process(virtual_addr_3485) -- 
      variable tmp_var : std_logic_vector(32 downto 0); -- 
    begin -- 
      ApConcat_proc(virtual_addr_3485, type_cast_3640_wire_constant, tmp_var);
      CONCAT_u32_u33_3641_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u33_u34_3643_inst
    process(CONCAT_u32_u33_3641_wire, lock_bus_3512) -- 
      variable tmp_var : std_logic_vector(33 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u32_u33_3641_wire, lock_bus_3512, tmp_var);
      CONCAT_u33_u34_3643_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u34_u36_3647_inst
    process(CONCAT_u33_u34_3643_wire, CONCAT_u1_u2_3646_wire) -- 
      variable tmp_var : std_logic_vector(35 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u33_u34_3643_wire, CONCAT_u1_u2_3646_wire, tmp_var);
      CONCAT_u34_u36_3647_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u36_u100_3653_inst
    process(physical_addr_to_mem_3570, write_data_3489) -- 
      variable tmp_var : std_logic_vector(99 downto 0); -- 
    begin -- 
      ApConcat_proc(physical_addr_to_mem_3570, write_data_3489, tmp_var);
      CONCAT_u36_u100_3653_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u36_u145_3655_inst
    process(CONCAT_u34_u36_3647_wire, CONCAT_u9_u109_3654_wire) -- 
      variable tmp_var : std_logic_vector(144 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u34_u36_3647_wire, CONCAT_u9_u109_3654_wire, tmp_var);
      CONCAT_u36_u145_3655_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u5_3627_inst
    process(CONCAT_u2_u3_3623_wire, CONCAT_u1_u2_3626_wire) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_3623_wire, CONCAT_u1_u2_3626_wire, tmp_var);
      CONCAT_u3_u5_3627_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u36_3564_inst
    process(slice_3562_wire, virtual_addr_3485) -- 
      variable tmp_var : std_logic_vector(35 downto 0); -- 
    begin -- 
      ApConcat_proc(slice_3562_wire, virtual_addr_3485, tmp_var);
      CONCAT_u4_u36_3564_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u36_3568_inst
    process(type_cast_3566_wire_constant, virtual_addr_3485) -- 
      variable tmp_var : std_logic_vector(35 downto 0); -- 
    begin -- 
      ApConcat_proc(type_cast_3566_wire_constant, virtual_addr_3485, tmp_var);
      CONCAT_u4_u36_3568_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u64_3637_inst
    process(CONCAT_u3_u5_3627_wire, CONCAT_u9_u59_3636_wire) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u3_u5_3627_wire, CONCAT_u9_u59_3636_wire, tmp_var);
      CONCAT_u5_u64_3637_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u8_3608_inst
    process(CONCAT_u4_u5_3600_wire_constant, CONCAT_u2_u3_3607_wire) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u5_3600_wire_constant, CONCAT_u2_u3_3607_wire, tmp_var);
      resp_flags_3609 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u64_u209_3656_inst
    process(CONCAT_u5_u64_3637_wire, CONCAT_u36_u145_3655_wire) -- 
      variable tmp_var : std_logic_vector(208 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u5_u64_3637_wire, CONCAT_u36_u145_3655_wire, tmp_var);
      to_mem_response_daemon_3657 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u8_u9_3630_inst
    process(resp_flags_3609, resp_is_mmu_reg_read_3615) -- 
      variable tmp_var : std_logic_vector(8 downto 0); -- 
    begin -- 
      ApConcat_proc(resp_flags_3609, resp_is_mmu_reg_read_3615, tmp_var);
      CONCAT_u8_u9_3630_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u9_u109_3654_inst
    process(CONCAT_u1_u9_3650_wire, CONCAT_u36_u100_3653_wire) -- 
      variable tmp_var : std_logic_vector(108 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u9_3650_wire, CONCAT_u36_u100_3653_wire, tmp_var);
      CONCAT_u9_u109_3654_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u9_u59_3636_inst
    process(CONCAT_u8_u9_3630_wire) -- 
      variable tmp_var : std_logic_vector(58 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u8_u9_3630_wire, CONCAT_u32_u50_3635_wire_constant, tmp_var);
      CONCAT_u9_u59_3636_wire <= tmp_var; --
    end process;
    -- unary operator NOT_u1_u1_3579_inst
    process(from_dcache_3493) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", from_dcache_3493, tmp_var);
      NOT_u1_u1_3579_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_3614_inst
    process(OR_u1_u1_3613_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", OR_u1_u1_3613_wire, tmp_var);
      resp_is_mmu_reg_read_3615 <= tmp_var; -- 
    end process;
    -- flow through binary operator OR_u1_u1_3549_inst
    OR_u1_u1_3549_wire <= (is_normal_mem_access_3532 or is_mmu_bypass_access_3532);
    -- flow through binary operator OR_u1_u1_3556_inst
    OR_u1_u1_3556_wire <= (is_normal_mem_access_3532 or is_mmu_bypass_access_3532);
    -- flow through binary operator OR_u1_u1_3613_inst
    OR_u1_u1_3613_wire <= (is_normal_mem_access_3532 or is_mmu_bypass_access_3532);
    -- shared inport operator group (0) : RPIPE_NOBLOCK_CACHE_TO_MMU_REQUEST_3462_inst 
    InportGroup_0: Block -- 
      signal data_out: std_logic_vector(121 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_NOBLOCK_CACHE_TO_MMU_REQUEST_3462_inst_req_0;
      RPIPE_NOBLOCK_CACHE_TO_MMU_REQUEST_3462_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_NOBLOCK_CACHE_TO_MMU_REQUEST_3462_inst_req_1;
      RPIPE_NOBLOCK_CACHE_TO_MMU_REQUEST_3462_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      RPIPE_NOBLOCK_CACHE_TO_MMU_REQUEST_3462_wire <= data_out(121 downto 0);
      NOBLOCK_CACHE_TO_MMU_REQUEST_read_0_gI: SplitGuardInterface generic map(name => "NOBLOCK_CACHE_TO_MMU_REQUEST_read_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      NOBLOCK_CACHE_TO_MMU_REQUEST_read_0: InputPort_P2P -- 
        generic map ( name => "NOBLOCK_CACHE_TO_MMU_REQUEST_read_0", data_width => 122,    bypass_flag => false,   	nonblocking_read_flag => true,  barrier_flag => false,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_read_req(0),
          oack => NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_read_ack(0),
          odata => NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_read_data(121 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 0
    -- shared inport operator group (1) : RPIPE_NOBLOCK_CPU_to_MMU_reset_3458_inst 
    InportGroup_1: Block -- 
      signal data_out: std_logic_vector(0 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_NOBLOCK_CPU_to_MMU_reset_3458_inst_req_0;
      RPIPE_NOBLOCK_CPU_to_MMU_reset_3458_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_NOBLOCK_CPU_to_MMU_reset_3458_inst_req_1;
      RPIPE_NOBLOCK_CPU_to_MMU_reset_3458_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      RPIPE_NOBLOCK_CPU_to_MMU_reset_3458_wire <= data_out(0 downto 0);
      NOBLOCK_CPU_to_MMU_reset_read_1_gI: SplitGuardInterface generic map(name => "NOBLOCK_CPU_to_MMU_reset_read_1_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      NOBLOCK_CPU_to_MMU_reset_read_1: InputPortRevised -- 
        generic map ( name => "NOBLOCK_CPU_to_MMU_reset_read_1", data_width => 1,  num_reqs => 1,  output_buffering => outBUFs,   nonblocking_read_flag => true,  no_arbitration => false)
        port map (-- 
          sample_req => reqL , 
          sample_ack => ackL, 
          update_req => reqR, 
          update_ack => ackR, 
          data => data_out, 
          oreq => NOBLOCK_CPU_to_MMU_reset_pipe_read_req(0),
          oack => NOBLOCK_CPU_to_MMU_reset_pipe_read_ack(0),
          odata => NOBLOCK_CPU_to_MMU_reset_pipe_read_data(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 1
    -- shared outport operator group (0) : WPIPE_MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_3583_inst 
    OutportGroup_0: Block -- 
      signal data_in: std_logic_vector(26 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_3583_inst_req_0;
      WPIPE_MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_3583_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_3583_inst_req_1;
      WPIPE_MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_3583_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= send_syn_to_dcache_3575(0);
      data_in <= type_cast_3585_wire_constant;
      MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_write_0_gI: SplitGuardInterface generic map(name => "MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_write_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_write_0: OutputPortRevised -- 
        generic map ( name => "MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE", data_width => 27, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_req(0),
          oack => MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_ack(0),
          odata => MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_data(26 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    -- shared outport operator group (1) : WPIPE_MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_3588_inst 
    OutportGroup_1: Block -- 
      signal data_in: std_logic_vector(26 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_3588_inst_req_0;
      WPIPE_MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_3588_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_3588_inst_req_1;
      WPIPE_MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_3588_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= send_syn_to_icache_3581(0);
      data_in <= type_cast_3590_wire_constant;
      MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_write_1_gI: SplitGuardInterface generic map(name => "MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_write_1_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_write_1: OutputPortRevised -- 
        generic map ( name => "MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE", data_width => 27, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_req(0),
          oack => MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_ack(0),
          odata => MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_data(26 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 1
    -- shared outport operator group (2) : WPIPE_MMU_to_CPU_reset_ack_3465_inst 
    OutportGroup_2: Block -- 
      signal data_in: std_logic_vector(0 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_MMU_to_CPU_reset_ack_3465_inst_req_0;
      WPIPE_MMU_to_CPU_reset_ack_3465_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_MMU_to_CPU_reset_ack_3465_inst_req_1;
      WPIPE_MMU_to_CPU_reset_ack_3465_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= reset_from_cpu_3455(0);
      data_in <= R_ONE_1_3466_wire_constant;
      MMU_to_CPU_reset_ack_write_2_gI: SplitGuardInterface generic map(name => "MMU_to_CPU_reset_ack_write_2_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      MMU_to_CPU_reset_ack_write_2: OutputPortRevised -- 
        generic map ( name => "MMU_to_CPU_reset_ack", data_width => 1, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => MMU_to_CPU_reset_ack_pipe_write_req(0),
          oack => MMU_to_CPU_reset_ack_pipe_write_ack(0),
          odata => MMU_to_CPU_reset_ack_pipe_write_data(0 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 2
    -- shared outport operator group (3) : WPIPE_noblock_mem_access_and_send_response_command_3659_inst 
    OutportGroup_3: Block -- 
      signal data_in: std_logic_vector(208 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_noblock_mem_access_and_send_response_command_3659_inst_req_0;
      WPIPE_noblock_mem_access_and_send_response_command_3659_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_noblock_mem_access_and_send_response_command_3659_inst_req_1;
      WPIPE_noblock_mem_access_and_send_response_command_3659_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= req_valid_3497(0);
      data_in <= to_mem_response_daemon_3657;
      noblock_mem_access_and_send_response_command_write_3_gI: SplitGuardInterface generic map(name => "noblock_mem_access_and_send_response_command_write_3_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      noblock_mem_access_and_send_response_command_write_3: OutputPortRevised -- 
        generic map ( name => "noblock_mem_access_and_send_response_command", data_width => 209, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => noblock_mem_access_and_send_response_command_pipe_write_req(0),
          oack => noblock_mem_access_and_send_response_command_pipe_write_ack(0),
          odata => noblock_mem_access_and_send_response_command_pipe_write_data(208 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 3
    volatile_operator_decodeCacheRequest_5831: decodeCacheRequest_Volatile port map(valid_flag => req_valid_3497, from_dcache => from_dcache_3493, asi => asi_3507, request_type => request_type_3502, ctrl_word_id => ctrl_word_id_3516, is_read_dword => is_read_dword_3532, is_read_line => is_read_line_3532, is_write_dword => is_write_dword_3532, is_write_fsr_far => is_write_fsr_far_3532, is_flush_tlb => is_flush_tlb_3532, send_response => send_response_3532, is_mmu_probe => is_mmu_probe_3532, is_normal_mem_access => is_normal_mem_access_3532, is_mmu_reg_access => is_mmu_reg_access_3532, is_mmu_bypass_request => is_mmu_bypass_access_3532); 
    -- 
  end Block; -- data_path
  -- 
end dummyMmuDaemon_arch;
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
library munit_dummy_mmu;
use munit_dummy_mmu.dummy_mmu_global_package.all;
entity fakeDelayOp_Operator is -- 
  port ( -- 
    sample_req: in boolean;
    sample_ack: out boolean;
    update_req: in boolean;
    update_ack: out boolean;
    X : in  std_logic_vector(63 downto 0);
    X_d : out  std_logic_vector(63 downto 0);
    clk, reset: in std_logic
    -- 
  );
  -- 
end entity fakeDelayOp_Operator;
architecture fakeDelayOp_Operator_arch of fakeDelayOp_Operator is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal update_ack_symbol: Boolean;
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal X_buffer :  std_logic_vector(63 downto 0);
  signal X_update_enable: Boolean;
  signal X_update_enable_unmarked: Boolean;
  -- output port buffer signals
  signal X_d_buffer :  std_logic_vector(63 downto 0);
  signal X_d_update_enable: Boolean;
  signal fakeDelayOp_CP_199_start: Boolean;
  signal fakeDelayOp_CP_199_symbol: Boolean;
  signal cp_all_inputs_sampled: Boolean;
  -- volatile/operator module components. 
  -- links between control-path and data-path
  signal W_X_d_1131_inst_req_0 : boolean;
  signal W_X_d_1131_inst_ack_0 : boolean;
  signal W_X_d_1131_inst_req_1 : boolean;
  signal W_X_d_1131_inst_ack_1 : boolean;
  -- 
begin --  
  -- sample-ack is join of  cp-entry-symbol and all-inputs-sampled 
  sample_ack <= cp_all_inputs_sampled;
  -- input handling ------------------------------------------------
  X_buffer <= X;
  -- join of sample-req and update-ack-symbol.. used to trigger CP.
  fakeDelayOp_CP_199_start_join: block -- 
    constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 3);
    constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 3);
    constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
    constant joinName: string(1 to 29) := "fakeDelayOp_CP_199_start_join"; 
    signal preds: BooleanArray(1 to 2); -- 
  begin -- 
    preds <= sample_req & update_ack_symbol;
    gj_fakeDelayOp_CP_199_start_join : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => fakeDelayOp_CP_199_start, clk => clk, reset => reset); --
  end block;
  -- join of all input-sampled signals.. used to produce sample_ack.
  cp_all_inputs_sampled_join: block -- 
    constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
    constant place_markings: IntegerArray(0 to 0)  := (0 => 0);
    constant place_delays: IntegerArray(0 to 0) := (0 => 0);
    constant joinName: string(1 to 26) := "cp_all_inputs_sampled_join"; 
    signal preds: BooleanArray(1 to 1); -- 
  begin -- 
    preds(1) <= X_update_enable_unmarked;
    gj_cp_all_inputs_sampled_join : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => cp_all_inputs_sampled, clk => clk, reset => reset); --
  end block;
  -- output handling  -------------------------------------------------------
  X_d <= X_d_buffer;
  X_d_update_enable <= update_req;
  update_ack_symbol <= fakeDelayOp_CP_199_symbol;
  update_ack <= update_ack_symbol;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  fakeDelayOp_CP_199: Block -- control-path 
    signal fakeDelayOp_CP_199_elements: BooleanArray(11 downto 0);
    -- 
  begin -- 
    fakeDelayOp_CP_199_elements(0) <= fakeDelayOp_CP_199_start;
    fakeDelayOp_CP_199_symbol <= fakeDelayOp_CP_199_elements(11);
    -- CP-element group 0:  transition  bypass  pipeline-parent 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	1 
    -- CP-element group 0:  members (1) 
      -- CP-element group 0: 	 $entry
      -- 
    -- CP-element group 1:  transition  bypass  pipeline-parent 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	0 
    -- CP-element group 1: successors 
    -- CP-element group 1: 	4 
    -- CP-element group 1:  members (1) 
      -- CP-element group 1: 	 assign_stmt_1133/$entry
      -- 
    fakeDelayOp_CP_199_elements(1) <= fakeDelayOp_CP_199_elements(0);
    -- CP-element group 2:  join  transition  bypass  pipeline-parent 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: marked-predecessors 
    -- CP-element group 2: 	6 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	8 
    -- CP-element group 2:  members (2) 
      -- CP-element group 2: 	 assign_stmt_1133/X_update_enable
      -- CP-element group 2: 	 assign_stmt_1133/X_update_enable_out
      -- 
    fakeDelayOp_cp_element_group_2: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 30) := "fakeDelayOp_cp_element_group_2"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= fakeDelayOp_CP_199_elements(6);
      gj_fakeDelayOp_cp_element_group_2 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => fakeDelayOp_CP_199_elements(2), clk => clk, reset => reset); --
    end block;
    -- CP-element group 3:  transition  bypass  pipeline-parent 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: 	10 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	5 
    -- CP-element group 3:  members (2) 
      -- CP-element group 3: 	 assign_stmt_1133/X_d_update_enable
      -- CP-element group 3: 	 assign_stmt_1133/X_d_update_enable_in
      -- 
    fakeDelayOp_CP_199_elements(3) <= fakeDelayOp_CP_199_elements(10);
    -- CP-element group 4:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: 	1 
    -- CP-element group 4: marked-predecessors 
    -- CP-element group 4: 	6 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	6 
    -- CP-element group 4:  members (3) 
      -- CP-element group 4: 	 assign_stmt_1133/assign_stmt_1133_sample_start_
      -- CP-element group 4: 	 assign_stmt_1133/assign_stmt_1133_Sample/$entry
      -- CP-element group 4: 	 assign_stmt_1133/assign_stmt_1133_Sample/req
      -- 
    req_218_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_218_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => fakeDelayOp_CP_199_elements(4), ack => W_X_d_1131_inst_req_0); -- 
    fakeDelayOp_cp_element_group_4: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 30) := "fakeDelayOp_cp_element_group_4"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= fakeDelayOp_CP_199_elements(1) & fakeDelayOp_CP_199_elements(6);
      gj_fakeDelayOp_cp_element_group_4 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => fakeDelayOp_CP_199_elements(4), clk => clk, reset => reset); --
    end block;
    -- CP-element group 5:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	3 
    -- CP-element group 5: marked-predecessors 
    -- CP-element group 5: 	7 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	7 
    -- CP-element group 5:  members (3) 
      -- CP-element group 5: 	 assign_stmt_1133/assign_stmt_1133_update_start_
      -- CP-element group 5: 	 assign_stmt_1133/assign_stmt_1133_Update/$entry
      -- CP-element group 5: 	 assign_stmt_1133/assign_stmt_1133_Update/req
      -- 
    req_223_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_223_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => fakeDelayOp_CP_199_elements(5), ack => W_X_d_1131_inst_req_1); -- 
    fakeDelayOp_cp_element_group_5: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 30) := "fakeDelayOp_cp_element_group_5"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= fakeDelayOp_CP_199_elements(3) & fakeDelayOp_CP_199_elements(7);
      gj_fakeDelayOp_cp_element_group_5 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => fakeDelayOp_CP_199_elements(5), clk => clk, reset => reset); --
    end block;
    -- CP-element group 6:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	4 
    -- CP-element group 6: successors 
    -- CP-element group 6: 	9 
    -- CP-element group 6: marked-successors 
    -- CP-element group 6: 	4 
    -- CP-element group 6: 	2 
    -- CP-element group 6:  members (5) 
      -- CP-element group 6: 	 assign_stmt_1133/X_update_enable_unmarked
      -- CP-element group 6: 	 assign_stmt_1133/X_update_enable_unmarked_out
      -- CP-element group 6: 	 assign_stmt_1133/assign_stmt_1133_sample_completed_
      -- CP-element group 6: 	 assign_stmt_1133/assign_stmt_1133_Sample/$exit
      -- CP-element group 6: 	 assign_stmt_1133/assign_stmt_1133_Sample/ack
      -- 
    ack_219_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 6_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_X_d_1131_inst_ack_0, ack => fakeDelayOp_CP_199_elements(6)); -- 
    -- CP-element group 7:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	5 
    -- CP-element group 7: successors 
    -- CP-element group 7: 	11 
    -- CP-element group 7: marked-successors 
    -- CP-element group 7: 	5 
    -- CP-element group 7:  members (4) 
      -- CP-element group 7: 	 assign_stmt_1133/$exit
      -- CP-element group 7: 	 assign_stmt_1133/assign_stmt_1133_update_completed_
      -- CP-element group 7: 	 assign_stmt_1133/assign_stmt_1133_Update/$exit
      -- CP-element group 7: 	 assign_stmt_1133/assign_stmt_1133_Update/ack
      -- 
    ack_224_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 7_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_X_d_1131_inst_ack_1, ack => fakeDelayOp_CP_199_elements(7)); -- 
    -- CP-element group 8:  place  bypass  pipeline-parent 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	2 
    -- CP-element group 8: successors 
    -- CP-element group 8:  members (1) 
      -- CP-element group 8: 	 X_update_enable
      -- 
    fakeDelayOp_CP_199_elements(8) <= fakeDelayOp_CP_199_elements(2);
    -- CP-element group 9:  place  bypass  pipeline-parent 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: 	6 
    -- CP-element group 9: successors 
    -- CP-element group 9:  members (1) 
      -- CP-element group 9: 	 X_update_enable_unmarked
      -- 
    fakeDelayOp_CP_199_elements(9) <= fakeDelayOp_CP_199_elements(6);
    -- CP-element group 10:  place  bypass  pipeline-parent 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	3 
    -- CP-element group 10:  members (1) 
      -- CP-element group 10: 	 X_d_update_enable
      -- 
    -- CP-element group 11:  transition  bypass  pipeline-parent 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	7 
    -- CP-element group 11: successors 
    -- CP-element group 11:  members (1) 
      -- CP-element group 11: 	 $exit
      -- 
    fakeDelayOp_CP_199_elements(11) <= fakeDelayOp_CP_199_elements(7);
    --  hookup: inputs to control-path 
    fakeDelayOp_CP_199_elements(10) <= X_d_update_enable;
    -- hookup: output from control-path 
    X_update_enable <= fakeDelayOp_CP_199_elements(8);
    X_update_enable_unmarked <= fakeDelayOp_CP_199_elements(9);
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    -- 
  begin -- 
    W_X_d_1131_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_X_d_1131_inst_req_0;
      W_X_d_1131_inst_ack_0<= wack(0);
      rreq(0) <= W_X_d_1131_inst_req_1;
      W_X_d_1131_inst_ack_1<= rack(0);
      W_X_d_1131_inst : InterlockBuffer generic map ( -- 
        name => "W_X_d_1131_inst",
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
        write_data => X_buffer,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => X_d_buffer,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    -- 
  end Block; -- data_path
  -- 
end fakeDelayOp_Operator_arch;
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
library munit_dummy_mmu;
use munit_dummy_mmu.dummy_mmu_global_package.all;
entity memAccessAndSendResponseDaemon is -- 
  generic (tag_length : integer); 
  port ( -- 
    noblock_dword_token_return_pipe_read_req : out  std_logic_vector(0 downto 0);
    noblock_dword_token_return_pipe_read_ack : in   std_logic_vector(0 downto 0);
    noblock_dword_token_return_pipe_read_data : in   std_logic_vector(0 downto 0);
    noblock_mem_access_and_send_response_command_pipe_read_req : out  std_logic_vector(0 downto 0);
    noblock_mem_access_and_send_response_command_pipe_read_ack : in   std_logic_vector(0 downto 0);
    noblock_mem_access_and_send_response_command_pipe_read_data : in   std_logic_vector(208 downto 0);
    singleMemAccessAndSendResponse_call_reqs : out  std_logic_vector(0 downto 0);
    singleMemAccessAndSendResponse_call_acks : in   std_logic_vector(0 downto 0);
    singleMemAccessAndSendResponse_call_data : out  std_logic_vector(142 downto 0);
    singleMemAccessAndSendResponse_call_tag  :  out  std_logic_vector(0 downto 0);
    singleMemAccessAndSendResponse_return_reqs : out  std_logic_vector(0 downto 0);
    singleMemAccessAndSendResponse_return_acks : in   std_logic_vector(0 downto 0);
    singleMemAccessAndSendResponse_return_data : in   std_logic_vector(0 downto 0);
    singleMemAccessAndSendResponse_return_tag :  in   std_logic_vector(0 downto 0);
    accessMemLineAndSendResponse_call_reqs : out  std_logic_vector(0 downto 0);
    accessMemLineAndSendResponse_call_acks : in   std_logic_vector(0 downto 0);
    accessMemLineAndSendResponse_call_data : out  std_logic_vector(118 downto 0);
    accessMemLineAndSendResponse_call_tag  :  out  std_logic_vector(0 downto 0);
    accessMemLineAndSendResponse_return_reqs : out  std_logic_vector(0 downto 0);
    accessMemLineAndSendResponse_return_acks : in   std_logic_vector(0 downto 0);
    accessMemLineAndSendResponse_return_data : in   std_logic_vector(0 downto 0);
    accessMemLineAndSendResponse_return_tag :  in   std_logic_vector(0 downto 0);
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
end entity memAccessAndSendResponseDaemon;
architecture memAccessAndSendResponseDaemon_arch of memAccessAndSendResponseDaemon is -- 
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
  signal memAccessAndSendResponseDaemon_CP_3647_start: Boolean;
  signal memAccessAndSendResponseDaemon_CP_3647_symbol: Boolean;
  -- volatile/operator module components. 
  component singleMemAccessAndSendResponse is -- 
    generic (tag_length : integer); 
    port ( -- 
      ret_token : in  std_logic_vector(0 downto 0);
      lock_bus : in  std_logic_vector(0 downto 0);
      last_access : in  std_logic_vector(0 downto 0);
      send_to_dcache : in  std_logic_vector(0 downto 0);
      send_to_icache : in  std_logic_vector(0 downto 0);
      do_mem_write : in  std_logic_vector(0 downto 0);
      do_mem_read : in  std_logic_vector(0 downto 0);
      access_mem_line : in  std_logic_vector(0 downto 0);
      is_ctrl_reg_read : in  std_logic_vector(0 downto 0);
      do_not_send_write_response : in  std_logic_vector(0 downto 0);
      acc : in  std_logic_vector(2 downto 0);
      faulty_fsr_generated : in  std_logic_vector(0 downto 0);
      cacheable : in  std_logic_vector(0 downto 0);
      mae : in  std_logic_vector(0 downto 0);
      pte_error : in  std_logic_vector(0 downto 0);
      fsr : in  std_logic_vector(17 downto 0);
      byte_mask : in  std_logic_vector(7 downto 0);
      addr : in  std_logic_vector(35 downto 0);
      write_data : in  std_logic_vector(63 downto 0);
      access_error : out  std_logic_vector(0 downto 0);
      MMU_to_DCACHE_response_pipe_write_req : out  std_logic_vector(0 downto 0);
      MMU_to_DCACHE_response_pipe_write_ack : in   std_logic_vector(0 downto 0);
      MMU_to_DCACHE_response_pipe_write_data : out  std_logic_vector(74 downto 0);
      MMU_to_ICACHE_response_pipe_write_req : out  std_logic_vector(0 downto 0);
      MMU_to_ICACHE_response_pipe_write_ack : in   std_logic_vector(0 downto 0);
      MMU_to_ICACHE_response_pipe_write_data : out  std_logic_vector(92 downto 0);
      NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_req : out  std_logic_vector(0 downto 0);
      NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_ack : in   std_logic_vector(0 downto 0);
      NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_data : out  std_logic_vector(0 downto 0);
      noblock_dword_token_return_pipe_write_req : out  std_logic_vector(0 downto 0);
      noblock_dword_token_return_pipe_write_ack : in   std_logic_vector(0 downto 0);
      noblock_dword_token_return_pipe_write_data : out  std_logic_vector(0 downto 0);
      singleMemAccess_call_reqs : out  std_logic_vector(0 downto 0);
      singleMemAccess_call_acks : in   std_logic_vector(0 downto 0);
      singleMemAccess_call_data : out  std_logic_vector(109 downto 0);
      singleMemAccess_call_tag  :  out  std_logic_vector(0 downto 0);
      singleMemAccess_return_reqs : out  std_logic_vector(0 downto 0);
      singleMemAccess_return_acks : in   std_logic_vector(0 downto 0);
      singleMemAccess_return_data : in   std_logic_vector(64 downto 0);
      singleMemAccess_return_tag :  in   std_logic_vector(0 downto 0);
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
  component accessMemLineAndSendResponse is -- 
    generic (tag_length : integer); 
    port ( -- 
      send_line_to_dcache : in  std_logic_vector(0 downto 0);
      send_line_to_icache : in  std_logic_vector(0 downto 0);
      write_dword : in  std_logic_vector(0 downto 0);
      access_mem_line : in  std_logic_vector(0 downto 0);
      lock_bus : in  std_logic_vector(0 downto 0);
      first_dword_id : in  std_logic_vector(2 downto 0);
      acc : in  std_logic_vector(2 downto 0);
      line_aligned_addr : in  std_logic_vector(35 downto 0);
      write_byte_mask : in  std_logic_vector(7 downto 0);
      write_data : in  std_logic_vector(63 downto 0);
      access_error : out  std_logic_vector(0 downto 0);
      singleMemAccessAndSendResponse_call_reqs : out  std_logic_vector(0 downto 0);
      singleMemAccessAndSendResponse_call_acks : in   std_logic_vector(0 downto 0);
      singleMemAccessAndSendResponse_call_data : out  std_logic_vector(142 downto 0);
      singleMemAccessAndSendResponse_call_tag  :  out  std_logic_vector(0 downto 0);
      singleMemAccessAndSendResponse_return_reqs : out  std_logic_vector(0 downto 0);
      singleMemAccessAndSendResponse_return_acks : in   std_logic_vector(0 downto 0);
      singleMemAccessAndSendResponse_return_data : in   std_logic_vector(0 downto 0);
      singleMemAccessAndSendResponse_return_tag :  in   std_logic_vector(0 downto 0);
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
  -- links between control-path and data-path
  signal do_while_stmt_4686_branch_req_0 : boolean;
  signal phi_stmt_4688_req_1 : boolean;
  signal phi_stmt_4688_req_0 : boolean;
  signal phi_stmt_4688_ack_0 : boolean;
  signal RPIPE_noblock_mem_access_and_send_response_command_4692_inst_req_0 : boolean;
  signal RPIPE_noblock_mem_access_and_send_response_command_4692_inst_ack_0 : boolean;
  signal RPIPE_noblock_mem_access_and_send_response_command_4692_inst_req_1 : boolean;
  signal RPIPE_noblock_mem_access_and_send_response_command_4692_inst_ack_1 : boolean;
  signal RPIPE_noblock_dword_token_return_4695_inst_req_0 : boolean;
  signal RPIPE_noblock_dword_token_return_4695_inst_ack_0 : boolean;
  signal RPIPE_noblock_dword_token_return_4695_inst_req_1 : boolean;
  signal RPIPE_noblock_dword_token_return_4695_inst_ack_1 : boolean;
  signal phi_stmt_4696_req_1 : boolean;
  signal phi_stmt_4696_req_0 : boolean;
  signal phi_stmt_4696_ack_0 : boolean;
  signal n_available_tokens_4882_4700_buf_req_0 : boolean;
  signal n_available_tokens_4882_4700_buf_ack_0 : boolean;
  signal n_available_tokens_4882_4700_buf_req_1 : boolean;
  signal n_available_tokens_4882_4700_buf_ack_1 : boolean;
  signal call_stmt_4962_call_req_0 : boolean;
  signal call_stmt_4962_call_ack_0 : boolean;
  signal call_stmt_4962_call_req_1 : boolean;
  signal call_stmt_4962_call_ack_1 : boolean;
  signal call_stmt_4975_call_req_0 : boolean;
  signal call_stmt_4975_call_ack_0 : boolean;
  signal call_stmt_4975_call_req_1 : boolean;
  signal call_stmt_4975_call_ack_1 : boolean;
  signal do_while_stmt_4686_branch_ack_0 : boolean;
  signal do_while_stmt_4686_branch_ack_1 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "memAccessAndSendResponseDaemon_input_buffer", -- 
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
  memAccessAndSendResponseDaemon_CP_3647_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "memAccessAndSendResponseDaemon_out_buffer", -- 
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
    preds <= memAccessAndSendResponseDaemon_CP_3647_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
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
    preds <= memAccessAndSendResponseDaemon_CP_3647_start & tag_ilock_write_ack_symbol;
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
    preds <= memAccessAndSendResponseDaemon_CP_3647_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  memAccessAndSendResponseDaemon_CP_3647: Block -- control-path 
    signal memAccessAndSendResponseDaemon_CP_3647_elements: BooleanArray(70 downto 0);
    -- 
  begin -- 
    memAccessAndSendResponseDaemon_CP_3647_elements(0) <= memAccessAndSendResponseDaemon_CP_3647_start;
    memAccessAndSendResponseDaemon_CP_3647_symbol <= memAccessAndSendResponseDaemon_CP_3647_elements(1);
    -- CP-element group 0:  transition  place  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	2 
    -- CP-element group 0:  members (4) 
      -- CP-element group 0: 	 branch_block_stmt_4685/branch_block_stmt_4685__entry__
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 branch_block_stmt_4685/$entry
      -- CP-element group 0: 	 branch_block_stmt_4685/do_while_stmt_4686__entry__
      -- 
    -- CP-element group 1:  transition  place  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	70 
    -- CP-element group 1: successors 
    -- CP-element group 1:  members (4) 
      -- CP-element group 1: 	 $exit
      -- CP-element group 1: 	 branch_block_stmt_4685/$exit
      -- CP-element group 1: 	 branch_block_stmt_4685/branch_block_stmt_4685__exit__
      -- CP-element group 1: 	 branch_block_stmt_4685/do_while_stmt_4686__exit__
      -- 
    memAccessAndSendResponseDaemon_CP_3647_elements(1) <= memAccessAndSendResponseDaemon_CP_3647_elements(70);
    -- CP-element group 2:  transition  place  bypass  pipeline-parent 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	0 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	8 
    -- CP-element group 2:  members (2) 
      -- CP-element group 2: 	 branch_block_stmt_4685/do_while_stmt_4686/$entry
      -- CP-element group 2: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686__entry__
      -- 
    memAccessAndSendResponseDaemon_CP_3647_elements(2) <= memAccessAndSendResponseDaemon_CP_3647_elements(0);
    -- CP-element group 3:  merge  place  bypass  pipeline-parent 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	70 
    -- CP-element group 3:  members (1) 
      -- CP-element group 3: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686__exit__
      -- 
    -- Element group memAccessAndSendResponseDaemon_CP_3647_elements(3) is bound as output of CP function.
    -- CP-element group 4:  merge  place  bypass  pipeline-parent 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	7 
    -- CP-element group 4:  members (1) 
      -- CP-element group 4: 	 branch_block_stmt_4685/do_while_stmt_4686/loop_back
      -- 
    -- Element group memAccessAndSendResponseDaemon_CP_3647_elements(4) is bound as output of CP function.
    -- CP-element group 5:  branch  transition  place  bypass  pipeline-parent 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	10 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	68 
    -- CP-element group 5: 	69 
    -- CP-element group 5:  members (3) 
      -- CP-element group 5: 	 branch_block_stmt_4685/do_while_stmt_4686/condition_done
      -- CP-element group 5: 	 branch_block_stmt_4685/do_while_stmt_4686/loop_exit/$entry
      -- CP-element group 5: 	 branch_block_stmt_4685/do_while_stmt_4686/loop_taken/$entry
      -- 
    memAccessAndSendResponseDaemon_CP_3647_elements(5) <= memAccessAndSendResponseDaemon_CP_3647_elements(10);
    -- CP-element group 6:  branch  place  bypass  pipeline-parent 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	67 
    -- CP-element group 6: successors 
    -- CP-element group 6:  members (1) 
      -- CP-element group 6: 	 branch_block_stmt_4685/do_while_stmt_4686/loop_body_done
      -- 
    memAccessAndSendResponseDaemon_CP_3647_elements(6) <= memAccessAndSendResponseDaemon_CP_3647_elements(67);
    -- CP-element group 7:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	4 
    -- CP-element group 7: successors 
    -- CP-element group 7: 	20 
    -- CP-element group 7: 	45 
    -- CP-element group 7:  members (1) 
      -- CP-element group 7: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/back_edge_to_loop_body
      -- 
    memAccessAndSendResponseDaemon_CP_3647_elements(7) <= memAccessAndSendResponseDaemon_CP_3647_elements(4);
    -- CP-element group 8:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	2 
    -- CP-element group 8: successors 
    -- CP-element group 8: 	22 
    -- CP-element group 8: 	47 
    -- CP-element group 8:  members (1) 
      -- CP-element group 8: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/first_time_through_loop_body
      -- 
    memAccessAndSendResponseDaemon_CP_3647_elements(8) <= memAccessAndSendResponseDaemon_CP_3647_elements(2);
    -- CP-element group 9:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	11 
    -- CP-element group 9: 	14 
    -- CP-element group 9: 	16 
    -- CP-element group 9: 	17 
    -- CP-element group 9: 	39 
    -- CP-element group 9: 	40 
    -- CP-element group 9: 	66 
    -- CP-element group 9:  members (4) 
      -- CP-element group 9: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/$entry
      -- CP-element group 9: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/loop_body_start
      -- CP-element group 9: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/phi_stmt_4693_sample_start_
      -- CP-element group 9: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/phi_stmt_4693_update_start_
      -- 
    -- Element group memAccessAndSendResponseDaemon_CP_3647_elements(9) is bound as output of CP function.
    -- CP-element group 10:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	13 
    -- CP-element group 10: 	15 
    -- CP-element group 10: 	66 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	5 
    -- CP-element group 10:  members (1) 
      -- CP-element group 10: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/condition_evaluated
      -- 
    condition_evaluated_3671_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " condition_evaluated_3671_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => memAccessAndSendResponseDaemon_CP_3647_elements(10), ack => do_while_stmt_4686_branch_req_0); -- 
    memAccessAndSendResponseDaemon_cp_element_group_10: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 50) := "memAccessAndSendResponseDaemon_cp_element_group_10"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= memAccessAndSendResponseDaemon_CP_3647_elements(13) & memAccessAndSendResponseDaemon_CP_3647_elements(15) & memAccessAndSendResponseDaemon_CP_3647_elements(66);
      gj_memAccessAndSendResponseDaemon_cp_element_group_10 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => memAccessAndSendResponseDaemon_CP_3647_elements(10), clk => clk, reset => reset); --
    end block;
    -- CP-element group 11:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	9 
    -- CP-element group 11: 	16 
    -- CP-element group 11: 	39 
    -- CP-element group 11: marked-predecessors 
    -- CP-element group 11: 	15 
    -- CP-element group 11: successors 
    -- CP-element group 11: 	35 
    -- CP-element group 11: 	41 
    -- CP-element group 11:  members (2) 
      -- CP-element group 11: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/aggregated_phi_sample_req
      -- CP-element group 11: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/phi_stmt_4688_sample_start__ps
      -- 
    memAccessAndSendResponseDaemon_cp_element_group_11: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 0,2 => 0,3 => 1);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 50) := "memAccessAndSendResponseDaemon_cp_element_group_11"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= memAccessAndSendResponseDaemon_CP_3647_elements(9) & memAccessAndSendResponseDaemon_CP_3647_elements(16) & memAccessAndSendResponseDaemon_CP_3647_elements(39) & memAccessAndSendResponseDaemon_CP_3647_elements(15);
      gj_memAccessAndSendResponseDaemon_cp_element_group_11 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => memAccessAndSendResponseDaemon_CP_3647_elements(11), clk => clk, reset => reset); --
    end block;
    -- CP-element group 12:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	18 
    -- CP-element group 12: 	37 
    -- CP-element group 12: 	42 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	13 
    -- CP-element group 12: 	67 
    -- CP-element group 12: marked-successors 
    -- CP-element group 12: 	16 
    -- CP-element group 12: 	39 
    -- CP-element group 12:  members (4) 
      -- CP-element group 12: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/aggregated_phi_sample_ack
      -- CP-element group 12: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/phi_stmt_4688_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/phi_stmt_4693_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/phi_stmt_4696_sample_completed_
      -- 
    memAccessAndSendResponseDaemon_cp_element_group_12: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 50) := "memAccessAndSendResponseDaemon_cp_element_group_12"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= memAccessAndSendResponseDaemon_CP_3647_elements(18) & memAccessAndSendResponseDaemon_CP_3647_elements(37) & memAccessAndSendResponseDaemon_CP_3647_elements(42);
      gj_memAccessAndSendResponseDaemon_cp_element_group_12 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => memAccessAndSendResponseDaemon_CP_3647_elements(12), clk => clk, reset => reset); --
    end block;
    -- CP-element group 13:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: 	12 
    -- CP-element group 13: successors 
    -- CP-element group 13: 	10 
    -- CP-element group 13:  members (1) 
      -- CP-element group 13: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/aggregated_phi_sample_ack_d
      -- 
    -- Element group memAccessAndSendResponseDaemon_CP_3647_elements(13) is a control-delay.
    cp_element_13_delay: control_delay_element  generic map(name => " 13_delay", delay_value => 1)  port map(req => memAccessAndSendResponseDaemon_CP_3647_elements(12), ack => memAccessAndSendResponseDaemon_CP_3647_elements(13), clk => clk, reset =>reset);
    -- CP-element group 14:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: 	9 
    -- CP-element group 14: 	17 
    -- CP-element group 14: 	40 
    -- CP-element group 14: successors 
    -- CP-element group 14: 	36 
    -- CP-element group 14: 	43 
    -- CP-element group 14:  members (2) 
      -- CP-element group 14: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/aggregated_phi_update_req
      -- CP-element group 14: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/phi_stmt_4688_update_start__ps
      -- 
    memAccessAndSendResponseDaemon_cp_element_group_14: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 50) := "memAccessAndSendResponseDaemon_cp_element_group_14"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= memAccessAndSendResponseDaemon_CP_3647_elements(9) & memAccessAndSendResponseDaemon_CP_3647_elements(17) & memAccessAndSendResponseDaemon_CP_3647_elements(40);
      gj_memAccessAndSendResponseDaemon_cp_element_group_14 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => memAccessAndSendResponseDaemon_CP_3647_elements(14), clk => clk, reset => reset); --
    end block;
    -- CP-element group 15:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: 	19 
    -- CP-element group 15: 	38 
    -- CP-element group 15: 	44 
    -- CP-element group 15: successors 
    -- CP-element group 15: 	10 
    -- CP-element group 15: marked-successors 
    -- CP-element group 15: 	11 
    -- CP-element group 15:  members (1) 
      -- CP-element group 15: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/aggregated_phi_update_ack
      -- 
    memAccessAndSendResponseDaemon_cp_element_group_15: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 50) := "memAccessAndSendResponseDaemon_cp_element_group_15"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= memAccessAndSendResponseDaemon_CP_3647_elements(19) & memAccessAndSendResponseDaemon_CP_3647_elements(38) & memAccessAndSendResponseDaemon_CP_3647_elements(44);
      gj_memAccessAndSendResponseDaemon_cp_element_group_15 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => memAccessAndSendResponseDaemon_CP_3647_elements(15), clk => clk, reset => reset); --
    end block;
    -- CP-element group 16:  join  transition  bypass  pipeline-parent 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: 	9 
    -- CP-element group 16: marked-predecessors 
    -- CP-element group 16: 	12 
    -- CP-element group 16: successors 
    -- CP-element group 16: 	11 
    -- CP-element group 16:  members (1) 
      -- CP-element group 16: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/phi_stmt_4688_sample_start_
      -- 
    memAccessAndSendResponseDaemon_cp_element_group_16: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 50) := "memAccessAndSendResponseDaemon_cp_element_group_16"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= memAccessAndSendResponseDaemon_CP_3647_elements(9) & memAccessAndSendResponseDaemon_CP_3647_elements(12);
      gj_memAccessAndSendResponseDaemon_cp_element_group_16 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => memAccessAndSendResponseDaemon_CP_3647_elements(16), clk => clk, reset => reset); --
    end block;
    -- CP-element group 17:  join  transition  bypass  pipeline-parent 
    -- CP-element group 17: predecessors 
    -- CP-element group 17: 	9 
    -- CP-element group 17: marked-predecessors 
    -- CP-element group 17: 	60 
    -- CP-element group 17: 	64 
    -- CP-element group 17: successors 
    -- CP-element group 17: 	14 
    -- CP-element group 17:  members (1) 
      -- CP-element group 17: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/phi_stmt_4688_update_start_
      -- 
    memAccessAndSendResponseDaemon_cp_element_group_17: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 50) := "memAccessAndSendResponseDaemon_cp_element_group_17"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= memAccessAndSendResponseDaemon_CP_3647_elements(9) & memAccessAndSendResponseDaemon_CP_3647_elements(60) & memAccessAndSendResponseDaemon_CP_3647_elements(64);
      gj_memAccessAndSendResponseDaemon_cp_element_group_17 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => memAccessAndSendResponseDaemon_CP_3647_elements(17), clk => clk, reset => reset); --
    end block;
    -- CP-element group 18:  join  transition  bypass  pipeline-parent 
    -- CP-element group 18: predecessors 
    -- CP-element group 18: successors 
    -- CP-element group 18: 	12 
    -- CP-element group 18:  members (1) 
      -- CP-element group 18: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/phi_stmt_4688_sample_completed__ps
      -- 
    -- Element group memAccessAndSendResponseDaemon_CP_3647_elements(18) is bound as output of CP function.
    -- CP-element group 19:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 19: predecessors 
    -- CP-element group 19: successors 
    -- CP-element group 19: 	15 
    -- CP-element group 19: 	58 
    -- CP-element group 19: 	62 
    -- CP-element group 19:  members (2) 
      -- CP-element group 19: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/phi_stmt_4688_update_completed_
      -- CP-element group 19: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/phi_stmt_4688_update_completed__ps
      -- 
    -- Element group memAccessAndSendResponseDaemon_CP_3647_elements(19) is bound as output of CP function.
    -- CP-element group 20:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 20: predecessors 
    -- CP-element group 20: 	7 
    -- CP-element group 20: successors 
    -- CP-element group 20:  members (1) 
      -- CP-element group 20: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/phi_stmt_4688_loopback_trigger
      -- 
    memAccessAndSendResponseDaemon_CP_3647_elements(20) <= memAccessAndSendResponseDaemon_CP_3647_elements(7);
    -- CP-element group 21:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 21: predecessors 
    -- CP-element group 21: successors 
    -- CP-element group 21:  members (2) 
      -- CP-element group 21: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/phi_stmt_4688_loopback_sample_req
      -- CP-element group 21: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/phi_stmt_4688_loopback_sample_req_ps
      -- 
    phi_stmt_4688_loopback_sample_req_3687_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_4688_loopback_sample_req_3687_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => memAccessAndSendResponseDaemon_CP_3647_elements(21), ack => phi_stmt_4688_req_1); -- 
    -- Element group memAccessAndSendResponseDaemon_CP_3647_elements(21) is bound as output of CP function.
    -- CP-element group 22:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 22: predecessors 
    -- CP-element group 22: 	8 
    -- CP-element group 22: successors 
    -- CP-element group 22:  members (1) 
      -- CP-element group 22: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/phi_stmt_4688_entry_trigger
      -- 
    memAccessAndSendResponseDaemon_CP_3647_elements(22) <= memAccessAndSendResponseDaemon_CP_3647_elements(8);
    -- CP-element group 23:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 23: predecessors 
    -- CP-element group 23: successors 
    -- CP-element group 23:  members (2) 
      -- CP-element group 23: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/phi_stmt_4688_entry_sample_req
      -- CP-element group 23: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/phi_stmt_4688_entry_sample_req_ps
      -- 
    phi_stmt_4688_entry_sample_req_3690_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_4688_entry_sample_req_3690_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => memAccessAndSendResponseDaemon_CP_3647_elements(23), ack => phi_stmt_4688_req_0); -- 
    -- Element group memAccessAndSendResponseDaemon_CP_3647_elements(23) is bound as output of CP function.
    -- CP-element group 24:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 24: predecessors 
    -- CP-element group 24: successors 
    -- CP-element group 24:  members (2) 
      -- CP-element group 24: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/phi_stmt_4688_phi_mux_ack
      -- CP-element group 24: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/phi_stmt_4688_phi_mux_ack_ps
      -- 
    phi_stmt_4688_phi_mux_ack_3693_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 24_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_4688_ack_0, ack => memAccessAndSendResponseDaemon_CP_3647_elements(24)); -- 
    -- CP-element group 25:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 25: predecessors 
    -- CP-element group 25: successors 
    -- CP-element group 25:  members (4) 
      -- CP-element group 25: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/konst_4690_sample_start__ps
      -- CP-element group 25: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/konst_4690_sample_completed__ps
      -- CP-element group 25: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/konst_4690_sample_start_
      -- CP-element group 25: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/konst_4690_sample_completed_
      -- 
    -- Element group memAccessAndSendResponseDaemon_CP_3647_elements(25) is bound as output of CP function.
    -- CP-element group 26:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 26: predecessors 
    -- CP-element group 26: successors 
    -- CP-element group 26: 	28 
    -- CP-element group 26:  members (2) 
      -- CP-element group 26: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/konst_4690_update_start__ps
      -- CP-element group 26: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/konst_4690_update_start_
      -- 
    -- Element group memAccessAndSendResponseDaemon_CP_3647_elements(26) is bound as output of CP function.
    -- CP-element group 27:  join  transition  bypass  pipeline-parent 
    -- CP-element group 27: predecessors 
    -- CP-element group 27: 	28 
    -- CP-element group 27: successors 
    -- CP-element group 27:  members (1) 
      -- CP-element group 27: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/konst_4690_update_completed__ps
      -- 
    memAccessAndSendResponseDaemon_CP_3647_elements(27) <= memAccessAndSendResponseDaemon_CP_3647_elements(28);
    -- CP-element group 28:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 28: predecessors 
    -- CP-element group 28: 	26 
    -- CP-element group 28: successors 
    -- CP-element group 28: 	27 
    -- CP-element group 28:  members (1) 
      -- CP-element group 28: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/konst_4690_update_completed_
      -- 
    -- Element group memAccessAndSendResponseDaemon_CP_3647_elements(28) is a control-delay.
    cp_element_28_delay: control_delay_element  generic map(name => " 28_delay", delay_value => 1)  port map(req => memAccessAndSendResponseDaemon_CP_3647_elements(26), ack => memAccessAndSendResponseDaemon_CP_3647_elements(28), clk => clk, reset =>reset);
    -- CP-element group 29:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 29: predecessors 
    -- CP-element group 29: successors 
    -- CP-element group 29: 	31 
    -- CP-element group 29:  members (1) 
      -- CP-element group 29: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/RPIPE_noblock_mem_access_and_send_response_command_4692_sample_start__ps
      -- 
    -- Element group memAccessAndSendResponseDaemon_CP_3647_elements(29) is bound as output of CP function.
    -- CP-element group 30:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 30: predecessors 
    -- CP-element group 30: successors 
    -- CP-element group 30: 	32 
    -- CP-element group 30:  members (1) 
      -- CP-element group 30: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/RPIPE_noblock_mem_access_and_send_response_command_4692_update_start__ps
      -- 
    -- Element group memAccessAndSendResponseDaemon_CP_3647_elements(30) is bound as output of CP function.
    -- CP-element group 31:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 31: predecessors 
    -- CP-element group 31: 	29 
    -- CP-element group 31: marked-predecessors 
    -- CP-element group 31: 	34 
    -- CP-element group 31: successors 
    -- CP-element group 31: 	33 
    -- CP-element group 31:  members (3) 
      -- CP-element group 31: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/RPIPE_noblock_mem_access_and_send_response_command_4692_sample_start_
      -- CP-element group 31: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/RPIPE_noblock_mem_access_and_send_response_command_4692_Sample/$entry
      -- CP-element group 31: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/RPIPE_noblock_mem_access_and_send_response_command_4692_Sample/rr
      -- 
    rr_3714_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_3714_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => memAccessAndSendResponseDaemon_CP_3647_elements(31), ack => RPIPE_noblock_mem_access_and_send_response_command_4692_inst_req_0); -- 
    memAccessAndSendResponseDaemon_cp_element_group_31: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 50) := "memAccessAndSendResponseDaemon_cp_element_group_31"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= memAccessAndSendResponseDaemon_CP_3647_elements(29) & memAccessAndSendResponseDaemon_CP_3647_elements(34);
      gj_memAccessAndSendResponseDaemon_cp_element_group_31 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => memAccessAndSendResponseDaemon_CP_3647_elements(31), clk => clk, reset => reset); --
    end block;
    -- CP-element group 32:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 32: predecessors 
    -- CP-element group 32: 	30 
    -- CP-element group 32: 	33 
    -- CP-element group 32: successors 
    -- CP-element group 32: 	34 
    -- CP-element group 32:  members (3) 
      -- CP-element group 32: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/RPIPE_noblock_mem_access_and_send_response_command_4692_update_start_
      -- CP-element group 32: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/RPIPE_noblock_mem_access_and_send_response_command_4692_Update/$entry
      -- CP-element group 32: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/RPIPE_noblock_mem_access_and_send_response_command_4692_Update/cr
      -- 
    cr_3719_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_3719_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => memAccessAndSendResponseDaemon_CP_3647_elements(32), ack => RPIPE_noblock_mem_access_and_send_response_command_4692_inst_req_1); -- 
    memAccessAndSendResponseDaemon_cp_element_group_32: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 50) := "memAccessAndSendResponseDaemon_cp_element_group_32"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= memAccessAndSendResponseDaemon_CP_3647_elements(30) & memAccessAndSendResponseDaemon_CP_3647_elements(33);
      gj_memAccessAndSendResponseDaemon_cp_element_group_32 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => memAccessAndSendResponseDaemon_CP_3647_elements(32), clk => clk, reset => reset); --
    end block;
    -- CP-element group 33:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 33: predecessors 
    -- CP-element group 33: 	31 
    -- CP-element group 33: successors 
    -- CP-element group 33: 	32 
    -- CP-element group 33:  members (4) 
      -- CP-element group 33: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/RPIPE_noblock_mem_access_and_send_response_command_4692_sample_completed__ps
      -- CP-element group 33: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/RPIPE_noblock_mem_access_and_send_response_command_4692_sample_completed_
      -- CP-element group 33: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/RPIPE_noblock_mem_access_and_send_response_command_4692_Sample/$exit
      -- CP-element group 33: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/RPIPE_noblock_mem_access_and_send_response_command_4692_Sample/ra
      -- 
    ra_3715_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 33_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_mem_access_and_send_response_command_4692_inst_ack_0, ack => memAccessAndSendResponseDaemon_CP_3647_elements(33)); -- 
    -- CP-element group 34:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 34: predecessors 
    -- CP-element group 34: 	32 
    -- CP-element group 34: successors 
    -- CP-element group 34: marked-successors 
    -- CP-element group 34: 	31 
    -- CP-element group 34:  members (4) 
      -- CP-element group 34: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/RPIPE_noblock_mem_access_and_send_response_command_4692_update_completed__ps
      -- CP-element group 34: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/RPIPE_noblock_mem_access_and_send_response_command_4692_update_completed_
      -- CP-element group 34: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/RPIPE_noblock_mem_access_and_send_response_command_4692_Update/$exit
      -- CP-element group 34: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/RPIPE_noblock_mem_access_and_send_response_command_4692_Update/ca
      -- 
    ca_3720_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 34_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_mem_access_and_send_response_command_4692_inst_ack_1, ack => memAccessAndSendResponseDaemon_CP_3647_elements(34)); -- 
    -- CP-element group 35:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 35: predecessors 
    -- CP-element group 35: 	11 
    -- CP-element group 35: marked-predecessors 
    -- CP-element group 35: 	38 
    -- CP-element group 35: successors 
    -- CP-element group 35: 	37 
    -- CP-element group 35:  members (3) 
      -- CP-element group 35: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/RPIPE_noblock_dword_token_return_4695_sample_start_
      -- CP-element group 35: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/RPIPE_noblock_dword_token_return_4695_Sample/$entry
      -- CP-element group 35: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/RPIPE_noblock_dword_token_return_4695_Sample/rr
      -- 
    rr_3733_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_3733_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => memAccessAndSendResponseDaemon_CP_3647_elements(35), ack => RPIPE_noblock_dword_token_return_4695_inst_req_0); -- 
    memAccessAndSendResponseDaemon_cp_element_group_35: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 50) := "memAccessAndSendResponseDaemon_cp_element_group_35"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= memAccessAndSendResponseDaemon_CP_3647_elements(11) & memAccessAndSendResponseDaemon_CP_3647_elements(38);
      gj_memAccessAndSendResponseDaemon_cp_element_group_35 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => memAccessAndSendResponseDaemon_CP_3647_elements(35), clk => clk, reset => reset); --
    end block;
    -- CP-element group 36:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 36: predecessors 
    -- CP-element group 36: 	14 
    -- CP-element group 36: 	37 
    -- CP-element group 36: successors 
    -- CP-element group 36: 	38 
    -- CP-element group 36:  members (3) 
      -- CP-element group 36: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/RPIPE_noblock_dword_token_return_4695_update_start_
      -- CP-element group 36: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/RPIPE_noblock_dword_token_return_4695_Update/$entry
      -- CP-element group 36: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/RPIPE_noblock_dword_token_return_4695_Update/cr
      -- 
    cr_3738_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_3738_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => memAccessAndSendResponseDaemon_CP_3647_elements(36), ack => RPIPE_noblock_dword_token_return_4695_inst_req_1); -- 
    memAccessAndSendResponseDaemon_cp_element_group_36: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 50) := "memAccessAndSendResponseDaemon_cp_element_group_36"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= memAccessAndSendResponseDaemon_CP_3647_elements(14) & memAccessAndSendResponseDaemon_CP_3647_elements(37);
      gj_memAccessAndSendResponseDaemon_cp_element_group_36 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => memAccessAndSendResponseDaemon_CP_3647_elements(36), clk => clk, reset => reset); --
    end block;
    -- CP-element group 37:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 37: predecessors 
    -- CP-element group 37: 	35 
    -- CP-element group 37: successors 
    -- CP-element group 37: 	12 
    -- CP-element group 37: 	36 
    -- CP-element group 37:  members (3) 
      -- CP-element group 37: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/RPIPE_noblock_dword_token_return_4695_sample_completed_
      -- CP-element group 37: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/RPIPE_noblock_dword_token_return_4695_Sample/$exit
      -- CP-element group 37: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/RPIPE_noblock_dword_token_return_4695_Sample/ra
      -- 
    ra_3734_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 37_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_dword_token_return_4695_inst_ack_0, ack => memAccessAndSendResponseDaemon_CP_3647_elements(37)); -- 
    -- CP-element group 38:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 38: predecessors 
    -- CP-element group 38: 	36 
    -- CP-element group 38: successors 
    -- CP-element group 38: 	15 
    -- CP-element group 38: marked-successors 
    -- CP-element group 38: 	35 
    -- CP-element group 38:  members (4) 
      -- CP-element group 38: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/phi_stmt_4693_update_completed_
      -- CP-element group 38: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/RPIPE_noblock_dword_token_return_4695_update_completed_
      -- CP-element group 38: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/RPIPE_noblock_dword_token_return_4695_Update/$exit
      -- CP-element group 38: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/RPIPE_noblock_dword_token_return_4695_Update/ca
      -- 
    ca_3739_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 38_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_dword_token_return_4695_inst_ack_1, ack => memAccessAndSendResponseDaemon_CP_3647_elements(38)); -- 
    -- CP-element group 39:  join  transition  bypass  pipeline-parent 
    -- CP-element group 39: predecessors 
    -- CP-element group 39: 	9 
    -- CP-element group 39: marked-predecessors 
    -- CP-element group 39: 	12 
    -- CP-element group 39: successors 
    -- CP-element group 39: 	11 
    -- CP-element group 39:  members (1) 
      -- CP-element group 39: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/phi_stmt_4696_sample_start_
      -- 
    memAccessAndSendResponseDaemon_cp_element_group_39: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 50) := "memAccessAndSendResponseDaemon_cp_element_group_39"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= memAccessAndSendResponseDaemon_CP_3647_elements(9) & memAccessAndSendResponseDaemon_CP_3647_elements(12);
      gj_memAccessAndSendResponseDaemon_cp_element_group_39 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => memAccessAndSendResponseDaemon_CP_3647_elements(39), clk => clk, reset => reset); --
    end block;
    -- CP-element group 40:  join  transition  bypass  pipeline-parent 
    -- CP-element group 40: predecessors 
    -- CP-element group 40: 	9 
    -- CP-element group 40: marked-predecessors 
    -- CP-element group 40: 	60 
    -- CP-element group 40: 	64 
    -- CP-element group 40: successors 
    -- CP-element group 40: 	14 
    -- CP-element group 40:  members (1) 
      -- CP-element group 40: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/phi_stmt_4696_update_start_
      -- 
    memAccessAndSendResponseDaemon_cp_element_group_40: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 50) := "memAccessAndSendResponseDaemon_cp_element_group_40"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= memAccessAndSendResponseDaemon_CP_3647_elements(9) & memAccessAndSendResponseDaemon_CP_3647_elements(60) & memAccessAndSendResponseDaemon_CP_3647_elements(64);
      gj_memAccessAndSendResponseDaemon_cp_element_group_40 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => memAccessAndSendResponseDaemon_CP_3647_elements(40), clk => clk, reset => reset); --
    end block;
    -- CP-element group 41:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 41: predecessors 
    -- CP-element group 41: 	11 
    -- CP-element group 41: successors 
    -- CP-element group 41:  members (1) 
      -- CP-element group 41: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/phi_stmt_4696_sample_start__ps
      -- 
    memAccessAndSendResponseDaemon_CP_3647_elements(41) <= memAccessAndSendResponseDaemon_CP_3647_elements(11);
    -- CP-element group 42:  join  transition  bypass  pipeline-parent 
    -- CP-element group 42: predecessors 
    -- CP-element group 42: successors 
    -- CP-element group 42: 	12 
    -- CP-element group 42:  members (1) 
      -- CP-element group 42: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/phi_stmt_4696_sample_completed__ps
      -- 
    -- Element group memAccessAndSendResponseDaemon_CP_3647_elements(42) is bound as output of CP function.
    -- CP-element group 43:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 43: predecessors 
    -- CP-element group 43: 	14 
    -- CP-element group 43: successors 
    -- CP-element group 43:  members (1) 
      -- CP-element group 43: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/phi_stmt_4696_update_start__ps
      -- 
    memAccessAndSendResponseDaemon_CP_3647_elements(43) <= memAccessAndSendResponseDaemon_CP_3647_elements(14);
    -- CP-element group 44:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 44: predecessors 
    -- CP-element group 44: successors 
    -- CP-element group 44: 	15 
    -- CP-element group 44: 	58 
    -- CP-element group 44: 	62 
    -- CP-element group 44:  members (2) 
      -- CP-element group 44: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/phi_stmt_4696_update_completed_
      -- CP-element group 44: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/phi_stmt_4696_update_completed__ps
      -- 
    -- Element group memAccessAndSendResponseDaemon_CP_3647_elements(44) is bound as output of CP function.
    -- CP-element group 45:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 45: predecessors 
    -- CP-element group 45: 	7 
    -- CP-element group 45: successors 
    -- CP-element group 45:  members (1) 
      -- CP-element group 45: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/phi_stmt_4696_loopback_trigger
      -- 
    memAccessAndSendResponseDaemon_CP_3647_elements(45) <= memAccessAndSendResponseDaemon_CP_3647_elements(7);
    -- CP-element group 46:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 46: predecessors 
    -- CP-element group 46: successors 
    -- CP-element group 46:  members (2) 
      -- CP-element group 46: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/phi_stmt_4696_loopback_sample_req
      -- CP-element group 46: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/phi_stmt_4696_loopback_sample_req_ps
      -- 
    phi_stmt_4696_loopback_sample_req_3749_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_4696_loopback_sample_req_3749_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => memAccessAndSendResponseDaemon_CP_3647_elements(46), ack => phi_stmt_4696_req_1); -- 
    -- Element group memAccessAndSendResponseDaemon_CP_3647_elements(46) is bound as output of CP function.
    -- CP-element group 47:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 47: predecessors 
    -- CP-element group 47: 	8 
    -- CP-element group 47: successors 
    -- CP-element group 47:  members (1) 
      -- CP-element group 47: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/phi_stmt_4696_entry_trigger
      -- 
    memAccessAndSendResponseDaemon_CP_3647_elements(47) <= memAccessAndSendResponseDaemon_CP_3647_elements(8);
    -- CP-element group 48:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 48: predecessors 
    -- CP-element group 48: successors 
    -- CP-element group 48:  members (2) 
      -- CP-element group 48: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/phi_stmt_4696_entry_sample_req
      -- CP-element group 48: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/phi_stmt_4696_entry_sample_req_ps
      -- 
    phi_stmt_4696_entry_sample_req_3752_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_4696_entry_sample_req_3752_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => memAccessAndSendResponseDaemon_CP_3647_elements(48), ack => phi_stmt_4696_req_0); -- 
    -- Element group memAccessAndSendResponseDaemon_CP_3647_elements(48) is bound as output of CP function.
    -- CP-element group 49:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 49: predecessors 
    -- CP-element group 49: successors 
    -- CP-element group 49:  members (2) 
      -- CP-element group 49: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/phi_stmt_4696_phi_mux_ack
      -- CP-element group 49: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/phi_stmt_4696_phi_mux_ack_ps
      -- 
    phi_stmt_4696_phi_mux_ack_3755_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 49_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_4696_ack_0, ack => memAccessAndSendResponseDaemon_CP_3647_elements(49)); -- 
    -- CP-element group 50:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 50: predecessors 
    -- CP-element group 50: successors 
    -- CP-element group 50:  members (4) 
      -- CP-element group 50: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/type_cast_4699_sample_start__ps
      -- CP-element group 50: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/type_cast_4699_sample_completed__ps
      -- CP-element group 50: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/type_cast_4699_sample_start_
      -- CP-element group 50: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/type_cast_4699_sample_completed_
      -- 
    -- Element group memAccessAndSendResponseDaemon_CP_3647_elements(50) is bound as output of CP function.
    -- CP-element group 51:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 51: predecessors 
    -- CP-element group 51: successors 
    -- CP-element group 51: 	53 
    -- CP-element group 51:  members (2) 
      -- CP-element group 51: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/type_cast_4699_update_start__ps
      -- CP-element group 51: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/type_cast_4699_update_start_
      -- 
    -- Element group memAccessAndSendResponseDaemon_CP_3647_elements(51) is bound as output of CP function.
    -- CP-element group 52:  join  transition  bypass  pipeline-parent 
    -- CP-element group 52: predecessors 
    -- CP-element group 52: 	53 
    -- CP-element group 52: successors 
    -- CP-element group 52:  members (1) 
      -- CP-element group 52: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/type_cast_4699_update_completed__ps
      -- 
    memAccessAndSendResponseDaemon_CP_3647_elements(52) <= memAccessAndSendResponseDaemon_CP_3647_elements(53);
    -- CP-element group 53:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 53: predecessors 
    -- CP-element group 53: 	51 
    -- CP-element group 53: successors 
    -- CP-element group 53: 	52 
    -- CP-element group 53:  members (1) 
      -- CP-element group 53: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/type_cast_4699_update_completed_
      -- 
    -- Element group memAccessAndSendResponseDaemon_CP_3647_elements(53) is a control-delay.
    cp_element_53_delay: control_delay_element  generic map(name => " 53_delay", delay_value => 1)  port map(req => memAccessAndSendResponseDaemon_CP_3647_elements(51), ack => memAccessAndSendResponseDaemon_CP_3647_elements(53), clk => clk, reset =>reset);
    -- CP-element group 54:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 54: predecessors 
    -- CP-element group 54: successors 
    -- CP-element group 54: 	56 
    -- CP-element group 54:  members (4) 
      -- CP-element group 54: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/R_n_available_tokens_4700_sample_start__ps
      -- CP-element group 54: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/R_n_available_tokens_4700_sample_start_
      -- CP-element group 54: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/R_n_available_tokens_4700_Sample/$entry
      -- CP-element group 54: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/R_n_available_tokens_4700_Sample/req
      -- 
    req_3776_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_3776_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => memAccessAndSendResponseDaemon_CP_3647_elements(54), ack => n_available_tokens_4882_4700_buf_req_0); -- 
    -- Element group memAccessAndSendResponseDaemon_CP_3647_elements(54) is bound as output of CP function.
    -- CP-element group 55:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 55: predecessors 
    -- CP-element group 55: successors 
    -- CP-element group 55: 	57 
    -- CP-element group 55:  members (4) 
      -- CP-element group 55: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/R_n_available_tokens_4700_update_start__ps
      -- CP-element group 55: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/R_n_available_tokens_4700_update_start_
      -- CP-element group 55: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/R_n_available_tokens_4700_Update/$entry
      -- CP-element group 55: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/R_n_available_tokens_4700_Update/req
      -- 
    req_3781_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_3781_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => memAccessAndSendResponseDaemon_CP_3647_elements(55), ack => n_available_tokens_4882_4700_buf_req_1); -- 
    -- Element group memAccessAndSendResponseDaemon_CP_3647_elements(55) is bound as output of CP function.
    -- CP-element group 56:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 56: predecessors 
    -- CP-element group 56: 	54 
    -- CP-element group 56: successors 
    -- CP-element group 56:  members (4) 
      -- CP-element group 56: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/R_n_available_tokens_4700_sample_completed__ps
      -- CP-element group 56: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/R_n_available_tokens_4700_sample_completed_
      -- CP-element group 56: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/R_n_available_tokens_4700_Sample/$exit
      -- CP-element group 56: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/R_n_available_tokens_4700_Sample/ack
      -- 
    ack_3777_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 56_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => n_available_tokens_4882_4700_buf_ack_0, ack => memAccessAndSendResponseDaemon_CP_3647_elements(56)); -- 
    -- CP-element group 57:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 57: predecessors 
    -- CP-element group 57: 	55 
    -- CP-element group 57: successors 
    -- CP-element group 57:  members (4) 
      -- CP-element group 57: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/R_n_available_tokens_4700_update_completed__ps
      -- CP-element group 57: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/R_n_available_tokens_4700_update_completed_
      -- CP-element group 57: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/R_n_available_tokens_4700_Update/$exit
      -- CP-element group 57: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/R_n_available_tokens_4700_Update/ack
      -- 
    ack_3782_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 57_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => n_available_tokens_4882_4700_buf_ack_1, ack => memAccessAndSendResponseDaemon_CP_3647_elements(57)); -- 
    -- CP-element group 58:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 58: predecessors 
    -- CP-element group 58: 	19 
    -- CP-element group 58: 	44 
    -- CP-element group 58: successors 
    -- CP-element group 58: 	60 
    -- CP-element group 58:  members (3) 
      -- CP-element group 58: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/call_stmt_4962_sample_start_
      -- CP-element group 58: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/call_stmt_4962_Sample/$entry
      -- CP-element group 58: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/call_stmt_4962_Sample/crr
      -- 
    crr_3791_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " crr_3791_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => memAccessAndSendResponseDaemon_CP_3647_elements(58), ack => call_stmt_4962_call_req_0); -- 
    memAccessAndSendResponseDaemon_cp_element_group_58: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 50) := "memAccessAndSendResponseDaemon_cp_element_group_58"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= memAccessAndSendResponseDaemon_CP_3647_elements(19) & memAccessAndSendResponseDaemon_CP_3647_elements(44);
      gj_memAccessAndSendResponseDaemon_cp_element_group_58 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => memAccessAndSendResponseDaemon_CP_3647_elements(58), clk => clk, reset => reset); --
    end block;
    -- CP-element group 59:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 59: predecessors 
    -- CP-element group 59: marked-predecessors 
    -- CP-element group 59: 	61 
    -- CP-element group 59: successors 
    -- CP-element group 59: 	61 
    -- CP-element group 59:  members (3) 
      -- CP-element group 59: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/call_stmt_4962_update_start_
      -- CP-element group 59: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/call_stmt_4962_Update/$entry
      -- CP-element group 59: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/call_stmt_4962_Update/ccr
      -- 
    ccr_3796_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " ccr_3796_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => memAccessAndSendResponseDaemon_CP_3647_elements(59), ack => call_stmt_4962_call_req_1); -- 
    memAccessAndSendResponseDaemon_cp_element_group_59: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 50) := "memAccessAndSendResponseDaemon_cp_element_group_59"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= memAccessAndSendResponseDaemon_CP_3647_elements(61);
      gj_memAccessAndSendResponseDaemon_cp_element_group_59 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => memAccessAndSendResponseDaemon_CP_3647_elements(59), clk => clk, reset => reset); --
    end block;
    -- CP-element group 60:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 60: predecessors 
    -- CP-element group 60: 	58 
    -- CP-element group 60: successors 
    -- CP-element group 60: marked-successors 
    -- CP-element group 60: 	17 
    -- CP-element group 60: 	40 
    -- CP-element group 60:  members (3) 
      -- CP-element group 60: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/call_stmt_4962_sample_completed_
      -- CP-element group 60: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/call_stmt_4962_Sample/$exit
      -- CP-element group 60: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/call_stmt_4962_Sample/cra
      -- 
    cra_3792_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 60_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_4962_call_ack_0, ack => memAccessAndSendResponseDaemon_CP_3647_elements(60)); -- 
    -- CP-element group 61:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 61: predecessors 
    -- CP-element group 61: 	59 
    -- CP-element group 61: successors 
    -- CP-element group 61: 	67 
    -- CP-element group 61: marked-successors 
    -- CP-element group 61: 	59 
    -- CP-element group 61:  members (3) 
      -- CP-element group 61: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/call_stmt_4962_update_completed_
      -- CP-element group 61: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/call_stmt_4962_Update/$exit
      -- CP-element group 61: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/call_stmt_4962_Update/cca
      -- 
    cca_3797_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 61_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_4962_call_ack_1, ack => memAccessAndSendResponseDaemon_CP_3647_elements(61)); -- 
    -- CP-element group 62:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 62: predecessors 
    -- CP-element group 62: 	19 
    -- CP-element group 62: 	44 
    -- CP-element group 62: successors 
    -- CP-element group 62: 	64 
    -- CP-element group 62:  members (3) 
      -- CP-element group 62: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/call_stmt_4975_sample_start_
      -- CP-element group 62: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/call_stmt_4975_Sample/$entry
      -- CP-element group 62: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/call_stmt_4975_Sample/crr
      -- 
    crr_3805_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " crr_3805_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => memAccessAndSendResponseDaemon_CP_3647_elements(62), ack => call_stmt_4975_call_req_0); -- 
    memAccessAndSendResponseDaemon_cp_element_group_62: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 50) := "memAccessAndSendResponseDaemon_cp_element_group_62"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= memAccessAndSendResponseDaemon_CP_3647_elements(19) & memAccessAndSendResponseDaemon_CP_3647_elements(44);
      gj_memAccessAndSendResponseDaemon_cp_element_group_62 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => memAccessAndSendResponseDaemon_CP_3647_elements(62), clk => clk, reset => reset); --
    end block;
    -- CP-element group 63:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 63: predecessors 
    -- CP-element group 63: marked-predecessors 
    -- CP-element group 63: 	65 
    -- CP-element group 63: successors 
    -- CP-element group 63: 	65 
    -- CP-element group 63:  members (3) 
      -- CP-element group 63: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/call_stmt_4975_update_start_
      -- CP-element group 63: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/call_stmt_4975_Update/$entry
      -- CP-element group 63: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/call_stmt_4975_Update/ccr
      -- 
    ccr_3810_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " ccr_3810_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => memAccessAndSendResponseDaemon_CP_3647_elements(63), ack => call_stmt_4975_call_req_1); -- 
    memAccessAndSendResponseDaemon_cp_element_group_63: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 50) := "memAccessAndSendResponseDaemon_cp_element_group_63"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= memAccessAndSendResponseDaemon_CP_3647_elements(65);
      gj_memAccessAndSendResponseDaemon_cp_element_group_63 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => memAccessAndSendResponseDaemon_CP_3647_elements(63), clk => clk, reset => reset); --
    end block;
    -- CP-element group 64:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 64: predecessors 
    -- CP-element group 64: 	62 
    -- CP-element group 64: successors 
    -- CP-element group 64: marked-successors 
    -- CP-element group 64: 	17 
    -- CP-element group 64: 	40 
    -- CP-element group 64:  members (3) 
      -- CP-element group 64: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/call_stmt_4975_sample_completed_
      -- CP-element group 64: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/call_stmt_4975_Sample/$exit
      -- CP-element group 64: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/call_stmt_4975_Sample/cra
      -- 
    cra_3806_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 64_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_4975_call_ack_0, ack => memAccessAndSendResponseDaemon_CP_3647_elements(64)); -- 
    -- CP-element group 65:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 65: predecessors 
    -- CP-element group 65: 	63 
    -- CP-element group 65: successors 
    -- CP-element group 65: 	67 
    -- CP-element group 65: marked-successors 
    -- CP-element group 65: 	63 
    -- CP-element group 65:  members (3) 
      -- CP-element group 65: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/call_stmt_4975_update_completed_
      -- CP-element group 65: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/call_stmt_4975_Update/$exit
      -- CP-element group 65: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/call_stmt_4975_Update/cca
      -- 
    cca_3811_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 65_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_4975_call_ack_1, ack => memAccessAndSendResponseDaemon_CP_3647_elements(65)); -- 
    -- CP-element group 66:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 66: predecessors 
    -- CP-element group 66: 	9 
    -- CP-element group 66: successors 
    -- CP-element group 66: 	10 
    -- CP-element group 66:  members (1) 
      -- CP-element group 66: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/loop_body_delay_to_condition_start
      -- 
    -- Element group memAccessAndSendResponseDaemon_CP_3647_elements(66) is a control-delay.
    cp_element_66_delay: control_delay_element  generic map(name => " 66_delay", delay_value => 1)  port map(req => memAccessAndSendResponseDaemon_CP_3647_elements(9), ack => memAccessAndSendResponseDaemon_CP_3647_elements(66), clk => clk, reset =>reset);
    -- CP-element group 67:  join  transition  bypass  pipeline-parent 
    -- CP-element group 67: predecessors 
    -- CP-element group 67: 	12 
    -- CP-element group 67: 	61 
    -- CP-element group 67: 	65 
    -- CP-element group 67: successors 
    -- CP-element group 67: 	6 
    -- CP-element group 67:  members (1) 
      -- CP-element group 67: 	 branch_block_stmt_4685/do_while_stmt_4686/do_while_stmt_4686_loop_body/$exit
      -- 
    memAccessAndSendResponseDaemon_cp_element_group_67: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 15,1 => 15,2 => 15);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 50) := "memAccessAndSendResponseDaemon_cp_element_group_67"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= memAccessAndSendResponseDaemon_CP_3647_elements(12) & memAccessAndSendResponseDaemon_CP_3647_elements(61) & memAccessAndSendResponseDaemon_CP_3647_elements(65);
      gj_memAccessAndSendResponseDaemon_cp_element_group_67 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => memAccessAndSendResponseDaemon_CP_3647_elements(67), clk => clk, reset => reset); --
    end block;
    -- CP-element group 68:  transition  input  bypass  pipeline-parent 
    -- CP-element group 68: predecessors 
    -- CP-element group 68: 	5 
    -- CP-element group 68: successors 
    -- CP-element group 68:  members (2) 
      -- CP-element group 68: 	 branch_block_stmt_4685/do_while_stmt_4686/loop_exit/$exit
      -- CP-element group 68: 	 branch_block_stmt_4685/do_while_stmt_4686/loop_exit/ack
      -- 
    ack_3816_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 68_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_4686_branch_ack_0, ack => memAccessAndSendResponseDaemon_CP_3647_elements(68)); -- 
    -- CP-element group 69:  transition  input  bypass  pipeline-parent 
    -- CP-element group 69: predecessors 
    -- CP-element group 69: 	5 
    -- CP-element group 69: successors 
    -- CP-element group 69:  members (2) 
      -- CP-element group 69: 	 branch_block_stmt_4685/do_while_stmt_4686/loop_taken/$exit
      -- CP-element group 69: 	 branch_block_stmt_4685/do_while_stmt_4686/loop_taken/ack
      -- 
    ack_3820_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 69_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_4686_branch_ack_1, ack => memAccessAndSendResponseDaemon_CP_3647_elements(69)); -- 
    -- CP-element group 70:  transition  bypass  pipeline-parent 
    -- CP-element group 70: predecessors 
    -- CP-element group 70: 	3 
    -- CP-element group 70: successors 
    -- CP-element group 70: 	1 
    -- CP-element group 70:  members (1) 
      -- CP-element group 70: 	 branch_block_stmt_4685/do_while_stmt_4686/$exit
      -- 
    memAccessAndSendResponseDaemon_CP_3647_elements(70) <= memAccessAndSendResponseDaemon_CP_3647_elements(3);
    memAccessAndSendResponseDaemon_do_while_stmt_4686_terminator_3821: loop_terminator -- 
      generic map (name => " memAccessAndSendResponseDaemon_do_while_stmt_4686_terminator_3821", max_iterations_in_flight =>15) 
      port map(loop_body_exit => memAccessAndSendResponseDaemon_CP_3647_elements(6),loop_continue => memAccessAndSendResponseDaemon_CP_3647_elements(69),loop_terminate => memAccessAndSendResponseDaemon_CP_3647_elements(68),loop_back => memAccessAndSendResponseDaemon_CP_3647_elements(4),loop_exit => memAccessAndSendResponseDaemon_CP_3647_elements(3),clk => clk, reset => reset); -- 
    phi_stmt_4688_phi_seq_3721_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= memAccessAndSendResponseDaemon_CP_3647_elements(22);
      memAccessAndSendResponseDaemon_CP_3647_elements(25)<= src_sample_reqs(0);
      src_sample_acks(0)  <= memAccessAndSendResponseDaemon_CP_3647_elements(25);
      memAccessAndSendResponseDaemon_CP_3647_elements(26)<= src_update_reqs(0);
      src_update_acks(0)  <= memAccessAndSendResponseDaemon_CP_3647_elements(27);
      memAccessAndSendResponseDaemon_CP_3647_elements(23) <= phi_mux_reqs(0);
      triggers(1)  <= memAccessAndSendResponseDaemon_CP_3647_elements(20);
      memAccessAndSendResponseDaemon_CP_3647_elements(29)<= src_sample_reqs(1);
      src_sample_acks(1)  <= memAccessAndSendResponseDaemon_CP_3647_elements(33);
      memAccessAndSendResponseDaemon_CP_3647_elements(30)<= src_update_reqs(1);
      src_update_acks(1)  <= memAccessAndSendResponseDaemon_CP_3647_elements(34);
      memAccessAndSendResponseDaemon_CP_3647_elements(21) <= phi_mux_reqs(1);
      phi_stmt_4688_phi_seq_3721 : phi_sequencer_v2-- 
        generic map (place_capacity => 15, ntriggers => 2, name => "phi_stmt_4688_phi_seq_3721") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => memAccessAndSendResponseDaemon_CP_3647_elements(11), 
          phi_sample_ack => memAccessAndSendResponseDaemon_CP_3647_elements(18), 
          phi_update_req => memAccessAndSendResponseDaemon_CP_3647_elements(14), 
          phi_update_ack => memAccessAndSendResponseDaemon_CP_3647_elements(19), 
          phi_mux_ack => memAccessAndSendResponseDaemon_CP_3647_elements(24), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_4696_phi_seq_3783_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= memAccessAndSendResponseDaemon_CP_3647_elements(47);
      memAccessAndSendResponseDaemon_CP_3647_elements(50)<= src_sample_reqs(0);
      src_sample_acks(0)  <= memAccessAndSendResponseDaemon_CP_3647_elements(50);
      memAccessAndSendResponseDaemon_CP_3647_elements(51)<= src_update_reqs(0);
      src_update_acks(0)  <= memAccessAndSendResponseDaemon_CP_3647_elements(52);
      memAccessAndSendResponseDaemon_CP_3647_elements(48) <= phi_mux_reqs(0);
      triggers(1)  <= memAccessAndSendResponseDaemon_CP_3647_elements(45);
      memAccessAndSendResponseDaemon_CP_3647_elements(54)<= src_sample_reqs(1);
      src_sample_acks(1)  <= memAccessAndSendResponseDaemon_CP_3647_elements(56);
      memAccessAndSendResponseDaemon_CP_3647_elements(55)<= src_update_reqs(1);
      src_update_acks(1)  <= memAccessAndSendResponseDaemon_CP_3647_elements(57);
      memAccessAndSendResponseDaemon_CP_3647_elements(46) <= phi_mux_reqs(1);
      phi_stmt_4696_phi_seq_3783 : phi_sequencer_v2-- 
        generic map (place_capacity => 15, ntriggers => 2, name => "phi_stmt_4696_phi_seq_3783") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => memAccessAndSendResponseDaemon_CP_3647_elements(41), 
          phi_sample_ack => memAccessAndSendResponseDaemon_CP_3647_elements(42), 
          phi_update_req => memAccessAndSendResponseDaemon_CP_3647_elements(43), 
          phi_update_ack => memAccessAndSendResponseDaemon_CP_3647_elements(44), 
          phi_mux_ack => memAccessAndSendResponseDaemon_CP_3647_elements(49), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    entry_tmerge_3672_block : block -- 
      signal preds : BooleanArray(0 to 1);
      begin -- 
        preds(0)  <= memAccessAndSendResponseDaemon_CP_3647_elements(7);
        preds(1)  <= memAccessAndSendResponseDaemon_CP_3647_elements(8);
        entry_tmerge_3672 : transition_merge -- 
          generic map(name => " entry_tmerge_3672")
          port map (preds => preds, symbol_out => memAccessAndSendResponseDaemon_CP_3647_elements(9));
          -- 
    end block;
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal ADD_u8_u8_4878_wire : std_logic_vector(7 downto 0);
    signal AND_u1_u1_4834_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_4838_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_4846_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_4868_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_4875_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_4937_wire : std_logic_vector(0 downto 0);
    signal CONCAT_u32_u64_4905_wire : std_logic_vector(63 downto 0);
    signal CONCAT_u32_u64_4908_wire : std_logic_vector(63 downto 0);
    signal EQ_u8_u1_4833_wire : std_logic_vector(0 downto 0);
    signal EQ_u8_u1_4902_wire : std_logic_vector(0 downto 0);
    signal MUX_4880_wire : std_logic_vector(7 downto 0);
    signal MUX_4909_wire : std_logic_vector(63 downto 0);
    signal MUX_4911_wire : std_logic_vector(63 downto 0);
    signal MUX_4925_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_4816_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_4824_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_4836_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_4849_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_4860_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_4867_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_4873_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_4936_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4822_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4826_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4850_wire : std_logic_vector(0 downto 0);
    signal RPIPE_noblock_dword_token_return_4695_wire : std_logic_vector(0 downto 0);
    signal RPIPE_noblock_mem_access_and_send_response_command_4692_wire : std_logic_vector(208 downto 0);
    signal R_ZERO_32_4904_wire_constant : std_logic_vector(31 downto 0);
    signal R_ZERO_32_4906_wire_constant : std_logic_vector(31 downto 0);
    signal R_ZERO_6_4886_wire_constant : std_logic_vector(5 downto 0);
    signal SUB_u8_u8_4871_wire : std_logic_vector(7 downto 0);
    signal UGT_u8_u1_4845_wire : std_logic_vector(0 downto 0);
    signal addr_4741 : std_logic_vector(31 downto 0);
    signal available_tokens_4696 : std_logic_vector(7 downto 0);
    signal be_access_error_4745 : std_logic_vector(0 downto 0);
    signal byte_mask_4765 : std_logic_vector(7 downto 0);
    signal ctrl_reg_value_4733 : std_logic_vector(31 downto 0);
    signal default_cacheable_bit_4713 : std_logic_vector(0 downto 0);
    signal do_first_access_4852 : std_logic_vector(0 downto 0);
    signal do_not_send_write_response_4931 : std_logic_vector(0 downto 0);
    signal exec_cmd_4857 : std_logic_vector(0 downto 0);
    signal first_access_address_4895 : std_logic_vector(35 downto 0);
    signal first_access_byte_mask_4916 : std_logic_vector(7 downto 0);
    signal first_access_is_read_4939 : std_logic_vector(0 downto 0);
    signal first_access_write_data_4913 : std_logic_vector(63 downto 0);
    signal first_is_last_4919 : std_logic_vector(0 downto 0);
    signal flags_4725 : std_logic_vector(7 downto 0);
    signal flags_acc_4795 : std_logic_vector(2 downto 0);
    signal flags_cacheable_4803 : std_logic_vector(0 downto 0);
    signal flags_faulty_fsr_generated_4799 : std_logic_vector(0 downto 0);
    signal flags_mae_4807 : std_logic_vector(0 downto 0);
    signal fsr_4737 : std_logic_vector(17 downto 0);
    signal get_command_4863 : std_logic_vector(0 downto 0);
    signal is_ctrl_reg_read_4729 : std_logic_vector(0 downto 0);
    signal is_mem_read_dword_4757 : std_logic_vector(0 downto 0);
    signal is_mem_write_dword_4753 : std_logic_vector(0 downto 0);
    signal is_read_line_4761 : std_logic_vector(0 downto 0);
    signal konst_4690_wire_constant : std_logic_vector(208 downto 0);
    signal konst_4832_wire_constant : std_logic_vector(7 downto 0);
    signal konst_4844_wire_constant : std_logic_vector(7 downto 0);
    signal konst_4870_wire_constant : std_logic_vector(7 downto 0);
    signal konst_4877_wire_constant : std_logic_vector(7 downto 0);
    signal konst_4901_wire_constant : std_logic_vector(7 downto 0);
    signal konst_4910_wire_constant : std_logic_vector(63 downto 0);
    signal konst_4977_wire_constant : std_logic_vector(0 downto 0);
    signal line_access_error_4975 : std_logic_vector(0 downto 0);
    signal line_aligned_addr_4888 : std_logic_vector(35 downto 0);
    signal lock_bus_4749 : std_logic_vector(0 downto 0);
    signal merged_cmd_4688 : std_logic_vector(208 downto 0);
    signal mmu_enabled_4709 : std_logic_vector(0 downto 0);
    signal n_available_tokens_4882 : std_logic_vector(7 downto 0);
    signal n_available_tokens_4882_4700_buffered : std_logic_vector(7 downto 0);
    signal physical_addr_to_mem_4769 : std_logic_vector(35 downto 0);
    signal really_really_access_line_4840 : std_logic_vector(0 downto 0);
    signal ret_token_4693 : std_logic_vector(0 downto 0);
    signal s_0_error_4962 : std_logic_vector(0 downto 0);
    signal send_first_dword_response_4927 : std_logic_vector(0 downto 0);
    signal send_response_4717 : std_logic_vector(0 downto 0);
    signal send_to_dcache_4812 : std_logic_vector(0 downto 0);
    signal send_to_icache_4818 : std_logic_vector(0 downto 0);
    signal skip_line_access_4828 : std_logic_vector(0 downto 0);
    signal slice_4885_wire : std_logic_vector(29 downto 0);
    signal specified_dword_id_4892 : std_logic_vector(2 downto 0);
    signal to_dcache_4721 : std_logic_vector(0 downto 0);
    signal type_cast_4699_wire_constant : std_logic_vector(7 downto 0);
    signal type_cast_4942_wire_constant : std_logic_vector(0 downto 0);
    signal valid_command_4705 : std_logic_vector(0 downto 0);
    signal write_data_4773 : std_logic_vector(63 downto 0);
    -- 
  begin -- 
    R_ZERO_32_4904_wire_constant <= "00000000000000000000000000000000";
    R_ZERO_32_4906_wire_constant <= "00000000000000000000000000000000";
    R_ZERO_6_4886_wire_constant <= "000000";
    konst_4690_wire_constant <= "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    konst_4832_wire_constant <= "00001000";
    konst_4844_wire_constant <= "00000000";
    konst_4870_wire_constant <= "00000001";
    konst_4877_wire_constant <= "00000001";
    konst_4901_wire_constant <= "11110000";
    konst_4910_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000000";
    konst_4977_wire_constant <= "1";
    type_cast_4699_wire_constant <= "00001000";
    type_cast_4942_wire_constant <= "1";
    phi_stmt_4688: Block -- phi operator 
      signal idata: std_logic_vector(417 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= konst_4690_wire_constant & RPIPE_noblock_mem_access_and_send_response_command_4692_wire;
      req <= phi_stmt_4688_req_0 & phi_stmt_4688_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_4688",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 209) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_4688_ack_0,
          idata => idata,
          odata => merged_cmd_4688,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_4688
    phi_stmt_4696: Block -- phi operator 
      signal idata: std_logic_vector(15 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= type_cast_4699_wire_constant & n_available_tokens_4882_4700_buffered;
      req <= phi_stmt_4696_req_0 & phi_stmt_4696_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_4696",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 8) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_4696_ack_0,
          idata => idata,
          odata => available_tokens_4696,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_4696
    -- flow-through select operator MUX_4880_inst
    MUX_4880_wire <= ADD_u8_u8_4878_wire when (AND_u1_u1_4875_wire(0) /=  '0') else available_tokens_4696;
    -- flow-through select operator MUX_4881_inst
    n_available_tokens_4882 <= SUB_u8_u8_4871_wire when (AND_u1_u1_4868_wire(0) /=  '0') else MUX_4880_wire;
    -- flow-through select operator MUX_4909_inst
    MUX_4909_wire <= CONCAT_u32_u64_4905_wire when (EQ_u8_u1_4902_wire(0) /=  '0') else CONCAT_u32_u64_4908_wire;
    -- flow-through select operator MUX_4911_inst
    MUX_4911_wire <= MUX_4909_wire when (is_ctrl_reg_read_4729(0) /=  '0') else konst_4910_wire_constant;
    -- flow-through select operator MUX_4912_inst
    first_access_write_data_4913 <= write_data_4773 when (is_mem_write_dword_4753(0) /=  '0') else MUX_4911_wire;
    -- flow-through select operator MUX_4925_inst
    MUX_4925_wire <= skip_line_access_4828 when (is_read_line_4761(0) /=  '0') else send_response_4717;
    -- flow-through slice operator slice_4704_inst
    valid_command_4705 <= merged_cmd_4688(208 downto 208);
    -- flow-through slice operator slice_4708_inst
    mmu_enabled_4709 <= merged_cmd_4688(207 downto 207);
    -- flow-through slice operator slice_4712_inst
    default_cacheable_bit_4713 <= merged_cmd_4688(206 downto 206);
    -- flow-through slice operator slice_4716_inst
    send_response_4717 <= merged_cmd_4688(205 downto 205);
    -- flow-through slice operator slice_4720_inst
    to_dcache_4721 <= merged_cmd_4688(204 downto 204);
    -- flow-through slice operator slice_4724_inst
    flags_4725 <= merged_cmd_4688(203 downto 196);
    -- flow-through slice operator slice_4728_inst
    is_ctrl_reg_read_4729 <= merged_cmd_4688(195 downto 195);
    -- flow-through slice operator slice_4732_inst
    ctrl_reg_value_4733 <= merged_cmd_4688(194 downto 163);
    -- flow-through slice operator slice_4736_inst
    fsr_4737 <= merged_cmd_4688(162 downto 145);
    -- flow-through slice operator slice_4740_inst
    addr_4741 <= merged_cmd_4688(144 downto 113);
    -- flow-through slice operator slice_4744_inst
    be_access_error_4745 <= merged_cmd_4688(112 downto 112);
    -- flow-through slice operator slice_4748_inst
    lock_bus_4749 <= merged_cmd_4688(111 downto 111);
    -- flow-through slice operator slice_4752_inst
    is_mem_write_dword_4753 <= merged_cmd_4688(110 downto 110);
    -- flow-through slice operator slice_4756_inst
    is_mem_read_dword_4757 <= merged_cmd_4688(109 downto 109);
    -- flow-through slice operator slice_4760_inst
    is_read_line_4761 <= merged_cmd_4688(108 downto 108);
    -- flow-through slice operator slice_4764_inst
    byte_mask_4765 <= merged_cmd_4688(107 downto 100);
    -- flow-through slice operator slice_4768_inst
    physical_addr_to_mem_4769 <= merged_cmd_4688(99 downto 64);
    -- flow-through slice operator slice_4772_inst
    write_data_4773 <= merged_cmd_4688(63 downto 0);
    -- flow-through slice operator slice_4794_inst
    flags_acc_4795 <= flags_4725(6 downto 4);
    -- flow-through slice operator slice_4798_inst
    flags_faulty_fsr_generated_4799 <= flags_4725(2 downto 2);
    -- flow-through slice operator slice_4802_inst
    flags_cacheable_4803 <= flags_4725(1 downto 1);
    -- flow-through slice operator slice_4806_inst
    flags_mae_4807 <= flags_4725(0 downto 0);
    -- flow-through slice operator slice_4885_inst
    slice_4885_wire <= physical_addr_to_mem_4769(35 downto 6);
    -- flow-through slice operator slice_4891_inst
    specified_dword_id_4892 <= physical_addr_to_mem_4769(5 downto 3);
    -- interlock W_first_access_address_4893_inst
    process(physical_addr_to_mem_4769) -- 
      variable tmp_var : std_logic_vector(35 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 35 downto 0) := physical_addr_to_mem_4769(35 downto 0);
      first_access_address_4895 <= tmp_var; -- 
    end process;
    -- interlock W_first_access_byte_mask_4914_inst
    process(byte_mask_4765) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 7 downto 0) := byte_mask_4765(7 downto 0);
      first_access_byte_mask_4916 <= tmp_var; -- 
    end process;
    -- interlock W_first_is_last_4917_inst
    process(do_first_access_4852) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := do_first_access_4852(0 downto 0);
      first_is_last_4919 <= tmp_var; -- 
    end process;
    n_available_tokens_4882_4700_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= n_available_tokens_4882_4700_buf_req_0;
      n_available_tokens_4882_4700_buf_ack_0<= wack(0);
      rreq(0) <= n_available_tokens_4882_4700_buf_req_1;
      n_available_tokens_4882_4700_buf_ack_1<= rack(0);
      n_available_tokens_4882_4700_buf : InterlockBuffer generic map ( -- 
        name => "n_available_tokens_4882_4700_buf",
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
        write_data => n_available_tokens_4882,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => n_available_tokens_4882_4700_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    -- interlock ssrc_phi_stmt_4693
    process(RPIPE_noblock_dword_token_return_4695_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := RPIPE_noblock_dword_token_return_4695_wire(0 downto 0);
      ret_token_4693 <= tmp_var; -- 
    end process;
    do_while_stmt_4686_branch: Block -- 
      -- branch-block
      signal condition_sig : std_logic_vector(0 downto 0);
      begin 
      condition_sig <= konst_4977_wire_constant;
      branch_instance: BranchBase -- 
        generic map( name => "do_while_stmt_4686_branch", condition_width => 1,  bypass_flag => true)
        port map( -- 
          condition => condition_sig,
          req => do_while_stmt_4686_branch_req_0,
          ack0 => do_while_stmt_4686_branch_ack_0,
          ack1 => do_while_stmt_4686_branch_ack_1,
          clk => clk,
          reset => reset); -- 
      --
    end Block; -- branch-block
    -- flow through binary operator ADD_u8_u8_4878_inst
    ADD_u8_u8_4878_wire <= std_logic_vector(unsigned(available_tokens_4696) + unsigned(konst_4877_wire_constant));
    -- flow through binary operator AND_u1_u1_4811_inst
    send_to_dcache_4812 <= (send_response_4717 and to_dcache_4721);
    -- flow through binary operator AND_u1_u1_4817_inst
    send_to_icache_4818 <= (send_response_4717 and NOT_u1_u1_4816_wire);
    -- flow through binary operator AND_u1_u1_4834_inst
    AND_u1_u1_4834_wire <= (valid_command_4705 and EQ_u8_u1_4833_wire);
    -- flow through binary operator AND_u1_u1_4838_inst
    AND_u1_u1_4838_wire <= (NOT_u1_u1_4836_wire and is_read_line_4761);
    -- flow through binary operator AND_u1_u1_4839_inst
    really_really_access_line_4840 <= (AND_u1_u1_4834_wire and AND_u1_u1_4838_wire);
    -- flow through binary operator AND_u1_u1_4846_inst
    AND_u1_u1_4846_wire <= (valid_command_4705 and UGT_u8_u1_4845_wire);
    -- flow through binary operator AND_u1_u1_4851_inst
    do_first_access_4852 <= (AND_u1_u1_4846_wire and OR_u1_u1_4850_wire);
    -- flow through binary operator AND_u1_u1_4868_inst
    AND_u1_u1_4868_wire <= (do_first_access_4852 and NOT_u1_u1_4867_wire);
    -- flow through binary operator AND_u1_u1_4875_inst
    AND_u1_u1_4875_wire <= (NOT_u1_u1_4873_wire and ret_token_4693);
    -- flow through binary operator AND_u1_u1_4926_inst
    send_first_dword_response_4927 <= (do_first_access_4852 and MUX_4925_wire);
    -- flow through binary operator AND_u1_u1_4937_inst
    AND_u1_u1_4937_wire <= (is_read_line_4761 and NOT_u1_u1_4936_wire);
    -- flow through binary operator CONCAT_u30_u36_4887_inst
    process(slice_4885_wire) -- 
      variable tmp_var : std_logic_vector(35 downto 0); -- 
    begin -- 
      ApConcat_proc(slice_4885_wire, R_ZERO_6_4886_wire_constant, tmp_var);
      line_aligned_addr_4888 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u64_4905_inst
    process(ctrl_reg_value_4733) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(ctrl_reg_value_4733, R_ZERO_32_4904_wire_constant, tmp_var);
      CONCAT_u32_u64_4905_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u64_4908_inst
    process(R_ZERO_32_4906_wire_constant, ctrl_reg_value_4733) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(R_ZERO_32_4906_wire_constant, ctrl_reg_value_4733, tmp_var);
      CONCAT_u32_u64_4908_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_4833_inst
    process(available_tokens_4696) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(available_tokens_4696, konst_4832_wire_constant, tmp_var);
      EQ_u8_u1_4833_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_4902_inst
    process(byte_mask_4765) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(byte_mask_4765, konst_4901_wire_constant, tmp_var);
      EQ_u8_u1_4902_wire <= tmp_var; --
    end process;
    -- unary operator NOT_u1_u1_4816_inst
    process(to_dcache_4721) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", to_dcache_4721, tmp_var);
      NOT_u1_u1_4816_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_4824_inst
    process(flags_cacheable_4803) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", flags_cacheable_4803, tmp_var);
      NOT_u1_u1_4824_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_4836_inst
    process(skip_line_access_4828) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", skip_line_access_4828, tmp_var);
      NOT_u1_u1_4836_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_4849_inst
    process(is_read_line_4761) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", is_read_line_4761, tmp_var);
      NOT_u1_u1_4849_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_4860_inst
    process(valid_command_4705) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", valid_command_4705, tmp_var);
      NOT_u1_u1_4860_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_4867_inst
    process(ret_token_4693) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ret_token_4693, tmp_var);
      NOT_u1_u1_4867_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_4873_inst
    process(do_first_access_4852) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", do_first_access_4852, tmp_var);
      NOT_u1_u1_4873_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_4930_inst
    process(send_first_dword_response_4927) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", send_first_dword_response_4927, tmp_var);
      do_not_send_write_response_4931 <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_4936_inst
    process(is_mem_write_dword_4753) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", is_mem_write_dword_4753, tmp_var);
      NOT_u1_u1_4936_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator OR_u1_u1_4822_inst
    OR_u1_u1_4822_wire <= (flags_mae_4807 or flags_faulty_fsr_generated_4799);
    -- flow through binary operator OR_u1_u1_4826_inst
    OR_u1_u1_4826_wire <= (NOT_u1_u1_4824_wire or be_access_error_4745);
    -- flow through binary operator OR_u1_u1_4827_inst
    skip_line_access_4828 <= (OR_u1_u1_4822_wire or OR_u1_u1_4826_wire);
    -- flow through binary operator OR_u1_u1_4850_inst
    OR_u1_u1_4850_wire <= (skip_line_access_4828 or NOT_u1_u1_4849_wire);
    -- flow through binary operator OR_u1_u1_4856_inst
    exec_cmd_4857 <= (do_first_access_4852 or really_really_access_line_4840);
    -- flow through binary operator OR_u1_u1_4862_inst
    get_command_4863 <= (NOT_u1_u1_4860_wire or exec_cmd_4857);
    -- flow through binary operator OR_u1_u1_4938_inst
    first_access_is_read_4939 <= (is_mem_read_dword_4757 or AND_u1_u1_4937_wire);
    -- flow through binary operator SUB_u8_u8_4871_inst
    SUB_u8_u8_4871_wire <= std_logic_vector(unsigned(available_tokens_4696) - unsigned(konst_4870_wire_constant));
    -- flow through binary operator UGT_u8_u1_4845_inst
    process(available_tokens_4696) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUgt_proc(available_tokens_4696, konst_4844_wire_constant, tmp_var);
      UGT_u8_u1_4845_wire <= tmp_var; --
    end process;
    -- shared inport operator group (0) : RPIPE_noblock_dword_token_return_4695_inst 
    InportGroup_0: Block -- 
      signal data_out: std_logic_vector(0 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_noblock_dword_token_return_4695_inst_req_0;
      RPIPE_noblock_dword_token_return_4695_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_noblock_dword_token_return_4695_inst_req_1;
      RPIPE_noblock_dword_token_return_4695_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      RPIPE_noblock_dword_token_return_4695_wire <= data_out(0 downto 0);
      noblock_dword_token_return_read_0_gI: SplitGuardInterface generic map(name => "noblock_dword_token_return_read_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      noblock_dword_token_return_read_0: InputPortRevised -- 
        generic map ( name => "noblock_dword_token_return_read_0", data_width => 1,  num_reqs => 1,  output_buffering => outBUFs,   nonblocking_read_flag => true,  no_arbitration => false)
        port map (-- 
          sample_req => reqL , 
          sample_ack => ackL, 
          update_req => reqR, 
          update_ack => ackR, 
          data => data_out, 
          oreq => noblock_dword_token_return_pipe_read_req(0),
          oack => noblock_dword_token_return_pipe_read_ack(0),
          odata => noblock_dword_token_return_pipe_read_data(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 0
    -- shared inport operator group (1) : RPIPE_noblock_mem_access_and_send_response_command_4692_inst 
    InportGroup_1: Block -- 
      signal data_out: std_logic_vector(208 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_noblock_mem_access_and_send_response_command_4692_inst_req_0;
      RPIPE_noblock_mem_access_and_send_response_command_4692_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_noblock_mem_access_and_send_response_command_4692_inst_req_1;
      RPIPE_noblock_mem_access_and_send_response_command_4692_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <= get_command_4863(0);
      RPIPE_noblock_mem_access_and_send_response_command_4692_wire <= data_out(208 downto 0);
      noblock_mem_access_and_send_response_command_read_1_gI: SplitGuardInterface generic map(name => "noblock_mem_access_and_send_response_command_read_1_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      noblock_mem_access_and_send_response_command_read_1: InputPort_P2P -- 
        generic map ( name => "noblock_mem_access_and_send_response_command_read_1", data_width => 209,    bypass_flag => true,   	nonblocking_read_flag => false,  barrier_flag => false,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => noblock_mem_access_and_send_response_command_pipe_read_req(0),
          oack => noblock_mem_access_and_send_response_command_pipe_read_ack(0),
          odata => noblock_mem_access_and_send_response_command_pipe_read_data(208 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 1
    -- shared call operator group (0) : call_stmt_4962_call 
    singleMemAccessAndSendResponse_call_group_0: Block -- 
      signal data_in: std_logic_vector(142 downto 0);
      signal data_out: std_logic_vector(0 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqL_unregulated, ackL_unregulated : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 2);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 2);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 10);
      -- 
    begin -- 
      reqL_unguarded(0) <= call_stmt_4962_call_req_0;
      call_stmt_4962_call_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= call_stmt_4962_call_req_1;
      call_stmt_4962_call_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <= do_first_access_4852(0);
      reqL <= reqL_unregulated;
      ackL_unregulated <= ackL;
      singleMemAccessAndSendResponse_call_group_0_gI: SplitGuardInterface generic map(name => "singleMemAccessAndSendResponse_call_group_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL_unregulated,
        sa_in => ackL_unregulated,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      data_in <= type_cast_4942_wire_constant & lock_bus_4749 & first_is_last_4919 & send_to_dcache_4812 & send_to_icache_4818 & is_mem_write_dword_4753 & first_access_is_read_4939 & is_read_line_4761 & is_ctrl_reg_read_4729 & do_not_send_write_response_4931 & flags_acc_4795 & flags_faulty_fsr_generated_4799 & flags_cacheable_4803 & flags_mae_4807 & be_access_error_4745 & fsr_4737 & first_access_byte_mask_4916 & first_access_address_4895 & first_access_write_data_4913;
      s_0_error_4962 <= data_out(0 downto 0);
      CallReq: InputMuxWithBuffering -- 
        generic map (name => "InputMuxWithBuffering",
        iwidth => 143,
        owidth => 143,
        buffering => inBUFs,
        full_rate =>  true,
        twidth => 1,
        nreqs => 1,
        registered_output => false,
        no_arbitration => false)
        port map ( -- 
          reqL => reqL , 
          ackL => ackL , 
          dataL => data_in, 
          reqR => singleMemAccessAndSendResponse_call_reqs(0),
          ackR => singleMemAccessAndSendResponse_call_acks(0),
          dataR => singleMemAccessAndSendResponse_call_data(142 downto 0),
          tagR => singleMemAccessAndSendResponse_call_tag(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      CallComplete: OutputDemuxBaseWithBuffering -- 
        generic map ( -- 
          iwidth => 1,
          owidth => 1,
          detailed_buffering_per_output => outBUFs, 
          full_rate => true, 
          twidth => 1,
          name => "OutputDemuxBaseWithBuffering",
          nreqs => 1) -- 
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          dataR => data_out, 
          reqL => singleMemAccessAndSendResponse_return_acks(0), -- cross-over
          ackL => singleMemAccessAndSendResponse_return_reqs(0), -- cross-over
          dataL => singleMemAccessAndSendResponse_return_data(0 downto 0),
          tagL => singleMemAccessAndSendResponse_return_tag(0 downto 0),
          clk => clk,
          reset => reset -- 
        ); -- 
      -- 
    end Block; -- call group 0
    -- shared call operator group (1) : call_stmt_4975_call 
    accessMemLineAndSendResponse_call_group_1: Block -- 
      signal data_in: std_logic_vector(118 downto 0);
      signal data_out: std_logic_vector(0 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqL_unregulated, ackL_unregulated : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= call_stmt_4975_call_req_0;
      call_stmt_4975_call_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= call_stmt_4975_call_req_1;
      call_stmt_4975_call_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <= really_really_access_line_4840(0);
      reqL <= reqL_unregulated;
      ackL_unregulated <= ackL;
      accessMemLineAndSendResponse_call_group_1_gI: SplitGuardInterface generic map(name => "accessMemLineAndSendResponse_call_group_1_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL_unregulated,
        sa_in => ackL_unregulated,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      data_in <= send_to_dcache_4812 & send_to_icache_4818 & is_mem_write_dword_4753 & is_read_line_4761 & lock_bus_4749 & specified_dword_id_4892 & flags_acc_4795 & line_aligned_addr_4888 & byte_mask_4765 & write_data_4773;
      line_access_error_4975 <= data_out(0 downto 0);
      CallReq: InputMuxWithBuffering -- 
        generic map (name => "InputMuxWithBuffering",
        iwidth => 119,
        owidth => 119,
        buffering => inBUFs,
        full_rate =>  true,
        twidth => 1,
        nreqs => 1,
        registered_output => false,
        no_arbitration => false)
        port map ( -- 
          reqL => reqL , 
          ackL => ackL , 
          dataL => data_in, 
          reqR => accessMemLineAndSendResponse_call_reqs(0),
          ackR => accessMemLineAndSendResponse_call_acks(0),
          dataR => accessMemLineAndSendResponse_call_data(118 downto 0),
          tagR => accessMemLineAndSendResponse_call_tag(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      CallComplete: OutputDemuxBaseWithBuffering -- 
        generic map ( -- 
          iwidth => 1,
          owidth => 1,
          detailed_buffering_per_output => outBUFs, 
          full_rate => true, 
          twidth => 1,
          name => "OutputDemuxBaseWithBuffering",
          nreqs => 1) -- 
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          dataR => data_out, 
          reqL => accessMemLineAndSendResponse_return_acks(0), -- cross-over
          ackL => accessMemLineAndSendResponse_return_reqs(0), -- cross-over
          dataL => accessMemLineAndSendResponse_return_data(0 downto 0),
          tagL => accessMemLineAndSendResponse_return_tag(0 downto 0),
          clk => clk,
          reset => reset -- 
        ); -- 
      -- 
    end Block; -- call group 1
    -- 
  end Block; -- data_path
  -- 
end memAccessAndSendResponseDaemon_arch;
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
library munit_dummy_mmu;
use munit_dummy_mmu.dummy_mmu_global_package.all;
entity singleMemAccess is -- 
  generic (tag_length : integer); 
  port ( -- 
    lock_bus : in  std_logic_vector(0 downto 0);
    write_read_bar : in  std_logic_vector(0 downto 0);
    addr : in  std_logic_vector(35 downto 0);
    byte_mask : in  std_logic_vector(7 downto 0);
    write_data : in  std_logic_vector(63 downto 0);
    read_data : out  std_logic_vector(63 downto 0);
    access_error : out  std_logic_vector(0 downto 0);
    CORE_BUS_RESPONSE_pipe_read_req : out  std_logic_vector(0 downto 0);
    CORE_BUS_RESPONSE_pipe_read_ack : in   std_logic_vector(0 downto 0);
    CORE_BUS_RESPONSE_pipe_read_data : in   std_logic_vector(64 downto 0);
    CORE_BUS_REQUEST_pipe_write_req : out  std_logic_vector(0 downto 0);
    CORE_BUS_REQUEST_pipe_write_ack : in   std_logic_vector(0 downto 0);
    CORE_BUS_REQUEST_pipe_write_data : out  std_logic_vector(109 downto 0);
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
end entity singleMemAccess;
architecture singleMemAccess_arch of singleMemAccess is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector((tag_length + 110)-1 downto 0);
  signal default_zero_sig: std_logic;
  signal in_buffer_write_req: std_logic;
  signal in_buffer_write_ack: std_logic;
  signal in_buffer_unload_req_symbol: Boolean;
  signal in_buffer_unload_ack_symbol: Boolean;
  signal out_buffer_data_in, out_buffer_data_out: std_logic_vector((tag_length + 65)-1 downto 0);
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
  signal lock_bus_buffer :  std_logic_vector(0 downto 0);
  signal lock_bus_update_enable: Boolean;
  signal write_read_bar_buffer :  std_logic_vector(0 downto 0);
  signal write_read_bar_update_enable: Boolean;
  signal addr_buffer :  std_logic_vector(35 downto 0);
  signal addr_update_enable: Boolean;
  signal byte_mask_buffer :  std_logic_vector(7 downto 0);
  signal byte_mask_update_enable: Boolean;
  signal write_data_buffer :  std_logic_vector(63 downto 0);
  signal write_data_update_enable: Boolean;
  -- output port buffer signals
  signal read_data_buffer :  std_logic_vector(63 downto 0);
  signal read_data_update_enable: Boolean;
  signal access_error_buffer :  std_logic_vector(0 downto 0);
  signal access_error_update_enable: Boolean;
  signal singleMemAccess_CP_144_start: Boolean;
  signal singleMemAccess_CP_144_symbol: Boolean;
  -- volatile/operator module components. 
  component deconstruct_core_response_Volatile is -- 
    port ( -- 
      from_bus : in  std_logic_vector(64 downto 0);
      read_data : out  std_logic_vector(63 downto 0);
      access_error : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  component construct_core_request_Volatile is -- 
    port ( -- 
      request_type : in  std_logic_vector(7 downto 0);
      byte_mask : in  std_logic_vector(7 downto 0);
      write_data : in  std_logic_vector(63 downto 0);
      addr36 : in  std_logic_vector(35 downto 0);
      to_bus : out  std_logic_vector(109 downto 0)-- 
    );
    -- 
  end component; 
  -- links between control-path and data-path
  signal WPIPE_CORE_BUS_REQUEST_1114_inst_req_0 : boolean;
  signal WPIPE_CORE_BUS_REQUEST_1114_inst_ack_0 : boolean;
  signal WPIPE_CORE_BUS_REQUEST_1114_inst_req_1 : boolean;
  signal WPIPE_CORE_BUS_REQUEST_1114_inst_ack_1 : boolean;
  signal RPIPE_CORE_BUS_RESPONSE_1118_inst_req_0 : boolean;
  signal RPIPE_CORE_BUS_RESPONSE_1118_inst_ack_0 : boolean;
  signal RPIPE_CORE_BUS_RESPONSE_1118_inst_req_1 : boolean;
  signal RPIPE_CORE_BUS_RESPONSE_1118_inst_ack_1 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "singleMemAccess_input_buffer", -- 
      buffer_size => 0,
      bypass_flag => true,
      data_width => tag_length + 110) -- 
    port map(write_req => in_buffer_write_req, -- 
      write_ack => in_buffer_write_ack, 
      write_data => in_buffer_data_in,
      unload_req => in_buffer_unload_req_symbol, 
      unload_ack => in_buffer_unload_ack_symbol, 
      read_data => in_buffer_data_out,
      clk => clk, reset => reset); -- 
  in_buffer_data_in(0 downto 0) <= lock_bus;
  lock_bus_buffer <= in_buffer_data_out(0 downto 0);
  in_buffer_data_in(1 downto 1) <= write_read_bar;
  write_read_bar_buffer <= in_buffer_data_out(1 downto 1);
  in_buffer_data_in(37 downto 2) <= addr;
  addr_buffer <= in_buffer_data_out(37 downto 2);
  in_buffer_data_in(45 downto 38) <= byte_mask;
  byte_mask_buffer <= in_buffer_data_out(45 downto 38);
  in_buffer_data_in(109 downto 46) <= write_data;
  write_data_buffer <= in_buffer_data_out(109 downto 46);
  in_buffer_data_in(tag_length + 109 downto 110) <= tag_in;
  tag_ub_out <= in_buffer_data_out(tag_length + 109 downto 110);
  in_buffer_write_req <= start_req;
  start_ack <= in_buffer_write_ack;
  in_buffer_unload_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 6) := (0 => 15,1 => 15,2 => 15,3 => 15,4 => 15,5 => 1,6 => 15);
    constant place_markings: IntegerArray(0 to 6)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 1,6 => 15);
    constant place_delays: IntegerArray(0 to 6) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 1);
    constant joinName: string(1 to 32) := "in_buffer_unload_req_symbol_join"; 
    signal preds: BooleanArray(1 to 7); -- 
  begin -- 
    preds <= lock_bus_update_enable & write_read_bar_update_enable & addr_update_enable & byte_mask_update_enable & write_data_update_enable & in_buffer_unload_ack_symbol & input_sample_reenable_symbol;
    gj_in_buffer_unload_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 7, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => in_buffer_unload_req_symbol, clk => clk, reset => reset); --
  end block;
  -- join of all unload_ack_symbols.. used to trigger CP.
  singleMemAccess_CP_144_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "singleMemAccess_out_buffer", -- 
      buffer_size => 0,
      full_rate => false,
      data_width => tag_length + 65) --
    port map(write_req => out_buffer_write_req_symbol, -- 
      write_ack => out_buffer_write_ack_symbol, 
      write_data => out_buffer_data_in,
      read_req => out_buffer_read_req, 
      read_ack => out_buffer_read_ack, 
      read_data => out_buffer_data_out,
      clk => clk, reset => reset); -- 
  out_buffer_data_in(63 downto 0) <= read_data_buffer;
  read_data <= out_buffer_data_out(63 downto 0);
  out_buffer_data_in(64 downto 64) <= access_error_buffer;
  access_error <= out_buffer_data_out(64 downto 64);
  out_buffer_data_in(tag_length + 64 downto 65) <= tag_ilock_out;
  tag_out <= out_buffer_data_out(tag_length + 64 downto 65);
  out_buffer_write_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 2) := (0 => 15,1 => 1,2 => 15);
    constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 0);
    constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 1,2 => 0);
    constant joinName: string(1 to 32) := "out_buffer_write_req_symbol_join"; 
    signal preds: BooleanArray(1 to 3); -- 
  begin -- 
    preds <= singleMemAccess_CP_144_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
    gj_out_buffer_write_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => out_buffer_write_req_symbol, clk => clk, reset => reset); --
  end block;
  read_data_update_enable_join: block -- 
    constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
    constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
    constant place_delays: IntegerArray(0 to 0) := (0 => 0);
    constant joinName: string(1 to 28) := "read_data_update_enable_join"; 
    signal preds: BooleanArray(1 to 1); -- 
  begin -- 
    preds(1) <= out_buffer_write_ack_symbol;
    gj_read_data_update_enable_join : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => read_data_update_enable, clk => clk, reset => reset); --
  end block;
  access_error_update_enable_join: block -- 
    constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
    constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
    constant place_delays: IntegerArray(0 to 0) := (0 => 0);
    constant joinName: string(1 to 31) := "access_error_update_enable_join"; 
    signal preds: BooleanArray(1 to 1); -- 
  begin -- 
    preds(1) <= out_buffer_write_ack_symbol;
    gj_access_error_update_enable_join : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => access_error_update_enable, clk => clk, reset => reset); --
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
      buffer_size => 15,
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
    constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
    constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
    constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
    constant joinName: string(1 to 31) := "tag_ilock_write_req_symbol_join"; 
    signal preds: BooleanArray(1 to 2); -- 
  begin -- 
    preds <= singleMemAccess_CP_144_start & tag_ilock_write_ack_symbol;
    gj_tag_ilock_write_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_write_req_symbol, clk => clk, reset => reset); --
  end block;
  tag_ilock_read_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 2) := (0 => 15,1 => 1,2 => 1);
    constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 1);
    constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
    constant joinName: string(1 to 30) := "tag_ilock_read_req_symbol_join"; 
    signal preds: BooleanArray(1 to 3); -- 
  begin -- 
    preds <= singleMemAccess_CP_144_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  singleMemAccess_CP_144: Block -- control-path 
    signal singleMemAccess_CP_144_elements: BooleanArray(24 downto 0);
    -- 
  begin -- 
    singleMemAccess_CP_144_elements(0) <= singleMemAccess_CP_144_start;
    singleMemAccess_CP_144_symbol <= singleMemAccess_CP_144_elements(24);
    -- CP-element group 0:  transition  bypass  pipeline-parent 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	1 
    -- CP-element group 0:  members (1) 
      -- CP-element group 0: 	 $entry
      -- 
    -- CP-element group 1:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	0 
    -- CP-element group 1: successors 
    -- CP-element group 1: 	12 
    -- CP-element group 1: 	9 
    -- CP-element group 1:  members (1) 
      -- CP-element group 1: 	 stmt_1092_to_stmt_1126/$entry
      -- 
    singleMemAccess_CP_144_elements(1) <= singleMemAccess_CP_144_elements(0);
    -- CP-element group 2:  join  transition  bypass  pipeline-parent 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: marked-predecessors 
    -- CP-element group 2: 	10 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	17 
    -- CP-element group 2:  members (2) 
      -- CP-element group 2: 	 stmt_1092_to_stmt_1126/lock_bus_update_enable_out
      -- CP-element group 2: 	 stmt_1092_to_stmt_1126/lock_bus_update_enable
      -- 
    singleMemAccess_cp_element_group_2: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 34) := "singleMemAccess_cp_element_group_2"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= singleMemAccess_CP_144_elements(10);
      gj_singleMemAccess_cp_element_group_2 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccess_CP_144_elements(2), clk => clk, reset => reset); --
    end block;
    -- CP-element group 3:  join  transition  bypass  pipeline-parent 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: marked-predecessors 
    -- CP-element group 3: 	10 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	18 
    -- CP-element group 3:  members (2) 
      -- CP-element group 3: 	 stmt_1092_to_stmt_1126/write_read_bar_update_enable_out
      -- CP-element group 3: 	 stmt_1092_to_stmt_1126/write_read_bar_update_enable
      -- 
    singleMemAccess_cp_element_group_3: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 34) := "singleMemAccess_cp_element_group_3"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= singleMemAccess_CP_144_elements(10);
      gj_singleMemAccess_cp_element_group_3 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccess_CP_144_elements(3), clk => clk, reset => reset); --
    end block;
    -- CP-element group 4:  join  transition  bypass  pipeline-parent 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: marked-predecessors 
    -- CP-element group 4: 	10 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	19 
    -- CP-element group 4:  members (2) 
      -- CP-element group 4: 	 stmt_1092_to_stmt_1126/addr_update_enable_out
      -- CP-element group 4: 	 stmt_1092_to_stmt_1126/addr_update_enable
      -- 
    singleMemAccess_cp_element_group_4: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 34) := "singleMemAccess_cp_element_group_4"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= singleMemAccess_CP_144_elements(10);
      gj_singleMemAccess_cp_element_group_4 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccess_CP_144_elements(4), clk => clk, reset => reset); --
    end block;
    -- CP-element group 5:  join  transition  bypass  pipeline-parent 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: marked-predecessors 
    -- CP-element group 5: 	10 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	20 
    -- CP-element group 5:  members (2) 
      -- CP-element group 5: 	 stmt_1092_to_stmt_1126/byte_mask_update_enable_out
      -- CP-element group 5: 	 stmt_1092_to_stmt_1126/byte_mask_update_enable
      -- 
    singleMemAccess_cp_element_group_5: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 34) := "singleMemAccess_cp_element_group_5"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= singleMemAccess_CP_144_elements(10);
      gj_singleMemAccess_cp_element_group_5 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccess_CP_144_elements(5), clk => clk, reset => reset); --
    end block;
    -- CP-element group 6:  join  transition  bypass  pipeline-parent 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: marked-predecessors 
    -- CP-element group 6: 	10 
    -- CP-element group 6: successors 
    -- CP-element group 6: 	21 
    -- CP-element group 6:  members (2) 
      -- CP-element group 6: 	 stmt_1092_to_stmt_1126/write_data_update_enable_out
      -- CP-element group 6: 	 stmt_1092_to_stmt_1126/write_data_update_enable
      -- 
    singleMemAccess_cp_element_group_6: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 34) := "singleMemAccess_cp_element_group_6"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= singleMemAccess_CP_144_elements(10);
      gj_singleMemAccess_cp_element_group_6 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccess_CP_144_elements(6), clk => clk, reset => reset); --
    end block;
    -- CP-element group 7:  transition  bypass  pipeline-parent 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	22 
    -- CP-element group 7: successors 
    -- CP-element group 7: 	13 
    -- CP-element group 7:  members (2) 
      -- CP-element group 7: 	 stmt_1092_to_stmt_1126/read_data_update_enable
      -- CP-element group 7: 	 stmt_1092_to_stmt_1126/read_data_update_enable_in
      -- 
    singleMemAccess_CP_144_elements(7) <= singleMemAccess_CP_144_elements(22);
    -- CP-element group 8:  transition  bypass  pipeline-parent 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	23 
    -- CP-element group 8: successors 
    -- CP-element group 8: 	13 
    -- CP-element group 8:  members (2) 
      -- CP-element group 8: 	 stmt_1092_to_stmt_1126/access_error_update_enable
      -- CP-element group 8: 	 stmt_1092_to_stmt_1126/access_error_update_enable_in
      -- 
    singleMemAccess_CP_144_elements(8) <= singleMemAccess_CP_144_elements(23);
    -- CP-element group 9:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: 	1 
    -- CP-element group 9: marked-predecessors 
    -- CP-element group 9: 	11 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	10 
    -- CP-element group 9:  members (3) 
      -- CP-element group 9: 	 stmt_1092_to_stmt_1126/WPIPE_CORE_BUS_REQUEST_1114_sample_start_
      -- CP-element group 9: 	 stmt_1092_to_stmt_1126/WPIPE_CORE_BUS_REQUEST_1114_Sample/$entry
      -- CP-element group 9: 	 stmt_1092_to_stmt_1126/WPIPE_CORE_BUS_REQUEST_1114_Sample/req
      -- 
    req_171_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_171_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccess_CP_144_elements(9), ack => WPIPE_CORE_BUS_REQUEST_1114_inst_req_0); -- 
    singleMemAccess_cp_element_group_9: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 34) := "singleMemAccess_cp_element_group_9"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= singleMemAccess_CP_144_elements(1) & singleMemAccess_CP_144_elements(11);
      gj_singleMemAccess_cp_element_group_9 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccess_CP_144_elements(9), clk => clk, reset => reset); --
    end block;
    -- CP-element group 10:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	9 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	11 
    -- CP-element group 10: marked-successors 
    -- CP-element group 10: 	2 
    -- CP-element group 10: 	4 
    -- CP-element group 10: 	6 
    -- CP-element group 10: 	3 
    -- CP-element group 10: 	5 
    -- CP-element group 10:  members (6) 
      -- CP-element group 10: 	 stmt_1092_to_stmt_1126/WPIPE_CORE_BUS_REQUEST_1114_sample_completed_
      -- CP-element group 10: 	 stmt_1092_to_stmt_1126/WPIPE_CORE_BUS_REQUEST_1114_update_start_
      -- CP-element group 10: 	 stmt_1092_to_stmt_1126/WPIPE_CORE_BUS_REQUEST_1114_Sample/$exit
      -- CP-element group 10: 	 stmt_1092_to_stmt_1126/WPIPE_CORE_BUS_REQUEST_1114_Sample/ack
      -- CP-element group 10: 	 stmt_1092_to_stmt_1126/WPIPE_CORE_BUS_REQUEST_1114_Update/$entry
      -- CP-element group 10: 	 stmt_1092_to_stmt_1126/WPIPE_CORE_BUS_REQUEST_1114_Update/req
      -- 
    ack_172_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 10_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_CORE_BUS_REQUEST_1114_inst_ack_0, ack => singleMemAccess_CP_144_elements(10)); -- 
    req_176_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_176_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccess_CP_144_elements(10), ack => WPIPE_CORE_BUS_REQUEST_1114_inst_req_1); -- 
    -- CP-element group 11:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	10 
    -- CP-element group 11: successors 
    -- CP-element group 11: 	16 
    -- CP-element group 11: marked-successors 
    -- CP-element group 11: 	9 
    -- CP-element group 11:  members (3) 
      -- CP-element group 11: 	 stmt_1092_to_stmt_1126/WPIPE_CORE_BUS_REQUEST_1114_update_completed_
      -- CP-element group 11: 	 stmt_1092_to_stmt_1126/WPIPE_CORE_BUS_REQUEST_1114_Update/$exit
      -- CP-element group 11: 	 stmt_1092_to_stmt_1126/WPIPE_CORE_BUS_REQUEST_1114_Update/ack
      -- 
    ack_177_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 11_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_CORE_BUS_REQUEST_1114_inst_ack_1, ack => singleMemAccess_CP_144_elements(11)); -- 
    -- CP-element group 12:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	1 
    -- CP-element group 12: marked-predecessors 
    -- CP-element group 12: 	15 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	14 
    -- CP-element group 12:  members (3) 
      -- CP-element group 12: 	 stmt_1092_to_stmt_1126/RPIPE_CORE_BUS_RESPONSE_1118_sample_start_
      -- CP-element group 12: 	 stmt_1092_to_stmt_1126/RPIPE_CORE_BUS_RESPONSE_1118_Sample/$entry
      -- CP-element group 12: 	 stmt_1092_to_stmt_1126/RPIPE_CORE_BUS_RESPONSE_1118_Sample/rr
      -- 
    rr_185_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_185_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccess_CP_144_elements(12), ack => RPIPE_CORE_BUS_RESPONSE_1118_inst_req_0); -- 
    singleMemAccess_cp_element_group_12: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 35) := "singleMemAccess_cp_element_group_12"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= singleMemAccess_CP_144_elements(1) & singleMemAccess_CP_144_elements(15);
      gj_singleMemAccess_cp_element_group_12 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccess_CP_144_elements(12), clk => clk, reset => reset); --
    end block;
    -- CP-element group 13:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: 	7 
    -- CP-element group 13: 	8 
    -- CP-element group 13: 	14 
    -- CP-element group 13: successors 
    -- CP-element group 13: 	15 
    -- CP-element group 13:  members (3) 
      -- CP-element group 13: 	 stmt_1092_to_stmt_1126/RPIPE_CORE_BUS_RESPONSE_1118_update_start_
      -- CP-element group 13: 	 stmt_1092_to_stmt_1126/RPIPE_CORE_BUS_RESPONSE_1118_Update/$entry
      -- CP-element group 13: 	 stmt_1092_to_stmt_1126/RPIPE_CORE_BUS_RESPONSE_1118_Update/cr
      -- 
    cr_190_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_190_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccess_CP_144_elements(13), ack => RPIPE_CORE_BUS_RESPONSE_1118_inst_req_1); -- 
    singleMemAccess_cp_element_group_13: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 35) := "singleMemAccess_cp_element_group_13"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= singleMemAccess_CP_144_elements(7) & singleMemAccess_CP_144_elements(8) & singleMemAccess_CP_144_elements(14);
      gj_singleMemAccess_cp_element_group_13 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccess_CP_144_elements(13), clk => clk, reset => reset); --
    end block;
    -- CP-element group 14:  transition  input  bypass  pipeline-parent 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: 	12 
    -- CP-element group 14: successors 
    -- CP-element group 14: 	13 
    -- CP-element group 14:  members (3) 
      -- CP-element group 14: 	 stmt_1092_to_stmt_1126/RPIPE_CORE_BUS_RESPONSE_1118_sample_completed_
      -- CP-element group 14: 	 stmt_1092_to_stmt_1126/RPIPE_CORE_BUS_RESPONSE_1118_Sample/$exit
      -- CP-element group 14: 	 stmt_1092_to_stmt_1126/RPIPE_CORE_BUS_RESPONSE_1118_Sample/ra
      -- 
    ra_186_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 14_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_CORE_BUS_RESPONSE_1118_inst_ack_0, ack => singleMemAccess_CP_144_elements(14)); -- 
    -- CP-element group 15:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: 	13 
    -- CP-element group 15: successors 
    -- CP-element group 15: 	16 
    -- CP-element group 15: marked-successors 
    -- CP-element group 15: 	12 
    -- CP-element group 15:  members (3) 
      -- CP-element group 15: 	 stmt_1092_to_stmt_1126/RPIPE_CORE_BUS_RESPONSE_1118_update_completed_
      -- CP-element group 15: 	 stmt_1092_to_stmt_1126/RPIPE_CORE_BUS_RESPONSE_1118_Update/$exit
      -- CP-element group 15: 	 stmt_1092_to_stmt_1126/RPIPE_CORE_BUS_RESPONSE_1118_Update/ca
      -- 
    ca_191_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 15_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_CORE_BUS_RESPONSE_1118_inst_ack_1, ack => singleMemAccess_CP_144_elements(15)); -- 
    -- CP-element group 16:  join  transition  bypass  pipeline-parent 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: 	11 
    -- CP-element group 16: 	15 
    -- CP-element group 16: successors 
    -- CP-element group 16: 	24 
    -- CP-element group 16:  members (1) 
      -- CP-element group 16: 	 stmt_1092_to_stmt_1126/$exit
      -- 
    singleMemAccess_cp_element_group_16: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 35) := "singleMemAccess_cp_element_group_16"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= singleMemAccess_CP_144_elements(11) & singleMemAccess_CP_144_elements(15);
      gj_singleMemAccess_cp_element_group_16 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccess_CP_144_elements(16), clk => clk, reset => reset); --
    end block;
    -- CP-element group 17:  place  bypass  pipeline-parent 
    -- CP-element group 17: predecessors 
    -- CP-element group 17: 	2 
    -- CP-element group 17: successors 
    -- CP-element group 17:  members (1) 
      -- CP-element group 17: 	 lock_bus_update_enable
      -- 
    singleMemAccess_CP_144_elements(17) <= singleMemAccess_CP_144_elements(2);
    -- CP-element group 18:  place  bypass  pipeline-parent 
    -- CP-element group 18: predecessors 
    -- CP-element group 18: 	3 
    -- CP-element group 18: successors 
    -- CP-element group 18:  members (1) 
      -- CP-element group 18: 	 write_read_bar_update_enable
      -- 
    singleMemAccess_CP_144_elements(18) <= singleMemAccess_CP_144_elements(3);
    -- CP-element group 19:  place  bypass  pipeline-parent 
    -- CP-element group 19: predecessors 
    -- CP-element group 19: 	4 
    -- CP-element group 19: successors 
    -- CP-element group 19:  members (1) 
      -- CP-element group 19: 	 addr_update_enable
      -- 
    singleMemAccess_CP_144_elements(19) <= singleMemAccess_CP_144_elements(4);
    -- CP-element group 20:  place  bypass  pipeline-parent 
    -- CP-element group 20: predecessors 
    -- CP-element group 20: 	5 
    -- CP-element group 20: successors 
    -- CP-element group 20:  members (1) 
      -- CP-element group 20: 	 byte_mask_update_enable
      -- 
    singleMemAccess_CP_144_elements(20) <= singleMemAccess_CP_144_elements(5);
    -- CP-element group 21:  place  bypass  pipeline-parent 
    -- CP-element group 21: predecessors 
    -- CP-element group 21: 	6 
    -- CP-element group 21: successors 
    -- CP-element group 21:  members (1) 
      -- CP-element group 21: 	 write_data_update_enable
      -- 
    singleMemAccess_CP_144_elements(21) <= singleMemAccess_CP_144_elements(6);
    -- CP-element group 22:  place  bypass  pipeline-parent 
    -- CP-element group 22: predecessors 
    -- CP-element group 22: successors 
    -- CP-element group 22: 	7 
    -- CP-element group 22:  members (1) 
      -- CP-element group 22: 	 read_data_update_enable
      -- 
    -- CP-element group 23:  place  bypass  pipeline-parent 
    -- CP-element group 23: predecessors 
    -- CP-element group 23: successors 
    -- CP-element group 23: 	8 
    -- CP-element group 23:  members (1) 
      -- CP-element group 23: 	 access_error_update_enable
      -- 
    -- CP-element group 24:  transition  bypass  pipeline-parent 
    -- CP-element group 24: predecessors 
    -- CP-element group 24: 	16 
    -- CP-element group 24: successors 
    -- CP-element group 24:  members (1) 
      -- CP-element group 24: 	 $exit
      -- 
    singleMemAccess_CP_144_elements(24) <= singleMemAccess_CP_144_elements(16);
    --  hookup: inputs to control-path 
    singleMemAccess_CP_144_elements(22) <= read_data_update_enable;
    singleMemAccess_CP_144_elements(23) <= access_error_update_enable;
    -- hookup: output from control-path 
    lock_bus_update_enable <= singleMemAccess_CP_144_elements(17);
    write_read_bar_update_enable <= singleMemAccess_CP_144_elements(18);
    addr_update_enable <= singleMemAccess_CP_144_elements(19);
    byte_mask_update_enable <= singleMemAccess_CP_144_elements(20);
    write_data_update_enable <= singleMemAccess_CP_144_elements(21);
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal CONCAT_u1_u2_1102_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u2_u6_1105_wire : std_logic_vector(5 downto 0);
    signal R_REQUEST_TYPE_READ_1096_wire_constant : std_logic_vector(3 downto 0);
    signal R_REQUEST_TYPE_WRITE_1095_wire_constant : std_logic_vector(3 downto 0);
    signal R_ZERO_1_1100_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_2_1103_wire_constant : std_logic_vector(1 downto 0);
    signal from_bus_1119 : std_logic_vector(64 downto 0);
    signal req_type_1098 : std_logic_vector(3 downto 0);
    signal request_type_1107 : std_logic_vector(7 downto 0);
    signal to_bus_1113 : std_logic_vector(109 downto 0);
    -- 
  begin -- 
    R_REQUEST_TYPE_READ_1096_wire_constant <= "0001";
    R_REQUEST_TYPE_WRITE_1095_wire_constant <= "0010";
    R_ZERO_1_1100_wire_constant <= "0";
    R_ZERO_2_1103_wire_constant <= "00";
    -- flow-through select operator MUX_1097_inst
    req_type_1098 <= R_REQUEST_TYPE_WRITE_1095_wire_constant when (write_read_bar_buffer(0) /=  '0') else R_REQUEST_TYPE_READ_1096_wire_constant;
    -- flow through binary operator CONCAT_u1_u2_1102_inst
    process(R_ZERO_1_1100_wire_constant, lock_bus_buffer) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(R_ZERO_1_1100_wire_constant, lock_bus_buffer, tmp_var);
      CONCAT_u1_u2_1102_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u6_1105_inst
    process(R_ZERO_2_1103_wire_constant, req_type_1098) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(R_ZERO_2_1103_wire_constant, req_type_1098, tmp_var);
      CONCAT_u2_u6_1105_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u8_1106_inst
    process(CONCAT_u1_u2_1102_wire, CONCAT_u2_u6_1105_wire) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_1102_wire, CONCAT_u2_u6_1105_wire, tmp_var);
      request_type_1107 <= tmp_var; --
    end process;
    -- shared inport operator group (0) : RPIPE_CORE_BUS_RESPONSE_1118_inst 
    InportGroup_0: Block -- 
      signal data_out: std_logic_vector(64 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_CORE_BUS_RESPONSE_1118_inst_req_0;
      RPIPE_CORE_BUS_RESPONSE_1118_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_CORE_BUS_RESPONSE_1118_inst_req_1;
      RPIPE_CORE_BUS_RESPONSE_1118_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      from_bus_1119 <= data_out(64 downto 0);
      CORE_BUS_RESPONSE_read_0_gI: SplitGuardInterface generic map(name => "CORE_BUS_RESPONSE_read_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      CORE_BUS_RESPONSE_read_0: InputPort_P2P -- 
        generic map ( name => "CORE_BUS_RESPONSE_read_0", data_width => 65,    bypass_flag => false,   	nonblocking_read_flag => false,  barrier_flag => false,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => CORE_BUS_RESPONSE_pipe_read_req(0),
          oack => CORE_BUS_RESPONSE_pipe_read_ack(0),
          odata => CORE_BUS_RESPONSE_pipe_read_data(64 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 0
    -- shared outport operator group (0) : WPIPE_CORE_BUS_REQUEST_1114_inst 
    OutportGroup_0: Block -- 
      signal data_in: std_logic_vector(109 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_CORE_BUS_REQUEST_1114_inst_req_0;
      WPIPE_CORE_BUS_REQUEST_1114_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_CORE_BUS_REQUEST_1114_inst_req_1;
      WPIPE_CORE_BUS_REQUEST_1114_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= to_bus_1113;
      CORE_BUS_REQUEST_write_0_gI: SplitGuardInterface generic map(name => "CORE_BUS_REQUEST_write_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      CORE_BUS_REQUEST_write_0: OutputPortRevised -- 
        generic map ( name => "CORE_BUS_REQUEST", data_width => 110, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => CORE_BUS_REQUEST_pipe_write_req(0),
          oack => CORE_BUS_REQUEST_pipe_write_ack(0),
          odata => CORE_BUS_REQUEST_pipe_write_data(109 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    volatile_operator_construct_core_request_1145: construct_core_request_Volatile port map(request_type => request_type_1107, byte_mask => byte_mask_buffer, write_data => write_data_buffer, addr36 => addr_buffer, to_bus => to_bus_1113); 
    volatile_operator_deconstruct_core_response_1148: deconstruct_core_response_Volatile port map(from_bus => from_bus_1119, read_data => read_data_buffer, access_error => access_error_buffer); 
    -- 
  end Block; -- data_path
  -- 
end singleMemAccess_arch;
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
library munit_dummy_mmu;
use munit_dummy_mmu.dummy_mmu_global_package.all;
entity singleMemAccessAndSendResponse is -- 
  generic (tag_length : integer); 
  port ( -- 
    ret_token : in  std_logic_vector(0 downto 0);
    lock_bus : in  std_logic_vector(0 downto 0);
    last_access : in  std_logic_vector(0 downto 0);
    send_to_dcache : in  std_logic_vector(0 downto 0);
    send_to_icache : in  std_logic_vector(0 downto 0);
    do_mem_write : in  std_logic_vector(0 downto 0);
    do_mem_read : in  std_logic_vector(0 downto 0);
    access_mem_line : in  std_logic_vector(0 downto 0);
    is_ctrl_reg_read : in  std_logic_vector(0 downto 0);
    do_not_send_write_response : in  std_logic_vector(0 downto 0);
    acc : in  std_logic_vector(2 downto 0);
    faulty_fsr_generated : in  std_logic_vector(0 downto 0);
    cacheable : in  std_logic_vector(0 downto 0);
    mae : in  std_logic_vector(0 downto 0);
    pte_error : in  std_logic_vector(0 downto 0);
    fsr : in  std_logic_vector(17 downto 0);
    byte_mask : in  std_logic_vector(7 downto 0);
    addr : in  std_logic_vector(35 downto 0);
    write_data : in  std_logic_vector(63 downto 0);
    access_error : out  std_logic_vector(0 downto 0);
    MMU_to_DCACHE_response_pipe_write_req : out  std_logic_vector(0 downto 0);
    MMU_to_DCACHE_response_pipe_write_ack : in   std_logic_vector(0 downto 0);
    MMU_to_DCACHE_response_pipe_write_data : out  std_logic_vector(74 downto 0);
    MMU_to_ICACHE_response_pipe_write_req : out  std_logic_vector(0 downto 0);
    MMU_to_ICACHE_response_pipe_write_ack : in   std_logic_vector(0 downto 0);
    MMU_to_ICACHE_response_pipe_write_data : out  std_logic_vector(92 downto 0);
    NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_req : out  std_logic_vector(0 downto 0);
    NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_ack : in   std_logic_vector(0 downto 0);
    NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_data : out  std_logic_vector(0 downto 0);
    noblock_dword_token_return_pipe_write_req : out  std_logic_vector(0 downto 0);
    noblock_dword_token_return_pipe_write_ack : in   std_logic_vector(0 downto 0);
    noblock_dword_token_return_pipe_write_data : out  std_logic_vector(0 downto 0);
    singleMemAccess_call_reqs : out  std_logic_vector(0 downto 0);
    singleMemAccess_call_acks : in   std_logic_vector(0 downto 0);
    singleMemAccess_call_data : out  std_logic_vector(109 downto 0);
    singleMemAccess_call_tag  :  out  std_logic_vector(0 downto 0);
    singleMemAccess_return_reqs : out  std_logic_vector(0 downto 0);
    singleMemAccess_return_acks : in   std_logic_vector(0 downto 0);
    singleMemAccess_return_data : in   std_logic_vector(64 downto 0);
    singleMemAccess_return_tag :  in   std_logic_vector(0 downto 0);
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
end entity singleMemAccessAndSendResponse;
architecture singleMemAccessAndSendResponse_arch of singleMemAccessAndSendResponse is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector((tag_length + 143)-1 downto 0);
  signal default_zero_sig: std_logic;
  signal in_buffer_write_req: std_logic;
  signal in_buffer_write_ack: std_logic;
  signal in_buffer_unload_req_symbol: Boolean;
  signal in_buffer_unload_ack_symbol: Boolean;
  signal out_buffer_data_in, out_buffer_data_out: std_logic_vector((tag_length + 1)-1 downto 0);
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
  signal ret_token_buffer :  std_logic_vector(0 downto 0);
  signal ret_token_update_enable: Boolean;
  signal lock_bus_buffer :  std_logic_vector(0 downto 0);
  signal lock_bus_update_enable: Boolean;
  signal last_access_buffer :  std_logic_vector(0 downto 0);
  signal last_access_update_enable: Boolean;
  signal send_to_dcache_buffer :  std_logic_vector(0 downto 0);
  signal send_to_dcache_update_enable: Boolean;
  signal send_to_icache_buffer :  std_logic_vector(0 downto 0);
  signal send_to_icache_update_enable: Boolean;
  signal do_mem_write_buffer :  std_logic_vector(0 downto 0);
  signal do_mem_write_update_enable: Boolean;
  signal do_mem_read_buffer :  std_logic_vector(0 downto 0);
  signal do_mem_read_update_enable: Boolean;
  signal access_mem_line_buffer :  std_logic_vector(0 downto 0);
  signal access_mem_line_update_enable: Boolean;
  signal is_ctrl_reg_read_buffer :  std_logic_vector(0 downto 0);
  signal is_ctrl_reg_read_update_enable: Boolean;
  signal do_not_send_write_response_buffer :  std_logic_vector(0 downto 0);
  signal do_not_send_write_response_update_enable: Boolean;
  signal acc_buffer :  std_logic_vector(2 downto 0);
  signal acc_update_enable: Boolean;
  signal faulty_fsr_generated_buffer :  std_logic_vector(0 downto 0);
  signal faulty_fsr_generated_update_enable: Boolean;
  signal cacheable_buffer :  std_logic_vector(0 downto 0);
  signal cacheable_update_enable: Boolean;
  signal mae_buffer :  std_logic_vector(0 downto 0);
  signal mae_update_enable: Boolean;
  signal pte_error_buffer :  std_logic_vector(0 downto 0);
  signal pte_error_update_enable: Boolean;
  signal fsr_buffer :  std_logic_vector(17 downto 0);
  signal fsr_update_enable: Boolean;
  signal byte_mask_buffer :  std_logic_vector(7 downto 0);
  signal byte_mask_update_enable: Boolean;
  signal addr_buffer :  std_logic_vector(35 downto 0);
  signal addr_update_enable: Boolean;
  signal write_data_buffer :  std_logic_vector(63 downto 0);
  signal write_data_update_enable: Boolean;
  -- output port buffer signals
  signal access_error_buffer :  std_logic_vector(0 downto 0);
  signal access_error_update_enable: Boolean;
  signal singleMemAccessAndSendResponse_CP_228_start: Boolean;
  signal singleMemAccessAndSendResponse_CP_228_symbol: Boolean;
  -- volatile/operator module components. 
  component singleMemAccess is -- 
    generic (tag_length : integer); 
    port ( -- 
      lock_bus : in  std_logic_vector(0 downto 0);
      write_read_bar : in  std_logic_vector(0 downto 0);
      addr : in  std_logic_vector(35 downto 0);
      byte_mask : in  std_logic_vector(7 downto 0);
      write_data : in  std_logic_vector(63 downto 0);
      read_data : out  std_logic_vector(63 downto 0);
      access_error : out  std_logic_vector(0 downto 0);
      CORE_BUS_RESPONSE_pipe_read_req : out  std_logic_vector(0 downto 0);
      CORE_BUS_RESPONSE_pipe_read_ack : in   std_logic_vector(0 downto 0);
      CORE_BUS_RESPONSE_pipe_read_data : in   std_logic_vector(64 downto 0);
      CORE_BUS_REQUEST_pipe_write_req : out  std_logic_vector(0 downto 0);
      CORE_BUS_REQUEST_pipe_write_ack : in   std_logic_vector(0 downto 0);
      CORE_BUS_REQUEST_pipe_write_data : out  std_logic_vector(109 downto 0);
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
  component fakeDelayOp_Operator is -- 
    port ( -- 
      sample_req: in boolean;
      sample_ack: out boolean;
      update_req: in boolean;
      update_ack: out boolean;
      X : in  std_logic_vector(63 downto 0);
      X_d : out  std_logic_vector(63 downto 0);
      clk, reset: in std_logic
      -- 
    );
    -- 
  end component;
  -- links between control-path and data-path
  signal W_ret_token_1250_delayed_8_0_1231_inst_req_1 : boolean;
  signal W_mae_1309_delayed_8_0_1312_inst_ack_0 : boolean;
  signal WPIPE_MMU_to_DCACHE_response_1339_inst_req_0 : boolean;
  signal WPIPE_MMU_to_DCACHE_response_1339_inst_ack_0 : boolean;
  signal W_send_to_icache_1337_delayed_8_0_1351_inst_ack_0 : boolean;
  signal WPIPE_MMU_to_ICACHE_response_1355_inst_req_0 : boolean;
  signal W_really_send_to_dcache_1324_delayed_8_0_1335_inst_ack_1 : boolean;
  signal WPIPE_MMU_to_ICACHE_response_1355_inst_ack_0 : boolean;
  signal W_ret_token_1250_delayed_8_0_1231_inst_ack_1 : boolean;
  signal W_really_send_to_dcache_1324_delayed_8_0_1335_inst_ack_0 : boolean;
  signal W_pte_error_1255_delayed_8_0_1238_inst_ack_0 : boolean;
  signal CONCAT_u4_u8_1285_inst_ack_1 : boolean;
  signal W_send_to_icache_1337_delayed_8_0_1351_inst_req_0 : boolean;
  signal W_really_send_to_dcache_1324_delayed_8_0_1335_inst_req_1 : boolean;
  signal WPIPE_MMU_to_DCACHE_response_1339_inst_req_1 : boolean;
  signal WPIPE_MMU_to_DCACHE_response_1339_inst_ack_1 : boolean;
  signal W_mae_1309_delayed_8_0_1312_inst_req_0 : boolean;
  signal W_pte_error_1255_delayed_8_0_1238_inst_req_0 : boolean;
  signal CONCAT_u5_u9_1310_inst_ack_0 : boolean;
  signal WPIPE_MMU_to_ICACHE_response_1355_inst_req_1 : boolean;
  signal W_ret_token_1250_delayed_8_0_1231_inst_ack_0 : boolean;
  signal CONCAT_u4_u8_1285_inst_ack_0 : boolean;
  signal W_really_send_to_dcache_1324_delayed_8_0_1335_inst_req_0 : boolean;
  signal W_access_error_1370_inst_ack_1 : boolean;
  signal W_is_ctrl_reg_read_1266_delayed_8_0_1255_inst_req_1 : boolean;
  signal W_ret_token_1250_delayed_8_0_1231_inst_req_0 : boolean;
  signal CONCAT_u5_u9_1310_inst_req_1 : boolean;
  signal W_is_ctrl_reg_read_1266_delayed_8_0_1255_inst_ack_0 : boolean;
  signal WPIPE_MMU_to_ICACHE_response_1355_inst_ack_1 : boolean;
  signal AND_u1_u1_1261_inst_ack_1 : boolean;
  signal AND_u1_u1_1261_inst_req_1 : boolean;
  signal W_access_error_1370_inst_req_0 : boolean;
  signal W_is_ctrl_reg_read_1266_delayed_8_0_1255_inst_ack_1 : boolean;
  signal WPIPE_noblock_dword_token_return_1235_inst_ack_1 : boolean;
  signal W_access_error_1370_inst_ack_0 : boolean;
  signal W_do_mem_access_1256_delayed_8_0_1241_inst_ack_0 : boolean;
  signal W_send_to_icache_1337_delayed_8_0_1351_inst_ack_1 : boolean;
  signal CONCAT_u5_u9_1310_inst_ack_1 : boolean;
  signal CONCAT_u4_u8_1285_inst_req_1 : boolean;
  signal W_do_mem_access_1256_delayed_8_0_1241_inst_req_0 : boolean;
  signal W_pte_error_1255_delayed_8_0_1238_inst_req_1 : boolean;
  signal AND_u1_u1_1261_inst_req_0 : boolean;
  signal CONCAT_u1_u2_1290_inst_ack_1 : boolean;
  signal W_pte_error_1255_delayed_8_0_1238_inst_ack_1 : boolean;
  signal W_ret_token_1246_delayed_8_0_1223_inst_ack_1 : boolean;
  signal AND_u1_u1_1261_inst_ack_0 : boolean;
  signal CONCAT_u1_u2_1290_inst_req_1 : boolean;
  signal CONCAT_u5_u9_1310_inst_req_0 : boolean;
  signal W_ret_token_1246_delayed_8_0_1223_inst_req_1 : boolean;
  signal W_send_to_icache_1337_delayed_8_0_1351_inst_req_1 : boolean;
  signal W_access_error_1370_inst_req_1 : boolean;
  signal W_is_ctrl_reg_read_1266_delayed_8_0_1255_inst_req_0 : boolean;
  signal WPIPE_noblock_dword_token_return_1235_inst_req_1 : boolean;
  signal W_mae_1309_delayed_8_0_1312_inst_ack_1 : boolean;
  signal call_stmt_1254_call_ack_1 : boolean;
  signal W_mae_1309_delayed_8_0_1312_inst_req_1 : boolean;
  signal call_stmt_1254_call_req_1 : boolean;
  signal CONCAT_u1_u2_1290_inst_ack_0 : boolean;
  signal W_ret_token_1246_delayed_8_0_1223_inst_req_0 : boolean;
  signal CONCAT_u1_u2_1290_inst_req_0 : boolean;
  signal W_fsr_1312_delayed_8_0_1315_inst_ack_1 : boolean;
  signal call_stmt_1254_call_ack_0 : boolean;
  signal call_stmt_1254_call_req_0 : boolean;
  signal W_fsr_1312_delayed_8_0_1315_inst_req_1 : boolean;
  signal CONCAT_u4_u8_1285_inst_req_0 : boolean;
  signal W_fsr_1312_delayed_8_0_1315_inst_ack_0 : boolean;
  signal W_fsr_1312_delayed_8_0_1315_inst_req_0 : boolean;
  signal W_ret_token_1246_delayed_8_0_1223_inst_ack_0 : boolean;
  signal WPIPE_noblock_dword_token_return_1235_inst_ack_0 : boolean;
  signal W_do_mem_access_1256_delayed_8_0_1241_inst_ack_1 : boolean;
  signal W_do_mem_access_1256_delayed_8_0_1241_inst_req_1 : boolean;
  signal WPIPE_noblock_dword_token_return_1235_inst_req_0 : boolean;
  signal call_stmt_1207_call_req_0 : boolean;
  signal call_stmt_1207_call_ack_0 : boolean;
  signal call_stmt_1207_call_req_1 : boolean;
  signal call_stmt_1207_call_ack_1 : boolean;
  signal W_inval_slot_return_1237_delayed_8_0_1208_inst_req_0 : boolean;
  signal W_inval_slot_return_1237_delayed_8_0_1208_inst_ack_0 : boolean;
  signal W_inval_slot_return_1237_delayed_8_0_1208_inst_req_1 : boolean;
  signal W_inval_slot_return_1237_delayed_8_0_1208_inst_ack_1 : boolean;
  signal W_inval_slot_return_1241_delayed_8_0_1216_inst_req_0 : boolean;
  signal W_inval_slot_return_1241_delayed_8_0_1216_inst_ack_0 : boolean;
  signal W_inval_slot_return_1241_delayed_8_0_1216_inst_req_1 : boolean;
  signal W_inval_slot_return_1241_delayed_8_0_1216_inst_ack_1 : boolean;
  signal WPIPE_NOBLOCK_INVALIDATE_SLOT_RETURN_1220_inst_req_0 : boolean;
  signal WPIPE_NOBLOCK_INVALIDATE_SLOT_RETURN_1220_inst_ack_0 : boolean;
  signal WPIPE_NOBLOCK_INVALIDATE_SLOT_RETURN_1220_inst_req_1 : boolean;
  signal WPIPE_NOBLOCK_INVALIDATE_SLOT_RETURN_1220_inst_ack_1 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "singleMemAccessAndSendResponse_input_buffer", -- 
      buffer_size => 0,
      bypass_flag => true,
      data_width => tag_length + 143) -- 
    port map(write_req => in_buffer_write_req, -- 
      write_ack => in_buffer_write_ack, 
      write_data => in_buffer_data_in,
      unload_req => in_buffer_unload_req_symbol, 
      unload_ack => in_buffer_unload_ack_symbol, 
      read_data => in_buffer_data_out,
      clk => clk, reset => reset); -- 
  in_buffer_data_in(0 downto 0) <= ret_token;
  ret_token_buffer <= in_buffer_data_out(0 downto 0);
  in_buffer_data_in(1 downto 1) <= lock_bus;
  lock_bus_buffer <= in_buffer_data_out(1 downto 1);
  in_buffer_data_in(2 downto 2) <= last_access;
  last_access_buffer <= in_buffer_data_out(2 downto 2);
  in_buffer_data_in(3 downto 3) <= send_to_dcache;
  send_to_dcache_buffer <= in_buffer_data_out(3 downto 3);
  in_buffer_data_in(4 downto 4) <= send_to_icache;
  send_to_icache_buffer <= in_buffer_data_out(4 downto 4);
  in_buffer_data_in(5 downto 5) <= do_mem_write;
  do_mem_write_buffer <= in_buffer_data_out(5 downto 5);
  in_buffer_data_in(6 downto 6) <= do_mem_read;
  do_mem_read_buffer <= in_buffer_data_out(6 downto 6);
  in_buffer_data_in(7 downto 7) <= access_mem_line;
  access_mem_line_buffer <= in_buffer_data_out(7 downto 7);
  in_buffer_data_in(8 downto 8) <= is_ctrl_reg_read;
  is_ctrl_reg_read_buffer <= in_buffer_data_out(8 downto 8);
  in_buffer_data_in(9 downto 9) <= do_not_send_write_response;
  do_not_send_write_response_buffer <= in_buffer_data_out(9 downto 9);
  in_buffer_data_in(12 downto 10) <= acc;
  acc_buffer <= in_buffer_data_out(12 downto 10);
  in_buffer_data_in(13 downto 13) <= faulty_fsr_generated;
  faulty_fsr_generated_buffer <= in_buffer_data_out(13 downto 13);
  in_buffer_data_in(14 downto 14) <= cacheable;
  cacheable_buffer <= in_buffer_data_out(14 downto 14);
  in_buffer_data_in(15 downto 15) <= mae;
  mae_buffer <= in_buffer_data_out(15 downto 15);
  in_buffer_data_in(16 downto 16) <= pte_error;
  pte_error_buffer <= in_buffer_data_out(16 downto 16);
  in_buffer_data_in(34 downto 17) <= fsr;
  fsr_buffer <= in_buffer_data_out(34 downto 17);
  in_buffer_data_in(42 downto 35) <= byte_mask;
  byte_mask_buffer <= in_buffer_data_out(42 downto 35);
  in_buffer_data_in(78 downto 43) <= addr;
  addr_buffer <= in_buffer_data_out(78 downto 43);
  in_buffer_data_in(142 downto 79) <= write_data;
  write_data_buffer <= in_buffer_data_out(142 downto 79);
  in_buffer_data_in(tag_length + 142 downto 143) <= tag_in;
  tag_ub_out <= in_buffer_data_out(tag_length + 142 downto 143);
  in_buffer_write_req <= start_req;
  start_ack <= in_buffer_write_ack;
  in_buffer_unload_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 20) := (0 => 15,1 => 15,2 => 15,3 => 15,4 => 15,5 => 15,6 => 15,7 => 15,8 => 15,9 => 15,10 => 15,11 => 15,12 => 15,13 => 15,14 => 15,15 => 15,16 => 15,17 => 15,18 => 15,19 => 1,20 => 15);
    constant place_markings: IntegerArray(0 to 20)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0,11 => 0,12 => 0,13 => 0,14 => 0,15 => 0,16 => 0,17 => 0,18 => 0,19 => 1,20 => 15);
    constant place_delays: IntegerArray(0 to 20) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0,11 => 0,12 => 0,13 => 0,14 => 0,15 => 0,16 => 0,17 => 0,18 => 0,19 => 0,20 => 1);
    constant joinName: string(1 to 32) := "in_buffer_unload_req_symbol_join"; 
    signal preds: BooleanArray(1 to 21); -- 
  begin -- 
    preds <= ret_token_update_enable & lock_bus_update_enable & last_access_update_enable & send_to_dcache_update_enable & send_to_icache_update_enable & do_mem_write_update_enable & do_mem_read_update_enable & access_mem_line_update_enable & is_ctrl_reg_read_update_enable & do_not_send_write_response_update_enable & acc_update_enable & faulty_fsr_generated_update_enable & cacheable_update_enable & mae_update_enable & pte_error_update_enable & fsr_update_enable & byte_mask_update_enable & addr_update_enable & write_data_update_enable & in_buffer_unload_ack_symbol & input_sample_reenable_symbol;
    gj_in_buffer_unload_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 21, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => in_buffer_unload_req_symbol, clk => clk, reset => reset); --
  end block;
  -- join of all unload_ack_symbols.. used to trigger CP.
  singleMemAccessAndSendResponse_CP_228_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "singleMemAccessAndSendResponse_out_buffer", -- 
      buffer_size => 0,
      full_rate => false,
      data_width => tag_length + 1) --
    port map(write_req => out_buffer_write_req_symbol, -- 
      write_ack => out_buffer_write_ack_symbol, 
      write_data => out_buffer_data_in,
      read_req => out_buffer_read_req, 
      read_ack => out_buffer_read_ack, 
      read_data => out_buffer_data_out,
      clk => clk, reset => reset); -- 
  out_buffer_data_in(0 downto 0) <= access_error_buffer;
  access_error <= out_buffer_data_out(0 downto 0);
  out_buffer_data_in(tag_length + 0 downto 1) <= tag_ilock_out;
  tag_out <= out_buffer_data_out(tag_length + 0 downto 1);
  out_buffer_write_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 2) := (0 => 15,1 => 1,2 => 15);
    constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 0);
    constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 1,2 => 0);
    constant joinName: string(1 to 32) := "out_buffer_write_req_symbol_join"; 
    signal preds: BooleanArray(1 to 3); -- 
  begin -- 
    preds <= singleMemAccessAndSendResponse_CP_228_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
    gj_out_buffer_write_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => out_buffer_write_req_symbol, clk => clk, reset => reset); --
  end block;
  access_error_update_enable_join: block -- 
    constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
    constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
    constant place_delays: IntegerArray(0 to 0) := (0 => 0);
    constant joinName: string(1 to 31) := "access_error_update_enable_join"; 
    signal preds: BooleanArray(1 to 1); -- 
  begin -- 
    preds(1) <= out_buffer_write_ack_symbol;
    gj_access_error_update_enable_join : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => access_error_update_enable, clk => clk, reset => reset); --
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
      buffer_size => 15,
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
    constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
    constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
    constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
    constant joinName: string(1 to 31) := "tag_ilock_write_req_symbol_join"; 
    signal preds: BooleanArray(1 to 2); -- 
  begin -- 
    preds <= singleMemAccessAndSendResponse_CP_228_start & tag_ilock_write_ack_symbol;
    gj_tag_ilock_write_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_write_req_symbol, clk => clk, reset => reset); --
  end block;
  tag_ilock_read_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 2) := (0 => 15,1 => 1,2 => 1);
    constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 1);
    constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
    constant joinName: string(1 to 30) := "tag_ilock_read_req_symbol_join"; 
    signal preds: BooleanArray(1 to 3); -- 
  begin -- 
    preds <= singleMemAccessAndSendResponse_CP_228_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  singleMemAccessAndSendResponse_CP_228: Block -- control-path 
    signal singleMemAccessAndSendResponse_CP_228_elements: BooleanArray(127 downto 0);
    -- 
  begin -- 
    singleMemAccessAndSendResponse_CP_228_elements(0) <= singleMemAccessAndSendResponse_CP_228_start;
    singleMemAccessAndSendResponse_CP_228_symbol <= singleMemAccessAndSendResponse_CP_228_elements(127);
    -- CP-element group 0:  transition  bypass  pipeline-parent 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	1 
    -- CP-element group 0:  members (1) 
      -- CP-element group 0: 	 $entry
      -- 
    -- CP-element group 1:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	0 
    -- CP-element group 1: successors 
    -- CP-element group 1: 	26 
    -- CP-element group 1: 	88 
    -- CP-element group 1: 	95 
    -- CP-element group 1: 	37 
    -- CP-element group 1: 	22 
    -- CP-element group 1: 	64 
    -- CP-element group 1: 	68 
    -- CP-element group 1: 	72 
    -- CP-element group 1: 	76 
    -- CP-element group 1: 	41 
    -- CP-element group 1: 	52 
    -- CP-element group 1: 	48 
    -- CP-element group 1: 	56 
    -- CP-element group 1: 	60 
    -- CP-element group 1: 	80 
    -- CP-element group 1: 	84 
    -- CP-element group 1: 	30 
    -- CP-element group 1:  members (1) 
      -- CP-element group 1: 	 assign_stmt_1159_to_assign_stmt_1372/$entry
      -- 
    singleMemAccessAndSendResponse_CP_228_elements(1) <= singleMemAccessAndSendResponse_CP_228_elements(0);
    -- CP-element group 2:  join  transition  bypass  pipeline-parent 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: marked-predecessors 
    -- CP-element group 2: 	39 
    -- CP-element group 2: 	43 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	107 
    -- CP-element group 2:  members (2) 
      -- CP-element group 2: 	 assign_stmt_1159_to_assign_stmt_1372/ret_token_update_enable
      -- CP-element group 2: 	 assign_stmt_1159_to_assign_stmt_1372/ret_token_update_enable_out
      -- 
    singleMemAccessAndSendResponse_cp_element_group_2: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 49) := "singleMemAccessAndSendResponse_cp_element_group_2"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(39) & singleMemAccessAndSendResponse_CP_228_elements(43);
      gj_singleMemAccessAndSendResponse_cp_element_group_2 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(2), clk => clk, reset => reset); --
    end block;
    -- CP-element group 3:  join  transition  bypass  pipeline-parent 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: marked-predecessors 
    -- CP-element group 3: 	24 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	108 
    -- CP-element group 3:  members (2) 
      -- CP-element group 3: 	 assign_stmt_1159_to_assign_stmt_1372/lock_bus_update_enable
      -- CP-element group 3: 	 assign_stmt_1159_to_assign_stmt_1372/lock_bus_update_enable_out
      -- 
    singleMemAccessAndSendResponse_cp_element_group_3: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 49) := "singleMemAccessAndSendResponse_cp_element_group_3"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= singleMemAccessAndSendResponse_CP_228_elements(24);
      gj_singleMemAccessAndSendResponse_cp_element_group_3 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(3), clk => clk, reset => reset); --
    end block;
    -- CP-element group 4:  join  transition  bypass  pipeline-parent 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: marked-predecessors 
    -- CP-element group 4: 	70 
    -- CP-element group 4: 	78 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	109 
    -- CP-element group 4:  members (2) 
      -- CP-element group 4: 	 assign_stmt_1159_to_assign_stmt_1372/last_access_update_enable
      -- CP-element group 4: 	 assign_stmt_1159_to_assign_stmt_1372/last_access_update_enable_out
      -- 
    singleMemAccessAndSendResponse_cp_element_group_4: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 49) := "singleMemAccessAndSendResponse_cp_element_group_4"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(70) & singleMemAccessAndSendResponse_CP_228_elements(78);
      gj_singleMemAccessAndSendResponse_cp_element_group_4 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(4), clk => clk, reset => reset); --
    end block;
    -- CP-element group 5:  join  transition  bypass  pipeline-parent 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: marked-predecessors 
    -- CP-element group 5: 	90 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	110 
    -- CP-element group 5:  members (2) 
      -- CP-element group 5: 	 assign_stmt_1159_to_assign_stmt_1372/send_to_dcache_update_enable
      -- CP-element group 5: 	 assign_stmt_1159_to_assign_stmt_1372/send_to_dcache_update_enable_out
      -- 
    singleMemAccessAndSendResponse_cp_element_group_5: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 49) := "singleMemAccessAndSendResponse_cp_element_group_5"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= singleMemAccessAndSendResponse_CP_228_elements(90);
      gj_singleMemAccessAndSendResponse_cp_element_group_5 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(5), clk => clk, reset => reset); --
    end block;
    -- CP-element group 6:  join  transition  bypass  pipeline-parent 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: marked-predecessors 
    -- CP-element group 6: 	97 
    -- CP-element group 6: successors 
    -- CP-element group 6: 	111 
    -- CP-element group 6:  members (2) 
      -- CP-element group 6: 	 assign_stmt_1159_to_assign_stmt_1372/send_to_icache_update_enable
      -- CP-element group 6: 	 assign_stmt_1159_to_assign_stmt_1372/send_to_icache_update_enable_out
      -- 
    singleMemAccessAndSendResponse_cp_element_group_6: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 49) := "singleMemAccessAndSendResponse_cp_element_group_6"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= singleMemAccessAndSendResponse_CP_228_elements(97);
      gj_singleMemAccessAndSendResponse_cp_element_group_6 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(6), clk => clk, reset => reset); --
    end block;
    -- CP-element group 7:  join  transition  bypass  pipeline-parent 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: marked-predecessors 
    -- CP-element group 7: 	32 
    -- CP-element group 7: 	66 
    -- CP-element group 7: 	54 
    -- CP-element group 7: 	58 
    -- CP-element group 7: 	28 
    -- CP-element group 7: 	24 
    -- CP-element group 7: successors 
    -- CP-element group 7: 	112 
    -- CP-element group 7:  members (2) 
      -- CP-element group 7: 	 assign_stmt_1159_to_assign_stmt_1372/do_mem_write_update_enable
      -- CP-element group 7: 	 assign_stmt_1159_to_assign_stmt_1372/do_mem_write_update_enable_out
      -- 
    singleMemAccessAndSendResponse_cp_element_group_7: block -- 
      constant place_capacities: IntegerArray(0 to 5) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1);
      constant place_markings: IntegerArray(0 to 5)  := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1);
      constant place_delays: IntegerArray(0 to 5) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0);
      constant joinName: string(1 to 49) := "singleMemAccessAndSendResponse_cp_element_group_7"; 
      signal preds: BooleanArray(1 to 6); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(32) & singleMemAccessAndSendResponse_CP_228_elements(66) & singleMemAccessAndSendResponse_CP_228_elements(54) & singleMemAccessAndSendResponse_CP_228_elements(58) & singleMemAccessAndSendResponse_CP_228_elements(28) & singleMemAccessAndSendResponse_CP_228_elements(24);
      gj_singleMemAccessAndSendResponse_cp_element_group_7 : generic_join generic map(name => joinName, number_of_predecessors => 6, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(7), clk => clk, reset => reset); --
    end block;
    -- CP-element group 8:  join  transition  bypass  pipeline-parent 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: marked-predecessors 
    -- CP-element group 8: 	66 
    -- CP-element group 8: 	54 
    -- CP-element group 8: 	58 
    -- CP-element group 8: 	24 
    -- CP-element group 8: successors 
    -- CP-element group 8: 	113 
    -- CP-element group 8:  members (2) 
      -- CP-element group 8: 	 assign_stmt_1159_to_assign_stmt_1372/do_mem_read_update_enable
      -- CP-element group 8: 	 assign_stmt_1159_to_assign_stmt_1372/do_mem_read_update_enable_out
      -- 
    singleMemAccessAndSendResponse_cp_element_group_8: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 49) := "singleMemAccessAndSendResponse_cp_element_group_8"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(66) & singleMemAccessAndSendResponse_CP_228_elements(54) & singleMemAccessAndSendResponse_CP_228_elements(58) & singleMemAccessAndSendResponse_CP_228_elements(24);
      gj_singleMemAccessAndSendResponse_cp_element_group_8 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(8), clk => clk, reset => reset); --
    end block;
    -- CP-element group 9:  join  transition  bypass  pipeline-parent 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: marked-predecessors 
    -- CP-element group 9: 	70 
    -- CP-element group 9: 	78 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	114 
    -- CP-element group 9:  members (2) 
      -- CP-element group 9: 	 assign_stmt_1159_to_assign_stmt_1372/access_mem_line_update_enable
      -- CP-element group 9: 	 assign_stmt_1159_to_assign_stmt_1372/access_mem_line_update_enable_out
      -- 
    singleMemAccessAndSendResponse_cp_element_group_9: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 49) := "singleMemAccessAndSendResponse_cp_element_group_9"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(70) & singleMemAccessAndSendResponse_CP_228_elements(78);
      gj_singleMemAccessAndSendResponse_cp_element_group_9 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(9), clk => clk, reset => reset); --
    end block;
    -- CP-element group 10:  join  transition  bypass  pipeline-parent 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: marked-predecessors 
    -- CP-element group 10: 	32 
    -- CP-element group 10: 	62 
    -- CP-element group 10: 	66 
    -- CP-element group 10: 	54 
    -- CP-element group 10: 	58 
    -- CP-element group 10: 	28 
    -- CP-element group 10: 	24 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	115 
    -- CP-element group 10:  members (2) 
      -- CP-element group 10: 	 assign_stmt_1159_to_assign_stmt_1372/is_ctrl_reg_read_update_enable
      -- CP-element group 10: 	 assign_stmt_1159_to_assign_stmt_1372/is_ctrl_reg_read_update_enable_out
      -- 
    singleMemAccessAndSendResponse_cp_element_group_10: block -- 
      constant place_capacities: IntegerArray(0 to 6) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1);
      constant place_markings: IntegerArray(0 to 6)  := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1);
      constant place_delays: IntegerArray(0 to 6) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_10"; 
      signal preds: BooleanArray(1 to 7); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(32) & singleMemAccessAndSendResponse_CP_228_elements(62) & singleMemAccessAndSendResponse_CP_228_elements(66) & singleMemAccessAndSendResponse_CP_228_elements(54) & singleMemAccessAndSendResponse_CP_228_elements(58) & singleMemAccessAndSendResponse_CP_228_elements(28) & singleMemAccessAndSendResponse_CP_228_elements(24);
      gj_singleMemAccessAndSendResponse_cp_element_group_10 : generic_join generic map(name => joinName, number_of_predecessors => 7, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(10), clk => clk, reset => reset); --
    end block;
    -- CP-element group 11:  join  transition  bypass  pipeline-parent 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: marked-predecessors 
    -- CP-element group 11: 	90 
    -- CP-element group 11: successors 
    -- CP-element group 11: 	116 
    -- CP-element group 11:  members (2) 
      -- CP-element group 11: 	 assign_stmt_1159_to_assign_stmt_1372/do_not_send_write_response_update_enable
      -- CP-element group 11: 	 assign_stmt_1159_to_assign_stmt_1372/do_not_send_write_response_update_enable_out
      -- 
    singleMemAccessAndSendResponse_cp_element_group_11: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_11"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= singleMemAccessAndSendResponse_CP_228_elements(90);
      gj_singleMemAccessAndSendResponse_cp_element_group_11 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(11), clk => clk, reset => reset); --
    end block;
    -- CP-element group 12:  join  transition  bypass  pipeline-parent 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: marked-predecessors 
    -- CP-element group 12: 	70 
    -- CP-element group 12: 	78 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	117 
    -- CP-element group 12:  members (2) 
      -- CP-element group 12: 	 assign_stmt_1159_to_assign_stmt_1372/acc_update_enable
      -- CP-element group 12: 	 assign_stmt_1159_to_assign_stmt_1372/acc_update_enable_out
      -- 
    singleMemAccessAndSendResponse_cp_element_group_12: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_12"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(70) & singleMemAccessAndSendResponse_CP_228_elements(78);
      gj_singleMemAccessAndSendResponse_cp_element_group_12 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(12), clk => clk, reset => reset); --
    end block;
    -- CP-element group 13:  join  transition  bypass  pipeline-parent 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: marked-predecessors 
    -- CP-element group 13: 	66 
    -- CP-element group 13: 	54 
    -- CP-element group 13: 	58 
    -- CP-element group 13: 	24 
    -- CP-element group 13: successors 
    -- CP-element group 13: 	118 
    -- CP-element group 13:  members (2) 
      -- CP-element group 13: 	 assign_stmt_1159_to_assign_stmt_1372/faulty_fsr_generated_update_enable
      -- CP-element group 13: 	 assign_stmt_1159_to_assign_stmt_1372/faulty_fsr_generated_update_enable_out
      -- 
    singleMemAccessAndSendResponse_cp_element_group_13: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_13"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(66) & singleMemAccessAndSendResponse_CP_228_elements(54) & singleMemAccessAndSendResponse_CP_228_elements(58) & singleMemAccessAndSendResponse_CP_228_elements(24);
      gj_singleMemAccessAndSendResponse_cp_element_group_13 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(13), clk => clk, reset => reset); --
    end block;
    -- CP-element group 14:  join  transition  bypass  pipeline-parent 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: marked-predecessors 
    -- CP-element group 14: 	74 
    -- CP-element group 14: 	78 
    -- CP-element group 14: successors 
    -- CP-element group 14: 	119 
    -- CP-element group 14:  members (2) 
      -- CP-element group 14: 	 assign_stmt_1159_to_assign_stmt_1372/cacheable_update_enable
      -- CP-element group 14: 	 assign_stmt_1159_to_assign_stmt_1372/cacheable_update_enable_out
      -- 
    singleMemAccessAndSendResponse_cp_element_group_14: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_14"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(74) & singleMemAccessAndSendResponse_CP_228_elements(78);
      gj_singleMemAccessAndSendResponse_cp_element_group_14 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(14), clk => clk, reset => reset); --
    end block;
    -- CP-element group 15:  join  transition  bypass  pipeline-parent 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: marked-predecessors 
    -- CP-element group 15: 	66 
    -- CP-element group 15: 	74 
    -- CP-element group 15: 	54 
    -- CP-element group 15: 	58 
    -- CP-element group 15: 	82 
    -- CP-element group 15: 	24 
    -- CP-element group 15: successors 
    -- CP-element group 15: 	120 
    -- CP-element group 15:  members (2) 
      -- CP-element group 15: 	 assign_stmt_1159_to_assign_stmt_1372/mae_update_enable
      -- CP-element group 15: 	 assign_stmt_1159_to_assign_stmt_1372/mae_update_enable_out
      -- 
    singleMemAccessAndSendResponse_cp_element_group_15: block -- 
      constant place_capacities: IntegerArray(0 to 5) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1);
      constant place_markings: IntegerArray(0 to 5)  := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1);
      constant place_delays: IntegerArray(0 to 5) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_15"; 
      signal preds: BooleanArray(1 to 6); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(66) & singleMemAccessAndSendResponse_CP_228_elements(74) & singleMemAccessAndSendResponse_CP_228_elements(54) & singleMemAccessAndSendResponse_CP_228_elements(58) & singleMemAccessAndSendResponse_CP_228_elements(82) & singleMemAccessAndSendResponse_CP_228_elements(24);
      gj_singleMemAccessAndSendResponse_cp_element_group_15 : generic_join generic map(name => joinName, number_of_predecessors => 6, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(15), clk => clk, reset => reset); --
    end block;
    -- CP-element group 16:  join  transition  bypass  pipeline-parent 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: marked-predecessors 
    -- CP-element group 16: 	66 
    -- CP-element group 16: 	54 
    -- CP-element group 16: 	50 
    -- CP-element group 16: 	58 
    -- CP-element group 16: 	24 
    -- CP-element group 16: successors 
    -- CP-element group 16: 	121 
    -- CP-element group 16:  members (2) 
      -- CP-element group 16: 	 assign_stmt_1159_to_assign_stmt_1372/pte_error_update_enable
      -- CP-element group 16: 	 assign_stmt_1159_to_assign_stmt_1372/pte_error_update_enable_out
      -- 
    singleMemAccessAndSendResponse_cp_element_group_16: block -- 
      constant place_capacities: IntegerArray(0 to 4) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1);
      constant place_markings: IntegerArray(0 to 4)  := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1);
      constant place_delays: IntegerArray(0 to 4) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_16"; 
      signal preds: BooleanArray(1 to 5); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(66) & singleMemAccessAndSendResponse_CP_228_elements(54) & singleMemAccessAndSendResponse_CP_228_elements(50) & singleMemAccessAndSendResponse_CP_228_elements(58) & singleMemAccessAndSendResponse_CP_228_elements(24);
      gj_singleMemAccessAndSendResponse_cp_element_group_16 : generic_join generic map(name => joinName, number_of_predecessors => 5, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(16), clk => clk, reset => reset); --
    end block;
    -- CP-element group 17:  join  transition  bypass  pipeline-parent 
    -- CP-element group 17: predecessors 
    -- CP-element group 17: marked-predecessors 
    -- CP-element group 17: 	86 
    -- CP-element group 17: successors 
    -- CP-element group 17: 	122 
    -- CP-element group 17:  members (2) 
      -- CP-element group 17: 	 assign_stmt_1159_to_assign_stmt_1372/fsr_update_enable
      -- CP-element group 17: 	 assign_stmt_1159_to_assign_stmt_1372/fsr_update_enable_out
      -- 
    singleMemAccessAndSendResponse_cp_element_group_17: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_17"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= singleMemAccessAndSendResponse_CP_228_elements(86);
      gj_singleMemAccessAndSendResponse_cp_element_group_17 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(17), clk => clk, reset => reset); --
    end block;
    -- CP-element group 18:  join  transition  bypass  pipeline-parent 
    -- CP-element group 18: predecessors 
    -- CP-element group 18: marked-predecessors 
    -- CP-element group 18: 	24 
    -- CP-element group 18: successors 
    -- CP-element group 18: 	123 
    -- CP-element group 18:  members (2) 
      -- CP-element group 18: 	 assign_stmt_1159_to_assign_stmt_1372/byte_mask_update_enable
      -- CP-element group 18: 	 assign_stmt_1159_to_assign_stmt_1372/byte_mask_update_enable_out
      -- 
    singleMemAccessAndSendResponse_cp_element_group_18: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_18"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= singleMemAccessAndSendResponse_CP_228_elements(24);
      gj_singleMemAccessAndSendResponse_cp_element_group_18 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(18), clk => clk, reset => reset); --
    end block;
    -- CP-element group 19:  join  transition  bypass  pipeline-parent 
    -- CP-element group 19: predecessors 
    -- CP-element group 19: marked-predecessors 
    -- CP-element group 19: 	70 
    -- CP-element group 19: 	78 
    -- CP-element group 19: 	24 
    -- CP-element group 19: successors 
    -- CP-element group 19: 	124 
    -- CP-element group 19:  members (2) 
      -- CP-element group 19: 	 assign_stmt_1159_to_assign_stmt_1372/addr_update_enable
      -- CP-element group 19: 	 assign_stmt_1159_to_assign_stmt_1372/addr_update_enable_out
      -- 
    singleMemAccessAndSendResponse_cp_element_group_19: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 1,1 => 1,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_19"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(70) & singleMemAccessAndSendResponse_CP_228_elements(78) & singleMemAccessAndSendResponse_CP_228_elements(24);
      gj_singleMemAccessAndSendResponse_cp_element_group_19 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(19), clk => clk, reset => reset); --
    end block;
    -- CP-element group 20:  join  transition  bypass  pipeline-parent 
    -- CP-element group 20: predecessors 
    -- CP-element group 20: marked-predecessors 
    -- CP-element group 20: 	58 
    -- CP-element group 20: 	24 
    -- CP-element group 20: successors 
    -- CP-element group 20: 	125 
    -- CP-element group 20:  members (2) 
      -- CP-element group 20: 	 assign_stmt_1159_to_assign_stmt_1372/write_data_update_enable
      -- CP-element group 20: 	 assign_stmt_1159_to_assign_stmt_1372/write_data_update_enable_out
      -- 
    singleMemAccessAndSendResponse_cp_element_group_20: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_20"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(58) & singleMemAccessAndSendResponse_CP_228_elements(24);
      gj_singleMemAccessAndSendResponse_cp_element_group_20 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(20), clk => clk, reset => reset); --
    end block;
    -- CP-element group 21:  transition  bypass  pipeline-parent 
    -- CP-element group 21: predecessors 
    -- CP-element group 21: 	126 
    -- CP-element group 21: successors 
    -- CP-element group 21: 	103 
    -- CP-element group 21:  members (2) 
      -- CP-element group 21: 	 assign_stmt_1159_to_assign_stmt_1372/access_error_update_enable
      -- CP-element group 21: 	 assign_stmt_1159_to_assign_stmt_1372/access_error_update_enable_in
      -- 
    singleMemAccessAndSendResponse_CP_228_elements(21) <= singleMemAccessAndSendResponse_CP_228_elements(126);
    -- CP-element group 22:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 22: predecessors 
    -- CP-element group 22: 	1 
    -- CP-element group 22: marked-predecessors 
    -- CP-element group 22: 	24 
    -- CP-element group 22: successors 
    -- CP-element group 22: 	24 
    -- CP-element group 22:  members (3) 
      -- CP-element group 22: 	 assign_stmt_1159_to_assign_stmt_1372/call_stmt_1207_sample_start_
      -- CP-element group 22: 	 assign_stmt_1159_to_assign_stmt_1372/call_stmt_1207_Sample/$entry
      -- CP-element group 22: 	 assign_stmt_1159_to_assign_stmt_1372/call_stmt_1207_Sample/crr
      -- 
    crr_281_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " crr_281_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(22), ack => call_stmt_1207_call_req_0); -- 
    singleMemAccessAndSendResponse_cp_element_group_22: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_22"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(1) & singleMemAccessAndSendResponse_CP_228_elements(24);
      gj_singleMemAccessAndSendResponse_cp_element_group_22 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(22), clk => clk, reset => reset); --
    end block;
    -- CP-element group 23:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 23: predecessors 
    -- CP-element group 23: marked-predecessors 
    -- CP-element group 23: 	25 
    -- CP-element group 23: 	93 
    -- CP-element group 23: 	35 
    -- CP-element group 23: 	100 
    -- CP-element group 23: 	104 
    -- CP-element group 23: 	46 
    -- CP-element group 23: successors 
    -- CP-element group 23: 	25 
    -- CP-element group 23:  members (3) 
      -- CP-element group 23: 	 assign_stmt_1159_to_assign_stmt_1372/call_stmt_1207_update_start_
      -- CP-element group 23: 	 assign_stmt_1159_to_assign_stmt_1372/call_stmt_1207_Update/$entry
      -- CP-element group 23: 	 assign_stmt_1159_to_assign_stmt_1372/call_stmt_1207_Update/ccr
      -- 
    ccr_286_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " ccr_286_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(23), ack => call_stmt_1207_call_req_1); -- 
    singleMemAccessAndSendResponse_cp_element_group_23: block -- 
      constant place_capacities: IntegerArray(0 to 5) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1);
      constant place_markings: IntegerArray(0 to 5)  := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1);
      constant place_delays: IntegerArray(0 to 5) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_23"; 
      signal preds: BooleanArray(1 to 6); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(25) & singleMemAccessAndSendResponse_CP_228_elements(93) & singleMemAccessAndSendResponse_CP_228_elements(35) & singleMemAccessAndSendResponse_CP_228_elements(100) & singleMemAccessAndSendResponse_CP_228_elements(104) & singleMemAccessAndSendResponse_CP_228_elements(46);
      gj_singleMemAccessAndSendResponse_cp_element_group_23 : generic_join generic map(name => joinName, number_of_predecessors => 6, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(23), clk => clk, reset => reset); --
    end block;
    -- CP-element group 24:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 24: predecessors 
    -- CP-element group 24: 	22 
    -- CP-element group 24: successors 
    -- CP-element group 24: marked-successors 
    -- CP-element group 24: 	18 
    -- CP-element group 24: 	19 
    -- CP-element group 24: 	13 
    -- CP-element group 24: 	7 
    -- CP-element group 24: 	8 
    -- CP-element group 24: 	15 
    -- CP-element group 24: 	16 
    -- CP-element group 24: 	20 
    -- CP-element group 24: 	22 
    -- CP-element group 24: 	10 
    -- CP-element group 24: 	3 
    -- CP-element group 24:  members (3) 
      -- CP-element group 24: 	 assign_stmt_1159_to_assign_stmt_1372/call_stmt_1207_sample_completed_
      -- CP-element group 24: 	 assign_stmt_1159_to_assign_stmt_1372/call_stmt_1207_Sample/$exit
      -- CP-element group 24: 	 assign_stmt_1159_to_assign_stmt_1372/call_stmt_1207_Sample/cra
      -- 
    cra_282_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 24_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_1207_call_ack_0, ack => singleMemAccessAndSendResponse_CP_228_elements(24)); -- 
    -- CP-element group 25:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 25: predecessors 
    -- CP-element group 25: 	23 
    -- CP-element group 25: successors 
    -- CP-element group 25: 	92 
    -- CP-element group 25: 	34 
    -- CP-element group 25: 	99 
    -- CP-element group 25: 	102 
    -- CP-element group 25: 	45 
    -- CP-element group 25: marked-successors 
    -- CP-element group 25: 	23 
    -- CP-element group 25:  members (3) 
      -- CP-element group 25: 	 assign_stmt_1159_to_assign_stmt_1372/call_stmt_1207_update_completed_
      -- CP-element group 25: 	 assign_stmt_1159_to_assign_stmt_1372/call_stmt_1207_Update/$exit
      -- CP-element group 25: 	 assign_stmt_1159_to_assign_stmt_1372/call_stmt_1207_Update/cca
      -- 
    cca_287_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 25_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_1207_call_ack_1, ack => singleMemAccessAndSendResponse_CP_228_elements(25)); -- 
    -- CP-element group 26:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 26: predecessors 
    -- CP-element group 26: 	1 
    -- CP-element group 26: marked-predecessors 
    -- CP-element group 26: 	28 
    -- CP-element group 26: successors 
    -- CP-element group 26: 	28 
    -- CP-element group 26:  members (3) 
      -- CP-element group 26: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1210_sample_start_
      -- CP-element group 26: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1210_Sample/$entry
      -- CP-element group 26: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1210_Sample/req
      -- 
    req_295_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_295_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(26), ack => W_inval_slot_return_1237_delayed_8_0_1208_inst_req_0); -- 
    singleMemAccessAndSendResponse_cp_element_group_26: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_26"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(1) & singleMemAccessAndSendResponse_CP_228_elements(28);
      gj_singleMemAccessAndSendResponse_cp_element_group_26 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(26), clk => clk, reset => reset); --
    end block;
    -- CP-element group 27:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 27: predecessors 
    -- CP-element group 27: marked-predecessors 
    -- CP-element group 27: 	35 
    -- CP-element group 27: 	29 
    -- CP-element group 27: successors 
    -- CP-element group 27: 	29 
    -- CP-element group 27:  members (3) 
      -- CP-element group 27: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1210_update_start_
      -- CP-element group 27: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1210_Update/$entry
      -- CP-element group 27: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1210_Update/req
      -- 
    req_300_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_300_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(27), ack => W_inval_slot_return_1237_delayed_8_0_1208_inst_req_1); -- 
    singleMemAccessAndSendResponse_cp_element_group_27: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_27"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(35) & singleMemAccessAndSendResponse_CP_228_elements(29);
      gj_singleMemAccessAndSendResponse_cp_element_group_27 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(27), clk => clk, reset => reset); --
    end block;
    -- CP-element group 28:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 28: predecessors 
    -- CP-element group 28: 	26 
    -- CP-element group 28: successors 
    -- CP-element group 28: marked-successors 
    -- CP-element group 28: 	7 
    -- CP-element group 28: 	26 
    -- CP-element group 28: 	10 
    -- CP-element group 28:  members (3) 
      -- CP-element group 28: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1210_sample_completed_
      -- CP-element group 28: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1210_Sample/$exit
      -- CP-element group 28: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1210_Sample/ack
      -- 
    ack_296_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 28_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_inval_slot_return_1237_delayed_8_0_1208_inst_ack_0, ack => singleMemAccessAndSendResponse_CP_228_elements(28)); -- 
    -- CP-element group 29:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 29: predecessors 
    -- CP-element group 29: 	27 
    -- CP-element group 29: successors 
    -- CP-element group 29: 	34 
    -- CP-element group 29: marked-successors 
    -- CP-element group 29: 	27 
    -- CP-element group 29:  members (3) 
      -- CP-element group 29: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1210_update_completed_
      -- CP-element group 29: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1210_Update/$exit
      -- CP-element group 29: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1210_Update/ack
      -- 
    ack_301_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 29_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_inval_slot_return_1237_delayed_8_0_1208_inst_ack_1, ack => singleMemAccessAndSendResponse_CP_228_elements(29)); -- 
    -- CP-element group 30:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 30: predecessors 
    -- CP-element group 30: 	1 
    -- CP-element group 30: marked-predecessors 
    -- CP-element group 30: 	32 
    -- CP-element group 30: successors 
    -- CP-element group 30: 	32 
    -- CP-element group 30:  members (3) 
      -- CP-element group 30: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1218_sample_start_
      -- CP-element group 30: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1218_Sample/$entry
      -- CP-element group 30: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1218_Sample/req
      -- 
    req_309_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_309_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(30), ack => W_inval_slot_return_1241_delayed_8_0_1216_inst_req_0); -- 
    singleMemAccessAndSendResponse_cp_element_group_30: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_30"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(1) & singleMemAccessAndSendResponse_CP_228_elements(32);
      gj_singleMemAccessAndSendResponse_cp_element_group_30 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(30), clk => clk, reset => reset); --
    end block;
    -- CP-element group 31:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 31: predecessors 
    -- CP-element group 31: marked-predecessors 
    -- CP-element group 31: 	35 
    -- CP-element group 31: 	33 
    -- CP-element group 31: successors 
    -- CP-element group 31: 	33 
    -- CP-element group 31:  members (3) 
      -- CP-element group 31: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1218_update_start_
      -- CP-element group 31: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1218_Update/$entry
      -- CP-element group 31: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1218_Update/req
      -- 
    req_314_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_314_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(31), ack => W_inval_slot_return_1241_delayed_8_0_1216_inst_req_1); -- 
    singleMemAccessAndSendResponse_cp_element_group_31: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_31"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(35) & singleMemAccessAndSendResponse_CP_228_elements(33);
      gj_singleMemAccessAndSendResponse_cp_element_group_31 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(31), clk => clk, reset => reset); --
    end block;
    -- CP-element group 32:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 32: predecessors 
    -- CP-element group 32: 	30 
    -- CP-element group 32: successors 
    -- CP-element group 32: marked-successors 
    -- CP-element group 32: 	7 
    -- CP-element group 32: 	10 
    -- CP-element group 32: 	30 
    -- CP-element group 32:  members (3) 
      -- CP-element group 32: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1218_sample_completed_
      -- CP-element group 32: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1218_Sample/$exit
      -- CP-element group 32: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1218_Sample/ack
      -- 
    ack_310_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 32_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_inval_slot_return_1241_delayed_8_0_1216_inst_ack_0, ack => singleMemAccessAndSendResponse_CP_228_elements(32)); -- 
    -- CP-element group 33:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 33: predecessors 
    -- CP-element group 33: 	31 
    -- CP-element group 33: successors 
    -- CP-element group 33: 	34 
    -- CP-element group 33: marked-successors 
    -- CP-element group 33: 	31 
    -- CP-element group 33:  members (3) 
      -- CP-element group 33: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1218_update_completed_
      -- CP-element group 33: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1218_Update/$exit
      -- CP-element group 33: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1218_Update/ack
      -- 
    ack_315_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 33_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_inval_slot_return_1241_delayed_8_0_1216_inst_ack_1, ack => singleMemAccessAndSendResponse_CP_228_elements(33)); -- 
    -- CP-element group 34:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 34: predecessors 
    -- CP-element group 34: 	25 
    -- CP-element group 34: 	33 
    -- CP-element group 34: 	29 
    -- CP-element group 34: marked-predecessors 
    -- CP-element group 34: 	36 
    -- CP-element group 34: successors 
    -- CP-element group 34: 	35 
    -- CP-element group 34:  members (3) 
      -- CP-element group 34: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_NOBLOCK_INVALIDATE_SLOT_RETURN_1220_sample_start_
      -- CP-element group 34: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_NOBLOCK_INVALIDATE_SLOT_RETURN_1220_Sample/$entry
      -- CP-element group 34: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_NOBLOCK_INVALIDATE_SLOT_RETURN_1220_Sample/req
      -- 
    req_323_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_323_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(34), ack => WPIPE_NOBLOCK_INVALIDATE_SLOT_RETURN_1220_inst_req_0); -- 
    singleMemAccessAndSendResponse_cp_element_group_34: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 0,2 => 0,3 => 1);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_34"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(25) & singleMemAccessAndSendResponse_CP_228_elements(33) & singleMemAccessAndSendResponse_CP_228_elements(29) & singleMemAccessAndSendResponse_CP_228_elements(36);
      gj_singleMemAccessAndSendResponse_cp_element_group_34 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(34), clk => clk, reset => reset); --
    end block;
    -- CP-element group 35:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 35: predecessors 
    -- CP-element group 35: 	34 
    -- CP-element group 35: successors 
    -- CP-element group 35: 	36 
    -- CP-element group 35: marked-successors 
    -- CP-element group 35: 	27 
    -- CP-element group 35: 	23 
    -- CP-element group 35: 	31 
    -- CP-element group 35:  members (6) 
      -- CP-element group 35: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_NOBLOCK_INVALIDATE_SLOT_RETURN_1220_sample_completed_
      -- CP-element group 35: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_NOBLOCK_INVALIDATE_SLOT_RETURN_1220_update_start_
      -- CP-element group 35: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_NOBLOCK_INVALIDATE_SLOT_RETURN_1220_Sample/$exit
      -- CP-element group 35: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_NOBLOCK_INVALIDATE_SLOT_RETURN_1220_Sample/ack
      -- CP-element group 35: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_NOBLOCK_INVALIDATE_SLOT_RETURN_1220_Update/$entry
      -- CP-element group 35: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_NOBLOCK_INVALIDATE_SLOT_RETURN_1220_Update/req
      -- 
    ack_324_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 35_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_NOBLOCK_INVALIDATE_SLOT_RETURN_1220_inst_ack_0, ack => singleMemAccessAndSendResponse_CP_228_elements(35)); -- 
    req_328_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_328_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(35), ack => WPIPE_NOBLOCK_INVALIDATE_SLOT_RETURN_1220_inst_req_1); -- 
    -- CP-element group 36:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 36: predecessors 
    -- CP-element group 36: 	35 
    -- CP-element group 36: successors 
    -- CP-element group 36: 	106 
    -- CP-element group 36: marked-successors 
    -- CP-element group 36: 	34 
    -- CP-element group 36:  members (3) 
      -- CP-element group 36: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_NOBLOCK_INVALIDATE_SLOT_RETURN_1220_update_completed_
      -- CP-element group 36: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_NOBLOCK_INVALIDATE_SLOT_RETURN_1220_Update/$exit
      -- CP-element group 36: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_NOBLOCK_INVALIDATE_SLOT_RETURN_1220_Update/ack
      -- 
    ack_329_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 36_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_NOBLOCK_INVALIDATE_SLOT_RETURN_1220_inst_ack_1, ack => singleMemAccessAndSendResponse_CP_228_elements(36)); -- 
    -- CP-element group 37:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 37: predecessors 
    -- CP-element group 37: 	1 
    -- CP-element group 37: marked-predecessors 
    -- CP-element group 37: 	39 
    -- CP-element group 37: successors 
    -- CP-element group 37: 	39 
    -- CP-element group 37:  members (3) 
      -- CP-element group 37: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1225_Sample/$entry
      -- CP-element group 37: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1225_Sample/req
      -- CP-element group 37: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1225_sample_start_
      -- 
    req_337_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_337_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(37), ack => W_ret_token_1246_delayed_8_0_1223_inst_req_0); -- 
    singleMemAccessAndSendResponse_cp_element_group_37: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_37"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(1) & singleMemAccessAndSendResponse_CP_228_elements(39);
      gj_singleMemAccessAndSendResponse_cp_element_group_37 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(37), clk => clk, reset => reset); --
    end block;
    -- CP-element group 38:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 38: predecessors 
    -- CP-element group 38: marked-predecessors 
    -- CP-element group 38: 	40 
    -- CP-element group 38: 	46 
    -- CP-element group 38: successors 
    -- CP-element group 38: 	40 
    -- CP-element group 38:  members (3) 
      -- CP-element group 38: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1225_update_start_
      -- CP-element group 38: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1225_Update/req
      -- CP-element group 38: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1225_Update/$entry
      -- 
    req_342_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_342_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(38), ack => W_ret_token_1246_delayed_8_0_1223_inst_req_1); -- 
    singleMemAccessAndSendResponse_cp_element_group_38: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_38"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(40) & singleMemAccessAndSendResponse_CP_228_elements(46);
      gj_singleMemAccessAndSendResponse_cp_element_group_38 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(38), clk => clk, reset => reset); --
    end block;
    -- CP-element group 39:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 39: predecessors 
    -- CP-element group 39: 	37 
    -- CP-element group 39: successors 
    -- CP-element group 39: marked-successors 
    -- CP-element group 39: 	37 
    -- CP-element group 39: 	2 
    -- CP-element group 39:  members (3) 
      -- CP-element group 39: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1225_Sample/$exit
      -- CP-element group 39: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1225_Sample/ack
      -- CP-element group 39: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1225_sample_completed_
      -- 
    ack_338_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 39_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_ret_token_1246_delayed_8_0_1223_inst_ack_0, ack => singleMemAccessAndSendResponse_CP_228_elements(39)); -- 
    -- CP-element group 40:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 40: predecessors 
    -- CP-element group 40: 	38 
    -- CP-element group 40: successors 
    -- CP-element group 40: 	45 
    -- CP-element group 40: marked-successors 
    -- CP-element group 40: 	38 
    -- CP-element group 40:  members (3) 
      -- CP-element group 40: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1225_update_completed_
      -- CP-element group 40: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1225_Update/$exit
      -- CP-element group 40: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1225_Update/ack
      -- 
    ack_343_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 40_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_ret_token_1246_delayed_8_0_1223_inst_ack_1, ack => singleMemAccessAndSendResponse_CP_228_elements(40)); -- 
    -- CP-element group 41:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 41: predecessors 
    -- CP-element group 41: 	1 
    -- CP-element group 41: marked-predecessors 
    -- CP-element group 41: 	43 
    -- CP-element group 41: successors 
    -- CP-element group 41: 	43 
    -- CP-element group 41:  members (3) 
      -- CP-element group 41: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1233_Sample/req
      -- CP-element group 41: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1233_Sample/$entry
      -- CP-element group 41: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1233_sample_start_
      -- 
    req_351_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_351_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(41), ack => W_ret_token_1250_delayed_8_0_1231_inst_req_0); -- 
    singleMemAccessAndSendResponse_cp_element_group_41: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_41"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(1) & singleMemAccessAndSendResponse_CP_228_elements(43);
      gj_singleMemAccessAndSendResponse_cp_element_group_41 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(41), clk => clk, reset => reset); --
    end block;
    -- CP-element group 42:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 42: predecessors 
    -- CP-element group 42: marked-predecessors 
    -- CP-element group 42: 	44 
    -- CP-element group 42: 	46 
    -- CP-element group 42: successors 
    -- CP-element group 42: 	44 
    -- CP-element group 42:  members (3) 
      -- CP-element group 42: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1233_Update/req
      -- CP-element group 42: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1233_Update/$entry
      -- CP-element group 42: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1233_update_start_
      -- 
    req_356_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_356_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(42), ack => W_ret_token_1250_delayed_8_0_1231_inst_req_1); -- 
    singleMemAccessAndSendResponse_cp_element_group_42: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_42"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(44) & singleMemAccessAndSendResponse_CP_228_elements(46);
      gj_singleMemAccessAndSendResponse_cp_element_group_42 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(42), clk => clk, reset => reset); --
    end block;
    -- CP-element group 43:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 43: predecessors 
    -- CP-element group 43: 	41 
    -- CP-element group 43: successors 
    -- CP-element group 43: marked-successors 
    -- CP-element group 43: 	41 
    -- CP-element group 43: 	2 
    -- CP-element group 43:  members (3) 
      -- CP-element group 43: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1233_Sample/ack
      -- CP-element group 43: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1233_sample_completed_
      -- CP-element group 43: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1233_Sample/$exit
      -- 
    ack_352_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 43_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_ret_token_1250_delayed_8_0_1231_inst_ack_0, ack => singleMemAccessAndSendResponse_CP_228_elements(43)); -- 
    -- CP-element group 44:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 44: predecessors 
    -- CP-element group 44: 	42 
    -- CP-element group 44: successors 
    -- CP-element group 44: 	45 
    -- CP-element group 44: marked-successors 
    -- CP-element group 44: 	42 
    -- CP-element group 44:  members (3) 
      -- CP-element group 44: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1233_Update/$exit
      -- CP-element group 44: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1233_Update/ack
      -- CP-element group 44: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1233_update_completed_
      -- 
    ack_357_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 44_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_ret_token_1250_delayed_8_0_1231_inst_ack_1, ack => singleMemAccessAndSendResponse_CP_228_elements(44)); -- 
    -- CP-element group 45:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 45: predecessors 
    -- CP-element group 45: 	25 
    -- CP-element group 45: 	40 
    -- CP-element group 45: 	44 
    -- CP-element group 45: marked-predecessors 
    -- CP-element group 45: 	47 
    -- CP-element group 45: successors 
    -- CP-element group 45: 	46 
    -- CP-element group 45:  members (3) 
      -- CP-element group 45: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_noblock_dword_token_return_1235_sample_start_
      -- CP-element group 45: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_noblock_dword_token_return_1235_Sample/$entry
      -- CP-element group 45: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_noblock_dword_token_return_1235_Sample/req
      -- 
    req_365_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_365_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(45), ack => WPIPE_noblock_dword_token_return_1235_inst_req_0); -- 
    singleMemAccessAndSendResponse_cp_element_group_45: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 0,2 => 0,3 => 1);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_45"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(25) & singleMemAccessAndSendResponse_CP_228_elements(40) & singleMemAccessAndSendResponse_CP_228_elements(44) & singleMemAccessAndSendResponse_CP_228_elements(47);
      gj_singleMemAccessAndSendResponse_cp_element_group_45 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(45), clk => clk, reset => reset); --
    end block;
    -- CP-element group 46:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 46: predecessors 
    -- CP-element group 46: 	45 
    -- CP-element group 46: successors 
    -- CP-element group 46: 	47 
    -- CP-element group 46: marked-successors 
    -- CP-element group 46: 	38 
    -- CP-element group 46: 	42 
    -- CP-element group 46: 	23 
    -- CP-element group 46:  members (6) 
      -- CP-element group 46: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_noblock_dword_token_return_1235_sample_completed_
      -- CP-element group 46: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_noblock_dword_token_return_1235_update_start_
      -- CP-element group 46: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_noblock_dword_token_return_1235_Sample/$exit
      -- CP-element group 46: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_noblock_dword_token_return_1235_Update/req
      -- CP-element group 46: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_noblock_dword_token_return_1235_Update/$entry
      -- CP-element group 46: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_noblock_dword_token_return_1235_Sample/ack
      -- 
    ack_366_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 46_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_dword_token_return_1235_inst_ack_0, ack => singleMemAccessAndSendResponse_CP_228_elements(46)); -- 
    req_370_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_370_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(46), ack => WPIPE_noblock_dword_token_return_1235_inst_req_1); -- 
    -- CP-element group 47:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 47: predecessors 
    -- CP-element group 47: 	46 
    -- CP-element group 47: successors 
    -- CP-element group 47: 	106 
    -- CP-element group 47: marked-successors 
    -- CP-element group 47: 	45 
    -- CP-element group 47:  members (3) 
      -- CP-element group 47: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_noblock_dword_token_return_1235_Update/ack
      -- CP-element group 47: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_noblock_dword_token_return_1235_update_completed_
      -- CP-element group 47: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_noblock_dword_token_return_1235_Update/$exit
      -- 
    ack_371_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 47_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_dword_token_return_1235_inst_ack_1, ack => singleMemAccessAndSendResponse_CP_228_elements(47)); -- 
    -- CP-element group 48:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 48: predecessors 
    -- CP-element group 48: 	1 
    -- CP-element group 48: marked-predecessors 
    -- CP-element group 48: 	50 
    -- CP-element group 48: successors 
    -- CP-element group 48: 	50 
    -- CP-element group 48:  members (3) 
      -- CP-element group 48: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1240_Sample/$entry
      -- CP-element group 48: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1240_Sample/req
      -- CP-element group 48: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1240_sample_start_
      -- 
    req_379_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_379_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(48), ack => W_pte_error_1255_delayed_8_0_1238_inst_req_0); -- 
    singleMemAccessAndSendResponse_cp_element_group_48: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_48"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(1) & singleMemAccessAndSendResponse_CP_228_elements(50);
      gj_singleMemAccessAndSendResponse_cp_element_group_48 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(48), clk => clk, reset => reset); --
    end block;
    -- CP-element group 49:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 49: predecessors 
    -- CP-element group 49: marked-predecessors 
    -- CP-element group 49: 	93 
    -- CP-element group 49: 	100 
    -- CP-element group 49: 	104 
    -- CP-element group 49: 	51 
    -- CP-element group 49: successors 
    -- CP-element group 49: 	51 
    -- CP-element group 49:  members (3) 
      -- CP-element group 49: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1240_update_start_
      -- CP-element group 49: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1240_Update/$entry
      -- CP-element group 49: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1240_Update/req
      -- 
    req_384_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_384_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(49), ack => W_pte_error_1255_delayed_8_0_1238_inst_req_1); -- 
    singleMemAccessAndSendResponse_cp_element_group_49: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_49"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(93) & singleMemAccessAndSendResponse_CP_228_elements(100) & singleMemAccessAndSendResponse_CP_228_elements(104) & singleMemAccessAndSendResponse_CP_228_elements(51);
      gj_singleMemAccessAndSendResponse_cp_element_group_49 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(49), clk => clk, reset => reset); --
    end block;
    -- CP-element group 50:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 50: predecessors 
    -- CP-element group 50: 	48 
    -- CP-element group 50: successors 
    -- CP-element group 50: marked-successors 
    -- CP-element group 50: 	16 
    -- CP-element group 50: 	48 
    -- CP-element group 50:  members (3) 
      -- CP-element group 50: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1240_Sample/ack
      -- CP-element group 50: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1240_Sample/$exit
      -- CP-element group 50: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1240_sample_completed_
      -- 
    ack_380_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 50_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_pte_error_1255_delayed_8_0_1238_inst_ack_0, ack => singleMemAccessAndSendResponse_CP_228_elements(50)); -- 
    -- CP-element group 51:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 51: predecessors 
    -- CP-element group 51: 	49 
    -- CP-element group 51: successors 
    -- CP-element group 51: 	92 
    -- CP-element group 51: 	99 
    -- CP-element group 51: 	102 
    -- CP-element group 51: marked-successors 
    -- CP-element group 51: 	49 
    -- CP-element group 51:  members (3) 
      -- CP-element group 51: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1240_update_completed_
      -- CP-element group 51: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1240_Update/$exit
      -- CP-element group 51: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1240_Update/ack
      -- 
    ack_385_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 51_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_pte_error_1255_delayed_8_0_1238_inst_ack_1, ack => singleMemAccessAndSendResponse_CP_228_elements(51)); -- 
    -- CP-element group 52:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 52: predecessors 
    -- CP-element group 52: 	1 
    -- CP-element group 52: marked-predecessors 
    -- CP-element group 52: 	54 
    -- CP-element group 52: successors 
    -- CP-element group 52: 	54 
    -- CP-element group 52:  members (3) 
      -- CP-element group 52: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1243_Sample/$entry
      -- CP-element group 52: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1243_Sample/req
      -- CP-element group 52: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1243_sample_start_
      -- 
    req_393_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_393_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(52), ack => W_do_mem_access_1256_delayed_8_0_1241_inst_req_0); -- 
    singleMemAccessAndSendResponse_cp_element_group_52: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_52"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(1) & singleMemAccessAndSendResponse_CP_228_elements(54);
      gj_singleMemAccessAndSendResponse_cp_element_group_52 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(52), clk => clk, reset => reset); --
    end block;
    -- CP-element group 53:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 53: predecessors 
    -- CP-element group 53: marked-predecessors 
    -- CP-element group 53: 	93 
    -- CP-element group 53: 	100 
    -- CP-element group 53: 	104 
    -- CP-element group 53: 	55 
    -- CP-element group 53: successors 
    -- CP-element group 53: 	55 
    -- CP-element group 53:  members (3) 
      -- CP-element group 53: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1243_update_start_
      -- CP-element group 53: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1243_Update/req
      -- CP-element group 53: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1243_Update/$entry
      -- 
    req_398_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_398_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(53), ack => W_do_mem_access_1256_delayed_8_0_1241_inst_req_1); -- 
    singleMemAccessAndSendResponse_cp_element_group_53: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_53"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(93) & singleMemAccessAndSendResponse_CP_228_elements(100) & singleMemAccessAndSendResponse_CP_228_elements(104) & singleMemAccessAndSendResponse_CP_228_elements(55);
      gj_singleMemAccessAndSendResponse_cp_element_group_53 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(53), clk => clk, reset => reset); --
    end block;
    -- CP-element group 54:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 54: predecessors 
    -- CP-element group 54: 	52 
    -- CP-element group 54: successors 
    -- CP-element group 54: marked-successors 
    -- CP-element group 54: 	13 
    -- CP-element group 54: 	7 
    -- CP-element group 54: 	8 
    -- CP-element group 54: 	15 
    -- CP-element group 54: 	16 
    -- CP-element group 54: 	10 
    -- CP-element group 54: 	52 
    -- CP-element group 54:  members (3) 
      -- CP-element group 54: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1243_Sample/$exit
      -- CP-element group 54: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1243_sample_completed_
      -- CP-element group 54: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1243_Sample/ack
      -- 
    ack_394_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 54_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_do_mem_access_1256_delayed_8_0_1241_inst_ack_0, ack => singleMemAccessAndSendResponse_CP_228_elements(54)); -- 
    -- CP-element group 55:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 55: predecessors 
    -- CP-element group 55: 	53 
    -- CP-element group 55: successors 
    -- CP-element group 55: 	92 
    -- CP-element group 55: 	99 
    -- CP-element group 55: 	102 
    -- CP-element group 55: marked-successors 
    -- CP-element group 55: 	53 
    -- CP-element group 55:  members (3) 
      -- CP-element group 55: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1243_update_completed_
      -- CP-element group 55: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1243_Update/ack
      -- CP-element group 55: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1243_Update/$exit
      -- 
    ack_399_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 55_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_do_mem_access_1256_delayed_8_0_1241_inst_ack_1, ack => singleMemAccessAndSendResponse_CP_228_elements(55)); -- 
    -- CP-element group 56:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 56: predecessors 
    -- CP-element group 56: 	1 
    -- CP-element group 56: marked-predecessors 
    -- CP-element group 56: 	58 
    -- CP-element group 56: successors 
    -- CP-element group 56: 	58 
    -- CP-element group 56:  members (3) 
      -- CP-element group 56: 	 assign_stmt_1159_to_assign_stmt_1372/call_stmt_1254_Sample/crr
      -- CP-element group 56: 	 assign_stmt_1159_to_assign_stmt_1372/call_stmt_1254_Sample/$entry
      -- CP-element group 56: 	 assign_stmt_1159_to_assign_stmt_1372/call_stmt_1254_sample_start_
      -- 
    crr_407_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " crr_407_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(56), ack => call_stmt_1254_call_req_0); -- 
    singleMemAccessAndSendResponse_cp_element_group_56: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_56"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(1) & singleMemAccessAndSendResponse_CP_228_elements(58);
      gj_singleMemAccessAndSendResponse_cp_element_group_56 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(56), clk => clk, reset => reset); --
    end block;
    -- CP-element group 57:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 57: predecessors 
    -- CP-element group 57: marked-predecessors 
    -- CP-element group 57: 	93 
    -- CP-element group 57: 	100 
    -- CP-element group 57: 	59 
    -- CP-element group 57: successors 
    -- CP-element group 57: 	59 
    -- CP-element group 57:  members (3) 
      -- CP-element group 57: 	 assign_stmt_1159_to_assign_stmt_1372/call_stmt_1254_Update/ccr
      -- CP-element group 57: 	 assign_stmt_1159_to_assign_stmt_1372/call_stmt_1254_Update/$entry
      -- CP-element group 57: 	 assign_stmt_1159_to_assign_stmt_1372/call_stmt_1254_update_start_
      -- 
    ccr_412_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " ccr_412_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(57), ack => call_stmt_1254_call_req_1); -- 
    singleMemAccessAndSendResponse_cp_element_group_57: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 1,1 => 1,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_57"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(93) & singleMemAccessAndSendResponse_CP_228_elements(100) & singleMemAccessAndSendResponse_CP_228_elements(59);
      gj_singleMemAccessAndSendResponse_cp_element_group_57 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(57), clk => clk, reset => reset); --
    end block;
    -- CP-element group 58:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 58: predecessors 
    -- CP-element group 58: 	56 
    -- CP-element group 58: successors 
    -- CP-element group 58: marked-successors 
    -- CP-element group 58: 	13 
    -- CP-element group 58: 	7 
    -- CP-element group 58: 	8 
    -- CP-element group 58: 	15 
    -- CP-element group 58: 	16 
    -- CP-element group 58: 	20 
    -- CP-element group 58: 	10 
    -- CP-element group 58: 	56 
    -- CP-element group 58:  members (3) 
      -- CP-element group 58: 	 assign_stmt_1159_to_assign_stmt_1372/call_stmt_1254_Sample/cra
      -- CP-element group 58: 	 assign_stmt_1159_to_assign_stmt_1372/call_stmt_1254_Sample/$exit
      -- CP-element group 58: 	 assign_stmt_1159_to_assign_stmt_1372/call_stmt_1254_sample_completed_
      -- 
    cra_408_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 58_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_1254_call_ack_0, ack => singleMemAccessAndSendResponse_CP_228_elements(58)); -- 
    -- CP-element group 59:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 59: predecessors 
    -- CP-element group 59: 	57 
    -- CP-element group 59: successors 
    -- CP-element group 59: 	92 
    -- CP-element group 59: 	99 
    -- CP-element group 59: marked-successors 
    -- CP-element group 59: 	57 
    -- CP-element group 59:  members (3) 
      -- CP-element group 59: 	 assign_stmt_1159_to_assign_stmt_1372/call_stmt_1254_Update/cca
      -- CP-element group 59: 	 assign_stmt_1159_to_assign_stmt_1372/call_stmt_1254_Update/$exit
      -- CP-element group 59: 	 assign_stmt_1159_to_assign_stmt_1372/call_stmt_1254_update_completed_
      -- 
    cca_413_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 59_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_1254_call_ack_1, ack => singleMemAccessAndSendResponse_CP_228_elements(59)); -- 
    -- CP-element group 60:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 60: predecessors 
    -- CP-element group 60: 	1 
    -- CP-element group 60: marked-predecessors 
    -- CP-element group 60: 	62 
    -- CP-element group 60: successors 
    -- CP-element group 60: 	62 
    -- CP-element group 60:  members (3) 
      -- CP-element group 60: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1257_Sample/req
      -- CP-element group 60: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1257_Sample/$entry
      -- CP-element group 60: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1257_sample_start_
      -- 
    req_421_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_421_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(60), ack => W_is_ctrl_reg_read_1266_delayed_8_0_1255_inst_req_0); -- 
    singleMemAccessAndSendResponse_cp_element_group_60: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_60"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(1) & singleMemAccessAndSendResponse_CP_228_elements(62);
      gj_singleMemAccessAndSendResponse_cp_element_group_60 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(60), clk => clk, reset => reset); --
    end block;
    -- CP-element group 61:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 61: predecessors 
    -- CP-element group 61: marked-predecessors 
    -- CP-element group 61: 	93 
    -- CP-element group 61: 	100 
    -- CP-element group 61: 	63 
    -- CP-element group 61: successors 
    -- CP-element group 61: 	63 
    -- CP-element group 61:  members (3) 
      -- CP-element group 61: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1257_Update/req
      -- CP-element group 61: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1257_Update/$entry
      -- CP-element group 61: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1257_update_start_
      -- 
    req_426_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_426_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(61), ack => W_is_ctrl_reg_read_1266_delayed_8_0_1255_inst_req_1); -- 
    singleMemAccessAndSendResponse_cp_element_group_61: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 1,1 => 1,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_61"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(93) & singleMemAccessAndSendResponse_CP_228_elements(100) & singleMemAccessAndSendResponse_CP_228_elements(63);
      gj_singleMemAccessAndSendResponse_cp_element_group_61 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(61), clk => clk, reset => reset); --
    end block;
    -- CP-element group 62:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 62: predecessors 
    -- CP-element group 62: 	60 
    -- CP-element group 62: successors 
    -- CP-element group 62: marked-successors 
    -- CP-element group 62: 	10 
    -- CP-element group 62: 	60 
    -- CP-element group 62:  members (3) 
      -- CP-element group 62: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1257_Sample/ack
      -- CP-element group 62: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1257_Sample/$exit
      -- CP-element group 62: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1257_sample_completed_
      -- 
    ack_422_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 62_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_is_ctrl_reg_read_1266_delayed_8_0_1255_inst_ack_0, ack => singleMemAccessAndSendResponse_CP_228_elements(62)); -- 
    -- CP-element group 63:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 63: predecessors 
    -- CP-element group 63: 	61 
    -- CP-element group 63: successors 
    -- CP-element group 63: 	92 
    -- CP-element group 63: 	99 
    -- CP-element group 63: marked-successors 
    -- CP-element group 63: 	61 
    -- CP-element group 63:  members (3) 
      -- CP-element group 63: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1257_Update/$exit
      -- CP-element group 63: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1257_Update/ack
      -- CP-element group 63: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1257_update_completed_
      -- 
    ack_427_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 63_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_is_ctrl_reg_read_1266_delayed_8_0_1255_inst_ack_1, ack => singleMemAccessAndSendResponse_CP_228_elements(63)); -- 
    -- CP-element group 64:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 64: predecessors 
    -- CP-element group 64: 	1 
    -- CP-element group 64: marked-predecessors 
    -- CP-element group 64: 	66 
    -- CP-element group 64: successors 
    -- CP-element group 64: 	66 
    -- CP-element group 64:  members (3) 
      -- CP-element group 64: 	 assign_stmt_1159_to_assign_stmt_1372/AND_u1_u1_1261_Sample/$entry
      -- CP-element group 64: 	 assign_stmt_1159_to_assign_stmt_1372/AND_u1_u1_1261_sample_start_
      -- CP-element group 64: 	 assign_stmt_1159_to_assign_stmt_1372/AND_u1_u1_1261_Sample/rr
      -- 
    rr_435_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_435_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(64), ack => AND_u1_u1_1261_inst_req_0); -- 
    singleMemAccessAndSendResponse_cp_element_group_64: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_64"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(1) & singleMemAccessAndSendResponse_CP_228_elements(66);
      gj_singleMemAccessAndSendResponse_cp_element_group_64 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(64), clk => clk, reset => reset); --
    end block;
    -- CP-element group 65:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 65: predecessors 
    -- CP-element group 65: marked-predecessors 
    -- CP-element group 65: 	93 
    -- CP-element group 65: 	100 
    -- CP-element group 65: 	67 
    -- CP-element group 65: successors 
    -- CP-element group 65: 	67 
    -- CP-element group 65:  members (3) 
      -- CP-element group 65: 	 assign_stmt_1159_to_assign_stmt_1372/AND_u1_u1_1261_update_start_
      -- CP-element group 65: 	 assign_stmt_1159_to_assign_stmt_1372/AND_u1_u1_1261_Update/cr
      -- CP-element group 65: 	 assign_stmt_1159_to_assign_stmt_1372/AND_u1_u1_1261_Update/$entry
      -- 
    cr_440_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_440_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(65), ack => AND_u1_u1_1261_inst_req_1); -- 
    singleMemAccessAndSendResponse_cp_element_group_65: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 1,1 => 1,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_65"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(93) & singleMemAccessAndSendResponse_CP_228_elements(100) & singleMemAccessAndSendResponse_CP_228_elements(67);
      gj_singleMemAccessAndSendResponse_cp_element_group_65 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(65), clk => clk, reset => reset); --
    end block;
    -- CP-element group 66:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 66: predecessors 
    -- CP-element group 66: 	64 
    -- CP-element group 66: successors 
    -- CP-element group 66: marked-successors 
    -- CP-element group 66: 	13 
    -- CP-element group 66: 	7 
    -- CP-element group 66: 	8 
    -- CP-element group 66: 	15 
    -- CP-element group 66: 	16 
    -- CP-element group 66: 	10 
    -- CP-element group 66: 	64 
    -- CP-element group 66:  members (3) 
      -- CP-element group 66: 	 assign_stmt_1159_to_assign_stmt_1372/AND_u1_u1_1261_Sample/$exit
      -- CP-element group 66: 	 assign_stmt_1159_to_assign_stmt_1372/AND_u1_u1_1261_sample_completed_
      -- CP-element group 66: 	 assign_stmt_1159_to_assign_stmt_1372/AND_u1_u1_1261_Sample/ra
      -- 
    ra_436_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 66_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => AND_u1_u1_1261_inst_ack_0, ack => singleMemAccessAndSendResponse_CP_228_elements(66)); -- 
    -- CP-element group 67:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 67: predecessors 
    -- CP-element group 67: 	65 
    -- CP-element group 67: successors 
    -- CP-element group 67: 	92 
    -- CP-element group 67: 	99 
    -- CP-element group 67: marked-successors 
    -- CP-element group 67: 	65 
    -- CP-element group 67:  members (3) 
      -- CP-element group 67: 	 assign_stmt_1159_to_assign_stmt_1372/AND_u1_u1_1261_update_completed_
      -- CP-element group 67: 	 assign_stmt_1159_to_assign_stmt_1372/AND_u1_u1_1261_Update/ca
      -- CP-element group 67: 	 assign_stmt_1159_to_assign_stmt_1372/AND_u1_u1_1261_Update/$exit
      -- 
    ca_441_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 67_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => AND_u1_u1_1261_inst_ack_1, ack => singleMemAccessAndSendResponse_CP_228_elements(67)); -- 
    -- CP-element group 68:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 68: predecessors 
    -- CP-element group 68: 	1 
    -- CP-element group 68: marked-predecessors 
    -- CP-element group 68: 	70 
    -- CP-element group 68: successors 
    -- CP-element group 68: 	70 
    -- CP-element group 68:  members (3) 
      -- CP-element group 68: 	 assign_stmt_1159_to_assign_stmt_1372/CONCAT_u4_u8_1285_sample_start_
      -- CP-element group 68: 	 assign_stmt_1159_to_assign_stmt_1372/CONCAT_u4_u8_1285_Sample/$entry
      -- CP-element group 68: 	 assign_stmt_1159_to_assign_stmt_1372/CONCAT_u4_u8_1285_Sample/rr
      -- 
    rr_449_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_449_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(68), ack => CONCAT_u4_u8_1285_inst_req_0); -- 
    singleMemAccessAndSendResponse_cp_element_group_68: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_68"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(1) & singleMemAccessAndSendResponse_CP_228_elements(70);
      gj_singleMemAccessAndSendResponse_cp_element_group_68 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(68), clk => clk, reset => reset); --
    end block;
    -- CP-element group 69:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 69: predecessors 
    -- CP-element group 69: marked-predecessors 
    -- CP-element group 69: 	93 
    -- CP-element group 69: 	71 
    -- CP-element group 69: successors 
    -- CP-element group 69: 	71 
    -- CP-element group 69:  members (3) 
      -- CP-element group 69: 	 assign_stmt_1159_to_assign_stmt_1372/CONCAT_u4_u8_1285_update_start_
      -- CP-element group 69: 	 assign_stmt_1159_to_assign_stmt_1372/CONCAT_u4_u8_1285_Update/$entry
      -- CP-element group 69: 	 assign_stmt_1159_to_assign_stmt_1372/CONCAT_u4_u8_1285_Update/cr
      -- 
    cr_454_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_454_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(69), ack => CONCAT_u4_u8_1285_inst_req_1); -- 
    singleMemAccessAndSendResponse_cp_element_group_69: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_69"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(93) & singleMemAccessAndSendResponse_CP_228_elements(71);
      gj_singleMemAccessAndSendResponse_cp_element_group_69 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(69), clk => clk, reset => reset); --
    end block;
    -- CP-element group 70:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 70: predecessors 
    -- CP-element group 70: 	68 
    -- CP-element group 70: successors 
    -- CP-element group 70: marked-successors 
    -- CP-element group 70: 	19 
    -- CP-element group 70: 	4 
    -- CP-element group 70: 	12 
    -- CP-element group 70: 	9 
    -- CP-element group 70: 	68 
    -- CP-element group 70:  members (3) 
      -- CP-element group 70: 	 assign_stmt_1159_to_assign_stmt_1372/CONCAT_u4_u8_1285_sample_completed_
      -- CP-element group 70: 	 assign_stmt_1159_to_assign_stmt_1372/CONCAT_u4_u8_1285_Sample/ra
      -- CP-element group 70: 	 assign_stmt_1159_to_assign_stmt_1372/CONCAT_u4_u8_1285_Sample/$exit
      -- 
    ra_450_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 70_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => CONCAT_u4_u8_1285_inst_ack_0, ack => singleMemAccessAndSendResponse_CP_228_elements(70)); -- 
    -- CP-element group 71:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 71: predecessors 
    -- CP-element group 71: 	69 
    -- CP-element group 71: successors 
    -- CP-element group 71: 	92 
    -- CP-element group 71: marked-successors 
    -- CP-element group 71: 	69 
    -- CP-element group 71:  members (3) 
      -- CP-element group 71: 	 assign_stmt_1159_to_assign_stmt_1372/CONCAT_u4_u8_1285_update_completed_
      -- CP-element group 71: 	 assign_stmt_1159_to_assign_stmt_1372/CONCAT_u4_u8_1285_Update/$exit
      -- CP-element group 71: 	 assign_stmt_1159_to_assign_stmt_1372/CONCAT_u4_u8_1285_Update/ca
      -- 
    ca_455_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 71_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => CONCAT_u4_u8_1285_inst_ack_1, ack => singleMemAccessAndSendResponse_CP_228_elements(71)); -- 
    -- CP-element group 72:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 72: predecessors 
    -- CP-element group 72: 	1 
    -- CP-element group 72: marked-predecessors 
    -- CP-element group 72: 	74 
    -- CP-element group 72: successors 
    -- CP-element group 72: 	74 
    -- CP-element group 72:  members (3) 
      -- CP-element group 72: 	 assign_stmt_1159_to_assign_stmt_1372/CONCAT_u1_u2_1290_sample_start_
      -- CP-element group 72: 	 assign_stmt_1159_to_assign_stmt_1372/CONCAT_u1_u2_1290_Sample/rr
      -- CP-element group 72: 	 assign_stmt_1159_to_assign_stmt_1372/CONCAT_u1_u2_1290_Sample/$entry
      -- 
    rr_463_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_463_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(72), ack => CONCAT_u1_u2_1290_inst_req_0); -- 
    singleMemAccessAndSendResponse_cp_element_group_72: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_72"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(1) & singleMemAccessAndSendResponse_CP_228_elements(74);
      gj_singleMemAccessAndSendResponse_cp_element_group_72 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(72), clk => clk, reset => reset); --
    end block;
    -- CP-element group 73:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 73: predecessors 
    -- CP-element group 73: marked-predecessors 
    -- CP-element group 73: 	93 
    -- CP-element group 73: 	75 
    -- CP-element group 73: successors 
    -- CP-element group 73: 	75 
    -- CP-element group 73:  members (3) 
      -- CP-element group 73: 	 assign_stmt_1159_to_assign_stmt_1372/CONCAT_u1_u2_1290_update_start_
      -- CP-element group 73: 	 assign_stmt_1159_to_assign_stmt_1372/CONCAT_u1_u2_1290_Update/cr
      -- CP-element group 73: 	 assign_stmt_1159_to_assign_stmt_1372/CONCAT_u1_u2_1290_Update/$entry
      -- 
    cr_468_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_468_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(73), ack => CONCAT_u1_u2_1290_inst_req_1); -- 
    singleMemAccessAndSendResponse_cp_element_group_73: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_73"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(93) & singleMemAccessAndSendResponse_CP_228_elements(75);
      gj_singleMemAccessAndSendResponse_cp_element_group_73 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(73), clk => clk, reset => reset); --
    end block;
    -- CP-element group 74:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 74: predecessors 
    -- CP-element group 74: 	72 
    -- CP-element group 74: successors 
    -- CP-element group 74: marked-successors 
    -- CP-element group 74: 	14 
    -- CP-element group 74: 	15 
    -- CP-element group 74: 	72 
    -- CP-element group 74:  members (3) 
      -- CP-element group 74: 	 assign_stmt_1159_to_assign_stmt_1372/CONCAT_u1_u2_1290_sample_completed_
      -- CP-element group 74: 	 assign_stmt_1159_to_assign_stmt_1372/CONCAT_u1_u2_1290_Sample/ra
      -- CP-element group 74: 	 assign_stmt_1159_to_assign_stmt_1372/CONCAT_u1_u2_1290_Sample/$exit
      -- 
    ra_464_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 74_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => CONCAT_u1_u2_1290_inst_ack_0, ack => singleMemAccessAndSendResponse_CP_228_elements(74)); -- 
    -- CP-element group 75:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 75: predecessors 
    -- CP-element group 75: 	73 
    -- CP-element group 75: successors 
    -- CP-element group 75: 	92 
    -- CP-element group 75: marked-successors 
    -- CP-element group 75: 	73 
    -- CP-element group 75:  members (3) 
      -- CP-element group 75: 	 assign_stmt_1159_to_assign_stmt_1372/CONCAT_u1_u2_1290_Update/$exit
      -- CP-element group 75: 	 assign_stmt_1159_to_assign_stmt_1372/CONCAT_u1_u2_1290_update_completed_
      -- CP-element group 75: 	 assign_stmt_1159_to_assign_stmt_1372/CONCAT_u1_u2_1290_Update/ca
      -- 
    ca_469_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 75_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => CONCAT_u1_u2_1290_inst_ack_1, ack => singleMemAccessAndSendResponse_CP_228_elements(75)); -- 
    -- CP-element group 76:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 76: predecessors 
    -- CP-element group 76: 	1 
    -- CP-element group 76: marked-predecessors 
    -- CP-element group 76: 	78 
    -- CP-element group 76: successors 
    -- CP-element group 76: 	78 
    -- CP-element group 76:  members (3) 
      -- CP-element group 76: 	 assign_stmt_1159_to_assign_stmt_1372/CONCAT_u5_u9_1310_sample_start_
      -- CP-element group 76: 	 assign_stmt_1159_to_assign_stmt_1372/CONCAT_u5_u9_1310_Sample/$entry
      -- CP-element group 76: 	 assign_stmt_1159_to_assign_stmt_1372/CONCAT_u5_u9_1310_Sample/rr
      -- 
    rr_477_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_477_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(76), ack => CONCAT_u5_u9_1310_inst_req_0); -- 
    singleMemAccessAndSendResponse_cp_element_group_76: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_76"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(1) & singleMemAccessAndSendResponse_CP_228_elements(78);
      gj_singleMemAccessAndSendResponse_cp_element_group_76 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(76), clk => clk, reset => reset); --
    end block;
    -- CP-element group 77:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 77: predecessors 
    -- CP-element group 77: marked-predecessors 
    -- CP-element group 77: 	100 
    -- CP-element group 77: 	79 
    -- CP-element group 77: successors 
    -- CP-element group 77: 	79 
    -- CP-element group 77:  members (3) 
      -- CP-element group 77: 	 assign_stmt_1159_to_assign_stmt_1372/CONCAT_u5_u9_1310_update_start_
      -- CP-element group 77: 	 assign_stmt_1159_to_assign_stmt_1372/CONCAT_u5_u9_1310_Update/cr
      -- CP-element group 77: 	 assign_stmt_1159_to_assign_stmt_1372/CONCAT_u5_u9_1310_Update/$entry
      -- 
    cr_482_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_482_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(77), ack => CONCAT_u5_u9_1310_inst_req_1); -- 
    singleMemAccessAndSendResponse_cp_element_group_77: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_77"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(100) & singleMemAccessAndSendResponse_CP_228_elements(79);
      gj_singleMemAccessAndSendResponse_cp_element_group_77 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(77), clk => clk, reset => reset); --
    end block;
    -- CP-element group 78:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 78: predecessors 
    -- CP-element group 78: 	76 
    -- CP-element group 78: successors 
    -- CP-element group 78: marked-successors 
    -- CP-element group 78: 	19 
    -- CP-element group 78: 	4 
    -- CP-element group 78: 	12 
    -- CP-element group 78: 	14 
    -- CP-element group 78: 	9 
    -- CP-element group 78: 	76 
    -- CP-element group 78:  members (3) 
      -- CP-element group 78: 	 assign_stmt_1159_to_assign_stmt_1372/CONCAT_u5_u9_1310_Sample/ra
      -- CP-element group 78: 	 assign_stmt_1159_to_assign_stmt_1372/CONCAT_u5_u9_1310_sample_completed_
      -- CP-element group 78: 	 assign_stmt_1159_to_assign_stmt_1372/CONCAT_u5_u9_1310_Sample/$exit
      -- 
    ra_478_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 78_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => CONCAT_u5_u9_1310_inst_ack_0, ack => singleMemAccessAndSendResponse_CP_228_elements(78)); -- 
    -- CP-element group 79:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 79: predecessors 
    -- CP-element group 79: 	77 
    -- CP-element group 79: successors 
    -- CP-element group 79: 	99 
    -- CP-element group 79: marked-successors 
    -- CP-element group 79: 	77 
    -- CP-element group 79:  members (3) 
      -- CP-element group 79: 	 assign_stmt_1159_to_assign_stmt_1372/CONCAT_u5_u9_1310_update_completed_
      -- CP-element group 79: 	 assign_stmt_1159_to_assign_stmt_1372/CONCAT_u5_u9_1310_Update/$exit
      -- CP-element group 79: 	 assign_stmt_1159_to_assign_stmt_1372/CONCAT_u5_u9_1310_Update/ca
      -- 
    ca_483_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 79_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => CONCAT_u5_u9_1310_inst_ack_1, ack => singleMemAccessAndSendResponse_CP_228_elements(79)); -- 
    -- CP-element group 80:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 80: predecessors 
    -- CP-element group 80: 	1 
    -- CP-element group 80: marked-predecessors 
    -- CP-element group 80: 	82 
    -- CP-element group 80: successors 
    -- CP-element group 80: 	82 
    -- CP-element group 80:  members (3) 
      -- CP-element group 80: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1314_Sample/$entry
      -- CP-element group 80: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1314_sample_start_
      -- CP-element group 80: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1314_Sample/req
      -- 
    req_491_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_491_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(80), ack => W_mae_1309_delayed_8_0_1312_inst_req_0); -- 
    singleMemAccessAndSendResponse_cp_element_group_80: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_80"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(1) & singleMemAccessAndSendResponse_CP_228_elements(82);
      gj_singleMemAccessAndSendResponse_cp_element_group_80 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(80), clk => clk, reset => reset); --
    end block;
    -- CP-element group 81:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 81: predecessors 
    -- CP-element group 81: marked-predecessors 
    -- CP-element group 81: 	100 
    -- CP-element group 81: 	83 
    -- CP-element group 81: successors 
    -- CP-element group 81: 	83 
    -- CP-element group 81:  members (3) 
      -- CP-element group 81: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1314_update_start_
      -- CP-element group 81: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1314_Update/$entry
      -- CP-element group 81: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1314_Update/req
      -- 
    req_496_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_496_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(81), ack => W_mae_1309_delayed_8_0_1312_inst_req_1); -- 
    singleMemAccessAndSendResponse_cp_element_group_81: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_81"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(100) & singleMemAccessAndSendResponse_CP_228_elements(83);
      gj_singleMemAccessAndSendResponse_cp_element_group_81 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(81), clk => clk, reset => reset); --
    end block;
    -- CP-element group 82:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 82: predecessors 
    -- CP-element group 82: 	80 
    -- CP-element group 82: successors 
    -- CP-element group 82: marked-successors 
    -- CP-element group 82: 	15 
    -- CP-element group 82: 	80 
    -- CP-element group 82:  members (3) 
      -- CP-element group 82: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1314_sample_completed_
      -- CP-element group 82: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1314_Sample/ack
      -- CP-element group 82: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1314_Sample/$exit
      -- 
    ack_492_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 82_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_mae_1309_delayed_8_0_1312_inst_ack_0, ack => singleMemAccessAndSendResponse_CP_228_elements(82)); -- 
    -- CP-element group 83:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 83: predecessors 
    -- CP-element group 83: 	81 
    -- CP-element group 83: successors 
    -- CP-element group 83: 	99 
    -- CP-element group 83: marked-successors 
    -- CP-element group 83: 	81 
    -- CP-element group 83:  members (3) 
      -- CP-element group 83: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1314_update_completed_
      -- CP-element group 83: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1314_Update/$exit
      -- CP-element group 83: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1314_Update/ack
      -- 
    ack_497_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 83_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_mae_1309_delayed_8_0_1312_inst_ack_1, ack => singleMemAccessAndSendResponse_CP_228_elements(83)); -- 
    -- CP-element group 84:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 84: predecessors 
    -- CP-element group 84: 	1 
    -- CP-element group 84: marked-predecessors 
    -- CP-element group 84: 	86 
    -- CP-element group 84: successors 
    -- CP-element group 84: 	86 
    -- CP-element group 84:  members (3) 
      -- CP-element group 84: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1317_sample_start_
      -- CP-element group 84: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1317_Sample/$entry
      -- CP-element group 84: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1317_Sample/req
      -- 
    req_505_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_505_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(84), ack => W_fsr_1312_delayed_8_0_1315_inst_req_0); -- 
    singleMemAccessAndSendResponse_cp_element_group_84: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_84"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(1) & singleMemAccessAndSendResponse_CP_228_elements(86);
      gj_singleMemAccessAndSendResponse_cp_element_group_84 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(84), clk => clk, reset => reset); --
    end block;
    -- CP-element group 85:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 85: predecessors 
    -- CP-element group 85: marked-predecessors 
    -- CP-element group 85: 	87 
    -- CP-element group 85: 	100 
    -- CP-element group 85: successors 
    -- CP-element group 85: 	87 
    -- CP-element group 85:  members (3) 
      -- CP-element group 85: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1317_Update/$entry
      -- CP-element group 85: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1317_update_start_
      -- CP-element group 85: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1317_Update/req
      -- 
    req_510_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_510_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(85), ack => W_fsr_1312_delayed_8_0_1315_inst_req_1); -- 
    singleMemAccessAndSendResponse_cp_element_group_85: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_85"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(87) & singleMemAccessAndSendResponse_CP_228_elements(100);
      gj_singleMemAccessAndSendResponse_cp_element_group_85 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(85), clk => clk, reset => reset); --
    end block;
    -- CP-element group 86:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 86: predecessors 
    -- CP-element group 86: 	84 
    -- CP-element group 86: successors 
    -- CP-element group 86: marked-successors 
    -- CP-element group 86: 	17 
    -- CP-element group 86: 	84 
    -- CP-element group 86:  members (3) 
      -- CP-element group 86: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1317_sample_completed_
      -- CP-element group 86: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1317_Sample/$exit
      -- CP-element group 86: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1317_Sample/ack
      -- 
    ack_506_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 86_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_fsr_1312_delayed_8_0_1315_inst_ack_0, ack => singleMemAccessAndSendResponse_CP_228_elements(86)); -- 
    -- CP-element group 87:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 87: predecessors 
    -- CP-element group 87: 	85 
    -- CP-element group 87: successors 
    -- CP-element group 87: 	99 
    -- CP-element group 87: marked-successors 
    -- CP-element group 87: 	85 
    -- CP-element group 87:  members (3) 
      -- CP-element group 87: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1317_update_completed_
      -- CP-element group 87: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1317_Update/ack
      -- CP-element group 87: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1317_Update/$exit
      -- 
    ack_511_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 87_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_fsr_1312_delayed_8_0_1315_inst_ack_1, ack => singleMemAccessAndSendResponse_CP_228_elements(87)); -- 
    -- CP-element group 88:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 88: predecessors 
    -- CP-element group 88: 	1 
    -- CP-element group 88: marked-predecessors 
    -- CP-element group 88: 	90 
    -- CP-element group 88: successors 
    -- CP-element group 88: 	90 
    -- CP-element group 88:  members (3) 
      -- CP-element group 88: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1337_Sample/$entry
      -- CP-element group 88: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1337_sample_start_
      -- CP-element group 88: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1337_Sample/req
      -- 
    req_519_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_519_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(88), ack => W_really_send_to_dcache_1324_delayed_8_0_1335_inst_req_0); -- 
    singleMemAccessAndSendResponse_cp_element_group_88: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_88"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(1) & singleMemAccessAndSendResponse_CP_228_elements(90);
      gj_singleMemAccessAndSendResponse_cp_element_group_88 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(88), clk => clk, reset => reset); --
    end block;
    -- CP-element group 89:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 89: predecessors 
    -- CP-element group 89: marked-predecessors 
    -- CP-element group 89: 	91 
    -- CP-element group 89: 	93 
    -- CP-element group 89: successors 
    -- CP-element group 89: 	91 
    -- CP-element group 89:  members (3) 
      -- CP-element group 89: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1337_update_start_
      -- CP-element group 89: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1337_Update/req
      -- CP-element group 89: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1337_Update/$entry
      -- 
    req_524_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_524_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(89), ack => W_really_send_to_dcache_1324_delayed_8_0_1335_inst_req_1); -- 
    singleMemAccessAndSendResponse_cp_element_group_89: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_89"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(91) & singleMemAccessAndSendResponse_CP_228_elements(93);
      gj_singleMemAccessAndSendResponse_cp_element_group_89 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(89), clk => clk, reset => reset); --
    end block;
    -- CP-element group 90:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 90: predecessors 
    -- CP-element group 90: 	88 
    -- CP-element group 90: successors 
    -- CP-element group 90: marked-successors 
    -- CP-element group 90: 	5 
    -- CP-element group 90: 	11 
    -- CP-element group 90: 	88 
    -- CP-element group 90:  members (3) 
      -- CP-element group 90: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1337_Sample/ack
      -- CP-element group 90: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1337_sample_completed_
      -- CP-element group 90: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1337_Sample/$exit
      -- 
    ack_520_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 90_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_really_send_to_dcache_1324_delayed_8_0_1335_inst_ack_0, ack => singleMemAccessAndSendResponse_CP_228_elements(90)); -- 
    -- CP-element group 91:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 91: predecessors 
    -- CP-element group 91: 	89 
    -- CP-element group 91: successors 
    -- CP-element group 91: 	92 
    -- CP-element group 91: marked-successors 
    -- CP-element group 91: 	89 
    -- CP-element group 91:  members (3) 
      -- CP-element group 91: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1337_Update/ack
      -- CP-element group 91: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1337_update_completed_
      -- CP-element group 91: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1337_Update/$exit
      -- 
    ack_525_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 91_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_really_send_to_dcache_1324_delayed_8_0_1335_inst_ack_1, ack => singleMemAccessAndSendResponse_CP_228_elements(91)); -- 
    -- CP-element group 92:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 92: predecessors 
    -- CP-element group 92: 	25 
    -- CP-element group 92: 	91 
    -- CP-element group 92: 	63 
    -- CP-element group 92: 	67 
    -- CP-element group 92: 	71 
    -- CP-element group 92: 	75 
    -- CP-element group 92: 	51 
    -- CP-element group 92: 	55 
    -- CP-element group 92: 	59 
    -- CP-element group 92: marked-predecessors 
    -- CP-element group 92: 	94 
    -- CP-element group 92: successors 
    -- CP-element group 92: 	93 
    -- CP-element group 92:  members (3) 
      -- CP-element group 92: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_MMU_to_DCACHE_response_1339_Sample/req
      -- CP-element group 92: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_MMU_to_DCACHE_response_1339_Sample/$entry
      -- CP-element group 92: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_MMU_to_DCACHE_response_1339_sample_start_
      -- 
    req_533_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_533_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(92), ack => WPIPE_MMU_to_DCACHE_response_1339_inst_req_0); -- 
    singleMemAccessAndSendResponse_cp_element_group_92: block -- 
      constant place_capacities: IntegerArray(0 to 9) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1);
      constant place_markings: IntegerArray(0 to 9)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 1);
      constant place_delays: IntegerArray(0 to 9) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_92"; 
      signal preds: BooleanArray(1 to 10); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(25) & singleMemAccessAndSendResponse_CP_228_elements(91) & singleMemAccessAndSendResponse_CP_228_elements(63) & singleMemAccessAndSendResponse_CP_228_elements(67) & singleMemAccessAndSendResponse_CP_228_elements(71) & singleMemAccessAndSendResponse_CP_228_elements(75) & singleMemAccessAndSendResponse_CP_228_elements(51) & singleMemAccessAndSendResponse_CP_228_elements(55) & singleMemAccessAndSendResponse_CP_228_elements(59) & singleMemAccessAndSendResponse_CP_228_elements(94);
      gj_singleMemAccessAndSendResponse_cp_element_group_92 : generic_join generic map(name => joinName, number_of_predecessors => 10, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(92), clk => clk, reset => reset); --
    end block;
    -- CP-element group 93:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 93: predecessors 
    -- CP-element group 93: 	92 
    -- CP-element group 93: successors 
    -- CP-element group 93: 	94 
    -- CP-element group 93: marked-successors 
    -- CP-element group 93: 	89 
    -- CP-element group 93: 	61 
    -- CP-element group 93: 	65 
    -- CP-element group 93: 	69 
    -- CP-element group 93: 	73 
    -- CP-element group 93: 	53 
    -- CP-element group 93: 	49 
    -- CP-element group 93: 	57 
    -- CP-element group 93: 	23 
    -- CP-element group 93:  members (6) 
      -- CP-element group 93: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_MMU_to_DCACHE_response_1339_Sample/ack
      -- CP-element group 93: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_MMU_to_DCACHE_response_1339_Update/$entry
      -- CP-element group 93: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_MMU_to_DCACHE_response_1339_Sample/$exit
      -- CP-element group 93: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_MMU_to_DCACHE_response_1339_Update/req
      -- CP-element group 93: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_MMU_to_DCACHE_response_1339_sample_completed_
      -- CP-element group 93: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_MMU_to_DCACHE_response_1339_update_start_
      -- 
    ack_534_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 93_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_MMU_to_DCACHE_response_1339_inst_ack_0, ack => singleMemAccessAndSendResponse_CP_228_elements(93)); -- 
    req_538_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_538_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(93), ack => WPIPE_MMU_to_DCACHE_response_1339_inst_req_1); -- 
    -- CP-element group 94:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 94: predecessors 
    -- CP-element group 94: 	93 
    -- CP-element group 94: successors 
    -- CP-element group 94: 	106 
    -- CP-element group 94: marked-successors 
    -- CP-element group 94: 	92 
    -- CP-element group 94:  members (3) 
      -- CP-element group 94: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_MMU_to_DCACHE_response_1339_Update/$exit
      -- CP-element group 94: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_MMU_to_DCACHE_response_1339_Update/ack
      -- CP-element group 94: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_MMU_to_DCACHE_response_1339_update_completed_
      -- 
    ack_539_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 94_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_MMU_to_DCACHE_response_1339_inst_ack_1, ack => singleMemAccessAndSendResponse_CP_228_elements(94)); -- 
    -- CP-element group 95:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 95: predecessors 
    -- CP-element group 95: 	1 
    -- CP-element group 95: marked-predecessors 
    -- CP-element group 95: 	97 
    -- CP-element group 95: successors 
    -- CP-element group 95: 	97 
    -- CP-element group 95:  members (3) 
      -- CP-element group 95: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1353_Sample/$entry
      -- CP-element group 95: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1353_Sample/req
      -- CP-element group 95: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1353_sample_start_
      -- 
    req_547_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_547_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(95), ack => W_send_to_icache_1337_delayed_8_0_1351_inst_req_0); -- 
    singleMemAccessAndSendResponse_cp_element_group_95: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_95"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(1) & singleMemAccessAndSendResponse_CP_228_elements(97);
      gj_singleMemAccessAndSendResponse_cp_element_group_95 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(95), clk => clk, reset => reset); --
    end block;
    -- CP-element group 96:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 96: predecessors 
    -- CP-element group 96: marked-predecessors 
    -- CP-element group 96: 	98 
    -- CP-element group 96: 	100 
    -- CP-element group 96: successors 
    -- CP-element group 96: 	98 
    -- CP-element group 96:  members (3) 
      -- CP-element group 96: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1353_update_start_
      -- CP-element group 96: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1353_Update/$entry
      -- CP-element group 96: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1353_Update/req
      -- 
    req_552_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_552_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(96), ack => W_send_to_icache_1337_delayed_8_0_1351_inst_req_1); -- 
    singleMemAccessAndSendResponse_cp_element_group_96: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_96"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(98) & singleMemAccessAndSendResponse_CP_228_elements(100);
      gj_singleMemAccessAndSendResponse_cp_element_group_96 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(96), clk => clk, reset => reset); --
    end block;
    -- CP-element group 97:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 97: predecessors 
    -- CP-element group 97: 	95 
    -- CP-element group 97: successors 
    -- CP-element group 97: marked-successors 
    -- CP-element group 97: 	6 
    -- CP-element group 97: 	95 
    -- CP-element group 97:  members (3) 
      -- CP-element group 97: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1353_sample_completed_
      -- CP-element group 97: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1353_Sample/ack
      -- CP-element group 97: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1353_Sample/$exit
      -- 
    ack_548_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 97_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_send_to_icache_1337_delayed_8_0_1351_inst_ack_0, ack => singleMemAccessAndSendResponse_CP_228_elements(97)); -- 
    -- CP-element group 98:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 98: predecessors 
    -- CP-element group 98: 	96 
    -- CP-element group 98: successors 
    -- CP-element group 98: 	99 
    -- CP-element group 98: marked-successors 
    -- CP-element group 98: 	96 
    -- CP-element group 98:  members (3) 
      -- CP-element group 98: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1353_update_completed_
      -- CP-element group 98: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1353_Update/$exit
      -- CP-element group 98: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1353_Update/ack
      -- 
    ack_553_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 98_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_send_to_icache_1337_delayed_8_0_1351_inst_ack_1, ack => singleMemAccessAndSendResponse_CP_228_elements(98)); -- 
    -- CP-element group 99:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 99: predecessors 
    -- CP-element group 99: 	25 
    -- CP-element group 99: 	87 
    -- CP-element group 99: 	98 
    -- CP-element group 99: 	63 
    -- CP-element group 99: 	67 
    -- CP-element group 99: 	51 
    -- CP-element group 99: 	55 
    -- CP-element group 99: 	59 
    -- CP-element group 99: 	79 
    -- CP-element group 99: 	83 
    -- CP-element group 99: marked-predecessors 
    -- CP-element group 99: 	101 
    -- CP-element group 99: successors 
    -- CP-element group 99: 	100 
    -- CP-element group 99:  members (3) 
      -- CP-element group 99: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_MMU_to_ICACHE_response_1355_sample_start_
      -- CP-element group 99: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_MMU_to_ICACHE_response_1355_Sample/$entry
      -- CP-element group 99: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_MMU_to_ICACHE_response_1355_Sample/req
      -- 
    req_561_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_561_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(99), ack => WPIPE_MMU_to_ICACHE_response_1355_inst_req_0); -- 
    singleMemAccessAndSendResponse_cp_element_group_99: block -- 
      constant place_capacities: IntegerArray(0 to 10) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1,10 => 1);
      constant place_markings: IntegerArray(0 to 10)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 1);
      constant place_delays: IntegerArray(0 to 10) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0);
      constant joinName: string(1 to 50) := "singleMemAccessAndSendResponse_cp_element_group_99"; 
      signal preds: BooleanArray(1 to 11); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(25) & singleMemAccessAndSendResponse_CP_228_elements(87) & singleMemAccessAndSendResponse_CP_228_elements(98) & singleMemAccessAndSendResponse_CP_228_elements(63) & singleMemAccessAndSendResponse_CP_228_elements(67) & singleMemAccessAndSendResponse_CP_228_elements(51) & singleMemAccessAndSendResponse_CP_228_elements(55) & singleMemAccessAndSendResponse_CP_228_elements(59) & singleMemAccessAndSendResponse_CP_228_elements(79) & singleMemAccessAndSendResponse_CP_228_elements(83) & singleMemAccessAndSendResponse_CP_228_elements(101);
      gj_singleMemAccessAndSendResponse_cp_element_group_99 : generic_join generic map(name => joinName, number_of_predecessors => 11, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(99), clk => clk, reset => reset); --
    end block;
    -- CP-element group 100:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 100: predecessors 
    -- CP-element group 100: 	99 
    -- CP-element group 100: successors 
    -- CP-element group 100: 	101 
    -- CP-element group 100: marked-successors 
    -- CP-element group 100: 	85 
    -- CP-element group 100: 	96 
    -- CP-element group 100: 	61 
    -- CP-element group 100: 	65 
    -- CP-element group 100: 	77 
    -- CP-element group 100: 	53 
    -- CP-element group 100: 	49 
    -- CP-element group 100: 	57 
    -- CP-element group 100: 	81 
    -- CP-element group 100: 	23 
    -- CP-element group 100:  members (6) 
      -- CP-element group 100: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_MMU_to_ICACHE_response_1355_sample_completed_
      -- CP-element group 100: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_MMU_to_ICACHE_response_1355_Sample/$exit
      -- CP-element group 100: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_MMU_to_ICACHE_response_1355_Sample/ack
      -- CP-element group 100: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_MMU_to_ICACHE_response_1355_update_start_
      -- CP-element group 100: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_MMU_to_ICACHE_response_1355_Update/req
      -- CP-element group 100: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_MMU_to_ICACHE_response_1355_Update/$entry
      -- 
    ack_562_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 100_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_MMU_to_ICACHE_response_1355_inst_ack_0, ack => singleMemAccessAndSendResponse_CP_228_elements(100)); -- 
    req_566_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_566_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(100), ack => WPIPE_MMU_to_ICACHE_response_1355_inst_req_1); -- 
    -- CP-element group 101:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 101: predecessors 
    -- CP-element group 101: 	100 
    -- CP-element group 101: successors 
    -- CP-element group 101: 	106 
    -- CP-element group 101: marked-successors 
    -- CP-element group 101: 	99 
    -- CP-element group 101:  members (3) 
      -- CP-element group 101: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_MMU_to_ICACHE_response_1355_update_completed_
      -- CP-element group 101: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_MMU_to_ICACHE_response_1355_Update/ack
      -- CP-element group 101: 	 assign_stmt_1159_to_assign_stmt_1372/WPIPE_MMU_to_ICACHE_response_1355_Update/$exit
      -- 
    ack_567_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 101_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_MMU_to_ICACHE_response_1355_inst_ack_1, ack => singleMemAccessAndSendResponse_CP_228_elements(101)); -- 
    -- CP-element group 102:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 102: predecessors 
    -- CP-element group 102: 	25 
    -- CP-element group 102: 	51 
    -- CP-element group 102: 	55 
    -- CP-element group 102: marked-predecessors 
    -- CP-element group 102: 	104 
    -- CP-element group 102: successors 
    -- CP-element group 102: 	104 
    -- CP-element group 102:  members (3) 
      -- CP-element group 102: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1372_Sample/$entry
      -- CP-element group 102: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1372_Sample/req
      -- CP-element group 102: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1372_sample_start_
      -- 
    req_575_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_575_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(102), ack => W_access_error_1370_inst_req_0); -- 
    singleMemAccessAndSendResponse_cp_element_group_102: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 0,2 => 0,3 => 1);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 1);
      constant joinName: string(1 to 51) := "singleMemAccessAndSendResponse_cp_element_group_102"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(25) & singleMemAccessAndSendResponse_CP_228_elements(51) & singleMemAccessAndSendResponse_CP_228_elements(55) & singleMemAccessAndSendResponse_CP_228_elements(104);
      gj_singleMemAccessAndSendResponse_cp_element_group_102 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(102), clk => clk, reset => reset); --
    end block;
    -- CP-element group 103:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 103: predecessors 
    -- CP-element group 103: 	21 
    -- CP-element group 103: marked-predecessors 
    -- CP-element group 103: 	105 
    -- CP-element group 103: successors 
    -- CP-element group 103: 	105 
    -- CP-element group 103:  members (3) 
      -- CP-element group 103: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1372_update_start_
      -- CP-element group 103: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1372_Update/$entry
      -- CP-element group 103: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1372_Update/req
      -- 
    req_580_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_580_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => singleMemAccessAndSendResponse_CP_228_elements(103), ack => W_access_error_1370_inst_req_1); -- 
    singleMemAccessAndSendResponse_cp_element_group_103: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 51) := "singleMemAccessAndSendResponse_cp_element_group_103"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(21) & singleMemAccessAndSendResponse_CP_228_elements(105);
      gj_singleMemAccessAndSendResponse_cp_element_group_103 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(103), clk => clk, reset => reset); --
    end block;
    -- CP-element group 104:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 104: predecessors 
    -- CP-element group 104: 	102 
    -- CP-element group 104: successors 
    -- CP-element group 104: marked-successors 
    -- CP-element group 104: 	102 
    -- CP-element group 104: 	53 
    -- CP-element group 104: 	49 
    -- CP-element group 104: 	23 
    -- CP-element group 104:  members (3) 
      -- CP-element group 104: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1372_Sample/$exit
      -- CP-element group 104: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1372_sample_completed_
      -- CP-element group 104: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1372_Sample/ack
      -- 
    ack_576_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 104_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_access_error_1370_inst_ack_0, ack => singleMemAccessAndSendResponse_CP_228_elements(104)); -- 
    -- CP-element group 105:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 105: predecessors 
    -- CP-element group 105: 	103 
    -- CP-element group 105: successors 
    -- CP-element group 105: 	106 
    -- CP-element group 105: marked-successors 
    -- CP-element group 105: 	103 
    -- CP-element group 105:  members (3) 
      -- CP-element group 105: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1372_Update/ack
      -- CP-element group 105: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1372_update_completed_
      -- CP-element group 105: 	 assign_stmt_1159_to_assign_stmt_1372/assign_stmt_1372_Update/$exit
      -- 
    ack_581_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 105_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_access_error_1370_inst_ack_1, ack => singleMemAccessAndSendResponse_CP_228_elements(105)); -- 
    -- CP-element group 106:  join  transition  bypass  pipeline-parent 
    -- CP-element group 106: predecessors 
    -- CP-element group 106: 	94 
    -- CP-element group 106: 	36 
    -- CP-element group 106: 	101 
    -- CP-element group 106: 	105 
    -- CP-element group 106: 	47 
    -- CP-element group 106: successors 
    -- CP-element group 106: 	127 
    -- CP-element group 106:  members (1) 
      -- CP-element group 106: 	 assign_stmt_1159_to_assign_stmt_1372/$exit
      -- 
    singleMemAccessAndSendResponse_cp_element_group_106: block -- 
      constant place_capacities: IntegerArray(0 to 4) := (0 => 15,1 => 15,2 => 15,3 => 1,4 => 15);
      constant place_markings: IntegerArray(0 to 4)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0);
      constant place_delays: IntegerArray(0 to 4) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0);
      constant joinName: string(1 to 51) := "singleMemAccessAndSendResponse_cp_element_group_106"; 
      signal preds: BooleanArray(1 to 5); -- 
    begin -- 
      preds <= singleMemAccessAndSendResponse_CP_228_elements(94) & singleMemAccessAndSendResponse_CP_228_elements(36) & singleMemAccessAndSendResponse_CP_228_elements(101) & singleMemAccessAndSendResponse_CP_228_elements(105) & singleMemAccessAndSendResponse_CP_228_elements(47);
      gj_singleMemAccessAndSendResponse_cp_element_group_106 : generic_join generic map(name => joinName, number_of_predecessors => 5, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => singleMemAccessAndSendResponse_CP_228_elements(106), clk => clk, reset => reset); --
    end block;
    -- CP-element group 107:  place  bypass  pipeline-parent 
    -- CP-element group 107: predecessors 
    -- CP-element group 107: 	2 
    -- CP-element group 107: successors 
    -- CP-element group 107:  members (1) 
      -- CP-element group 107: 	 ret_token_update_enable
      -- 
    singleMemAccessAndSendResponse_CP_228_elements(107) <= singleMemAccessAndSendResponse_CP_228_elements(2);
    -- CP-element group 108:  place  bypass  pipeline-parent 
    -- CP-element group 108: predecessors 
    -- CP-element group 108: 	3 
    -- CP-element group 108: successors 
    -- CP-element group 108:  members (1) 
      -- CP-element group 108: 	 lock_bus_update_enable
      -- 
    singleMemAccessAndSendResponse_CP_228_elements(108) <= singleMemAccessAndSendResponse_CP_228_elements(3);
    -- CP-element group 109:  place  bypass  pipeline-parent 
    -- CP-element group 109: predecessors 
    -- CP-element group 109: 	4 
    -- CP-element group 109: successors 
    -- CP-element group 109:  members (1) 
      -- CP-element group 109: 	 last_access_update_enable
      -- 
    singleMemAccessAndSendResponse_CP_228_elements(109) <= singleMemAccessAndSendResponse_CP_228_elements(4);
    -- CP-element group 110:  place  bypass  pipeline-parent 
    -- CP-element group 110: predecessors 
    -- CP-element group 110: 	5 
    -- CP-element group 110: successors 
    -- CP-element group 110:  members (1) 
      -- CP-element group 110: 	 send_to_dcache_update_enable
      -- 
    singleMemAccessAndSendResponse_CP_228_elements(110) <= singleMemAccessAndSendResponse_CP_228_elements(5);
    -- CP-element group 111:  place  bypass  pipeline-parent 
    -- CP-element group 111: predecessors 
    -- CP-element group 111: 	6 
    -- CP-element group 111: successors 
    -- CP-element group 111:  members (1) 
      -- CP-element group 111: 	 send_to_icache_update_enable
      -- 
    singleMemAccessAndSendResponse_CP_228_elements(111) <= singleMemAccessAndSendResponse_CP_228_elements(6);
    -- CP-element group 112:  place  bypass  pipeline-parent 
    -- CP-element group 112: predecessors 
    -- CP-element group 112: 	7 
    -- CP-element group 112: successors 
    -- CP-element group 112:  members (1) 
      -- CP-element group 112: 	 do_mem_write_update_enable
      -- 
    singleMemAccessAndSendResponse_CP_228_elements(112) <= singleMemAccessAndSendResponse_CP_228_elements(7);
    -- CP-element group 113:  place  bypass  pipeline-parent 
    -- CP-element group 113: predecessors 
    -- CP-element group 113: 	8 
    -- CP-element group 113: successors 
    -- CP-element group 113:  members (1) 
      -- CP-element group 113: 	 do_mem_read_update_enable
      -- 
    singleMemAccessAndSendResponse_CP_228_elements(113) <= singleMemAccessAndSendResponse_CP_228_elements(8);
    -- CP-element group 114:  place  bypass  pipeline-parent 
    -- CP-element group 114: predecessors 
    -- CP-element group 114: 	9 
    -- CP-element group 114: successors 
    -- CP-element group 114:  members (1) 
      -- CP-element group 114: 	 access_mem_line_update_enable
      -- 
    singleMemAccessAndSendResponse_CP_228_elements(114) <= singleMemAccessAndSendResponse_CP_228_elements(9);
    -- CP-element group 115:  place  bypass  pipeline-parent 
    -- CP-element group 115: predecessors 
    -- CP-element group 115: 	10 
    -- CP-element group 115: successors 
    -- CP-element group 115:  members (1) 
      -- CP-element group 115: 	 is_ctrl_reg_read_update_enable
      -- 
    singleMemAccessAndSendResponse_CP_228_elements(115) <= singleMemAccessAndSendResponse_CP_228_elements(10);
    -- CP-element group 116:  place  bypass  pipeline-parent 
    -- CP-element group 116: predecessors 
    -- CP-element group 116: 	11 
    -- CP-element group 116: successors 
    -- CP-element group 116:  members (1) 
      -- CP-element group 116: 	 do_not_send_write_response_update_enable
      -- 
    singleMemAccessAndSendResponse_CP_228_elements(116) <= singleMemAccessAndSendResponse_CP_228_elements(11);
    -- CP-element group 117:  place  bypass  pipeline-parent 
    -- CP-element group 117: predecessors 
    -- CP-element group 117: 	12 
    -- CP-element group 117: successors 
    -- CP-element group 117:  members (1) 
      -- CP-element group 117: 	 acc_update_enable
      -- 
    singleMemAccessAndSendResponse_CP_228_elements(117) <= singleMemAccessAndSendResponse_CP_228_elements(12);
    -- CP-element group 118:  place  bypass  pipeline-parent 
    -- CP-element group 118: predecessors 
    -- CP-element group 118: 	13 
    -- CP-element group 118: successors 
    -- CP-element group 118:  members (1) 
      -- CP-element group 118: 	 faulty_fsr_generated_update_enable
      -- 
    singleMemAccessAndSendResponse_CP_228_elements(118) <= singleMemAccessAndSendResponse_CP_228_elements(13);
    -- CP-element group 119:  place  bypass  pipeline-parent 
    -- CP-element group 119: predecessors 
    -- CP-element group 119: 	14 
    -- CP-element group 119: successors 
    -- CP-element group 119:  members (1) 
      -- CP-element group 119: 	 cacheable_update_enable
      -- 
    singleMemAccessAndSendResponse_CP_228_elements(119) <= singleMemAccessAndSendResponse_CP_228_elements(14);
    -- CP-element group 120:  place  bypass  pipeline-parent 
    -- CP-element group 120: predecessors 
    -- CP-element group 120: 	15 
    -- CP-element group 120: successors 
    -- CP-element group 120:  members (1) 
      -- CP-element group 120: 	 mae_update_enable
      -- 
    singleMemAccessAndSendResponse_CP_228_elements(120) <= singleMemAccessAndSendResponse_CP_228_elements(15);
    -- CP-element group 121:  place  bypass  pipeline-parent 
    -- CP-element group 121: predecessors 
    -- CP-element group 121: 	16 
    -- CP-element group 121: successors 
    -- CP-element group 121:  members (1) 
      -- CP-element group 121: 	 pte_error_update_enable
      -- 
    singleMemAccessAndSendResponse_CP_228_elements(121) <= singleMemAccessAndSendResponse_CP_228_elements(16);
    -- CP-element group 122:  place  bypass  pipeline-parent 
    -- CP-element group 122: predecessors 
    -- CP-element group 122: 	17 
    -- CP-element group 122: successors 
    -- CP-element group 122:  members (1) 
      -- CP-element group 122: 	 fsr_update_enable
      -- 
    singleMemAccessAndSendResponse_CP_228_elements(122) <= singleMemAccessAndSendResponse_CP_228_elements(17);
    -- CP-element group 123:  place  bypass  pipeline-parent 
    -- CP-element group 123: predecessors 
    -- CP-element group 123: 	18 
    -- CP-element group 123: successors 
    -- CP-element group 123:  members (1) 
      -- CP-element group 123: 	 byte_mask_update_enable
      -- 
    singleMemAccessAndSendResponse_CP_228_elements(123) <= singleMemAccessAndSendResponse_CP_228_elements(18);
    -- CP-element group 124:  place  bypass  pipeline-parent 
    -- CP-element group 124: predecessors 
    -- CP-element group 124: 	19 
    -- CP-element group 124: successors 
    -- CP-element group 124:  members (1) 
      -- CP-element group 124: 	 addr_update_enable
      -- 
    singleMemAccessAndSendResponse_CP_228_elements(124) <= singleMemAccessAndSendResponse_CP_228_elements(19);
    -- CP-element group 125:  place  bypass  pipeline-parent 
    -- CP-element group 125: predecessors 
    -- CP-element group 125: 	20 
    -- CP-element group 125: successors 
    -- CP-element group 125:  members (1) 
      -- CP-element group 125: 	 write_data_update_enable
      -- 
    singleMemAccessAndSendResponse_CP_228_elements(125) <= singleMemAccessAndSendResponse_CP_228_elements(20);
    -- CP-element group 126:  place  bypass  pipeline-parent 
    -- CP-element group 126: predecessors 
    -- CP-element group 126: successors 
    -- CP-element group 126: 	21 
    -- CP-element group 126:  members (1) 
      -- CP-element group 126: 	 access_error_update_enable
      -- 
    -- CP-element group 127:  transition  bypass  pipeline-parent 
    -- CP-element group 127: predecessors 
    -- CP-element group 127: 	106 
    -- CP-element group 127: successors 
    -- CP-element group 127:  members (1) 
      -- CP-element group 127: 	 $exit
      -- 
    singleMemAccessAndSendResponse_CP_228_elements(127) <= singleMemAccessAndSendResponse_CP_228_elements(106);
    --  hookup: inputs to control-path 
    singleMemAccessAndSendResponse_CP_228_elements(126) <= access_error_update_enable;
    -- hookup: output from control-path 
    do_mem_write_update_enable <= singleMemAccessAndSendResponse_CP_228_elements(112);
    addr_update_enable <= singleMemAccessAndSendResponse_CP_228_elements(124);
    fsr_update_enable <= singleMemAccessAndSendResponse_CP_228_elements(122);
    lock_bus_update_enable <= singleMemAccessAndSendResponse_CP_228_elements(108);
    faulty_fsr_generated_update_enable <= singleMemAccessAndSendResponse_CP_228_elements(118);
    send_to_dcache_update_enable <= singleMemAccessAndSendResponse_CP_228_elements(110);
    access_mem_line_update_enable <= singleMemAccessAndSendResponse_CP_228_elements(114);
    acc_update_enable <= singleMemAccessAndSendResponse_CP_228_elements(117);
    send_to_icache_update_enable <= singleMemAccessAndSendResponse_CP_228_elements(111);
    byte_mask_update_enable <= singleMemAccessAndSendResponse_CP_228_elements(123);
    do_mem_read_update_enable <= singleMemAccessAndSendResponse_CP_228_elements(113);
    mae_update_enable <= singleMemAccessAndSendResponse_CP_228_elements(120);
    do_not_send_write_response_update_enable <= singleMemAccessAndSendResponse_CP_228_elements(116);
    is_ctrl_reg_read_update_enable <= singleMemAccessAndSendResponse_CP_228_elements(115);
    ret_token_update_enable <= singleMemAccessAndSendResponse_CP_228_elements(107);
    pte_error_update_enable <= singleMemAccessAndSendResponse_CP_228_elements(121);
    write_data_update_enable <= singleMemAccessAndSendResponse_CP_228_elements(125);
    last_access_update_enable <= singleMemAccessAndSendResponse_CP_228_elements(109);
    cacheable_update_enable <= singleMemAccessAndSendResponse_CP_228_elements(119);
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_1181_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1184_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1190_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1248_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1270_1270_delayed_8_0_1262 : std_logic_vector(0 downto 0);
    signal CONCAT_u18_u82_1325_wire : std_logic_vector(81 downto 0);
    signal CONCAT_u1_u2_1292_1292_delayed_8_0_1291 : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_1322_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u4_1281_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u1_u4_1284_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u1_u4_1304_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u1_u65_1297_wire : std_logic_vector(64 downto 0);
    signal CONCAT_u2_u67_1298_wire : std_logic_vector(66 downto 0);
    signal CONCAT_u2_u84_1326_wire : std_logic_vector(83 downto 0);
    signal CONCAT_u3_u4_1309_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u4_u5_1306_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u4_u8_1289_1289_delayed_8_0_1286 : std_logic_vector(7 downto 0);
    signal CONCAT_u5_u9_1308_1308_delayed_8_0_1311 : std_logic_vector(8 downto 0);
    signal MUX_1269_wire : std_logic_vector(63 downto 0);
    signal NOT_u1_u1_1178_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1180_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1183_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1189_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1196_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1332_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1187_wire : std_logic_vector(0 downto 0);
    signal addr_5_3_1159 : std_logic_vector(2 downto 0);
    signal do_mem_access_1192 : std_logic_vector(0 downto 0);
    signal do_mem_access_1256_delayed_8_0_1243 : std_logic_vector(0 downto 0);
    signal dword_id_1274 : std_logic_vector(2 downto 0);
    signal dword_to_be_sent_1271 : std_logic_vector(63 downto 0);
    signal fsr_1312_delayed_8_0_1317 : std_logic_vector(17 downto 0);
    signal inval_slot_ret_val_1215 : std_logic_vector(0 downto 0);
    signal inval_slot_return_1198 : std_logic_vector(0 downto 0);
    signal inval_slot_return_1237_delayed_8_0_1210 : std_logic_vector(0 downto 0);
    signal inval_slot_return_1241_delayed_8_0_1218 : std_logic_vector(0 downto 0);
    signal is_ctrl_reg_read_1266_delayed_8_0_1257 : std_logic_vector(0 downto 0);
    signal konst_1268_wire_constant : std_logic_vector(63 downto 0);
    signal last_to_cache_1277 : std_logic_vector(0 downto 0);
    signal mae_1309_delayed_8_0_1314 : std_logic_vector(0 downto 0);
    signal mem_access_error_raw_1207 : std_logic_vector(0 downto 0);
    signal pte_error_1255_delayed_8_0_1240 : std_logic_vector(0 downto 0);
    signal read_dword_1207 : std_logic_vector(63 downto 0);
    signal really_send_to_dcache_1324_delayed_8_0_1337 : std_logic_vector(0 downto 0);
    signal really_send_to_dcache_1334 : std_logic_vector(0 downto 0);
    signal ret_token_1246_delayed_8_0_1225 : std_logic_vector(0 downto 0);
    signal ret_token_1250_delayed_8_0_1233 : std_logic_vector(0 downto 0);
    signal ret_token_val_1230 : std_logic_vector(0 downto 0);
    signal send_to_icache_1337_delayed_8_0_1353 : std_logic_vector(0 downto 0);
    signal there_was_an_access_error_1250 : std_logic_vector(0 downto 0);
    signal to_dcache_1300 : std_logic_vector(74 downto 0);
    signal to_icache_1328 : std_logic_vector(92 downto 0);
    signal write_data_delayed_1254 : std_logic_vector(63 downto 0);
    -- 
  begin -- 
    konst_1268_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000000";
    -- flow-through select operator MUX_1269_inst
    MUX_1269_wire <= read_dword_1207 when (AND_u1_u1_1270_1270_delayed_8_0_1262(0) /=  '0') else konst_1268_wire_constant;
    -- flow-through select operator MUX_1270_inst
    dword_to_be_sent_1271 <= write_data_delayed_1254 when (is_ctrl_reg_read_1266_delayed_8_0_1257(0) /=  '0') else MUX_1269_wire;
    -- flow-through slice operator slice_1158_inst
    addr_5_3_1159 <= addr_buffer(5 downto 3);
    W_access_error_1370_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_access_error_1370_inst_req_0;
      W_access_error_1370_inst_ack_0<= wack(0);
      rreq(0) <= W_access_error_1370_inst_req_1;
      W_access_error_1370_inst_ack_1<= rack(0);
      W_access_error_1370_inst : InterlockBuffer generic map ( -- 
        name => "W_access_error_1370_inst",
        buffer_size => 2,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 1,
        out_data_width => 1,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => there_was_an_access_error_1250,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => access_error_buffer,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    W_do_mem_access_1256_delayed_8_0_1241_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_do_mem_access_1256_delayed_8_0_1241_inst_req_0;
      W_do_mem_access_1256_delayed_8_0_1241_inst_ack_0<= wack(0);
      rreq(0) <= W_do_mem_access_1256_delayed_8_0_1241_inst_req_1;
      W_do_mem_access_1256_delayed_8_0_1241_inst_ack_1<= rack(0);
      W_do_mem_access_1256_delayed_8_0_1241_inst : InterlockBuffer generic map ( -- 
        name => "W_do_mem_access_1256_delayed_8_0_1241_inst",
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
        write_data => do_mem_access_1192,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => do_mem_access_1256_delayed_8_0_1243,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    -- interlock W_dword_id_1272_inst
    process(addr_5_3_1159) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 2 downto 0) := addr_5_3_1159(2 downto 0);
      dword_id_1274 <= tmp_var; -- 
    end process;
    W_fsr_1312_delayed_8_0_1315_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_fsr_1312_delayed_8_0_1315_inst_req_0;
      W_fsr_1312_delayed_8_0_1315_inst_ack_0<= wack(0);
      rreq(0) <= W_fsr_1312_delayed_8_0_1315_inst_req_1;
      W_fsr_1312_delayed_8_0_1315_inst_ack_1<= rack(0);
      W_fsr_1312_delayed_8_0_1315_inst : InterlockBuffer generic map ( -- 
        name => "W_fsr_1312_delayed_8_0_1315_inst",
        buffer_size => 8,
        flow_through =>  false ,
        cut_through =>  true ,
        in_data_width => 18,
        out_data_width => 18,
        bypass_flag =>  true 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => fsr_buffer,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => fsr_1312_delayed_8_0_1317,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    W_inval_slot_return_1237_delayed_8_0_1208_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_inval_slot_return_1237_delayed_8_0_1208_inst_req_0;
      W_inval_slot_return_1237_delayed_8_0_1208_inst_ack_0<= wack(0);
      rreq(0) <= W_inval_slot_return_1237_delayed_8_0_1208_inst_req_1;
      W_inval_slot_return_1237_delayed_8_0_1208_inst_ack_1<= rack(0);
      W_inval_slot_return_1237_delayed_8_0_1208_inst : InterlockBuffer generic map ( -- 
        name => "W_inval_slot_return_1237_delayed_8_0_1208_inst",
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
        write_data => inval_slot_return_1198,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => inval_slot_return_1237_delayed_8_0_1210,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    W_inval_slot_return_1241_delayed_8_0_1216_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_inval_slot_return_1241_delayed_8_0_1216_inst_req_0;
      W_inval_slot_return_1241_delayed_8_0_1216_inst_ack_0<= wack(0);
      rreq(0) <= W_inval_slot_return_1241_delayed_8_0_1216_inst_req_1;
      W_inval_slot_return_1241_delayed_8_0_1216_inst_ack_1<= rack(0);
      W_inval_slot_return_1241_delayed_8_0_1216_inst : InterlockBuffer generic map ( -- 
        name => "W_inval_slot_return_1241_delayed_8_0_1216_inst",
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
        write_data => inval_slot_return_1198,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => inval_slot_return_1241_delayed_8_0_1218,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    W_is_ctrl_reg_read_1266_delayed_8_0_1255_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_is_ctrl_reg_read_1266_delayed_8_0_1255_inst_req_0;
      W_is_ctrl_reg_read_1266_delayed_8_0_1255_inst_ack_0<= wack(0);
      rreq(0) <= W_is_ctrl_reg_read_1266_delayed_8_0_1255_inst_req_1;
      W_is_ctrl_reg_read_1266_delayed_8_0_1255_inst_ack_1<= rack(0);
      W_is_ctrl_reg_read_1266_delayed_8_0_1255_inst : InterlockBuffer generic map ( -- 
        name => "W_is_ctrl_reg_read_1266_delayed_8_0_1255_inst",
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
        write_data => is_ctrl_reg_read_buffer,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => is_ctrl_reg_read_1266_delayed_8_0_1257,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    -- interlock W_last_to_cache_1275_inst
    process(last_access_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := last_access_buffer(0 downto 0);
      last_to_cache_1277 <= tmp_var; -- 
    end process;
    W_mae_1309_delayed_8_0_1312_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_mae_1309_delayed_8_0_1312_inst_req_0;
      W_mae_1309_delayed_8_0_1312_inst_ack_0<= wack(0);
      rreq(0) <= W_mae_1309_delayed_8_0_1312_inst_req_1;
      W_mae_1309_delayed_8_0_1312_inst_ack_1<= rack(0);
      W_mae_1309_delayed_8_0_1312_inst : InterlockBuffer generic map ( -- 
        name => "W_mae_1309_delayed_8_0_1312_inst",
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
        write_data => mae_buffer,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => mae_1309_delayed_8_0_1314,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    W_pte_error_1255_delayed_8_0_1238_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_pte_error_1255_delayed_8_0_1238_inst_req_0;
      W_pte_error_1255_delayed_8_0_1238_inst_ack_0<= wack(0);
      rreq(0) <= W_pte_error_1255_delayed_8_0_1238_inst_req_1;
      W_pte_error_1255_delayed_8_0_1238_inst_ack_1<= rack(0);
      W_pte_error_1255_delayed_8_0_1238_inst : InterlockBuffer generic map ( -- 
        name => "W_pte_error_1255_delayed_8_0_1238_inst",
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
        write_data => pte_error_buffer,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => pte_error_1255_delayed_8_0_1240,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    W_really_send_to_dcache_1324_delayed_8_0_1335_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_really_send_to_dcache_1324_delayed_8_0_1335_inst_req_0;
      W_really_send_to_dcache_1324_delayed_8_0_1335_inst_ack_0<= wack(0);
      rreq(0) <= W_really_send_to_dcache_1324_delayed_8_0_1335_inst_req_1;
      W_really_send_to_dcache_1324_delayed_8_0_1335_inst_ack_1<= rack(0);
      W_really_send_to_dcache_1324_delayed_8_0_1335_inst : InterlockBuffer generic map ( -- 
        name => "W_really_send_to_dcache_1324_delayed_8_0_1335_inst",
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
        write_data => really_send_to_dcache_1334,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => really_send_to_dcache_1324_delayed_8_0_1337,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    W_ret_token_1246_delayed_8_0_1223_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_ret_token_1246_delayed_8_0_1223_inst_req_0;
      W_ret_token_1246_delayed_8_0_1223_inst_ack_0<= wack(0);
      rreq(0) <= W_ret_token_1246_delayed_8_0_1223_inst_req_1;
      W_ret_token_1246_delayed_8_0_1223_inst_ack_1<= rack(0);
      W_ret_token_1246_delayed_8_0_1223_inst : InterlockBuffer generic map ( -- 
        name => "W_ret_token_1246_delayed_8_0_1223_inst",
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
        write_data => ret_token_buffer,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => ret_token_1246_delayed_8_0_1225,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    W_ret_token_1250_delayed_8_0_1231_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_ret_token_1250_delayed_8_0_1231_inst_req_0;
      W_ret_token_1250_delayed_8_0_1231_inst_ack_0<= wack(0);
      rreq(0) <= W_ret_token_1250_delayed_8_0_1231_inst_req_1;
      W_ret_token_1250_delayed_8_0_1231_inst_ack_1<= rack(0);
      W_ret_token_1250_delayed_8_0_1231_inst : InterlockBuffer generic map ( -- 
        name => "W_ret_token_1250_delayed_8_0_1231_inst",
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
        write_data => ret_token_buffer,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => ret_token_1250_delayed_8_0_1233,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    W_send_to_icache_1337_delayed_8_0_1351_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_send_to_icache_1337_delayed_8_0_1351_inst_req_0;
      W_send_to_icache_1337_delayed_8_0_1351_inst_ack_0<= wack(0);
      rreq(0) <= W_send_to_icache_1337_delayed_8_0_1351_inst_req_1;
      W_send_to_icache_1337_delayed_8_0_1351_inst_ack_1<= rack(0);
      W_send_to_icache_1337_delayed_8_0_1351_inst : InterlockBuffer generic map ( -- 
        name => "W_send_to_icache_1337_delayed_8_0_1351_inst",
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
        write_data => send_to_icache_buffer,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => send_to_icache_1337_delayed_8_0_1353,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    -- flow through binary operator AND_u1_u1_1181_inst
    AND_u1_u1_1181_wire <= (NOT_u1_u1_1178_wire and NOT_u1_u1_1180_wire);
    -- flow through binary operator AND_u1_u1_1184_inst
    AND_u1_u1_1184_wire <= (AND_u1_u1_1181_wire and NOT_u1_u1_1183_wire);
    -- flow through binary operator AND_u1_u1_1190_inst
    AND_u1_u1_1190_wire <= (OR_u1_u1_1187_wire and NOT_u1_u1_1189_wire);
    -- flow through binary operator AND_u1_u1_1191_inst
    do_mem_access_1192 <= (AND_u1_u1_1184_wire and AND_u1_u1_1190_wire);
    -- flow through binary operator AND_u1_u1_1197_inst
    inval_slot_return_1198 <= (do_mem_write_buffer and NOT_u1_u1_1196_wire);
    -- flow through binary operator AND_u1_u1_1248_inst
    AND_u1_u1_1248_wire <= (do_mem_access_1256_delayed_8_0_1243 and mem_access_error_raw_1207);
    -- shared split operator group (6) : AND_u1_u1_1261_inst 
    ApIntAnd_group_6: Block -- 
      signal data_in: std_logic_vector(1 downto 0);
      signal data_out: std_logic_vector(0 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 8);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      data_in <= do_mem_access_1192 & do_mem_read_buffer;
      AND_u1_u1_1270_1270_delayed_8_0_1262 <= data_out(0 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= AND_u1_u1_1261_inst_req_0;
      AND_u1_u1_1261_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= AND_u1_u1_1261_inst_req_1;
      AND_u1_u1_1261_inst_ack_1 <= ackR_unguarded(0);
      ApIntAnd_group_6_gI: SplitGuardInterface generic map(name => "ApIntAnd_group_6_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
      UnsharedOperator: UnsharedOperatorWithBuffering -- 
        generic map ( -- 
          operator_id => "ApIntAnd",
          name => "ApIntAnd_group_6",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 1,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 1, 
          num_inputs    => 2,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 1,
          constant_operand => "0",
          constant_width => 1,
          buffering  => 8,
          flow_through => false,
          full_rate  => true,
          use_constant  => false
          --
        ) 
        port map ( -- 
          reqL => reqL(0),
          ackL => ackL(0),
          reqR => reqR(0),
          ackR => ackR(0),
          dataL => data_in, 
          dataR => data_out,
          clk => clk,
          reset => reset); -- 
      -- 
    end Block; -- split operator group 6
    -- flow through binary operator AND_u1_u1_1333_inst
    really_send_to_dcache_1334 <= (send_to_dcache_buffer and NOT_u1_u1_1332_wire);
    -- flow through binary operator CONCAT_u18_u82_1325_inst
    process(fsr_1312_delayed_8_0_1317, dword_to_be_sent_1271) -- 
      variable tmp_var : std_logic_vector(81 downto 0); -- 
    begin -- 
      ApConcat_proc(fsr_1312_delayed_8_0_1317, dword_to_be_sent_1271, tmp_var);
      CONCAT_u18_u82_1325_wire <= tmp_var; --
    end process;
    -- shared split operator group (9) : CONCAT_u1_u2_1290_inst 
    ApConcat_group_9: Block -- 
      signal data_in: std_logic_vector(1 downto 0);
      signal data_out: std_logic_vector(1 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 8);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      data_in <= cacheable_buffer & mae_buffer;
      CONCAT_u1_u2_1292_1292_delayed_8_0_1291 <= data_out(1 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= CONCAT_u1_u2_1290_inst_req_0;
      CONCAT_u1_u2_1290_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= CONCAT_u1_u2_1290_inst_req_1;
      CONCAT_u1_u2_1290_inst_ack_1 <= ackR_unguarded(0);
      ApConcat_group_9_gI: SplitGuardInterface generic map(name => "ApConcat_group_9_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
      UnsharedOperator: UnsharedOperatorWithBuffering -- 
        generic map ( -- 
          operator_id => "ApConcat",
          name => "ApConcat_group_9",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 1,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 1, 
          num_inputs    => 2,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 2,
          constant_operand => "0",
          constant_width => 1,
          buffering  => 8,
          flow_through => false,
          full_rate  => true,
          use_constant  => false
          --
        ) 
        port map ( -- 
          reqL => reqL(0),
          ackL => ackL(0),
          reqR => reqR(0),
          ackR => ackR(0),
          dataL => data_in, 
          dataR => data_out,
          clk => clk,
          reset => reset); -- 
      -- 
    end Block; -- split operator group 9
    -- flow through binary operator CONCAT_u1_u2_1322_inst
    process(mae_1309_delayed_8_0_1314, there_was_an_access_error_1250) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(mae_1309_delayed_8_0_1314, there_was_an_access_error_1250, tmp_var);
      CONCAT_u1_u2_1322_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u4_1281_inst
    process(access_mem_line_buffer, dword_id_1274) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(access_mem_line_buffer, dword_id_1274, tmp_var);
      CONCAT_u1_u4_1281_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u4_1284_inst
    process(last_to_cache_1277, acc_buffer) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(last_to_cache_1277, acc_buffer, tmp_var);
      CONCAT_u1_u4_1284_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u4_1304_inst
    process(access_mem_line_buffer, dword_id_1274) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(access_mem_line_buffer, dword_id_1274, tmp_var);
      CONCAT_u1_u4_1304_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u65_1297_inst
    process(there_was_an_access_error_1250, dword_to_be_sent_1271) -- 
      variable tmp_var : std_logic_vector(64 downto 0); -- 
    begin -- 
      ApConcat_proc(there_was_an_access_error_1250, dword_to_be_sent_1271, tmp_var);
      CONCAT_u1_u65_1297_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u67_1298_inst
    process(CONCAT_u1_u2_1292_1292_delayed_8_0_1291, CONCAT_u1_u65_1297_wire) -- 
      variable tmp_var : std_logic_vector(66 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_1292_1292_delayed_8_0_1291, CONCAT_u1_u65_1297_wire, tmp_var);
      CONCAT_u2_u67_1298_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u84_1326_inst
    process(CONCAT_u1_u2_1322_wire, CONCAT_u18_u82_1325_wire) -- 
      variable tmp_var : std_logic_vector(83 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_1322_wire, CONCAT_u18_u82_1325_wire, tmp_var);
      CONCAT_u2_u84_1326_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u4_1309_inst
    process(acc_buffer, cacheable_buffer) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(acc_buffer, cacheable_buffer, tmp_var);
      CONCAT_u3_u4_1309_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u5_1306_inst
    process(CONCAT_u1_u4_1304_wire, last_to_cache_1277) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u4_1304_wire, last_to_cache_1277, tmp_var);
      CONCAT_u4_u5_1306_wire <= tmp_var; --
    end process;
    -- shared split operator group (19) : CONCAT_u4_u8_1285_inst 
    ApConcat_group_19: Block -- 
      signal data_in: std_logic_vector(7 downto 0);
      signal data_out: std_logic_vector(7 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 8);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      data_in <= CONCAT_u1_u4_1281_wire & CONCAT_u1_u4_1284_wire;
      CONCAT_u4_u8_1289_1289_delayed_8_0_1286 <= data_out(7 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= CONCAT_u4_u8_1285_inst_req_0;
      CONCAT_u4_u8_1285_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= CONCAT_u4_u8_1285_inst_req_1;
      CONCAT_u4_u8_1285_inst_ack_1 <= ackR_unguarded(0);
      ApConcat_group_19_gI: SplitGuardInterface generic map(name => "ApConcat_group_19_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
      UnsharedOperator: UnsharedOperatorWithBuffering -- 
        generic map ( -- 
          operator_id => "ApConcat",
          name => "ApConcat_group_19",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 4,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 4, 
          num_inputs    => 2,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 8,
          constant_operand => "0",
          constant_width => 1,
          buffering  => 8,
          flow_through => false,
          full_rate  => true,
          use_constant  => false
          --
        ) 
        port map ( -- 
          reqL => reqL(0),
          ackL => ackL(0),
          reqR => reqR(0),
          ackR => ackR(0),
          dataL => data_in, 
          dataR => data_out,
          clk => clk,
          reset => reset); -- 
      -- 
    end Block; -- split operator group 19
    -- shared split operator group (20) : CONCAT_u5_u9_1310_inst 
    ApConcat_group_20: Block -- 
      signal data_in: std_logic_vector(8 downto 0);
      signal data_out: std_logic_vector(8 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 8);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      data_in <= CONCAT_u4_u5_1306_wire & CONCAT_u3_u4_1309_wire;
      CONCAT_u5_u9_1308_1308_delayed_8_0_1311 <= data_out(8 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= CONCAT_u5_u9_1310_inst_req_0;
      CONCAT_u5_u9_1310_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= CONCAT_u5_u9_1310_inst_req_1;
      CONCAT_u5_u9_1310_inst_ack_1 <= ackR_unguarded(0);
      ApConcat_group_20_gI: SplitGuardInterface generic map(name => "ApConcat_group_20_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
      UnsharedOperator: UnsharedOperatorWithBuffering -- 
        generic map ( -- 
          operator_id => "ApConcat",
          name => "ApConcat_group_20",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 5,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 4, 
          num_inputs    => 2,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 9,
          constant_operand => "0",
          constant_width => 1,
          buffering  => 8,
          flow_through => false,
          full_rate  => true,
          use_constant  => false
          --
        ) 
        port map ( -- 
          reqL => reqL(0),
          ackL => ackL(0),
          reqR => reqR(0),
          ackR => ackR(0),
          dataL => data_in, 
          dataR => data_out,
          clk => clk,
          reset => reset); -- 
      -- 
    end Block; -- split operator group 20
    -- flow through binary operator CONCAT_u8_u75_1299_inst
    process(CONCAT_u4_u8_1289_1289_delayed_8_0_1286, CONCAT_u2_u67_1298_wire) -- 
      variable tmp_var : std_logic_vector(74 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u8_1289_1289_delayed_8_0_1286, CONCAT_u2_u67_1298_wire, tmp_var);
      to_dcache_1300 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u9_u93_1327_inst
    process(CONCAT_u5_u9_1308_1308_delayed_8_0_1311, CONCAT_u2_u84_1326_wire) -- 
      variable tmp_var : std_logic_vector(92 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u5_u9_1308_1308_delayed_8_0_1311, CONCAT_u2_u84_1326_wire, tmp_var);
      to_icache_1328 <= tmp_var; --
    end process;
    -- unary operator NOT_u1_u1_1178_inst
    process(pte_error_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", pte_error_buffer, tmp_var);
      NOT_u1_u1_1178_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_1180_inst
    process(mae_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", mae_buffer, tmp_var);
      NOT_u1_u1_1180_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_1183_inst
    process(faulty_fsr_generated_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", faulty_fsr_generated_buffer, tmp_var);
      NOT_u1_u1_1183_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_1189_inst
    process(is_ctrl_reg_read_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", is_ctrl_reg_read_buffer, tmp_var);
      NOT_u1_u1_1189_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_1196_inst
    process(is_ctrl_reg_read_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", is_ctrl_reg_read_buffer, tmp_var);
      NOT_u1_u1_1196_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_1332_inst
    process(do_not_send_write_response_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", do_not_send_write_response_buffer, tmp_var);
      NOT_u1_u1_1332_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator OR_u1_u1_1187_inst
    OR_u1_u1_1187_wire <= (do_mem_write_buffer or do_mem_read_buffer);
    -- flow through binary operator OR_u1_u1_1214_inst
    inval_slot_ret_val_1215 <= (inval_slot_return_1237_delayed_8_0_1210 or mem_access_error_raw_1207);
    -- flow through binary operator OR_u1_u1_1229_inst
    ret_token_val_1230 <= (ret_token_1246_delayed_8_0_1225 or mem_access_error_raw_1207);
    -- flow through binary operator OR_u1_u1_1249_inst
    there_was_an_access_error_1250 <= (pte_error_1255_delayed_8_0_1240 or AND_u1_u1_1248_wire);
    -- shared outport operator group (0) : WPIPE_MMU_to_DCACHE_response_1339_inst 
    OutportGroup_0: Block -- 
      signal data_in: std_logic_vector(74 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_MMU_to_DCACHE_response_1339_inst_req_0;
      WPIPE_MMU_to_DCACHE_response_1339_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_MMU_to_DCACHE_response_1339_inst_req_1;
      WPIPE_MMU_to_DCACHE_response_1339_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= really_send_to_dcache_1324_delayed_8_0_1337(0);
      data_in <= to_dcache_1300;
      MMU_to_DCACHE_response_write_0_gI: SplitGuardInterface generic map(name => "MMU_to_DCACHE_response_write_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      MMU_to_DCACHE_response_write_0: OutputPortRevised -- 
        generic map ( name => "MMU_to_DCACHE_response", data_width => 75, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => MMU_to_DCACHE_response_pipe_write_req(0),
          oack => MMU_to_DCACHE_response_pipe_write_ack(0),
          odata => MMU_to_DCACHE_response_pipe_write_data(74 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    -- shared outport operator group (1) : WPIPE_MMU_to_ICACHE_response_1355_inst 
    OutportGroup_1: Block -- 
      signal data_in: std_logic_vector(92 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_MMU_to_ICACHE_response_1355_inst_req_0;
      WPIPE_MMU_to_ICACHE_response_1355_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_MMU_to_ICACHE_response_1355_inst_req_1;
      WPIPE_MMU_to_ICACHE_response_1355_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= send_to_icache_1337_delayed_8_0_1353(0);
      data_in <= to_icache_1328;
      MMU_to_ICACHE_response_write_1_gI: SplitGuardInterface generic map(name => "MMU_to_ICACHE_response_write_1_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      MMU_to_ICACHE_response_write_1: OutputPortRevised -- 
        generic map ( name => "MMU_to_ICACHE_response", data_width => 93, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => MMU_to_ICACHE_response_pipe_write_req(0),
          oack => MMU_to_ICACHE_response_pipe_write_ack(0),
          odata => MMU_to_ICACHE_response_pipe_write_data(92 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 1
    -- shared outport operator group (2) : WPIPE_NOBLOCK_INVALIDATE_SLOT_RETURN_1220_inst 
    OutportGroup_2: Block -- 
      signal data_in: std_logic_vector(0 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_NOBLOCK_INVALIDATE_SLOT_RETURN_1220_inst_req_0;
      WPIPE_NOBLOCK_INVALIDATE_SLOT_RETURN_1220_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_NOBLOCK_INVALIDATE_SLOT_RETURN_1220_inst_req_1;
      WPIPE_NOBLOCK_INVALIDATE_SLOT_RETURN_1220_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= inval_slot_return_1241_delayed_8_0_1218(0);
      data_in <= inval_slot_ret_val_1215;
      NOBLOCK_INVALIDATE_SLOT_RETURN_write_2_gI: SplitGuardInterface generic map(name => "NOBLOCK_INVALIDATE_SLOT_RETURN_write_2_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      NOBLOCK_INVALIDATE_SLOT_RETURN_write_2: OutputPortRevised -- 
        generic map ( name => "NOBLOCK_INVALIDATE_SLOT_RETURN", data_width => 1, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_req(0),
          oack => NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_ack(0),
          odata => NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_data(0 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 2
    -- shared outport operator group (3) : WPIPE_noblock_dword_token_return_1235_inst 
    OutportGroup_3: Block -- 
      signal data_in: std_logic_vector(0 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_noblock_dword_token_return_1235_inst_req_0;
      WPIPE_noblock_dword_token_return_1235_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_noblock_dword_token_return_1235_inst_req_1;
      WPIPE_noblock_dword_token_return_1235_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= ret_token_1250_delayed_8_0_1233(0);
      data_in <= ret_token_val_1230;
      noblock_dword_token_return_write_3_gI: SplitGuardInterface generic map(name => "noblock_dword_token_return_write_3_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      noblock_dword_token_return_write_3: OutputPortRevised -- 
        generic map ( name => "noblock_dword_token_return", data_width => 1, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => noblock_dword_token_return_pipe_write_req(0),
          oack => noblock_dword_token_return_pipe_write_ack(0),
          odata => noblock_dword_token_return_pipe_write_data(0 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 3
    -- shared call operator group (0) : call_stmt_1207_call 
    singleMemAccess_call_group_0: Block -- 
      signal data_in: std_logic_vector(109 downto 0);
      signal data_out: std_logic_vector(64 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqL_unregulated, ackL_unregulated : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 2);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 2);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 8);
      -- 
    begin -- 
      reqL_unguarded(0) <= call_stmt_1207_call_req_0;
      call_stmt_1207_call_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= call_stmt_1207_call_req_1;
      call_stmt_1207_call_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <= do_mem_access_1192(0);
      reqL <= reqL_unregulated;
      ackL_unregulated <= ackL;
      singleMemAccess_call_group_0_gI: SplitGuardInterface generic map(name => "singleMemAccess_call_group_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL_unregulated,
        sa_in => ackL_unregulated,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      data_in <= lock_bus_buffer & do_mem_write_buffer & addr_buffer & byte_mask_buffer & write_data_buffer;
      read_dword_1207 <= data_out(64 downto 1);
      mem_access_error_raw_1207 <= data_out(0 downto 0);
      CallReq: InputMuxWithBuffering -- 
        generic map (name => "InputMuxWithBuffering",
        iwidth => 110,
        owidth => 110,
        buffering => inBUFs,
        full_rate =>  true,
        twidth => 1,
        nreqs => 1,
        registered_output => false,
        no_arbitration => false)
        port map ( -- 
          reqL => reqL , 
          ackL => ackL , 
          dataL => data_in, 
          reqR => singleMemAccess_call_reqs(0),
          ackR => singleMemAccess_call_acks(0),
          dataR => singleMemAccess_call_data(109 downto 0),
          tagR => singleMemAccess_call_tag(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      CallComplete: OutputDemuxBaseWithBuffering -- 
        generic map ( -- 
          iwidth => 65,
          owidth => 65,
          detailed_buffering_per_output => outBUFs, 
          full_rate => true, 
          twidth => 1,
          name => "OutputDemuxBaseWithBuffering",
          nreqs => 1) -- 
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          dataR => data_out, 
          reqL => singleMemAccess_return_acks(0), -- cross-over
          ackL => singleMemAccess_return_reqs(0), -- cross-over
          dataL => singleMemAccess_return_data(64 downto 0),
          tagL => singleMemAccess_return_tag(0 downto 0),
          clk => clk,
          reset => reset -- 
        ); -- 
      -- 
    end Block; -- call group 0
    operator_fakeDelayOp_1663_block : block -- 
      signal sample_req, sample_ack, update_req, update_ack: BooleanArray(0 downto 0); 
      signal sample_req_ug, sample_ack_ug, update_req_ug, update_ack_ug: BooleanArray(0 downto 0); 
      signal guard_vector : std_logic_vector(0 downto 0); 
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 8);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      -- 
    begin -- 
      sample_req_ug(0) <= call_stmt_1254_call_req_0;
      call_stmt_1254_call_ack_0<= sample_ack_ug(0);
      update_req_ug(0) <= call_stmt_1254_call_req_1;
      call_stmt_1254_call_ack_1<= update_ack_ug(0);
      guard_vector(0) <=  not do_mem_access_1192(0);
      call_stmt_1254_call_gI: SplitGuardInterface generic map(name => "call_stmt_1254_call_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => sample_req_ug,
        sr_out => sample_req,
        sa_in => sample_ack,
        sa_out => sample_ack_ug,
        cr_in => update_req_ug,
        cr_out => update_req,
        ca_in => update_ack,
        ca_out => update_ack_ug,
        guards => guard_vector); -- 
      call_stmt_1254_call: fakeDelayOp_Operator  port map ( -- 
        sample_req => sample_req(0), 
        sample_ack => sample_ack(0), 
        update_req => update_req(0), 
        update_ack => update_ack(0), 
        X => write_data_buffer,
        X_d => write_data_delayed_1254,
        clk => clk, reset => reset  
        -- 
      );-- 
    end block;
    -- 
  end Block; -- data_path
  -- 
end singleMemAccessAndSendResponse_arch;
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
library munit_dummy_mmu;
use munit_dummy_mmu.dummy_mmu_global_package.all;
entity dummy_mmu is  -- system 
  port (-- 
    clk : in std_logic;
    reset : in std_logic;
    CORE_BUS_REQUEST_pipe_read_data: out std_logic_vector(109 downto 0);
    CORE_BUS_REQUEST_pipe_read_req : in std_logic_vector(0 downto 0);
    CORE_BUS_REQUEST_pipe_read_ack : out std_logic_vector(0 downto 0);
    CORE_BUS_RESPONSE_pipe_write_data: in std_logic_vector(64 downto 0);
    CORE_BUS_RESPONSE_pipe_write_req : in std_logic_vector(0 downto 0);
    CORE_BUS_RESPONSE_pipe_write_ack : out std_logic_vector(0 downto 0);
    INVALIDATE_REQUEST_pipe_write_data: in std_logic_vector(29 downto 0);
    INVALIDATE_REQUEST_pipe_write_req : in std_logic_vector(0 downto 0);
    INVALIDATE_REQUEST_pipe_write_ack : out std_logic_vector(0 downto 0);
    MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_data: out std_logic_vector(26 downto 0);
    MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_req : in std_logic_vector(0 downto 0);
    MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_ack : out std_logic_vector(0 downto 0);
    MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_data: out std_logic_vector(26 downto 0);
    MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_req : in std_logic_vector(0 downto 0);
    MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_ack : out std_logic_vector(0 downto 0);
    MMU_to_CPU_reset_ack_pipe_read_data: out std_logic_vector(0 downto 0);
    MMU_to_CPU_reset_ack_pipe_read_req : in std_logic_vector(0 downto 0);
    MMU_to_CPU_reset_ack_pipe_read_ack : out std_logic_vector(0 downto 0);
    MMU_to_DCACHE_response_pipe_read_data: out std_logic_vector(74 downto 0);
    MMU_to_DCACHE_response_pipe_read_req : in std_logic_vector(0 downto 0);
    MMU_to_DCACHE_response_pipe_read_ack : out std_logic_vector(0 downto 0);
    MMU_to_ICACHE_response_pipe_read_data: out std_logic_vector(92 downto 0);
    MMU_to_ICACHE_response_pipe_read_req : in std_logic_vector(0 downto 0);
    MMU_to_ICACHE_response_pipe_read_ack : out std_logic_vector(0 downto 0);
    NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_write_data: in std_logic_vector(121 downto 0);
    NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_write_req : in std_logic_vector(0 downto 0);
    NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_write_ack : out std_logic_vector(0 downto 0);
    NOBLOCK_CPU_to_MMU_reset_pipe_write_data: in std_logic_vector(0 downto 0);
    NOBLOCK_CPU_to_MMU_reset_pipe_write_req : in std_logic_vector(0 downto 0);
    NOBLOCK_CPU_to_MMU_reset_pipe_write_ack : out std_logic_vector(0 downto 0);
    NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_read_data: out std_logic_vector(0 downto 0);
    NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_read_req : in std_logic_vector(0 downto 0);
    NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_read_ack : out std_logic_vector(0 downto 0);
    NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_data: out std_logic_vector(26 downto 0);
    NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_req : in std_logic_vector(0 downto 0);
    NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_ack : out std_logic_vector(0 downto 0);
    NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_data: out std_logic_vector(26 downto 0);
    NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_req : in std_logic_vector(0 downto 0);
    NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_ack : out std_logic_vector(0 downto 0)); -- 
  -- 
end entity; 
architecture dummy_mmu_arch  of dummy_mmu is -- system-architecture 
  -- interface signals to connect to memory space memory_space_1
  -- declarations related to module accessMemLineAndSendResponse
  component accessMemLineAndSendResponse is -- 
    generic (tag_length : integer); 
    port ( -- 
      send_line_to_dcache : in  std_logic_vector(0 downto 0);
      send_line_to_icache : in  std_logic_vector(0 downto 0);
      write_dword : in  std_logic_vector(0 downto 0);
      access_mem_line : in  std_logic_vector(0 downto 0);
      lock_bus : in  std_logic_vector(0 downto 0);
      first_dword_id : in  std_logic_vector(2 downto 0);
      acc : in  std_logic_vector(2 downto 0);
      line_aligned_addr : in  std_logic_vector(35 downto 0);
      write_byte_mask : in  std_logic_vector(7 downto 0);
      write_data : in  std_logic_vector(63 downto 0);
      access_error : out  std_logic_vector(0 downto 0);
      singleMemAccessAndSendResponse_call_reqs : out  std_logic_vector(0 downto 0);
      singleMemAccessAndSendResponse_call_acks : in   std_logic_vector(0 downto 0);
      singleMemAccessAndSendResponse_call_data : out  std_logic_vector(142 downto 0);
      singleMemAccessAndSendResponse_call_tag  :  out  std_logic_vector(0 downto 0);
      singleMemAccessAndSendResponse_return_reqs : out  std_logic_vector(0 downto 0);
      singleMemAccessAndSendResponse_return_acks : in   std_logic_vector(0 downto 0);
      singleMemAccessAndSendResponse_return_data : in   std_logic_vector(0 downto 0);
      singleMemAccessAndSendResponse_return_tag :  in   std_logic_vector(0 downto 0);
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
  -- argument signals for module accessMemLineAndSendResponse
  signal accessMemLineAndSendResponse_send_line_to_dcache :  std_logic_vector(0 downto 0);
  signal accessMemLineAndSendResponse_send_line_to_icache :  std_logic_vector(0 downto 0);
  signal accessMemLineAndSendResponse_write_dword :  std_logic_vector(0 downto 0);
  signal accessMemLineAndSendResponse_access_mem_line :  std_logic_vector(0 downto 0);
  signal accessMemLineAndSendResponse_lock_bus :  std_logic_vector(0 downto 0);
  signal accessMemLineAndSendResponse_first_dword_id :  std_logic_vector(2 downto 0);
  signal accessMemLineAndSendResponse_acc :  std_logic_vector(2 downto 0);
  signal accessMemLineAndSendResponse_line_aligned_addr :  std_logic_vector(35 downto 0);
  signal accessMemLineAndSendResponse_write_byte_mask :  std_logic_vector(7 downto 0);
  signal accessMemLineAndSendResponse_write_data :  std_logic_vector(63 downto 0);
  signal accessMemLineAndSendResponse_access_error :  std_logic_vector(0 downto 0);
  signal accessMemLineAndSendResponse_in_args    : std_logic_vector(118 downto 0);
  signal accessMemLineAndSendResponse_out_args   : std_logic_vector(0 downto 0);
  signal accessMemLineAndSendResponse_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal accessMemLineAndSendResponse_tag_out   : std_logic_vector(1 downto 0);
  signal accessMemLineAndSendResponse_start_req : std_logic;
  signal accessMemLineAndSendResponse_start_ack : std_logic;
  signal accessMemLineAndSendResponse_fin_req   : std_logic;
  signal accessMemLineAndSendResponse_fin_ack : std_logic;
  -- caller side aggregated signals for module accessMemLineAndSendResponse
  signal accessMemLineAndSendResponse_call_reqs: std_logic_vector(0 downto 0);
  signal accessMemLineAndSendResponse_call_acks: std_logic_vector(0 downto 0);
  signal accessMemLineAndSendResponse_return_reqs: std_logic_vector(0 downto 0);
  signal accessMemLineAndSendResponse_return_acks: std_logic_vector(0 downto 0);
  signal accessMemLineAndSendResponse_call_data: std_logic_vector(118 downto 0);
  signal accessMemLineAndSendResponse_call_tag: std_logic_vector(0 downto 0);
  signal accessMemLineAndSendResponse_return_data: std_logic_vector(0 downto 0);
  signal accessMemLineAndSendResponse_return_tag: std_logic_vector(0 downto 0);
  -- declarations related to module construct_core_request
  -- declarations related to module decodeAsi
  -- declarations related to module decodeCacheRequest
  -- declarations related to module decodeRequestType
  -- declarations related to module deconstruct_core_response
  -- declarations related to module dummyCoherencyDaemon
  component dummyCoherencyDaemon is -- 
    generic (tag_length : integer); 
    port ( -- 
      INVALIDATE_REQUEST_pipe_read_req : out  std_logic_vector(0 downto 0);
      INVALIDATE_REQUEST_pipe_read_ack : in   std_logic_vector(0 downto 0);
      INVALIDATE_REQUEST_pipe_read_data : in   std_logic_vector(29 downto 0);
      NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_req : out  std_logic_vector(0 downto 0);
      NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_ack : in   std_logic_vector(0 downto 0);
      NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_data : out  std_logic_vector(26 downto 0);
      NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_req : out  std_logic_vector(0 downto 0);
      NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_ack : in   std_logic_vector(0 downto 0);
      NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_data : out  std_logic_vector(26 downto 0);
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
  -- argument signals for module dummyCoherencyDaemon
  signal dummyCoherencyDaemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal dummyCoherencyDaemon_tag_out   : std_logic_vector(1 downto 0);
  signal dummyCoherencyDaemon_start_req : std_logic;
  signal dummyCoherencyDaemon_start_ack : std_logic;
  signal dummyCoherencyDaemon_fin_req   : std_logic;
  signal dummyCoherencyDaemon_fin_ack : std_logic;
  -- declarations related to module dummyMmuDaemon
  component dummyMmuDaemon is -- 
    generic (tag_length : integer); 
    port ( -- 
      NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_read_req : out  std_logic_vector(0 downto 0);
      NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_read_ack : in   std_logic_vector(0 downto 0);
      NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_read_data : in   std_logic_vector(121 downto 0);
      NOBLOCK_CPU_to_MMU_reset_pipe_read_req : out  std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_MMU_reset_pipe_read_ack : in   std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_MMU_reset_pipe_read_data : in   std_logic_vector(0 downto 0);
      MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_req : out  std_logic_vector(0 downto 0);
      MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_ack : in   std_logic_vector(0 downto 0);
      MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_data : out  std_logic_vector(26 downto 0);
      MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_req : out  std_logic_vector(0 downto 0);
      MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_ack : in   std_logic_vector(0 downto 0);
      MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_data : out  std_logic_vector(26 downto 0);
      MMU_to_CPU_reset_ack_pipe_write_req : out  std_logic_vector(0 downto 0);
      MMU_to_CPU_reset_ack_pipe_write_ack : in   std_logic_vector(0 downto 0);
      MMU_to_CPU_reset_ack_pipe_write_data : out  std_logic_vector(0 downto 0);
      noblock_mem_access_and_send_response_command_pipe_write_req : out  std_logic_vector(0 downto 0);
      noblock_mem_access_and_send_response_command_pipe_write_ack : in   std_logic_vector(0 downto 0);
      noblock_mem_access_and_send_response_command_pipe_write_data : out  std_logic_vector(208 downto 0);
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
  -- argument signals for module dummyMmuDaemon
  signal dummyMmuDaemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal dummyMmuDaemon_tag_out   : std_logic_vector(1 downto 0);
  signal dummyMmuDaemon_start_req : std_logic;
  signal dummyMmuDaemon_start_ack : std_logic;
  signal dummyMmuDaemon_fin_req   : std_logic;
  signal dummyMmuDaemon_fin_ack : std_logic;
  -- declarations related to module fakeDelayOp
  -- declarations related to module memAccessAndSendResponseDaemon
  component memAccessAndSendResponseDaemon is -- 
    generic (tag_length : integer); 
    port ( -- 
      noblock_dword_token_return_pipe_read_req : out  std_logic_vector(0 downto 0);
      noblock_dword_token_return_pipe_read_ack : in   std_logic_vector(0 downto 0);
      noblock_dword_token_return_pipe_read_data : in   std_logic_vector(0 downto 0);
      noblock_mem_access_and_send_response_command_pipe_read_req : out  std_logic_vector(0 downto 0);
      noblock_mem_access_and_send_response_command_pipe_read_ack : in   std_logic_vector(0 downto 0);
      noblock_mem_access_and_send_response_command_pipe_read_data : in   std_logic_vector(208 downto 0);
      singleMemAccessAndSendResponse_call_reqs : out  std_logic_vector(0 downto 0);
      singleMemAccessAndSendResponse_call_acks : in   std_logic_vector(0 downto 0);
      singleMemAccessAndSendResponse_call_data : out  std_logic_vector(142 downto 0);
      singleMemAccessAndSendResponse_call_tag  :  out  std_logic_vector(0 downto 0);
      singleMemAccessAndSendResponse_return_reqs : out  std_logic_vector(0 downto 0);
      singleMemAccessAndSendResponse_return_acks : in   std_logic_vector(0 downto 0);
      singleMemAccessAndSendResponse_return_data : in   std_logic_vector(0 downto 0);
      singleMemAccessAndSendResponse_return_tag :  in   std_logic_vector(0 downto 0);
      accessMemLineAndSendResponse_call_reqs : out  std_logic_vector(0 downto 0);
      accessMemLineAndSendResponse_call_acks : in   std_logic_vector(0 downto 0);
      accessMemLineAndSendResponse_call_data : out  std_logic_vector(118 downto 0);
      accessMemLineAndSendResponse_call_tag  :  out  std_logic_vector(0 downto 0);
      accessMemLineAndSendResponse_return_reqs : out  std_logic_vector(0 downto 0);
      accessMemLineAndSendResponse_return_acks : in   std_logic_vector(0 downto 0);
      accessMemLineAndSendResponse_return_data : in   std_logic_vector(0 downto 0);
      accessMemLineAndSendResponse_return_tag :  in   std_logic_vector(0 downto 0);
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
  -- argument signals for module memAccessAndSendResponseDaemon
  signal memAccessAndSendResponseDaemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal memAccessAndSendResponseDaemon_tag_out   : std_logic_vector(1 downto 0);
  signal memAccessAndSendResponseDaemon_start_req : std_logic;
  signal memAccessAndSendResponseDaemon_start_ack : std_logic;
  signal memAccessAndSendResponseDaemon_fin_req   : std_logic;
  signal memAccessAndSendResponseDaemon_fin_ack : std_logic;
  -- declarations related to module singleMemAccess
  component singleMemAccess is -- 
    generic (tag_length : integer); 
    port ( -- 
      lock_bus : in  std_logic_vector(0 downto 0);
      write_read_bar : in  std_logic_vector(0 downto 0);
      addr : in  std_logic_vector(35 downto 0);
      byte_mask : in  std_logic_vector(7 downto 0);
      write_data : in  std_logic_vector(63 downto 0);
      read_data : out  std_logic_vector(63 downto 0);
      access_error : out  std_logic_vector(0 downto 0);
      CORE_BUS_RESPONSE_pipe_read_req : out  std_logic_vector(0 downto 0);
      CORE_BUS_RESPONSE_pipe_read_ack : in   std_logic_vector(0 downto 0);
      CORE_BUS_RESPONSE_pipe_read_data : in   std_logic_vector(64 downto 0);
      CORE_BUS_REQUEST_pipe_write_req : out  std_logic_vector(0 downto 0);
      CORE_BUS_REQUEST_pipe_write_ack : in   std_logic_vector(0 downto 0);
      CORE_BUS_REQUEST_pipe_write_data : out  std_logic_vector(109 downto 0);
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
  -- argument signals for module singleMemAccess
  signal singleMemAccess_lock_bus :  std_logic_vector(0 downto 0);
  signal singleMemAccess_write_read_bar :  std_logic_vector(0 downto 0);
  signal singleMemAccess_addr :  std_logic_vector(35 downto 0);
  signal singleMemAccess_byte_mask :  std_logic_vector(7 downto 0);
  signal singleMemAccess_write_data :  std_logic_vector(63 downto 0);
  signal singleMemAccess_read_data :  std_logic_vector(63 downto 0);
  signal singleMemAccess_access_error :  std_logic_vector(0 downto 0);
  signal singleMemAccess_in_args    : std_logic_vector(109 downto 0);
  signal singleMemAccess_out_args   : std_logic_vector(64 downto 0);
  signal singleMemAccess_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal singleMemAccess_tag_out   : std_logic_vector(1 downto 0);
  signal singleMemAccess_start_req : std_logic;
  signal singleMemAccess_start_ack : std_logic;
  signal singleMemAccess_fin_req   : std_logic;
  signal singleMemAccess_fin_ack : std_logic;
  -- caller side aggregated signals for module singleMemAccess
  signal singleMemAccess_call_reqs: std_logic_vector(0 downto 0);
  signal singleMemAccess_call_acks: std_logic_vector(0 downto 0);
  signal singleMemAccess_return_reqs: std_logic_vector(0 downto 0);
  signal singleMemAccess_return_acks: std_logic_vector(0 downto 0);
  signal singleMemAccess_call_data: std_logic_vector(109 downto 0);
  signal singleMemAccess_call_tag: std_logic_vector(0 downto 0);
  signal singleMemAccess_return_data: std_logic_vector(64 downto 0);
  signal singleMemAccess_return_tag: std_logic_vector(0 downto 0);
  -- declarations related to module singleMemAccessAndSendResponse
  component singleMemAccessAndSendResponse is -- 
    generic (tag_length : integer); 
    port ( -- 
      ret_token : in  std_logic_vector(0 downto 0);
      lock_bus : in  std_logic_vector(0 downto 0);
      last_access : in  std_logic_vector(0 downto 0);
      send_to_dcache : in  std_logic_vector(0 downto 0);
      send_to_icache : in  std_logic_vector(0 downto 0);
      do_mem_write : in  std_logic_vector(0 downto 0);
      do_mem_read : in  std_logic_vector(0 downto 0);
      access_mem_line : in  std_logic_vector(0 downto 0);
      is_ctrl_reg_read : in  std_logic_vector(0 downto 0);
      do_not_send_write_response : in  std_logic_vector(0 downto 0);
      acc : in  std_logic_vector(2 downto 0);
      faulty_fsr_generated : in  std_logic_vector(0 downto 0);
      cacheable : in  std_logic_vector(0 downto 0);
      mae : in  std_logic_vector(0 downto 0);
      pte_error : in  std_logic_vector(0 downto 0);
      fsr : in  std_logic_vector(17 downto 0);
      byte_mask : in  std_logic_vector(7 downto 0);
      addr : in  std_logic_vector(35 downto 0);
      write_data : in  std_logic_vector(63 downto 0);
      access_error : out  std_logic_vector(0 downto 0);
      MMU_to_DCACHE_response_pipe_write_req : out  std_logic_vector(0 downto 0);
      MMU_to_DCACHE_response_pipe_write_ack : in   std_logic_vector(0 downto 0);
      MMU_to_DCACHE_response_pipe_write_data : out  std_logic_vector(74 downto 0);
      MMU_to_ICACHE_response_pipe_write_req : out  std_logic_vector(0 downto 0);
      MMU_to_ICACHE_response_pipe_write_ack : in   std_logic_vector(0 downto 0);
      MMU_to_ICACHE_response_pipe_write_data : out  std_logic_vector(92 downto 0);
      NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_req : out  std_logic_vector(0 downto 0);
      NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_ack : in   std_logic_vector(0 downto 0);
      NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_data : out  std_logic_vector(0 downto 0);
      noblock_dword_token_return_pipe_write_req : out  std_logic_vector(0 downto 0);
      noblock_dword_token_return_pipe_write_ack : in   std_logic_vector(0 downto 0);
      noblock_dword_token_return_pipe_write_data : out  std_logic_vector(0 downto 0);
      singleMemAccess_call_reqs : out  std_logic_vector(0 downto 0);
      singleMemAccess_call_acks : in   std_logic_vector(0 downto 0);
      singleMemAccess_call_data : out  std_logic_vector(109 downto 0);
      singleMemAccess_call_tag  :  out  std_logic_vector(0 downto 0);
      singleMemAccess_return_reqs : out  std_logic_vector(0 downto 0);
      singleMemAccess_return_acks : in   std_logic_vector(0 downto 0);
      singleMemAccess_return_data : in   std_logic_vector(64 downto 0);
      singleMemAccess_return_tag :  in   std_logic_vector(0 downto 0);
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
  -- argument signals for module singleMemAccessAndSendResponse
  signal singleMemAccessAndSendResponse_ret_token :  std_logic_vector(0 downto 0);
  signal singleMemAccessAndSendResponse_lock_bus :  std_logic_vector(0 downto 0);
  signal singleMemAccessAndSendResponse_last_access :  std_logic_vector(0 downto 0);
  signal singleMemAccessAndSendResponse_send_to_dcache :  std_logic_vector(0 downto 0);
  signal singleMemAccessAndSendResponse_send_to_icache :  std_logic_vector(0 downto 0);
  signal singleMemAccessAndSendResponse_do_mem_write :  std_logic_vector(0 downto 0);
  signal singleMemAccessAndSendResponse_do_mem_read :  std_logic_vector(0 downto 0);
  signal singleMemAccessAndSendResponse_access_mem_line :  std_logic_vector(0 downto 0);
  signal singleMemAccessAndSendResponse_is_ctrl_reg_read :  std_logic_vector(0 downto 0);
  signal singleMemAccessAndSendResponse_do_not_send_write_response :  std_logic_vector(0 downto 0);
  signal singleMemAccessAndSendResponse_acc :  std_logic_vector(2 downto 0);
  signal singleMemAccessAndSendResponse_faulty_fsr_generated :  std_logic_vector(0 downto 0);
  signal singleMemAccessAndSendResponse_cacheable :  std_logic_vector(0 downto 0);
  signal singleMemAccessAndSendResponse_mae :  std_logic_vector(0 downto 0);
  signal singleMemAccessAndSendResponse_pte_error :  std_logic_vector(0 downto 0);
  signal singleMemAccessAndSendResponse_fsr :  std_logic_vector(17 downto 0);
  signal singleMemAccessAndSendResponse_byte_mask :  std_logic_vector(7 downto 0);
  signal singleMemAccessAndSendResponse_addr :  std_logic_vector(35 downto 0);
  signal singleMemAccessAndSendResponse_write_data :  std_logic_vector(63 downto 0);
  signal singleMemAccessAndSendResponse_access_error :  std_logic_vector(0 downto 0);
  signal singleMemAccessAndSendResponse_in_args    : std_logic_vector(142 downto 0);
  signal singleMemAccessAndSendResponse_out_args   : std_logic_vector(0 downto 0);
  signal singleMemAccessAndSendResponse_tag_in    : std_logic_vector(2 downto 0) := (others => '0');
  signal singleMemAccessAndSendResponse_tag_out   : std_logic_vector(2 downto 0);
  signal singleMemAccessAndSendResponse_start_req : std_logic;
  signal singleMemAccessAndSendResponse_start_ack : std_logic;
  signal singleMemAccessAndSendResponse_fin_req   : std_logic;
  signal singleMemAccessAndSendResponse_fin_ack : std_logic;
  -- caller side aggregated signals for module singleMemAccessAndSendResponse
  signal singleMemAccessAndSendResponse_call_reqs: std_logic_vector(1 downto 0);
  signal singleMemAccessAndSendResponse_call_acks: std_logic_vector(1 downto 0);
  signal singleMemAccessAndSendResponse_return_reqs: std_logic_vector(1 downto 0);
  signal singleMemAccessAndSendResponse_return_acks: std_logic_vector(1 downto 0);
  signal singleMemAccessAndSendResponse_call_data: std_logic_vector(285 downto 0);
  signal singleMemAccessAndSendResponse_call_tag: std_logic_vector(1 downto 0);
  signal singleMemAccessAndSendResponse_return_data: std_logic_vector(1 downto 0);
  signal singleMemAccessAndSendResponse_return_tag: std_logic_vector(1 downto 0);
  -- aggregate signals for write to pipe CORE_BUS_REQUEST
  signal CORE_BUS_REQUEST_pipe_write_data: std_logic_vector(109 downto 0);
  signal CORE_BUS_REQUEST_pipe_write_req: std_logic_vector(0 downto 0);
  signal CORE_BUS_REQUEST_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe CORE_BUS_RESPONSE
  signal CORE_BUS_RESPONSE_pipe_read_data: std_logic_vector(64 downto 0);
  signal CORE_BUS_RESPONSE_pipe_read_req: std_logic_vector(0 downto 0);
  signal CORE_BUS_RESPONSE_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe INVALIDATE_REQUEST
  signal INVALIDATE_REQUEST_pipe_read_data: std_logic_vector(29 downto 0);
  signal INVALIDATE_REQUEST_pipe_read_req: std_logic_vector(0 downto 0);
  signal INVALIDATE_REQUEST_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE
  signal MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_data: std_logic_vector(26 downto 0);
  signal MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_req: std_logic_vector(0 downto 0);
  signal MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE
  signal MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_data: std_logic_vector(26 downto 0);
  signal MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_req: std_logic_vector(0 downto 0);
  signal MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe MMU_to_CPU_reset_ack
  signal MMU_to_CPU_reset_ack_pipe_write_data: std_logic_vector(0 downto 0);
  signal MMU_to_CPU_reset_ack_pipe_write_req: std_logic_vector(0 downto 0);
  signal MMU_to_CPU_reset_ack_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe MMU_to_DCACHE_response
  signal MMU_to_DCACHE_response_pipe_write_data: std_logic_vector(74 downto 0);
  signal MMU_to_DCACHE_response_pipe_write_req: std_logic_vector(0 downto 0);
  signal MMU_to_DCACHE_response_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe MMU_to_ICACHE_response
  signal MMU_to_ICACHE_response_pipe_write_data: std_logic_vector(92 downto 0);
  signal MMU_to_ICACHE_response_pipe_write_req: std_logic_vector(0 downto 0);
  signal MMU_to_ICACHE_response_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe NOBLOCK_CACHE_TO_MMU_REQUEST
  signal NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_read_data: std_logic_vector(121 downto 0);
  signal NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_read_req: std_logic_vector(0 downto 0);
  signal NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe NOBLOCK_CPU_to_MMU_reset
  signal NOBLOCK_CPU_to_MMU_reset_pipe_read_data: std_logic_vector(0 downto 0);
  signal NOBLOCK_CPU_to_MMU_reset_pipe_read_req: std_logic_vector(0 downto 0);
  signal NOBLOCK_CPU_to_MMU_reset_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe NOBLOCK_INVALIDATE_SLOT_RETURN
  signal NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_data: std_logic_vector(0 downto 0);
  signal NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_req: std_logic_vector(0 downto 0);
  signal NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE
  signal NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_data: std_logic_vector(26 downto 0);
  signal NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_req: std_logic_vector(0 downto 0);
  signal NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE
  signal NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_data: std_logic_vector(26 downto 0);
  signal NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_req: std_logic_vector(0 downto 0);
  signal NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe noblock_dword_token_return
  signal noblock_dword_token_return_pipe_write_data: std_logic_vector(0 downto 0);
  signal noblock_dword_token_return_pipe_write_req: std_logic_vector(0 downto 0);
  signal noblock_dword_token_return_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe noblock_dword_token_return
  signal noblock_dword_token_return_pipe_read_data: std_logic_vector(0 downto 0);
  signal noblock_dword_token_return_pipe_read_req: std_logic_vector(0 downto 0);
  signal noblock_dword_token_return_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe noblock_mem_access_and_send_response_command
  signal noblock_mem_access_and_send_response_command_pipe_write_data: std_logic_vector(208 downto 0);
  signal noblock_mem_access_and_send_response_command_pipe_write_req: std_logic_vector(0 downto 0);
  signal noblock_mem_access_and_send_response_command_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe noblock_mem_access_and_send_response_command
  signal noblock_mem_access_and_send_response_command_pipe_read_data: std_logic_vector(208 downto 0);
  signal noblock_mem_access_and_send_response_command_pipe_read_req: std_logic_vector(0 downto 0);
  signal noblock_mem_access_and_send_response_command_pipe_read_ack: std_logic_vector(0 downto 0);
  -- gated clock signal declarations.
  -- 
begin -- 
  -- module accessMemLineAndSendResponse
  accessMemLineAndSendResponse_send_line_to_dcache <= accessMemLineAndSendResponse_in_args(118 downto 118);
  accessMemLineAndSendResponse_send_line_to_icache <= accessMemLineAndSendResponse_in_args(117 downto 117);
  accessMemLineAndSendResponse_write_dword <= accessMemLineAndSendResponse_in_args(116 downto 116);
  accessMemLineAndSendResponse_access_mem_line <= accessMemLineAndSendResponse_in_args(115 downto 115);
  accessMemLineAndSendResponse_lock_bus <= accessMemLineAndSendResponse_in_args(114 downto 114);
  accessMemLineAndSendResponse_first_dword_id <= accessMemLineAndSendResponse_in_args(113 downto 111);
  accessMemLineAndSendResponse_acc <= accessMemLineAndSendResponse_in_args(110 downto 108);
  accessMemLineAndSendResponse_line_aligned_addr <= accessMemLineAndSendResponse_in_args(107 downto 72);
  accessMemLineAndSendResponse_write_byte_mask <= accessMemLineAndSendResponse_in_args(71 downto 64);
  accessMemLineAndSendResponse_write_data <= accessMemLineAndSendResponse_in_args(63 downto 0);
  accessMemLineAndSendResponse_out_args <= accessMemLineAndSendResponse_access_error ;
  -- call arbiter for module accessMemLineAndSendResponse
  accessMemLineAndSendResponse_arbiter: SplitCallArbiter -- 
    generic map( --
      name => "SplitCallArbiter", num_reqs => 1,
      call_data_width => 119,
      return_data_width => 1,
      callee_tag_length => 1,
      caller_tag_length => 1--
    )
    port map(-- 
      call_reqs => accessMemLineAndSendResponse_call_reqs,
      call_acks => accessMemLineAndSendResponse_call_acks,
      return_reqs => accessMemLineAndSendResponse_return_reqs,
      return_acks => accessMemLineAndSendResponse_return_acks,
      call_data  => accessMemLineAndSendResponse_call_data,
      call_tag  => accessMemLineAndSendResponse_call_tag,
      return_tag  => accessMemLineAndSendResponse_return_tag,
      call_mtag => accessMemLineAndSendResponse_tag_in,
      return_mtag => accessMemLineAndSendResponse_tag_out,
      return_data =>accessMemLineAndSendResponse_return_data,
      call_mreq => accessMemLineAndSendResponse_start_req,
      call_mack => accessMemLineAndSendResponse_start_ack,
      return_mreq => accessMemLineAndSendResponse_fin_req,
      return_mack => accessMemLineAndSendResponse_fin_ack,
      call_mdata => accessMemLineAndSendResponse_in_args,
      return_mdata => accessMemLineAndSendResponse_out_args,
      clk => clk, 
      reset => reset --
    ); --
  accessMemLineAndSendResponse_instance:accessMemLineAndSendResponse-- 
    generic map(tag_length => 2)
    port map(-- 
      send_line_to_dcache => accessMemLineAndSendResponse_send_line_to_dcache,
      send_line_to_icache => accessMemLineAndSendResponse_send_line_to_icache,
      write_dword => accessMemLineAndSendResponse_write_dword,
      access_mem_line => accessMemLineAndSendResponse_access_mem_line,
      lock_bus => accessMemLineAndSendResponse_lock_bus,
      first_dword_id => accessMemLineAndSendResponse_first_dword_id,
      acc => accessMemLineAndSendResponse_acc,
      line_aligned_addr => accessMemLineAndSendResponse_line_aligned_addr,
      write_byte_mask => accessMemLineAndSendResponse_write_byte_mask,
      write_data => accessMemLineAndSendResponse_write_data,
      access_error => accessMemLineAndSendResponse_access_error,
      start_req => accessMemLineAndSendResponse_start_req,
      start_ack => accessMemLineAndSendResponse_start_ack,
      fin_req => accessMemLineAndSendResponse_fin_req,
      fin_ack => accessMemLineAndSendResponse_fin_ack,
      clk => clk,
      reset => reset,
      singleMemAccessAndSendResponse_call_reqs => singleMemAccessAndSendResponse_call_reqs(1 downto 1),
      singleMemAccessAndSendResponse_call_acks => singleMemAccessAndSendResponse_call_acks(1 downto 1),
      singleMemAccessAndSendResponse_call_data => singleMemAccessAndSendResponse_call_data(285 downto 143),
      singleMemAccessAndSendResponse_call_tag => singleMemAccessAndSendResponse_call_tag(1 downto 1),
      singleMemAccessAndSendResponse_return_reqs => singleMemAccessAndSendResponse_return_reqs(1 downto 1),
      singleMemAccessAndSendResponse_return_acks => singleMemAccessAndSendResponse_return_acks(1 downto 1),
      singleMemAccessAndSendResponse_return_data => singleMemAccessAndSendResponse_return_data(1 downto 1),
      singleMemAccessAndSendResponse_return_tag => singleMemAccessAndSendResponse_return_tag(1 downto 1),
      tag_in => accessMemLineAndSendResponse_tag_in,
      tag_out => accessMemLineAndSendResponse_tag_out-- 
    ); -- 
  -- module dummyCoherencyDaemon
  dummyCoherencyDaemon_instance:dummyCoherencyDaemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => dummyCoherencyDaemon_start_req,
      start_ack => dummyCoherencyDaemon_start_ack,
      fin_req => dummyCoherencyDaemon_fin_req,
      fin_ack => dummyCoherencyDaemon_fin_ack,
      clk => clk,
      reset => reset,
      INVALIDATE_REQUEST_pipe_read_req => INVALIDATE_REQUEST_pipe_read_req(0 downto 0),
      INVALIDATE_REQUEST_pipe_read_ack => INVALIDATE_REQUEST_pipe_read_ack(0 downto 0),
      INVALIDATE_REQUEST_pipe_read_data => INVALIDATE_REQUEST_pipe_read_data(29 downto 0),
      NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_req => NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_req(0 downto 0),
      NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_ack => NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_ack(0 downto 0),
      NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_data => NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_data(26 downto 0),
      NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_req => NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_req(0 downto 0),
      NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_ack => NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_ack(0 downto 0),
      NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_data => NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_data(26 downto 0),
      tag_in => dummyCoherencyDaemon_tag_in,
      tag_out => dummyCoherencyDaemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  dummyCoherencyDaemon_tag_in <= (others => '0');
  dummyCoherencyDaemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => dummyCoherencyDaemon_start_req, start_ack => dummyCoherencyDaemon_start_ack,  fin_req => dummyCoherencyDaemon_fin_req,  fin_ack => dummyCoherencyDaemon_fin_ack);
  -- module dummyMmuDaemon
  dummyMmuDaemon_instance:dummyMmuDaemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => dummyMmuDaemon_start_req,
      start_ack => dummyMmuDaemon_start_ack,
      fin_req => dummyMmuDaemon_fin_req,
      fin_ack => dummyMmuDaemon_fin_ack,
      clk => clk,
      reset => reset,
      NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_read_req => NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_read_req(0 downto 0),
      NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_read_ack => NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_read_ack(0 downto 0),
      NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_read_data => NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_read_data(121 downto 0),
      NOBLOCK_CPU_to_MMU_reset_pipe_read_req => NOBLOCK_CPU_to_MMU_reset_pipe_read_req(0 downto 0),
      NOBLOCK_CPU_to_MMU_reset_pipe_read_ack => NOBLOCK_CPU_to_MMU_reset_pipe_read_ack(0 downto 0),
      NOBLOCK_CPU_to_MMU_reset_pipe_read_data => NOBLOCK_CPU_to_MMU_reset_pipe_read_data(0 downto 0),
      MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_req => MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_req(0 downto 0),
      MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_ack => MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_ack(0 downto 0),
      MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_data => MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_data(26 downto 0),
      MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_req => MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_req(0 downto 0),
      MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_ack => MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_ack(0 downto 0),
      MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_data => MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_data(26 downto 0),
      MMU_to_CPU_reset_ack_pipe_write_req => MMU_to_CPU_reset_ack_pipe_write_req(0 downto 0),
      MMU_to_CPU_reset_ack_pipe_write_ack => MMU_to_CPU_reset_ack_pipe_write_ack(0 downto 0),
      MMU_to_CPU_reset_ack_pipe_write_data => MMU_to_CPU_reset_ack_pipe_write_data(0 downto 0),
      noblock_mem_access_and_send_response_command_pipe_write_req => noblock_mem_access_and_send_response_command_pipe_write_req(0 downto 0),
      noblock_mem_access_and_send_response_command_pipe_write_ack => noblock_mem_access_and_send_response_command_pipe_write_ack(0 downto 0),
      noblock_mem_access_and_send_response_command_pipe_write_data => noblock_mem_access_and_send_response_command_pipe_write_data(208 downto 0),
      tag_in => dummyMmuDaemon_tag_in,
      tag_out => dummyMmuDaemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  dummyMmuDaemon_tag_in <= (others => '0');
  dummyMmuDaemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => dummyMmuDaemon_start_req, start_ack => dummyMmuDaemon_start_ack,  fin_req => dummyMmuDaemon_fin_req,  fin_ack => dummyMmuDaemon_fin_ack);
  -- module memAccessAndSendResponseDaemon
  memAccessAndSendResponseDaemon_instance:memAccessAndSendResponseDaemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => memAccessAndSendResponseDaemon_start_req,
      start_ack => memAccessAndSendResponseDaemon_start_ack,
      fin_req => memAccessAndSendResponseDaemon_fin_req,
      fin_ack => memAccessAndSendResponseDaemon_fin_ack,
      clk => clk,
      reset => reset,
      noblock_dword_token_return_pipe_read_req => noblock_dword_token_return_pipe_read_req(0 downto 0),
      noblock_dword_token_return_pipe_read_ack => noblock_dword_token_return_pipe_read_ack(0 downto 0),
      noblock_dword_token_return_pipe_read_data => noblock_dword_token_return_pipe_read_data(0 downto 0),
      noblock_mem_access_and_send_response_command_pipe_read_req => noblock_mem_access_and_send_response_command_pipe_read_req(0 downto 0),
      noblock_mem_access_and_send_response_command_pipe_read_ack => noblock_mem_access_and_send_response_command_pipe_read_ack(0 downto 0),
      noblock_mem_access_and_send_response_command_pipe_read_data => noblock_mem_access_and_send_response_command_pipe_read_data(208 downto 0),
      singleMemAccessAndSendResponse_call_reqs => singleMemAccessAndSendResponse_call_reqs(0 downto 0),
      singleMemAccessAndSendResponse_call_acks => singleMemAccessAndSendResponse_call_acks(0 downto 0),
      singleMemAccessAndSendResponse_call_data => singleMemAccessAndSendResponse_call_data(142 downto 0),
      singleMemAccessAndSendResponse_call_tag => singleMemAccessAndSendResponse_call_tag(0 downto 0),
      singleMemAccessAndSendResponse_return_reqs => singleMemAccessAndSendResponse_return_reqs(0 downto 0),
      singleMemAccessAndSendResponse_return_acks => singleMemAccessAndSendResponse_return_acks(0 downto 0),
      singleMemAccessAndSendResponse_return_data => singleMemAccessAndSendResponse_return_data(0 downto 0),
      singleMemAccessAndSendResponse_return_tag => singleMemAccessAndSendResponse_return_tag(0 downto 0),
      accessMemLineAndSendResponse_call_reqs => accessMemLineAndSendResponse_call_reqs(0 downto 0),
      accessMemLineAndSendResponse_call_acks => accessMemLineAndSendResponse_call_acks(0 downto 0),
      accessMemLineAndSendResponse_call_data => accessMemLineAndSendResponse_call_data(118 downto 0),
      accessMemLineAndSendResponse_call_tag => accessMemLineAndSendResponse_call_tag(0 downto 0),
      accessMemLineAndSendResponse_return_reqs => accessMemLineAndSendResponse_return_reqs(0 downto 0),
      accessMemLineAndSendResponse_return_acks => accessMemLineAndSendResponse_return_acks(0 downto 0),
      accessMemLineAndSendResponse_return_data => accessMemLineAndSendResponse_return_data(0 downto 0),
      accessMemLineAndSendResponse_return_tag => accessMemLineAndSendResponse_return_tag(0 downto 0),
      tag_in => memAccessAndSendResponseDaemon_tag_in,
      tag_out => memAccessAndSendResponseDaemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  memAccessAndSendResponseDaemon_tag_in <= (others => '0');
  memAccessAndSendResponseDaemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => memAccessAndSendResponseDaemon_start_req, start_ack => memAccessAndSendResponseDaemon_start_ack,  fin_req => memAccessAndSendResponseDaemon_fin_req,  fin_ack => memAccessAndSendResponseDaemon_fin_ack);
  -- module singleMemAccess
  singleMemAccess_lock_bus <= singleMemAccess_in_args(109 downto 109);
  singleMemAccess_write_read_bar <= singleMemAccess_in_args(108 downto 108);
  singleMemAccess_addr <= singleMemAccess_in_args(107 downto 72);
  singleMemAccess_byte_mask <= singleMemAccess_in_args(71 downto 64);
  singleMemAccess_write_data <= singleMemAccess_in_args(63 downto 0);
  singleMemAccess_out_args <= singleMemAccess_read_data & singleMemAccess_access_error ;
  -- call arbiter for module singleMemAccess
  singleMemAccess_arbiter: SplitCallArbiter -- 
    generic map( --
      name => "SplitCallArbiter", num_reqs => 1,
      call_data_width => 110,
      return_data_width => 65,
      callee_tag_length => 1,
      caller_tag_length => 1--
    )
    port map(-- 
      call_reqs => singleMemAccess_call_reqs,
      call_acks => singleMemAccess_call_acks,
      return_reqs => singleMemAccess_return_reqs,
      return_acks => singleMemAccess_return_acks,
      call_data  => singleMemAccess_call_data,
      call_tag  => singleMemAccess_call_tag,
      return_tag  => singleMemAccess_return_tag,
      call_mtag => singleMemAccess_tag_in,
      return_mtag => singleMemAccess_tag_out,
      return_data =>singleMemAccess_return_data,
      call_mreq => singleMemAccess_start_req,
      call_mack => singleMemAccess_start_ack,
      return_mreq => singleMemAccess_fin_req,
      return_mack => singleMemAccess_fin_ack,
      call_mdata => singleMemAccess_in_args,
      return_mdata => singleMemAccess_out_args,
      clk => clk, 
      reset => reset --
    ); --
  singleMemAccess_instance:singleMemAccess-- 
    generic map(tag_length => 2)
    port map(-- 
      lock_bus => singleMemAccess_lock_bus,
      write_read_bar => singleMemAccess_write_read_bar,
      addr => singleMemAccess_addr,
      byte_mask => singleMemAccess_byte_mask,
      write_data => singleMemAccess_write_data,
      read_data => singleMemAccess_read_data,
      access_error => singleMemAccess_access_error,
      start_req => singleMemAccess_start_req,
      start_ack => singleMemAccess_start_ack,
      fin_req => singleMemAccess_fin_req,
      fin_ack => singleMemAccess_fin_ack,
      clk => clk,
      reset => reset,
      CORE_BUS_RESPONSE_pipe_read_req => CORE_BUS_RESPONSE_pipe_read_req(0 downto 0),
      CORE_BUS_RESPONSE_pipe_read_ack => CORE_BUS_RESPONSE_pipe_read_ack(0 downto 0),
      CORE_BUS_RESPONSE_pipe_read_data => CORE_BUS_RESPONSE_pipe_read_data(64 downto 0),
      CORE_BUS_REQUEST_pipe_write_req => CORE_BUS_REQUEST_pipe_write_req(0 downto 0),
      CORE_BUS_REQUEST_pipe_write_ack => CORE_BUS_REQUEST_pipe_write_ack(0 downto 0),
      CORE_BUS_REQUEST_pipe_write_data => CORE_BUS_REQUEST_pipe_write_data(109 downto 0),
      tag_in => singleMemAccess_tag_in,
      tag_out => singleMemAccess_tag_out-- 
    ); -- 
  -- module singleMemAccessAndSendResponse
  singleMemAccessAndSendResponse_ret_token <= singleMemAccessAndSendResponse_in_args(142 downto 142);
  singleMemAccessAndSendResponse_lock_bus <= singleMemAccessAndSendResponse_in_args(141 downto 141);
  singleMemAccessAndSendResponse_last_access <= singleMemAccessAndSendResponse_in_args(140 downto 140);
  singleMemAccessAndSendResponse_send_to_dcache <= singleMemAccessAndSendResponse_in_args(139 downto 139);
  singleMemAccessAndSendResponse_send_to_icache <= singleMemAccessAndSendResponse_in_args(138 downto 138);
  singleMemAccessAndSendResponse_do_mem_write <= singleMemAccessAndSendResponse_in_args(137 downto 137);
  singleMemAccessAndSendResponse_do_mem_read <= singleMemAccessAndSendResponse_in_args(136 downto 136);
  singleMemAccessAndSendResponse_access_mem_line <= singleMemAccessAndSendResponse_in_args(135 downto 135);
  singleMemAccessAndSendResponse_is_ctrl_reg_read <= singleMemAccessAndSendResponse_in_args(134 downto 134);
  singleMemAccessAndSendResponse_do_not_send_write_response <= singleMemAccessAndSendResponse_in_args(133 downto 133);
  singleMemAccessAndSendResponse_acc <= singleMemAccessAndSendResponse_in_args(132 downto 130);
  singleMemAccessAndSendResponse_faulty_fsr_generated <= singleMemAccessAndSendResponse_in_args(129 downto 129);
  singleMemAccessAndSendResponse_cacheable <= singleMemAccessAndSendResponse_in_args(128 downto 128);
  singleMemAccessAndSendResponse_mae <= singleMemAccessAndSendResponse_in_args(127 downto 127);
  singleMemAccessAndSendResponse_pte_error <= singleMemAccessAndSendResponse_in_args(126 downto 126);
  singleMemAccessAndSendResponse_fsr <= singleMemAccessAndSendResponse_in_args(125 downto 108);
  singleMemAccessAndSendResponse_byte_mask <= singleMemAccessAndSendResponse_in_args(107 downto 100);
  singleMemAccessAndSendResponse_addr <= singleMemAccessAndSendResponse_in_args(99 downto 64);
  singleMemAccessAndSendResponse_write_data <= singleMemAccessAndSendResponse_in_args(63 downto 0);
  singleMemAccessAndSendResponse_out_args <= singleMemAccessAndSendResponse_access_error ;
  -- call arbiter for module singleMemAccessAndSendResponse
  singleMemAccessAndSendResponse_arbiter: SplitCallArbiter -- 
    generic map( --
      name => "SplitCallArbiter", num_reqs => 2,
      call_data_width => 143,
      return_data_width => 1,
      callee_tag_length => 2,
      caller_tag_length => 1--
    )
    port map(-- 
      call_reqs => singleMemAccessAndSendResponse_call_reqs,
      call_acks => singleMemAccessAndSendResponse_call_acks,
      return_reqs => singleMemAccessAndSendResponse_return_reqs,
      return_acks => singleMemAccessAndSendResponse_return_acks,
      call_data  => singleMemAccessAndSendResponse_call_data,
      call_tag  => singleMemAccessAndSendResponse_call_tag,
      return_tag  => singleMemAccessAndSendResponse_return_tag,
      call_mtag => singleMemAccessAndSendResponse_tag_in,
      return_mtag => singleMemAccessAndSendResponse_tag_out,
      return_data =>singleMemAccessAndSendResponse_return_data,
      call_mreq => singleMemAccessAndSendResponse_start_req,
      call_mack => singleMemAccessAndSendResponse_start_ack,
      return_mreq => singleMemAccessAndSendResponse_fin_req,
      return_mack => singleMemAccessAndSendResponse_fin_ack,
      call_mdata => singleMemAccessAndSendResponse_in_args,
      return_mdata => singleMemAccessAndSendResponse_out_args,
      clk => clk, 
      reset => reset --
    ); --
  singleMemAccessAndSendResponse_instance:singleMemAccessAndSendResponse-- 
    generic map(tag_length => 3)
    port map(-- 
      ret_token => singleMemAccessAndSendResponse_ret_token,
      lock_bus => singleMemAccessAndSendResponse_lock_bus,
      last_access => singleMemAccessAndSendResponse_last_access,
      send_to_dcache => singleMemAccessAndSendResponse_send_to_dcache,
      send_to_icache => singleMemAccessAndSendResponse_send_to_icache,
      do_mem_write => singleMemAccessAndSendResponse_do_mem_write,
      do_mem_read => singleMemAccessAndSendResponse_do_mem_read,
      access_mem_line => singleMemAccessAndSendResponse_access_mem_line,
      is_ctrl_reg_read => singleMemAccessAndSendResponse_is_ctrl_reg_read,
      do_not_send_write_response => singleMemAccessAndSendResponse_do_not_send_write_response,
      acc => singleMemAccessAndSendResponse_acc,
      faulty_fsr_generated => singleMemAccessAndSendResponse_faulty_fsr_generated,
      cacheable => singleMemAccessAndSendResponse_cacheable,
      mae => singleMemAccessAndSendResponse_mae,
      pte_error => singleMemAccessAndSendResponse_pte_error,
      fsr => singleMemAccessAndSendResponse_fsr,
      byte_mask => singleMemAccessAndSendResponse_byte_mask,
      addr => singleMemAccessAndSendResponse_addr,
      write_data => singleMemAccessAndSendResponse_write_data,
      access_error => singleMemAccessAndSendResponse_access_error,
      start_req => singleMemAccessAndSendResponse_start_req,
      start_ack => singleMemAccessAndSendResponse_start_ack,
      fin_req => singleMemAccessAndSendResponse_fin_req,
      fin_ack => singleMemAccessAndSendResponse_fin_ack,
      clk => clk,
      reset => reset,
      MMU_to_DCACHE_response_pipe_write_req => MMU_to_DCACHE_response_pipe_write_req(0 downto 0),
      MMU_to_DCACHE_response_pipe_write_ack => MMU_to_DCACHE_response_pipe_write_ack(0 downto 0),
      MMU_to_DCACHE_response_pipe_write_data => MMU_to_DCACHE_response_pipe_write_data(74 downto 0),
      MMU_to_ICACHE_response_pipe_write_req => MMU_to_ICACHE_response_pipe_write_req(0 downto 0),
      MMU_to_ICACHE_response_pipe_write_ack => MMU_to_ICACHE_response_pipe_write_ack(0 downto 0),
      MMU_to_ICACHE_response_pipe_write_data => MMU_to_ICACHE_response_pipe_write_data(92 downto 0),
      NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_req => NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_req(0 downto 0),
      NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_ack => NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_ack(0 downto 0),
      NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_data => NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_data(0 downto 0),
      noblock_dword_token_return_pipe_write_req => noblock_dword_token_return_pipe_write_req(0 downto 0),
      noblock_dword_token_return_pipe_write_ack => noblock_dword_token_return_pipe_write_ack(0 downto 0),
      noblock_dword_token_return_pipe_write_data => noblock_dword_token_return_pipe_write_data(0 downto 0),
      singleMemAccess_call_reqs => singleMemAccess_call_reqs(0 downto 0),
      singleMemAccess_call_acks => singleMemAccess_call_acks(0 downto 0),
      singleMemAccess_call_data => singleMemAccess_call_data(109 downto 0),
      singleMemAccess_call_tag => singleMemAccess_call_tag(0 downto 0),
      singleMemAccess_return_reqs => singleMemAccess_return_reqs(0 downto 0),
      singleMemAccess_return_acks => singleMemAccess_return_acks(0 downto 0),
      singleMemAccess_return_data => singleMemAccess_return_data(64 downto 0),
      singleMemAccess_return_tag => singleMemAccess_return_tag(0 downto 0),
      tag_in => singleMemAccessAndSendResponse_tag_in,
      tag_out => singleMemAccessAndSendResponse_tag_out-- 
    ); -- 
  CORE_BUS_REQUEST_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe CORE_BUS_REQUEST",
      num_reads => 1,
      num_writes => 1,
      data_width => 110,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => CORE_BUS_REQUEST_pipe_read_req,
      read_ack => CORE_BUS_REQUEST_pipe_read_ack,
      read_data => CORE_BUS_REQUEST_pipe_read_data,
      write_req => CORE_BUS_REQUEST_pipe_write_req,
      write_ack => CORE_BUS_REQUEST_pipe_write_ack,
      write_data => CORE_BUS_REQUEST_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  CORE_BUS_RESPONSE_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe CORE_BUS_RESPONSE",
      num_reads => 1,
      num_writes => 1,
      data_width => 65,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => CORE_BUS_RESPONSE_pipe_read_req,
      read_ack => CORE_BUS_RESPONSE_pipe_read_ack,
      read_data => CORE_BUS_RESPONSE_pipe_read_data,
      write_req => CORE_BUS_RESPONSE_pipe_write_req,
      write_ack => CORE_BUS_RESPONSE_pipe_write_ack,
      write_data => CORE_BUS_RESPONSE_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  INVALIDATE_REQUEST_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe INVALIDATE_REQUEST",
      num_reads => 1,
      num_writes => 1,
      data_width => 30,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => INVALIDATE_REQUEST_pipe_read_req,
      read_ack => INVALIDATE_REQUEST_pipe_read_ack,
      read_data => INVALIDATE_REQUEST_pipe_read_data,
      write_req => INVALIDATE_REQUEST_pipe_write_req,
      write_ack => INVALIDATE_REQUEST_pipe_write_ack,
      write_data => INVALIDATE_REQUEST_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE",
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
      read_req => MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_req,
      read_ack => MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_ack,
      read_data => MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_data,
      write_req => MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_req,
      write_ack => MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_ack,
      write_data => MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_data,
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
  MMU_to_CPU_reset_ack_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe MMU_to_CPU_reset_ack",
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
      read_req => MMU_to_CPU_reset_ack_pipe_read_req,
      read_ack => MMU_to_CPU_reset_ack_pipe_read_ack,
      read_data => MMU_to_CPU_reset_ack_pipe_read_data,
      write_req => MMU_to_CPU_reset_ack_pipe_write_req,
      write_ack => MMU_to_CPU_reset_ack_pipe_write_ack,
      write_data => MMU_to_CPU_reset_ack_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  MMU_to_DCACHE_response_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe MMU_to_DCACHE_response",
      num_reads => 1,
      num_writes => 1,
      data_width => 75,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => MMU_to_DCACHE_response_pipe_read_req,
      read_ack => MMU_to_DCACHE_response_pipe_read_ack,
      read_data => MMU_to_DCACHE_response_pipe_read_data,
      write_req => MMU_to_DCACHE_response_pipe_write_req,
      write_ack => MMU_to_DCACHE_response_pipe_write_ack,
      write_data => MMU_to_DCACHE_response_pipe_write_data,
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
  NOBLOCK_CPU_to_MMU_reset_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe NOBLOCK_CPU_to_MMU_reset",
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
      read_req => NOBLOCK_CPU_to_MMU_reset_pipe_read_req,
      read_ack => NOBLOCK_CPU_to_MMU_reset_pipe_read_ack,
      read_data => NOBLOCK_CPU_to_MMU_reset_pipe_read_data,
      write_req => NOBLOCK_CPU_to_MMU_reset_pipe_write_req,
      write_ack => NOBLOCK_CPU_to_MMU_reset_pipe_write_ack,
      write_data => NOBLOCK_CPU_to_MMU_reset_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  NOBLOCK_INVALIDATE_SLOT_RETURN_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe NOBLOCK_INVALIDATE_SLOT_RETURN",
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
      read_req => NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_read_req,
      read_ack => NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_read_ack,
      read_data => NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_read_data,
      write_req => NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_req,
      write_ack => NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_ack,
      write_data => NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE",
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
      read_req => NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_req,
      read_ack => NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_ack,
      read_data => NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_data,
      write_req => NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_req,
      write_ack => NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_ack,
      write_data => NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_data,
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
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  noblock_dword_token_return_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe noblock_dword_token_return",
      num_reads => 1,
      num_writes => 1,
      data_width => 1,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 8 --
    )
    port map( -- 
      read_req => noblock_dword_token_return_pipe_read_req,
      read_ack => noblock_dword_token_return_pipe_read_ack,
      read_data => noblock_dword_token_return_pipe_read_data,
      write_req => noblock_dword_token_return_pipe_write_req,
      write_ack => noblock_dword_token_return_pipe_write_ack,
      write_data => noblock_dword_token_return_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  noblock_mem_access_and_send_response_command_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe noblock_mem_access_and_send_response_command",
      num_reads => 1,
      num_writes => 1,
      data_width => 209,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => true,
      depth => 0 --
    )
    port map( -- 
      read_req => noblock_mem_access_and_send_response_command_pipe_read_req,
      read_ack => noblock_mem_access_and_send_response_command_pipe_read_ack,
      read_data => noblock_mem_access_and_send_response_command_pipe_read_data,
      write_req => noblock_mem_access_and_send_response_command_pipe_write_req,
      write_ack => noblock_mem_access_and_send_response_command_pipe_write_ack,
      write_data => noblock_mem_access_and_send_response_command_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- gated clock generators 
  -- 
end dummy_mmu_arch;
