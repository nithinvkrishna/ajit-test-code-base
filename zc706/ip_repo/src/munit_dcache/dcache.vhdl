-- VHDL global package produced by vc2vhdl from virtual circuit (vc) description 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
package dcache_global_package is -- 
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
  constant DCACHE_BE_FLUSH_ALL : std_logic_vector(7 downto 0) := "00001100";
  constant DCACHE_BE_FLUSH_LINE : std_logic_vector(7 downto 0) := "00001011";
  constant DCACHE_BE_MMU_READ_LINE : std_logic_vector(7 downto 0) := "00000011";
  constant DCACHE_BE_NOCACHE_READ_MMU_DWORD : std_logic_vector(7 downto 0) := "00010000";
  constant DCACHE_BE_NOCACHE_WRITE_MMU_DWORD : std_logic_vector(7 downto 0) := "00001111";
  constant DCACHE_BE_NOP : std_logic_vector(7 downto 0) := "00001110";
  constant DCACHE_BE_READ_DWORD : std_logic_vector(7 downto 0) := "00000001";
  constant DCACHE_BE_READ_MMU_BYPASS_DWORD : std_logic_vector(7 downto 0) := "00000110";
  constant DCACHE_BE_READ_MMU_CTRL_REGISTER : std_logic_vector(7 downto 0) := "00001000";
  constant DCACHE_BE_SEND_ERROR_RESPONSE : std_logic_vector(7 downto 0) := "00010010";
  constant DCACHE_BE_SEND_MAE_RESPONSE : std_logic_vector(7 downto 0) := "00001010";
  constant DCACHE_BE_SEND_ZERO_RESPONSE : std_logic_vector(7 downto 0) := "00001001";
  constant DCACHE_BE_UNLOCK_TAGS : std_logic_vector(7 downto 0) := "00001101";
  constant DCACHE_BE_UPDATE_LAST_LINE : std_logic_vector(7 downto 0) := "00010001";
  constant DCACHE_BE_WRITE_DWORD : std_logic_vector(7 downto 0) := "00000010";
  constant DCACHE_BE_WRITE_MISS : std_logic_vector(7 downto 0) := "00000100";
  constant DCACHE_BE_WRITE_MMU_BYPASS_DWORD : std_logic_vector(7 downto 0) := "00000101";
  constant DCACHE_BE_WRITE_MMU_CTRL_REGISTER : std_logic_vector(7 downto 0) := "00000111";
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
  component dcache is -- 
    port (-- 
      clk : in std_logic;
      reset : in std_logic;
      CACHE_STALL_ENABLE: in std_logic_vector(0 downto 0);
      DCACHE_to_CPU_reset_ack_pipe_read_data: out std_logic_vector(0 downto 0);
      DCACHE_to_CPU_reset_ack_pipe_read_req : in std_logic_vector(0 downto 0);
      DCACHE_to_CPU_reset_ack_pipe_read_ack : out std_logic_vector(0 downto 0);
      DCACHE_to_CPU_response_pipe_read_data: out std_logic_vector(71 downto 0);
      DCACHE_to_CPU_response_pipe_read_req : in std_logic_vector(0 downto 0);
      DCACHE_to_CPU_response_pipe_read_ack : out std_logic_vector(0 downto 0);
      DCACHE_to_CPU_slow_response_pipe_read_data: out std_logic_vector(71 downto 0);
      DCACHE_to_CPU_slow_response_pipe_read_req : in std_logic_vector(0 downto 0);
      DCACHE_to_CPU_slow_response_pipe_read_ack : out std_logic_vector(0 downto 0);
      DCACHE_to_MMU_request_pipe_read_data: out std_logic_vector(119 downto 0);
      DCACHE_to_MMU_request_pipe_read_req : in std_logic_vector(0 downto 0);
      DCACHE_to_MMU_request_pipe_read_ack : out std_logic_vector(0 downto 0);
      MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_data: in std_logic_vector(26 downto 0);
      MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_req : in std_logic_vector(0 downto 0);
      MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_ack : out std_logic_vector(0 downto 0);
      MMU_to_DCACHE_response_pipe_write_data: in std_logic_vector(74 downto 0);
      MMU_to_DCACHE_response_pipe_write_req : in std_logic_vector(0 downto 0);
      MMU_to_DCACHE_response_pipe_write_ack : out std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_DCACHE_command_pipe_write_data: in std_logic_vector(142 downto 0);
      NOBLOCK_CPU_to_DCACHE_command_pipe_write_req : in std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_DCACHE_command_pipe_write_ack : out std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_DCACHE_reset_pipe_write_data: in std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_DCACHE_reset_pipe_write_req : in std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_DCACHE_reset_pipe_write_ack : out std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_data: in std_logic_vector(120 downto 0);
      NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_req : in std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_ack : out std_logic_vector(0 downto 0);
      NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_data: out std_logic_vector(92 downto 0);
      NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_req : in std_logic_vector(0 downto 0);
      NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_ack : out std_logic_vector(0 downto 0);
      NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_data: out std_logic_vector(92 downto 0);
      NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_req : in std_logic_vector(0 downto 0);
      NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_ack : out std_logic_vector(0 downto 0);
      NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_data: in std_logic_vector(0 downto 0);
      NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_req : in std_logic_vector(0 downto 0);
      NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_ack : out std_logic_vector(0 downto 0);
      NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_data: in std_logic_vector(26 downto 0);
      NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_req : in std_logic_vector(0 downto 0);
      NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_ack : out std_logic_vector(0 downto 0)); -- 
    -- 
  end component;
  -- 
end package dcache_global_package;
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
library munit_dcache;
use munit_dcache.dcache_global_package.all;
entity DcacheBackendDaemon is -- 
  generic (tag_length : integer); 
  port ( -- 
    dcache_frontend_to_backend_pipe_read_req : out  std_logic_vector(0 downto 0);
    dcache_frontend_to_backend_pipe_read_ack : in   std_logic_vector(0 downto 0);
    dcache_frontend_to_backend_pipe_read_data : in   std_logic_vector(119 downto 0);
    DCACHE_to_MMU_request_pipe_write_req : out  std_logic_vector(0 downto 0);
    DCACHE_to_MMU_request_pipe_write_ack : in   std_logic_vector(0 downto 0);
    DCACHE_to_MMU_request_pipe_write_data : out  std_logic_vector(119 downto 0);
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
end entity DcacheBackendDaemon;
architecture DcacheBackendDaemon_arch of DcacheBackendDaemon is -- 
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
  signal DcacheBackendDaemon_CP_18_start: Boolean;
  signal DcacheBackendDaemon_CP_18_symbol: Boolean;
  -- volatile/operator module components. 
  component constructAccessLineRequest_Volatile is -- 
    port ( -- 
      lock_bus_mask : in  std_logic_vector(7 downto 0);
      write_miss : in  std_logic_vector(0 downto 0);
      asi : in  std_logic_vector(7 downto 0);
      cpu_byte_mask : in  std_logic_vector(7 downto 0);
      addr : in  std_logic_vector(31 downto 0);
      write_data : in  std_logic_vector(63 downto 0);
      access_line_request : out  std_logic_vector(119 downto 0)-- 
    );
    -- 
  end component; 
  component parse_from_frontend_Volatile is -- 
    port ( -- 
      from_frontend : in  std_logic_vector(119 downto 0);
      no_response_to_fe : out  std_logic_vector(0 downto 0);
      lock_bus : out  std_logic_vector(0 downto 0);
      read_miss : out  std_logic_vector(0 downto 0);
      write_miss : out  std_logic_vector(0 downto 0);
      write_hit : out  std_logic_vector(0 downto 0);
      read_bypass : out  std_logic_vector(0 downto 0);
      write_bypass : out  std_logic_vector(0 downto 0);
      write_fsr : out  std_logic_vector(0 downto 0);
      asi : out  std_logic_vector(7 downto 0);
      byte_mask : out  std_logic_vector(7 downto 0);
      addr : out  std_logic_vector(31 downto 0);
      write_data : out  std_logic_vector(63 downto 0)-- 
    );
    -- 
  end component; 
  component isSupervisorAsi_Volatile is -- 
    port ( -- 
      asi : in  std_logic_vector(7 downto 0);
      ret_val : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  -- links between control-path and data-path
  signal WPIPE_DCACHE_to_MMU_request_1168_inst_req_0 : boolean;
  signal WPIPE_DCACHE_to_MMU_request_1168_inst_req_1 : boolean;
  signal WPIPE_DCACHE_to_MMU_request_1168_inst_ack_1 : boolean;
  signal WPIPE_DCACHE_to_MMU_request_1168_inst_ack_0 : boolean;
  signal do_while_stmt_1059_branch_ack_1 : boolean;
  signal do_while_stmt_1059_branch_ack_0 : boolean;
  signal do_while_stmt_1059_branch_req_0 : boolean;
  signal RPIPE_dcache_frontend_to_backend_1063_inst_ack_1 : boolean;
  signal RPIPE_dcache_frontend_to_backend_1063_inst_req_1 : boolean;
  signal RPIPE_dcache_frontend_to_backend_1063_inst_ack_0 : boolean;
  signal RPIPE_dcache_frontend_to_backend_1063_inst_req_0 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "DcacheBackendDaemon_input_buffer", -- 
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
  DcacheBackendDaemon_CP_18_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "DcacheBackendDaemon_out_buffer", -- 
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
    preds <= DcacheBackendDaemon_CP_18_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
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
    preds <= DcacheBackendDaemon_CP_18_start & tag_ilock_write_ack_symbol;
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
    preds <= DcacheBackendDaemon_CP_18_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  DcacheBackendDaemon_CP_18: Block -- control-path 
    signal DcacheBackendDaemon_CP_18_elements: BooleanArray(25 downto 0);
    -- 
  begin -- 
    DcacheBackendDaemon_CP_18_elements(0) <= DcacheBackendDaemon_CP_18_start;
    DcacheBackendDaemon_CP_18_symbol <= DcacheBackendDaemon_CP_18_elements(1);
    -- CP-element group 0:  transition  place  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	2 
    -- CP-element group 0:  members (4) 
      -- CP-element group 0: 	 branch_block_stmt_1058/do_while_stmt_1059__entry__
      -- CP-element group 0: 	 branch_block_stmt_1058/branch_block_stmt_1058__entry__
      -- CP-element group 0: 	 branch_block_stmt_1058/$entry
      -- CP-element group 0: 	 $entry
      -- 
    -- CP-element group 1:  transition  place  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	25 
    -- CP-element group 1: successors 
    -- CP-element group 1:  members (4) 
      -- CP-element group 1: 	 branch_block_stmt_1058/do_while_stmt_1059__exit__
      -- CP-element group 1: 	 branch_block_stmt_1058/branch_block_stmt_1058__exit__
      -- CP-element group 1: 	 branch_block_stmt_1058/$exit
      -- CP-element group 1: 	 $exit
      -- 
    DcacheBackendDaemon_CP_18_elements(1) <= DcacheBackendDaemon_CP_18_elements(25);
    -- CP-element group 2:  transition  place  bypass  pipeline-parent 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	0 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	8 
    -- CP-element group 2:  members (2) 
      -- CP-element group 2: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059__entry__
      -- CP-element group 2: 	 branch_block_stmt_1058/do_while_stmt_1059/$entry
      -- 
    DcacheBackendDaemon_CP_18_elements(2) <= DcacheBackendDaemon_CP_18_elements(0);
    -- CP-element group 3:  merge  place  bypass  pipeline-parent 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	25 
    -- CP-element group 3:  members (1) 
      -- CP-element group 3: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059__exit__
      -- 
    -- Element group DcacheBackendDaemon_CP_18_elements(3) is bound as output of CP function.
    -- CP-element group 4:  merge  place  bypass  pipeline-parent 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	7 
    -- CP-element group 4:  members (1) 
      -- CP-element group 4: 	 branch_block_stmt_1058/do_while_stmt_1059/loop_back
      -- 
    -- Element group DcacheBackendDaemon_CP_18_elements(4) is bound as output of CP function.
    -- CP-element group 5:  branch  transition  place  bypass  pipeline-parent 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	10 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	24 
    -- CP-element group 5: 	23 
    -- CP-element group 5:  members (3) 
      -- CP-element group 5: 	 branch_block_stmt_1058/do_while_stmt_1059/loop_taken/$entry
      -- CP-element group 5: 	 branch_block_stmt_1058/do_while_stmt_1059/condition_done
      -- CP-element group 5: 	 branch_block_stmt_1058/do_while_stmt_1059/loop_exit/$entry
      -- 
    DcacheBackendDaemon_CP_18_elements(5) <= DcacheBackendDaemon_CP_18_elements(10);
    -- CP-element group 6:  branch  place  bypass  pipeline-parent 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	22 
    -- CP-element group 6: successors 
    -- CP-element group 6:  members (1) 
      -- CP-element group 6: 	 branch_block_stmt_1058/do_while_stmt_1059/loop_body_done
      -- 
    DcacheBackendDaemon_CP_18_elements(6) <= DcacheBackendDaemon_CP_18_elements(22);
    -- CP-element group 7:  transition  bypass  pipeline-parent 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	4 
    -- CP-element group 7: successors 
    -- CP-element group 7:  members (1) 
      -- CP-element group 7: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/back_edge_to_loop_body
      -- 
    DcacheBackendDaemon_CP_18_elements(7) <= DcacheBackendDaemon_CP_18_elements(4);
    -- CP-element group 8:  transition  bypass  pipeline-parent 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	2 
    -- CP-element group 8: successors 
    -- CP-element group 8:  members (1) 
      -- CP-element group 8: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/first_time_through_loop_body
      -- 
    DcacheBackendDaemon_CP_18_elements(8) <= DcacheBackendDaemon_CP_18_elements(2);
    -- CP-element group 9:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	13 
    -- CP-element group 9: 	21 
    -- CP-element group 9: 	11 
    -- CP-element group 9:  members (3) 
      -- CP-element group 9: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/phi_stmt_1061_sample_start_
      -- CP-element group 9: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/loop_body_start
      -- CP-element group 9: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/$entry
      -- 
    -- Element group DcacheBackendDaemon_CP_18_elements(9) is bound as output of CP function.
    -- CP-element group 10:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	17 
    -- CP-element group 10: 	21 
    -- CP-element group 10: 	12 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	5 
    -- CP-element group 10:  members (1) 
      -- CP-element group 10: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/condition_evaluated
      -- 
    condition_evaluated_42_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " condition_evaluated_42_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => DcacheBackendDaemon_CP_18_elements(10), ack => do_while_stmt_1059_branch_req_0); -- 
    DcacheBackendDaemon_cp_element_group_10: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 39) := "DcacheBackendDaemon_cp_element_group_10"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= DcacheBackendDaemon_CP_18_elements(17) & DcacheBackendDaemon_CP_18_elements(21) & DcacheBackendDaemon_CP_18_elements(12);
      gj_DcacheBackendDaemon_cp_element_group_10 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => DcacheBackendDaemon_CP_18_elements(10), clk => clk, reset => reset); --
    end block;
    -- CP-element group 11:  join  transition  bypass  pipeline-parent 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	9 
    -- CP-element group 11: marked-predecessors 
    -- CP-element group 11: 	17 
    -- CP-element group 11: successors 
    -- CP-element group 11: 	14 
    -- CP-element group 11:  members (1) 
      -- CP-element group 11: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/aggregated_phi_sample_req
      -- 
    DcacheBackendDaemon_cp_element_group_11: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 39) := "DcacheBackendDaemon_cp_element_group_11"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= DcacheBackendDaemon_CP_18_elements(9) & DcacheBackendDaemon_CP_18_elements(17);
      gj_DcacheBackendDaemon_cp_element_group_11 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => DcacheBackendDaemon_CP_18_elements(11), clk => clk, reset => reset); --
    end block;
    -- CP-element group 12:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	16 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	10 
    -- CP-element group 12:  members (1) 
      -- CP-element group 12: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/aggregated_phi_sample_ack_d
      -- 
    -- Element group DcacheBackendDaemon_CP_18_elements(12) is a control-delay.
    cp_element_12_delay: control_delay_element  generic map(name => " 12_delay", delay_value => 1)  port map(req => DcacheBackendDaemon_CP_18_elements(16), ack => DcacheBackendDaemon_CP_18_elements(12), clk => clk, reset =>reset);
    -- CP-element group 13:  join  transition  bypass  pipeline-parent 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: 	9 
    -- CP-element group 13: marked-predecessors 
    -- CP-element group 13: 	19 
    -- CP-element group 13: successors 
    -- CP-element group 13: 	15 
    -- CP-element group 13:  members (2) 
      -- CP-element group 13: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/phi_stmt_1061_update_start_
      -- CP-element group 13: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/aggregated_phi_update_req
      -- 
    DcacheBackendDaemon_cp_element_group_13: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 39) := "DcacheBackendDaemon_cp_element_group_13"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= DcacheBackendDaemon_CP_18_elements(9) & DcacheBackendDaemon_CP_18_elements(19);
      gj_DcacheBackendDaemon_cp_element_group_13 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => DcacheBackendDaemon_CP_18_elements(13), clk => clk, reset => reset); --
    end block;
    -- CP-element group 14:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: 	11 
    -- CP-element group 14: marked-predecessors 
    -- CP-element group 14: 	17 
    -- CP-element group 14: successors 
    -- CP-element group 14: 	16 
    -- CP-element group 14:  members (3) 
      -- CP-element group 14: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/RPIPE_dcache_frontend_to_backend_1063_sample_start_
      -- CP-element group 14: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/RPIPE_dcache_frontend_to_backend_1063_Sample/rr
      -- CP-element group 14: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/RPIPE_dcache_frontend_to_backend_1063_Sample/$entry
      -- 
    rr_60_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_60_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => DcacheBackendDaemon_CP_18_elements(14), ack => RPIPE_dcache_frontend_to_backend_1063_inst_req_0); -- 
    DcacheBackendDaemon_cp_element_group_14: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 39) := "DcacheBackendDaemon_cp_element_group_14"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= DcacheBackendDaemon_CP_18_elements(11) & DcacheBackendDaemon_CP_18_elements(17);
      gj_DcacheBackendDaemon_cp_element_group_14 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => DcacheBackendDaemon_CP_18_elements(14), clk => clk, reset => reset); --
    end block;
    -- CP-element group 15:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: 	16 
    -- CP-element group 15: 	13 
    -- CP-element group 15: successors 
    -- CP-element group 15: 	17 
    -- CP-element group 15:  members (3) 
      -- CP-element group 15: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/RPIPE_dcache_frontend_to_backend_1063_Update/cr
      -- CP-element group 15: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/RPIPE_dcache_frontend_to_backend_1063_Update/$entry
      -- CP-element group 15: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/RPIPE_dcache_frontend_to_backend_1063_update_start_
      -- 
    cr_65_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_65_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => DcacheBackendDaemon_CP_18_elements(15), ack => RPIPE_dcache_frontend_to_backend_1063_inst_req_1); -- 
    DcacheBackendDaemon_cp_element_group_15: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 39) := "DcacheBackendDaemon_cp_element_group_15"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= DcacheBackendDaemon_CP_18_elements(16) & DcacheBackendDaemon_CP_18_elements(13);
      gj_DcacheBackendDaemon_cp_element_group_15 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => DcacheBackendDaemon_CP_18_elements(15), clk => clk, reset => reset); --
    end block;
    -- CP-element group 16:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: 	14 
    -- CP-element group 16: successors 
    -- CP-element group 16: 	15 
    -- CP-element group 16: 	12 
    -- CP-element group 16: 	22 
    -- CP-element group 16:  members (5) 
      -- CP-element group 16: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/phi_stmt_1061_sample_completed_
      -- CP-element group 16: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/aggregated_phi_sample_ack
      -- CP-element group 16: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/RPIPE_dcache_frontend_to_backend_1063_sample_completed_
      -- CP-element group 16: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/RPIPE_dcache_frontend_to_backend_1063_Sample/ra
      -- CP-element group 16: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/RPIPE_dcache_frontend_to_backend_1063_Sample/$exit
      -- 
    ra_61_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 16_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_dcache_frontend_to_backend_1063_inst_ack_0, ack => DcacheBackendDaemon_CP_18_elements(16)); -- 
    -- CP-element group 17:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 17: predecessors 
    -- CP-element group 17: 	15 
    -- CP-element group 17: successors 
    -- CP-element group 17: 	10 
    -- CP-element group 17: 	18 
    -- CP-element group 17: marked-successors 
    -- CP-element group 17: 	14 
    -- CP-element group 17: 	11 
    -- CP-element group 17:  members (5) 
      -- CP-element group 17: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/phi_stmt_1061_update_completed_
      -- CP-element group 17: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/aggregated_phi_update_ack
      -- CP-element group 17: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/RPIPE_dcache_frontend_to_backend_1063_Update/ca
      -- CP-element group 17: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/RPIPE_dcache_frontend_to_backend_1063_Update/$exit
      -- CP-element group 17: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/RPIPE_dcache_frontend_to_backend_1063_update_completed_
      -- 
    ca_66_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 17_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_dcache_frontend_to_backend_1063_inst_ack_1, ack => DcacheBackendDaemon_CP_18_elements(17)); -- 
    -- CP-element group 18:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 18: predecessors 
    -- CP-element group 18: 	17 
    -- CP-element group 18: marked-predecessors 
    -- CP-element group 18: 	20 
    -- CP-element group 18: successors 
    -- CP-element group 18: 	19 
    -- CP-element group 18:  members (3) 
      -- CP-element group 18: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/WPIPE_DCACHE_to_MMU_request_1168_Sample/req
      -- CP-element group 18: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/WPIPE_DCACHE_to_MMU_request_1168_Sample/$entry
      -- CP-element group 18: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/WPIPE_DCACHE_to_MMU_request_1168_sample_start_
      -- 
    req_74_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_74_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => DcacheBackendDaemon_CP_18_elements(18), ack => WPIPE_DCACHE_to_MMU_request_1168_inst_req_0); -- 
    DcacheBackendDaemon_cp_element_group_18: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 39) := "DcacheBackendDaemon_cp_element_group_18"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= DcacheBackendDaemon_CP_18_elements(17) & DcacheBackendDaemon_CP_18_elements(20);
      gj_DcacheBackendDaemon_cp_element_group_18 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => DcacheBackendDaemon_CP_18_elements(18), clk => clk, reset => reset); --
    end block;
    -- CP-element group 19:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 19: predecessors 
    -- CP-element group 19: 	18 
    -- CP-element group 19: successors 
    -- CP-element group 19: 	20 
    -- CP-element group 19: marked-successors 
    -- CP-element group 19: 	13 
    -- CP-element group 19:  members (6) 
      -- CP-element group 19: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/WPIPE_DCACHE_to_MMU_request_1168_update_start_
      -- CP-element group 19: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/WPIPE_DCACHE_to_MMU_request_1168_Update/$entry
      -- CP-element group 19: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/WPIPE_DCACHE_to_MMU_request_1168_Sample/$exit
      -- CP-element group 19: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/WPIPE_DCACHE_to_MMU_request_1168_Update/req
      -- CP-element group 19: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/WPIPE_DCACHE_to_MMU_request_1168_sample_completed_
      -- CP-element group 19: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/WPIPE_DCACHE_to_MMU_request_1168_Sample/ack
      -- 
    ack_75_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 19_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_DCACHE_to_MMU_request_1168_inst_ack_0, ack => DcacheBackendDaemon_CP_18_elements(19)); -- 
    req_79_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_79_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => DcacheBackendDaemon_CP_18_elements(19), ack => WPIPE_DCACHE_to_MMU_request_1168_inst_req_1); -- 
    -- CP-element group 20:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 20: predecessors 
    -- CP-element group 20: 	19 
    -- CP-element group 20: successors 
    -- CP-element group 20: 	22 
    -- CP-element group 20: marked-successors 
    -- CP-element group 20: 	18 
    -- CP-element group 20:  members (3) 
      -- CP-element group 20: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/WPIPE_DCACHE_to_MMU_request_1168_update_completed_
      -- CP-element group 20: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/WPIPE_DCACHE_to_MMU_request_1168_Update/$exit
      -- CP-element group 20: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/WPIPE_DCACHE_to_MMU_request_1168_Update/ack
      -- 
    ack_80_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 20_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_DCACHE_to_MMU_request_1168_inst_ack_1, ack => DcacheBackendDaemon_CP_18_elements(20)); -- 
    -- CP-element group 21:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 21: predecessors 
    -- CP-element group 21: 	9 
    -- CP-element group 21: successors 
    -- CP-element group 21: 	10 
    -- CP-element group 21:  members (1) 
      -- CP-element group 21: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/loop_body_delay_to_condition_start
      -- 
    -- Element group DcacheBackendDaemon_CP_18_elements(21) is a control-delay.
    cp_element_21_delay: control_delay_element  generic map(name => " 21_delay", delay_value => 1)  port map(req => DcacheBackendDaemon_CP_18_elements(9), ack => DcacheBackendDaemon_CP_18_elements(21), clk => clk, reset =>reset);
    -- CP-element group 22:  join  transition  bypass  pipeline-parent 
    -- CP-element group 22: predecessors 
    -- CP-element group 22: 	16 
    -- CP-element group 22: 	20 
    -- CP-element group 22: successors 
    -- CP-element group 22: 	6 
    -- CP-element group 22:  members (1) 
      -- CP-element group 22: 	 branch_block_stmt_1058/do_while_stmt_1059/do_while_stmt_1059_loop_body/$exit
      -- 
    DcacheBackendDaemon_cp_element_group_22: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 15);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 39) := "DcacheBackendDaemon_cp_element_group_22"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= DcacheBackendDaemon_CP_18_elements(16) & DcacheBackendDaemon_CP_18_elements(20);
      gj_DcacheBackendDaemon_cp_element_group_22 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => DcacheBackendDaemon_CP_18_elements(22), clk => clk, reset => reset); --
    end block;
    -- CP-element group 23:  transition  input  bypass  pipeline-parent 
    -- CP-element group 23: predecessors 
    -- CP-element group 23: 	5 
    -- CP-element group 23: successors 
    -- CP-element group 23:  members (2) 
      -- CP-element group 23: 	 branch_block_stmt_1058/do_while_stmt_1059/loop_exit/ack
      -- CP-element group 23: 	 branch_block_stmt_1058/do_while_stmt_1059/loop_exit/$exit
      -- 
    ack_85_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 23_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_1059_branch_ack_0, ack => DcacheBackendDaemon_CP_18_elements(23)); -- 
    -- CP-element group 24:  transition  input  bypass  pipeline-parent 
    -- CP-element group 24: predecessors 
    -- CP-element group 24: 	5 
    -- CP-element group 24: successors 
    -- CP-element group 24:  members (2) 
      -- CP-element group 24: 	 branch_block_stmt_1058/do_while_stmt_1059/loop_taken/ack
      -- CP-element group 24: 	 branch_block_stmt_1058/do_while_stmt_1059/loop_taken/$exit
      -- 
    ack_89_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 24_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_1059_branch_ack_1, ack => DcacheBackendDaemon_CP_18_elements(24)); -- 
    -- CP-element group 25:  transition  bypass  pipeline-parent 
    -- CP-element group 25: predecessors 
    -- CP-element group 25: 	3 
    -- CP-element group 25: successors 
    -- CP-element group 25: 	1 
    -- CP-element group 25:  members (1) 
      -- CP-element group 25: 	 branch_block_stmt_1058/do_while_stmt_1059/$exit
      -- 
    DcacheBackendDaemon_CP_18_elements(25) <= DcacheBackendDaemon_CP_18_elements(3);
    DcacheBackendDaemon_do_while_stmt_1059_terminator_90: loop_terminator -- 
      generic map (name => " DcacheBackendDaemon_do_while_stmt_1059_terminator_90", max_iterations_in_flight =>15) 
      port map(loop_body_exit => DcacheBackendDaemon_CP_18_elements(6),loop_continue => DcacheBackendDaemon_CP_18_elements(24),loop_terminate => DcacheBackendDaemon_CP_18_elements(23),loop_back => DcacheBackendDaemon_CP_18_elements(4),loop_exit => DcacheBackendDaemon_CP_18_elements(3),clk => clk, reset => reset); -- 
    entry_tmerge_43_block : block -- 
      signal preds : BooleanArray(0 to 1);
      begin -- 
        preds(0)  <= DcacheBackendDaemon_CP_18_elements(7);
        preds(1)  <= DcacheBackendDaemon_CP_18_elements(8);
        entry_tmerge_43 : transition_merge -- 
          generic map(name => " entry_tmerge_43")
          port map (preds => preds, symbol_out => DcacheBackendDaemon_CP_18_elements(9));
          -- 
    end block;
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal CONCAT_u16_u24_1148_wire : std_logic_vector(23 downto 0);
    signal CONCAT_u1_u2_1094_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u32_u96_1151_wire : std_logic_vector(95 downto 0);
    signal CONCAT_u8_u16_1146_wire : std_logic_vector(15 downto 0);
    signal MUX_1113_wire : std_logic_vector(7 downto 0);
    signal MUX_1117_wire : std_logic_vector(7 downto 0);
    signal MUX_1122_wire : std_logic_vector(7 downto 0);
    signal OR_u1_u1_1110_wire : std_logic_vector(0 downto 0);
    signal OR_u8_u8_1118_wire : std_logic_vector(7 downto 0);
    signal OR_u8_u8_1123_wire : std_logic_vector(7 downto 0);
    signal RPIPE_dcache_frontend_to_backend_1063_wire : std_logic_vector(119 downto 0);
    signal R_MMU_READ_DWORD_1115_wire_constant : std_logic_vector(7 downto 0);
    signal R_MMU_WRITE_DWORD_NO_RESPONSE_1111_wire_constant : std_logic_vector(7 downto 0);
    signal R_MMU_WRITE_FSR_1120_wire_constant : std_logic_vector(7 downto 0);
    signal R_ZERO_1_1092_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_6_1095_wire_constant : std_logic_vector(5 downto 0);
    signal S_1105 : std_logic_vector(0 downto 0);
    signal access_line_request_1161 : std_logic_vector(119 downto 0);
    signal addr_1078 : std_logic_vector(31 downto 0);
    signal asi_1078 : std_logic_vector(7 downto 0);
    signal byte_mask_1078 : std_logic_vector(7 downto 0);
    signal dword_access_request_to_mmu_1153 : std_logic_vector(119 downto 0);
    signal fetch_line_1130 : std_logic_vector(0 downto 0);
    signal from_frontend_1061 : std_logic_vector(119 downto 0);
    signal konst_1100_wire_constant : std_logic_vector(7 downto 0);
    signal konst_1112_wire_constant : std_logic_vector(7 downto 0);
    signal konst_1116_wire_constant : std_logic_vector(7 downto 0);
    signal konst_1121_wire_constant : std_logic_vector(7 downto 0);
    signal konst_1172_wire_constant : std_logic_vector(0 downto 0);
    signal lock_bus_1078 : std_logic_vector(0 downto 0);
    signal lock_bus_mask_1097 : std_logic_vector(7 downto 0);
    signal mmu_access_dword_command_1125 : std_logic_vector(7 downto 0);
    signal no_response_to_fe_1078 : std_logic_vector(0 downto 0);
    signal read_bypass_1078 : std_logic_vector(0 downto 0);
    signal read_miss_1078 : std_logic_vector(0 downto 0);
    signal real_asi_1102 : std_logic_vector(7 downto 0);
    signal to_mmu_1167 : std_logic_vector(119 downto 0);
    signal write_bypass_1078 : std_logic_vector(0 downto 0);
    signal write_data_1078 : std_logic_vector(63 downto 0);
    signal write_fsr_1078 : std_logic_vector(0 downto 0);
    signal write_hit_1078 : std_logic_vector(0 downto 0);
    signal write_miss_1078 : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    R_MMU_READ_DWORD_1115_wire_constant <= "00000010";
    R_MMU_WRITE_DWORD_NO_RESPONSE_1111_wire_constant <= "00000101";
    R_MMU_WRITE_FSR_1120_wire_constant <= "00000100";
    R_ZERO_1_1092_wire_constant <= "0";
    R_ZERO_6_1095_wire_constant <= "000000";
    konst_1100_wire_constant <= "00111111";
    konst_1112_wire_constant <= "00000000";
    konst_1116_wire_constant <= "00000000";
    konst_1121_wire_constant <= "00000000";
    konst_1172_wire_constant <= "1";
    -- flow-through select operator MUX_1113_inst
    MUX_1113_wire <= R_MMU_WRITE_DWORD_NO_RESPONSE_1111_wire_constant when (OR_u1_u1_1110_wire(0) /=  '0') else konst_1112_wire_constant;
    -- flow-through select operator MUX_1117_inst
    MUX_1117_wire <= R_MMU_READ_DWORD_1115_wire_constant when (read_bypass_1078(0) /=  '0') else konst_1116_wire_constant;
    -- flow-through select operator MUX_1122_inst
    MUX_1122_wire <= R_MMU_WRITE_FSR_1120_wire_constant when (write_fsr_1078(0) /=  '0') else konst_1121_wire_constant;
    -- flow-through select operator MUX_1166_inst
    to_mmu_1167 <= access_line_request_1161 when (fetch_line_1130(0) /=  '0') else dword_access_request_to_mmu_1153;
    -- interlock ssrc_phi_stmt_1061
    process(RPIPE_dcache_frontend_to_backend_1063_wire) -- 
      variable tmp_var : std_logic_vector(119 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 119 downto 0) := RPIPE_dcache_frontend_to_backend_1063_wire(119 downto 0);
      from_frontend_1061 <= tmp_var; -- 
    end process;
    do_while_stmt_1059_branch: Block -- 
      -- branch-block
      signal condition_sig : std_logic_vector(0 downto 0);
      begin 
      condition_sig <= konst_1172_wire_constant;
      branch_instance: BranchBase -- 
        generic map( name => "do_while_stmt_1059_branch", condition_width => 1,  bypass_flag => true)
        port map( -- 
          condition => condition_sig,
          req => do_while_stmt_1059_branch_req_0,
          ack0 => do_while_stmt_1059_branch_ack_0,
          ack1 => do_while_stmt_1059_branch_ack_1,
          clk => clk,
          reset => reset); -- 
      --
    end Block; -- branch-block
    -- flow through binary operator AND_u8_u8_1101_inst
    real_asi_1102 <= (asi_1078 and konst_1100_wire_constant);
    -- flow through binary operator CONCAT_u16_u24_1148_inst
    process(CONCAT_u8_u16_1146_wire, mmu_access_dword_command_1125) -- 
      variable tmp_var : std_logic_vector(23 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u8_u16_1146_wire, mmu_access_dword_command_1125, tmp_var);
      CONCAT_u16_u24_1148_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_1094_inst
    process(R_ZERO_1_1092_wire_constant, lock_bus_1078) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(R_ZERO_1_1092_wire_constant, lock_bus_1078, tmp_var);
      CONCAT_u1_u2_1094_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u24_u120_1152_inst
    process(CONCAT_u16_u24_1148_wire, CONCAT_u32_u96_1151_wire) -- 
      variable tmp_var : std_logic_vector(119 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u16_u24_1148_wire, CONCAT_u32_u96_1151_wire, tmp_var);
      dword_access_request_to_mmu_1153 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u8_1096_inst
    process(CONCAT_u1_u2_1094_wire) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_1094_wire, R_ZERO_6_1095_wire_constant, tmp_var);
      lock_bus_mask_1097 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u96_1151_inst
    process(addr_1078, write_data_1078) -- 
      variable tmp_var : std_logic_vector(95 downto 0); -- 
    begin -- 
      ApConcat_proc(addr_1078, write_data_1078, tmp_var);
      CONCAT_u32_u96_1151_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u8_u16_1146_inst
    process(asi_1078, byte_mask_1078) -- 
      variable tmp_var : std_logic_vector(15 downto 0); -- 
    begin -- 
      ApConcat_proc(asi_1078, byte_mask_1078, tmp_var);
      CONCAT_u8_u16_1146_wire <= tmp_var; --
    end process;
    -- flow through binary operator OR_u1_u1_1110_inst
    OR_u1_u1_1110_wire <= (write_hit_1078 or write_bypass_1078);
    -- flow through binary operator OR_u1_u1_1129_inst
    fetch_line_1130 <= (write_miss_1078 or read_miss_1078);
    -- flow through binary operator OR_u8_u8_1118_inst
    OR_u8_u8_1118_wire <= (MUX_1113_wire or MUX_1117_wire);
    -- flow through binary operator OR_u8_u8_1123_inst
    OR_u8_u8_1123_wire <= (OR_u8_u8_1118_wire or MUX_1122_wire);
    -- flow through binary operator OR_u8_u8_1124_inst
    mmu_access_dword_command_1125 <= (lock_bus_mask_1097 or OR_u8_u8_1123_wire);
    -- shared inport operator group (0) : RPIPE_dcache_frontend_to_backend_1063_inst 
    InportGroup_0: Block -- 
      signal data_out: std_logic_vector(119 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_dcache_frontend_to_backend_1063_inst_req_0;
      RPIPE_dcache_frontend_to_backend_1063_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_dcache_frontend_to_backend_1063_inst_req_1;
      RPIPE_dcache_frontend_to_backend_1063_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      RPIPE_dcache_frontend_to_backend_1063_wire <= data_out(119 downto 0);
      dcache_frontend_to_backend_read_0_gI: SplitGuardInterface generic map(name => "dcache_frontend_to_backend_read_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      dcache_frontend_to_backend_read_0: InputPort_P2P -- 
        generic map ( name => "dcache_frontend_to_backend_read_0", data_width => 120,    bypass_flag => true,   	nonblocking_read_flag => false,  barrier_flag => false,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => dcache_frontend_to_backend_pipe_read_req(0),
          oack => dcache_frontend_to_backend_pipe_read_ack(0),
          odata => dcache_frontend_to_backend_pipe_read_data(119 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 0
    -- shared outport operator group (0) : WPIPE_DCACHE_to_MMU_request_1168_inst 
    OutportGroup_0: Block -- 
      signal data_in: std_logic_vector(119 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_DCACHE_to_MMU_request_1168_inst_req_0;
      WPIPE_DCACHE_to_MMU_request_1168_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_DCACHE_to_MMU_request_1168_inst_req_1;
      WPIPE_DCACHE_to_MMU_request_1168_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= to_mmu_1167;
      DCACHE_to_MMU_request_write_0_gI: SplitGuardInterface generic map(name => "DCACHE_to_MMU_request_write_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      DCACHE_to_MMU_request_write_0: OutputPortRevised -- 
        generic map ( name => "DCACHE_to_MMU_request", data_width => 120, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => DCACHE_to_MMU_request_pipe_write_req(0),
          oack => DCACHE_to_MMU_request_pipe_write_ack(0),
          odata => DCACHE_to_MMU_request_pipe_write_data(119 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    volatile_operator_parse_from_frontend_944: parse_from_frontend_Volatile port map(from_frontend => from_frontend_1061, no_response_to_fe => no_response_to_fe_1078, lock_bus => lock_bus_1078, read_miss => read_miss_1078, write_miss => write_miss_1078, write_hit => write_hit_1078, read_bypass => read_bypass_1078, write_bypass => write_bypass_1078, write_fsr => write_fsr_1078, asi => asi_1078, byte_mask => byte_mask_1078, addr => addr_1078, write_data => write_data_1078); 
    volatile_operator_isSupervisorAsi_948: isSupervisorAsi_Volatile port map(asi => real_asi_1102, ret_val => S_1105); 
    volatile_operator_constructAccessLineRequest_961: constructAccessLineRequest_Volatile port map(lock_bus_mask => lock_bus_mask_1097, write_miss => write_miss_1078, asi => asi_1078, cpu_byte_mask => byte_mask_1078, addr => addr_1078, write_data => write_data_1078, access_line_request => access_line_request_1161); 
    -- 
  end Block; -- data_path
  -- 
end DcacheBackendDaemon_arch;
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
library munit_dcache;
use munit_dcache.dcache_global_package.all;
entity DcacheBackendResponseDaemon is -- 
  generic (tag_length : integer); 
  port ( -- 
    MMU_to_DCACHE_response_pipe_read_req : out  std_logic_vector(0 downto 0);
    MMU_to_DCACHE_response_pipe_read_ack : in   std_logic_vector(0 downto 0);
    MMU_to_DCACHE_response_pipe_read_data : in   std_logic_vector(74 downto 0);
    noblock_dcache_backend_to_frontend_command_pipe_write_req : out  std_logic_vector(0 downto 0);
    noblock_dcache_backend_to_frontend_command_pipe_write_ack : in   std_logic_vector(0 downto 0);
    noblock_dcache_backend_to_frontend_command_pipe_write_data : out  std_logic_vector(83 downto 0);
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
end entity DcacheBackendResponseDaemon;
architecture DcacheBackendResponseDaemon_arch of DcacheBackendResponseDaemon is -- 
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
  signal DcacheBackendResponseDaemon_CP_94_start: Boolean;
  signal DcacheBackendResponseDaemon_CP_94_symbol: Boolean;
  -- volatile/operator module components. 
  component calculate_tag_and_array_commands_Volatile is -- 
    port ( -- 
      be_access_line : in  std_logic_vector(0 downto 0);
      be_mae : in  std_logic_vector(0 downto 0);
      be_error : in  std_logic_vector(0 downto 0);
      be_cacheable : in  std_logic_vector(0 downto 0);
      be_tag_command : out  std_logic_vector(2 downto 0);
      be_array_command : out  std_logic_vector(2 downto 0)-- 
    );
    -- 
  end component; 
  -- links between control-path and data-path
  signal RPIPE_MMU_to_DCACHE_response_1229_inst_req_1 : boolean;
  signal RPIPE_MMU_to_DCACHE_response_1229_inst_ack_1 : boolean;
  signal RPIPE_MMU_to_DCACHE_response_1229_inst_req_0 : boolean;
  signal RPIPE_MMU_to_DCACHE_response_1229_inst_ack_0 : boolean;
  signal do_while_stmt_1225_branch_req_0 : boolean;
  signal do_while_stmt_1225_branch_ack_1 : boolean;
  signal do_while_stmt_1225_branch_ack_0 : boolean;
  signal WPIPE_noblock_dcache_backend_to_frontend_command_1293_inst_ack_1 : boolean;
  signal WPIPE_noblock_dcache_backend_to_frontend_command_1293_inst_req_1 : boolean;
  signal WPIPE_noblock_dcache_backend_to_frontend_command_1293_inst_req_0 : boolean;
  signal WPIPE_noblock_dcache_backend_to_frontend_command_1293_inst_ack_0 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "DcacheBackendResponseDaemon_input_buffer", -- 
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
  DcacheBackendResponseDaemon_CP_94_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "DcacheBackendResponseDaemon_out_buffer", -- 
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
    preds <= DcacheBackendResponseDaemon_CP_94_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
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
    preds <= DcacheBackendResponseDaemon_CP_94_start & tag_ilock_write_ack_symbol;
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
    preds <= DcacheBackendResponseDaemon_CP_94_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  DcacheBackendResponseDaemon_CP_94: Block -- control-path 
    signal DcacheBackendResponseDaemon_CP_94_elements: BooleanArray(25 downto 0);
    -- 
  begin -- 
    DcacheBackendResponseDaemon_CP_94_elements(0) <= DcacheBackendResponseDaemon_CP_94_start;
    DcacheBackendResponseDaemon_CP_94_symbol <= DcacheBackendResponseDaemon_CP_94_elements(1);
    -- CP-element group 0:  transition  place  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	2 
    -- CP-element group 0:  members (4) 
      -- CP-element group 0: 	 branch_block_stmt_1224/do_while_stmt_1225__entry__
      -- CP-element group 0: 	 branch_block_stmt_1224/branch_block_stmt_1224__entry__
      -- CP-element group 0: 	 branch_block_stmt_1224/$entry
      -- CP-element group 0: 	 $entry
      -- 
    -- CP-element group 1:  transition  place  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	25 
    -- CP-element group 1: successors 
    -- CP-element group 1:  members (4) 
      -- CP-element group 1: 	 branch_block_stmt_1224/do_while_stmt_1225__exit__
      -- CP-element group 1: 	 branch_block_stmt_1224/branch_block_stmt_1224__exit__
      -- CP-element group 1: 	 branch_block_stmt_1224/$exit
      -- CP-element group 1: 	 $exit
      -- 
    DcacheBackendResponseDaemon_CP_94_elements(1) <= DcacheBackendResponseDaemon_CP_94_elements(25);
    -- CP-element group 2:  transition  place  bypass  pipeline-parent 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	0 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	8 
    -- CP-element group 2:  members (2) 
      -- CP-element group 2: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225__entry__
      -- CP-element group 2: 	 branch_block_stmt_1224/do_while_stmt_1225/$entry
      -- 
    DcacheBackendResponseDaemon_CP_94_elements(2) <= DcacheBackendResponseDaemon_CP_94_elements(0);
    -- CP-element group 3:  merge  place  bypass  pipeline-parent 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	25 
    -- CP-element group 3:  members (1) 
      -- CP-element group 3: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225__exit__
      -- 
    -- Element group DcacheBackendResponseDaemon_CP_94_elements(3) is bound as output of CP function.
    -- CP-element group 4:  merge  place  bypass  pipeline-parent 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	7 
    -- CP-element group 4:  members (1) 
      -- CP-element group 4: 	 branch_block_stmt_1224/do_while_stmt_1225/loop_back
      -- 
    -- Element group DcacheBackendResponseDaemon_CP_94_elements(4) is bound as output of CP function.
    -- CP-element group 5:  branch  transition  place  bypass  pipeline-parent 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	10 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	23 
    -- CP-element group 5: 	24 
    -- CP-element group 5:  members (3) 
      -- CP-element group 5: 	 branch_block_stmt_1224/do_while_stmt_1225/condition_done
      -- CP-element group 5: 	 branch_block_stmt_1224/do_while_stmt_1225/loop_taken/$entry
      -- CP-element group 5: 	 branch_block_stmt_1224/do_while_stmt_1225/loop_exit/$entry
      -- 
    DcacheBackendResponseDaemon_CP_94_elements(5) <= DcacheBackendResponseDaemon_CP_94_elements(10);
    -- CP-element group 6:  branch  place  bypass  pipeline-parent 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	22 
    -- CP-element group 6: successors 
    -- CP-element group 6:  members (1) 
      -- CP-element group 6: 	 branch_block_stmt_1224/do_while_stmt_1225/loop_body_done
      -- 
    DcacheBackendResponseDaemon_CP_94_elements(6) <= DcacheBackendResponseDaemon_CP_94_elements(22);
    -- CP-element group 7:  transition  bypass  pipeline-parent 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	4 
    -- CP-element group 7: successors 
    -- CP-element group 7:  members (1) 
      -- CP-element group 7: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/back_edge_to_loop_body
      -- 
    DcacheBackendResponseDaemon_CP_94_elements(7) <= DcacheBackendResponseDaemon_CP_94_elements(4);
    -- CP-element group 8:  transition  bypass  pipeline-parent 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	2 
    -- CP-element group 8: successors 
    -- CP-element group 8:  members (1) 
      -- CP-element group 8: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/first_time_through_loop_body
      -- 
    DcacheBackendResponseDaemon_CP_94_elements(8) <= DcacheBackendResponseDaemon_CP_94_elements(2);
    -- CP-element group 9:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	11 
    -- CP-element group 9: 	13 
    -- CP-element group 9: 	21 
    -- CP-element group 9:  members (3) 
      -- CP-element group 9: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/loop_body_start
      -- CP-element group 9: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/$entry
      -- CP-element group 9: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/phi_stmt_1227_sample_start_
      -- 
    -- Element group DcacheBackendResponseDaemon_CP_94_elements(9) is bound as output of CP function.
    -- CP-element group 10:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	12 
    -- CP-element group 10: 	21 
    -- CP-element group 10: 	17 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	5 
    -- CP-element group 10:  members (1) 
      -- CP-element group 10: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/condition_evaluated
      -- 
    condition_evaluated_118_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " condition_evaluated_118_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => DcacheBackendResponseDaemon_CP_94_elements(10), ack => do_while_stmt_1225_branch_req_0); -- 
    DcacheBackendResponseDaemon_cp_element_group_10: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 47) := "DcacheBackendResponseDaemon_cp_element_group_10"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= DcacheBackendResponseDaemon_CP_94_elements(12) & DcacheBackendResponseDaemon_CP_94_elements(21) & DcacheBackendResponseDaemon_CP_94_elements(17);
      gj_DcacheBackendResponseDaemon_cp_element_group_10 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => DcacheBackendResponseDaemon_CP_94_elements(10), clk => clk, reset => reset); --
    end block;
    -- CP-element group 11:  join  transition  bypass  pipeline-parent 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	9 
    -- CP-element group 11: marked-predecessors 
    -- CP-element group 11: 	17 
    -- CP-element group 11: successors 
    -- CP-element group 11: 	14 
    -- CP-element group 11:  members (1) 
      -- CP-element group 11: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/aggregated_phi_sample_req
      -- 
    DcacheBackendResponseDaemon_cp_element_group_11: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 47) := "DcacheBackendResponseDaemon_cp_element_group_11"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= DcacheBackendResponseDaemon_CP_94_elements(9) & DcacheBackendResponseDaemon_CP_94_elements(17);
      gj_DcacheBackendResponseDaemon_cp_element_group_11 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => DcacheBackendResponseDaemon_CP_94_elements(11), clk => clk, reset => reset); --
    end block;
    -- CP-element group 12:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	16 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	10 
    -- CP-element group 12:  members (1) 
      -- CP-element group 12: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/aggregated_phi_sample_ack_d
      -- 
    -- Element group DcacheBackendResponseDaemon_CP_94_elements(12) is a control-delay.
    cp_element_12_delay: control_delay_element  generic map(name => " 12_delay", delay_value => 1)  port map(req => DcacheBackendResponseDaemon_CP_94_elements(16), ack => DcacheBackendResponseDaemon_CP_94_elements(12), clk => clk, reset =>reset);
    -- CP-element group 13:  join  transition  bypass  pipeline-parent 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: 	9 
    -- CP-element group 13: marked-predecessors 
    -- CP-element group 13: 	19 
    -- CP-element group 13: successors 
    -- CP-element group 13: 	15 
    -- CP-element group 13:  members (2) 
      -- CP-element group 13: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/aggregated_phi_update_req
      -- CP-element group 13: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/phi_stmt_1227_update_start_
      -- 
    DcacheBackendResponseDaemon_cp_element_group_13: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 47) := "DcacheBackendResponseDaemon_cp_element_group_13"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= DcacheBackendResponseDaemon_CP_94_elements(9) & DcacheBackendResponseDaemon_CP_94_elements(19);
      gj_DcacheBackendResponseDaemon_cp_element_group_13 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => DcacheBackendResponseDaemon_CP_94_elements(13), clk => clk, reset => reset); --
    end block;
    -- CP-element group 14:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: 	11 
    -- CP-element group 14: marked-predecessors 
    -- CP-element group 14: 	17 
    -- CP-element group 14: successors 
    -- CP-element group 14: 	16 
    -- CP-element group 14:  members (3) 
      -- CP-element group 14: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/RPIPE_MMU_to_DCACHE_response_1229_Sample/rr
      -- CP-element group 14: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/RPIPE_MMU_to_DCACHE_response_1229_Sample/$entry
      -- CP-element group 14: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/RPIPE_MMU_to_DCACHE_response_1229_sample_start_
      -- 
    rr_136_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_136_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => DcacheBackendResponseDaemon_CP_94_elements(14), ack => RPIPE_MMU_to_DCACHE_response_1229_inst_req_0); -- 
    DcacheBackendResponseDaemon_cp_element_group_14: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 47) := "DcacheBackendResponseDaemon_cp_element_group_14"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= DcacheBackendResponseDaemon_CP_94_elements(11) & DcacheBackendResponseDaemon_CP_94_elements(17);
      gj_DcacheBackendResponseDaemon_cp_element_group_14 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => DcacheBackendResponseDaemon_CP_94_elements(14), clk => clk, reset => reset); --
    end block;
    -- CP-element group 15:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: 	13 
    -- CP-element group 15: 	16 
    -- CP-element group 15: successors 
    -- CP-element group 15: 	17 
    -- CP-element group 15:  members (3) 
      -- CP-element group 15: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/RPIPE_MMU_to_DCACHE_response_1229_Update/cr
      -- CP-element group 15: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/RPIPE_MMU_to_DCACHE_response_1229_Update/$entry
      -- CP-element group 15: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/RPIPE_MMU_to_DCACHE_response_1229_update_start_
      -- 
    cr_141_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_141_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => DcacheBackendResponseDaemon_CP_94_elements(15), ack => RPIPE_MMU_to_DCACHE_response_1229_inst_req_1); -- 
    DcacheBackendResponseDaemon_cp_element_group_15: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 47) := "DcacheBackendResponseDaemon_cp_element_group_15"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= DcacheBackendResponseDaemon_CP_94_elements(13) & DcacheBackendResponseDaemon_CP_94_elements(16);
      gj_DcacheBackendResponseDaemon_cp_element_group_15 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => DcacheBackendResponseDaemon_CP_94_elements(15), clk => clk, reset => reset); --
    end block;
    -- CP-element group 16:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: 	14 
    -- CP-element group 16: successors 
    -- CP-element group 16: 	12 
    -- CP-element group 16: 	15 
    -- CP-element group 16: 	22 
    -- CP-element group 16:  members (5) 
      -- CP-element group 16: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/RPIPE_MMU_to_DCACHE_response_1229_Sample/ra
      -- CP-element group 16: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/RPIPE_MMU_to_DCACHE_response_1229_Sample/$exit
      -- CP-element group 16: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/aggregated_phi_sample_ack
      -- CP-element group 16: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/RPIPE_MMU_to_DCACHE_response_1229_sample_completed_
      -- CP-element group 16: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/phi_stmt_1227_sample_completed_
      -- 
    ra_137_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 16_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_MMU_to_DCACHE_response_1229_inst_ack_0, ack => DcacheBackendResponseDaemon_CP_94_elements(16)); -- 
    -- CP-element group 17:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 17: predecessors 
    -- CP-element group 17: 	15 
    -- CP-element group 17: successors 
    -- CP-element group 17: 	10 
    -- CP-element group 17: 	18 
    -- CP-element group 17: marked-successors 
    -- CP-element group 17: 	14 
    -- CP-element group 17: 	11 
    -- CP-element group 17:  members (5) 
      -- CP-element group 17: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/RPIPE_MMU_to_DCACHE_response_1229_Update/ca
      -- CP-element group 17: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/RPIPE_MMU_to_DCACHE_response_1229_Update/$exit
      -- CP-element group 17: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/RPIPE_MMU_to_DCACHE_response_1229_update_completed_
      -- CP-element group 17: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/phi_stmt_1227_update_completed_
      -- CP-element group 17: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/aggregated_phi_update_ack
      -- 
    ca_142_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 17_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_MMU_to_DCACHE_response_1229_inst_ack_1, ack => DcacheBackendResponseDaemon_CP_94_elements(17)); -- 
    -- CP-element group 18:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 18: predecessors 
    -- CP-element group 18: 	17 
    -- CP-element group 18: marked-predecessors 
    -- CP-element group 18: 	20 
    -- CP-element group 18: successors 
    -- CP-element group 18: 	19 
    -- CP-element group 18:  members (3) 
      -- CP-element group 18: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/WPIPE_noblock_dcache_backend_to_frontend_command_1293_Sample/req
      -- CP-element group 18: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/WPIPE_noblock_dcache_backend_to_frontend_command_1293_Sample/$entry
      -- CP-element group 18: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/WPIPE_noblock_dcache_backend_to_frontend_command_1293_sample_start_
      -- 
    req_150_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_150_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => DcacheBackendResponseDaemon_CP_94_elements(18), ack => WPIPE_noblock_dcache_backend_to_frontend_command_1293_inst_req_0); -- 
    DcacheBackendResponseDaemon_cp_element_group_18: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 47) := "DcacheBackendResponseDaemon_cp_element_group_18"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= DcacheBackendResponseDaemon_CP_94_elements(17) & DcacheBackendResponseDaemon_CP_94_elements(20);
      gj_DcacheBackendResponseDaemon_cp_element_group_18 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => DcacheBackendResponseDaemon_CP_94_elements(18), clk => clk, reset => reset); --
    end block;
    -- CP-element group 19:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 19: predecessors 
    -- CP-element group 19: 	18 
    -- CP-element group 19: successors 
    -- CP-element group 19: 	20 
    -- CP-element group 19: marked-successors 
    -- CP-element group 19: 	13 
    -- CP-element group 19:  members (6) 
      -- CP-element group 19: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/WPIPE_noblock_dcache_backend_to_frontend_command_1293_Update/req
      -- CP-element group 19: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/WPIPE_noblock_dcache_backend_to_frontend_command_1293_Update/$entry
      -- CP-element group 19: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/WPIPE_noblock_dcache_backend_to_frontend_command_1293_Sample/ack
      -- CP-element group 19: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/WPIPE_noblock_dcache_backend_to_frontend_command_1293_Sample/$exit
      -- CP-element group 19: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/WPIPE_noblock_dcache_backend_to_frontend_command_1293_update_start_
      -- CP-element group 19: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/WPIPE_noblock_dcache_backend_to_frontend_command_1293_sample_completed_
      -- 
    ack_151_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 19_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_dcache_backend_to_frontend_command_1293_inst_ack_0, ack => DcacheBackendResponseDaemon_CP_94_elements(19)); -- 
    req_155_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_155_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => DcacheBackendResponseDaemon_CP_94_elements(19), ack => WPIPE_noblock_dcache_backend_to_frontend_command_1293_inst_req_1); -- 
    -- CP-element group 20:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 20: predecessors 
    -- CP-element group 20: 	19 
    -- CP-element group 20: successors 
    -- CP-element group 20: 	22 
    -- CP-element group 20: marked-successors 
    -- CP-element group 20: 	18 
    -- CP-element group 20:  members (3) 
      -- CP-element group 20: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/WPIPE_noblock_dcache_backend_to_frontend_command_1293_Update/ack
      -- CP-element group 20: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/WPIPE_noblock_dcache_backend_to_frontend_command_1293_Update/$exit
      -- CP-element group 20: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/WPIPE_noblock_dcache_backend_to_frontend_command_1293_update_completed_
      -- 
    ack_156_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 20_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_dcache_backend_to_frontend_command_1293_inst_ack_1, ack => DcacheBackendResponseDaemon_CP_94_elements(20)); -- 
    -- CP-element group 21:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 21: predecessors 
    -- CP-element group 21: 	9 
    -- CP-element group 21: successors 
    -- CP-element group 21: 	10 
    -- CP-element group 21:  members (1) 
      -- CP-element group 21: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/loop_body_delay_to_condition_start
      -- 
    -- Element group DcacheBackendResponseDaemon_CP_94_elements(21) is a control-delay.
    cp_element_21_delay: control_delay_element  generic map(name => " 21_delay", delay_value => 1)  port map(req => DcacheBackendResponseDaemon_CP_94_elements(9), ack => DcacheBackendResponseDaemon_CP_94_elements(21), clk => clk, reset =>reset);
    -- CP-element group 22:  join  transition  bypass  pipeline-parent 
    -- CP-element group 22: predecessors 
    -- CP-element group 22: 	16 
    -- CP-element group 22: 	20 
    -- CP-element group 22: successors 
    -- CP-element group 22: 	6 
    -- CP-element group 22:  members (1) 
      -- CP-element group 22: 	 branch_block_stmt_1224/do_while_stmt_1225/do_while_stmt_1225_loop_body/$exit
      -- 
    DcacheBackendResponseDaemon_cp_element_group_22: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 7);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 47) := "DcacheBackendResponseDaemon_cp_element_group_22"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= DcacheBackendResponseDaemon_CP_94_elements(16) & DcacheBackendResponseDaemon_CP_94_elements(20);
      gj_DcacheBackendResponseDaemon_cp_element_group_22 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => DcacheBackendResponseDaemon_CP_94_elements(22), clk => clk, reset => reset); --
    end block;
    -- CP-element group 23:  transition  input  bypass  pipeline-parent 
    -- CP-element group 23: predecessors 
    -- CP-element group 23: 	5 
    -- CP-element group 23: successors 
    -- CP-element group 23:  members (2) 
      -- CP-element group 23: 	 branch_block_stmt_1224/do_while_stmt_1225/loop_exit/ack
      -- CP-element group 23: 	 branch_block_stmt_1224/do_while_stmt_1225/loop_exit/$exit
      -- 
    ack_161_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 23_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_1225_branch_ack_0, ack => DcacheBackendResponseDaemon_CP_94_elements(23)); -- 
    -- CP-element group 24:  transition  input  bypass  pipeline-parent 
    -- CP-element group 24: predecessors 
    -- CP-element group 24: 	5 
    -- CP-element group 24: successors 
    -- CP-element group 24:  members (2) 
      -- CP-element group 24: 	 branch_block_stmt_1224/do_while_stmt_1225/loop_taken/ack
      -- CP-element group 24: 	 branch_block_stmt_1224/do_while_stmt_1225/loop_taken/$exit
      -- 
    ack_165_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 24_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_1225_branch_ack_1, ack => DcacheBackendResponseDaemon_CP_94_elements(24)); -- 
    -- CP-element group 25:  transition  bypass  pipeline-parent 
    -- CP-element group 25: predecessors 
    -- CP-element group 25: 	3 
    -- CP-element group 25: successors 
    -- CP-element group 25: 	1 
    -- CP-element group 25:  members (1) 
      -- CP-element group 25: 	 branch_block_stmt_1224/do_while_stmt_1225/$exit
      -- 
    DcacheBackendResponseDaemon_CP_94_elements(25) <= DcacheBackendResponseDaemon_CP_94_elements(3);
    DcacheBackendResponseDaemon_do_while_stmt_1225_terminator_166: loop_terminator -- 
      generic map (name => " DcacheBackendResponseDaemon_do_while_stmt_1225_terminator_166", max_iterations_in_flight =>7) 
      port map(loop_body_exit => DcacheBackendResponseDaemon_CP_94_elements(6),loop_continue => DcacheBackendResponseDaemon_CP_94_elements(24),loop_terminate => DcacheBackendResponseDaemon_CP_94_elements(23),loop_back => DcacheBackendResponseDaemon_CP_94_elements(4),loop_exit => DcacheBackendResponseDaemon_CP_94_elements(3),clk => clk, reset => reset); -- 
    entry_tmerge_119_block : block -- 
      signal preds : BooleanArray(0 to 1);
      begin -- 
        preds(0)  <= DcacheBackendResponseDaemon_CP_94_elements(7);
        preds(1)  <= DcacheBackendResponseDaemon_CP_94_elements(8);
        entry_tmerge_119 : transition_merge -- 
          generic map(name => " entry_tmerge_119")
          port map (preds => preds, symbol_out => DcacheBackendResponseDaemon_CP_94_elements(9));
          -- 
    end block;
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal CONCAT_u1_u4_1284_wire_constant : std_logic_vector(3 downto 0);
    signal CONCAT_u3_u77_1290_wire : std_logic_vector(76 downto 0);
    signal CONCAT_u4_u7_1286_wire : std_logic_vector(6 downto 0);
    signal RPIPE_MMU_to_DCACHE_response_1229_wire : std_logic_vector(74 downto 0);
    signal be_array_command_1279 : std_logic_vector(2 downto 0);
    signal be_tag_command_1279 : std_logic_vector(2 downto 0);
    signal from_mmu_1227 : std_logic_vector(74 downto 0);
    signal konst_1304_wire_constant : std_logic_vector(0 downto 0);
    signal mmu_acc_1246 : std_logic_vector(2 downto 0);
    signal mmu_access_dword_data_1262 : std_logic_vector(63 downto 0);
    signal mmu_cacheable_1250 : std_logic_vector(0 downto 0);
    signal mmu_dword_id_1238 : std_logic_vector(2 downto 0);
    signal mmu_error_1258 : std_logic_vector(0 downto 0);
    signal mmu_last_dword_1242 : std_logic_vector(0 downto 0);
    signal mmu_mae_1254 : std_logic_vector(0 downto 0);
    signal mmu_read_line_1234 : std_logic_vector(0 downto 0);
    signal slice_1289_wire : std_logic_vector(73 downto 0);
    signal to_fe_1292 : std_logic_vector(83 downto 0);
    -- 
  begin -- 
    CONCAT_u1_u4_1284_wire_constant <= "1000";
    konst_1304_wire_constant <= "1";
    -- flow-through slice operator slice_1233_inst
    mmu_read_line_1234 <= from_mmu_1227(74 downto 74);
    -- flow-through slice operator slice_1237_inst
    mmu_dword_id_1238 <= from_mmu_1227(73 downto 71);
    -- flow-through slice operator slice_1241_inst
    mmu_last_dword_1242 <= from_mmu_1227(70 downto 70);
    -- flow-through slice operator slice_1245_inst
    mmu_acc_1246 <= from_mmu_1227(69 downto 67);
    -- flow-through slice operator slice_1249_inst
    mmu_cacheable_1250 <= from_mmu_1227(66 downto 66);
    -- flow-through slice operator slice_1253_inst
    mmu_mae_1254 <= from_mmu_1227(65 downto 65);
    -- flow-through slice operator slice_1257_inst
    mmu_error_1258 <= from_mmu_1227(64 downto 64);
    -- flow-through slice operator slice_1261_inst
    mmu_access_dword_data_1262 <= from_mmu_1227(63 downto 0);
    -- flow-through slice operator slice_1289_inst
    slice_1289_wire <= from_mmu_1227(73 downto 0);
    -- interlock ssrc_phi_stmt_1227
    process(RPIPE_MMU_to_DCACHE_response_1229_wire) -- 
      variable tmp_var : std_logic_vector(74 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 74 downto 0) := RPIPE_MMU_to_DCACHE_response_1229_wire(74 downto 0);
      from_mmu_1227 <= tmp_var; -- 
    end process;
    do_while_stmt_1225_branch: Block -- 
      -- branch-block
      signal condition_sig : std_logic_vector(0 downto 0);
      begin 
      condition_sig <= konst_1304_wire_constant;
      branch_instance: BranchBase -- 
        generic map( name => "do_while_stmt_1225_branch", condition_width => 1,  bypass_flag => true)
        port map( -- 
          condition => condition_sig,
          req => do_while_stmt_1225_branch_req_0,
          ack0 => do_while_stmt_1225_branch_ack_0,
          ack1 => do_while_stmt_1225_branch_ack_1,
          clk => clk,
          reset => reset); -- 
      --
    end Block; -- branch-block
    -- flow through binary operator CONCAT_u3_u77_1290_inst
    process(be_array_command_1279, slice_1289_wire) -- 
      variable tmp_var : std_logic_vector(76 downto 0); -- 
    begin -- 
      ApConcat_proc(be_array_command_1279, slice_1289_wire, tmp_var);
      CONCAT_u3_u77_1290_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u7_1286_inst
    process(CONCAT_u1_u4_1284_wire_constant, be_tag_command_1279) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u4_1284_wire_constant, be_tag_command_1279, tmp_var);
      CONCAT_u4_u7_1286_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u7_u84_1291_inst
    process(CONCAT_u4_u7_1286_wire, CONCAT_u3_u77_1290_wire) -- 
      variable tmp_var : std_logic_vector(83 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u7_1286_wire, CONCAT_u3_u77_1290_wire, tmp_var);
      to_fe_1292 <= tmp_var; --
    end process;
    -- shared inport operator group (0) : RPIPE_MMU_to_DCACHE_response_1229_inst 
    InportGroup_0: Block -- 
      signal data_out: std_logic_vector(74 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_MMU_to_DCACHE_response_1229_inst_req_0;
      RPIPE_MMU_to_DCACHE_response_1229_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_MMU_to_DCACHE_response_1229_inst_req_1;
      RPIPE_MMU_to_DCACHE_response_1229_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      RPIPE_MMU_to_DCACHE_response_1229_wire <= data_out(74 downto 0);
      MMU_to_DCACHE_response_read_0_gI: SplitGuardInterface generic map(name => "MMU_to_DCACHE_response_read_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      MMU_to_DCACHE_response_read_0: InputPortRevised -- 
        generic map ( name => "MMU_to_DCACHE_response_read_0", data_width => 75,  num_reqs => 1,  output_buffering => outBUFs,   nonblocking_read_flag => False,  no_arbitration => false)
        port map (-- 
          sample_req => reqL , 
          sample_ack => ackL, 
          update_req => reqR, 
          update_ack => ackR, 
          data => data_out, 
          oreq => MMU_to_DCACHE_response_pipe_read_req(0),
          oack => MMU_to_DCACHE_response_pipe_read_ack(0),
          odata => MMU_to_DCACHE_response_pipe_read_data(74 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 0
    -- shared outport operator group (0) : WPIPE_noblock_dcache_backend_to_frontend_command_1293_inst 
    OutportGroup_0: Block -- 
      signal data_in: std_logic_vector(83 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_noblock_dcache_backend_to_frontend_command_1293_inst_req_0;
      WPIPE_noblock_dcache_backend_to_frontend_command_1293_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_noblock_dcache_backend_to_frontend_command_1293_inst_req_1;
      WPIPE_noblock_dcache_backend_to_frontend_command_1293_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= to_fe_1292;
      noblock_dcache_backend_to_frontend_command_write_0_gI: SplitGuardInterface generic map(name => "noblock_dcache_backend_to_frontend_command_write_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      noblock_dcache_backend_to_frontend_command_write_0: OutputPortRevised -- 
        generic map ( name => "noblock_dcache_backend_to_frontend_command", data_width => 84, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => noblock_dcache_backend_to_frontend_command_pipe_write_req(0),
          oack => noblock_dcache_backend_to_frontend_command_pipe_write_ack(0),
          odata => noblock_dcache_backend_to_frontend_command_pipe_write_data(83 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    volatile_operator_calculate_tag_and_array_commands_1115: calculate_tag_and_array_commands_Volatile port map(be_access_line => mmu_read_line_1234, be_mae => mmu_mae_1254, be_error => mmu_error_1258, be_cacheable => mmu_cacheable_1250, be_tag_command => be_tag_command_1279, be_array_command => be_array_command_1279); 
    -- 
  end Block; -- data_path
  -- 
end DcacheBackendResponseDaemon_arch;
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
library munit_dcache;
use munit_dcache.dcache_global_package.all;
entity accessPermissionsAreOk_Volatile is -- 
  port ( -- 
    read : in  std_logic_vector(0 downto 0);
    supervisor : in  std_logic_vector(0 downto 0);
    ifetch : in  std_logic_vector(0 downto 0);
    acc : in  std_logic_vector(2 downto 0);
    s_permissions_ok : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity accessPermissionsAreOk_Volatile;
architecture accessPermissionsAreOk_Volatile_arch of accessPermissionsAreOk_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(6-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal read_buffer :  std_logic_vector(0 downto 0);
  signal supervisor_buffer :  std_logic_vector(0 downto 0);
  signal ifetch_buffer :  std_logic_vector(0 downto 0);
  signal acc_buffer :  std_logic_vector(2 downto 0);
  -- output port buffer signals
  signal s_permissions_ok_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  read_buffer <= read;
  supervisor_buffer <= supervisor;
  ifetch_buffer <= ifetch;
  acc_buffer <= acc;
  -- output handling  -------------------------------------------------------
  s_permissions_ok <= s_permissions_ok_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_1777_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1819_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1831_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_1773_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_1782_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_1790_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_1798_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_1806_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_1812_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_1826_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_1836_wire : std_logic_vector(0 downto 0);
    signal MUX_1779_wire : std_logic_vector(0 downto 0);
    signal MUX_1786_wire : std_logic_vector(0 downto 0);
    signal MUX_1795_wire : std_logic_vector(0 downto 0);
    signal MUX_1801_wire : std_logic_vector(0 downto 0);
    signal MUX_1809_wire : std_logic_vector(0 downto 0);
    signal MUX_1820_wire : std_logic_vector(0 downto 0);
    signal MUX_1822_wire : std_logic_vector(0 downto 0);
    signal MUX_1833_wire : std_logic_vector(0 downto 0);
    signal MUX_1839_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1775_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1784_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1815_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1817_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1787_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1793_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1802_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1803_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1823_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1830_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1840_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1841_wire : std_logic_vector(0 downto 0);
    signal R_ONE_1_1799_wire_constant : std_logic_vector(0 downto 0);
    signal konst_1772_wire_constant : std_logic_vector(2 downto 0);
    signal konst_1778_wire_constant : std_logic_vector(0 downto 0);
    signal konst_1781_wire_constant : std_logic_vector(2 downto 0);
    signal konst_1785_wire_constant : std_logic_vector(0 downto 0);
    signal konst_1789_wire_constant : std_logic_vector(2 downto 0);
    signal konst_1794_wire_constant : std_logic_vector(0 downto 0);
    signal konst_1797_wire_constant : std_logic_vector(2 downto 0);
    signal konst_1800_wire_constant : std_logic_vector(0 downto 0);
    signal konst_1805_wire_constant : std_logic_vector(2 downto 0);
    signal konst_1808_wire_constant : std_logic_vector(0 downto 0);
    signal konst_1811_wire_constant : std_logic_vector(2 downto 0);
    signal konst_1821_wire_constant : std_logic_vector(0 downto 0);
    signal konst_1825_wire_constant : std_logic_vector(2 downto 0);
    signal konst_1832_wire_constant : std_logic_vector(0 downto 0);
    signal konst_1835_wire_constant : std_logic_vector(2 downto 0);
    signal konst_1838_wire_constant : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    R_ONE_1_1799_wire_constant <= "1";
    konst_1772_wire_constant <= "000";
    konst_1778_wire_constant <= "0";
    konst_1781_wire_constant <= "001";
    konst_1785_wire_constant <= "0";
    konst_1789_wire_constant <= "010";
    konst_1794_wire_constant <= "0";
    konst_1797_wire_constant <= "011";
    konst_1800_wire_constant <= "0";
    konst_1805_wire_constant <= "100";
    konst_1808_wire_constant <= "0";
    konst_1811_wire_constant <= "101";
    konst_1821_wire_constant <= "0";
    konst_1825_wire_constant <= "110";
    konst_1832_wire_constant <= "0";
    konst_1835_wire_constant <= "111";
    konst_1838_wire_constant <= "0";
    -- flow-through select operator MUX_1779_inst
    MUX_1779_wire <= AND_u1_u1_1777_wire when (EQ_u3_u1_1773_wire(0) /=  '0') else konst_1778_wire_constant;
    -- flow-through select operator MUX_1786_inst
    MUX_1786_wire <= NOT_u1_u1_1784_wire when (EQ_u3_u1_1782_wire(0) /=  '0') else konst_1785_wire_constant;
    -- flow-through select operator MUX_1795_inst
    MUX_1795_wire <= OR_u1_u1_1793_wire when (EQ_u3_u1_1790_wire(0) /=  '0') else konst_1794_wire_constant;
    -- flow-through select operator MUX_1801_inst
    MUX_1801_wire <= R_ONE_1_1799_wire_constant when (EQ_u3_u1_1798_wire(0) /=  '0') else konst_1800_wire_constant;
    -- flow-through select operator MUX_1809_inst
    MUX_1809_wire <= ifetch_buffer when (EQ_u3_u1_1806_wire(0) /=  '0') else konst_1808_wire_constant;
    -- flow-through select operator MUX_1820_inst
    MUX_1820_wire <= NOT_u1_u1_1815_wire when (supervisor_buffer(0) /=  '0') else AND_u1_u1_1819_wire;
    -- flow-through select operator MUX_1822_inst
    MUX_1822_wire <= MUX_1820_wire when (EQ_u3_u1_1812_wire(0) /=  '0') else konst_1821_wire_constant;
    -- flow-through select operator MUX_1833_inst
    MUX_1833_wire <= AND_u1_u1_1831_wire when (EQ_u3_u1_1826_wire(0) /=  '0') else konst_1832_wire_constant;
    -- flow-through select operator MUX_1839_inst
    MUX_1839_wire <= supervisor_buffer when (EQ_u3_u1_1836_wire(0) /=  '0') else konst_1838_wire_constant;
    -- flow through binary operator AND_u1_u1_1777_inst
    AND_u1_u1_1777_wire <= (NOT_u1_u1_1775_wire and read_buffer);
    -- flow through binary operator AND_u1_u1_1819_inst
    AND_u1_u1_1819_wire <= (NOT_u1_u1_1817_wire and read_buffer);
    -- flow through binary operator AND_u1_u1_1831_inst
    AND_u1_u1_1831_wire <= (supervisor_buffer and OR_u1_u1_1830_wire);
    -- flow through binary operator EQ_u3_u1_1773_inst
    process(acc_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(acc_buffer, konst_1772_wire_constant, tmp_var);
      EQ_u3_u1_1773_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_1782_inst
    process(acc_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(acc_buffer, konst_1781_wire_constant, tmp_var);
      EQ_u3_u1_1782_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_1790_inst
    process(acc_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(acc_buffer, konst_1789_wire_constant, tmp_var);
      EQ_u3_u1_1790_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_1798_inst
    process(acc_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(acc_buffer, konst_1797_wire_constant, tmp_var);
      EQ_u3_u1_1798_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_1806_inst
    process(acc_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(acc_buffer, konst_1805_wire_constant, tmp_var);
      EQ_u3_u1_1806_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_1812_inst
    process(acc_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(acc_buffer, konst_1811_wire_constant, tmp_var);
      EQ_u3_u1_1812_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_1826_inst
    process(acc_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(acc_buffer, konst_1825_wire_constant, tmp_var);
      EQ_u3_u1_1826_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_1836_inst
    process(acc_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(acc_buffer, konst_1835_wire_constant, tmp_var);
      EQ_u3_u1_1836_wire <= tmp_var; --
    end process;
    -- unary operator NOT_u1_u1_1775_inst
    process(ifetch_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ifetch_buffer, tmp_var);
      NOT_u1_u1_1775_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_1784_inst
    process(ifetch_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ifetch_buffer, tmp_var);
      NOT_u1_u1_1784_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_1815_inst
    process(ifetch_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ifetch_buffer, tmp_var);
      NOT_u1_u1_1815_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_1817_inst
    process(ifetch_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ifetch_buffer, tmp_var);
      NOT_u1_u1_1817_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator OR_u1_u1_1787_inst
    OR_u1_u1_1787_wire <= (MUX_1779_wire or MUX_1786_wire);
    -- flow through binary operator OR_u1_u1_1793_inst
    OR_u1_u1_1793_wire <= (read_buffer or ifetch_buffer);
    -- flow through binary operator OR_u1_u1_1802_inst
    OR_u1_u1_1802_wire <= (MUX_1795_wire or MUX_1801_wire);
    -- flow through binary operator OR_u1_u1_1803_inst
    OR_u1_u1_1803_wire <= (OR_u1_u1_1787_wire or OR_u1_u1_1802_wire);
    -- flow through binary operator OR_u1_u1_1823_inst
    OR_u1_u1_1823_wire <= (MUX_1809_wire or MUX_1822_wire);
    -- flow through binary operator OR_u1_u1_1830_inst
    OR_u1_u1_1830_wire <= (read_buffer or ifetch_buffer);
    -- flow through binary operator OR_u1_u1_1840_inst
    OR_u1_u1_1840_wire <= (MUX_1833_wire or MUX_1839_wire);
    -- flow through binary operator OR_u1_u1_1841_inst
    OR_u1_u1_1841_wire <= (OR_u1_u1_1823_wire or OR_u1_u1_1840_wire);
    -- flow through binary operator OR_u1_u1_1842_inst
    s_permissions_ok_buffer <= (OR_u1_u1_1803_wire or OR_u1_u1_1841_wire);
    -- 
  end Block; -- data_path
  -- 
end accessPermissionsAreOk_Volatile_arch;
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
library munit_dcache;
use munit_dcache.dcache_global_package.all;
entity calculate_bypass_to_iu_fu_Volatile is -- 
  port ( -- 
    send_flag : in  std_logic_vector(0 downto 0);
    cpu_thread_id : in  std_logic_vector(1 downto 0);
    byte_mask : in  std_logic_vector(7 downto 0);
    control_info : in  std_logic_vector(21 downto 0);
    read_dword : in  std_logic_vector(63 downto 0);
    to_iu : out  std_logic_vector(92 downto 0);
    to_fu : out  std_logic_vector(92 downto 0)-- 
  );
  -- 
end entity calculate_bypass_to_iu_fu_Volatile;
architecture calculate_bypass_to_iu_fu_Volatile_arch of calculate_bypass_to_iu_fu_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(97-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal send_flag_buffer :  std_logic_vector(0 downto 0);
  signal cpu_thread_id_buffer :  std_logic_vector(1 downto 0);
  signal byte_mask_buffer :  std_logic_vector(7 downto 0);
  signal control_info_buffer :  std_logic_vector(21 downto 0);
  signal read_dword_buffer :  std_logic_vector(63 downto 0);
  -- output port buffer signals
  signal to_iu_buffer :  std_logic_vector(92 downto 0);
  signal to_fu_buffer :  std_logic_vector(92 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  send_flag_buffer <= send_flag;
  cpu_thread_id_buffer <= cpu_thread_id;
  byte_mask_buffer <= byte_mask;
  control_info_buffer <= control_info;
  read_dword_buffer <= read_dword;
  -- output handling  -------------------------------------------------------
  to_iu <= to_iu_buffer;
  to_fu <= to_fu_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_2522_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_2524_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_2545_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_2547_wire : std_logic_vector(0 downto 0);
    signal CONCAT_u1_u3_2526_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u1_u3_2549_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u1_u9_2535_wire : std_logic_vector(8 downto 0);
    signal CONCAT_u1_u9_2558_wire : std_logic_vector(8 downto 0);
    signal CONCAT_u2_u8_2531_wire : std_logic_vector(7 downto 0);
    signal CONCAT_u2_u8_2554_wire : std_logic_vector(7 downto 0);
    signal CONCAT_u3_u7_2528_wire : std_logic_vector(6 downto 0);
    signal CONCAT_u3_u7_2551_wire : std_logic_vector(6 downto 0);
    signal CONCAT_u5_u69_2538_wire : std_logic_vector(68 downto 0);
    signal CONCAT_u5_u69_2561_wire : std_logic_vector(68 downto 0);
    signal CONCAT_u7_u15_2532_wire : std_logic_vector(14 downto 0);
    signal CONCAT_u7_u15_2555_wire : std_logic_vector(14 downto 0);
    signal CONCAT_u9_u78_2539_wire : std_logic_vector(77 downto 0);
    signal CONCAT_u9_u78_2562_wire : std_logic_vector(77 downto 0);
    signal cvalid_2490 : std_logic_vector(0 downto 0);
    signal fu_2518 : std_logic_vector(0 downto 0);
    signal iu_2514 : std_logic_vector(0 downto 0);
    signal rd_2510 : std_logic_vector(4 downto 0);
    signal signed_type_2506 : std_logic_vector(0 downto 0);
    signal slid_2502 : std_logic_vector(5 downto 0);
    signal stid_2498 : std_logic_vector(1 downto 0);
    signal thid_2494 : std_logic_vector(3 downto 0);
    -- 
  begin -- 
    -- flow-through slice operator slice_2489_inst
    cvalid_2490 <= control_info_buffer(21 downto 21);
    -- flow-through slice operator slice_2493_inst
    thid_2494 <= control_info_buffer(20 downto 17);
    -- flow-through slice operator slice_2497_inst
    stid_2498 <= control_info_buffer(16 downto 15);
    -- flow-through slice operator slice_2501_inst
    slid_2502 <= control_info_buffer(14 downto 9);
    -- flow-through slice operator slice_2505_inst
    signed_type_2506 <= control_info_buffer(8 downto 8);
    -- flow-through slice operator slice_2509_inst
    rd_2510 <= control_info_buffer(7 downto 3);
    -- flow-through slice operator slice_2513_inst
    iu_2514 <= control_info_buffer(2 downto 2);
    -- flow-through slice operator slice_2517_inst
    fu_2518 <= control_info_buffer(1 downto 1);
    -- flow through binary operator AND_u1_u1_2522_inst
    AND_u1_u1_2522_wire <= (send_flag_buffer and cvalid_2490);
    -- flow through binary operator AND_u1_u1_2524_inst
    AND_u1_u1_2524_wire <= (AND_u1_u1_2522_wire and iu_2514);
    -- flow through binary operator AND_u1_u1_2545_inst
    AND_u1_u1_2545_wire <= (send_flag_buffer and cvalid_2490);
    -- flow through binary operator AND_u1_u1_2547_inst
    AND_u1_u1_2547_wire <= (AND_u1_u1_2545_wire and fu_2518);
    -- flow through binary operator CONCAT_u15_u93_2540_inst
    process(CONCAT_u7_u15_2532_wire, CONCAT_u9_u78_2539_wire) -- 
      variable tmp_var : std_logic_vector(92 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u7_u15_2532_wire, CONCAT_u9_u78_2539_wire, tmp_var);
      to_iu_buffer <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u15_u93_2563_inst
    process(CONCAT_u7_u15_2555_wire, CONCAT_u9_u78_2562_wire) -- 
      variable tmp_var : std_logic_vector(92 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u7_u15_2555_wire, CONCAT_u9_u78_2562_wire, tmp_var);
      to_fu_buffer <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u3_2526_inst
    process(AND_u1_u1_2524_wire, cpu_thread_id_buffer) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(AND_u1_u1_2524_wire, cpu_thread_id_buffer, tmp_var);
      CONCAT_u1_u3_2526_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u3_2549_inst
    process(AND_u1_u1_2547_wire, cpu_thread_id_buffer) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(AND_u1_u1_2547_wire, cpu_thread_id_buffer, tmp_var);
      CONCAT_u1_u3_2549_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u9_2535_inst
    process(signed_type_2506, byte_mask_buffer) -- 
      variable tmp_var : std_logic_vector(8 downto 0); -- 
    begin -- 
      ApConcat_proc(signed_type_2506, byte_mask_buffer, tmp_var);
      CONCAT_u1_u9_2535_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u9_2558_inst
    process(signed_type_2506, byte_mask_buffer) -- 
      variable tmp_var : std_logic_vector(8 downto 0); -- 
    begin -- 
      ApConcat_proc(signed_type_2506, byte_mask_buffer, tmp_var);
      CONCAT_u1_u9_2558_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u8_2531_inst
    process(stid_2498, slid_2502) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(stid_2498, slid_2502, tmp_var);
      CONCAT_u2_u8_2531_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u8_2554_inst
    process(stid_2498, slid_2502) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(stid_2498, slid_2502, tmp_var);
      CONCAT_u2_u8_2554_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u7_2528_inst
    process(CONCAT_u1_u3_2526_wire, thid_2494) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u3_2526_wire, thid_2494, tmp_var);
      CONCAT_u3_u7_2528_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u7_2551_inst
    process(CONCAT_u1_u3_2549_wire, thid_2494) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u3_2549_wire, thid_2494, tmp_var);
      CONCAT_u3_u7_2551_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u69_2538_inst
    process(rd_2510, read_dword_buffer) -- 
      variable tmp_var : std_logic_vector(68 downto 0); -- 
    begin -- 
      ApConcat_proc(rd_2510, read_dword_buffer, tmp_var);
      CONCAT_u5_u69_2538_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u69_2561_inst
    process(rd_2510, read_dword_buffer) -- 
      variable tmp_var : std_logic_vector(68 downto 0); -- 
    begin -- 
      ApConcat_proc(rd_2510, read_dword_buffer, tmp_var);
      CONCAT_u5_u69_2561_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u7_u15_2532_inst
    process(CONCAT_u3_u7_2528_wire, CONCAT_u2_u8_2531_wire) -- 
      variable tmp_var : std_logic_vector(14 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u3_u7_2528_wire, CONCAT_u2_u8_2531_wire, tmp_var);
      CONCAT_u7_u15_2532_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u7_u15_2555_inst
    process(CONCAT_u3_u7_2551_wire, CONCAT_u2_u8_2554_wire) -- 
      variable tmp_var : std_logic_vector(14 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u3_u7_2551_wire, CONCAT_u2_u8_2554_wire, tmp_var);
      CONCAT_u7_u15_2555_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u9_u78_2539_inst
    process(CONCAT_u1_u9_2535_wire, CONCAT_u5_u69_2538_wire) -- 
      variable tmp_var : std_logic_vector(77 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u9_2535_wire, CONCAT_u5_u69_2538_wire, tmp_var);
      CONCAT_u9_u78_2539_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u9_u78_2562_inst
    process(CONCAT_u1_u9_2558_wire, CONCAT_u5_u69_2561_wire) -- 
      variable tmp_var : std_logic_vector(77 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u9_2558_wire, CONCAT_u5_u69_2561_wire, tmp_var);
      CONCAT_u9_u78_2562_wire <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end calculate_bypass_to_iu_fu_Volatile_arch;
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
library munit_dcache;
use munit_dcache.dcache_global_package.all;
entity calculate_tag_and_array_commands_Volatile is -- 
  port ( -- 
    be_access_line : in  std_logic_vector(0 downto 0);
    be_mae : in  std_logic_vector(0 downto 0);
    be_error : in  std_logic_vector(0 downto 0);
    be_cacheable : in  std_logic_vector(0 downto 0);
    be_tag_command : out  std_logic_vector(2 downto 0);
    be_array_command : out  std_logic_vector(2 downto 0)-- 
  );
  -- 
end entity calculate_tag_and_array_commands_Volatile;
architecture calculate_tag_and_array_commands_Volatile_arch of calculate_tag_and_array_commands_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(4-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal be_access_line_buffer :  std_logic_vector(0 downto 0);
  signal be_mae_buffer :  std_logic_vector(0 downto 0);
  signal be_error_buffer :  std_logic_vector(0 downto 0);
  signal be_cacheable_buffer :  std_logic_vector(0 downto 0);
  -- output port buffer signals
  signal be_tag_command_buffer :  std_logic_vector(2 downto 0);
  signal be_array_command_buffer :  std_logic_vector(2 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  be_access_line_buffer <= be_access_line;
  be_mae_buffer <= be_mae;
  be_error_buffer <= be_error;
  be_cacheable_buffer <= be_cacheable;
  -- output handling  -------------------------------------------------------
  be_tag_command <= be_tag_command_buffer;
  be_array_command <= be_array_command_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal MUX_1192_wire : std_logic_vector(2 downto 0);
    signal MUX_1212_wire : std_logic_vector(2 downto 0);
    signal NOT_u1_u1_1185_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1205_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1187_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1189_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1207_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1209_wire : std_logic_vector(0 downto 0);
    signal R_CACHE_ARRAY_PASS_THROUGH_1210_wire_constant : std_logic_vector(2 downto 0);
    signal R_CACHE_ARRAY_PASS_THROUGH_1213_wire_constant : std_logic_vector(2 downto 0);
    signal R_CACHE_ARRAY_WRITE_DWORD_1211_wire_constant : std_logic_vector(2 downto 0);
    signal R_CACHE_TAG_CLEAR_LINE_1190_wire_constant : std_logic_vector(2 downto 0);
    signal R_CACHE_TAG_INSERT_1191_wire_constant : std_logic_vector(2 downto 0);
    signal R_CACHE_TAG_NOP_1193_wire_constant : std_logic_vector(2 downto 0);
    -- 
  begin -- 
    R_CACHE_ARRAY_PASS_THROUGH_1210_wire_constant <= "100";
    R_CACHE_ARRAY_PASS_THROUGH_1213_wire_constant <= "100";
    R_CACHE_ARRAY_WRITE_DWORD_1211_wire_constant <= "010";
    R_CACHE_TAG_CLEAR_LINE_1190_wire_constant <= "011";
    R_CACHE_TAG_INSERT_1191_wire_constant <= "010";
    R_CACHE_TAG_NOP_1193_wire_constant <= "101";
    -- flow-through select operator MUX_1192_inst
    MUX_1192_wire <= R_CACHE_TAG_CLEAR_LINE_1190_wire_constant when (OR_u1_u1_1189_wire(0) /=  '0') else R_CACHE_TAG_INSERT_1191_wire_constant;
    -- flow-through select operator MUX_1194_inst
    be_tag_command_buffer <= MUX_1192_wire when (be_access_line_buffer(0) /=  '0') else R_CACHE_TAG_NOP_1193_wire_constant;
    -- flow-through select operator MUX_1212_inst
    MUX_1212_wire <= R_CACHE_ARRAY_PASS_THROUGH_1210_wire_constant when (OR_u1_u1_1209_wire(0) /=  '0') else R_CACHE_ARRAY_WRITE_DWORD_1211_wire_constant;
    -- flow-through select operator MUX_1214_inst
    be_array_command_buffer <= MUX_1212_wire when (be_access_line_buffer(0) /=  '0') else R_CACHE_ARRAY_PASS_THROUGH_1213_wire_constant;
    -- unary operator NOT_u1_u1_1185_inst
    process(be_cacheable_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", be_cacheable_buffer, tmp_var);
      NOT_u1_u1_1185_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_1205_inst
    process(be_cacheable_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", be_cacheable_buffer, tmp_var);
      NOT_u1_u1_1205_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator OR_u1_u1_1187_inst
    OR_u1_u1_1187_wire <= (NOT_u1_u1_1185_wire or be_mae_buffer);
    -- flow through binary operator OR_u1_u1_1189_inst
    OR_u1_u1_1189_wire <= (OR_u1_u1_1187_wire or be_error_buffer);
    -- flow through binary operator OR_u1_u1_1207_inst
    OR_u1_u1_1207_wire <= (NOT_u1_u1_1205_wire or be_mae_buffer);
    -- flow through binary operator OR_u1_u1_1209_inst
    OR_u1_u1_1209_wire <= (OR_u1_u1_1207_wire or be_error_buffer);
    -- 
  end Block; -- data_path
  -- 
end calculate_tag_and_array_commands_Volatile_arch;
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
library munit_dcache;
use munit_dcache.dcache_global_package.all;
entity constructAccessLineRequest_Volatile is -- 
  port ( -- 
    lock_bus_mask : in  std_logic_vector(7 downto 0);
    write_miss : in  std_logic_vector(0 downto 0);
    asi : in  std_logic_vector(7 downto 0);
    cpu_byte_mask : in  std_logic_vector(7 downto 0);
    addr : in  std_logic_vector(31 downto 0);
    write_data : in  std_logic_vector(63 downto 0);
    access_line_request : out  std_logic_vector(119 downto 0)-- 
  );
  -- 
end entity constructAccessLineRequest_Volatile;
architecture constructAccessLineRequest_Volatile_arch of constructAccessLineRequest_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(121-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal lock_bus_mask_buffer :  std_logic_vector(7 downto 0);
  signal write_miss_buffer :  std_logic_vector(0 downto 0);
  signal asi_buffer :  std_logic_vector(7 downto 0);
  signal cpu_byte_mask_buffer :  std_logic_vector(7 downto 0);
  signal addr_buffer :  std_logic_vector(31 downto 0);
  signal write_data_buffer :  std_logic_vector(63 downto 0);
  -- output port buffer signals
  signal access_line_request_buffer :  std_logic_vector(119 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  lock_bus_mask_buffer <= lock_bus_mask;
  write_miss_buffer <= write_miss;
  asi_buffer <= asi;
  cpu_byte_mask_buffer <= cpu_byte_mask;
  addr_buffer <= addr;
  write_data_buffer <= write_data;
  -- output handling  -------------------------------------------------------
  access_line_request <= access_line_request_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal CONCAT_u16_u24_1050_wire : std_logic_vector(23 downto 0);
    signal CONCAT_u32_u96_1053_wire : std_logic_vector(95 downto 0);
    signal CONCAT_u8_u16_1048_wire : std_logic_vector(15 downto 0);
    signal MUX_1042_wire : std_logic_vector(7 downto 0);
    signal R_MMU_READ_LINE_1041_wire_constant : std_logic_vector(7 downto 0);
    signal R_MMU_WRITE_DWORD_AND_READ_LINE_1040_wire_constant : std_logic_vector(7 downto 0);
    signal request_type_1044 : std_logic_vector(7 downto 0);
    -- 
  begin -- 
    R_MMU_READ_LINE_1041_wire_constant <= "00000011";
    R_MMU_WRITE_DWORD_AND_READ_LINE_1040_wire_constant <= "00000111";
    -- flow-through select operator MUX_1042_inst
    MUX_1042_wire <= R_MMU_WRITE_DWORD_AND_READ_LINE_1040_wire_constant when (write_miss_buffer(0) /=  '0') else R_MMU_READ_LINE_1041_wire_constant;
    -- flow through binary operator CONCAT_u16_u24_1050_inst
    process(CONCAT_u8_u16_1048_wire, request_type_1044) -- 
      variable tmp_var : std_logic_vector(23 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u8_u16_1048_wire, request_type_1044, tmp_var);
      CONCAT_u16_u24_1050_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u24_u120_1054_inst
    process(CONCAT_u16_u24_1050_wire, CONCAT_u32_u96_1053_wire) -- 
      variable tmp_var : std_logic_vector(119 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u16_u24_1050_wire, CONCAT_u32_u96_1053_wire, tmp_var);
      access_line_request_buffer <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u96_1053_inst
    process(addr_buffer, write_data_buffer) -- 
      variable tmp_var : std_logic_vector(95 downto 0); -- 
    begin -- 
      ApConcat_proc(addr_buffer, write_data_buffer, tmp_var);
      CONCAT_u32_u96_1053_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u8_u16_1048_inst
    process(asi_buffer, cpu_byte_mask_buffer) -- 
      variable tmp_var : std_logic_vector(15 downto 0); -- 
    begin -- 
      ApConcat_proc(asi_buffer, cpu_byte_mask_buffer, tmp_var);
      CONCAT_u8_u16_1048_wire <= tmp_var; --
    end process;
    -- flow through binary operator OR_u8_u8_1043_inst
    request_type_1044 <= (lock_bus_mask_buffer or MUX_1042_wire);
    -- 
  end Block; -- data_path
  -- 
end constructAccessLineRequest_Volatile_arch;
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
library munit_dcache;
use munit_dcache.dcache_global_package.all;
entity dcacheBlockAlign_Volatile is -- 
  port ( -- 
    addr : in  std_logic_vector(31 downto 0);
    addr_aligned : out  std_logic_vector(31 downto 0)-- 
  );
  -- 
end entity dcacheBlockAlign_Volatile;
architecture dcacheBlockAlign_Volatile_arch of dcacheBlockAlign_Volatile is -- 
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
    signal NOT_u32_u32_1760_wire_constant : std_logic_vector(31 downto 0);
    -- 
  begin -- 
    NOT_u32_u32_1760_wire_constant <= "11111111111111111111111111000000";
    -- flow through binary operator AND_u32_u32_1761_inst
    addr_aligned_buffer <= (addr_buffer and NOT_u32_u32_1760_wire_constant);
    -- 
  end Block; -- data_path
  -- 
end dcacheBlockAlign_Volatile_arch;
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
library munit_dcache;
use munit_dcache.dcache_global_package.all;
entity dcacheBlockId_Volatile is -- 
  port ( -- 
    addr : in  std_logic_vector(31 downto 0);
    block_id : out  std_logic_vector(31 downto 0)-- 
  );
  -- 
end entity dcacheBlockId_Volatile;
architecture dcacheBlockId_Volatile_arch of dcacheBlockId_Volatile is -- 
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
    signal LSHR_u32_u32_1729_wire : std_logic_vector(31 downto 0);
    signal LSHR_u32_u32_1733_wire_constant : std_logic_vector(31 downto 0);
    signal konst_1728_wire_constant : std_logic_vector(31 downto 0);
    -- 
  begin -- 
    LSHR_u32_u32_1733_wire_constant <= "00000000000000000000000001111111";
    konst_1728_wire_constant <= "00000000000000000000000000000110";
    -- flow through binary operator AND_u32_u32_1734_inst
    block_id_buffer <= (LSHR_u32_u32_1729_wire and LSHR_u32_u32_1733_wire_constant);
    -- flow through binary operator LSHR_u32_u32_1729_inst
    process(addr_buffer) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApIntLSHR_proc(addr_buffer, konst_1728_wire_constant, tmp_var);
      LSHR_u32_u32_1729_wire <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end dcacheBlockId_Volatile_arch;
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
library munit_dcache;
use munit_dcache.dcache_global_package.all;
entity dcacheInsertBytes_Volatile is -- 
  port ( -- 
    i_dword : in  std_logic_vector(63 downto 0);
    backend_byte_mask : in  std_logic_vector(7 downto 0);
    insert_dword : in  std_logic_vector(63 downto 0);
    o_dword : out  std_logic_vector(63 downto 0)-- 
  );
  -- 
end entity dcacheInsertBytes_Volatile;
architecture dcacheInsertBytes_Volatile_arch of dcacheInsertBytes_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(136-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal i_dword_buffer :  std_logic_vector(63 downto 0);
  signal backend_byte_mask_buffer :  std_logic_vector(7 downto 0);
  signal insert_dword_buffer :  std_logic_vector(63 downto 0);
  -- output port buffer signals
  signal o_dword_buffer :  std_logic_vector(63 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  i_dword_buffer <= i_dword;
  backend_byte_mask_buffer <= backend_byte_mask;
  insert_dword_buffer <= insert_dword;
  -- output handling  -------------------------------------------------------
  o_dword <= o_dword_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal BITSEL_u8_u1_2112_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u8_u1_2120_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u8_u1_2128_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u8_u1_2136_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u8_u1_2144_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u8_u1_2152_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u8_u1_2160_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u8_u1_2168_wire : std_logic_vector(0 downto 0);
    signal CONCAT_u16_u32_2180_wire : std_logic_vector(31 downto 0);
    signal CONCAT_u16_u32_2187_wire : std_logic_vector(31 downto 0);
    signal CONCAT_u8_u16_2176_wire : std_logic_vector(15 downto 0);
    signal CONCAT_u8_u16_2179_wire : std_logic_vector(15 downto 0);
    signal CONCAT_u8_u16_2183_wire : std_logic_vector(15 downto 0);
    signal CONCAT_u8_u16_2186_wire : std_logic_vector(15 downto 0);
    signal i0_2048 : std_logic_vector(7 downto 0);
    signal i1_2052 : std_logic_vector(7 downto 0);
    signal i2_2056 : std_logic_vector(7 downto 0);
    signal i3_2060 : std_logic_vector(7 downto 0);
    signal i4_2064 : std_logic_vector(7 downto 0);
    signal i5_2068 : std_logic_vector(7 downto 0);
    signal i6_2072 : std_logic_vector(7 downto 0);
    signal i7_2076 : std_logic_vector(7 downto 0);
    signal konst_2111_wire_constant : std_logic_vector(7 downto 0);
    signal konst_2119_wire_constant : std_logic_vector(7 downto 0);
    signal konst_2127_wire_constant : std_logic_vector(7 downto 0);
    signal konst_2135_wire_constant : std_logic_vector(7 downto 0);
    signal konst_2143_wire_constant : std_logic_vector(7 downto 0);
    signal konst_2151_wire_constant : std_logic_vector(7 downto 0);
    signal konst_2159_wire_constant : std_logic_vector(7 downto 0);
    signal konst_2167_wire_constant : std_logic_vector(7 downto 0);
    signal o0_2116 : std_logic_vector(7 downto 0);
    signal o1_2124 : std_logic_vector(7 downto 0);
    signal o2_2132 : std_logic_vector(7 downto 0);
    signal o3_2140 : std_logic_vector(7 downto 0);
    signal o4_2148 : std_logic_vector(7 downto 0);
    signal o5_2156 : std_logic_vector(7 downto 0);
    signal o6_2164 : std_logic_vector(7 downto 0);
    signal o7_2172 : std_logic_vector(7 downto 0);
    signal w0_2080 : std_logic_vector(7 downto 0);
    signal w1_2084 : std_logic_vector(7 downto 0);
    signal w2_2088 : std_logic_vector(7 downto 0);
    signal w3_2092 : std_logic_vector(7 downto 0);
    signal w4_2096 : std_logic_vector(7 downto 0);
    signal w5_2100 : std_logic_vector(7 downto 0);
    signal w6_2104 : std_logic_vector(7 downto 0);
    signal w7_2108 : std_logic_vector(7 downto 0);
    -- 
  begin -- 
    konst_2111_wire_constant <= "00000111";
    konst_2119_wire_constant <= "00000110";
    konst_2127_wire_constant <= "00000101";
    konst_2135_wire_constant <= "00000100";
    konst_2143_wire_constant <= "00000011";
    konst_2151_wire_constant <= "00000010";
    konst_2159_wire_constant <= "00000001";
    konst_2167_wire_constant <= "00000000";
    -- flow-through select operator MUX_2115_inst
    o0_2116 <= w0_2080 when (BITSEL_u8_u1_2112_wire(0) /=  '0') else i0_2048;
    -- flow-through select operator MUX_2123_inst
    o1_2124 <= w1_2084 when (BITSEL_u8_u1_2120_wire(0) /=  '0') else i1_2052;
    -- flow-through select operator MUX_2131_inst
    o2_2132 <= w2_2088 when (BITSEL_u8_u1_2128_wire(0) /=  '0') else i2_2056;
    -- flow-through select operator MUX_2139_inst
    o3_2140 <= w3_2092 when (BITSEL_u8_u1_2136_wire(0) /=  '0') else i3_2060;
    -- flow-through select operator MUX_2147_inst
    o4_2148 <= w4_2096 when (BITSEL_u8_u1_2144_wire(0) /=  '0') else i4_2064;
    -- flow-through select operator MUX_2155_inst
    o5_2156 <= w5_2100 when (BITSEL_u8_u1_2152_wire(0) /=  '0') else i5_2068;
    -- flow-through select operator MUX_2163_inst
    o6_2164 <= w6_2104 when (BITSEL_u8_u1_2160_wire(0) /=  '0') else i6_2072;
    -- flow-through select operator MUX_2171_inst
    o7_2172 <= w7_2108 when (BITSEL_u8_u1_2168_wire(0) /=  '0') else i7_2076;
    -- flow-through slice operator slice_2047_inst
    i0_2048 <= i_dword_buffer(63 downto 56);
    -- flow-through slice operator slice_2051_inst
    i1_2052 <= i_dword_buffer(55 downto 48);
    -- flow-through slice operator slice_2055_inst
    i2_2056 <= i_dword_buffer(47 downto 40);
    -- flow-through slice operator slice_2059_inst
    i3_2060 <= i_dword_buffer(39 downto 32);
    -- flow-through slice operator slice_2063_inst
    i4_2064 <= i_dword_buffer(31 downto 24);
    -- flow-through slice operator slice_2067_inst
    i5_2068 <= i_dword_buffer(23 downto 16);
    -- flow-through slice operator slice_2071_inst
    i6_2072 <= i_dword_buffer(15 downto 8);
    -- flow-through slice operator slice_2075_inst
    i7_2076 <= i_dword_buffer(7 downto 0);
    -- flow-through slice operator slice_2079_inst
    w0_2080 <= insert_dword_buffer(63 downto 56);
    -- flow-through slice operator slice_2083_inst
    w1_2084 <= insert_dword_buffer(55 downto 48);
    -- flow-through slice operator slice_2087_inst
    w2_2088 <= insert_dword_buffer(47 downto 40);
    -- flow-through slice operator slice_2091_inst
    w3_2092 <= insert_dword_buffer(39 downto 32);
    -- flow-through slice operator slice_2095_inst
    w4_2096 <= insert_dword_buffer(31 downto 24);
    -- flow-through slice operator slice_2099_inst
    w5_2100 <= insert_dword_buffer(23 downto 16);
    -- flow-through slice operator slice_2103_inst
    w6_2104 <= insert_dword_buffer(15 downto 8);
    -- flow-through slice operator slice_2107_inst
    w7_2108 <= insert_dword_buffer(7 downto 0);
    -- flow through binary operator BITSEL_u8_u1_2112_inst
    process(backend_byte_mask_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(backend_byte_mask_buffer, konst_2111_wire_constant, tmp_var);
      BITSEL_u8_u1_2112_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u8_u1_2120_inst
    process(backend_byte_mask_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(backend_byte_mask_buffer, konst_2119_wire_constant, tmp_var);
      BITSEL_u8_u1_2120_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u8_u1_2128_inst
    process(backend_byte_mask_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(backend_byte_mask_buffer, konst_2127_wire_constant, tmp_var);
      BITSEL_u8_u1_2128_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u8_u1_2136_inst
    process(backend_byte_mask_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(backend_byte_mask_buffer, konst_2135_wire_constant, tmp_var);
      BITSEL_u8_u1_2136_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u8_u1_2144_inst
    process(backend_byte_mask_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(backend_byte_mask_buffer, konst_2143_wire_constant, tmp_var);
      BITSEL_u8_u1_2144_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u8_u1_2152_inst
    process(backend_byte_mask_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(backend_byte_mask_buffer, konst_2151_wire_constant, tmp_var);
      BITSEL_u8_u1_2152_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u8_u1_2160_inst
    process(backend_byte_mask_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(backend_byte_mask_buffer, konst_2159_wire_constant, tmp_var);
      BITSEL_u8_u1_2160_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u8_u1_2168_inst
    process(backend_byte_mask_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(backend_byte_mask_buffer, konst_2167_wire_constant, tmp_var);
      BITSEL_u8_u1_2168_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u16_u32_2180_inst
    process(CONCAT_u8_u16_2176_wire, CONCAT_u8_u16_2179_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u8_u16_2176_wire, CONCAT_u8_u16_2179_wire, tmp_var);
      CONCAT_u16_u32_2180_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u16_u32_2187_inst
    process(CONCAT_u8_u16_2183_wire, CONCAT_u8_u16_2186_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u8_u16_2183_wire, CONCAT_u8_u16_2186_wire, tmp_var);
      CONCAT_u16_u32_2187_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u64_2188_inst
    process(CONCAT_u16_u32_2180_wire, CONCAT_u16_u32_2187_wire) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u16_u32_2180_wire, CONCAT_u16_u32_2187_wire, tmp_var);
      o_dword_buffer <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u8_u16_2176_inst
    process(o0_2116, o1_2124) -- 
      variable tmp_var : std_logic_vector(15 downto 0); -- 
    begin -- 
      ApConcat_proc(o0_2116, o1_2124, tmp_var);
      CONCAT_u8_u16_2176_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u8_u16_2179_inst
    process(o2_2132, o3_2140) -- 
      variable tmp_var : std_logic_vector(15 downto 0); -- 
    begin -- 
      ApConcat_proc(o2_2132, o3_2140, tmp_var);
      CONCAT_u8_u16_2179_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u8_u16_2183_inst
    process(o4_2148, o5_2156) -- 
      variable tmp_var : std_logic_vector(15 downto 0); -- 
    begin -- 
      ApConcat_proc(o4_2148, o5_2156, tmp_var);
      CONCAT_u8_u16_2183_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u8_u16_2186_inst
    process(o6_2164, o7_2172) -- 
      variable tmp_var : std_logic_vector(15 downto 0); -- 
    begin -- 
      ApConcat_proc(o6_2164, o7_2172, tmp_var);
      CONCAT_u8_u16_2186_wire <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end dcacheInsertBytes_Volatile_arch;
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
library munit_dcache;
use munit_dcache.dcache_global_package.all;
entity dcacheNeedsToBeFlushed_Volatile is -- 
  port ( -- 
    asi : in  std_logic_vector(7 downto 0);
    req_type : in  std_logic_vector(3 downto 0);
    is_flush_asi : out  std_logic_vector(0 downto 0);
    is_mmu_ctrl_reg_write : out  std_logic_vector(0 downto 0);
    flush_line_only : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity dcacheNeedsToBeFlushed_Volatile;
architecture dcacheNeedsToBeFlushed_Volatile_arch of dcacheNeedsToBeFlushed_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(12-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal asi_buffer :  std_logic_vector(7 downto 0);
  signal req_type_buffer :  std_logic_vector(3 downto 0);
  -- output port buffer signals
  signal is_flush_asi_buffer :  std_logic_vector(0 downto 0);
  signal is_mmu_ctrl_reg_write_buffer :  std_logic_vector(0 downto 0);
  signal flush_line_only_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  component isDcacheFlushAsi_Volatile is -- 
    port ( -- 
      asi : in  std_logic_vector(7 downto 0);
      ret_val : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  -- 
begin --  
  -- input handling ------------------------------------------------
  asi_buffer <= asi;
  req_type_buffer <= req_type;
  -- output handling  -------------------------------------------------------
  is_flush_asi <= is_flush_asi_buffer;
  is_mmu_ctrl_reg_write <= is_mmu_ctrl_reg_write_buffer;
  flush_line_only <= flush_line_only_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal EQ_u4_u1_1334_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_1337_wire : std_logic_vector(0 downto 0);
    signal EQ_u8_u1_1347_wire : std_logic_vector(0 downto 0);
    signal EQ_u8_u1_1353_wire : std_logic_vector(0 downto 0);
    signal EQ_u8_u1_1356_wire : std_logic_vector(0 downto 0);
    signal R_ASI_FLUSH_I_D_USER_1352_wire_constant : std_logic_vector(7 downto 0);
    signal R_ASI_FLUSH_I_USER_1355_wire_constant : std_logic_vector(7 downto 0);
    signal R_ASI_MMU_REGISTER_1346_wire_constant : std_logic_vector(7 downto 0);
    signal R_REQUEST_TYPE_CCU_CACHE_WRITE_1336_wire_constant : std_logic_vector(3 downto 0);
    signal R_REQUEST_TYPE_WRITE_1333_wire_constant : std_logic_vector(3 downto 0);
    signal asi_without_head_bit_1330 : std_logic_vector(7 downto 0);
    signal is_write_1339 : std_logic_vector(0 downto 0);
    signal konst_1328_wire_constant : std_logic_vector(7 downto 0);
    -- 
  begin -- 
    R_ASI_FLUSH_I_D_USER_1352_wire_constant <= "00010100";
    R_ASI_FLUSH_I_USER_1355_wire_constant <= "00011100";
    R_ASI_MMU_REGISTER_1346_wire_constant <= "00000100";
    R_REQUEST_TYPE_CCU_CACHE_WRITE_1336_wire_constant <= "0110";
    R_REQUEST_TYPE_WRITE_1333_wire_constant <= "0010";
    konst_1328_wire_constant <= "01111111";
    -- flow through binary operator AND_u1_u1_1348_inst
    is_mmu_ctrl_reg_write_buffer <= (is_write_1339 and EQ_u8_u1_1347_wire);
    -- flow through binary operator AND_u8_u8_1329_inst
    asi_without_head_bit_1330 <= (asi_buffer and konst_1328_wire_constant);
    -- flow through binary operator EQ_u4_u1_1334_inst
    process(req_type_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(req_type_buffer, R_REQUEST_TYPE_WRITE_1333_wire_constant, tmp_var);
      EQ_u4_u1_1334_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_1337_inst
    process(req_type_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(req_type_buffer, R_REQUEST_TYPE_CCU_CACHE_WRITE_1336_wire_constant, tmp_var);
      EQ_u4_u1_1337_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_1347_inst
    process(asi_without_head_bit_1330) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_without_head_bit_1330, R_ASI_MMU_REGISTER_1346_wire_constant, tmp_var);
      EQ_u8_u1_1347_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_1353_inst
    process(asi_without_head_bit_1330) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_without_head_bit_1330, R_ASI_FLUSH_I_D_USER_1352_wire_constant, tmp_var);
      EQ_u8_u1_1353_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_1356_inst
    process(asi_without_head_bit_1330) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_without_head_bit_1330, R_ASI_FLUSH_I_USER_1355_wire_constant, tmp_var);
      EQ_u8_u1_1356_wire <= tmp_var; --
    end process;
    -- flow through binary operator OR_u1_u1_1338_inst
    is_write_1339 <= (EQ_u4_u1_1334_wire or EQ_u4_u1_1337_wire);
    -- flow through binary operator OR_u1_u1_1357_inst
    flush_line_only_buffer <= (EQ_u8_u1_1353_wire or EQ_u8_u1_1356_wire);
    volatile_operator_isDcacheFlushAsi_1170: isDcacheFlushAsi_Volatile port map(asi => asi_without_head_bit_1330, ret_val => is_flush_asi_buffer); 
    -- 
  end Block; -- data_path
  -- 
end dcacheNeedsToBeFlushed_Volatile_arch;
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
library munit_dcache;
use munit_dcache.dcache_global_package.all;
entity dcacheOffsetInBlock_Volatile is -- 
  port ( -- 
    addr : in  std_logic_vector(31 downto 0);
    offset : out  std_logic_vector(31 downto 0)-- 
  );
  -- 
end entity dcacheOffsetInBlock_Volatile;
architecture dcacheOffsetInBlock_Volatile_arch of dcacheOffsetInBlock_Volatile is -- 
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
    signal LSHR_u32_u32_1743_wire : std_logic_vector(31 downto 0);
    signal LSHR_u32_u32_1747_wire_constant : std_logic_vector(31 downto 0);
    signal konst_1742_wire_constant : std_logic_vector(31 downto 0);
    -- 
  begin -- 
    LSHR_u32_u32_1747_wire_constant <= "00000000000000000000000000000111";
    konst_1742_wire_constant <= "00000000000000000000000000000011";
    -- flow through binary operator AND_u32_u32_1748_inst
    offset_buffer <= (LSHR_u32_u32_1743_wire and LSHR_u32_u32_1747_wire_constant);
    -- flow through binary operator LSHR_u32_u32_1743_inst
    process(addr_buffer) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApIntLSHR_proc(addr_buffer, konst_1742_wire_constant, tmp_var);
      LSHR_u32_u32_1743_wire <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end dcacheOffsetInBlock_Volatile_arch;
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
library munit_dcache;
use munit_dcache.dcache_global_package.all;
entity identify_cpu_actions_Volatile is -- 
  port ( -- 
    exec_cpu : in  std_logic_vector(0 downto 0);
    next_dcache_trapped : in  std_logic_vector(0 downto 0);
    is_ccu_request : in  std_logic_vector(0 downto 0);
    is_a_hit : in  std_logic_vector(0 downto 0);
    skip_tag_lookup : in  std_logic_vector(0 downto 0);
    is_memory_write : in  std_logic_vector(0 downto 0);
    is_memory_read : in  std_logic_vector(0 downto 0);
    is_flush_asi : in  std_logic_vector(0 downto 0);
    is_stbar : in  std_logic_vector(0 downto 0);
    is_bypass_asi : in  std_logic_vector(0 downto 0);
    is_mmu_access_asi : in  std_logic_vector(0 downto 0);
    is_mmu_fsr_write : in  std_logic_vector(0 downto 0);
    write_dword_hit : out  std_logic_vector(0 downto 0);
    write_dword_miss : out  std_logic_vector(0 downto 0);
    read_dword_hit : out  std_logic_vector(0 downto 0);
    read_dword_miss : out  std_logic_vector(0 downto 0);
    finished_flush_or_nop : out  std_logic_vector(0 downto 0);
    write_to_mmu_or_bypass : out  std_logic_vector(0 downto 0);
    read_from_mmu_or_bypass : out  std_logic_vector(0 downto 0);
    write_to_mmu_fsr : out  std_logic_vector(0 downto 0);
    send_to_be : out  std_logic_vector(0 downto 0);
    no_response_from_be : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity identify_cpu_actions_Volatile;
architecture identify_cpu_actions_Volatile_arch of identify_cpu_actions_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(12-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal exec_cpu_buffer :  std_logic_vector(0 downto 0);
  signal next_dcache_trapped_buffer :  std_logic_vector(0 downto 0);
  signal is_ccu_request_buffer :  std_logic_vector(0 downto 0);
  signal is_a_hit_buffer :  std_logic_vector(0 downto 0);
  signal skip_tag_lookup_buffer :  std_logic_vector(0 downto 0);
  signal is_memory_write_buffer :  std_logic_vector(0 downto 0);
  signal is_memory_read_buffer :  std_logic_vector(0 downto 0);
  signal is_flush_asi_buffer :  std_logic_vector(0 downto 0);
  signal is_stbar_buffer :  std_logic_vector(0 downto 0);
  signal is_bypass_asi_buffer :  std_logic_vector(0 downto 0);
  signal is_mmu_access_asi_buffer :  std_logic_vector(0 downto 0);
  signal is_mmu_fsr_write_buffer :  std_logic_vector(0 downto 0);
  -- output port buffer signals
  signal write_dword_hit_buffer :  std_logic_vector(0 downto 0);
  signal write_dword_miss_buffer :  std_logic_vector(0 downto 0);
  signal read_dword_hit_buffer :  std_logic_vector(0 downto 0);
  signal read_dword_miss_buffer :  std_logic_vector(0 downto 0);
  signal finished_flush_or_nop_buffer :  std_logic_vector(0 downto 0);
  signal write_to_mmu_or_bypass_buffer :  std_logic_vector(0 downto 0);
  signal read_from_mmu_or_bypass_buffer :  std_logic_vector(0 downto 0);
  signal write_to_mmu_fsr_buffer :  std_logic_vector(0 downto 0);
  signal send_to_be_buffer :  std_logic_vector(0 downto 0);
  signal no_response_from_be_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  exec_cpu_buffer <= exec_cpu;
  next_dcache_trapped_buffer <= next_dcache_trapped;
  is_ccu_request_buffer <= is_ccu_request;
  is_a_hit_buffer <= is_a_hit;
  skip_tag_lookup_buffer <= skip_tag_lookup;
  is_memory_write_buffer <= is_memory_write;
  is_memory_read_buffer <= is_memory_read;
  is_flush_asi_buffer <= is_flush_asi;
  is_stbar_buffer <= is_stbar;
  is_bypass_asi_buffer <= is_bypass_asi;
  is_mmu_access_asi_buffer <= is_mmu_access_asi;
  is_mmu_fsr_write_buffer <= is_mmu_fsr_write;
  -- output handling  -------------------------------------------------------
  write_dword_hit <= write_dword_hit_buffer;
  write_dword_miss <= write_dword_miss_buffer;
  read_dword_hit <= read_dword_hit_buffer;
  read_dword_miss <= read_dword_miss_buffer;
  finished_flush_or_nop <= finished_flush_or_nop_buffer;
  write_to_mmu_or_bypass <= write_to_mmu_or_bypass_buffer;
  read_from_mmu_or_bypass <= read_from_mmu_or_bypass_buffer;
  write_to_mmu_fsr <= write_to_mmu_fsr_buffer;
  send_to_be <= send_to_be_buffer;
  no_response_from_be <= no_response_from_be_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_2355_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_2358_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_2367_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_2371_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_2380_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_2383_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_2392_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_2396_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_2404_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_2407_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_2414_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_2417_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_2425_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_2428_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_2346_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_2354_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_2366_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_2369_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_2379_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_2391_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_2394_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_2413_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_2348_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_2424_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_2439_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_2441_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_2444_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_2446_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_2452_wire : std_logic_vector(0 downto 0);
    signal run_this_transaction_2350 : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    -- flow through binary operator AND_u1_u1_2349_inst
    run_this_transaction_2350 <= (exec_cpu_buffer and OR_u1_u1_2348_wire);
    -- flow through binary operator AND_u1_u1_2355_inst
    AND_u1_u1_2355_wire <= (run_this_transaction_2350 and NOT_u1_u1_2354_wire);
    -- flow through binary operator AND_u1_u1_2358_inst
    AND_u1_u1_2358_wire <= (is_a_hit_buffer and is_memory_write_buffer);
    -- flow through binary operator AND_u1_u1_2359_inst
    write_dword_hit_buffer <= (AND_u1_u1_2355_wire and AND_u1_u1_2358_wire);
    -- flow through binary operator AND_u1_u1_2367_inst
    AND_u1_u1_2367_wire <= (run_this_transaction_2350 and NOT_u1_u1_2366_wire);
    -- flow through binary operator AND_u1_u1_2371_inst
    AND_u1_u1_2371_wire <= (NOT_u1_u1_2369_wire and is_memory_write_buffer);
    -- flow through binary operator AND_u1_u1_2372_inst
    write_dword_miss_buffer <= (AND_u1_u1_2367_wire and AND_u1_u1_2371_wire);
    -- flow through binary operator AND_u1_u1_2380_inst
    AND_u1_u1_2380_wire <= (run_this_transaction_2350 and NOT_u1_u1_2379_wire);
    -- flow through binary operator AND_u1_u1_2383_inst
    AND_u1_u1_2383_wire <= (is_a_hit_buffer and is_memory_read_buffer);
    -- flow through binary operator AND_u1_u1_2384_inst
    read_dword_hit_buffer <= (AND_u1_u1_2380_wire and AND_u1_u1_2383_wire);
    -- flow through binary operator AND_u1_u1_2392_inst
    AND_u1_u1_2392_wire <= (run_this_transaction_2350 and NOT_u1_u1_2391_wire);
    -- flow through binary operator AND_u1_u1_2396_inst
    AND_u1_u1_2396_wire <= (NOT_u1_u1_2394_wire and is_memory_read_buffer);
    -- flow through binary operator AND_u1_u1_2397_inst
    read_dword_miss_buffer <= (AND_u1_u1_2392_wire and AND_u1_u1_2396_wire);
    -- flow through binary operator AND_u1_u1_2404_inst
    AND_u1_u1_2404_wire <= (run_this_transaction_2350 and exec_cpu_buffer);
    -- flow through binary operator AND_u1_u1_2407_inst
    AND_u1_u1_2407_wire <= (is_flush_asi_buffer and is_stbar_buffer);
    -- flow through binary operator AND_u1_u1_2408_inst
    finished_flush_or_nop_buffer <= (AND_u1_u1_2404_wire and AND_u1_u1_2407_wire);
    -- flow through binary operator AND_u1_u1_2414_inst
    AND_u1_u1_2414_wire <= (run_this_transaction_2350 and NOT_u1_u1_2413_wire);
    -- flow through binary operator AND_u1_u1_2417_inst
    AND_u1_u1_2417_wire <= (is_mmu_access_asi_buffer and is_memory_write_buffer);
    -- flow through binary operator AND_u1_u1_2418_inst
    write_to_mmu_or_bypass_buffer <= (AND_u1_u1_2414_wire and AND_u1_u1_2417_wire);
    -- flow through binary operator AND_u1_u1_2425_inst
    AND_u1_u1_2425_wire <= (exec_cpu_buffer and OR_u1_u1_2424_wire);
    -- flow through binary operator AND_u1_u1_2428_inst
    AND_u1_u1_2428_wire <= (is_mmu_access_asi_buffer and is_memory_read_buffer);
    -- flow through binary operator AND_u1_u1_2429_inst
    read_from_mmu_or_bypass_buffer <= (AND_u1_u1_2425_wire and AND_u1_u1_2428_wire);
    -- flow through binary operator AND_u1_u1_2434_inst
    write_to_mmu_fsr_buffer <= (exec_cpu_buffer and is_mmu_fsr_write_buffer);
    -- unary operator NOT_u1_u1_2346_inst
    process(next_dcache_trapped_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", next_dcache_trapped_buffer, tmp_var);
      NOT_u1_u1_2346_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_2354_inst
    process(skip_tag_lookup_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", skip_tag_lookup_buffer, tmp_var);
      NOT_u1_u1_2354_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_2366_inst
    process(skip_tag_lookup_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", skip_tag_lookup_buffer, tmp_var);
      NOT_u1_u1_2366_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_2369_inst
    process(is_a_hit_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", is_a_hit_buffer, tmp_var);
      NOT_u1_u1_2369_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_2379_inst
    process(skip_tag_lookup_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", skip_tag_lookup_buffer, tmp_var);
      NOT_u1_u1_2379_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_2391_inst
    process(skip_tag_lookup_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", skip_tag_lookup_buffer, tmp_var);
      NOT_u1_u1_2391_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_2394_inst
    process(is_a_hit_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", is_a_hit_buffer, tmp_var);
      NOT_u1_u1_2394_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_2413_inst
    process(is_flush_asi_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", is_flush_asi_buffer, tmp_var);
      NOT_u1_u1_2413_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator OR_u1_u1_2348_inst
    OR_u1_u1_2348_wire <= (NOT_u1_u1_2346_wire or is_ccu_request_buffer);
    -- flow through binary operator OR_u1_u1_2424_inst
    OR_u1_u1_2424_wire <= (is_bypass_asi_buffer or run_this_transaction_2350);
    -- flow through binary operator OR_u1_u1_2439_inst
    OR_u1_u1_2439_wire <= (read_dword_miss_buffer or write_dword_miss_buffer);
    -- flow through binary operator OR_u1_u1_2441_inst
    OR_u1_u1_2441_wire <= (OR_u1_u1_2439_wire or write_dword_hit_buffer);
    -- flow through binary operator OR_u1_u1_2444_inst
    OR_u1_u1_2444_wire <= (write_to_mmu_or_bypass_buffer or read_from_mmu_or_bypass_buffer);
    -- flow through binary operator OR_u1_u1_2446_inst
    OR_u1_u1_2446_wire <= (OR_u1_u1_2444_wire or write_to_mmu_fsr_buffer);
    -- flow through binary operator OR_u1_u1_2447_inst
    send_to_be_buffer <= (OR_u1_u1_2441_wire or OR_u1_u1_2446_wire);
    -- flow through binary operator OR_u1_u1_2452_inst
    OR_u1_u1_2452_wire <= (write_dword_hit_buffer or write_to_mmu_or_bypass_buffer);
    -- flow through binary operator OR_u1_u1_2454_inst
    no_response_from_be_buffer <= (OR_u1_u1_2452_wire or write_to_mmu_fsr_buffer);
    -- 
  end Block; -- data_path
  -- 
end identify_cpu_actions_Volatile_arch;
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
library munit_dcache;
use munit_dcache.dcache_global_package.all;
entity isDcacheAccessToMemAsi_Volatile is -- 
  port ( -- 
    asi : in  std_logic_vector(7 downto 0);
    mem_access_asi : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity isDcacheAccessToMemAsi_Volatile;
architecture isDcacheAccessToMemAsi_Volatile_arch of isDcacheAccessToMemAsi_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(8-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal asi_buffer :  std_logic_vector(7 downto 0);
  -- output port buffer signals
  signal mem_access_asi_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  asi_buffer <= asi;
  -- output handling  -------------------------------------------------------
  mem_access_asi <= mem_access_asi_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_2467_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_2474_wire : std_logic_vector(0 downto 0);
    signal UGE_u8_u1_2463_wire : std_logic_vector(0 downto 0);
    signal UGE_u8_u1_2470_wire : std_logic_vector(0 downto 0);
    signal ULE_u8_u1_2466_wire : std_logic_vector(0 downto 0);
    signal ULE_u8_u1_2473_wire : std_logic_vector(0 downto 0);
    signal konst_2462_wire_constant : std_logic_vector(7 downto 0);
    signal konst_2465_wire_constant : std_logic_vector(7 downto 0);
    signal konst_2469_wire_constant : std_logic_vector(7 downto 0);
    signal konst_2472_wire_constant : std_logic_vector(7 downto 0);
    -- 
  begin -- 
    konst_2462_wire_constant <= "00001000";
    konst_2465_wire_constant <= "00001011";
    konst_2469_wire_constant <= "00100000";
    konst_2472_wire_constant <= "00101111";
    -- flow through binary operator AND_u1_u1_2467_inst
    AND_u1_u1_2467_wire <= (UGE_u8_u1_2463_wire and ULE_u8_u1_2466_wire);
    -- flow through binary operator AND_u1_u1_2474_inst
    AND_u1_u1_2474_wire <= (UGE_u8_u1_2470_wire and ULE_u8_u1_2473_wire);
    -- flow through binary operator OR_u1_u1_2475_inst
    mem_access_asi_buffer <= (AND_u1_u1_2467_wire or AND_u1_u1_2474_wire);
    -- flow through binary operator UGE_u8_u1_2463_inst
    process(asi_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUge_proc(asi_buffer, konst_2462_wire_constant, tmp_var);
      UGE_u8_u1_2463_wire <= tmp_var; --
    end process;
    -- flow through binary operator UGE_u8_u1_2470_inst
    process(asi_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUge_proc(asi_buffer, konst_2469_wire_constant, tmp_var);
      UGE_u8_u1_2470_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULE_u8_u1_2466_inst
    process(asi_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUle_proc(asi_buffer, konst_2465_wire_constant, tmp_var);
      ULE_u8_u1_2466_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULE_u8_u1_2473_inst
    process(asi_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUle_proc(asi_buffer, konst_2472_wire_constant, tmp_var);
      ULE_u8_u1_2473_wire <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end isDcacheAccessToMemAsi_Volatile_arch;
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
library munit_dcache;
use munit_dcache.dcache_global_package.all;
entity isDcacheFlushAsi_Volatile is -- 
  port ( -- 
    asi : in  std_logic_vector(7 downto 0);
    ret_val : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity isDcacheFlushAsi_Volatile;
architecture isDcacheFlushAsi_Volatile_arch of isDcacheFlushAsi_Volatile is -- 
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
    signal UGE_u8_u1_1313_wire : std_logic_vector(0 downto 0);
    signal ULE_u8_u1_1316_wire : std_logic_vector(0 downto 0);
    signal konst_1312_wire_constant : std_logic_vector(7 downto 0);
    signal konst_1315_wire_constant : std_logic_vector(7 downto 0);
    -- 
  begin -- 
    konst_1312_wire_constant <= "00010000";
    konst_1315_wire_constant <= "00010100";
    -- flow through binary operator AND_u1_u1_1317_inst
    ret_val_buffer <= (UGE_u8_u1_1313_wire and ULE_u8_u1_1316_wire);
    -- flow through binary operator UGE_u8_u1_1313_inst
    process(asi_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUge_proc(asi_buffer, konst_1312_wire_constant, tmp_var);
      UGE_u8_u1_1313_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULE_u8_u1_1316_inst
    process(asi_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUle_proc(asi_buffer, konst_1315_wire_constant, tmp_var);
      ULE_u8_u1_1316_wire <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end isDcacheFlushAsi_Volatile_arch;
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
library munit_dcache;
use munit_dcache.dcache_global_package.all;
entity isMmuAccessAsi_Volatile is -- 
  port ( -- 
    asi : in  std_logic_vector(7 downto 0);
    ret_val : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity isMmuAccessAsi_Volatile;
architecture isMmuAccessAsi_Volatile_arch of isMmuAccessAsi_Volatile is -- 
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
    signal AND_u1_u1_1394_wire : std_logic_vector(0 downto 0);
    signal EQ_u8_u1_1372_wire : std_logic_vector(0 downto 0);
    signal EQ_u8_u1_1375_wire : std_logic_vector(0 downto 0);
    signal EQ_u8_u1_1379_wire : std_logic_vector(0 downto 0);
    signal EQ_u8_u1_1382_wire : std_logic_vector(0 downto 0);
    signal EQ_u8_u1_1387_wire : std_logic_vector(0 downto 0);
    signal EQ_u8_u1_1398_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1376_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1383_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1384_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1395_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1399_wire : std_logic_vector(0 downto 0);
    signal R_ASI_AJIT_BRIDGE_CONFIG_1397_wire_constant : std_logic_vector(7 downto 0);
    signal R_ASI_MMU_DIAGNOSTIC_IO_1386_wire_constant : std_logic_vector(7 downto 0);
    signal R_ASI_MMU_DIAGNOSTIC_I_1378_wire_constant : std_logic_vector(7 downto 0);
    signal R_ASI_MMU_DIAGNOSTIC_I_D_1381_wire_constant : std_logic_vector(7 downto 0);
    signal R_ASI_MMU_FLUSH_PROBE_1371_wire_constant : std_logic_vector(7 downto 0);
    signal R_ASI_MMU_REGISTER_1374_wire_constant : std_logic_vector(7 downto 0);
    signal UGE_u8_u1_1390_wire : std_logic_vector(0 downto 0);
    signal ULE_u8_u1_1393_wire : std_logic_vector(0 downto 0);
    signal konst_1389_wire_constant : std_logic_vector(7 downto 0);
    signal konst_1392_wire_constant : std_logic_vector(7 downto 0);
    -- 
  begin -- 
    R_ASI_AJIT_BRIDGE_CONFIG_1397_wire_constant <= "00110000";
    R_ASI_MMU_DIAGNOSTIC_IO_1386_wire_constant <= "00000111";
    R_ASI_MMU_DIAGNOSTIC_I_1378_wire_constant <= "00000101";
    R_ASI_MMU_DIAGNOSTIC_I_D_1381_wire_constant <= "00000110";
    R_ASI_MMU_FLUSH_PROBE_1371_wire_constant <= "00000011";
    R_ASI_MMU_REGISTER_1374_wire_constant <= "00000100";
    konst_1389_wire_constant <= "00100000";
    konst_1392_wire_constant <= "00101111";
    -- flow through binary operator AND_u1_u1_1394_inst
    AND_u1_u1_1394_wire <= (UGE_u8_u1_1390_wire and ULE_u8_u1_1393_wire);
    -- flow through binary operator EQ_u8_u1_1372_inst
    process(asi_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_buffer, R_ASI_MMU_FLUSH_PROBE_1371_wire_constant, tmp_var);
      EQ_u8_u1_1372_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_1375_inst
    process(asi_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_buffer, R_ASI_MMU_REGISTER_1374_wire_constant, tmp_var);
      EQ_u8_u1_1375_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_1379_inst
    process(asi_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_buffer, R_ASI_MMU_DIAGNOSTIC_I_1378_wire_constant, tmp_var);
      EQ_u8_u1_1379_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_1382_inst
    process(asi_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_buffer, R_ASI_MMU_DIAGNOSTIC_I_D_1381_wire_constant, tmp_var);
      EQ_u8_u1_1382_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_1387_inst
    process(asi_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_buffer, R_ASI_MMU_DIAGNOSTIC_IO_1386_wire_constant, tmp_var);
      EQ_u8_u1_1387_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_1398_inst
    process(asi_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_buffer, R_ASI_AJIT_BRIDGE_CONFIG_1397_wire_constant, tmp_var);
      EQ_u8_u1_1398_wire <= tmp_var; --
    end process;
    -- flow through binary operator OR_u1_u1_1376_inst
    OR_u1_u1_1376_wire <= (EQ_u8_u1_1372_wire or EQ_u8_u1_1375_wire);
    -- flow through binary operator OR_u1_u1_1383_inst
    OR_u1_u1_1383_wire <= (EQ_u8_u1_1379_wire or EQ_u8_u1_1382_wire);
    -- flow through binary operator OR_u1_u1_1384_inst
    OR_u1_u1_1384_wire <= (OR_u1_u1_1376_wire or OR_u1_u1_1383_wire);
    -- flow through binary operator OR_u1_u1_1395_inst
    OR_u1_u1_1395_wire <= (EQ_u8_u1_1387_wire or AND_u1_u1_1394_wire);
    -- flow through binary operator OR_u1_u1_1399_inst
    OR_u1_u1_1399_wire <= (OR_u1_u1_1395_wire or EQ_u8_u1_1398_wire);
    -- flow through binary operator OR_u1_u1_1400_inst
    ret_val_buffer <= (OR_u1_u1_1384_wire or OR_u1_u1_1399_wire);
    -- flow through binary operator UGE_u8_u1_1390_inst
    process(asi_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUge_proc(asi_buffer, konst_1389_wire_constant, tmp_var);
      UGE_u8_u1_1390_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULE_u8_u1_1393_inst
    process(asi_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUle_proc(asi_buffer, konst_1392_wire_constant, tmp_var);
      ULE_u8_u1_1393_wire <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end isMmuAccessAsi_Volatile_arch;
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
library munit_dcache;
use munit_dcache.dcache_global_package.all;
entity isSupervisorAsi_Volatile is -- 
  port ( -- 
    asi : in  std_logic_vector(7 downto 0);
    ret_val : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity isSupervisorAsi_Volatile;
architecture isSupervisorAsi_Volatile_arch of isSupervisorAsi_Volatile is -- 
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
    signal EQ_u8_u1_1016_wire : std_logic_vector(0 downto 0);
    signal EQ_u8_u1_1019_wire : std_logic_vector(0 downto 0);
    signal R_ASI_SUPERVISOR_DATA_1018_wire_constant : std_logic_vector(7 downto 0);
    signal R_ASI_SUPERVISOR_INSTRUCTION_1015_wire_constant : std_logic_vector(7 downto 0);
    -- 
  begin -- 
    R_ASI_SUPERVISOR_DATA_1018_wire_constant <= "00001011";
    R_ASI_SUPERVISOR_INSTRUCTION_1015_wire_constant <= "00001001";
    -- flow through binary operator EQ_u8_u1_1016_inst
    process(asi_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_buffer, R_ASI_SUPERVISOR_INSTRUCTION_1015_wire_constant, tmp_var);
      EQ_u8_u1_1016_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_1019_inst
    process(asi_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_buffer, R_ASI_SUPERVISOR_DATA_1018_wire_constant, tmp_var);
      EQ_u8_u1_1019_wire <= tmp_var; --
    end process;
    -- flow through binary operator OR_u1_u1_1020_inst
    ret_val_buffer <= (EQ_u8_u1_1016_wire or EQ_u8_u1_1019_wire);
    -- 
  end Block; -- data_path
  -- 
end isSupervisorAsi_Volatile_arch;
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
library munit_dcache;
use munit_dcache.dcache_global_package.all;
entity merge_and_decode_from_cpu_Volatile is -- 
  port ( -- 
    from_cpu_fast : in  std_logic_vector(120 downto 0);
    from_cpu_slow : in  std_logic_vector(120 downto 0);
    from_coherence : in  std_logic_vector(26 downto 0);
    is_thread_head : out  std_logic_vector(0 downto 0);
    lock_bus : out  std_logic_vector(0 downto 0);
    cpu_valid : out  std_logic_vector(0 downto 0);
    cpu_valid_fast : out  std_logic_vector(0 downto 0);
    cpu_valid_slow : out  std_logic_vector(0 downto 0);
    coherence_valid : out  std_logic_vector(0 downto 0);
    cpu_req_type : out  std_logic_vector(7 downto 0);
    cpu_asi : out  std_logic_vector(7 downto 0);
    cpu_byte_mask : out  std_logic_vector(7 downto 0);
    cpu_addr : out  std_logic_vector(31 downto 0);
    cpu_write_data : out  std_logic_vector(63 downto 0);
    is_flush_asi : out  std_logic_vector(0 downto 0);
    is_mmu_ctrl_reg_write : out  std_logic_vector(0 downto 0);
    flush_line_only : out  std_logic_vector(0 downto 0);
    is_supervisor_asi : out  std_logic_vector(0 downto 0);
    is_mmu_access_asi : out  std_logic_vector(0 downto 0);
    is_mmu_bypass_asi : out  std_logic_vector(0 downto 0);
    dcache_needs_to_be_flushed : out  std_logic_vector(0 downto 0);
    is_memory_read : out  std_logic_vector(0 downto 0);
    is_memory_write : out  std_logic_vector(0 downto 0);
    is_mmu_fsr_write : out  std_logic_vector(0 downto 0);
    is_stbar : out  std_logic_vector(0 downto 0);
    is_ccu_request : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity merge_and_decode_from_cpu_Volatile;
architecture merge_and_decode_from_cpu_Volatile_arch of merge_and_decode_from_cpu_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(269-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal from_cpu_fast_buffer :  std_logic_vector(120 downto 0);
  signal from_cpu_slow_buffer :  std_logic_vector(120 downto 0);
  signal from_coherence_buffer :  std_logic_vector(26 downto 0);
  -- output port buffer signals
  signal is_thread_head_buffer :  std_logic_vector(0 downto 0);
  signal lock_bus_buffer :  std_logic_vector(0 downto 0);
  signal cpu_valid_buffer :  std_logic_vector(0 downto 0);
  signal cpu_valid_fast_buffer :  std_logic_vector(0 downto 0);
  signal cpu_valid_slow_buffer :  std_logic_vector(0 downto 0);
  signal coherence_valid_buffer :  std_logic_vector(0 downto 0);
  signal cpu_req_type_buffer :  std_logic_vector(7 downto 0);
  signal cpu_asi_buffer :  std_logic_vector(7 downto 0);
  signal cpu_byte_mask_buffer :  std_logic_vector(7 downto 0);
  signal cpu_addr_buffer :  std_logic_vector(31 downto 0);
  signal cpu_write_data_buffer :  std_logic_vector(63 downto 0);
  signal is_flush_asi_buffer :  std_logic_vector(0 downto 0);
  signal is_mmu_ctrl_reg_write_buffer :  std_logic_vector(0 downto 0);
  signal flush_line_only_buffer :  std_logic_vector(0 downto 0);
  signal is_supervisor_asi_buffer :  std_logic_vector(0 downto 0);
  signal is_mmu_access_asi_buffer :  std_logic_vector(0 downto 0);
  signal is_mmu_bypass_asi_buffer :  std_logic_vector(0 downto 0);
  signal dcache_needs_to_be_flushed_buffer :  std_logic_vector(0 downto 0);
  signal is_memory_read_buffer :  std_logic_vector(0 downto 0);
  signal is_memory_write_buffer :  std_logic_vector(0 downto 0);
  signal is_mmu_fsr_write_buffer :  std_logic_vector(0 downto 0);
  signal is_stbar_buffer :  std_logic_vector(0 downto 0);
  signal is_ccu_request_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  component isSupervisorAsi_Volatile is -- 
    port ( -- 
      asi : in  std_logic_vector(7 downto 0);
      ret_val : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  component dcacheNeedsToBeFlushed_Volatile is -- 
    port ( -- 
      asi : in  std_logic_vector(7 downto 0);
      req_type : in  std_logic_vector(3 downto 0);
      is_flush_asi : out  std_logic_vector(0 downto 0);
      is_mmu_ctrl_reg_write : out  std_logic_vector(0 downto 0);
      flush_line_only : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  component isMmuAccessAsi_Volatile is -- 
    port ( -- 
      asi : in  std_logic_vector(7 downto 0);
      ret_val : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  -- 
begin --  
  -- input handling ------------------------------------------------
  from_cpu_fast_buffer <= from_cpu_fast;
  from_cpu_slow_buffer <= from_cpu_slow;
  from_coherence_buffer <= from_coherence;
  -- output handling  -------------------------------------------------------
  is_thread_head <= is_thread_head_buffer;
  lock_bus <= lock_bus_buffer;
  cpu_valid <= cpu_valid_buffer;
  cpu_valid_fast <= cpu_valid_fast_buffer;
  cpu_valid_slow <= cpu_valid_slow_buffer;
  coherence_valid <= coherence_valid_buffer;
  cpu_req_type <= cpu_req_type_buffer;
  cpu_asi <= cpu_asi_buffer;
  cpu_byte_mask <= cpu_byte_mask_buffer;
  cpu_addr <= cpu_addr_buffer;
  cpu_write_data <= cpu_write_data_buffer;
  is_flush_asi <= is_flush_asi_buffer;
  is_mmu_ctrl_reg_write <= is_mmu_ctrl_reg_write_buffer;
  flush_line_only <= flush_line_only_buffer;
  is_supervisor_asi <= is_supervisor_asi_buffer;
  is_mmu_access_asi <= is_mmu_access_asi_buffer;
  is_mmu_bypass_asi <= is_mmu_bypass_asi_buffer;
  dcache_needs_to_be_flushed <= dcache_needs_to_be_flushed_buffer;
  is_memory_read <= is_memory_read_buffer;
  is_memory_write <= is_memory_write_buffer;
  is_mmu_fsr_write <= is_mmu_fsr_write_buffer;
  is_stbar <= is_stbar_buffer;
  is_ccu_request <= is_ccu_request_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal BITSEL_u8_u1_1537_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u8_u1_1545_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_1617_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_1620_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_1629_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_1632_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_1641_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_1649_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_1657_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_1660_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1528_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1534_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1542_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1579_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1585_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1596_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1614_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1626_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1638_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1646_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1654_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1604_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1621_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1633_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1661_wire : std_logic_vector(0 downto 0);
    signal R_REQUEST_TYPE_CCU_CACHE_READ_1619_wire_constant : std_logic_vector(3 downto 0);
    signal R_REQUEST_TYPE_CCU_CACHE_READ_1656_wire_constant : std_logic_vector(3 downto 0);
    signal R_REQUEST_TYPE_CCU_CACHE_WRITE_1631_wire_constant : std_logic_vector(3 downto 0);
    signal R_REQUEST_TYPE_CCU_CACHE_WRITE_1659_wire_constant : std_logic_vector(3 downto 0);
    signal R_REQUEST_TYPE_READ_1616_wire_constant : std_logic_vector(3 downto 0);
    signal R_REQUEST_TYPE_STBAR_1648_wire_constant : std_logic_vector(3 downto 0);
    signal R_REQUEST_TYPE_WRFSRFAR_1640_wire_constant : std_logic_vector(3 downto 0);
    signal R_REQUEST_TYPE_WRITE_1628_wire_constant : std_logic_vector(3 downto 0);
    signal UGE_u8_u1_1571_wire : std_logic_vector(0 downto 0);
    signal ULE_u8_u1_1574_wire : std_logic_vector(0 downto 0);
    signal cpu_addr_fast_1453 : std_logic_vector(31 downto 0);
    signal cpu_addr_slow_1484 : std_logic_vector(31 downto 0);
    signal cpu_asi_fast_1445 : std_logic_vector(7 downto 0);
    signal cpu_asi_slow_1476 : std_logic_vector(7 downto 0);
    signal cpu_byte_mask_fast_1449 : std_logic_vector(7 downto 0);
    signal cpu_byte_mask_slow_1480 : std_logic_vector(7 downto 0);
    signal cpu_req_type_fast_1441 : std_logic_vector(7 downto 0);
    signal cpu_req_type_slow_1472 : std_logic_vector(7 downto 0);
    signal cpu_valid_base_1505 : std_logic_vector(0 downto 0);
    signal cpu_write_data_fast_1457 : std_logic_vector(63 downto 0);
    signal cpu_write_data_slow_1488 : std_logic_vector(63 downto 0);
    signal eff_crq_4_1555 : std_logic_vector(3 downto 0);
    signal flush_line_only_cpu_1561 : std_logic_vector(0 downto 0);
    signal from_cpu_1501 : std_logic_vector(120 downto 0);
    signal is_flush_asi_cpu_1561 : std_logic_vector(0 downto 0);
    signal is_mmu_access_asi_cpu_1567 : std_logic_vector(0 downto 0);
    signal is_mmu_ctrl_reg_write_cpu_1561 : std_logic_vector(0 downto 0);
    signal is_supervisor_asi_cpu_1564 : std_logic_vector(0 downto 0);
    signal konst_1536_wire_constant : std_logic_vector(7 downto 0);
    signal konst_1544_wire_constant : std_logic_vector(7 downto 0);
    signal konst_1570_wire_constant : std_logic_vector(7 downto 0);
    signal konst_1573_wire_constant : std_logic_vector(7 downto 0);
    signal slice_1553_wire : std_logic_vector(3 downto 0);
    signal type_cast_1551_wire_constant : std_logic_vector(3 downto 0);
    -- 
  begin -- 
    R_REQUEST_TYPE_CCU_CACHE_READ_1619_wire_constant <= "0101";
    R_REQUEST_TYPE_CCU_CACHE_READ_1656_wire_constant <= "0101";
    R_REQUEST_TYPE_CCU_CACHE_WRITE_1631_wire_constant <= "0110";
    R_REQUEST_TYPE_CCU_CACHE_WRITE_1659_wire_constant <= "0110";
    R_REQUEST_TYPE_READ_1616_wire_constant <= "0001";
    R_REQUEST_TYPE_STBAR_1648_wire_constant <= "0011";
    R_REQUEST_TYPE_WRFSRFAR_1640_wire_constant <= "0100";
    R_REQUEST_TYPE_WRITE_1628_wire_constant <= "0010";
    konst_1536_wire_constant <= "00000111";
    konst_1544_wire_constant <= "00000110";
    konst_1570_wire_constant <= "00100000";
    konst_1573_wire_constant <= "00101111";
    type_cast_1551_wire_constant <= "0000";
    -- flow-through select operator MUX_1500_inst
    from_cpu_1501 <= from_cpu_fast_buffer when (cpu_valid_fast_buffer(0) /=  '0') else from_cpu_slow_buffer;
    -- flow-through select operator MUX_1554_inst
    eff_crq_4_1555 <= type_cast_1551_wire_constant when (coherence_valid_buffer(0) /=  '0') else slice_1553_wire;
    -- flow-through slice operator slice_1432_inst
    coherence_valid_buffer <= from_coherence_buffer(26 downto 26);
    -- flow-through slice operator slice_1436_inst
    cpu_valid_fast_buffer <= from_cpu_fast_buffer(120 downto 120);
    -- flow-through slice operator slice_1440_inst
    cpu_req_type_fast_1441 <= from_cpu_fast_buffer(119 downto 112);
    -- flow-through slice operator slice_1444_inst
    cpu_asi_fast_1445 <= from_cpu_fast_buffer(111 downto 104);
    -- flow-through slice operator slice_1448_inst
    cpu_byte_mask_fast_1449 <= from_cpu_fast_buffer(103 downto 96);
    -- flow-through slice operator slice_1452_inst
    cpu_addr_fast_1453 <= from_cpu_fast_buffer(95 downto 64);
    -- flow-through slice operator slice_1456_inst
    cpu_write_data_fast_1457 <= from_cpu_fast_buffer(63 downto 0);
    -- flow-through slice operator slice_1467_inst
    cpu_valid_slow_buffer <= from_cpu_slow_buffer(120 downto 120);
    -- flow-through slice operator slice_1471_inst
    cpu_req_type_slow_1472 <= from_cpu_slow_buffer(119 downto 112);
    -- flow-through slice operator slice_1475_inst
    cpu_asi_slow_1476 <= from_cpu_slow_buffer(111 downto 104);
    -- flow-through slice operator slice_1479_inst
    cpu_byte_mask_slow_1480 <= from_cpu_slow_buffer(103 downto 96);
    -- flow-through slice operator slice_1483_inst
    cpu_addr_slow_1484 <= from_cpu_slow_buffer(95 downto 64);
    -- flow-through slice operator slice_1487_inst
    cpu_write_data_slow_1488 <= from_cpu_slow_buffer(63 downto 0);
    -- flow-through slice operator slice_1504_inst
    cpu_valid_base_1505 <= from_cpu_1501(120 downto 120);
    -- flow-through slice operator slice_1508_inst
    cpu_req_type_buffer <= from_cpu_1501(119 downto 112);
    -- flow-through slice operator slice_1512_inst
    cpu_asi_buffer <= from_cpu_1501(111 downto 104);
    -- flow-through slice operator slice_1516_inst
    cpu_byte_mask_buffer <= from_cpu_1501(103 downto 96);
    -- flow-through slice operator slice_1520_inst
    cpu_addr_buffer <= from_cpu_1501(95 downto 64);
    -- flow-through slice operator slice_1524_inst
    cpu_write_data_buffer <= from_cpu_1501(63 downto 0);
    -- flow-through slice operator slice_1553_inst
    slice_1553_wire <= cpu_req_type_buffer(3 downto 0);
    -- flow through binary operator AND_u1_u1_1530_inst
    cpu_valid_buffer <= (NOT_u1_u1_1528_wire and cpu_valid_base_1505);
    -- flow through binary operator AND_u1_u1_1538_inst
    is_thread_head_buffer <= (NOT_u1_u1_1534_wire and BITSEL_u8_u1_1537_wire);
    -- flow through binary operator AND_u1_u1_1546_inst
    lock_bus_buffer <= (NOT_u1_u1_1542_wire and BITSEL_u8_u1_1545_wire);
    -- flow through binary operator AND_u1_u1_1575_inst
    is_mmu_bypass_asi_buffer <= (UGE_u8_u1_1571_wire and ULE_u8_u1_1574_wire);
    -- flow through binary operator AND_u1_u1_1581_inst
    is_flush_asi_buffer <= (NOT_u1_u1_1579_wire and is_flush_asi_cpu_1561);
    -- flow through binary operator AND_u1_u1_1587_inst
    is_mmu_ctrl_reg_write_buffer <= (NOT_u1_u1_1585_wire and is_mmu_ctrl_reg_write_cpu_1561);
    -- flow through binary operator AND_u1_u1_1598_inst
    is_mmu_access_asi_buffer <= (NOT_u1_u1_1596_wire and is_mmu_access_asi_cpu_1567);
    -- flow through binary operator AND_u1_u1_1622_inst
    is_memory_read_buffer <= (NOT_u1_u1_1614_wire and OR_u1_u1_1621_wire);
    -- flow through binary operator AND_u1_u1_1634_inst
    is_memory_write_buffer <= (NOT_u1_u1_1626_wire and OR_u1_u1_1633_wire);
    -- flow through binary operator AND_u1_u1_1642_inst
    is_mmu_fsr_write_buffer <= (NOT_u1_u1_1638_wire and EQ_u4_u1_1641_wire);
    -- flow through binary operator AND_u1_u1_1650_inst
    is_stbar_buffer <= (NOT_u1_u1_1646_wire and EQ_u4_u1_1649_wire);
    -- flow through binary operator AND_u1_u1_1662_inst
    is_ccu_request_buffer <= (NOT_u1_u1_1654_wire and OR_u1_u1_1661_wire);
    -- flow through binary operator BITSEL_u8_u1_1537_inst
    process(cpu_req_type_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(cpu_req_type_buffer, konst_1536_wire_constant, tmp_var);
      BITSEL_u8_u1_1537_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u8_u1_1545_inst
    process(cpu_req_type_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(cpu_req_type_buffer, konst_1544_wire_constant, tmp_var);
      BITSEL_u8_u1_1545_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_1617_inst
    process(eff_crq_4_1555) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(eff_crq_4_1555, R_REQUEST_TYPE_READ_1616_wire_constant, tmp_var);
      EQ_u4_u1_1617_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_1620_inst
    process(eff_crq_4_1555) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(eff_crq_4_1555, R_REQUEST_TYPE_CCU_CACHE_READ_1619_wire_constant, tmp_var);
      EQ_u4_u1_1620_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_1629_inst
    process(eff_crq_4_1555) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(eff_crq_4_1555, R_REQUEST_TYPE_WRITE_1628_wire_constant, tmp_var);
      EQ_u4_u1_1629_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_1632_inst
    process(eff_crq_4_1555) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(eff_crq_4_1555, R_REQUEST_TYPE_CCU_CACHE_WRITE_1631_wire_constant, tmp_var);
      EQ_u4_u1_1632_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_1641_inst
    process(eff_crq_4_1555) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(eff_crq_4_1555, R_REQUEST_TYPE_WRFSRFAR_1640_wire_constant, tmp_var);
      EQ_u4_u1_1641_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_1649_inst
    process(eff_crq_4_1555) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(eff_crq_4_1555, R_REQUEST_TYPE_STBAR_1648_wire_constant, tmp_var);
      EQ_u4_u1_1649_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_1657_inst
    process(eff_crq_4_1555) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(eff_crq_4_1555, R_REQUEST_TYPE_CCU_CACHE_READ_1656_wire_constant, tmp_var);
      EQ_u4_u1_1657_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_1660_inst
    process(eff_crq_4_1555) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(eff_crq_4_1555, R_REQUEST_TYPE_CCU_CACHE_WRITE_1659_wire_constant, tmp_var);
      EQ_u4_u1_1660_wire <= tmp_var; --
    end process;
    -- unary operator NOT_u1_u1_1528_inst
    process(coherence_valid_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", coherence_valid_buffer, tmp_var);
      NOT_u1_u1_1528_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_1534_inst
    process(coherence_valid_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", coherence_valid_buffer, tmp_var);
      NOT_u1_u1_1534_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_1542_inst
    process(coherence_valid_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", coherence_valid_buffer, tmp_var);
      NOT_u1_u1_1542_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_1579_inst
    process(coherence_valid_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", coherence_valid_buffer, tmp_var);
      NOT_u1_u1_1579_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_1585_inst
    process(coherence_valid_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", coherence_valid_buffer, tmp_var);
      NOT_u1_u1_1585_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_1596_inst
    process(coherence_valid_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", coherence_valid_buffer, tmp_var);
      NOT_u1_u1_1596_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_1614_inst
    process(coherence_valid_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", coherence_valid_buffer, tmp_var);
      NOT_u1_u1_1614_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_1626_inst
    process(coherence_valid_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", coherence_valid_buffer, tmp_var);
      NOT_u1_u1_1626_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_1638_inst
    process(coherence_valid_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", coherence_valid_buffer, tmp_var);
      NOT_u1_u1_1638_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_1646_inst
    process(coherence_valid_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", coherence_valid_buffer, tmp_var);
      NOT_u1_u1_1646_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_1654_inst
    process(coherence_valid_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", coherence_valid_buffer, tmp_var);
      NOT_u1_u1_1654_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator OR_u1_u1_1592_inst
    is_supervisor_asi_buffer <= (coherence_valid_buffer or is_supervisor_asi_cpu_1564);
    -- flow through binary operator OR_u1_u1_1604_inst
    OR_u1_u1_1604_wire <= (is_flush_asi_cpu_1561 or is_mmu_ctrl_reg_write_cpu_1561);
    -- flow through binary operator OR_u1_u1_1605_inst
    dcache_needs_to_be_flushed_buffer <= (coherence_valid_buffer or OR_u1_u1_1604_wire);
    -- flow through binary operator OR_u1_u1_1610_inst
    flush_line_only_buffer <= (coherence_valid_buffer or flush_line_only_cpu_1561);
    -- flow through binary operator OR_u1_u1_1621_inst
    OR_u1_u1_1621_wire <= (EQ_u4_u1_1617_wire or EQ_u4_u1_1620_wire);
    -- flow through binary operator OR_u1_u1_1633_inst
    OR_u1_u1_1633_wire <= (EQ_u4_u1_1629_wire or EQ_u4_u1_1632_wire);
    -- flow through binary operator OR_u1_u1_1661_inst
    OR_u1_u1_1661_wire <= (EQ_u4_u1_1657_wire or EQ_u4_u1_1660_wire);
    -- flow through binary operator UGE_u8_u1_1571_inst
    process(cpu_asi_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUge_proc(cpu_asi_buffer, konst_1570_wire_constant, tmp_var);
      UGE_u8_u1_1571_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULE_u8_u1_1574_inst
    process(cpu_asi_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUle_proc(cpu_asi_buffer, konst_1573_wire_constant, tmp_var);
      ULE_u8_u1_1574_wire <= tmp_var; --
    end process;
    volatile_operator_dcacheNeedsToBeFlushed_1363: dcacheNeedsToBeFlushed_Volatile port map(asi => cpu_asi_buffer, req_type => eff_crq_4_1555, is_flush_asi => is_flush_asi_cpu_1561, is_mmu_ctrl_reg_write => is_mmu_ctrl_reg_write_cpu_1561, flush_line_only => flush_line_only_cpu_1561); 
    volatile_operator_isSupervisorAsi_1364: isSupervisorAsi_Volatile port map(asi => cpu_asi_buffer, ret_val => is_supervisor_asi_cpu_1564); 
    volatile_operator_isMmuAccessAsi_1365: isMmuAccessAsi_Volatile port map(asi => cpu_asi_buffer, ret_val => is_mmu_access_asi_cpu_1567); 
    -- 
  end Block; -- data_path
  -- 
end merge_and_decode_from_cpu_Volatile_arch;
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
library munit_dcache;
use munit_dcache.dcache_global_package.all;
entity parse_from_backend_Volatile is -- 
  port ( -- 
    from_be : in  std_logic_vector(83 downto 0);
    be_valid : out  std_logic_vector(0 downto 0);
    be_counter : out  std_logic_vector(2 downto 0);
    be_tag_command : out  std_logic_vector(2 downto 0);
    be_array_command : out  std_logic_vector(2 downto 0);
    be_dword_id : out  std_logic_vector(2 downto 0);
    be_last_dword : out  std_logic_vector(0 downto 0);
    be_acc : out  std_logic_vector(2 downto 0);
    be_cacheable : out  std_logic_vector(0 downto 0);
    be_mae : out  std_logic_vector(0 downto 0);
    be_access_error : out  std_logic_vector(0 downto 0);
    be_dword : out  std_logic_vector(63 downto 0)-- 
  );
  -- 
end entity parse_from_backend_Volatile;
architecture parse_from_backend_Volatile_arch of parse_from_backend_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(84-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal from_be_buffer :  std_logic_vector(83 downto 0);
  -- output port buffer signals
  signal be_valid_buffer :  std_logic_vector(0 downto 0);
  signal be_counter_buffer :  std_logic_vector(2 downto 0);
  signal be_tag_command_buffer :  std_logic_vector(2 downto 0);
  signal be_array_command_buffer :  std_logic_vector(2 downto 0);
  signal be_dword_id_buffer :  std_logic_vector(2 downto 0);
  signal be_last_dword_buffer :  std_logic_vector(0 downto 0);
  signal be_acc_buffer :  std_logic_vector(2 downto 0);
  signal be_cacheable_buffer :  std_logic_vector(0 downto 0);
  signal be_mae_buffer :  std_logic_vector(0 downto 0);
  signal be_access_error_buffer :  std_logic_vector(0 downto 0);
  signal be_dword_buffer :  std_logic_vector(63 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  from_be_buffer <= from_be;
  -- output handling  -------------------------------------------------------
  be_valid <= be_valid_buffer;
  be_counter <= be_counter_buffer;
  be_tag_command <= be_tag_command_buffer;
  be_array_command <= be_array_command_buffer;
  be_dword_id <= be_dword_id_buffer;
  be_last_dword <= be_last_dword_buffer;
  be_acc <= be_acc_buffer;
  be_cacheable <= be_cacheable_buffer;
  be_mae <= be_mae_buffer;
  be_access_error <= be_access_error_buffer;
  be_dword <= be_dword_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    -- 
  begin -- 
    -- flow-through slice operator slice_1680_inst
    be_valid_buffer <= from_be_buffer(83 downto 83);
    -- flow-through slice operator slice_1684_inst
    be_counter_buffer <= from_be_buffer(82 downto 80);
    -- flow-through slice operator slice_1688_inst
    be_tag_command_buffer <= from_be_buffer(79 downto 77);
    -- flow-through slice operator slice_1692_inst
    be_array_command_buffer <= from_be_buffer(76 downto 74);
    -- flow-through slice operator slice_1696_inst
    be_dword_id_buffer <= from_be_buffer(73 downto 71);
    -- flow-through slice operator slice_1700_inst
    be_last_dword_buffer <= from_be_buffer(70 downto 70);
    -- flow-through slice operator slice_1704_inst
    be_acc_buffer <= from_be_buffer(69 downto 67);
    -- flow-through slice operator slice_1708_inst
    be_cacheable_buffer <= from_be_buffer(66 downto 66);
    -- flow-through slice operator slice_1712_inst
    be_mae_buffer <= from_be_buffer(65 downto 65);
    -- flow-through slice operator slice_1716_inst
    be_access_error_buffer <= from_be_buffer(64 downto 64);
    -- flow-through slice operator slice_1720_inst
    be_dword_buffer <= from_be_buffer(63 downto 0);
    -- 
  end Block; -- data_path
  -- 
end parse_from_backend_Volatile_arch;
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
library munit_dcache;
use munit_dcache.dcache_global_package.all;
entity parse_from_frontend_Volatile is -- 
  port ( -- 
    from_frontend : in  std_logic_vector(119 downto 0);
    no_response_to_fe : out  std_logic_vector(0 downto 0);
    lock_bus : out  std_logic_vector(0 downto 0);
    read_miss : out  std_logic_vector(0 downto 0);
    write_miss : out  std_logic_vector(0 downto 0);
    write_hit : out  std_logic_vector(0 downto 0);
    read_bypass : out  std_logic_vector(0 downto 0);
    write_bypass : out  std_logic_vector(0 downto 0);
    write_fsr : out  std_logic_vector(0 downto 0);
    asi : out  std_logic_vector(7 downto 0);
    byte_mask : out  std_logic_vector(7 downto 0);
    addr : out  std_logic_vector(31 downto 0);
    write_data : out  std_logic_vector(63 downto 0)-- 
  );
  -- 
end entity parse_from_frontend_Volatile;
architecture parse_from_frontend_Volatile_arch of parse_from_frontend_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(120-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal from_frontend_buffer :  std_logic_vector(119 downto 0);
  -- output port buffer signals
  signal no_response_to_fe_buffer :  std_logic_vector(0 downto 0);
  signal lock_bus_buffer :  std_logic_vector(0 downto 0);
  signal read_miss_buffer :  std_logic_vector(0 downto 0);
  signal write_miss_buffer :  std_logic_vector(0 downto 0);
  signal write_hit_buffer :  std_logic_vector(0 downto 0);
  signal read_bypass_buffer :  std_logic_vector(0 downto 0);
  signal write_bypass_buffer :  std_logic_vector(0 downto 0);
  signal write_fsr_buffer :  std_logic_vector(0 downto 0);
  signal asi_buffer :  std_logic_vector(7 downto 0);
  signal byte_mask_buffer :  std_logic_vector(7 downto 0);
  signal addr_buffer :  std_logic_vector(31 downto 0);
  signal write_data_buffer :  std_logic_vector(63 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  from_frontend_buffer <= from_frontend;
  -- output handling  -------------------------------------------------------
  no_response_to_fe <= no_response_to_fe_buffer;
  lock_bus <= lock_bus_buffer;
  read_miss <= read_miss_buffer;
  write_miss <= write_miss_buffer;
  write_hit <= write_hit_buffer;
  read_bypass <= read_bypass_buffer;
  write_bypass <= write_bypass_buffer;
  write_fsr <= write_fsr_buffer;
  asi <= asi_buffer;
  byte_mask <= byte_mask_buffer;
  addr <= addr_buffer;
  write_data <= write_data_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    -- 
  begin -- 
    -- flow-through slice operator slice_1003_inst
    addr_buffer <= from_frontend_buffer(95 downto 64);
    -- flow-through slice operator slice_1007_inst
    write_data_buffer <= from_frontend_buffer(63 downto 0);
    -- flow-through slice operator slice_963_inst
    no_response_to_fe_buffer <= from_frontend_buffer(119 downto 119);
    -- flow-through slice operator slice_967_inst
    lock_bus_buffer <= from_frontend_buffer(118 downto 118);
    -- flow-through slice operator slice_971_inst
    read_miss_buffer <= from_frontend_buffer(117 downto 117);
    -- flow-through slice operator slice_975_inst
    write_miss_buffer <= from_frontend_buffer(116 downto 116);
    -- flow-through slice operator slice_979_inst
    write_hit_buffer <= from_frontend_buffer(115 downto 115);
    -- flow-through slice operator slice_983_inst
    read_bypass_buffer <= from_frontend_buffer(114 downto 114);
    -- flow-through slice operator slice_987_inst
    write_bypass_buffer <= from_frontend_buffer(113 downto 113);
    -- flow-through slice operator slice_991_inst
    write_fsr_buffer <= from_frontend_buffer(112 downto 112);
    -- flow-through slice operator slice_995_inst
    asi_buffer <= from_frontend_buffer(111 downto 104);
    -- flow-through slice operator slice_999_inst
    byte_mask_buffer <= from_frontend_buffer(103 downto 96);
    -- 
  end Block; -- data_path
  -- 
end parse_from_frontend_Volatile_arch;
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
library munit_dcache;
use munit_dcache.dcache_global_package.all;
entity dcache is  -- system 
  port (-- 
    clk : in std_logic;
    reset : in std_logic;
    CACHE_STALL_ENABLE: in std_logic_vector(0 downto 0);
    DCACHE_to_CPU_reset_ack_pipe_read_data: out std_logic_vector(0 downto 0);
    DCACHE_to_CPU_reset_ack_pipe_read_req : in std_logic_vector(0 downto 0);
    DCACHE_to_CPU_reset_ack_pipe_read_ack : out std_logic_vector(0 downto 0);
    DCACHE_to_CPU_response_pipe_read_data: out std_logic_vector(71 downto 0);
    DCACHE_to_CPU_response_pipe_read_req : in std_logic_vector(0 downto 0);
    DCACHE_to_CPU_response_pipe_read_ack : out std_logic_vector(0 downto 0);
    DCACHE_to_CPU_slow_response_pipe_read_data: out std_logic_vector(71 downto 0);
    DCACHE_to_CPU_slow_response_pipe_read_req : in std_logic_vector(0 downto 0);
    DCACHE_to_CPU_slow_response_pipe_read_ack : out std_logic_vector(0 downto 0);
    DCACHE_to_MMU_request_pipe_read_data: out std_logic_vector(119 downto 0);
    DCACHE_to_MMU_request_pipe_read_req : in std_logic_vector(0 downto 0);
    DCACHE_to_MMU_request_pipe_read_ack : out std_logic_vector(0 downto 0);
    MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_data: in std_logic_vector(26 downto 0);
    MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_req : in std_logic_vector(0 downto 0);
    MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_ack : out std_logic_vector(0 downto 0);
    MMU_to_DCACHE_response_pipe_write_data: in std_logic_vector(74 downto 0);
    MMU_to_DCACHE_response_pipe_write_req : in std_logic_vector(0 downto 0);
    MMU_to_DCACHE_response_pipe_write_ack : out std_logic_vector(0 downto 0);
    NOBLOCK_CPU_to_DCACHE_command_pipe_write_data: in std_logic_vector(142 downto 0);
    NOBLOCK_CPU_to_DCACHE_command_pipe_write_req : in std_logic_vector(0 downto 0);
    NOBLOCK_CPU_to_DCACHE_command_pipe_write_ack : out std_logic_vector(0 downto 0);
    NOBLOCK_CPU_to_DCACHE_reset_pipe_write_data: in std_logic_vector(0 downto 0);
    NOBLOCK_CPU_to_DCACHE_reset_pipe_write_req : in std_logic_vector(0 downto 0);
    NOBLOCK_CPU_to_DCACHE_reset_pipe_write_ack : out std_logic_vector(0 downto 0);
    NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_data: in std_logic_vector(120 downto 0);
    NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_req : in std_logic_vector(0 downto 0);
    NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_ack : out std_logic_vector(0 downto 0);
    NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_data: out std_logic_vector(92 downto 0);
    NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_req : in std_logic_vector(0 downto 0);
    NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_ack : out std_logic_vector(0 downto 0);
    NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_data: out std_logic_vector(92 downto 0);
    NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_req : in std_logic_vector(0 downto 0);
    NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_ack : out std_logic_vector(0 downto 0);
    NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_data: in std_logic_vector(0 downto 0);
    NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_req : in std_logic_vector(0 downto 0);
    NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_ack : out std_logic_vector(0 downto 0);
    NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_data: in std_logic_vector(26 downto 0);
    NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_req : in std_logic_vector(0 downto 0);
    NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_ack : out std_logic_vector(0 downto 0)); -- 
  -- 
end entity; 
architecture dcache_arch  of dcache is -- system-architecture 
  -- interface signals to connect to memory space memory_space_1
  -- declarations related to module DcacheBackendDaemon
  component DcacheBackendDaemon is -- 
    generic (tag_length : integer); 
    port ( -- 
      dcache_frontend_to_backend_pipe_read_req : out  std_logic_vector(0 downto 0);
      dcache_frontend_to_backend_pipe_read_ack : in   std_logic_vector(0 downto 0);
      dcache_frontend_to_backend_pipe_read_data : in   std_logic_vector(119 downto 0);
      DCACHE_to_MMU_request_pipe_write_req : out  std_logic_vector(0 downto 0);
      DCACHE_to_MMU_request_pipe_write_ack : in   std_logic_vector(0 downto 0);
      DCACHE_to_MMU_request_pipe_write_data : out  std_logic_vector(119 downto 0);
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
  -- argument signals for module DcacheBackendDaemon
  signal DcacheBackendDaemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal DcacheBackendDaemon_tag_out   : std_logic_vector(1 downto 0);
  signal DcacheBackendDaemon_start_req : std_logic;
  signal DcacheBackendDaemon_start_ack : std_logic;
  signal DcacheBackendDaemon_fin_req   : std_logic;
  signal DcacheBackendDaemon_fin_ack : std_logic;
  -- declarations related to module DcacheBackendResponseDaemon
  component DcacheBackendResponseDaemon is -- 
    generic (tag_length : integer); 
    port ( -- 
      MMU_to_DCACHE_response_pipe_read_req : out  std_logic_vector(0 downto 0);
      MMU_to_DCACHE_response_pipe_read_ack : in   std_logic_vector(0 downto 0);
      MMU_to_DCACHE_response_pipe_read_data : in   std_logic_vector(74 downto 0);
      noblock_dcache_backend_to_frontend_command_pipe_write_req : out  std_logic_vector(0 downto 0);
      noblock_dcache_backend_to_frontend_command_pipe_write_ack : in   std_logic_vector(0 downto 0);
      noblock_dcache_backend_to_frontend_command_pipe_write_data : out  std_logic_vector(83 downto 0);
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
  -- argument signals for module DcacheBackendResponseDaemon
  signal DcacheBackendResponseDaemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal DcacheBackendResponseDaemon_tag_out   : std_logic_vector(1 downto 0);
  signal DcacheBackendResponseDaemon_start_req : std_logic;
  signal DcacheBackendResponseDaemon_start_ack : std_logic;
  signal DcacheBackendResponseDaemon_fin_req   : std_logic;
  signal DcacheBackendResponseDaemon_fin_ack : std_logic;
  -- declarations related to module DcacheFrontendWithStallDaemon
  -- argument signals for module DcacheFrontendWithStallDaemon
  signal DcacheFrontendWithStallDaemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal DcacheFrontendWithStallDaemon_tag_out   : std_logic_vector(1 downto 0);
  signal DcacheFrontendWithStallDaemon_start_req : std_logic;
  signal DcacheFrontendWithStallDaemon_start_ack : std_logic;
  signal DcacheFrontendWithStallDaemon_fin_req   : std_logic;
  signal DcacheFrontendWithStallDaemon_fin_ack : std_logic;
  -- declarations related to module accessDcacheArray
  -- declarations related to module accessDcacheTags
  -- declarations related to module accessPermissionsAreOk
  -- declarations related to module calculate_bypass_to_iu_fu
  -- declarations related to module calculate_tag_and_array_commands
  -- declarations related to module constructAccessLineRequest
  -- declarations related to module dcacheBlockAlign
  -- declarations related to module dcacheBlockId
  -- declarations related to module dcacheInsertBytes
  -- declarations related to module dcacheNeedsToBeFlushed
  -- declarations related to module dcacheOffsetInBlock
  -- declarations related to module identify_cpu_actions
  -- declarations related to module isDcacheAccessToMemAsi
  -- declarations related to module isDcacheFlushAsi
  -- declarations related to module isMmuAccessAsi
  -- declarations related to module isSupervisorAsi
  -- declarations related to module merge_and_decode_from_cpu
  -- declarations related to module parse_from_backend
  -- declarations related to module parse_from_frontend
  -- aggregate signals for write to pipe DCACHE_to_CPU_reset_ack
  signal DCACHE_to_CPU_reset_ack_pipe_write_data: std_logic_vector(0 downto 0);
  signal DCACHE_to_CPU_reset_ack_pipe_write_req: std_logic_vector(0 downto 0);
  signal DCACHE_to_CPU_reset_ack_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe DCACHE_to_CPU_response
  signal DCACHE_to_CPU_response_pipe_write_data: std_logic_vector(71 downto 0);
  signal DCACHE_to_CPU_response_pipe_write_req: std_logic_vector(0 downto 0);
  signal DCACHE_to_CPU_response_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe DCACHE_to_CPU_slow_response
  signal DCACHE_to_CPU_slow_response_pipe_write_data: std_logic_vector(71 downto 0);
  signal DCACHE_to_CPU_slow_response_pipe_write_req: std_logic_vector(0 downto 0);
  signal DCACHE_to_CPU_slow_response_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe DCACHE_to_MMU_request
  signal DCACHE_to_MMU_request_pipe_write_data: std_logic_vector(119 downto 0);
  signal DCACHE_to_MMU_request_pipe_write_req: std_logic_vector(0 downto 0);
  signal DCACHE_to_MMU_request_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE
  signal MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_data: std_logic_vector(26 downto 0);
  signal MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_req: std_logic_vector(0 downto 0);
  signal MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe MMU_to_DCACHE_response
  signal MMU_to_DCACHE_response_pipe_read_data: std_logic_vector(74 downto 0);
  signal MMU_to_DCACHE_response_pipe_read_req: std_logic_vector(0 downto 0);
  signal MMU_to_DCACHE_response_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe NOBLOCK_CPU_to_DCACHE_command
  signal NOBLOCK_CPU_to_DCACHE_command_pipe_read_data: std_logic_vector(142 downto 0);
  signal NOBLOCK_CPU_to_DCACHE_command_pipe_read_req: std_logic_vector(0 downto 0);
  signal NOBLOCK_CPU_to_DCACHE_command_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe NOBLOCK_CPU_to_DCACHE_reset
  signal NOBLOCK_CPU_to_DCACHE_reset_pipe_read_data: std_logic_vector(0 downto 0);
  signal NOBLOCK_CPU_to_DCACHE_reset_pipe_read_req: std_logic_vector(0 downto 0);
  signal NOBLOCK_CPU_to_DCACHE_reset_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe NOBLOCK_CPU_to_DCACHE_slow_command
  signal NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_data: std_logic_vector(120 downto 0);
  signal NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_req: std_logic_vector(0 downto 0);
  signal NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe NOBLOCK_DCACHE_TO_CPU_FU_BYPASS
  signal NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_data: std_logic_vector(92 downto 0);
  signal NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_req: std_logic_vector(0 downto 0);
  signal NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe NOBLOCK_DCACHE_TO_CPU_IU_BYPASS
  signal NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_data: std_logic_vector(92 downto 0);
  signal NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_req: std_logic_vector(0 downto 0);
  signal NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe NOBLOCK_INVALIDATE_SLOT_RETURN
  signal NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_read_data: std_logic_vector(0 downto 0);
  signal NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_read_req: std_logic_vector(0 downto 0);
  signal NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE
  signal NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_data: std_logic_vector(26 downto 0);
  signal NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_req: std_logic_vector(0 downto 0);
  signal NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe dcache_frontend_to_backend
  signal dcache_frontend_to_backend_pipe_write_data: std_logic_vector(119 downto 0);
  signal dcache_frontend_to_backend_pipe_write_req: std_logic_vector(0 downto 0);
  signal dcache_frontend_to_backend_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe dcache_frontend_to_backend
  signal dcache_frontend_to_backend_pipe_read_data: std_logic_vector(119 downto 0);
  signal dcache_frontend_to_backend_pipe_read_req: std_logic_vector(0 downto 0);
  signal dcache_frontend_to_backend_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe noblock_dcache_backend_to_frontend_command
  signal noblock_dcache_backend_to_frontend_command_pipe_write_data: std_logic_vector(83 downto 0);
  signal noblock_dcache_backend_to_frontend_command_pipe_write_req: std_logic_vector(0 downto 0);
  signal noblock_dcache_backend_to_frontend_command_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe noblock_dcache_backend_to_frontend_command
  signal noblock_dcache_backend_to_frontend_command_pipe_read_data: std_logic_vector(83 downto 0);
  signal noblock_dcache_backend_to_frontend_command_pipe_read_req: std_logic_vector(0 downto 0);
  signal noblock_dcache_backend_to_frontend_command_pipe_read_ack: std_logic_vector(0 downto 0);
  -- gated clock signal declarations.
  -- 
begin -- 
  -- module DcacheBackendDaemon
  DcacheBackendDaemon_instance:DcacheBackendDaemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => DcacheBackendDaemon_start_req,
      start_ack => DcacheBackendDaemon_start_ack,
      fin_req => DcacheBackendDaemon_fin_req,
      fin_ack => DcacheBackendDaemon_fin_ack,
      clk => clk,
      reset => reset,
      dcache_frontend_to_backend_pipe_read_req => dcache_frontend_to_backend_pipe_read_req(0 downto 0),
      dcache_frontend_to_backend_pipe_read_ack => dcache_frontend_to_backend_pipe_read_ack(0 downto 0),
      dcache_frontend_to_backend_pipe_read_data => dcache_frontend_to_backend_pipe_read_data(119 downto 0),
      DCACHE_to_MMU_request_pipe_write_req => DCACHE_to_MMU_request_pipe_write_req(0 downto 0),
      DCACHE_to_MMU_request_pipe_write_ack => DCACHE_to_MMU_request_pipe_write_ack(0 downto 0),
      DCACHE_to_MMU_request_pipe_write_data => DCACHE_to_MMU_request_pipe_write_data(119 downto 0),
      tag_in => DcacheBackendDaemon_tag_in,
      tag_out => DcacheBackendDaemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  DcacheBackendDaemon_tag_in <= (others => '0');
  DcacheBackendDaemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => DcacheBackendDaemon_start_req, start_ack => DcacheBackendDaemon_start_ack,  fin_req => DcacheBackendDaemon_fin_req,  fin_ack => DcacheBackendDaemon_fin_ack);
  -- module DcacheBackendResponseDaemon
  DcacheBackendResponseDaemon_instance:DcacheBackendResponseDaemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => DcacheBackendResponseDaemon_start_req,
      start_ack => DcacheBackendResponseDaemon_start_ack,
      fin_req => DcacheBackendResponseDaemon_fin_req,
      fin_ack => DcacheBackendResponseDaemon_fin_ack,
      clk => clk,
      reset => reset,
      MMU_to_DCACHE_response_pipe_read_req => MMU_to_DCACHE_response_pipe_read_req(0 downto 0),
      MMU_to_DCACHE_response_pipe_read_ack => MMU_to_DCACHE_response_pipe_read_ack(0 downto 0),
      MMU_to_DCACHE_response_pipe_read_data => MMU_to_DCACHE_response_pipe_read_data(74 downto 0),
      noblock_dcache_backend_to_frontend_command_pipe_write_req => noblock_dcache_backend_to_frontend_command_pipe_write_req(0 downto 0),
      noblock_dcache_backend_to_frontend_command_pipe_write_ack => noblock_dcache_backend_to_frontend_command_pipe_write_ack(0 downto 0),
      noblock_dcache_backend_to_frontend_command_pipe_write_data => noblock_dcache_backend_to_frontend_command_pipe_write_data(83 downto 0),
      tag_in => DcacheBackendResponseDaemon_tag_in,
      tag_out => DcacheBackendResponseDaemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  DcacheBackendResponseDaemon_tag_in <= (others => '0');
  DcacheBackendResponseDaemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => DcacheBackendResponseDaemon_start_req, start_ack => DcacheBackendResponseDaemon_start_ack,  fin_req => DcacheBackendResponseDaemon_fin_req,  fin_ack => DcacheBackendResponseDaemon_fin_ack);
  -- module DcacheFrontendWithStallDaemon
  DcacheFrontendWithStallDaemon_instance:DcacheFrontendWithStallDaemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => DcacheFrontendWithStallDaemon_start_req,
      start_ack => DcacheFrontendWithStallDaemon_start_ack,
      fin_req => DcacheFrontendWithStallDaemon_fin_req,
      fin_ack => DcacheFrontendWithStallDaemon_fin_ack,
      clk => clk,
      reset => reset,
      CACHE_STALL_ENABLE => CACHE_STALL_ENABLE,
      MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_req => MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_req(0 downto 0),
      MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_ack => MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_ack(0 downto 0),
      MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_data => MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_data(26 downto 0),
      NOBLOCK_CPU_to_DCACHE_command_pipe_read_req => NOBLOCK_CPU_to_DCACHE_command_pipe_read_req(0 downto 0),
      NOBLOCK_CPU_to_DCACHE_command_pipe_read_ack => NOBLOCK_CPU_to_DCACHE_command_pipe_read_ack(0 downto 0),
      NOBLOCK_CPU_to_DCACHE_command_pipe_read_data => NOBLOCK_CPU_to_DCACHE_command_pipe_read_data(142 downto 0),
      NOBLOCK_CPU_to_DCACHE_reset_pipe_read_req => NOBLOCK_CPU_to_DCACHE_reset_pipe_read_req(0 downto 0),
      NOBLOCK_CPU_to_DCACHE_reset_pipe_read_ack => NOBLOCK_CPU_to_DCACHE_reset_pipe_read_ack(0 downto 0),
      NOBLOCK_CPU_to_DCACHE_reset_pipe_read_data => NOBLOCK_CPU_to_DCACHE_reset_pipe_read_data(0 downto 0),
      NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_req => NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_req(0 downto 0),
      NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_ack => NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_ack(0 downto 0),
      NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_data => NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_data(120 downto 0),
      NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_read_req => NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_read_req(0 downto 0),
      NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_read_ack => NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_read_ack(0 downto 0),
      NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_read_data => NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_read_data(0 downto 0),
      NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_req => NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_req(0 downto 0),
      NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_ack => NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_ack(0 downto 0),
      NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_data => NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_data(26 downto 0),
      noblock_dcache_backend_to_frontend_command_pipe_read_req => noblock_dcache_backend_to_frontend_command_pipe_read_req(0 downto 0),
      noblock_dcache_backend_to_frontend_command_pipe_read_ack => noblock_dcache_backend_to_frontend_command_pipe_read_ack(0 downto 0),
      noblock_dcache_backend_to_frontend_command_pipe_read_data => noblock_dcache_backend_to_frontend_command_pipe_read_data(83 downto 0),
      DCACHE_to_CPU_reset_ack_pipe_write_req => DCACHE_to_CPU_reset_ack_pipe_write_req(0 downto 0),
      DCACHE_to_CPU_reset_ack_pipe_write_ack => DCACHE_to_CPU_reset_ack_pipe_write_ack(0 downto 0),
      DCACHE_to_CPU_reset_ack_pipe_write_data => DCACHE_to_CPU_reset_ack_pipe_write_data(0 downto 0),
      DCACHE_to_CPU_response_pipe_write_req => DCACHE_to_CPU_response_pipe_write_req(0 downto 0),
      DCACHE_to_CPU_response_pipe_write_ack => DCACHE_to_CPU_response_pipe_write_ack(0 downto 0),
      DCACHE_to_CPU_response_pipe_write_data => DCACHE_to_CPU_response_pipe_write_data(71 downto 0),
      DCACHE_to_CPU_slow_response_pipe_write_req => DCACHE_to_CPU_slow_response_pipe_write_req(0 downto 0),
      DCACHE_to_CPU_slow_response_pipe_write_ack => DCACHE_to_CPU_slow_response_pipe_write_ack(0 downto 0),
      DCACHE_to_CPU_slow_response_pipe_write_data => DCACHE_to_CPU_slow_response_pipe_write_data(71 downto 0),
      NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_req => NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_req(0 downto 0),
      NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_ack => NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_ack(0 downto 0),
      NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_data => NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_data(92 downto 0),
      NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_req => NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_req(0 downto 0),
      NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_ack => NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_ack(0 downto 0),
      NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_data => NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_data(92 downto 0),
      dcache_frontend_to_backend_pipe_write_req => dcache_frontend_to_backend_pipe_write_req(0 downto 0),
      dcache_frontend_to_backend_pipe_write_ack => dcache_frontend_to_backend_pipe_write_ack(0 downto 0),
      dcache_frontend_to_backend_pipe_write_data => dcache_frontend_to_backend_pipe_write_data(119 downto 0),
      tag_in => DcacheFrontendWithStallDaemon_tag_in,
      tag_out => DcacheFrontendWithStallDaemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  DcacheFrontendWithStallDaemon_tag_in <= (others => '0');
  DcacheFrontendWithStallDaemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => DcacheFrontendWithStallDaemon_start_req, start_ack => DcacheFrontendWithStallDaemon_start_ack,  fin_req => DcacheFrontendWithStallDaemon_fin_req,  fin_ack => DcacheFrontendWithStallDaemon_fin_ack);
  -- input signal-pipe CACHE_STALL_ENABLE accessed directly. 
  DCACHE_to_CPU_reset_ack_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe DCACHE_to_CPU_reset_ack",
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
      read_req => DCACHE_to_CPU_reset_ack_pipe_read_req,
      read_ack => DCACHE_to_CPU_reset_ack_pipe_read_ack,
      read_data => DCACHE_to_CPU_reset_ack_pipe_read_data,
      write_req => DCACHE_to_CPU_reset_ack_pipe_write_req,
      write_ack => DCACHE_to_CPU_reset_ack_pipe_write_ack,
      write_data => DCACHE_to_CPU_reset_ack_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  DCACHE_to_CPU_response_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe DCACHE_to_CPU_response",
      num_reads => 1,
      num_writes => 1,
      data_width => 72,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => true,
      depth => 0 --
    )
    port map( -- 
      read_req => DCACHE_to_CPU_response_pipe_read_req,
      read_ack => DCACHE_to_CPU_response_pipe_read_ack,
      read_data => DCACHE_to_CPU_response_pipe_read_data,
      write_req => DCACHE_to_CPU_response_pipe_write_req,
      write_ack => DCACHE_to_CPU_response_pipe_write_ack,
      write_data => DCACHE_to_CPU_response_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  DCACHE_to_CPU_slow_response_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe DCACHE_to_CPU_slow_response",
      num_reads => 1,
      num_writes => 1,
      data_width => 72,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => DCACHE_to_CPU_slow_response_pipe_read_req,
      read_ack => DCACHE_to_CPU_slow_response_pipe_read_ack,
      read_data => DCACHE_to_CPU_slow_response_pipe_read_data,
      write_req => DCACHE_to_CPU_slow_response_pipe_write_req,
      write_ack => DCACHE_to_CPU_slow_response_pipe_write_ack,
      write_data => DCACHE_to_CPU_slow_response_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
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
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  NOBLOCK_CPU_to_DCACHE_command_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe NOBLOCK_CPU_to_DCACHE_command",
      num_reads => 1,
      num_writes => 1,
      data_width => 143,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => true,
      depth => 0 --
    )
    port map( -- 
      read_req => NOBLOCK_CPU_to_DCACHE_command_pipe_read_req,
      read_ack => NOBLOCK_CPU_to_DCACHE_command_pipe_read_ack,
      read_data => NOBLOCK_CPU_to_DCACHE_command_pipe_read_data,
      write_req => NOBLOCK_CPU_to_DCACHE_command_pipe_write_req,
      write_ack => NOBLOCK_CPU_to_DCACHE_command_pipe_write_ack,
      write_data => NOBLOCK_CPU_to_DCACHE_command_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  NOBLOCK_CPU_to_DCACHE_reset_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe NOBLOCK_CPU_to_DCACHE_reset",
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
      read_req => NOBLOCK_CPU_to_DCACHE_reset_pipe_read_req,
      read_ack => NOBLOCK_CPU_to_DCACHE_reset_pipe_read_ack,
      read_data => NOBLOCK_CPU_to_DCACHE_reset_pipe_read_data,
      write_req => NOBLOCK_CPU_to_DCACHE_reset_pipe_write_req,
      write_ack => NOBLOCK_CPU_to_DCACHE_reset_pipe_write_ack,
      write_data => NOBLOCK_CPU_to_DCACHE_reset_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  NOBLOCK_CPU_to_DCACHE_slow_command_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe NOBLOCK_CPU_to_DCACHE_slow_command",
      num_reads => 1,
      num_writes => 1,
      data_width => 121,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_req,
      read_ack => NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_ack,
      read_data => NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_data,
      write_req => NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_req,
      write_ack => NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_ack,
      write_data => NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe NOBLOCK_DCACHE_TO_CPU_FU_BYPASS",
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
      read_req => NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_req,
      read_ack => NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_ack,
      read_data => NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_data,
      write_req => NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_req,
      write_ack => NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_ack,
      write_data => NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe NOBLOCK_DCACHE_TO_CPU_IU_BYPASS",
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
      read_req => NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_req,
      read_ack => NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_ack,
      read_data => NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_data,
      write_req => NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_req,
      write_ack => NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_ack,
      write_data => NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_data,
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
  dcache_frontend_to_backend_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe dcache_frontend_to_backend",
      num_reads => 1,
      num_writes => 1,
      data_width => 120,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => true,
      depth => 0 --
    )
    port map( -- 
      read_req => dcache_frontend_to_backend_pipe_read_req,
      read_ack => dcache_frontend_to_backend_pipe_read_ack,
      read_data => dcache_frontend_to_backend_pipe_read_data,
      write_req => dcache_frontend_to_backend_pipe_write_req,
      write_ack => dcache_frontend_to_backend_pipe_write_ack,
      write_data => dcache_frontend_to_backend_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  noblock_dcache_backend_to_frontend_command_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe noblock_dcache_backend_to_frontend_command",
      num_reads => 1,
      num_writes => 1,
      data_width => 84,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => true,
      depth => 2 --
    )
    port map( -- 
      read_req => noblock_dcache_backend_to_frontend_command_pipe_read_req,
      read_ack => noblock_dcache_backend_to_frontend_command_pipe_read_ack,
      read_data => noblock_dcache_backend_to_frontend_command_pipe_read_data,
      write_req => noblock_dcache_backend_to_frontend_command_pipe_write_req,
      write_ack => noblock_dcache_backend_to_frontend_command_pipe_write_ack,
      write_data => noblock_dcache_backend_to_frontend_command_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- gated clock generators 
  -- 
end dcache_arch;
