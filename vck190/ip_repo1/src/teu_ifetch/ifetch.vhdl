-- VHDL global package produced by vc2vhdl from virtual circuit (vc) description 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
package ifetch_global_package is -- 
  constant ACCESS_ASR : std_logic_vector(2 downto 0) := "101";
  constant ACCESS_PSR : std_logic_vector(2 downto 0) := "001";
  constant ACCESS_REG : std_logic_vector(2 downto 0) := "110";
  constant ACCESS_TBR : std_logic_vector(2 downto 0) := "010";
  constant ACCESS_WIM : std_logic_vector(2 downto 0) := "011";
  constant ACCESS_Y : std_logic_vector(2 downto 0) := "100";
  constant ALU_INSTR : std_logic_vector(2 downto 0) := "010";
  constant ANNUL_TRAP_BIT_VEC : std_logic_vector(31 downto 0) := "00000000000000000000000000001000";
  constant ANNUL_TRAP_INDEX : std_logic_vector(31 downto 0) := "00000000000000000000000000000011";
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
  constant BLOCK_FOR_NEW_SUBSTREAM : std_logic_vector(0 downto 0) := "1";
  constant BLOCK_READ : std_logic_vector(0 downto 0) := "1";
  constant CACHE_ARRAY_NOP : std_logic_vector(2 downto 0) := "011";
  constant CACHE_ARRAY_PASS_THROUGH : std_logic_vector(2 downto 0) := "100";
  constant CACHE_ARRAY_READ_DWORD : std_logic_vector(2 downto 0) := "001";
  constant CACHE_ARRAY_WRITE_DWORD : std_logic_vector(2 downto 0) := "010";
  constant CACHE_TAG_CLEAR_ALL : std_logic_vector(2 downto 0) := "100";
  constant CACHE_TAG_CLEAR_LINE : std_logic_vector(2 downto 0) := "011";
  constant CACHE_TAG_INSERT : std_logic_vector(2 downto 0) := "010";
  constant CACHE_TAG_LOOKUP : std_logic_vector(2 downto 0) := "001";
  constant CACHE_TAG_NOP : std_logic_vector(2 downto 0) := "101";
  constant CCU_DBG_BP_HIT : std_logic_vector(7 downto 0) := "00000010";
  constant CCU_DBG_CONNECT_RQST : std_logic_vector(7 downto 0) := "00000001";
  constant CCU_DBG_ERROR : std_logic_vector(7 downto 0) := "00000111";
  constant CCU_DBG_ERROR_MODE : std_logic_vector(7 downto 0) := "00000110";
  constant CCU_DBG_OK : std_logic_vector(7 downto 0) := "00001000";
  constant CCU_DBG_READ_RESPONSE : std_logic_vector(7 downto 0) := "00001001";
  constant CCU_DBG_READ_WP_HIT : std_logic_vector(7 downto 0) := "00000011";
  constant CCU_DBG_THREAD_FINISH : std_logic_vector(7 downto 0) := "00000101";
  constant CCU_DBG_WRITE_WP_HIT : std_logic_vector(7 downto 0) := "00000100";
  constant CCU_TEU_CLEAR_BP : std_logic_vector(2 downto 0) := "010";
  constant CCU_TEU_CLEAR_WP : std_logic_vector(2 downto 0) := "100";
  constant CCU_TEU_INTR : std_logic_vector(2 downto 0) := "101";
  constant CCU_TEU_SET_BP : std_logic_vector(2 downto 0) := "001";
  constant CCU_TEU_SET_WP : std_logic_vector(2 downto 0) := "011";
  constant CONTROL_TRANSFER_INSTR : std_logic_vector(2 downto 0) := "011";
  constant CP_DISABLED_TRAP_BIT_VEC : std_logic_vector(31 downto 0) := "00000000000000000010000000000000";
  constant CP_DISABLED_TRAP_INDEX : std_logic_vector(31 downto 0) := "00000000000000000000000000001100";
  constant CP_EXCEPTION_TRAP_BIT_VEC : std_logic_vector(31 downto 0) := "00000000000010000000000000000000";
  constant CP_EXCEPTION_TRAP_INDEX : std_logic_vector(31 downto 0) := "00000000000000000000000000010010";
  constant CP_INSTR : std_logic_vector(2 downto 0) := "110";
  constant DATA_ACCESS_ERROR_TRAP_BIT_VEC : std_logic_vector(31 downto 0) := "00000000000100000000000000000000";
  constant DATA_ACCESS_ERROR_TRAP_INDEX : std_logic_vector(31 downto 0) := "00000000000000000000000000010011";
  constant DATA_ACCESS_EXCEPTION_TRAP_BIT_VEC : std_logic_vector(31 downto 0) := "00000000001000000000000000000000";
  constant DATA_ACCESS_EXCEPTION_TRAP_INDEX : std_logic_vector(31 downto 0) := "00000000000000000000000000010100";
  constant DATA_STORE_ERROR_TRAP_BIT_VEC : std_logic_vector(31 downto 0) := "00000000000000000000000000100000";
  constant DATA_STORE_ERROR_TRAP_INDEX : std_logic_vector(31 downto 0) := "00000000000000000000000000000101";
  constant DATA_TRANSFER_INSTR : std_logic_vector(2 downto 0) := "001";
  constant DEBUG_MODE_MASK : std_logic_vector(7 downto 0) := "00000010";
  constant DIVISION_BY_ZERO_TRAP_BIT_VEC : std_logic_vector(31 downto 0) := "00000000100000000000000000000000";
  constant DIVISION_BY_ZERO_TRAP_INDEX : std_logic_vector(31 downto 0) := "00000000000000000000000000010110";
  constant EXCEPTION_FOUND : std_logic_vector(7 downto 0) := "00000010";
  constant FOUR_3 : std_logic_vector(2 downto 0) := "100";
  constant FP_DISABLED_TRAP_BIT_VEC : std_logic_vector(31 downto 0) := "00000000000000000001000000000000";
  constant FP_DISABLED_TRAP_INDEX : std_logic_vector(31 downto 0) := "00000000000000000000000000001011";
  constant FP_EXCEPTION_TRAP_BIT_VEC : std_logic_vector(31 downto 0) := "00000000000001000000000000000000";
  constant FP_EXCEPTION_TRAP_INDEX : std_logic_vector(31 downto 0) := "00000000000000000000000000010001";
  constant FP_INSTR : std_logic_vector(2 downto 0) := "101";
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
  constant HARDWARE_ERROR_TRAP_BIT_VEC : std_logic_vector(7 downto 0) := "00100000";
  constant HARDWARE_ERROR_TRAP_INDEX : std_logic_vector(7 downto 0) := "00000101";
  constant HARD_RESET_MASK : std_logic_vector(7 downto 0) := "00000001";
  constant IEEE_754_EXCEPTION_TRAP_BIT_VEC : std_logic_vector(7 downto 0) := "00000010";
  constant IEEE_754_EXCEPTION_TRAP_INDEX : std_logic_vector(7 downto 0) := "00000001";
  constant ILLEGAL_INSTR : std_logic_vector(2 downto 0) := "111";
  constant ILLEGAL_INSTRUCTION_TRAP_BIT_VEC : std_logic_vector(31 downto 0) := "00000000000000000000010000000000";
  constant ILLEGAL_INSTRUCTION_TRAP_INDEX : std_logic_vector(31 downto 0) := "00000000000000000000000000001001";
  constant ILLEGAL_IU_INSTRUCTION_TRAP_BIT_VEC : std_logic_vector(31 downto 0) := "00000000000000000000100000000000";
  constant ILLEGAL_IU_INSTRUCTION_TRAP_INDEX : std_logic_vector(31 downto 0) := "00000000000000000000000000001010";
  constant INIT_ASR_AND_WINDOW_REGS : std_logic_vector(2 downto 0) := "111";
  constant INSTRUCTION_ACCESS_ERROR_TRAP_BIT_VEC : std_logic_vector(31 downto 0) := "00000000000000000000000010000000";
  constant INSTRUCTION_ACCESS_ERROR_TRAP_INDEX : std_logic_vector(31 downto 0) := "00000000000000000000000000000110";
  constant INSTRUCTION_ACCESS_EXCEPTION_TRAP_BIT_VEC : std_logic_vector(31 downto 0) := "00000000000000000000000000010000";
  constant INSTRUCTION_ACCESS_EXCEPTION_TRAP_INDEX : std_logic_vector(31 downto 0) := "00000000000000000000000000000100";
  constant INTERRUPT_FOUND : std_logic_vector(7 downto 0) := "00000001";
  constant INVALID_FP_REGISTER_TRAP_BIT_VEC : std_logic_vector(7 downto 0) := "01000000";
  constant INVALID_FP_REGISTER_TRAP_INDEX : std_logic_vector(7 downto 0) := "00000110";
  constant KILL_STREAM_MASK : std_logic_vector(7 downto 0) := "10000000";
  constant KILL_THREAD_MASK : std_logic_vector(7 downto 0) := "10000000";
  constant LOGGER_ACTIVE_MASK : std_logic_vector(7 downto 0) := "00001000";
  constant MACHINE_ERROR : std_logic_vector(7 downto 0) := "00000011";
  constant MAE_TRAP_BIT_VEC : std_logic_vector(31 downto 0) := "00000000000000000000000000000100";
  constant MAE_TRAP_INDEX : std_logic_vector(31 downto 0) := "00000000000000000000000000000010";
  constant MEM_ADDRESS_NOT_ALIGNED_TRAP_BIT_VEC : std_logic_vector(31 downto 0) := "00000000000000100000000000000000";
  constant MEM_ADDRESS_NOT_ALIGNED_TRAP_INDEX : std_logic_vector(31 downto 0) := "00000000000000000000000000010000";
  constant MISC_INSTR : std_logic_vector(2 downto 0) := "100";
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
  constant NONE_TRAP_BIT_VEC : std_logic_vector(7 downto 0) := "00000001";
  constant NONE_TRAP_INDEX : std_logic_vector(7 downto 0) := "00000000";
  constant NOP_INSTRUCTION : std_logic_vector(31 downto 0) := "00000001000000000000000000000000";
  constant NORMAL_ISSUE : std_logic_vector(0 downto 0) := "0";
  constant NO_BLOCK_READ : std_logic_vector(0 downto 0) := "0";
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
  constant PRIVILEGED_INSTRUCTION_TRAP_BIT_VEC : std_logic_vector(31 downto 0) := "00000000000000000000001000000000";
  constant PRIVILEGED_INSTRUCTION_TRAP_INDEX : std_logic_vector(31 downto 0) := "00000000000000000000000000001000";
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
  constant RESERVED_TRAP_BIT_VEC : std_logic_vector(7 downto 0) := "10000000";
  constant RESERVED_TRAP_INDEX : std_logic_vector(7 downto 0) := "00000111";
  constant RESET_TRAP_TRAP_BIT_VEC : std_logic_vector(31 downto 0) := "00000000000000000000000000000010";
  constant RESET_TRAP_TRAP_INDEX : std_logic_vector(31 downto 0) := "00000000000000000000000000000001";
  constant R_REGISTER_ACCESS_ERROR_TRAP_BIT_VEC : std_logic_vector(31 downto 0) := "00000000000000000000000100000000";
  constant R_REGISTER_ACCESS_ERROR_TRAP_INDEX : std_logic_vector(31 downto 0) := "00000000000000000000000000000111";
  constant SEQUENCE_ERROR_TRAP_BIT_VEC : std_logic_vector(7 downto 0) := "00010000";
  constant SEQUENCE_ERROR_TRAP_INDEX : std_logic_vector(7 downto 0) := "00000100";
  constant SINGLE_STEP_MASK : std_logic_vector(7 downto 0) := "00000100";
  constant S_DONE : std_logic_vector(0 downto 0) := "1";
  constant S_IDLE : std_logic_vector(0 downto 0) := "0";
  constant TAG_OVERFLOW_TRAP_BIT_VEC : std_logic_vector(31 downto 0) := "00000000010000000000000000000000";
  constant TAG_OVERFLOW_TRAP_INDEX : std_logic_vector(31 downto 0) := "00000000000000000000000000010101";
  constant TEU_ANNUL_NEXT_INDEX : std_logic_vector(7 downto 0) := "00000110";
  constant TEU_DBG_BREAK_POINT_INDEX : std_logic_vector(7 downto 0) := "00000011";
  constant TEU_DBG_WATCH_POINT_INDEX : std_logic_vector(7 downto 0) := "00000100";
  constant TEU_EXCEPTION_INDEX : std_logic_vector(7 downto 0) := "00000010";
  constant TEU_FETCH_IS_SPINNING : std_logic_vector(7 downto 0) := "00000111";
  constant TEU_INTERRUPT_INDEX : std_logic_vector(7 downto 0) := "00000001";
  constant TEU_MACHINE_ERROR_INDEX : std_logic_vector(7 downto 0) := "00000000";
  constant TEU_SINGLE_STEP_INDEX : std_logic_vector(7 downto 0) := "00000101";
  constant THREE_2 : std_logic_vector(1 downto 0) := "11";
  constant THREE_3 : std_logic_vector(2 downto 0) := "011";
  constant TOKEN_POOL_SIZE : std_logic_vector(7 downto 0) := "01000000";
  constant TRACE_ON : std_logic_vector(0 downto 0) := "1";
  constant TRAP_INSTRUCTION_TRAP_BIT_VEC : std_logic_vector(31 downto 0) := "00000001000000000000000000000000";
  constant TRAP_INSTRUCTION_TRAP_INDEX : std_logic_vector(31 downto 0) := "00000000000000000000000000010111";
  constant TRAP_TRAP_BIT_VEC : std_logic_vector(31 downto 0) := "00000000000000000000000000000001";
  constant TRAP_TRAP_INDEX : std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
  constant TT_MASK : std_logic_vector(31 downto 0) := "11111111111111111111000000001111";
  constant TWO_2 : std_logic_vector(1 downto 0) := "10";
  constant TWO_3 : std_logic_vector(2 downto 0) := "010";
  constant UNFINISHED_FPOP_TRAP_BIT_VEC : std_logic_vector(7 downto 0) := "00000100";
  constant UNFINISHED_FPOP_TRAP_INDEX : std_logic_vector(7 downto 0) := "00000010";
  constant UNIMPLEMENTED_FLUSH_TRAP_BIT_VEC : std_logic_vector(31 downto 0) := "00000000000000000100000000000000";
  constant UNIMPLEMENTED_FLUSH_TRAP_INDEX : std_logic_vector(31 downto 0) := "00000000000000000000000000001101";
  constant UNIMPLEMENTED_FPOP_TRAP_BIT_VEC : std_logic_vector(7 downto 0) := "00001000";
  constant UNIMPLEMENTED_FPOP_TRAP_INDEX : std_logic_vector(7 downto 0) := "00000011";
  constant U_IDLE : std_logic_vector(1 downto 0) := "00";
  constant U_S1 : std_logic_vector(1 downto 0) := "01";
  constant U_S2 : std_logic_vector(1 downto 0) := "10";
  constant WIM_MASK : std_logic_vector(31 downto 0) := "00000000000000000000000011111111";
  constant WINDOW_OVERFLOW_TRAP_BIT_VEC : std_logic_vector(31 downto 0) := "00000000000000001000000000000000";
  constant WINDOW_OVERFLOW_TRAP_INDEX : std_logic_vector(31 downto 0) := "00000000000000000000000000001110";
  constant WINDOW_UNDERFLOW_TRAP_BIT_VEC : std_logic_vector(31 downto 0) := "00000000000000010000000000000000";
  constant WINDOW_UNDERFLOW_TRAP_INDEX : std_logic_vector(31 downto 0) := "00000000000000000000000000001111";
  constant Z262 : std_logic_vector(261 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  constant Z65 : std_logic_vector(64 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000";
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
  component ifetch is -- 
    port (-- 
      clk : in std_logic;
      reset : in std_logic;
      ENV_to_CPU_irl: in std_logic_vector(7 downto 0);
      ICACHE_to_CPU_response_pipe_write_data: in std_logic_vector(89 downto 0);
      ICACHE_to_CPU_response_pipe_write_req : in std_logic_vector(0 downto 0);
      ICACHE_to_CPU_response_pipe_write_ack : out std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_ICACHE_command_pipe_read_data: out std_logic_vector(40 downto 0);
      NOBLOCK_CPU_to_ICACHE_command_pipe_read_req : in std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_ICACHE_command_pipe_read_ack : out std_logic_vector(0 downto 0);
      ccu_to_teu_pipe_write_data: in std_logic_vector(106 downto 0);
      ccu_to_teu_pipe_write_req : in std_logic_vector(0 downto 0);
      ccu_to_teu_pipe_write_ack : out std_logic_vector(0 downto 0);
      noblock_teu_idispatch_to_ifetch_pipe_write_data: in std_logic_vector(147 downto 0);
      noblock_teu_idispatch_to_ifetch_pipe_write_req : in std_logic_vector(0 downto 0);
      noblock_teu_idispatch_to_ifetch_pipe_write_ack : out std_logic_vector(0 downto 0);
      noblock_teu_ifetch_branch_predictor_update_pipe_write_data: in std_logic_vector(62 downto 0);
      noblock_teu_ifetch_branch_predictor_update_pipe_write_req : in std_logic_vector(0 downto 0);
      noblock_teu_ifetch_branch_predictor_update_pipe_write_ack : out std_logic_vector(0 downto 0);
      teu_ifetch_to_idecode_extended_pipe_read_data: out std_logic_vector(223 downto 0);
      teu_ifetch_to_idecode_extended_pipe_read_req : in std_logic_vector(0 downto 0);
      teu_ifetch_to_idecode_extended_pipe_read_ack : out std_logic_vector(0 downto 0);
      teu_ras_access_pipe_pipe_write_data: in std_logic_vector(32 downto 0);
      teu_ras_access_pipe_pipe_write_req : in std_logic_vector(0 downto 0);
      teu_ras_access_pipe_pipe_write_ack : out std_logic_vector(0 downto 0)); -- 
    -- 
  end component;
  -- 
end package ifetch_global_package;
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
library teu_ifetch;
use teu_ifetch.ifetch_global_package.all;
entity bpbV3_daemon is -- 
  generic (tag_length : integer); 
  port ( -- 
    noblock_teu_ifetch_branch_predictor_lookup_command_pipe_read_req : out  std_logic_vector(0 downto 0);
    noblock_teu_ifetch_branch_predictor_lookup_command_pipe_read_ack : in   std_logic_vector(0 downto 0);
    noblock_teu_ifetch_branch_predictor_lookup_command_pipe_read_data : in   std_logic_vector(30 downto 0);
    noblock_teu_ifetch_branch_predictor_update_pipe_read_req : out  std_logic_vector(0 downto 0);
    noblock_teu_ifetch_branch_predictor_update_pipe_read_ack : in   std_logic_vector(0 downto 0);
    noblock_teu_ifetch_branch_predictor_update_pipe_read_data : in   std_logic_vector(62 downto 0);
    random_number_2 : in std_logic_vector(1 downto 0);
    teu_ifetch_branch_predictor_lookup_response_pipe_write_req : out  std_logic_vector(0 downto 0);
    teu_ifetch_branch_predictor_lookup_response_pipe_write_ack : in   std_logic_vector(0 downto 0);
    teu_ifetch_branch_predictor_lookup_response_pipe_write_data : out  std_logic_vector(30 downto 0);
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
end entity bpbV3_daemon;
architecture bpbV3_daemon_arch of bpbV3_daemon is -- 
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
  signal bpbV3_daemon_CP_906_start: Boolean;
  signal bpbV3_daemon_CP_906_symbol: Boolean;
  -- volatile/operator module components. 
  component calculate_updated_entry_Volatile is -- 
    port ( -- 
      valid : in  std_logic_vector(0 downto 0);
      read_data_1 : in  std_logic_vector(53 downto 0);
      br_taken : in  std_logic_vector(0 downto 0);
      pc_30 : in  std_logic_vector(29 downto 0);
      nnpc_30 : in  std_logic_vector(29 downto 0);
      updated_entry : out  std_logic_vector(53 downto 0)-- 
    );
    -- 
  end component; 
  -- function library module [bpbV3_dual_port_mem] component not printed.
  component branch_predict_Volatile is -- 
    port ( -- 
      valid : in  std_logic_vector(0 downto 0);
      random_number : in  std_logic_vector(1 downto 0);
      lookup_pc_30 : in  std_logic_vector(29 downto 0);
      read_data : in  std_logic_vector(53 downto 0);
      lookup_match : out  std_logic_vector(0 downto 0);
      lookup_nnpc_30 : out  std_logic_vector(29 downto 0)-- 
    );
    -- 
  end component; 
  -- links between control-path and data-path
  signal RPIPE_noblock_teu_ifetch_branch_predictor_update_1842_inst_ack_0 : boolean;
  signal phi_stmt_1839_ack_0 : boolean;
  signal phi_stmt_1844_req_1 : boolean;
  signal RPIPE_noblock_teu_ifetch_branch_predictor_update_1842_inst_req_0 : boolean;
  signal call_bpbV3_dual_port_mem_expr_1837_inst_ack_1 : boolean;
  signal call_bpbV3_dual_port_mem_expr_1837_inst_req_1 : boolean;
  signal phi_stmt_1839_req_0 : boolean;
  signal do_while_stmt_1826_branch_req_0 : boolean;
  signal RPIPE_noblock_teu_ifetch_branch_predictor_update_1842_inst_req_1 : boolean;
  signal call_bpbV3_dual_port_mem_expr_1837_inst_ack_0 : boolean;
  signal call_bpbV3_dual_port_mem_expr_1837_inst_req_0 : boolean;
  signal phi_stmt_1828_req_0 : boolean;
  signal phi_stmt_1828_req_1 : boolean;
  signal phi_stmt_1828_ack_0 : boolean;
  signal phi_stmt_1844_req_0 : boolean;
  signal phi_stmt_1839_req_1 : boolean;
  signal RPIPE_noblock_teu_ifetch_branch_predictor_update_1842_inst_ack_1 : boolean;
  signal phi_stmt_1844_ack_0 : boolean;
  signal next_update_command_d_1932_1846_buf_req_0 : boolean;
  signal next_update_command_d_1932_1846_buf_ack_0 : boolean;
  signal next_update_command_d_1932_1846_buf_req_1 : boolean;
  signal next_update_command_d_1932_1846_buf_ack_1 : boolean;
  signal phi_stmt_1848_req_0 : boolean;
  signal phi_stmt_1848_req_1 : boolean;
  signal phi_stmt_1848_ack_0 : boolean;
  signal RPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_1850_inst_req_0 : boolean;
  signal RPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_1850_inst_ack_0 : boolean;
  signal RPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_1850_inst_req_1 : boolean;
  signal RPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_1850_inst_ack_1 : boolean;
  signal phi_stmt_1852_req_0 : boolean;
  signal phi_stmt_1852_req_1 : boolean;
  signal phi_stmt_1852_ack_0 : boolean;
  signal next_lookup_command_d_2041_1854_buf_req_0 : boolean;
  signal next_lookup_command_d_2041_1854_buf_ack_0 : boolean;
  signal next_lookup_command_d_2041_1854_buf_req_1 : boolean;
  signal next_lookup_command_d_2041_1854_buf_ack_1 : boolean;
  signal phi_stmt_1856_req_0 : boolean;
  signal phi_stmt_1856_req_1 : boolean;
  signal phi_stmt_1856_ack_0 : boolean;
  signal phi_stmt_1862_req_0 : boolean;
  signal phi_stmt_1862_req_1 : boolean;
  signal phi_stmt_1862_ack_0 : boolean;
  signal next_update_state_1976_1864_buf_req_0 : boolean;
  signal next_update_state_1976_1864_buf_ack_0 : boolean;
  signal next_update_state_1976_1864_buf_req_1 : boolean;
  signal next_update_state_1976_1864_buf_ack_1 : boolean;
  signal phi_stmt_1866_req_0 : boolean;
  signal phi_stmt_1866_req_1 : boolean;
  signal phi_stmt_1866_ack_0 : boolean;
  signal next_lookup_state_2075_1868_buf_req_0 : boolean;
  signal next_lookup_state_2075_1868_buf_ack_0 : boolean;
  signal next_lookup_state_2075_1868_buf_req_1 : boolean;
  signal next_lookup_state_2075_1868_buf_ack_1 : boolean;
  signal phi_stmt_1870_req_0 : boolean;
  signal phi_stmt_1870_req_1 : boolean;
  signal phi_stmt_1870_ack_0 : boolean;
  signal get_update_command_1985_1872_buf_req_0 : boolean;
  signal get_update_command_1985_1872_buf_ack_0 : boolean;
  signal get_update_command_1985_1872_buf_req_1 : boolean;
  signal get_update_command_1985_1872_buf_ack_1 : boolean;
  signal WPIPE_teu_ifetch_branch_predictor_lookup_response_2101_inst_req_0 : boolean;
  signal WPIPE_teu_ifetch_branch_predictor_lookup_response_2101_inst_ack_0 : boolean;
  signal WPIPE_teu_ifetch_branch_predictor_lookup_response_2101_inst_req_1 : boolean;
  signal WPIPE_teu_ifetch_branch_predictor_lookup_response_2101_inst_ack_1 : boolean;
  signal do_while_stmt_1826_branch_ack_0 : boolean;
  signal do_while_stmt_1826_branch_ack_1 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "bpbV3_daemon_input_buffer", -- 
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
  bpbV3_daemon_CP_906_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "bpbV3_daemon_out_buffer", -- 
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
    preds <= bpbV3_daemon_CP_906_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
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
    preds <= bpbV3_daemon_CP_906_start & tag_ilock_write_ack_symbol;
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
    preds <= bpbV3_daemon_CP_906_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  bpbV3_daemon_CP_906: Block -- control-path 
    signal bpbV3_daemon_CP_906_elements: BooleanArray(198 downto 0);
    -- 
  begin -- 
    bpbV3_daemon_CP_906_elements(0) <= bpbV3_daemon_CP_906_start;
    bpbV3_daemon_CP_906_symbol <= bpbV3_daemon_CP_906_elements(1);
    -- CP-element group 0:  transition  place  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	2 
    -- CP-element group 0:  members (4) 
      -- CP-element group 0: 	 branch_block_stmt_1825/do_while_stmt_1826__entry__
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 branch_block_stmt_1825/branch_block_stmt_1825__entry__
      -- CP-element group 0: 	 branch_block_stmt_1825/$entry
      -- 
    -- CP-element group 1:  transition  place  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	198 
    -- CP-element group 1: successors 
    -- CP-element group 1:  members (4) 
      -- CP-element group 1: 	 branch_block_stmt_1825/do_while_stmt_1826__exit__
      -- CP-element group 1: 	 $exit
      -- CP-element group 1: 	 branch_block_stmt_1825/branch_block_stmt_1825__exit__
      -- CP-element group 1: 	 branch_block_stmt_1825/$exit
      -- 
    bpbV3_daemon_CP_906_elements(1) <= bpbV3_daemon_CP_906_elements(198);
    -- CP-element group 2:  transition  place  bypass  pipeline-parent 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	0 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	8 
    -- CP-element group 2:  members (2) 
      -- CP-element group 2: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826__entry__
      -- CP-element group 2: 	 branch_block_stmt_1825/do_while_stmt_1826/$entry
      -- 
    bpbV3_daemon_CP_906_elements(2) <= bpbV3_daemon_CP_906_elements(0);
    -- CP-element group 3:  merge  place  bypass  pipeline-parent 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	198 
    -- CP-element group 3:  members (1) 
      -- CP-element group 3: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826__exit__
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(3) is bound as output of CP function.
    -- CP-element group 4:  merge  place  bypass  pipeline-parent 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	7 
    -- CP-element group 4:  members (1) 
      -- CP-element group 4: 	 branch_block_stmt_1825/do_while_stmt_1826/loop_back
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(4) is bound as output of CP function.
    -- CP-element group 5:  branch  transition  place  bypass  pipeline-parent 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	10 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	196 
    -- CP-element group 5: 	197 
    -- CP-element group 5:  members (3) 
      -- CP-element group 5: 	 branch_block_stmt_1825/do_while_stmt_1826/condition_done
      -- CP-element group 5: 	 branch_block_stmt_1825/do_while_stmt_1826/loop_exit/$entry
      -- CP-element group 5: 	 branch_block_stmt_1825/do_while_stmt_1826/loop_taken/$entry
      -- 
    bpbV3_daemon_CP_906_elements(5) <= bpbV3_daemon_CP_906_elements(10);
    -- CP-element group 6:  branch  place  bypass  pipeline-parent 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	195 
    -- CP-element group 6: successors 
    -- CP-element group 6:  members (1) 
      -- CP-element group 6: 	 branch_block_stmt_1825/do_while_stmt_1826/loop_body_done
      -- 
    bpbV3_daemon_CP_906_elements(6) <= bpbV3_daemon_CP_906_elements(195);
    -- CP-element group 7:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	4 
    -- CP-element group 7: successors 
    -- CP-element group 7: 	159 
    -- CP-element group 7: 	178 
    -- CP-element group 7: 	140 
    -- CP-element group 7: 	21 
    -- CP-element group 7: 	42 
    -- CP-element group 7: 	63 
    -- CP-element group 7: 	82 
    -- CP-element group 7: 	103 
    -- CP-element group 7: 	122 
    -- CP-element group 7:  members (1) 
      -- CP-element group 7: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/back_edge_to_loop_body
      -- 
    bpbV3_daemon_CP_906_elements(7) <= bpbV3_daemon_CP_906_elements(4);
    -- CP-element group 8:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	2 
    -- CP-element group 8: successors 
    -- CP-element group 8: 	142 
    -- CP-element group 8: 	124 
    -- CP-element group 8: 	161 
    -- CP-element group 8: 	180 
    -- CP-element group 8: 	23 
    -- CP-element group 8: 	44 
    -- CP-element group 8: 	65 
    -- CP-element group 8: 	84 
    -- CP-element group 8: 	105 
    -- CP-element group 8:  members (1) 
      -- CP-element group 8: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/first_time_through_loop_body
      -- 
    bpbV3_daemon_CP_906_elements(8) <= bpbV3_daemon_CP_906_elements(2);
    -- CP-element group 9:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	194 
    -- CP-element group 9: 	154 
    -- CP-element group 9: 	173 
    -- CP-element group 9: 	172 
    -- CP-element group 9: 	136 
    -- CP-element group 9: 	153 
    -- CP-element group 9: 	135 
    -- CP-element group 9: 	16 
    -- CP-element group 9: 	17 
    -- CP-element group 9: 	36 
    -- CP-element group 9: 	37 
    -- CP-element group 9: 	57 
    -- CP-element group 9: 	58 
    -- CP-element group 9: 	76 
    -- CP-element group 9: 	77 
    -- CP-element group 9: 	97 
    -- CP-element group 9: 	98 
    -- CP-element group 9: 	116 
    -- CP-element group 9: 	117 
    -- CP-element group 9:  members (2) 
      -- CP-element group 9: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/loop_body_start
      -- CP-element group 9: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/$entry
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(9) is bound as output of CP function.
    -- CP-element group 10:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	194 
    -- CP-element group 10: 	13 
    -- CP-element group 10: 	15 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	5 
    -- CP-element group 10:  members (1) 
      -- CP-element group 10: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/condition_evaluated
      -- 
    condition_evaluated_930_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " condition_evaluated_930_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => bpbV3_daemon_CP_906_elements(10), ack => do_while_stmt_1826_branch_req_0); -- 
    bpbV3_daemon_cp_element_group_10: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 32) := "bpbV3_daemon_cp_element_group_10"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= bpbV3_daemon_CP_906_elements(194) & bpbV3_daemon_CP_906_elements(13) & bpbV3_daemon_CP_906_elements(15);
      gj_bpbV3_daemon_cp_element_group_10 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(10), clk => clk, reset => reset); --
    end block;
    -- CP-element group 11:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	172 
    -- CP-element group 11: 	153 
    -- CP-element group 11: 	135 
    -- CP-element group 11: 	16 
    -- CP-element group 11: 	36 
    -- CP-element group 11: 	57 
    -- CP-element group 11: 	76 
    -- CP-element group 11: 	97 
    -- CP-element group 11: 	116 
    -- CP-element group 11: marked-predecessors 
    -- CP-element group 11: 	15 
    -- CP-element group 11: successors 
    -- CP-element group 11: 	174 
    -- CP-element group 11: 	155 
    -- CP-element group 11: 	18 
    -- CP-element group 11: 	38 
    -- CP-element group 11: 	59 
    -- CP-element group 11: 	78 
    -- CP-element group 11: 	99 
    -- CP-element group 11: 	118 
    -- CP-element group 11:  members (2) 
      -- CP-element group 11: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/aggregated_phi_sample_req
      -- CP-element group 11: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1862_sample_start__ps
      -- 
    bpbV3_daemon_cp_element_group_11: block -- 
      constant place_capacities: IntegerArray(0 to 9) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1);
      constant place_markings: IntegerArray(0 to 9)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 1);
      constant place_delays: IntegerArray(0 to 9) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0);
      constant joinName: string(1 to 32) := "bpbV3_daemon_cp_element_group_11"; 
      signal preds: BooleanArray(1 to 10); -- 
    begin -- 
      preds <= bpbV3_daemon_CP_906_elements(172) & bpbV3_daemon_CP_906_elements(153) & bpbV3_daemon_CP_906_elements(135) & bpbV3_daemon_CP_906_elements(16) & bpbV3_daemon_CP_906_elements(36) & bpbV3_daemon_CP_906_elements(57) & bpbV3_daemon_CP_906_elements(76) & bpbV3_daemon_CP_906_elements(97) & bpbV3_daemon_CP_906_elements(116) & bpbV3_daemon_CP_906_elements(15);
      gj_bpbV3_daemon_cp_element_group_11 : generic_join generic map(name => joinName, number_of_predecessors => 10, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(11), clk => clk, reset => reset); --
    end block;
    -- CP-element group 12:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	137 
    -- CP-element group 12: 	175 
    -- CP-element group 12: 	156 
    -- CP-element group 12: 	19 
    -- CP-element group 12: 	39 
    -- CP-element group 12: 	60 
    -- CP-element group 12: 	79 
    -- CP-element group 12: 	100 
    -- CP-element group 12: 	119 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	195 
    -- CP-element group 12: 	13 
    -- CP-element group 12: marked-successors 
    -- CP-element group 12: 	172 
    -- CP-element group 12: 	153 
    -- CP-element group 12: 	135 
    -- CP-element group 12: 	16 
    -- CP-element group 12: 	36 
    -- CP-element group 12: 	57 
    -- CP-element group 12: 	76 
    -- CP-element group 12: 	97 
    -- CP-element group 12: 	116 
    -- CP-element group 12:  members (10) 
      -- CP-element group 12: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1839_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1844_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/aggregated_phi_sample_ack
      -- CP-element group 12: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1828_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1848_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1852_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1856_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1862_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1866_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1870_sample_completed_
      -- 
    bpbV3_daemon_cp_element_group_12: block -- 
      constant place_capacities: IntegerArray(0 to 8) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1);
      constant place_markings: IntegerArray(0 to 8)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0);
      constant place_delays: IntegerArray(0 to 8) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0);
      constant joinName: string(1 to 32) := "bpbV3_daemon_cp_element_group_12"; 
      signal preds: BooleanArray(1 to 9); -- 
    begin -- 
      preds <= bpbV3_daemon_CP_906_elements(137) & bpbV3_daemon_CP_906_elements(175) & bpbV3_daemon_CP_906_elements(156) & bpbV3_daemon_CP_906_elements(19) & bpbV3_daemon_CP_906_elements(39) & bpbV3_daemon_CP_906_elements(60) & bpbV3_daemon_CP_906_elements(79) & bpbV3_daemon_CP_906_elements(100) & bpbV3_daemon_CP_906_elements(119);
      gj_bpbV3_daemon_cp_element_group_12 : generic_join generic map(name => joinName, number_of_predecessors => 9, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(12), clk => clk, reset => reset); --
    end block;
    -- CP-element group 13:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: 	12 
    -- CP-element group 13: successors 
    -- CP-element group 13: 	10 
    -- CP-element group 13:  members (1) 
      -- CP-element group 13: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/aggregated_phi_sample_ack_d
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(13) is a control-delay.
    cp_element_13_delay: control_delay_element  generic map(name => " 13_delay", delay_value => 1)  port map(req => bpbV3_daemon_CP_906_elements(12), ack => bpbV3_daemon_CP_906_elements(13), clk => clk, reset =>reset);
    -- CP-element group 14:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: 	154 
    -- CP-element group 14: 	173 
    -- CP-element group 14: 	136 
    -- CP-element group 14: 	17 
    -- CP-element group 14: 	37 
    -- CP-element group 14: 	58 
    -- CP-element group 14: 	77 
    -- CP-element group 14: 	98 
    -- CP-element group 14: 	117 
    -- CP-element group 14: successors 
    -- CP-element group 14: 	138 
    -- CP-element group 14: 	157 
    -- CP-element group 14: 	176 
    -- CP-element group 14: 	40 
    -- CP-element group 14: 	61 
    -- CP-element group 14: 	80 
    -- CP-element group 14: 	101 
    -- CP-element group 14: 	120 
    -- CP-element group 14:  members (2) 
      -- CP-element group 14: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1828_update_start__ps
      -- CP-element group 14: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/aggregated_phi_update_req
      -- 
    bpbV3_daemon_cp_element_group_14: block -- 
      constant place_capacities: IntegerArray(0 to 8) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1);
      constant place_markings: IntegerArray(0 to 8)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0);
      constant place_delays: IntegerArray(0 to 8) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0);
      constant joinName: string(1 to 32) := "bpbV3_daemon_cp_element_group_14"; 
      signal preds: BooleanArray(1 to 9); -- 
    begin -- 
      preds <= bpbV3_daemon_CP_906_elements(154) & bpbV3_daemon_CP_906_elements(173) & bpbV3_daemon_CP_906_elements(136) & bpbV3_daemon_CP_906_elements(17) & bpbV3_daemon_CP_906_elements(37) & bpbV3_daemon_CP_906_elements(58) & bpbV3_daemon_CP_906_elements(77) & bpbV3_daemon_CP_906_elements(98) & bpbV3_daemon_CP_906_elements(117);
      gj_bpbV3_daemon_cp_element_group_14 : generic_join generic map(name => joinName, number_of_predecessors => 9, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(14), clk => clk, reset => reset); --
    end block;
    -- CP-element group 15:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: 	158 
    -- CP-element group 15: 	139 
    -- CP-element group 15: 	177 
    -- CP-element group 15: 	20 
    -- CP-element group 15: 	41 
    -- CP-element group 15: 	62 
    -- CP-element group 15: 	81 
    -- CP-element group 15: 	102 
    -- CP-element group 15: 	121 
    -- CP-element group 15: successors 
    -- CP-element group 15: 	10 
    -- CP-element group 15: marked-successors 
    -- CP-element group 15: 	11 
    -- CP-element group 15:  members (1) 
      -- CP-element group 15: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/aggregated_phi_update_ack
      -- 
    bpbV3_daemon_cp_element_group_15: block -- 
      constant place_capacities: IntegerArray(0 to 8) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1);
      constant place_markings: IntegerArray(0 to 8)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0);
      constant place_delays: IntegerArray(0 to 8) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0);
      constant joinName: string(1 to 32) := "bpbV3_daemon_cp_element_group_15"; 
      signal preds: BooleanArray(1 to 9); -- 
    begin -- 
      preds <= bpbV3_daemon_CP_906_elements(158) & bpbV3_daemon_CP_906_elements(139) & bpbV3_daemon_CP_906_elements(177) & bpbV3_daemon_CP_906_elements(20) & bpbV3_daemon_CP_906_elements(41) & bpbV3_daemon_CP_906_elements(62) & bpbV3_daemon_CP_906_elements(81) & bpbV3_daemon_CP_906_elements(102) & bpbV3_daemon_CP_906_elements(121);
      gj_bpbV3_daemon_cp_element_group_15 : generic_join generic map(name => joinName, number_of_predecessors => 9, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(15), clk => clk, reset => reset); --
    end block;
    -- CP-element group 16:  join  transition  bypass  pipeline-parent 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: 	9 
    -- CP-element group 16: marked-predecessors 
    -- CP-element group 16: 	12 
    -- CP-element group 16: successors 
    -- CP-element group 16: 	11 
    -- CP-element group 16:  members (1) 
      -- CP-element group 16: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1828_sample_start_
      -- 
    bpbV3_daemon_cp_element_group_16: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 32) := "bpbV3_daemon_cp_element_group_16"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= bpbV3_daemon_CP_906_elements(9) & bpbV3_daemon_CP_906_elements(12);
      gj_bpbV3_daemon_cp_element_group_16 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(16), clk => clk, reset => reset); --
    end block;
    -- CP-element group 17:  join  transition  bypass  pipeline-parent 
    -- CP-element group 17: predecessors 
    -- CP-element group 17: 	9 
    -- CP-element group 17: marked-predecessors 
    -- CP-element group 17: 	192 
    -- CP-element group 17: successors 
    -- CP-element group 17: 	14 
    -- CP-element group 17:  members (1) 
      -- CP-element group 17: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1828_update_start_
      -- 
    bpbV3_daemon_cp_element_group_17: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 32) := "bpbV3_daemon_cp_element_group_17"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= bpbV3_daemon_CP_906_elements(9) & bpbV3_daemon_CP_906_elements(192);
      gj_bpbV3_daemon_cp_element_group_17 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(17), clk => clk, reset => reset); --
    end block;
    -- CP-element group 18:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 18: predecessors 
    -- CP-element group 18: 	11 
    -- CP-element group 18: successors 
    -- CP-element group 18:  members (1) 
      -- CP-element group 18: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1828_sample_start__ps
      -- 
    bpbV3_daemon_CP_906_elements(18) <= bpbV3_daemon_CP_906_elements(11);
    -- CP-element group 19:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 19: predecessors 
    -- CP-element group 19: successors 
    -- CP-element group 19: 	138 
    -- CP-element group 19: 	157 
    -- CP-element group 19: 	176 
    -- CP-element group 19: 	12 
    -- CP-element group 19: 	40 
    -- CP-element group 19: 	61 
    -- CP-element group 19: 	80 
    -- CP-element group 19: 	101 
    -- CP-element group 19: 	120 
    -- CP-element group 19:  members (1) 
      -- CP-element group 19: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1828_sample_completed__ps
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(19) is bound as output of CP function.
    -- CP-element group 20:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 20: predecessors 
    -- CP-element group 20: successors 
    -- CP-element group 20: 	191 
    -- CP-element group 20: 	15 
    -- CP-element group 20:  members (2) 
      -- CP-element group 20: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1828_update_completed__ps
      -- CP-element group 20: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1828_update_completed_
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(20) is bound as output of CP function.
    -- CP-element group 21:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 21: predecessors 
    -- CP-element group 21: 	7 
    -- CP-element group 21: successors 
    -- CP-element group 21:  members (1) 
      -- CP-element group 21: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1828_loopback_trigger
      -- 
    bpbV3_daemon_CP_906_elements(21) <= bpbV3_daemon_CP_906_elements(7);
    -- CP-element group 22:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 22: predecessors 
    -- CP-element group 22: successors 
    -- CP-element group 22:  members (2) 
      -- CP-element group 22: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1828_loopback_sample_req
      -- CP-element group 22: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1828_loopback_sample_req_ps
      -- 
    phi_stmt_1828_loopback_sample_req_946_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_1828_loopback_sample_req_946_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => bpbV3_daemon_CP_906_elements(22), ack => phi_stmt_1828_req_0); -- 
    -- Element group bpbV3_daemon_CP_906_elements(22) is bound as output of CP function.
    -- CP-element group 23:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 23: predecessors 
    -- CP-element group 23: 	8 
    -- CP-element group 23: successors 
    -- CP-element group 23:  members (1) 
      -- CP-element group 23: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1828_entry_trigger
      -- 
    bpbV3_daemon_CP_906_elements(23) <= bpbV3_daemon_CP_906_elements(8);
    -- CP-element group 24:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 24: predecessors 
    -- CP-element group 24: successors 
    -- CP-element group 24:  members (2) 
      -- CP-element group 24: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1828_entry_sample_req
      -- CP-element group 24: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1828_entry_sample_req_ps
      -- 
    phi_stmt_1828_entry_sample_req_949_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_1828_entry_sample_req_949_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => bpbV3_daemon_CP_906_elements(24), ack => phi_stmt_1828_req_1); -- 
    -- Element group bpbV3_daemon_CP_906_elements(24) is bound as output of CP function.
    -- CP-element group 25:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 25: predecessors 
    -- CP-element group 25: successors 
    -- CP-element group 25:  members (2) 
      -- CP-element group 25: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1828_phi_mux_ack
      -- CP-element group 25: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1828_phi_mux_ack_ps
      -- 
    phi_stmt_1828_phi_mux_ack_952_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 25_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_1828_ack_0, ack => bpbV3_daemon_CP_906_elements(25)); -- 
    -- CP-element group 26:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 26: predecessors 
    -- CP-element group 26: successors 
    -- CP-element group 26: 	28 
    -- CP-element group 26:  members (1) 
      -- CP-element group 26: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/call_bpbV3_dual_port_mem_expr_1837_sample_start__ps
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(26) is bound as output of CP function.
    -- CP-element group 27:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 27: predecessors 
    -- CP-element group 27: successors 
    -- CP-element group 27: 	29 
    -- CP-element group 27:  members (1) 
      -- CP-element group 27: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/call_bpbV3_dual_port_mem_expr_1837_update_start__ps
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(27) is bound as output of CP function.
    -- CP-element group 28:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 28: predecessors 
    -- CP-element group 28: 	26 
    -- CP-element group 28: marked-predecessors 
    -- CP-element group 28: 	30 
    -- CP-element group 28: successors 
    -- CP-element group 28: 	30 
    -- CP-element group 28:  members (3) 
      -- CP-element group 28: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/call_bpbV3_dual_port_mem_expr_1837_Sample/$entry
      -- CP-element group 28: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/call_bpbV3_dual_port_mem_expr_1837_Sample/req
      -- CP-element group 28: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/call_bpbV3_dual_port_mem_expr_1837_sample_start_
      -- 
    req_965_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_965_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => bpbV3_daemon_CP_906_elements(28), ack => call_bpbV3_dual_port_mem_expr_1837_inst_req_0); -- 
    bpbV3_daemon_cp_element_group_28: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 32) := "bpbV3_daemon_cp_element_group_28"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= bpbV3_daemon_CP_906_elements(26) & bpbV3_daemon_CP_906_elements(30);
      gj_bpbV3_daemon_cp_element_group_28 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(28), clk => clk, reset => reset); --
    end block;
    -- CP-element group 29:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 29: predecessors 
    -- CP-element group 29: 	27 
    -- CP-element group 29: marked-predecessors 
    -- CP-element group 29: 	31 
    -- CP-element group 29: successors 
    -- CP-element group 29: 	31 
    -- CP-element group 29:  members (3) 
      -- CP-element group 29: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/call_bpbV3_dual_port_mem_expr_1837_Update/req
      -- CP-element group 29: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/call_bpbV3_dual_port_mem_expr_1837_Update/$entry
      -- CP-element group 29: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/call_bpbV3_dual_port_mem_expr_1837_update_start_
      -- 
    req_970_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_970_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => bpbV3_daemon_CP_906_elements(29), ack => call_bpbV3_dual_port_mem_expr_1837_inst_req_1); -- 
    bpbV3_daemon_cp_element_group_29: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 32) := "bpbV3_daemon_cp_element_group_29"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= bpbV3_daemon_CP_906_elements(27) & bpbV3_daemon_CP_906_elements(31);
      gj_bpbV3_daemon_cp_element_group_29 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(29), clk => clk, reset => reset); --
    end block;
    -- CP-element group 30:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 30: predecessors 
    -- CP-element group 30: 	28 
    -- CP-element group 30: successors 
    -- CP-element group 30: marked-successors 
    -- CP-element group 30: 	28 
    -- CP-element group 30:  members (4) 
      -- CP-element group 30: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/call_bpbV3_dual_port_mem_expr_1837_Sample/$exit
      -- CP-element group 30: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/call_bpbV3_dual_port_mem_expr_1837_Sample/ack
      -- CP-element group 30: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/call_bpbV3_dual_port_mem_expr_1837_sample_completed__ps
      -- CP-element group 30: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/call_bpbV3_dual_port_mem_expr_1837_sample_completed_
      -- 
    ack_966_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 30_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_bpbV3_dual_port_mem_expr_1837_inst_ack_0, ack => bpbV3_daemon_CP_906_elements(30)); -- 
    -- CP-element group 31:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 31: predecessors 
    -- CP-element group 31: 	29 
    -- CP-element group 31: successors 
    -- CP-element group 31: marked-successors 
    -- CP-element group 31: 	29 
    -- CP-element group 31:  members (4) 
      -- CP-element group 31: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/call_bpbV3_dual_port_mem_expr_1837_update_completed_
      -- CP-element group 31: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/call_bpbV3_dual_port_mem_expr_1837_Update/ack
      -- CP-element group 31: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/call_bpbV3_dual_port_mem_expr_1837_update_completed__ps
      -- CP-element group 31: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/call_bpbV3_dual_port_mem_expr_1837_Update/$exit
      -- 
    ack_971_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 31_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_bpbV3_dual_port_mem_expr_1837_inst_ack_1, ack => bpbV3_daemon_CP_906_elements(31)); -- 
    -- CP-element group 32:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 32: predecessors 
    -- CP-element group 32: successors 
    -- CP-element group 32:  members (4) 
      -- CP-element group 32: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1838_sample_completed_
      -- CP-element group 32: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1838_sample_start__ps
      -- CP-element group 32: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1838_sample_completed__ps
      -- CP-element group 32: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1838_sample_start_
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(32) is bound as output of CP function.
    -- CP-element group 33:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 33: predecessors 
    -- CP-element group 33: successors 
    -- CP-element group 33: 	35 
    -- CP-element group 33:  members (2) 
      -- CP-element group 33: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1838_update_start__ps
      -- CP-element group 33: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1838_update_start_
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(33) is bound as output of CP function.
    -- CP-element group 34:  join  transition  bypass  pipeline-parent 
    -- CP-element group 34: predecessors 
    -- CP-element group 34: 	35 
    -- CP-element group 34: successors 
    -- CP-element group 34:  members (1) 
      -- CP-element group 34: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1838_update_completed__ps
      -- 
    bpbV3_daemon_CP_906_elements(34) <= bpbV3_daemon_CP_906_elements(35);
    -- CP-element group 35:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 35: predecessors 
    -- CP-element group 35: 	33 
    -- CP-element group 35: successors 
    -- CP-element group 35: 	34 
    -- CP-element group 35:  members (1) 
      -- CP-element group 35: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1838_update_completed_
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(35) is a control-delay.
    cp_element_35_delay: control_delay_element  generic map(name => " 35_delay", delay_value => 1)  port map(req => bpbV3_daemon_CP_906_elements(33), ack => bpbV3_daemon_CP_906_elements(35), clk => clk, reset =>reset);
    -- CP-element group 36:  join  transition  bypass  pipeline-parent 
    -- CP-element group 36: predecessors 
    -- CP-element group 36: 	9 
    -- CP-element group 36: marked-predecessors 
    -- CP-element group 36: 	12 
    -- CP-element group 36: successors 
    -- CP-element group 36: 	11 
    -- CP-element group 36:  members (1) 
      -- CP-element group 36: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1839_sample_start_
      -- 
    bpbV3_daemon_cp_element_group_36: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 32) := "bpbV3_daemon_cp_element_group_36"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= bpbV3_daemon_CP_906_elements(9) & bpbV3_daemon_CP_906_elements(12);
      gj_bpbV3_daemon_cp_element_group_36 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(36), clk => clk, reset => reset); --
    end block;
    -- CP-element group 37:  join  transition  bypass  pipeline-parent 
    -- CP-element group 37: predecessors 
    -- CP-element group 37: 	9 
    -- CP-element group 37: marked-predecessors 
    -- CP-element group 37: 	41 
    -- CP-element group 37: successors 
    -- CP-element group 37: 	14 
    -- CP-element group 37:  members (1) 
      -- CP-element group 37: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1839_update_start_
      -- 
    bpbV3_daemon_cp_element_group_37: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 32) := "bpbV3_daemon_cp_element_group_37"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= bpbV3_daemon_CP_906_elements(9) & bpbV3_daemon_CP_906_elements(41);
      gj_bpbV3_daemon_cp_element_group_37 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(37), clk => clk, reset => reset); --
    end block;
    -- CP-element group 38:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 38: predecessors 
    -- CP-element group 38: 	11 
    -- CP-element group 38: successors 
    -- CP-element group 38:  members (1) 
      -- CP-element group 38: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1839_sample_start__ps
      -- 
    bpbV3_daemon_CP_906_elements(38) <= bpbV3_daemon_CP_906_elements(11);
    -- CP-element group 39:  join  transition  bypass  pipeline-parent 
    -- CP-element group 39: predecessors 
    -- CP-element group 39: successors 
    -- CP-element group 39: 	12 
    -- CP-element group 39:  members (1) 
      -- CP-element group 39: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1839_sample_completed__ps
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(39) is bound as output of CP function.
    -- CP-element group 40:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 40: predecessors 
    -- CP-element group 40: 	14 
    -- CP-element group 40: 	19 
    -- CP-element group 40: successors 
    -- CP-element group 40:  members (1) 
      -- CP-element group 40: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1839_update_start__ps
      -- 
    bpbV3_daemon_cp_element_group_40: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 32) := "bpbV3_daemon_cp_element_group_40"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= bpbV3_daemon_CP_906_elements(14) & bpbV3_daemon_CP_906_elements(19);
      gj_bpbV3_daemon_cp_element_group_40 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(40), clk => clk, reset => reset); --
    end block;
    -- CP-element group 41:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 41: predecessors 
    -- CP-element group 41: successors 
    -- CP-element group 41: 	15 
    -- CP-element group 41: marked-successors 
    -- CP-element group 41: 	37 
    -- CP-element group 41:  members (2) 
      -- CP-element group 41: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1839_update_completed_
      -- CP-element group 41: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1839_update_completed__ps
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(41) is bound as output of CP function.
    -- CP-element group 42:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 42: predecessors 
    -- CP-element group 42: 	7 
    -- CP-element group 42: successors 
    -- CP-element group 42:  members (1) 
      -- CP-element group 42: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1839_loopback_trigger
      -- 
    bpbV3_daemon_CP_906_elements(42) <= bpbV3_daemon_CP_906_elements(7);
    -- CP-element group 43:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 43: predecessors 
    -- CP-element group 43: successors 
    -- CP-element group 43:  members (2) 
      -- CP-element group 43: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1839_loopback_sample_req_ps
      -- CP-element group 43: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1839_loopback_sample_req
      -- 
    phi_stmt_1839_loopback_sample_req_990_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_1839_loopback_sample_req_990_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => bpbV3_daemon_CP_906_elements(43), ack => phi_stmt_1839_req_0); -- 
    -- Element group bpbV3_daemon_CP_906_elements(43) is bound as output of CP function.
    -- CP-element group 44:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 44: predecessors 
    -- CP-element group 44: 	8 
    -- CP-element group 44: successors 
    -- CP-element group 44:  members (1) 
      -- CP-element group 44: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1839_entry_trigger
      -- 
    bpbV3_daemon_CP_906_elements(44) <= bpbV3_daemon_CP_906_elements(8);
    -- CP-element group 45:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 45: predecessors 
    -- CP-element group 45: successors 
    -- CP-element group 45:  members (2) 
      -- CP-element group 45: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1839_entry_sample_req_ps
      -- CP-element group 45: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1839_entry_sample_req
      -- 
    phi_stmt_1839_entry_sample_req_993_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_1839_entry_sample_req_993_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => bpbV3_daemon_CP_906_elements(45), ack => phi_stmt_1839_req_1); -- 
    -- Element group bpbV3_daemon_CP_906_elements(45) is bound as output of CP function.
    -- CP-element group 46:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 46: predecessors 
    -- CP-element group 46: successors 
    -- CP-element group 46:  members (2) 
      -- CP-element group 46: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1839_phi_mux_ack
      -- CP-element group 46: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1839_phi_mux_ack_ps
      -- 
    phi_stmt_1839_phi_mux_ack_996_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 46_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_1839_ack_0, ack => bpbV3_daemon_CP_906_elements(46)); -- 
    -- CP-element group 47:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 47: predecessors 
    -- CP-element group 47: successors 
    -- CP-element group 47: 	49 
    -- CP-element group 47:  members (1) 
      -- CP-element group 47: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/RPIPE_noblock_teu_ifetch_branch_predictor_update_1842_sample_start__ps
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(47) is bound as output of CP function.
    -- CP-element group 48:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 48: predecessors 
    -- CP-element group 48: successors 
    -- CP-element group 48: 	50 
    -- CP-element group 48:  members (1) 
      -- CP-element group 48: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/RPIPE_noblock_teu_ifetch_branch_predictor_update_1842_update_start__ps
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(48) is bound as output of CP function.
    -- CP-element group 49:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 49: predecessors 
    -- CP-element group 49: 	47 
    -- CP-element group 49: marked-predecessors 
    -- CP-element group 49: 	52 
    -- CP-element group 49: successors 
    -- CP-element group 49: 	51 
    -- CP-element group 49:  members (3) 
      -- CP-element group 49: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/RPIPE_noblock_teu_ifetch_branch_predictor_update_1842_Sample/rr
      -- CP-element group 49: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/RPIPE_noblock_teu_ifetch_branch_predictor_update_1842_Sample/$entry
      -- CP-element group 49: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/RPIPE_noblock_teu_ifetch_branch_predictor_update_1842_sample_start_
      -- 
    rr_1009_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_1009_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => bpbV3_daemon_CP_906_elements(49), ack => RPIPE_noblock_teu_ifetch_branch_predictor_update_1842_inst_req_0); -- 
    bpbV3_daemon_cp_element_group_49: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 32) := "bpbV3_daemon_cp_element_group_49"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= bpbV3_daemon_CP_906_elements(47) & bpbV3_daemon_CP_906_elements(52);
      gj_bpbV3_daemon_cp_element_group_49 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(49), clk => clk, reset => reset); --
    end block;
    -- CP-element group 50:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 50: predecessors 
    -- CP-element group 50: 	48 
    -- CP-element group 50: 	51 
    -- CP-element group 50: successors 
    -- CP-element group 50: 	52 
    -- CP-element group 50:  members (3) 
      -- CP-element group 50: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/RPIPE_noblock_teu_ifetch_branch_predictor_update_1842_Update/$entry
      -- CP-element group 50: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/RPIPE_noblock_teu_ifetch_branch_predictor_update_1842_update_start_
      -- CP-element group 50: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/RPIPE_noblock_teu_ifetch_branch_predictor_update_1842_Update/cr
      -- 
    cr_1014_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_1014_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => bpbV3_daemon_CP_906_elements(50), ack => RPIPE_noblock_teu_ifetch_branch_predictor_update_1842_inst_req_1); -- 
    bpbV3_daemon_cp_element_group_50: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 32) := "bpbV3_daemon_cp_element_group_50"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= bpbV3_daemon_CP_906_elements(48) & bpbV3_daemon_CP_906_elements(51);
      gj_bpbV3_daemon_cp_element_group_50 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(50), clk => clk, reset => reset); --
    end block;
    -- CP-element group 51:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 51: predecessors 
    -- CP-element group 51: 	49 
    -- CP-element group 51: successors 
    -- CP-element group 51: 	50 
    -- CP-element group 51:  members (4) 
      -- CP-element group 51: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/RPIPE_noblock_teu_ifetch_branch_predictor_update_1842_Sample/ra
      -- CP-element group 51: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/RPIPE_noblock_teu_ifetch_branch_predictor_update_1842_sample_completed_
      -- CP-element group 51: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/RPIPE_noblock_teu_ifetch_branch_predictor_update_1842_sample_completed__ps
      -- CP-element group 51: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/RPIPE_noblock_teu_ifetch_branch_predictor_update_1842_Sample/$exit
      -- 
    ra_1010_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 51_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_teu_ifetch_branch_predictor_update_1842_inst_ack_0, ack => bpbV3_daemon_CP_906_elements(51)); -- 
    -- CP-element group 52:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 52: predecessors 
    -- CP-element group 52: 	50 
    -- CP-element group 52: successors 
    -- CP-element group 52: marked-successors 
    -- CP-element group 52: 	49 
    -- CP-element group 52:  members (4) 
      -- CP-element group 52: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/RPIPE_noblock_teu_ifetch_branch_predictor_update_1842_update_completed_
      -- CP-element group 52: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/RPIPE_noblock_teu_ifetch_branch_predictor_update_1842_update_completed__ps
      -- CP-element group 52: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/RPIPE_noblock_teu_ifetch_branch_predictor_update_1842_Update/ca
      -- CP-element group 52: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/RPIPE_noblock_teu_ifetch_branch_predictor_update_1842_Update/$exit
      -- 
    ca_1015_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 52_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_teu_ifetch_branch_predictor_update_1842_inst_ack_1, ack => bpbV3_daemon_CP_906_elements(52)); -- 
    -- CP-element group 53:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 53: predecessors 
    -- CP-element group 53: successors 
    -- CP-element group 53:  members (4) 
      -- CP-element group 53: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1843_sample_completed__ps
      -- CP-element group 53: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1843_sample_completed_
      -- CP-element group 53: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1843_sample_start__ps
      -- CP-element group 53: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1843_sample_start_
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(53) is bound as output of CP function.
    -- CP-element group 54:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 54: predecessors 
    -- CP-element group 54: successors 
    -- CP-element group 54: 	56 
    -- CP-element group 54:  members (2) 
      -- CP-element group 54: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1843_update_start__ps
      -- CP-element group 54: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1843_update_start_
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(54) is bound as output of CP function.
    -- CP-element group 55:  join  transition  bypass  pipeline-parent 
    -- CP-element group 55: predecessors 
    -- CP-element group 55: 	56 
    -- CP-element group 55: successors 
    -- CP-element group 55:  members (1) 
      -- CP-element group 55: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1843_update_completed__ps
      -- 
    bpbV3_daemon_CP_906_elements(55) <= bpbV3_daemon_CP_906_elements(56);
    -- CP-element group 56:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 56: predecessors 
    -- CP-element group 56: 	54 
    -- CP-element group 56: successors 
    -- CP-element group 56: 	55 
    -- CP-element group 56:  members (1) 
      -- CP-element group 56: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1843_update_completed_
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(56) is a control-delay.
    cp_element_56_delay: control_delay_element  generic map(name => " 56_delay", delay_value => 1)  port map(req => bpbV3_daemon_CP_906_elements(54), ack => bpbV3_daemon_CP_906_elements(56), clk => clk, reset =>reset);
    -- CP-element group 57:  join  transition  bypass  pipeline-parent 
    -- CP-element group 57: predecessors 
    -- CP-element group 57: 	9 
    -- CP-element group 57: marked-predecessors 
    -- CP-element group 57: 	12 
    -- CP-element group 57: successors 
    -- CP-element group 57: 	11 
    -- CP-element group 57:  members (1) 
      -- CP-element group 57: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1844_sample_start_
      -- 
    bpbV3_daemon_cp_element_group_57: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 32) := "bpbV3_daemon_cp_element_group_57"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= bpbV3_daemon_CP_906_elements(9) & bpbV3_daemon_CP_906_elements(12);
      gj_bpbV3_daemon_cp_element_group_57 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(57), clk => clk, reset => reset); --
    end block;
    -- CP-element group 58:  join  transition  bypass  pipeline-parent 
    -- CP-element group 58: predecessors 
    -- CP-element group 58: 	9 
    -- CP-element group 58: marked-predecessors 
    -- CP-element group 58: 	62 
    -- CP-element group 58: successors 
    -- CP-element group 58: 	14 
    -- CP-element group 58:  members (1) 
      -- CP-element group 58: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1844_update_start_
      -- 
    bpbV3_daemon_cp_element_group_58: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 32) := "bpbV3_daemon_cp_element_group_58"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= bpbV3_daemon_CP_906_elements(9) & bpbV3_daemon_CP_906_elements(62);
      gj_bpbV3_daemon_cp_element_group_58 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(58), clk => clk, reset => reset); --
    end block;
    -- CP-element group 59:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 59: predecessors 
    -- CP-element group 59: 	11 
    -- CP-element group 59: successors 
    -- CP-element group 59:  members (1) 
      -- CP-element group 59: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1844_sample_start__ps
      -- 
    bpbV3_daemon_CP_906_elements(59) <= bpbV3_daemon_CP_906_elements(11);
    -- CP-element group 60:  join  transition  bypass  pipeline-parent 
    -- CP-element group 60: predecessors 
    -- CP-element group 60: successors 
    -- CP-element group 60: 	12 
    -- CP-element group 60:  members (1) 
      -- CP-element group 60: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1844_sample_completed__ps
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(60) is bound as output of CP function.
    -- CP-element group 61:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 61: predecessors 
    -- CP-element group 61: 	14 
    -- CP-element group 61: 	19 
    -- CP-element group 61: successors 
    -- CP-element group 61:  members (1) 
      -- CP-element group 61: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1844_update_start__ps
      -- 
    bpbV3_daemon_cp_element_group_61: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 32) := "bpbV3_daemon_cp_element_group_61"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= bpbV3_daemon_CP_906_elements(14) & bpbV3_daemon_CP_906_elements(19);
      gj_bpbV3_daemon_cp_element_group_61 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(61), clk => clk, reset => reset); --
    end block;
    -- CP-element group 62:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 62: predecessors 
    -- CP-element group 62: successors 
    -- CP-element group 62: 	15 
    -- CP-element group 62: marked-successors 
    -- CP-element group 62: 	58 
    -- CP-element group 62:  members (2) 
      -- CP-element group 62: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1844_update_completed_
      -- CP-element group 62: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1844_update_completed__ps
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(62) is bound as output of CP function.
    -- CP-element group 63:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 63: predecessors 
    -- CP-element group 63: 	7 
    -- CP-element group 63: successors 
    -- CP-element group 63:  members (1) 
      -- CP-element group 63: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1844_loopback_trigger
      -- 
    bpbV3_daemon_CP_906_elements(63) <= bpbV3_daemon_CP_906_elements(7);
    -- CP-element group 64:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 64: predecessors 
    -- CP-element group 64: successors 
    -- CP-element group 64:  members (2) 
      -- CP-element group 64: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1844_loopback_sample_req_ps
      -- CP-element group 64: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1844_loopback_sample_req
      -- 
    phi_stmt_1844_loopback_sample_req_1034_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_1844_loopback_sample_req_1034_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => bpbV3_daemon_CP_906_elements(64), ack => phi_stmt_1844_req_0); -- 
    -- Element group bpbV3_daemon_CP_906_elements(64) is bound as output of CP function.
    -- CP-element group 65:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 65: predecessors 
    -- CP-element group 65: 	8 
    -- CP-element group 65: successors 
    -- CP-element group 65:  members (1) 
      -- CP-element group 65: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1844_entry_trigger
      -- 
    bpbV3_daemon_CP_906_elements(65) <= bpbV3_daemon_CP_906_elements(8);
    -- CP-element group 66:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 66: predecessors 
    -- CP-element group 66: successors 
    -- CP-element group 66:  members (2) 
      -- CP-element group 66: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1844_entry_sample_req
      -- CP-element group 66: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1844_entry_sample_req_ps
      -- 
    phi_stmt_1844_entry_sample_req_1037_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_1844_entry_sample_req_1037_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => bpbV3_daemon_CP_906_elements(66), ack => phi_stmt_1844_req_1); -- 
    -- Element group bpbV3_daemon_CP_906_elements(66) is bound as output of CP function.
    -- CP-element group 67:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 67: predecessors 
    -- CP-element group 67: successors 
    -- CP-element group 67:  members (2) 
      -- CP-element group 67: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1844_phi_mux_ack
      -- CP-element group 67: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1844_phi_mux_ack_ps
      -- 
    phi_stmt_1844_phi_mux_ack_1040_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 67_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_1844_ack_0, ack => bpbV3_daemon_CP_906_elements(67)); -- 
    -- CP-element group 68:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 68: predecessors 
    -- CP-element group 68: successors 
    -- CP-element group 68: 	70 
    -- CP-element group 68:  members (4) 
      -- CP-element group 68: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_update_command_d_1846_sample_start__ps
      -- CP-element group 68: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_update_command_d_1846_sample_start_
      -- CP-element group 68: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_update_command_d_1846_Sample/$entry
      -- CP-element group 68: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_update_command_d_1846_Sample/req
      -- 
    req_1053_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1053_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => bpbV3_daemon_CP_906_elements(68), ack => next_update_command_d_1932_1846_buf_req_0); -- 
    -- Element group bpbV3_daemon_CP_906_elements(68) is bound as output of CP function.
    -- CP-element group 69:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 69: predecessors 
    -- CP-element group 69: successors 
    -- CP-element group 69: 	71 
    -- CP-element group 69:  members (4) 
      -- CP-element group 69: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_update_command_d_1846_update_start__ps
      -- CP-element group 69: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_update_command_d_1846_update_start_
      -- CP-element group 69: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_update_command_d_1846_Update/$entry
      -- CP-element group 69: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_update_command_d_1846_Update/req
      -- 
    req_1058_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1058_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => bpbV3_daemon_CP_906_elements(69), ack => next_update_command_d_1932_1846_buf_req_1); -- 
    -- Element group bpbV3_daemon_CP_906_elements(69) is bound as output of CP function.
    -- CP-element group 70:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 70: predecessors 
    -- CP-element group 70: 	68 
    -- CP-element group 70: successors 
    -- CP-element group 70:  members (4) 
      -- CP-element group 70: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_update_command_d_1846_sample_completed__ps
      -- CP-element group 70: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_update_command_d_1846_sample_completed_
      -- CP-element group 70: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_update_command_d_1846_Sample/$exit
      -- CP-element group 70: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_update_command_d_1846_Sample/ack
      -- 
    ack_1054_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 70_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_update_command_d_1932_1846_buf_ack_0, ack => bpbV3_daemon_CP_906_elements(70)); -- 
    -- CP-element group 71:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 71: predecessors 
    -- CP-element group 71: 	69 
    -- CP-element group 71: successors 
    -- CP-element group 71:  members (4) 
      -- CP-element group 71: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_update_command_d_1846_update_completed__ps
      -- CP-element group 71: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_update_command_d_1846_update_completed_
      -- CP-element group 71: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_update_command_d_1846_Update/$exit
      -- CP-element group 71: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_update_command_d_1846_Update/ack
      -- 
    ack_1059_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 71_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_update_command_d_1932_1846_buf_ack_1, ack => bpbV3_daemon_CP_906_elements(71)); -- 
    -- CP-element group 72:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 72: predecessors 
    -- CP-element group 72: successors 
    -- CP-element group 72:  members (4) 
      -- CP-element group 72: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1847_sample_start__ps
      -- CP-element group 72: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1847_sample_completed__ps
      -- CP-element group 72: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1847_sample_start_
      -- CP-element group 72: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1847_sample_completed_
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(72) is bound as output of CP function.
    -- CP-element group 73:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 73: predecessors 
    -- CP-element group 73: successors 
    -- CP-element group 73: 	75 
    -- CP-element group 73:  members (2) 
      -- CP-element group 73: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1847_update_start__ps
      -- CP-element group 73: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1847_update_start_
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(73) is bound as output of CP function.
    -- CP-element group 74:  join  transition  bypass  pipeline-parent 
    -- CP-element group 74: predecessors 
    -- CP-element group 74: 	75 
    -- CP-element group 74: successors 
    -- CP-element group 74:  members (1) 
      -- CP-element group 74: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1847_update_completed__ps
      -- 
    bpbV3_daemon_CP_906_elements(74) <= bpbV3_daemon_CP_906_elements(75);
    -- CP-element group 75:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 75: predecessors 
    -- CP-element group 75: 	73 
    -- CP-element group 75: successors 
    -- CP-element group 75: 	74 
    -- CP-element group 75:  members (1) 
      -- CP-element group 75: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1847_update_completed_
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(75) is a control-delay.
    cp_element_75_delay: control_delay_element  generic map(name => " 75_delay", delay_value => 1)  port map(req => bpbV3_daemon_CP_906_elements(73), ack => bpbV3_daemon_CP_906_elements(75), clk => clk, reset =>reset);
    -- CP-element group 76:  join  transition  bypass  pipeline-parent 
    -- CP-element group 76: predecessors 
    -- CP-element group 76: 	9 
    -- CP-element group 76: marked-predecessors 
    -- CP-element group 76: 	12 
    -- CP-element group 76: successors 
    -- CP-element group 76: 	11 
    -- CP-element group 76:  members (1) 
      -- CP-element group 76: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1848_sample_start_
      -- 
    bpbV3_daemon_cp_element_group_76: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 32) := "bpbV3_daemon_cp_element_group_76"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= bpbV3_daemon_CP_906_elements(9) & bpbV3_daemon_CP_906_elements(12);
      gj_bpbV3_daemon_cp_element_group_76 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(76), clk => clk, reset => reset); --
    end block;
    -- CP-element group 77:  join  transition  bypass  pipeline-parent 
    -- CP-element group 77: predecessors 
    -- CP-element group 77: 	9 
    -- CP-element group 77: marked-predecessors 
    -- CP-element group 77: 	81 
    -- CP-element group 77: successors 
    -- CP-element group 77: 	14 
    -- CP-element group 77:  members (1) 
      -- CP-element group 77: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1848_update_start_
      -- 
    bpbV3_daemon_cp_element_group_77: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 32) := "bpbV3_daemon_cp_element_group_77"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= bpbV3_daemon_CP_906_elements(9) & bpbV3_daemon_CP_906_elements(81);
      gj_bpbV3_daemon_cp_element_group_77 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(77), clk => clk, reset => reset); --
    end block;
    -- CP-element group 78:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 78: predecessors 
    -- CP-element group 78: 	11 
    -- CP-element group 78: successors 
    -- CP-element group 78:  members (1) 
      -- CP-element group 78: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1848_sample_start__ps
      -- 
    bpbV3_daemon_CP_906_elements(78) <= bpbV3_daemon_CP_906_elements(11);
    -- CP-element group 79:  join  transition  bypass  pipeline-parent 
    -- CP-element group 79: predecessors 
    -- CP-element group 79: successors 
    -- CP-element group 79: 	12 
    -- CP-element group 79:  members (1) 
      -- CP-element group 79: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1848_sample_completed__ps
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(79) is bound as output of CP function.
    -- CP-element group 80:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 80: predecessors 
    -- CP-element group 80: 	14 
    -- CP-element group 80: 	19 
    -- CP-element group 80: successors 
    -- CP-element group 80:  members (1) 
      -- CP-element group 80: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1848_update_start__ps
      -- 
    bpbV3_daemon_cp_element_group_80: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 32) := "bpbV3_daemon_cp_element_group_80"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= bpbV3_daemon_CP_906_elements(14) & bpbV3_daemon_CP_906_elements(19);
      gj_bpbV3_daemon_cp_element_group_80 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(80), clk => clk, reset => reset); --
    end block;
    -- CP-element group 81:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 81: predecessors 
    -- CP-element group 81: successors 
    -- CP-element group 81: 	15 
    -- CP-element group 81: marked-successors 
    -- CP-element group 81: 	77 
    -- CP-element group 81:  members (2) 
      -- CP-element group 81: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1848_update_completed_
      -- CP-element group 81: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1848_update_completed__ps
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(81) is bound as output of CP function.
    -- CP-element group 82:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 82: predecessors 
    -- CP-element group 82: 	7 
    -- CP-element group 82: successors 
    -- CP-element group 82:  members (1) 
      -- CP-element group 82: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1848_loopback_trigger
      -- 
    bpbV3_daemon_CP_906_elements(82) <= bpbV3_daemon_CP_906_elements(7);
    -- CP-element group 83:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 83: predecessors 
    -- CP-element group 83: successors 
    -- CP-element group 83:  members (2) 
      -- CP-element group 83: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1848_loopback_sample_req
      -- CP-element group 83: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1848_loopback_sample_req_ps
      -- 
    phi_stmt_1848_loopback_sample_req_1078_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_1848_loopback_sample_req_1078_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => bpbV3_daemon_CP_906_elements(83), ack => phi_stmt_1848_req_0); -- 
    -- Element group bpbV3_daemon_CP_906_elements(83) is bound as output of CP function.
    -- CP-element group 84:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 84: predecessors 
    -- CP-element group 84: 	8 
    -- CP-element group 84: successors 
    -- CP-element group 84:  members (1) 
      -- CP-element group 84: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1848_entry_trigger
      -- 
    bpbV3_daemon_CP_906_elements(84) <= bpbV3_daemon_CP_906_elements(8);
    -- CP-element group 85:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 85: predecessors 
    -- CP-element group 85: successors 
    -- CP-element group 85:  members (2) 
      -- CP-element group 85: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1848_entry_sample_req
      -- CP-element group 85: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1848_entry_sample_req_ps
      -- 
    phi_stmt_1848_entry_sample_req_1081_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_1848_entry_sample_req_1081_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => bpbV3_daemon_CP_906_elements(85), ack => phi_stmt_1848_req_1); -- 
    -- Element group bpbV3_daemon_CP_906_elements(85) is bound as output of CP function.
    -- CP-element group 86:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 86: predecessors 
    -- CP-element group 86: successors 
    -- CP-element group 86:  members (2) 
      -- CP-element group 86: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1848_phi_mux_ack
      -- CP-element group 86: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1848_phi_mux_ack_ps
      -- 
    phi_stmt_1848_phi_mux_ack_1084_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 86_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_1848_ack_0, ack => bpbV3_daemon_CP_906_elements(86)); -- 
    -- CP-element group 87:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 87: predecessors 
    -- CP-element group 87: successors 
    -- CP-element group 87: 	89 
    -- CP-element group 87:  members (1) 
      -- CP-element group 87: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/RPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_1850_sample_start__ps
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(87) is bound as output of CP function.
    -- CP-element group 88:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 88: predecessors 
    -- CP-element group 88: successors 
    -- CP-element group 88: 	90 
    -- CP-element group 88:  members (1) 
      -- CP-element group 88: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/RPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_1850_update_start__ps
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(88) is bound as output of CP function.
    -- CP-element group 89:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 89: predecessors 
    -- CP-element group 89: 	87 
    -- CP-element group 89: marked-predecessors 
    -- CP-element group 89: 	92 
    -- CP-element group 89: successors 
    -- CP-element group 89: 	91 
    -- CP-element group 89:  members (3) 
      -- CP-element group 89: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/RPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_1850_sample_start_
      -- CP-element group 89: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/RPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_1850_Sample/$entry
      -- CP-element group 89: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/RPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_1850_Sample/rr
      -- 
    rr_1097_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_1097_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => bpbV3_daemon_CP_906_elements(89), ack => RPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_1850_inst_req_0); -- 
    bpbV3_daemon_cp_element_group_89: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 32) := "bpbV3_daemon_cp_element_group_89"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= bpbV3_daemon_CP_906_elements(87) & bpbV3_daemon_CP_906_elements(92);
      gj_bpbV3_daemon_cp_element_group_89 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(89), clk => clk, reset => reset); --
    end block;
    -- CP-element group 90:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 90: predecessors 
    -- CP-element group 90: 	88 
    -- CP-element group 90: 	91 
    -- CP-element group 90: successors 
    -- CP-element group 90: 	92 
    -- CP-element group 90:  members (3) 
      -- CP-element group 90: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/RPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_1850_update_start_
      -- CP-element group 90: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/RPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_1850_Update/$entry
      -- CP-element group 90: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/RPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_1850_Update/cr
      -- 
    cr_1102_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_1102_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => bpbV3_daemon_CP_906_elements(90), ack => RPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_1850_inst_req_1); -- 
    bpbV3_daemon_cp_element_group_90: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 32) := "bpbV3_daemon_cp_element_group_90"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= bpbV3_daemon_CP_906_elements(88) & bpbV3_daemon_CP_906_elements(91);
      gj_bpbV3_daemon_cp_element_group_90 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(90), clk => clk, reset => reset); --
    end block;
    -- CP-element group 91:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 91: predecessors 
    -- CP-element group 91: 	89 
    -- CP-element group 91: successors 
    -- CP-element group 91: 	90 
    -- CP-element group 91:  members (4) 
      -- CP-element group 91: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/RPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_1850_sample_completed__ps
      -- CP-element group 91: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/RPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_1850_sample_completed_
      -- CP-element group 91: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/RPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_1850_Sample/$exit
      -- CP-element group 91: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/RPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_1850_Sample/ra
      -- 
    ra_1098_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 91_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_1850_inst_ack_0, ack => bpbV3_daemon_CP_906_elements(91)); -- 
    -- CP-element group 92:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 92: predecessors 
    -- CP-element group 92: 	90 
    -- CP-element group 92: successors 
    -- CP-element group 92: marked-successors 
    -- CP-element group 92: 	89 
    -- CP-element group 92:  members (4) 
      -- CP-element group 92: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/RPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_1850_update_completed__ps
      -- CP-element group 92: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/RPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_1850_update_completed_
      -- CP-element group 92: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/RPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_1850_Update/$exit
      -- CP-element group 92: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/RPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_1850_Update/ca
      -- 
    ca_1103_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 92_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_1850_inst_ack_1, ack => bpbV3_daemon_CP_906_elements(92)); -- 
    -- CP-element group 93:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 93: predecessors 
    -- CP-element group 93: successors 
    -- CP-element group 93:  members (4) 
      -- CP-element group 93: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1851_sample_start__ps
      -- CP-element group 93: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1851_sample_completed__ps
      -- CP-element group 93: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1851_sample_start_
      -- CP-element group 93: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1851_sample_completed_
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(93) is bound as output of CP function.
    -- CP-element group 94:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 94: predecessors 
    -- CP-element group 94: successors 
    -- CP-element group 94: 	96 
    -- CP-element group 94:  members (2) 
      -- CP-element group 94: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1851_update_start__ps
      -- CP-element group 94: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1851_update_start_
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(94) is bound as output of CP function.
    -- CP-element group 95:  join  transition  bypass  pipeline-parent 
    -- CP-element group 95: predecessors 
    -- CP-element group 95: 	96 
    -- CP-element group 95: successors 
    -- CP-element group 95:  members (1) 
      -- CP-element group 95: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1851_update_completed__ps
      -- 
    bpbV3_daemon_CP_906_elements(95) <= bpbV3_daemon_CP_906_elements(96);
    -- CP-element group 96:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 96: predecessors 
    -- CP-element group 96: 	94 
    -- CP-element group 96: successors 
    -- CP-element group 96: 	95 
    -- CP-element group 96:  members (1) 
      -- CP-element group 96: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1851_update_completed_
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(96) is a control-delay.
    cp_element_96_delay: control_delay_element  generic map(name => " 96_delay", delay_value => 1)  port map(req => bpbV3_daemon_CP_906_elements(94), ack => bpbV3_daemon_CP_906_elements(96), clk => clk, reset =>reset);
    -- CP-element group 97:  join  transition  bypass  pipeline-parent 
    -- CP-element group 97: predecessors 
    -- CP-element group 97: 	9 
    -- CP-element group 97: marked-predecessors 
    -- CP-element group 97: 	12 
    -- CP-element group 97: successors 
    -- CP-element group 97: 	11 
    -- CP-element group 97:  members (1) 
      -- CP-element group 97: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1852_sample_start_
      -- 
    bpbV3_daemon_cp_element_group_97: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 32) := "bpbV3_daemon_cp_element_group_97"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= bpbV3_daemon_CP_906_elements(9) & bpbV3_daemon_CP_906_elements(12);
      gj_bpbV3_daemon_cp_element_group_97 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(97), clk => clk, reset => reset); --
    end block;
    -- CP-element group 98:  join  transition  bypass  pipeline-parent 
    -- CP-element group 98: predecessors 
    -- CP-element group 98: 	9 
    -- CP-element group 98: marked-predecessors 
    -- CP-element group 98: 	192 
    -- CP-element group 98: successors 
    -- CP-element group 98: 	14 
    -- CP-element group 98:  members (1) 
      -- CP-element group 98: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1852_update_start_
      -- 
    bpbV3_daemon_cp_element_group_98: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 32) := "bpbV3_daemon_cp_element_group_98"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= bpbV3_daemon_CP_906_elements(9) & bpbV3_daemon_CP_906_elements(192);
      gj_bpbV3_daemon_cp_element_group_98 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(98), clk => clk, reset => reset); --
    end block;
    -- CP-element group 99:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 99: predecessors 
    -- CP-element group 99: 	11 
    -- CP-element group 99: successors 
    -- CP-element group 99:  members (1) 
      -- CP-element group 99: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1852_sample_start__ps
      -- 
    bpbV3_daemon_CP_906_elements(99) <= bpbV3_daemon_CP_906_elements(11);
    -- CP-element group 100:  join  transition  bypass  pipeline-parent 
    -- CP-element group 100: predecessors 
    -- CP-element group 100: successors 
    -- CP-element group 100: 	12 
    -- CP-element group 100:  members (1) 
      -- CP-element group 100: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1852_sample_completed__ps
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(100) is bound as output of CP function.
    -- CP-element group 101:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 101: predecessors 
    -- CP-element group 101: 	14 
    -- CP-element group 101: 	19 
    -- CP-element group 101: successors 
    -- CP-element group 101:  members (1) 
      -- CP-element group 101: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1852_update_start__ps
      -- 
    bpbV3_daemon_cp_element_group_101: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 33) := "bpbV3_daemon_cp_element_group_101"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= bpbV3_daemon_CP_906_elements(14) & bpbV3_daemon_CP_906_elements(19);
      gj_bpbV3_daemon_cp_element_group_101 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(101), clk => clk, reset => reset); --
    end block;
    -- CP-element group 102:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 102: predecessors 
    -- CP-element group 102: successors 
    -- CP-element group 102: 	191 
    -- CP-element group 102: 	15 
    -- CP-element group 102:  members (2) 
      -- CP-element group 102: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1852_update_completed_
      -- CP-element group 102: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1852_update_completed__ps
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(102) is bound as output of CP function.
    -- CP-element group 103:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 103: predecessors 
    -- CP-element group 103: 	7 
    -- CP-element group 103: successors 
    -- CP-element group 103:  members (1) 
      -- CP-element group 103: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1852_loopback_trigger
      -- 
    bpbV3_daemon_CP_906_elements(103) <= bpbV3_daemon_CP_906_elements(7);
    -- CP-element group 104:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 104: predecessors 
    -- CP-element group 104: successors 
    -- CP-element group 104:  members (2) 
      -- CP-element group 104: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1852_loopback_sample_req
      -- CP-element group 104: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1852_loopback_sample_req_ps
      -- 
    phi_stmt_1852_loopback_sample_req_1122_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_1852_loopback_sample_req_1122_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => bpbV3_daemon_CP_906_elements(104), ack => phi_stmt_1852_req_0); -- 
    -- Element group bpbV3_daemon_CP_906_elements(104) is bound as output of CP function.
    -- CP-element group 105:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 105: predecessors 
    -- CP-element group 105: 	8 
    -- CP-element group 105: successors 
    -- CP-element group 105:  members (1) 
      -- CP-element group 105: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1852_entry_trigger
      -- 
    bpbV3_daemon_CP_906_elements(105) <= bpbV3_daemon_CP_906_elements(8);
    -- CP-element group 106:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 106: predecessors 
    -- CP-element group 106: successors 
    -- CP-element group 106:  members (2) 
      -- CP-element group 106: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1852_entry_sample_req
      -- CP-element group 106: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1852_entry_sample_req_ps
      -- 
    phi_stmt_1852_entry_sample_req_1125_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_1852_entry_sample_req_1125_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => bpbV3_daemon_CP_906_elements(106), ack => phi_stmt_1852_req_1); -- 
    -- Element group bpbV3_daemon_CP_906_elements(106) is bound as output of CP function.
    -- CP-element group 107:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 107: predecessors 
    -- CP-element group 107: successors 
    -- CP-element group 107:  members (2) 
      -- CP-element group 107: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1852_phi_mux_ack
      -- CP-element group 107: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1852_phi_mux_ack_ps
      -- 
    phi_stmt_1852_phi_mux_ack_1128_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 107_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_1852_ack_0, ack => bpbV3_daemon_CP_906_elements(107)); -- 
    -- CP-element group 108:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 108: predecessors 
    -- CP-element group 108: successors 
    -- CP-element group 108: 	110 
    -- CP-element group 108:  members (4) 
      -- CP-element group 108: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_lookup_command_d_1854_sample_start__ps
      -- CP-element group 108: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_lookup_command_d_1854_sample_start_
      -- CP-element group 108: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_lookup_command_d_1854_Sample/$entry
      -- CP-element group 108: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_lookup_command_d_1854_Sample/req
      -- 
    req_1141_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1141_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => bpbV3_daemon_CP_906_elements(108), ack => next_lookup_command_d_2041_1854_buf_req_0); -- 
    -- Element group bpbV3_daemon_CP_906_elements(108) is bound as output of CP function.
    -- CP-element group 109:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 109: predecessors 
    -- CP-element group 109: successors 
    -- CP-element group 109: 	111 
    -- CP-element group 109:  members (4) 
      -- CP-element group 109: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_lookup_command_d_1854_update_start__ps
      -- CP-element group 109: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_lookup_command_d_1854_update_start_
      -- CP-element group 109: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_lookup_command_d_1854_Update/$entry
      -- CP-element group 109: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_lookup_command_d_1854_Update/req
      -- 
    req_1146_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1146_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => bpbV3_daemon_CP_906_elements(109), ack => next_lookup_command_d_2041_1854_buf_req_1); -- 
    -- Element group bpbV3_daemon_CP_906_elements(109) is bound as output of CP function.
    -- CP-element group 110:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 110: predecessors 
    -- CP-element group 110: 	108 
    -- CP-element group 110: successors 
    -- CP-element group 110:  members (4) 
      -- CP-element group 110: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_lookup_command_d_1854_sample_completed__ps
      -- CP-element group 110: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_lookup_command_d_1854_sample_completed_
      -- CP-element group 110: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_lookup_command_d_1854_Sample/$exit
      -- CP-element group 110: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_lookup_command_d_1854_Sample/ack
      -- 
    ack_1142_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 110_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_lookup_command_d_2041_1854_buf_ack_0, ack => bpbV3_daemon_CP_906_elements(110)); -- 
    -- CP-element group 111:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 111: predecessors 
    -- CP-element group 111: 	109 
    -- CP-element group 111: successors 
    -- CP-element group 111:  members (4) 
      -- CP-element group 111: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_lookup_command_d_1854_update_completed__ps
      -- CP-element group 111: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_lookup_command_d_1854_update_completed_
      -- CP-element group 111: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_lookup_command_d_1854_Update/$exit
      -- CP-element group 111: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_lookup_command_d_1854_Update/ack
      -- 
    ack_1147_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 111_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_lookup_command_d_2041_1854_buf_ack_1, ack => bpbV3_daemon_CP_906_elements(111)); -- 
    -- CP-element group 112:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 112: predecessors 
    -- CP-element group 112: successors 
    -- CP-element group 112:  members (4) 
      -- CP-element group 112: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1855_sample_start__ps
      -- CP-element group 112: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1855_sample_completed__ps
      -- CP-element group 112: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1855_sample_start_
      -- CP-element group 112: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1855_sample_completed_
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(112) is bound as output of CP function.
    -- CP-element group 113:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 113: predecessors 
    -- CP-element group 113: successors 
    -- CP-element group 113: 	115 
    -- CP-element group 113:  members (2) 
      -- CP-element group 113: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1855_update_start__ps
      -- CP-element group 113: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1855_update_start_
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(113) is bound as output of CP function.
    -- CP-element group 114:  join  transition  bypass  pipeline-parent 
    -- CP-element group 114: predecessors 
    -- CP-element group 114: 	115 
    -- CP-element group 114: successors 
    -- CP-element group 114:  members (1) 
      -- CP-element group 114: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1855_update_completed__ps
      -- 
    bpbV3_daemon_CP_906_elements(114) <= bpbV3_daemon_CP_906_elements(115);
    -- CP-element group 115:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 115: predecessors 
    -- CP-element group 115: 	113 
    -- CP-element group 115: successors 
    -- CP-element group 115: 	114 
    -- CP-element group 115:  members (1) 
      -- CP-element group 115: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1855_update_completed_
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(115) is a control-delay.
    cp_element_115_delay: control_delay_element  generic map(name => " 115_delay", delay_value => 1)  port map(req => bpbV3_daemon_CP_906_elements(113), ack => bpbV3_daemon_CP_906_elements(115), clk => clk, reset =>reset);
    -- CP-element group 116:  join  transition  bypass  pipeline-parent 
    -- CP-element group 116: predecessors 
    -- CP-element group 116: 	9 
    -- CP-element group 116: marked-predecessors 
    -- CP-element group 116: 	12 
    -- CP-element group 116: successors 
    -- CP-element group 116: 	11 
    -- CP-element group 116:  members (1) 
      -- CP-element group 116: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1856_sample_start_
      -- 
    bpbV3_daemon_cp_element_group_116: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 33) := "bpbV3_daemon_cp_element_group_116"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= bpbV3_daemon_CP_906_elements(9) & bpbV3_daemon_CP_906_elements(12);
      gj_bpbV3_daemon_cp_element_group_116 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(116), clk => clk, reset => reset); --
    end block;
    -- CP-element group 117:  join  transition  bypass  pipeline-parent 
    -- CP-element group 117: predecessors 
    -- CP-element group 117: 	9 
    -- CP-element group 117: marked-predecessors 
    -- CP-element group 117: 	121 
    -- CP-element group 117: successors 
    -- CP-element group 117: 	14 
    -- CP-element group 117:  members (1) 
      -- CP-element group 117: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1856_update_start_
      -- 
    bpbV3_daemon_cp_element_group_117: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 33) := "bpbV3_daemon_cp_element_group_117"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= bpbV3_daemon_CP_906_elements(9) & bpbV3_daemon_CP_906_elements(121);
      gj_bpbV3_daemon_cp_element_group_117 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(117), clk => clk, reset => reset); --
    end block;
    -- CP-element group 118:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 118: predecessors 
    -- CP-element group 118: 	11 
    -- CP-element group 118: successors 
    -- CP-element group 118:  members (1) 
      -- CP-element group 118: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1856_sample_start__ps
      -- 
    bpbV3_daemon_CP_906_elements(118) <= bpbV3_daemon_CP_906_elements(11);
    -- CP-element group 119:  join  transition  bypass  pipeline-parent 
    -- CP-element group 119: predecessors 
    -- CP-element group 119: successors 
    -- CP-element group 119: 	12 
    -- CP-element group 119:  members (1) 
      -- CP-element group 119: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1856_sample_completed__ps
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(119) is bound as output of CP function.
    -- CP-element group 120:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 120: predecessors 
    -- CP-element group 120: 	14 
    -- CP-element group 120: 	19 
    -- CP-element group 120: successors 
    -- CP-element group 120:  members (1) 
      -- CP-element group 120: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1856_update_start__ps
      -- 
    bpbV3_daemon_cp_element_group_120: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 33) := "bpbV3_daemon_cp_element_group_120"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= bpbV3_daemon_CP_906_elements(14) & bpbV3_daemon_CP_906_elements(19);
      gj_bpbV3_daemon_cp_element_group_120 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(120), clk => clk, reset => reset); --
    end block;
    -- CP-element group 121:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 121: predecessors 
    -- CP-element group 121: successors 
    -- CP-element group 121: 	15 
    -- CP-element group 121: marked-successors 
    -- CP-element group 121: 	117 
    -- CP-element group 121:  members (2) 
      -- CP-element group 121: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1856_update_completed_
      -- CP-element group 121: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1856_update_completed__ps
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(121) is bound as output of CP function.
    -- CP-element group 122:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 122: predecessors 
    -- CP-element group 122: 	7 
    -- CP-element group 122: successors 
    -- CP-element group 122:  members (1) 
      -- CP-element group 122: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1856_loopback_trigger
      -- 
    bpbV3_daemon_CP_906_elements(122) <= bpbV3_daemon_CP_906_elements(7);
    -- CP-element group 123:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 123: predecessors 
    -- CP-element group 123: successors 
    -- CP-element group 123:  members (2) 
      -- CP-element group 123: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1856_loopback_sample_req
      -- CP-element group 123: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1856_loopback_sample_req_ps
      -- 
    phi_stmt_1856_loopback_sample_req_1166_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_1856_loopback_sample_req_1166_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => bpbV3_daemon_CP_906_elements(123), ack => phi_stmt_1856_req_0); -- 
    -- Element group bpbV3_daemon_CP_906_elements(123) is bound as output of CP function.
    -- CP-element group 124:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 124: predecessors 
    -- CP-element group 124: 	8 
    -- CP-element group 124: successors 
    -- CP-element group 124:  members (1) 
      -- CP-element group 124: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1856_entry_trigger
      -- 
    bpbV3_daemon_CP_906_elements(124) <= bpbV3_daemon_CP_906_elements(8);
    -- CP-element group 125:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 125: predecessors 
    -- CP-element group 125: successors 
    -- CP-element group 125:  members (2) 
      -- CP-element group 125: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1856_entry_sample_req
      -- CP-element group 125: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1856_entry_sample_req_ps
      -- 
    phi_stmt_1856_entry_sample_req_1169_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_1856_entry_sample_req_1169_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => bpbV3_daemon_CP_906_elements(125), ack => phi_stmt_1856_req_1); -- 
    -- Element group bpbV3_daemon_CP_906_elements(125) is bound as output of CP function.
    -- CP-element group 126:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 126: predecessors 
    -- CP-element group 126: successors 
    -- CP-element group 126:  members (2) 
      -- CP-element group 126: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1856_phi_mux_ack
      -- CP-element group 126: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1856_phi_mux_ack_ps
      -- 
    phi_stmt_1856_phi_mux_ack_1172_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 126_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_1856_ack_0, ack => bpbV3_daemon_CP_906_elements(126)); -- 
    -- CP-element group 127:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 127: predecessors 
    -- CP-element group 127: successors 
    -- CP-element group 127:  members (4) 
      -- CP-element group 127: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/type_cast_1859_sample_start__ps
      -- CP-element group 127: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/type_cast_1859_sample_completed__ps
      -- CP-element group 127: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/type_cast_1859_sample_start_
      -- CP-element group 127: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/type_cast_1859_sample_completed_
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(127) is bound as output of CP function.
    -- CP-element group 128:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 128: predecessors 
    -- CP-element group 128: successors 
    -- CP-element group 128: 	130 
    -- CP-element group 128:  members (2) 
      -- CP-element group 128: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/type_cast_1859_update_start__ps
      -- CP-element group 128: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/type_cast_1859_update_start_
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(128) is bound as output of CP function.
    -- CP-element group 129:  join  transition  bypass  pipeline-parent 
    -- CP-element group 129: predecessors 
    -- CP-element group 129: 	130 
    -- CP-element group 129: successors 
    -- CP-element group 129:  members (1) 
      -- CP-element group 129: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/type_cast_1859_update_completed__ps
      -- 
    bpbV3_daemon_CP_906_elements(129) <= bpbV3_daemon_CP_906_elements(130);
    -- CP-element group 130:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 130: predecessors 
    -- CP-element group 130: 	128 
    -- CP-element group 130: successors 
    -- CP-element group 130: 	129 
    -- CP-element group 130:  members (1) 
      -- CP-element group 130: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/type_cast_1859_update_completed_
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(130) is a control-delay.
    cp_element_130_delay: control_delay_element  generic map(name => " 130_delay", delay_value => 1)  port map(req => bpbV3_daemon_CP_906_elements(128), ack => bpbV3_daemon_CP_906_elements(130), clk => clk, reset =>reset);
    -- CP-element group 131:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 131: predecessors 
    -- CP-element group 131: successors 
    -- CP-element group 131:  members (4) 
      -- CP-element group 131: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/type_cast_1861_sample_start__ps
      -- CP-element group 131: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/type_cast_1861_sample_completed__ps
      -- CP-element group 131: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/type_cast_1861_sample_start_
      -- CP-element group 131: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/type_cast_1861_sample_completed_
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(131) is bound as output of CP function.
    -- CP-element group 132:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 132: predecessors 
    -- CP-element group 132: successors 
    -- CP-element group 132: 	134 
    -- CP-element group 132:  members (2) 
      -- CP-element group 132: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/type_cast_1861_update_start__ps
      -- CP-element group 132: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/type_cast_1861_update_start_
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(132) is bound as output of CP function.
    -- CP-element group 133:  join  transition  bypass  pipeline-parent 
    -- CP-element group 133: predecessors 
    -- CP-element group 133: 	134 
    -- CP-element group 133: successors 
    -- CP-element group 133:  members (1) 
      -- CP-element group 133: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/type_cast_1861_update_completed__ps
      -- 
    bpbV3_daemon_CP_906_elements(133) <= bpbV3_daemon_CP_906_elements(134);
    -- CP-element group 134:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 134: predecessors 
    -- CP-element group 134: 	132 
    -- CP-element group 134: successors 
    -- CP-element group 134: 	133 
    -- CP-element group 134:  members (1) 
      -- CP-element group 134: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/type_cast_1861_update_completed_
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(134) is a control-delay.
    cp_element_134_delay: control_delay_element  generic map(name => " 134_delay", delay_value => 1)  port map(req => bpbV3_daemon_CP_906_elements(132), ack => bpbV3_daemon_CP_906_elements(134), clk => clk, reset =>reset);
    -- CP-element group 135:  join  transition  bypass  pipeline-parent 
    -- CP-element group 135: predecessors 
    -- CP-element group 135: 	9 
    -- CP-element group 135: marked-predecessors 
    -- CP-element group 135: 	12 
    -- CP-element group 135: successors 
    -- CP-element group 135: 	11 
    -- CP-element group 135:  members (1) 
      -- CP-element group 135: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1862_sample_start_
      -- 
    bpbV3_daemon_cp_element_group_135: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 33) := "bpbV3_daemon_cp_element_group_135"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= bpbV3_daemon_CP_906_elements(9) & bpbV3_daemon_CP_906_elements(12);
      gj_bpbV3_daemon_cp_element_group_135 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(135), clk => clk, reset => reset); --
    end block;
    -- CP-element group 136:  join  transition  bypass  pipeline-parent 
    -- CP-element group 136: predecessors 
    -- CP-element group 136: 	9 
    -- CP-element group 136: marked-predecessors 
    -- CP-element group 136: 	139 
    -- CP-element group 136: successors 
    -- CP-element group 136: 	14 
    -- CP-element group 136:  members (1) 
      -- CP-element group 136: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1862_update_start_
      -- 
    bpbV3_daemon_cp_element_group_136: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 33) := "bpbV3_daemon_cp_element_group_136"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= bpbV3_daemon_CP_906_elements(9) & bpbV3_daemon_CP_906_elements(139);
      gj_bpbV3_daemon_cp_element_group_136 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(136), clk => clk, reset => reset); --
    end block;
    -- CP-element group 137:  join  transition  bypass  pipeline-parent 
    -- CP-element group 137: predecessors 
    -- CP-element group 137: successors 
    -- CP-element group 137: 	12 
    -- CP-element group 137:  members (1) 
      -- CP-element group 137: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1862_sample_completed__ps
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(137) is bound as output of CP function.
    -- CP-element group 138:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 138: predecessors 
    -- CP-element group 138: 	14 
    -- CP-element group 138: 	19 
    -- CP-element group 138: successors 
    -- CP-element group 138:  members (1) 
      -- CP-element group 138: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1862_update_start__ps
      -- 
    bpbV3_daemon_cp_element_group_138: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 33) := "bpbV3_daemon_cp_element_group_138"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= bpbV3_daemon_CP_906_elements(14) & bpbV3_daemon_CP_906_elements(19);
      gj_bpbV3_daemon_cp_element_group_138 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(138), clk => clk, reset => reset); --
    end block;
    -- CP-element group 139:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 139: predecessors 
    -- CP-element group 139: successors 
    -- CP-element group 139: 	15 
    -- CP-element group 139: marked-successors 
    -- CP-element group 139: 	136 
    -- CP-element group 139:  members (2) 
      -- CP-element group 139: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1862_update_completed_
      -- CP-element group 139: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1862_update_completed__ps
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(139) is bound as output of CP function.
    -- CP-element group 140:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 140: predecessors 
    -- CP-element group 140: 	7 
    -- CP-element group 140: successors 
    -- CP-element group 140:  members (1) 
      -- CP-element group 140: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1862_loopback_trigger
      -- 
    bpbV3_daemon_CP_906_elements(140) <= bpbV3_daemon_CP_906_elements(7);
    -- CP-element group 141:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 141: predecessors 
    -- CP-element group 141: successors 
    -- CP-element group 141:  members (2) 
      -- CP-element group 141: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1862_loopback_sample_req
      -- CP-element group 141: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1862_loopback_sample_req_ps
      -- 
    phi_stmt_1862_loopback_sample_req_1200_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_1862_loopback_sample_req_1200_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => bpbV3_daemon_CP_906_elements(141), ack => phi_stmt_1862_req_0); -- 
    -- Element group bpbV3_daemon_CP_906_elements(141) is bound as output of CP function.
    -- CP-element group 142:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 142: predecessors 
    -- CP-element group 142: 	8 
    -- CP-element group 142: successors 
    -- CP-element group 142:  members (1) 
      -- CP-element group 142: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1862_entry_trigger
      -- 
    bpbV3_daemon_CP_906_elements(142) <= bpbV3_daemon_CP_906_elements(8);
    -- CP-element group 143:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 143: predecessors 
    -- CP-element group 143: successors 
    -- CP-element group 143:  members (2) 
      -- CP-element group 143: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1862_entry_sample_req
      -- CP-element group 143: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1862_entry_sample_req_ps
      -- 
    phi_stmt_1862_entry_sample_req_1203_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_1862_entry_sample_req_1203_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => bpbV3_daemon_CP_906_elements(143), ack => phi_stmt_1862_req_1); -- 
    -- Element group bpbV3_daemon_CP_906_elements(143) is bound as output of CP function.
    -- CP-element group 144:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 144: predecessors 
    -- CP-element group 144: successors 
    -- CP-element group 144:  members (2) 
      -- CP-element group 144: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1862_phi_mux_ack
      -- CP-element group 144: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1862_phi_mux_ack_ps
      -- 
    phi_stmt_1862_phi_mux_ack_1206_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 144_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_1862_ack_0, ack => bpbV3_daemon_CP_906_elements(144)); -- 
    -- CP-element group 145:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 145: predecessors 
    -- CP-element group 145: successors 
    -- CP-element group 145: 	147 
    -- CP-element group 145:  members (4) 
      -- CP-element group 145: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_update_state_1864_sample_start__ps
      -- CP-element group 145: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_update_state_1864_sample_start_
      -- CP-element group 145: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_update_state_1864_Sample/$entry
      -- CP-element group 145: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_update_state_1864_Sample/req
      -- 
    req_1219_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1219_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => bpbV3_daemon_CP_906_elements(145), ack => next_update_state_1976_1864_buf_req_0); -- 
    -- Element group bpbV3_daemon_CP_906_elements(145) is bound as output of CP function.
    -- CP-element group 146:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 146: predecessors 
    -- CP-element group 146: successors 
    -- CP-element group 146: 	148 
    -- CP-element group 146:  members (4) 
      -- CP-element group 146: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_update_state_1864_update_start__ps
      -- CP-element group 146: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_update_state_1864_update_start_
      -- CP-element group 146: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_update_state_1864_Update/$entry
      -- CP-element group 146: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_update_state_1864_Update/req
      -- 
    req_1224_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1224_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => bpbV3_daemon_CP_906_elements(146), ack => next_update_state_1976_1864_buf_req_1); -- 
    -- Element group bpbV3_daemon_CP_906_elements(146) is bound as output of CP function.
    -- CP-element group 147:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 147: predecessors 
    -- CP-element group 147: 	145 
    -- CP-element group 147: successors 
    -- CP-element group 147:  members (4) 
      -- CP-element group 147: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_update_state_1864_sample_completed__ps
      -- CP-element group 147: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_update_state_1864_sample_completed_
      -- CP-element group 147: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_update_state_1864_Sample/$exit
      -- CP-element group 147: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_update_state_1864_Sample/ack
      -- 
    ack_1220_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 147_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_update_state_1976_1864_buf_ack_0, ack => bpbV3_daemon_CP_906_elements(147)); -- 
    -- CP-element group 148:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 148: predecessors 
    -- CP-element group 148: 	146 
    -- CP-element group 148: successors 
    -- CP-element group 148:  members (4) 
      -- CP-element group 148: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_update_state_1864_update_completed__ps
      -- CP-element group 148: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_update_state_1864_update_completed_
      -- CP-element group 148: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_update_state_1864_Update/$exit
      -- CP-element group 148: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_update_state_1864_Update/ack
      -- 
    ack_1225_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 148_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_update_state_1976_1864_buf_ack_1, ack => bpbV3_daemon_CP_906_elements(148)); -- 
    -- CP-element group 149:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 149: predecessors 
    -- CP-element group 149: successors 
    -- CP-element group 149:  members (4) 
      -- CP-element group 149: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_U_IDLE_1865_sample_start__ps
      -- CP-element group 149: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_U_IDLE_1865_sample_completed__ps
      -- CP-element group 149: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_U_IDLE_1865_sample_start_
      -- CP-element group 149: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_U_IDLE_1865_sample_completed_
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(149) is bound as output of CP function.
    -- CP-element group 150:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 150: predecessors 
    -- CP-element group 150: successors 
    -- CP-element group 150: 	152 
    -- CP-element group 150:  members (2) 
      -- CP-element group 150: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_U_IDLE_1865_update_start__ps
      -- CP-element group 150: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_U_IDLE_1865_update_start_
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(150) is bound as output of CP function.
    -- CP-element group 151:  join  transition  bypass  pipeline-parent 
    -- CP-element group 151: predecessors 
    -- CP-element group 151: 	152 
    -- CP-element group 151: successors 
    -- CP-element group 151:  members (1) 
      -- CP-element group 151: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_U_IDLE_1865_update_completed__ps
      -- 
    bpbV3_daemon_CP_906_elements(151) <= bpbV3_daemon_CP_906_elements(152);
    -- CP-element group 152:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 152: predecessors 
    -- CP-element group 152: 	150 
    -- CP-element group 152: successors 
    -- CP-element group 152: 	151 
    -- CP-element group 152:  members (1) 
      -- CP-element group 152: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_U_IDLE_1865_update_completed_
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(152) is a control-delay.
    cp_element_152_delay: control_delay_element  generic map(name => " 152_delay", delay_value => 1)  port map(req => bpbV3_daemon_CP_906_elements(150), ack => bpbV3_daemon_CP_906_elements(152), clk => clk, reset =>reset);
    -- CP-element group 153:  join  transition  bypass  pipeline-parent 
    -- CP-element group 153: predecessors 
    -- CP-element group 153: 	9 
    -- CP-element group 153: marked-predecessors 
    -- CP-element group 153: 	12 
    -- CP-element group 153: successors 
    -- CP-element group 153: 	11 
    -- CP-element group 153:  members (1) 
      -- CP-element group 153: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1866_sample_start_
      -- 
    bpbV3_daemon_cp_element_group_153: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 33) := "bpbV3_daemon_cp_element_group_153"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= bpbV3_daemon_CP_906_elements(9) & bpbV3_daemon_CP_906_elements(12);
      gj_bpbV3_daemon_cp_element_group_153 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(153), clk => clk, reset => reset); --
    end block;
    -- CP-element group 154:  join  transition  bypass  pipeline-parent 
    -- CP-element group 154: predecessors 
    -- CP-element group 154: 	9 
    -- CP-element group 154: marked-predecessors 
    -- CP-element group 154: 	192 
    -- CP-element group 154: successors 
    -- CP-element group 154: 	14 
    -- CP-element group 154:  members (1) 
      -- CP-element group 154: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1866_update_start_
      -- 
    bpbV3_daemon_cp_element_group_154: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 33) := "bpbV3_daemon_cp_element_group_154"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= bpbV3_daemon_CP_906_elements(9) & bpbV3_daemon_CP_906_elements(192);
      gj_bpbV3_daemon_cp_element_group_154 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(154), clk => clk, reset => reset); --
    end block;
    -- CP-element group 155:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 155: predecessors 
    -- CP-element group 155: 	11 
    -- CP-element group 155: successors 
    -- CP-element group 155:  members (1) 
      -- CP-element group 155: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1866_sample_start__ps
      -- 
    bpbV3_daemon_CP_906_elements(155) <= bpbV3_daemon_CP_906_elements(11);
    -- CP-element group 156:  join  transition  bypass  pipeline-parent 
    -- CP-element group 156: predecessors 
    -- CP-element group 156: successors 
    -- CP-element group 156: 	12 
    -- CP-element group 156:  members (1) 
      -- CP-element group 156: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1866_sample_completed__ps
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(156) is bound as output of CP function.
    -- CP-element group 157:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 157: predecessors 
    -- CP-element group 157: 	14 
    -- CP-element group 157: 	19 
    -- CP-element group 157: successors 
    -- CP-element group 157:  members (1) 
      -- CP-element group 157: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1866_update_start__ps
      -- 
    bpbV3_daemon_cp_element_group_157: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 33) := "bpbV3_daemon_cp_element_group_157"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= bpbV3_daemon_CP_906_elements(14) & bpbV3_daemon_CP_906_elements(19);
      gj_bpbV3_daemon_cp_element_group_157 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(157), clk => clk, reset => reset); --
    end block;
    -- CP-element group 158:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 158: predecessors 
    -- CP-element group 158: successors 
    -- CP-element group 158: 	191 
    -- CP-element group 158: 	15 
    -- CP-element group 158:  members (2) 
      -- CP-element group 158: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1866_update_completed_
      -- CP-element group 158: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1866_update_completed__ps
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(158) is bound as output of CP function.
    -- CP-element group 159:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 159: predecessors 
    -- CP-element group 159: 	7 
    -- CP-element group 159: successors 
    -- CP-element group 159:  members (1) 
      -- CP-element group 159: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1866_loopback_trigger
      -- 
    bpbV3_daemon_CP_906_elements(159) <= bpbV3_daemon_CP_906_elements(7);
    -- CP-element group 160:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 160: predecessors 
    -- CP-element group 160: successors 
    -- CP-element group 160:  members (2) 
      -- CP-element group 160: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1866_loopback_sample_req
      -- CP-element group 160: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1866_loopback_sample_req_ps
      -- 
    phi_stmt_1866_loopback_sample_req_1244_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_1866_loopback_sample_req_1244_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => bpbV3_daemon_CP_906_elements(160), ack => phi_stmt_1866_req_0); -- 
    -- Element group bpbV3_daemon_CP_906_elements(160) is bound as output of CP function.
    -- CP-element group 161:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 161: predecessors 
    -- CP-element group 161: 	8 
    -- CP-element group 161: successors 
    -- CP-element group 161:  members (1) 
      -- CP-element group 161: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1866_entry_trigger
      -- 
    bpbV3_daemon_CP_906_elements(161) <= bpbV3_daemon_CP_906_elements(8);
    -- CP-element group 162:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 162: predecessors 
    -- CP-element group 162: successors 
    -- CP-element group 162:  members (2) 
      -- CP-element group 162: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1866_entry_sample_req
      -- CP-element group 162: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1866_entry_sample_req_ps
      -- 
    phi_stmt_1866_entry_sample_req_1247_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_1866_entry_sample_req_1247_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => bpbV3_daemon_CP_906_elements(162), ack => phi_stmt_1866_req_1); -- 
    -- Element group bpbV3_daemon_CP_906_elements(162) is bound as output of CP function.
    -- CP-element group 163:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 163: predecessors 
    -- CP-element group 163: successors 
    -- CP-element group 163:  members (2) 
      -- CP-element group 163: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1866_phi_mux_ack
      -- CP-element group 163: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1866_phi_mux_ack_ps
      -- 
    phi_stmt_1866_phi_mux_ack_1250_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 163_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_1866_ack_0, ack => bpbV3_daemon_CP_906_elements(163)); -- 
    -- CP-element group 164:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 164: predecessors 
    -- CP-element group 164: successors 
    -- CP-element group 164: 	166 
    -- CP-element group 164:  members (4) 
      -- CP-element group 164: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_lookup_state_1868_sample_start__ps
      -- CP-element group 164: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_lookup_state_1868_sample_start_
      -- CP-element group 164: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_lookup_state_1868_Sample/$entry
      -- CP-element group 164: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_lookup_state_1868_Sample/req
      -- 
    req_1263_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1263_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => bpbV3_daemon_CP_906_elements(164), ack => next_lookup_state_2075_1868_buf_req_0); -- 
    -- Element group bpbV3_daemon_CP_906_elements(164) is bound as output of CP function.
    -- CP-element group 165:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 165: predecessors 
    -- CP-element group 165: successors 
    -- CP-element group 165: 	167 
    -- CP-element group 165:  members (4) 
      -- CP-element group 165: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_lookup_state_1868_update_start__ps
      -- CP-element group 165: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_lookup_state_1868_update_start_
      -- CP-element group 165: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_lookup_state_1868_Update/$entry
      -- CP-element group 165: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_lookup_state_1868_Update/req
      -- 
    req_1268_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1268_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => bpbV3_daemon_CP_906_elements(165), ack => next_lookup_state_2075_1868_buf_req_1); -- 
    -- Element group bpbV3_daemon_CP_906_elements(165) is bound as output of CP function.
    -- CP-element group 166:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 166: predecessors 
    -- CP-element group 166: 	164 
    -- CP-element group 166: successors 
    -- CP-element group 166:  members (4) 
      -- CP-element group 166: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_lookup_state_1868_sample_completed__ps
      -- CP-element group 166: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_lookup_state_1868_sample_completed_
      -- CP-element group 166: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_lookup_state_1868_Sample/$exit
      -- CP-element group 166: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_lookup_state_1868_Sample/ack
      -- 
    ack_1264_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 166_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_lookup_state_2075_1868_buf_ack_0, ack => bpbV3_daemon_CP_906_elements(166)); -- 
    -- CP-element group 167:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 167: predecessors 
    -- CP-element group 167: 	165 
    -- CP-element group 167: successors 
    -- CP-element group 167:  members (4) 
      -- CP-element group 167: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_lookup_state_1868_update_completed__ps
      -- CP-element group 167: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_lookup_state_1868_update_completed_
      -- CP-element group 167: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_lookup_state_1868_Update/$exit
      -- CP-element group 167: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_next_lookup_state_1868_Update/ack
      -- 
    ack_1269_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 167_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_lookup_state_2075_1868_buf_ack_1, ack => bpbV3_daemon_CP_906_elements(167)); -- 
    -- CP-element group 168:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 168: predecessors 
    -- CP-element group 168: successors 
    -- CP-element group 168:  members (4) 
      -- CP-element group 168: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_S_IDLE_1869_sample_start__ps
      -- CP-element group 168: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_S_IDLE_1869_sample_completed__ps
      -- CP-element group 168: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_S_IDLE_1869_sample_start_
      -- CP-element group 168: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_S_IDLE_1869_sample_completed_
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(168) is bound as output of CP function.
    -- CP-element group 169:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 169: predecessors 
    -- CP-element group 169: successors 
    -- CP-element group 169: 	171 
    -- CP-element group 169:  members (2) 
      -- CP-element group 169: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_S_IDLE_1869_update_start__ps
      -- CP-element group 169: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_S_IDLE_1869_update_start_
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(169) is bound as output of CP function.
    -- CP-element group 170:  join  transition  bypass  pipeline-parent 
    -- CP-element group 170: predecessors 
    -- CP-element group 170: 	171 
    -- CP-element group 170: successors 
    -- CP-element group 170:  members (1) 
      -- CP-element group 170: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_S_IDLE_1869_update_completed__ps
      -- 
    bpbV3_daemon_CP_906_elements(170) <= bpbV3_daemon_CP_906_elements(171);
    -- CP-element group 171:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 171: predecessors 
    -- CP-element group 171: 	169 
    -- CP-element group 171: successors 
    -- CP-element group 171: 	170 
    -- CP-element group 171:  members (1) 
      -- CP-element group 171: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_S_IDLE_1869_update_completed_
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(171) is a control-delay.
    cp_element_171_delay: control_delay_element  generic map(name => " 171_delay", delay_value => 1)  port map(req => bpbV3_daemon_CP_906_elements(169), ack => bpbV3_daemon_CP_906_elements(171), clk => clk, reset =>reset);
    -- CP-element group 172:  join  transition  bypass  pipeline-parent 
    -- CP-element group 172: predecessors 
    -- CP-element group 172: 	9 
    -- CP-element group 172: marked-predecessors 
    -- CP-element group 172: 	12 
    -- CP-element group 172: successors 
    -- CP-element group 172: 	11 
    -- CP-element group 172:  members (1) 
      -- CP-element group 172: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1870_sample_start_
      -- 
    bpbV3_daemon_cp_element_group_172: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 33) := "bpbV3_daemon_cp_element_group_172"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= bpbV3_daemon_CP_906_elements(9) & bpbV3_daemon_CP_906_elements(12);
      gj_bpbV3_daemon_cp_element_group_172 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(172), clk => clk, reset => reset); --
    end block;
    -- CP-element group 173:  join  transition  bypass  pipeline-parent 
    -- CP-element group 173: predecessors 
    -- CP-element group 173: 	9 
    -- CP-element group 173: marked-predecessors 
    -- CP-element group 173: 	177 
    -- CP-element group 173: successors 
    -- CP-element group 173: 	14 
    -- CP-element group 173:  members (1) 
      -- CP-element group 173: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1870_update_start_
      -- 
    bpbV3_daemon_cp_element_group_173: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 33) := "bpbV3_daemon_cp_element_group_173"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= bpbV3_daemon_CP_906_elements(9) & bpbV3_daemon_CP_906_elements(177);
      gj_bpbV3_daemon_cp_element_group_173 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(173), clk => clk, reset => reset); --
    end block;
    -- CP-element group 174:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 174: predecessors 
    -- CP-element group 174: 	11 
    -- CP-element group 174: successors 
    -- CP-element group 174:  members (1) 
      -- CP-element group 174: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1870_sample_start__ps
      -- 
    bpbV3_daemon_CP_906_elements(174) <= bpbV3_daemon_CP_906_elements(11);
    -- CP-element group 175:  join  transition  bypass  pipeline-parent 
    -- CP-element group 175: predecessors 
    -- CP-element group 175: successors 
    -- CP-element group 175: 	12 
    -- CP-element group 175:  members (1) 
      -- CP-element group 175: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1870_sample_completed__ps
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(175) is bound as output of CP function.
    -- CP-element group 176:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 176: predecessors 
    -- CP-element group 176: 	14 
    -- CP-element group 176: 	19 
    -- CP-element group 176: successors 
    -- CP-element group 176:  members (1) 
      -- CP-element group 176: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1870_update_start__ps
      -- 
    bpbV3_daemon_cp_element_group_176: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 33) := "bpbV3_daemon_cp_element_group_176"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= bpbV3_daemon_CP_906_elements(14) & bpbV3_daemon_CP_906_elements(19);
      gj_bpbV3_daemon_cp_element_group_176 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(176), clk => clk, reset => reset); --
    end block;
    -- CP-element group 177:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 177: predecessors 
    -- CP-element group 177: successors 
    -- CP-element group 177: 	15 
    -- CP-element group 177: marked-successors 
    -- CP-element group 177: 	173 
    -- CP-element group 177:  members (2) 
      -- CP-element group 177: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1870_update_completed_
      -- CP-element group 177: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1870_update_completed__ps
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(177) is bound as output of CP function.
    -- CP-element group 178:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 178: predecessors 
    -- CP-element group 178: 	7 
    -- CP-element group 178: successors 
    -- CP-element group 178:  members (1) 
      -- CP-element group 178: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1870_loopback_trigger
      -- 
    bpbV3_daemon_CP_906_elements(178) <= bpbV3_daemon_CP_906_elements(7);
    -- CP-element group 179:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 179: predecessors 
    -- CP-element group 179: successors 
    -- CP-element group 179:  members (2) 
      -- CP-element group 179: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1870_loopback_sample_req
      -- CP-element group 179: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1870_loopback_sample_req_ps
      -- 
    phi_stmt_1870_loopback_sample_req_1288_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_1870_loopback_sample_req_1288_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => bpbV3_daemon_CP_906_elements(179), ack => phi_stmt_1870_req_0); -- 
    -- Element group bpbV3_daemon_CP_906_elements(179) is bound as output of CP function.
    -- CP-element group 180:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 180: predecessors 
    -- CP-element group 180: 	8 
    -- CP-element group 180: successors 
    -- CP-element group 180:  members (1) 
      -- CP-element group 180: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1870_entry_trigger
      -- 
    bpbV3_daemon_CP_906_elements(180) <= bpbV3_daemon_CP_906_elements(8);
    -- CP-element group 181:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 181: predecessors 
    -- CP-element group 181: successors 
    -- CP-element group 181:  members (2) 
      -- CP-element group 181: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1870_entry_sample_req
      -- CP-element group 181: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1870_entry_sample_req_ps
      -- 
    phi_stmt_1870_entry_sample_req_1291_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_1870_entry_sample_req_1291_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => bpbV3_daemon_CP_906_elements(181), ack => phi_stmt_1870_req_1); -- 
    -- Element group bpbV3_daemon_CP_906_elements(181) is bound as output of CP function.
    -- CP-element group 182:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 182: predecessors 
    -- CP-element group 182: successors 
    -- CP-element group 182:  members (2) 
      -- CP-element group 182: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1870_phi_mux_ack
      -- CP-element group 182: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/phi_stmt_1870_phi_mux_ack_ps
      -- 
    phi_stmt_1870_phi_mux_ack_1294_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 182_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_1870_ack_0, ack => bpbV3_daemon_CP_906_elements(182)); -- 
    -- CP-element group 183:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 183: predecessors 
    -- CP-element group 183: successors 
    -- CP-element group 183: 	185 
    -- CP-element group 183:  members (4) 
      -- CP-element group 183: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_get_update_command_1872_sample_start__ps
      -- CP-element group 183: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_get_update_command_1872_sample_start_
      -- CP-element group 183: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_get_update_command_1872_Sample/$entry
      -- CP-element group 183: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_get_update_command_1872_Sample/req
      -- 
    req_1307_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1307_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => bpbV3_daemon_CP_906_elements(183), ack => get_update_command_1985_1872_buf_req_0); -- 
    -- Element group bpbV3_daemon_CP_906_elements(183) is bound as output of CP function.
    -- CP-element group 184:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 184: predecessors 
    -- CP-element group 184: successors 
    -- CP-element group 184: 	186 
    -- CP-element group 184:  members (4) 
      -- CP-element group 184: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_get_update_command_1872_update_start__ps
      -- CP-element group 184: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_get_update_command_1872_update_start_
      -- CP-element group 184: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_get_update_command_1872_Update/$entry
      -- CP-element group 184: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_get_update_command_1872_Update/req
      -- 
    req_1312_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1312_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => bpbV3_daemon_CP_906_elements(184), ack => get_update_command_1985_1872_buf_req_1); -- 
    -- Element group bpbV3_daemon_CP_906_elements(184) is bound as output of CP function.
    -- CP-element group 185:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 185: predecessors 
    -- CP-element group 185: 	183 
    -- CP-element group 185: successors 
    -- CP-element group 185:  members (4) 
      -- CP-element group 185: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_get_update_command_1872_sample_completed__ps
      -- CP-element group 185: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_get_update_command_1872_sample_completed_
      -- CP-element group 185: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_get_update_command_1872_Sample/$exit
      -- CP-element group 185: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_get_update_command_1872_Sample/ack
      -- 
    ack_1308_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 185_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => get_update_command_1985_1872_buf_ack_0, ack => bpbV3_daemon_CP_906_elements(185)); -- 
    -- CP-element group 186:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 186: predecessors 
    -- CP-element group 186: 	184 
    -- CP-element group 186: successors 
    -- CP-element group 186:  members (4) 
      -- CP-element group 186: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_get_update_command_1872_update_completed__ps
      -- CP-element group 186: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_get_update_command_1872_update_completed_
      -- CP-element group 186: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_get_update_command_1872_Update/$exit
      -- CP-element group 186: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/R_get_update_command_1872_Update/ack
      -- 
    ack_1313_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 186_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => get_update_command_1985_1872_buf_ack_1, ack => bpbV3_daemon_CP_906_elements(186)); -- 
    -- CP-element group 187:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 187: predecessors 
    -- CP-element group 187: successors 
    -- CP-element group 187:  members (4) 
      -- CP-element group 187: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1873_sample_start__ps
      -- CP-element group 187: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1873_sample_completed__ps
      -- CP-element group 187: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1873_sample_start_
      -- CP-element group 187: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1873_sample_completed_
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(187) is bound as output of CP function.
    -- CP-element group 188:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 188: predecessors 
    -- CP-element group 188: successors 
    -- CP-element group 188: 	190 
    -- CP-element group 188:  members (2) 
      -- CP-element group 188: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1873_update_start__ps
      -- CP-element group 188: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1873_update_start_
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(188) is bound as output of CP function.
    -- CP-element group 189:  join  transition  bypass  pipeline-parent 
    -- CP-element group 189: predecessors 
    -- CP-element group 189: 	190 
    -- CP-element group 189: successors 
    -- CP-element group 189:  members (1) 
      -- CP-element group 189: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1873_update_completed__ps
      -- 
    bpbV3_daemon_CP_906_elements(189) <= bpbV3_daemon_CP_906_elements(190);
    -- CP-element group 190:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 190: predecessors 
    -- CP-element group 190: 	188 
    -- CP-element group 190: successors 
    -- CP-element group 190: 	189 
    -- CP-element group 190:  members (1) 
      -- CP-element group 190: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/konst_1873_update_completed_
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(190) is a control-delay.
    cp_element_190_delay: control_delay_element  generic map(name => " 190_delay", delay_value => 1)  port map(req => bpbV3_daemon_CP_906_elements(188), ack => bpbV3_daemon_CP_906_elements(190), clk => clk, reset =>reset);
    -- CP-element group 191:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 191: predecessors 
    -- CP-element group 191: 	158 
    -- CP-element group 191: 	20 
    -- CP-element group 191: 	102 
    -- CP-element group 191: marked-predecessors 
    -- CP-element group 191: 	193 
    -- CP-element group 191: successors 
    -- CP-element group 191: 	192 
    -- CP-element group 191:  members (3) 
      -- CP-element group 191: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/WPIPE_teu_ifetch_branch_predictor_lookup_response_2101_sample_start_
      -- CP-element group 191: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/WPIPE_teu_ifetch_branch_predictor_lookup_response_2101_Sample/$entry
      -- CP-element group 191: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/WPIPE_teu_ifetch_branch_predictor_lookup_response_2101_Sample/req
      -- 
    req_1330_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1330_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => bpbV3_daemon_CP_906_elements(191), ack => WPIPE_teu_ifetch_branch_predictor_lookup_response_2101_inst_req_0); -- 
    bpbV3_daemon_cp_element_group_191: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 0,2 => 0,3 => 1);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 33) := "bpbV3_daemon_cp_element_group_191"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= bpbV3_daemon_CP_906_elements(158) & bpbV3_daemon_CP_906_elements(20) & bpbV3_daemon_CP_906_elements(102) & bpbV3_daemon_CP_906_elements(193);
      gj_bpbV3_daemon_cp_element_group_191 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(191), clk => clk, reset => reset); --
    end block;
    -- CP-element group 192:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 192: predecessors 
    -- CP-element group 192: 	191 
    -- CP-element group 192: successors 
    -- CP-element group 192: 	193 
    -- CP-element group 192: marked-successors 
    -- CP-element group 192: 	154 
    -- CP-element group 192: 	17 
    -- CP-element group 192: 	98 
    -- CP-element group 192:  members (6) 
      -- CP-element group 192: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/WPIPE_teu_ifetch_branch_predictor_lookup_response_2101_sample_completed_
      -- CP-element group 192: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/WPIPE_teu_ifetch_branch_predictor_lookup_response_2101_update_start_
      -- CP-element group 192: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/WPIPE_teu_ifetch_branch_predictor_lookup_response_2101_Sample/$exit
      -- CP-element group 192: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/WPIPE_teu_ifetch_branch_predictor_lookup_response_2101_Sample/ack
      -- CP-element group 192: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/WPIPE_teu_ifetch_branch_predictor_lookup_response_2101_Update/$entry
      -- CP-element group 192: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/WPIPE_teu_ifetch_branch_predictor_lookup_response_2101_Update/req
      -- 
    ack_1331_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 192_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_ifetch_branch_predictor_lookup_response_2101_inst_ack_0, ack => bpbV3_daemon_CP_906_elements(192)); -- 
    req_1335_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1335_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => bpbV3_daemon_CP_906_elements(192), ack => WPIPE_teu_ifetch_branch_predictor_lookup_response_2101_inst_req_1); -- 
    -- CP-element group 193:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 193: predecessors 
    -- CP-element group 193: 	192 
    -- CP-element group 193: successors 
    -- CP-element group 193: 	195 
    -- CP-element group 193: marked-successors 
    -- CP-element group 193: 	191 
    -- CP-element group 193:  members (3) 
      -- CP-element group 193: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/WPIPE_teu_ifetch_branch_predictor_lookup_response_2101_update_completed_
      -- CP-element group 193: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/WPIPE_teu_ifetch_branch_predictor_lookup_response_2101_Update/$exit
      -- CP-element group 193: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/WPIPE_teu_ifetch_branch_predictor_lookup_response_2101_Update/ack
      -- 
    ack_1336_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 193_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_ifetch_branch_predictor_lookup_response_2101_inst_ack_1, ack => bpbV3_daemon_CP_906_elements(193)); -- 
    -- CP-element group 194:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 194: predecessors 
    -- CP-element group 194: 	9 
    -- CP-element group 194: successors 
    -- CP-element group 194: 	10 
    -- CP-element group 194:  members (1) 
      -- CP-element group 194: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/loop_body_delay_to_condition_start
      -- 
    -- Element group bpbV3_daemon_CP_906_elements(194) is a control-delay.
    cp_element_194_delay: control_delay_element  generic map(name => " 194_delay", delay_value => 1)  port map(req => bpbV3_daemon_CP_906_elements(9), ack => bpbV3_daemon_CP_906_elements(194), clk => clk, reset =>reset);
    -- CP-element group 195:  join  transition  bypass  pipeline-parent 
    -- CP-element group 195: predecessors 
    -- CP-element group 195: 	193 
    -- CP-element group 195: 	12 
    -- CP-element group 195: successors 
    -- CP-element group 195: 	6 
    -- CP-element group 195:  members (1) 
      -- CP-element group 195: 	 branch_block_stmt_1825/do_while_stmt_1826/do_while_stmt_1826_loop_body/$exit
      -- 
    bpbV3_daemon_cp_element_group_195: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 7);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 33) := "bpbV3_daemon_cp_element_group_195"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= bpbV3_daemon_CP_906_elements(193) & bpbV3_daemon_CP_906_elements(12);
      gj_bpbV3_daemon_cp_element_group_195 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(195), clk => clk, reset => reset); --
    end block;
    -- CP-element group 196:  transition  input  bypass  pipeline-parent 
    -- CP-element group 196: predecessors 
    -- CP-element group 196: 	5 
    -- CP-element group 196: successors 
    -- CP-element group 196:  members (2) 
      -- CP-element group 196: 	 branch_block_stmt_1825/do_while_stmt_1826/loop_exit/$exit
      -- CP-element group 196: 	 branch_block_stmt_1825/do_while_stmt_1826/loop_exit/ack
      -- 
    ack_1341_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 196_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_1826_branch_ack_0, ack => bpbV3_daemon_CP_906_elements(196)); -- 
    -- CP-element group 197:  transition  input  bypass  pipeline-parent 
    -- CP-element group 197: predecessors 
    -- CP-element group 197: 	5 
    -- CP-element group 197: successors 
    -- CP-element group 197:  members (2) 
      -- CP-element group 197: 	 branch_block_stmt_1825/do_while_stmt_1826/loop_taken/$exit
      -- CP-element group 197: 	 branch_block_stmt_1825/do_while_stmt_1826/loop_taken/ack
      -- 
    ack_1345_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 197_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_1826_branch_ack_1, ack => bpbV3_daemon_CP_906_elements(197)); -- 
    -- CP-element group 198:  transition  bypass  pipeline-parent 
    -- CP-element group 198: predecessors 
    -- CP-element group 198: 	3 
    -- CP-element group 198: successors 
    -- CP-element group 198: 	1 
    -- CP-element group 198:  members (1) 
      -- CP-element group 198: 	 branch_block_stmt_1825/do_while_stmt_1826/$exit
      -- 
    bpbV3_daemon_CP_906_elements(198) <= bpbV3_daemon_CP_906_elements(3);
    bpbV3_daemon_do_while_stmt_1826_terminator_1346: loop_terminator -- 
      generic map (name => " bpbV3_daemon_do_while_stmt_1826_terminator_1346", max_iterations_in_flight =>7) 
      port map(loop_body_exit => bpbV3_daemon_CP_906_elements(6),loop_continue => bpbV3_daemon_CP_906_elements(197),loop_terminate => bpbV3_daemon_CP_906_elements(196),loop_back => bpbV3_daemon_CP_906_elements(4),loop_exit => bpbV3_daemon_CP_906_elements(3),clk => clk, reset => reset); -- 
    phi_stmt_1828_phi_seq_980_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= bpbV3_daemon_CP_906_elements(21);
      bpbV3_daemon_CP_906_elements(26)<= src_sample_reqs(0);
      src_sample_acks(0)  <= bpbV3_daemon_CP_906_elements(30);
      bpbV3_daemon_CP_906_elements(27)<= src_update_reqs(0);
      src_update_acks(0)  <= bpbV3_daemon_CP_906_elements(31);
      bpbV3_daemon_CP_906_elements(22) <= phi_mux_reqs(0);
      triggers(1)  <= bpbV3_daemon_CP_906_elements(23);
      bpbV3_daemon_CP_906_elements(32)<= src_sample_reqs(1);
      src_sample_acks(1)  <= bpbV3_daemon_CP_906_elements(32);
      bpbV3_daemon_CP_906_elements(33)<= src_update_reqs(1);
      src_update_acks(1)  <= bpbV3_daemon_CP_906_elements(34);
      bpbV3_daemon_CP_906_elements(24) <= phi_mux_reqs(1);
      phi_stmt_1828_phi_seq_980 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_1828_phi_seq_980") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => bpbV3_daemon_CP_906_elements(18), 
          phi_sample_ack => bpbV3_daemon_CP_906_elements(19), 
          phi_update_req => bpbV3_daemon_CP_906_elements(14), 
          phi_update_ack => bpbV3_daemon_CP_906_elements(20), 
          phi_mux_ack => bpbV3_daemon_CP_906_elements(25), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_1839_phi_seq_1024_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= bpbV3_daemon_CP_906_elements(42);
      bpbV3_daemon_CP_906_elements(47)<= src_sample_reqs(0);
      src_sample_acks(0)  <= bpbV3_daemon_CP_906_elements(51);
      bpbV3_daemon_CP_906_elements(48)<= src_update_reqs(0);
      src_update_acks(0)  <= bpbV3_daemon_CP_906_elements(52);
      bpbV3_daemon_CP_906_elements(43) <= phi_mux_reqs(0);
      triggers(1)  <= bpbV3_daemon_CP_906_elements(44);
      bpbV3_daemon_CP_906_elements(53)<= src_sample_reqs(1);
      src_sample_acks(1)  <= bpbV3_daemon_CP_906_elements(53);
      bpbV3_daemon_CP_906_elements(54)<= src_update_reqs(1);
      src_update_acks(1)  <= bpbV3_daemon_CP_906_elements(55);
      bpbV3_daemon_CP_906_elements(45) <= phi_mux_reqs(1);
      phi_stmt_1839_phi_seq_1024 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_1839_phi_seq_1024") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => bpbV3_daemon_CP_906_elements(38), 
          phi_sample_ack => bpbV3_daemon_CP_906_elements(39), 
          phi_update_req => bpbV3_daemon_CP_906_elements(40), 
          phi_update_ack => bpbV3_daemon_CP_906_elements(41), 
          phi_mux_ack => bpbV3_daemon_CP_906_elements(46), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_1844_phi_seq_1068_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= bpbV3_daemon_CP_906_elements(63);
      bpbV3_daemon_CP_906_elements(68)<= src_sample_reqs(0);
      src_sample_acks(0)  <= bpbV3_daemon_CP_906_elements(70);
      bpbV3_daemon_CP_906_elements(69)<= src_update_reqs(0);
      src_update_acks(0)  <= bpbV3_daemon_CP_906_elements(71);
      bpbV3_daemon_CP_906_elements(64) <= phi_mux_reqs(0);
      triggers(1)  <= bpbV3_daemon_CP_906_elements(65);
      bpbV3_daemon_CP_906_elements(72)<= src_sample_reqs(1);
      src_sample_acks(1)  <= bpbV3_daemon_CP_906_elements(72);
      bpbV3_daemon_CP_906_elements(73)<= src_update_reqs(1);
      src_update_acks(1)  <= bpbV3_daemon_CP_906_elements(74);
      bpbV3_daemon_CP_906_elements(66) <= phi_mux_reqs(1);
      phi_stmt_1844_phi_seq_1068 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_1844_phi_seq_1068") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => bpbV3_daemon_CP_906_elements(59), 
          phi_sample_ack => bpbV3_daemon_CP_906_elements(60), 
          phi_update_req => bpbV3_daemon_CP_906_elements(61), 
          phi_update_ack => bpbV3_daemon_CP_906_elements(62), 
          phi_mux_ack => bpbV3_daemon_CP_906_elements(67), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_1848_phi_seq_1112_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= bpbV3_daemon_CP_906_elements(82);
      bpbV3_daemon_CP_906_elements(87)<= src_sample_reqs(0);
      src_sample_acks(0)  <= bpbV3_daemon_CP_906_elements(91);
      bpbV3_daemon_CP_906_elements(88)<= src_update_reqs(0);
      src_update_acks(0)  <= bpbV3_daemon_CP_906_elements(92);
      bpbV3_daemon_CP_906_elements(83) <= phi_mux_reqs(0);
      triggers(1)  <= bpbV3_daemon_CP_906_elements(84);
      bpbV3_daemon_CP_906_elements(93)<= src_sample_reqs(1);
      src_sample_acks(1)  <= bpbV3_daemon_CP_906_elements(93);
      bpbV3_daemon_CP_906_elements(94)<= src_update_reqs(1);
      src_update_acks(1)  <= bpbV3_daemon_CP_906_elements(95);
      bpbV3_daemon_CP_906_elements(85) <= phi_mux_reqs(1);
      phi_stmt_1848_phi_seq_1112 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_1848_phi_seq_1112") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => bpbV3_daemon_CP_906_elements(78), 
          phi_sample_ack => bpbV3_daemon_CP_906_elements(79), 
          phi_update_req => bpbV3_daemon_CP_906_elements(80), 
          phi_update_ack => bpbV3_daemon_CP_906_elements(81), 
          phi_mux_ack => bpbV3_daemon_CP_906_elements(86), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_1852_phi_seq_1156_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= bpbV3_daemon_CP_906_elements(103);
      bpbV3_daemon_CP_906_elements(108)<= src_sample_reqs(0);
      src_sample_acks(0)  <= bpbV3_daemon_CP_906_elements(110);
      bpbV3_daemon_CP_906_elements(109)<= src_update_reqs(0);
      src_update_acks(0)  <= bpbV3_daemon_CP_906_elements(111);
      bpbV3_daemon_CP_906_elements(104) <= phi_mux_reqs(0);
      triggers(1)  <= bpbV3_daemon_CP_906_elements(105);
      bpbV3_daemon_CP_906_elements(112)<= src_sample_reqs(1);
      src_sample_acks(1)  <= bpbV3_daemon_CP_906_elements(112);
      bpbV3_daemon_CP_906_elements(113)<= src_update_reqs(1);
      src_update_acks(1)  <= bpbV3_daemon_CP_906_elements(114);
      bpbV3_daemon_CP_906_elements(106) <= phi_mux_reqs(1);
      phi_stmt_1852_phi_seq_1156 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_1852_phi_seq_1156") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => bpbV3_daemon_CP_906_elements(99), 
          phi_sample_ack => bpbV3_daemon_CP_906_elements(100), 
          phi_update_req => bpbV3_daemon_CP_906_elements(101), 
          phi_update_ack => bpbV3_daemon_CP_906_elements(102), 
          phi_mux_ack => bpbV3_daemon_CP_906_elements(107), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_1856_phi_seq_1190_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= bpbV3_daemon_CP_906_elements(122);
      bpbV3_daemon_CP_906_elements(127)<= src_sample_reqs(0);
      src_sample_acks(0)  <= bpbV3_daemon_CP_906_elements(127);
      bpbV3_daemon_CP_906_elements(128)<= src_update_reqs(0);
      src_update_acks(0)  <= bpbV3_daemon_CP_906_elements(129);
      bpbV3_daemon_CP_906_elements(123) <= phi_mux_reqs(0);
      triggers(1)  <= bpbV3_daemon_CP_906_elements(124);
      bpbV3_daemon_CP_906_elements(131)<= src_sample_reqs(1);
      src_sample_acks(1)  <= bpbV3_daemon_CP_906_elements(131);
      bpbV3_daemon_CP_906_elements(132)<= src_update_reqs(1);
      src_update_acks(1)  <= bpbV3_daemon_CP_906_elements(133);
      bpbV3_daemon_CP_906_elements(125) <= phi_mux_reqs(1);
      phi_stmt_1856_phi_seq_1190 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_1856_phi_seq_1190") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => bpbV3_daemon_CP_906_elements(118), 
          phi_sample_ack => bpbV3_daemon_CP_906_elements(119), 
          phi_update_req => bpbV3_daemon_CP_906_elements(120), 
          phi_update_ack => bpbV3_daemon_CP_906_elements(121), 
          phi_mux_ack => bpbV3_daemon_CP_906_elements(126), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_1862_phi_seq_1234_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= bpbV3_daemon_CP_906_elements(140);
      bpbV3_daemon_CP_906_elements(145)<= src_sample_reqs(0);
      src_sample_acks(0)  <= bpbV3_daemon_CP_906_elements(147);
      bpbV3_daemon_CP_906_elements(146)<= src_update_reqs(0);
      src_update_acks(0)  <= bpbV3_daemon_CP_906_elements(148);
      bpbV3_daemon_CP_906_elements(141) <= phi_mux_reqs(0);
      triggers(1)  <= bpbV3_daemon_CP_906_elements(142);
      bpbV3_daemon_CP_906_elements(149)<= src_sample_reqs(1);
      src_sample_acks(1)  <= bpbV3_daemon_CP_906_elements(149);
      bpbV3_daemon_CP_906_elements(150)<= src_update_reqs(1);
      src_update_acks(1)  <= bpbV3_daemon_CP_906_elements(151);
      bpbV3_daemon_CP_906_elements(143) <= phi_mux_reqs(1);
      phi_stmt_1862_phi_seq_1234 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_1862_phi_seq_1234") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => bpbV3_daemon_CP_906_elements(11), 
          phi_sample_ack => bpbV3_daemon_CP_906_elements(137), 
          phi_update_req => bpbV3_daemon_CP_906_elements(138), 
          phi_update_ack => bpbV3_daemon_CP_906_elements(139), 
          phi_mux_ack => bpbV3_daemon_CP_906_elements(144), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_1866_phi_seq_1278_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= bpbV3_daemon_CP_906_elements(159);
      bpbV3_daemon_CP_906_elements(164)<= src_sample_reqs(0);
      src_sample_acks(0)  <= bpbV3_daemon_CP_906_elements(166);
      bpbV3_daemon_CP_906_elements(165)<= src_update_reqs(0);
      src_update_acks(0)  <= bpbV3_daemon_CP_906_elements(167);
      bpbV3_daemon_CP_906_elements(160) <= phi_mux_reqs(0);
      triggers(1)  <= bpbV3_daemon_CP_906_elements(161);
      bpbV3_daemon_CP_906_elements(168)<= src_sample_reqs(1);
      src_sample_acks(1)  <= bpbV3_daemon_CP_906_elements(168);
      bpbV3_daemon_CP_906_elements(169)<= src_update_reqs(1);
      src_update_acks(1)  <= bpbV3_daemon_CP_906_elements(170);
      bpbV3_daemon_CP_906_elements(162) <= phi_mux_reqs(1);
      phi_stmt_1866_phi_seq_1278 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_1866_phi_seq_1278") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => bpbV3_daemon_CP_906_elements(155), 
          phi_sample_ack => bpbV3_daemon_CP_906_elements(156), 
          phi_update_req => bpbV3_daemon_CP_906_elements(157), 
          phi_update_ack => bpbV3_daemon_CP_906_elements(158), 
          phi_mux_ack => bpbV3_daemon_CP_906_elements(163), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_1870_phi_seq_1322_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= bpbV3_daemon_CP_906_elements(178);
      bpbV3_daemon_CP_906_elements(183)<= src_sample_reqs(0);
      src_sample_acks(0)  <= bpbV3_daemon_CP_906_elements(185);
      bpbV3_daemon_CP_906_elements(184)<= src_update_reqs(0);
      src_update_acks(0)  <= bpbV3_daemon_CP_906_elements(186);
      bpbV3_daemon_CP_906_elements(179) <= phi_mux_reqs(0);
      triggers(1)  <= bpbV3_daemon_CP_906_elements(180);
      bpbV3_daemon_CP_906_elements(187)<= src_sample_reqs(1);
      src_sample_acks(1)  <= bpbV3_daemon_CP_906_elements(187);
      bpbV3_daemon_CP_906_elements(188)<= src_update_reqs(1);
      src_update_acks(1)  <= bpbV3_daemon_CP_906_elements(189);
      bpbV3_daemon_CP_906_elements(181) <= phi_mux_reqs(1);
      phi_stmt_1870_phi_seq_1322 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_1870_phi_seq_1322") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => bpbV3_daemon_CP_906_elements(174), 
          phi_sample_ack => bpbV3_daemon_CP_906_elements(175), 
          phi_update_req => bpbV3_daemon_CP_906_elements(176), 
          phi_update_ack => bpbV3_daemon_CP_906_elements(177), 
          phi_mux_ack => bpbV3_daemon_CP_906_elements(182), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    entry_tmerge_931_block : block -- 
      signal preds : BooleanArray(0 to 1);
      begin -- 
        preds(0)  <= bpbV3_daemon_CP_906_elements(7);
        preds(1)  <= bpbV3_daemon_CP_906_elements(8);
        entry_tmerge_931 : transition_merge -- 
          generic map(name => " entry_tmerge_931")
          port map (preds => preds, symbol_out => bpbV3_daemon_CP_906_elements(9));
          -- 
    end block;
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_1928_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_2025_wire : std_logic_vector(0 downto 0);
    signal EQ_u1_u1_2058_wire : std_logic_vector(0 downto 0);
    signal EQ_u1_u1_2067_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_1952_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_1961_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_1968_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_1980_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_1983_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_1997_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_2000_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_2006_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_2016_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_2023_wire : std_logic_vector(0 downto 0);
    signal MUX_1956_wire : std_logic_vector(1 downto 0);
    signal MUX_1958_wire : std_logic_vector(1 downto 0);
    signal MUX_1964_wire : std_logic_vector(1 downto 0);
    signal MUX_1972_wire : std_logic_vector(1 downto 0);
    signal MUX_1974_wire : std_logic_vector(1 downto 0);
    signal MUX_2062_wire : std_logic_vector(0 downto 0);
    signal MUX_2064_wire : std_logic_vector(0 downto 0);
    signal MUX_2071_wire : std_logic_vector(0 downto 0);
    signal MUX_2073_wire : std_logic_vector(0 downto 0);
    signal OR_u2_u2_1965_wire : std_logic_vector(1 downto 0);
    signal RPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_1850_wire : std_logic_vector(30 downto 0);
    signal RPIPE_noblock_teu_ifetch_branch_predictor_update_1842_wire : std_logic_vector(62 downto 0);
    signal RPIPE_random_number_2_2084_wire : std_logic_vector(1 downto 0);
    signal R_S_DONE_2060_wire_constant : std_logic_vector(0 downto 0);
    signal R_S_DONE_2066_wire_constant : std_logic_vector(0 downto 0);
    signal R_S_DONE_2069_wire_constant : std_logic_vector(0 downto 0);
    signal R_S_DONE_2097_wire_constant : std_logic_vector(0 downto 0);
    signal R_S_IDLE_1869_wire_constant : std_logic_vector(0 downto 0);
    signal R_S_IDLE_2057_wire_constant : std_logic_vector(0 downto 0);
    signal R_S_IDLE_2061_wire_constant : std_logic_vector(0 downto 0);
    signal R_S_IDLE_2070_wire_constant : std_logic_vector(0 downto 0);
    signal R_U_IDLE_1865_wire_constant : std_logic_vector(1 downto 0);
    signal R_U_IDLE_1951_wire_constant : std_logic_vector(1 downto 0);
    signal R_U_IDLE_1955_wire_constant : std_logic_vector(1 downto 0);
    signal R_U_IDLE_1971_wire_constant : std_logic_vector(1 downto 0);
    signal R_U_IDLE_1979_wire_constant : std_logic_vector(1 downto 0);
    signal R_U_IDLE_2022_wire_constant : std_logic_vector(1 downto 0);
    signal R_U_S1_1954_wire_constant : std_logic_vector(1 downto 0);
    signal R_U_S1_1960_wire_constant : std_logic_vector(1 downto 0);
    signal R_U_S1_1970_wire_constant : std_logic_vector(1 downto 0);
    signal R_U_S1_1996_wire_constant : std_logic_vector(1 downto 0);
    signal R_U_S1_1999_wire_constant : std_logic_vector(1 downto 0);
    signal R_U_S1_2005_wire_constant : std_logic_vector(1 downto 0);
    signal R_U_S1_2015_wire_constant : std_logic_vector(1 downto 0);
    signal R_U_S2_1962_wire_constant : std_logic_vector(1 downto 0);
    signal R_U_S2_1967_wire_constant : std_logic_vector(1 downto 0);
    signal R_U_S2_1982_wire_constant : std_logic_vector(1 downto 0);
    signal addr_0_2082 : std_logic_vector(7 downto 0);
    signal addr_1_2012 : std_logic_vector(7 downto 0);
    signal call_bpbV3_dual_port_mem_expr_1837_wire : std_logic_vector(109 downto 0);
    signal call_calculate_updated_entry_expr_1992_wire : std_logic_vector(53 downto 0);
    signal enable_0_2078 : std_logic_vector(0 downto 0);
    signal enable_1_2002 : std_logic_vector(0 downto 0);
    signal get_update_command_1985 : std_logic_vector(0 downto 0);
    signal get_update_command_1985_1872_buffered : std_logic_vector(0 downto 0);
    signal get_update_command_d_1870 : std_logic_vector(0 downto 0);
    signal init_bpb_mem_2027 : std_logic_vector(0 downto 0);
    signal init_flag_1856 : std_logic_vector(0 downto 0);
    signal konst_1838_wire_constant : std_logic_vector(109 downto 0);
    signal konst_1843_wire_constant : std_logic_vector(62 downto 0);
    signal konst_1847_wire_constant : std_logic_vector(62 downto 0);
    signal konst_1851_wire_constant : std_logic_vector(30 downto 0);
    signal konst_1855_wire_constant : std_logic_vector(30 downto 0);
    signal konst_1873_wire_constant : std_logic_vector(0 downto 0);
    signal konst_1957_wire_constant : std_logic_vector(1 downto 0);
    signal konst_1963_wire_constant : std_logic_vector(1 downto 0);
    signal konst_1973_wire_constant : std_logic_vector(1 downto 0);
    signal konst_2063_wire_constant : std_logic_vector(0 downto 0);
    signal konst_2072_wire_constant : std_logic_vector(0 downto 0);
    signal konst_2105_wire_constant : std_logic_vector(0 downto 0);
    signal lookup_command_1848 : std_logic_vector(30 downto 0);
    signal lookup_command_d_1852 : std_logic_vector(30 downto 0);
    signal lookup_match_2089 : std_logic_vector(0 downto 0);
    signal lookup_nnpc_30_2089 : std_logic_vector(29 downto 0);
    signal lookup_pc_30_2035 : std_logic_vector(29 downto 0);
    signal lookup_pc_30_d_2054 : std_logic_vector(29 downto 0);
    signal lookup_pc_32_2047 : std_logic_vector(31 downto 0);
    signal lookup_response_2094 : std_logic_vector(30 downto 0);
    signal lookup_state_1866 : std_logic_vector(0 downto 0);
    signal lookup_valid_2031 : std_logic_vector(0 downto 0);
    signal next_lookup_command_d_2041 : std_logic_vector(30 downto 0);
    signal next_lookup_command_d_2041_1854_buffered : std_logic_vector(30 downto 0);
    signal next_lookup_state_2075 : std_logic_vector(0 downto 0);
    signal next_lookup_state_2075_1868_buffered : std_logic_vector(0 downto 0);
    signal next_update_command_d_1932 : std_logic_vector(62 downto 0);
    signal next_update_command_d_1932_1846_buffered : std_logic_vector(62 downto 0);
    signal next_update_state_1976 : std_logic_vector(1 downto 0);
    signal next_update_state_1976_1864_buffered : std_logic_vector(1 downto 0);
    signal read_data_0_1940 : std_logic_vector(53 downto 0);
    signal read_data_1_1948 : std_logic_vector(53 downto 0);
    signal read_data_combined_1828 : std_logic_vector(109 downto 0);
    signal send_lookup_response_2099 : std_logic_vector(0 downto 0);
    signal slice_2008_wire : std_logic_vector(7 downto 0);
    signal slice_2010_wire : std_logic_vector(7 downto 0);
    signal type_cast_1859_wire_constant : std_logic_vector(0 downto 0);
    signal type_cast_1861_wire_constant : std_logic_vector(0 downto 0);
    signal type_cast_1898_wire_constant : std_logic_vector(1 downto 0);
    signal type_cast_1904_wire_constant : std_logic_vector(1 downto 0);
    signal type_cast_2045_wire_constant : std_logic_vector(1 downto 0);
    signal update_br_taken_1882 : std_logic_vector(0 downto 0);
    signal update_br_taken_d_1916 : std_logic_vector(0 downto 0);
    signal update_command_1839 : std_logic_vector(62 downto 0);
    signal update_command_d_1844 : std_logic_vector(62 downto 0);
    signal update_flush_1886 : std_logic_vector(0 downto 0);
    signal update_nnpc_30_1894 : std_logic_vector(29 downto 0);
    signal update_nnpc_30_d_1924 : std_logic_vector(29 downto 0);
    signal update_nnpc_32_1906 : std_logic_vector(31 downto 0);
    signal update_pc_30_1890 : std_logic_vector(29 downto 0);
    signal update_pc_30_d_1920 : std_logic_vector(29 downto 0);
    signal update_pc_32_1900 : std_logic_vector(31 downto 0);
    signal update_state_1862 : std_logic_vector(1 downto 0);
    signal update_valid_1878 : std_logic_vector(0 downto 0);
    signal valid_0_1936 : std_logic_vector(0 downto 0);
    signal valid_1_1944 : std_logic_vector(0 downto 0);
    signal write_data_1_1993 : std_logic_vector(53 downto 0);
    signal writebar_1_2018 : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    R_S_DONE_2060_wire_constant <= "1";
    R_S_DONE_2066_wire_constant <= "1";
    R_S_DONE_2069_wire_constant <= "1";
    R_S_DONE_2097_wire_constant <= "1";
    R_S_IDLE_1869_wire_constant <= "0";
    R_S_IDLE_2057_wire_constant <= "0";
    R_S_IDLE_2061_wire_constant <= "0";
    R_S_IDLE_2070_wire_constant <= "0";
    R_U_IDLE_1865_wire_constant <= "00";
    R_U_IDLE_1951_wire_constant <= "00";
    R_U_IDLE_1955_wire_constant <= "00";
    R_U_IDLE_1971_wire_constant <= "00";
    R_U_IDLE_1979_wire_constant <= "00";
    R_U_IDLE_2022_wire_constant <= "00";
    R_U_S1_1954_wire_constant <= "01";
    R_U_S1_1960_wire_constant <= "01";
    R_U_S1_1970_wire_constant <= "01";
    R_U_S1_1996_wire_constant <= "01";
    R_U_S1_1999_wire_constant <= "01";
    R_U_S1_2005_wire_constant <= "01";
    R_U_S1_2015_wire_constant <= "01";
    R_U_S2_1962_wire_constant <= "10";
    R_U_S2_1967_wire_constant <= "10";
    R_U_S2_1982_wire_constant <= "10";
    konst_1838_wire_constant <= "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    konst_1843_wire_constant <= "000000000000000000000000000000000000000000000000000000000000000";
    konst_1847_wire_constant <= "000000000000000000000000000000000000000000000000000000000000000";
    konst_1851_wire_constant <= "0000000000000000000000000000000";
    konst_1855_wire_constant <= "0000000000000000000000000000000";
    konst_1873_wire_constant <= "0";
    konst_1957_wire_constant <= "00";
    konst_1963_wire_constant <= "00";
    konst_1973_wire_constant <= "00";
    konst_2063_wire_constant <= "0";
    konst_2072_wire_constant <= "0";
    konst_2105_wire_constant <= "1";
    type_cast_1859_wire_constant <= "0";
    type_cast_1861_wire_constant <= "1";
    type_cast_1898_wire_constant <= "00";
    type_cast_1904_wire_constant <= "00";
    type_cast_2045_wire_constant <= "00";
    phi_stmt_1828: Block -- phi operator 
      signal idata: std_logic_vector(219 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= call_bpbV3_dual_port_mem_expr_1837_wire & konst_1838_wire_constant;
      req <= phi_stmt_1828_req_0 & phi_stmt_1828_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_1828",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 110) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_1828_ack_0,
          idata => idata,
          odata => read_data_combined_1828,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_1828
    phi_stmt_1839: Block -- phi operator 
      signal idata: std_logic_vector(125 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= RPIPE_noblock_teu_ifetch_branch_predictor_update_1842_wire & konst_1843_wire_constant;
      req <= phi_stmt_1839_req_0 & phi_stmt_1839_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_1839",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 63) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_1839_ack_0,
          idata => idata,
          odata => update_command_1839,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_1839
    phi_stmt_1844: Block -- phi operator 
      signal idata: std_logic_vector(125 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= next_update_command_d_1932_1846_buffered & konst_1847_wire_constant;
      req <= phi_stmt_1844_req_0 & phi_stmt_1844_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_1844",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 63) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_1844_ack_0,
          idata => idata,
          odata => update_command_d_1844,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_1844
    phi_stmt_1848: Block -- phi operator 
      signal idata: std_logic_vector(61 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= RPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_1850_wire & konst_1851_wire_constant;
      req <= phi_stmt_1848_req_0 & phi_stmt_1848_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_1848",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 31) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_1848_ack_0,
          idata => idata,
          odata => lookup_command_1848,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_1848
    phi_stmt_1852: Block -- phi operator 
      signal idata: std_logic_vector(61 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= next_lookup_command_d_2041_1854_buffered & konst_1855_wire_constant;
      req <= phi_stmt_1852_req_0 & phi_stmt_1852_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_1852",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 31) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_1852_ack_0,
          idata => idata,
          odata => lookup_command_d_1852,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_1852
    phi_stmt_1856: Block -- phi operator 
      signal idata: std_logic_vector(1 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= type_cast_1859_wire_constant & type_cast_1861_wire_constant;
      req <= phi_stmt_1856_req_0 & phi_stmt_1856_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_1856",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 1) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_1856_ack_0,
          idata => idata,
          odata => init_flag_1856,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_1856
    phi_stmt_1862: Block -- phi operator 
      signal idata: std_logic_vector(3 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= next_update_state_1976_1864_buffered & R_U_IDLE_1865_wire_constant;
      req <= phi_stmt_1862_req_0 & phi_stmt_1862_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_1862",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 2) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_1862_ack_0,
          idata => idata,
          odata => update_state_1862,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_1862
    phi_stmt_1866: Block -- phi operator 
      signal idata: std_logic_vector(1 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= next_lookup_state_2075_1868_buffered & R_S_IDLE_1869_wire_constant;
      req <= phi_stmt_1866_req_0 & phi_stmt_1866_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_1866",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 1) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_1866_ack_0,
          idata => idata,
          odata => lookup_state_1866,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_1866
    phi_stmt_1870: Block -- phi operator 
      signal idata: std_logic_vector(1 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= get_update_command_1985_1872_buffered & konst_1873_wire_constant;
      req <= phi_stmt_1870_req_0 & phi_stmt_1870_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_1870",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 1) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_1870_ack_0,
          idata => idata,
          odata => get_update_command_d_1870,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_1870
    -- flow-through select operator MUX_1931_inst
    next_update_command_d_1932 <= update_command_1839 when (AND_u1_u1_1928_wire(0) /=  '0') else update_command_d_1844;
    -- flow-through select operator MUX_1956_inst
    MUX_1956_wire <= R_U_S1_1954_wire_constant when (update_valid_1878(0) /=  '0') else R_U_IDLE_1955_wire_constant;
    -- flow-through select operator MUX_1958_inst
    MUX_1958_wire <= MUX_1956_wire when (EQ_u2_u1_1952_wire(0) /=  '0') else konst_1957_wire_constant;
    -- flow-through select operator MUX_1964_inst
    MUX_1964_wire <= R_U_S2_1962_wire_constant when (EQ_u2_u1_1961_wire(0) /=  '0') else konst_1963_wire_constant;
    -- flow-through select operator MUX_1972_inst
    MUX_1972_wire <= R_U_S1_1970_wire_constant when (update_valid_1878(0) /=  '0') else R_U_IDLE_1971_wire_constant;
    -- flow-through select operator MUX_1974_inst
    MUX_1974_wire <= MUX_1972_wire when (EQ_u2_u1_1968_wire(0) /=  '0') else konst_1973_wire_constant;
    -- flow-through select operator MUX_2011_inst
    addr_1_2012 <= slice_2008_wire when (EQ_u2_u1_2006_wire(0) /=  '0') else slice_2010_wire;
    -- flow-through select operator MUX_2040_inst
    next_lookup_command_d_2041 <= lookup_command_1848 when (lookup_valid_2031(0) /=  '0') else lookup_command_d_1852;
    -- flow-through select operator MUX_2062_inst
    MUX_2062_wire <= R_S_DONE_2060_wire_constant when (lookup_valid_2031(0) /=  '0') else R_S_IDLE_2061_wire_constant;
    -- flow-through select operator MUX_2064_inst
    MUX_2064_wire <= MUX_2062_wire when (EQ_u1_u1_2058_wire(0) /=  '0') else konst_2063_wire_constant;
    -- flow-through select operator MUX_2071_inst
    MUX_2071_wire <= R_S_DONE_2069_wire_constant when (lookup_valid_2031(0) /=  '0') else R_S_IDLE_2070_wire_constant;
    -- flow-through select operator MUX_2073_inst
    MUX_2073_wire <= MUX_2071_wire when (EQ_u1_u1_2067_wire(0) /=  '0') else konst_2072_wire_constant;
    -- flow-through slice operator slice_1877_inst
    update_valid_1878 <= update_command_1839(62 downto 62);
    -- flow-through slice operator slice_1881_inst
    update_br_taken_1882 <= update_command_1839(61 downto 61);
    -- flow-through slice operator slice_1885_inst
    update_flush_1886 <= update_command_1839(60 downto 60);
    -- flow-through slice operator slice_1889_inst
    update_pc_30_1890 <= update_command_1839(59 downto 30);
    -- flow-through slice operator slice_1893_inst
    update_nnpc_30_1894 <= update_command_1839(29 downto 0);
    -- flow-through slice operator slice_1915_inst
    update_br_taken_d_1916 <= update_command_d_1844(61 downto 61);
    -- flow-through slice operator slice_1919_inst
    update_pc_30_d_1920 <= update_command_d_1844(59 downto 30);
    -- flow-through slice operator slice_1923_inst
    update_nnpc_30_d_1924 <= update_command_d_1844(29 downto 0);
    -- flow-through slice operator slice_1935_inst
    valid_0_1936 <= read_data_combined_1828(109 downto 109);
    -- flow-through slice operator slice_1939_inst
    read_data_0_1940 <= read_data_combined_1828(108 downto 55);
    -- flow-through slice operator slice_1943_inst
    valid_1_1944 <= read_data_combined_1828(54 downto 54);
    -- flow-through slice operator slice_1947_inst
    read_data_1_1948 <= read_data_combined_1828(53 downto 0);
    -- flow-through slice operator slice_2008_inst
    slice_2008_wire <= update_pc_30_1890(7 downto 0);
    -- flow-through slice operator slice_2010_inst
    slice_2010_wire <= update_pc_30_d_1920(7 downto 0);
    -- flow-through slice operator slice_2030_inst
    lookup_valid_2031 <= lookup_command_1848(30 downto 30);
    -- flow-through slice operator slice_2034_inst
    lookup_pc_30_2035 <= lookup_command_1848(29 downto 0);
    -- flow-through slice operator slice_2053_inst
    lookup_pc_30_d_2054 <= lookup_command_d_1852(29 downto 0);
    -- flow-through slice operator slice_2081_inst
    addr_0_2082 <= lookup_pc_30_2035(7 downto 0);
    -- interlock W_enable_0_2076_inst
    process(lookup_valid_2031) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := lookup_valid_2031(0 downto 0);
      enable_0_2078 <= tmp_var; -- 
    end process;
    -- interlock W_write_data_1_1986_inst
    process(call_calculate_updated_entry_expr_1992_wire) -- 
      variable tmp_var : std_logic_vector(53 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 53 downto 0) := call_calculate_updated_entry_expr_1992_wire(53 downto 0);
      write_data_1_1993 <= tmp_var; -- 
    end process;
    get_update_command_1985_1872_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= get_update_command_1985_1872_buf_req_0;
      get_update_command_1985_1872_buf_ack_0<= wack(0);
      rreq(0) <= get_update_command_1985_1872_buf_req_1;
      get_update_command_1985_1872_buf_ack_1<= rack(0);
      get_update_command_1985_1872_buf : InterlockBuffer generic map ( -- 
        name => "get_update_command_1985_1872_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 1,
        out_data_width => 1,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => get_update_command_1985,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => get_update_command_1985_1872_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    next_lookup_command_d_2041_1854_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= next_lookup_command_d_2041_1854_buf_req_0;
      next_lookup_command_d_2041_1854_buf_ack_0<= wack(0);
      rreq(0) <= next_lookup_command_d_2041_1854_buf_req_1;
      next_lookup_command_d_2041_1854_buf_ack_1<= rack(0);
      next_lookup_command_d_2041_1854_buf : InterlockBuffer generic map ( -- 
        name => "next_lookup_command_d_2041_1854_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 31,
        out_data_width => 31,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => next_lookup_command_d_2041,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => next_lookup_command_d_2041_1854_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    next_lookup_state_2075_1868_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= next_lookup_state_2075_1868_buf_req_0;
      next_lookup_state_2075_1868_buf_ack_0<= wack(0);
      rreq(0) <= next_lookup_state_2075_1868_buf_req_1;
      next_lookup_state_2075_1868_buf_ack_1<= rack(0);
      next_lookup_state_2075_1868_buf : InterlockBuffer generic map ( -- 
        name => "next_lookup_state_2075_1868_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 1,
        out_data_width => 1,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => next_lookup_state_2075,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => next_lookup_state_2075_1868_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    next_update_command_d_1932_1846_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= next_update_command_d_1932_1846_buf_req_0;
      next_update_command_d_1932_1846_buf_ack_0<= wack(0);
      rreq(0) <= next_update_command_d_1932_1846_buf_req_1;
      next_update_command_d_1932_1846_buf_ack_1<= rack(0);
      next_update_command_d_1932_1846_buf : InterlockBuffer generic map ( -- 
        name => "next_update_command_d_1932_1846_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 63,
        out_data_width => 63,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => next_update_command_d_1932,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => next_update_command_d_1932_1846_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    next_update_state_1976_1864_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= next_update_state_1976_1864_buf_req_0;
      next_update_state_1976_1864_buf_ack_0<= wack(0);
      rreq(0) <= next_update_state_1976_1864_buf_req_1;
      next_update_state_1976_1864_buf_ack_1<= rack(0);
      next_update_state_1976_1864_buf : InterlockBuffer generic map ( -- 
        name => "next_update_state_1976_1864_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 2,
        out_data_width => 2,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => next_update_state_1976,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => next_update_state_1976_1864_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    do_while_stmt_1826_branch: Block -- 
      -- branch-block
      signal condition_sig : std_logic_vector(0 downto 0);
      begin 
      condition_sig <= konst_2105_wire_constant;
      branch_instance: BranchBase -- 
        generic map( name => "do_while_stmt_1826_branch", condition_width => 1,  bypass_flag => true)
        port map( -- 
          condition => condition_sig,
          req => do_while_stmt_1826_branch_req_0,
          ack0 => do_while_stmt_1826_branch_ack_0,
          ack1 => do_while_stmt_1826_branch_ack_1,
          clk => clk,
          reset => reset); -- 
      --
    end Block; -- branch-block
    -- flow through binary operator AND_u1_u1_1928_inst
    AND_u1_u1_1928_wire <= (get_update_command_d_1870 and update_valid_1878);
    -- flow through binary operator AND_u1_u1_2025_inst
    AND_u1_u1_2025_wire <= (EQ_u2_u1_2023_wire and update_flush_1886);
    -- flow through binary operator CONCAT_u1_u31_2093_inst
    process(lookup_match_2089, lookup_nnpc_30_2089) -- 
      variable tmp_var : std_logic_vector(30 downto 0); -- 
    begin -- 
      ApConcat_proc(lookup_match_2089, lookup_nnpc_30_2089, tmp_var);
      lookup_response_2094 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u30_u32_1899_inst
    process(update_pc_30_1890) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApConcat_proc(update_pc_30_1890, type_cast_1898_wire_constant, tmp_var);
      update_pc_32_1900 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u30_u32_1905_inst
    process(update_nnpc_30_1894) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApConcat_proc(update_nnpc_30_1894, type_cast_1904_wire_constant, tmp_var);
      update_nnpc_32_1906 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u30_u32_2046_inst
    process(lookup_pc_30_2035) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApConcat_proc(lookup_pc_30_2035, type_cast_2045_wire_constant, tmp_var);
      lookup_pc_32_2047 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u1_u1_2058_inst
    process(lookup_state_1866) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(lookup_state_1866, R_S_IDLE_2057_wire_constant, tmp_var);
      EQ_u1_u1_2058_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u1_u1_2067_inst
    process(lookup_state_1866) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(lookup_state_1866, R_S_DONE_2066_wire_constant, tmp_var);
      EQ_u1_u1_2067_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u1_u1_2098_inst
    process(lookup_state_1866) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(lookup_state_1866, R_S_DONE_2097_wire_constant, tmp_var);
      send_lookup_response_2099 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_1952_inst
    process(update_state_1862) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(update_state_1862, R_U_IDLE_1951_wire_constant, tmp_var);
      EQ_u2_u1_1952_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_1961_inst
    process(update_state_1862) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(update_state_1862, R_U_S1_1960_wire_constant, tmp_var);
      EQ_u2_u1_1961_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_1968_inst
    process(update_state_1862) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(update_state_1862, R_U_S2_1967_wire_constant, tmp_var);
      EQ_u2_u1_1968_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_1980_inst
    process(update_state_1862) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(update_state_1862, R_U_IDLE_1979_wire_constant, tmp_var);
      EQ_u2_u1_1980_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_1983_inst
    process(next_update_state_1976) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(next_update_state_1976, R_U_S2_1982_wire_constant, tmp_var);
      EQ_u2_u1_1983_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_1997_inst
    process(next_update_state_1976) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(next_update_state_1976, R_U_S1_1996_wire_constant, tmp_var);
      EQ_u2_u1_1997_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_2000_inst
    process(update_state_1862) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(update_state_1862, R_U_S1_1999_wire_constant, tmp_var);
      EQ_u2_u1_2000_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_2006_inst
    process(next_update_state_1976) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(next_update_state_1976, R_U_S1_2005_wire_constant, tmp_var);
      EQ_u2_u1_2006_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_2016_inst
    process(update_state_1862) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(update_state_1862, R_U_S1_2015_wire_constant, tmp_var);
      EQ_u2_u1_2016_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_2023_inst
    process(update_state_1862) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(update_state_1862, R_U_IDLE_2022_wire_constant, tmp_var);
      EQ_u2_u1_2023_wire <= tmp_var; --
    end process;
    -- unary operator NOT_u1_u1_2017_inst
    process(EQ_u2_u1_2016_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", EQ_u2_u1_2016_wire, tmp_var);
      writebar_1_2018 <= tmp_var; -- 
    end process;
    -- flow through binary operator OR_u1_u1_1984_inst
    get_update_command_1985 <= (EQ_u2_u1_1980_wire or EQ_u2_u1_1983_wire);
    -- flow through binary operator OR_u1_u1_2001_inst
    enable_1_2002 <= (EQ_u2_u1_1997_wire or EQ_u2_u1_2000_wire);
    -- flow through binary operator OR_u1_u1_2026_inst
    init_bpb_mem_2027 <= (init_flag_1856 or AND_u1_u1_2025_wire);
    -- flow through binary operator OR_u1_u1_2074_inst
    next_lookup_state_2075 <= (MUX_2064_wire or MUX_2073_wire);
    -- flow through binary operator OR_u2_u2_1965_inst
    OR_u2_u2_1965_wire <= (MUX_1958_wire or MUX_1964_wire);
    -- flow through binary operator OR_u2_u2_1975_inst
    next_update_state_1976 <= (OR_u2_u2_1965_wire or MUX_1974_wire);
    -- shared inport operator group (0) : RPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_1850_inst 
    InportGroup_0: Block -- 
      signal data_out: std_logic_vector(30 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_1850_inst_req_0;
      RPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_1850_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_1850_inst_req_1;
      RPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_1850_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      RPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_1850_wire <= data_out(30 downto 0);
      noblock_teu_ifetch_branch_predictor_lookup_command_read_0_gI: SplitGuardInterface generic map(name => "noblock_teu_ifetch_branch_predictor_lookup_command_read_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      noblock_teu_ifetch_branch_predictor_lookup_command_read_0: InputPort_P2P -- 
        generic map ( name => "noblock_teu_ifetch_branch_predictor_lookup_command_read_0", data_width => 31,    bypass_flag => true,   	nonblocking_read_flag => true,  barrier_flag => false,   queue_depth =>  1)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => noblock_teu_ifetch_branch_predictor_lookup_command_pipe_read_req(0),
          oack => noblock_teu_ifetch_branch_predictor_lookup_command_pipe_read_ack(0),
          odata => noblock_teu_ifetch_branch_predictor_lookup_command_pipe_read_data(30 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 0
    -- shared inport operator group (1) : RPIPE_noblock_teu_ifetch_branch_predictor_update_1842_inst 
    InportGroup_1: Block -- 
      signal data_out: std_logic_vector(62 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_noblock_teu_ifetch_branch_predictor_update_1842_inst_req_0;
      RPIPE_noblock_teu_ifetch_branch_predictor_update_1842_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_noblock_teu_ifetch_branch_predictor_update_1842_inst_req_1;
      RPIPE_noblock_teu_ifetch_branch_predictor_update_1842_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <= get_update_command_1985(0);
      RPIPE_noblock_teu_ifetch_branch_predictor_update_1842_wire <= data_out(62 downto 0);
      noblock_teu_ifetch_branch_predictor_update_read_1_gI: SplitGuardInterface generic map(name => "noblock_teu_ifetch_branch_predictor_update_read_1_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      noblock_teu_ifetch_branch_predictor_update_read_1: InputPort_P2P -- 
        generic map ( name => "noblock_teu_ifetch_branch_predictor_update_read_1", data_width => 63,    bypass_flag => false,   	nonblocking_read_flag => true,  barrier_flag => false,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => noblock_teu_ifetch_branch_predictor_update_pipe_read_req(0),
          oack => noblock_teu_ifetch_branch_predictor_update_pipe_read_ack(0),
          odata => noblock_teu_ifetch_branch_predictor_update_pipe_read_data(62 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 1
    -- read from input-signal random_number_2
    RPIPE_random_number_2_2084_wire <= random_number_2;
    -- shared outport operator group (0) : WPIPE_teu_ifetch_branch_predictor_lookup_response_2101_inst 
    OutportGroup_0: Block -- 
      signal data_in: std_logic_vector(30 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_teu_ifetch_branch_predictor_lookup_response_2101_inst_req_0;
      WPIPE_teu_ifetch_branch_predictor_lookup_response_2101_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_teu_ifetch_branch_predictor_lookup_response_2101_inst_req_1;
      WPIPE_teu_ifetch_branch_predictor_lookup_response_2101_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= send_lookup_response_2099(0);
      data_in <= lookup_response_2094;
      teu_ifetch_branch_predictor_lookup_response_write_0_gI: SplitGuardInterface generic map(name => "teu_ifetch_branch_predictor_lookup_response_write_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      teu_ifetch_branch_predictor_lookup_response_write_0: OutputPortRevised -- 
        generic map ( name => "teu_ifetch_branch_predictor_lookup_response", data_width => 31, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => teu_ifetch_branch_predictor_lookup_response_pipe_write_req(0),
          oack => teu_ifetch_branch_predictor_lookup_response_pipe_write_ack(0),
          odata => teu_ifetch_branch_predictor_lookup_response_pipe_write_data(30 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    operator_bpbV3_dual_port_mem_2922_block : block -- 
      signal sample_req, sample_ack, update_req, update_ack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      sample_req(0) <= call_bpbV3_dual_port_mem_expr_1837_inst_req_0;
      call_bpbV3_dual_port_mem_expr_1837_inst_ack_0<= sample_ack(0);
      update_req(0) <= call_bpbV3_dual_port_mem_expr_1837_inst_req_1;
      call_bpbV3_dual_port_mem_expr_1837_inst_ack_1<= update_ack(0);
      call_bpbV3_dual_port_mem_expr_1837_inst: bpbV3_dual_port_mem_Operator  port map ( -- 
        sample_req => sample_req(0), 
        sample_ack => sample_ack(0), 
        update_req => update_req(0), 
        update_ack => update_ack(0), 
        init => init_bpb_mem_2027,
        enable_0 => enable_0_2078,
        addr_0 => addr_0_2082,
        enable_1 => enable_1_2002,
        write_bar_1 => writebar_1_2018,
        addr_1 => addr_1_2012,
        write_data_1 => write_data_1_1993,
        read_data => call_bpbV3_dual_port_mem_expr_1837_wire,
        clk => clk, reset => reset  
        -- 
      );-- 
    end block;
    volatile_operator_calculate_updated_entry_2969: calculate_updated_entry_Volatile port map(valid => valid_1_1944, read_data_1 => read_data_1_1948, br_taken => update_br_taken_d_1916, pc_30 => update_pc_30_d_1920, nnpc_30 => update_nnpc_30_d_1924, updated_entry => call_calculate_updated_entry_expr_1992_wire); 
    volatile_operator_branch_predict_2997: branch_predict_Volatile port map(valid => valid_0_1936, random_number => RPIPE_random_number_2_2084_wire, lookup_pc_30 => lookup_pc_30_d_2054, read_data => read_data_0_1940, lookup_match => lookup_match_2089, lookup_nnpc_30 => lookup_nnpc_30_2089); 
    -- 
  end Block; -- data_path
  -- 
end bpbV3_daemon_arch;
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
library teu_ifetch;
use teu_ifetch.ifetch_global_package.all;
entity branch_predict_Volatile is -- 
  port ( -- 
    valid : in  std_logic_vector(0 downto 0);
    random_number : in  std_logic_vector(1 downto 0);
    lookup_pc_30 : in  std_logic_vector(29 downto 0);
    read_data : in  std_logic_vector(53 downto 0);
    lookup_match : out  std_logic_vector(0 downto 0);
    lookup_nnpc_30 : out  std_logic_vector(29 downto 0)-- 
  );
  -- 
end entity branch_predict_Volatile;
architecture branch_predict_Volatile_arch of branch_predict_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(87-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal valid_buffer :  std_logic_vector(0 downto 0);
  signal random_number_buffer :  std_logic_vector(1 downto 0);
  signal lookup_pc_30_buffer :  std_logic_vector(29 downto 0);
  signal read_data_buffer :  std_logic_vector(53 downto 0);
  -- output port buffer signals
  signal lookup_match_buffer :  std_logic_vector(0 downto 0);
  signal lookup_nnpc_30_buffer :  std_logic_vector(29 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  valid_buffer <= valid;
  random_number_buffer <= random_number;
  lookup_pc_30_buffer <= lookup_pc_30;
  read_data_buffer <= read_data;
  -- output handling  -------------------------------------------------------
  lookup_match <= lookup_match_buffer;
  lookup_nnpc_30 <= lookup_nnpc_30_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_1791_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1799_wire : std_logic_vector(0 downto 0);
    signal EQ_u22_u1_1798_wire : std_logic_vector(0 downto 0);
    signal NEQ_u2_u1_1794_wire : std_logic_vector(0 downto 0);
    signal UGE_u2_u1_1790_wire : std_logic_vector(0 downto 0);
    signal counter_1781 : std_logic_vector(1 downto 0);
    signal konst_1793_wire_constant : std_logic_vector(1 downto 0);
    signal lookup_pc_32_1810 : std_logic_vector(31 downto 0);
    signal nnpc_30_1785 : std_logic_vector(29 downto 0);
    signal nnpc_32_1816 : std_logic_vector(31 downto 0);
    signal slice_1797_wire : std_logic_vector(21 downto 0);
    signal tag_1777 : std_logic_vector(21 downto 0);
    signal type_cast_1808_wire_constant : std_logic_vector(1 downto 0);
    signal type_cast_1814_wire_constant : std_logic_vector(1 downto 0);
    -- 
  begin -- 
    konst_1793_wire_constant <= "11";
    type_cast_1808_wire_constant <= "00";
    type_cast_1814_wire_constant <= "00";
    -- flow-through slice operator slice_1776_inst
    tag_1777 <= read_data_buffer(53 downto 32);
    -- flow-through slice operator slice_1780_inst
    counter_1781 <= read_data_buffer(31 downto 30);
    -- flow-through slice operator slice_1784_inst
    nnpc_30_1785 <= read_data_buffer(29 downto 0);
    -- flow-through slice operator slice_1797_inst
    slice_1797_wire <= lookup_pc_30_buffer(29 downto 8);
    -- interlock W_lookup_nnpc_30_1802_inst
    process(nnpc_30_1785) -- 
      variable tmp_var : std_logic_vector(29 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 29 downto 0) := nnpc_30_1785(29 downto 0);
      lookup_nnpc_30_buffer <= tmp_var; -- 
    end process;
    -- flow through binary operator AND_u1_u1_1791_inst
    AND_u1_u1_1791_wire <= (valid_buffer and UGE_u2_u1_1790_wire);
    -- flow through binary operator AND_u1_u1_1799_inst
    AND_u1_u1_1799_wire <= (NEQ_u2_u1_1794_wire and EQ_u22_u1_1798_wire);
    -- flow through binary operator AND_u1_u1_1800_inst
    lookup_match_buffer <= (AND_u1_u1_1791_wire and AND_u1_u1_1799_wire);
    -- flow through binary operator CONCAT_u30_u32_1809_inst
    process(lookup_pc_30_buffer) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApConcat_proc(lookup_pc_30_buffer, type_cast_1808_wire_constant, tmp_var);
      lookup_pc_32_1810 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u30_u32_1815_inst
    process(nnpc_30_1785) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApConcat_proc(nnpc_30_1785, type_cast_1814_wire_constant, tmp_var);
      nnpc_32_1816 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u22_u1_1798_inst
    process(tag_1777, slice_1797_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(tag_1777, slice_1797_wire, tmp_var);
      EQ_u22_u1_1798_wire <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u2_u1_1794_inst
    process(counter_1781) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(counter_1781, konst_1793_wire_constant, tmp_var);
      NEQ_u2_u1_1794_wire <= tmp_var; --
    end process;
    -- flow through binary operator UGE_u2_u1_1790_inst
    process(random_number_buffer, counter_1781) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUge_proc(random_number_buffer, counter_1781, tmp_var);
      UGE_u2_u1_1790_wire <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end branch_predict_Volatile_arch;
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
library teu_ifetch;
use teu_ifetch.ifetch_global_package.all;
entity calculate_potential_nnpc_Volatile is -- 
  port ( -- 
    pc : in  std_logic_vector(31 downto 0);
    instr : in  std_logic_vector(31 downto 0);
    is_ret_or_retl : in  std_logic_vector(0 downto 0);
    ras_top_of_stack : in  std_logic_vector(31 downto 0);
    is_valid_ras_entry : out  std_logic_vector(0 downto 0);
    is_unconditional_cti : out  std_logic_vector(0 downto 0);
    ras_nnpc : out  std_logic_vector(31 downto 0);
    branch_target_offset : out  std_logic_vector(31 downto 0)-- 
  );
  -- 
end entity calculate_potential_nnpc_Volatile;
architecture calculate_potential_nnpc_Volatile_arch of calculate_potential_nnpc_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(97-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal pc_buffer :  std_logic_vector(31 downto 0);
  signal instr_buffer :  std_logic_vector(31 downto 0);
  signal is_ret_or_retl_buffer :  std_logic_vector(0 downto 0);
  signal ras_top_of_stack_buffer :  std_logic_vector(31 downto 0);
  -- output port buffer signals
  signal is_valid_ras_entry_buffer :  std_logic_vector(0 downto 0);
  signal is_unconditional_cti_buffer :  std_logic_vector(0 downto 0);
  signal ras_nnpc_buffer :  std_logic_vector(31 downto 0);
  signal branch_target_offset_buffer :  std_logic_vector(31 downto 0);
  -- volatile/operator module components. 
  component decode_cti_for_offset_calculation_Volatile is -- 
    port ( -- 
      instr : in  std_logic_vector(31 downto 0);
      cti_annul_flag : out  std_logic_vector(0 downto 0);
      is_call : out  std_logic_vector(0 downto 0);
      is_ba : out  std_logic_vector(0 downto 0);
      is_bn : out  std_logic_vector(0 downto 0);
      is_bicc : out  std_logic_vector(0 downto 0);
      is_fbfcc : out  std_logic_vector(0 downto 0);
      is_cbccc : out  std_logic_vector(0 downto 0);
      cond : out  std_logic_vector(3 downto 0);
      imm_offset : out  std_logic_vector(31 downto 0)-- 
    );
    -- 
  end component; 
  -- 
begin --  
  -- input handling ------------------------------------------------
  pc_buffer <= pc;
  instr_buffer <= instr;
  is_ret_or_retl_buffer <= is_ret_or_retl;
  ras_top_of_stack_buffer <= ras_top_of_stack;
  -- output handling  -------------------------------------------------------
  is_valid_ras_entry <= is_valid_ras_entry_buffer;
  is_unconditional_cti <= is_unconditional_cti_buffer;
  ras_nnpc <= ras_nnpc_buffer;
  branch_target_offset <= branch_target_offset_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal bicc_fbfcc_cond_2247 : std_logic_vector(3 downto 0);
    signal cti_annul_flag_2247 : std_logic_vector(0 downto 0);
    signal imm_offset_2247 : std_logic_vector(31 downto 0);
    signal is_ba_2247 : std_logic_vector(0 downto 0);
    signal is_bicc_2247 : std_logic_vector(0 downto 0);
    signal is_bn_2247 : std_logic_vector(0 downto 0);
    signal is_call_2247 : std_logic_vector(0 downto 0);
    signal is_cbccc_2247 : std_logic_vector(0 downto 0);
    signal is_fbfcc_2247 : std_logic_vector(0 downto 0);
    signal konst_2250_wire_constant : std_logic_vector(31 downto 0);
    signal ras_hit_2264 : std_logic_vector(0 downto 0);
    signal slice_2255_wire : std_logic_vector(29 downto 0);
    signal type_cast_2257_wire_constant : std_logic_vector(1 downto 0);
    -- 
  begin -- 
    konst_2250_wire_constant <= "00000000000000000000000000000000";
    type_cast_2257_wire_constant <= "00";
    -- flow-through slice operator slice_2255_inst
    slice_2255_wire <= ras_top_of_stack_buffer(31 downto 2);
    -- interlock W_branch_target_offset_2265_inst
    process(imm_offset_2247) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := imm_offset_2247(31 downto 0);
      branch_target_offset_buffer <= tmp_var; -- 
    end process;
    -- flow through binary operator AND_u1_u1_2263_inst
    ras_hit_2264 <= (is_ret_or_retl_buffer and is_valid_ras_entry_buffer);
    -- flow through binary operator BITSEL_u32_u1_2251_inst
    process(ras_top_of_stack_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(ras_top_of_stack_buffer, konst_2250_wire_constant, tmp_var);
      is_valid_ras_entry_buffer <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u30_u32_2258_inst
    process(slice_2255_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApConcat_proc(slice_2255_wire, type_cast_2257_wire_constant, tmp_var);
      ras_nnpc_buffer <= tmp_var; --
    end process;
    -- flow through binary operator OR_u1_u1_2271_inst
    is_unconditional_cti_buffer <= (is_ba_2247 or is_call_2247);
    volatile_operator_decode_cti_for_offset_calculation_3133: decode_cti_for_offset_calculation_Volatile port map(instr => instr_buffer, cti_annul_flag => cti_annul_flag_2247, is_call => is_call_2247, is_ba => is_ba_2247, is_bn => is_bn_2247, is_bicc => is_bicc_2247, is_fbfcc => is_fbfcc_2247, is_cbccc => is_cbccc_2247, cond => bicc_fbfcc_cond_2247, imm_offset => imm_offset_2247); 
    -- 
  end Block; -- data_path
  -- 
end calculate_potential_nnpc_Volatile_arch;
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
library teu_ifetch;
use teu_ifetch.ifetch_global_package.all;
entity calculate_updated_entry_Volatile is -- 
  port ( -- 
    valid : in  std_logic_vector(0 downto 0);
    read_data_1 : in  std_logic_vector(53 downto 0);
    br_taken : in  std_logic_vector(0 downto 0);
    pc_30 : in  std_logic_vector(29 downto 0);
    nnpc_30 : in  std_logic_vector(29 downto 0);
    updated_entry : out  std_logic_vector(53 downto 0)-- 
  );
  -- 
end entity calculate_updated_entry_Volatile;
architecture calculate_updated_entry_Volatile_arch of calculate_updated_entry_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(116-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal valid_buffer :  std_logic_vector(0 downto 0);
  signal read_data_1_buffer :  std_logic_vector(53 downto 0);
  signal br_taken_buffer :  std_logic_vector(0 downto 0);
  signal pc_30_buffer :  std_logic_vector(29 downto 0);
  signal nnpc_30_buffer :  std_logic_vector(29 downto 0);
  -- output port buffer signals
  signal updated_entry_buffer :  std_logic_vector(53 downto 0);
  -- volatile/operator module components. 
  component satIncrement_Volatile is -- 
    port ( -- 
      x : in  std_logic_vector(1 downto 0);
      y : out  std_logic_vector(1 downto 0)-- 
    );
    -- 
  end component; 
  component satDecrement_Volatile is -- 
    port ( -- 
      x : in  std_logic_vector(1 downto 0);
      y : out  std_logic_vector(1 downto 0)-- 
    );
    -- 
  end component; 
  -- 
begin --  
  -- input handling ------------------------------------------------
  valid_buffer <= valid;
  read_data_1_buffer <= read_data_1;
  br_taken_buffer <= br_taken;
  pc_30_buffer <= pc_30;
  nnpc_30_buffer <= nnpc_30;
  -- output handling  -------------------------------------------------------
  updated_entry <= updated_entry_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal CONCAT_u22_u24_1741_wire : std_logic_vector(23 downto 0);
    signal CONCAT_u22_u24_1753_wire : std_logic_vector(23 downto 0);
    signal EQ_u22_u1_1731_wire : std_logic_vector(0 downto 0);
    signal MUX_1740_wire : std_logic_vector(1 downto 0);
    signal MUX_1752_wire : std_logic_vector(1 downto 0);
    signal MUX_1757_wire : std_logic_vector(29 downto 0);
    signal a_e_value_1759 : std_logic_vector(53 downto 0);
    signal a_ne_value_1744 : std_logic_vector(53 downto 0);
    signal a_tag_1726 : std_logic_vector(21 downto 0);
    signal call_satDecrement_expr_1749_wire : std_logic_vector(1 downto 0);
    signal call_satIncrement_expr_1751_wire : std_logic_vector(1 downto 0);
    signal counter_1718 : std_logic_vector(1 downto 0);
    signal existing_match_1733 : std_logic_vector(0 downto 0);
    signal konst_1739_wire_constant : std_logic_vector(1 downto 0);
    signal tag_1714 : std_logic_vector(21 downto 0);
    signal taken_nnpc_30_1722 : std_logic_vector(29 downto 0);
    signal type_cast_1738_wire_constant : std_logic_vector(1 downto 0);
    -- 
  begin -- 
    konst_1739_wire_constant <= "11";
    type_cast_1738_wire_constant <= "00";
    -- flow-through select operator MUX_1740_inst
    MUX_1740_wire <= type_cast_1738_wire_constant when (br_taken_buffer(0) /=  '0') else konst_1739_wire_constant;
    -- flow-through select operator MUX_1752_inst
    MUX_1752_wire <= call_satDecrement_expr_1749_wire when (br_taken_buffer(0) /=  '0') else call_satIncrement_expr_1751_wire;
    -- flow-through select operator MUX_1757_inst
    MUX_1757_wire <= nnpc_30_buffer when (br_taken_buffer(0) /=  '0') else taken_nnpc_30_1722;
    -- flow-through select operator MUX_1764_inst
    updated_entry_buffer <= a_e_value_1759 when (existing_match_1733(0) /=  '0') else a_ne_value_1744;
    -- flow-through slice operator slice_1713_inst
    tag_1714 <= read_data_1_buffer(53 downto 32);
    -- flow-through slice operator slice_1717_inst
    counter_1718 <= read_data_1_buffer(31 downto 30);
    -- flow-through slice operator slice_1721_inst
    taken_nnpc_30_1722 <= read_data_1_buffer(29 downto 0);
    -- flow-through slice operator slice_1725_inst
    a_tag_1726 <= pc_30_buffer(29 downto 8);
    -- flow through binary operator AND_u1_u1_1732_inst
    existing_match_1733 <= (valid_buffer and EQ_u22_u1_1731_wire);
    -- flow through binary operator CONCAT_u22_u24_1741_inst
    process(a_tag_1726, MUX_1740_wire) -- 
      variable tmp_var : std_logic_vector(23 downto 0); -- 
    begin -- 
      ApConcat_proc(a_tag_1726, MUX_1740_wire, tmp_var);
      CONCAT_u22_u24_1741_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u22_u24_1753_inst
    process(a_tag_1726, MUX_1752_wire) -- 
      variable tmp_var : std_logic_vector(23 downto 0); -- 
    begin -- 
      ApConcat_proc(a_tag_1726, MUX_1752_wire, tmp_var);
      CONCAT_u22_u24_1753_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u24_u54_1743_inst
    process(CONCAT_u22_u24_1741_wire, nnpc_30_buffer) -- 
      variable tmp_var : std_logic_vector(53 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u22_u24_1741_wire, nnpc_30_buffer, tmp_var);
      a_ne_value_1744 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u24_u54_1758_inst
    process(CONCAT_u22_u24_1753_wire, MUX_1757_wire) -- 
      variable tmp_var : std_logic_vector(53 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u22_u24_1753_wire, MUX_1757_wire, tmp_var);
      a_e_value_1759 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u22_u1_1731_inst
    process(tag_1714, a_tag_1726) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(tag_1714, a_tag_1726, tmp_var);
      EQ_u22_u1_1731_wire <= tmp_var; --
    end process;
    volatile_operator_satDecrement_2269: satDecrement_Volatile port map(x => counter_1718, y => call_satDecrement_expr_1749_wire); 
    volatile_operator_satIncrement_2270: satIncrement_Volatile port map(x => counter_1718, y => call_satIncrement_expr_1751_wire); 
    -- 
  end Block; -- data_path
  -- 
end calculate_updated_entry_Volatile_arch;
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
library teu_ifetch;
use teu_ifetch.ifetch_global_package.all;
entity decode_cti_for_offset_calculation_Volatile is -- 
  port ( -- 
    instr : in  std_logic_vector(31 downto 0);
    cti_annul_flag : out  std_logic_vector(0 downto 0);
    is_call : out  std_logic_vector(0 downto 0);
    is_ba : out  std_logic_vector(0 downto 0);
    is_bn : out  std_logic_vector(0 downto 0);
    is_bicc : out  std_logic_vector(0 downto 0);
    is_fbfcc : out  std_logic_vector(0 downto 0);
    is_cbccc : out  std_logic_vector(0 downto 0);
    cond : out  std_logic_vector(3 downto 0);
    imm_offset : out  std_logic_vector(31 downto 0)-- 
  );
  -- 
end entity decode_cti_for_offset_calculation_Volatile;
architecture decode_cti_for_offset_calculation_Volatile_arch of decode_cti_for_offset_calculation_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(32-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal instr_buffer :  std_logic_vector(31 downto 0);
  -- output port buffer signals
  signal cti_annul_flag_buffer :  std_logic_vector(0 downto 0);
  signal is_call_buffer :  std_logic_vector(0 downto 0);
  signal is_ba_buffer :  std_logic_vector(0 downto 0);
  signal is_bn_buffer :  std_logic_vector(0 downto 0);
  signal is_bicc_buffer :  std_logic_vector(0 downto 0);
  signal is_fbfcc_buffer :  std_logic_vector(0 downto 0);
  signal is_cbccc_buffer :  std_logic_vector(0 downto 0);
  signal cond_buffer :  std_logic_vector(3 downto 0);
  signal imm_offset_buffer :  std_logic_vector(31 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  instr_buffer <= instr;
  -- output handling  -------------------------------------------------------
  cti_annul_flag <= cti_annul_flag_buffer;
  is_call <= is_call_buffer;
  is_ba <= is_ba_buffer;
  is_bn <= is_bn_buffer;
  is_bicc <= is_bicc_buffer;
  is_fbfcc <= is_fbfcc_buffer;
  is_cbccc <= is_cbccc_buffer;
  cond <= cond_buffer;
  imm_offset <= imm_offset_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal EQ_u2_u1_2152_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_2161_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_2170_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_2155_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_2164_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_2173_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_2186_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_2195_wire : std_logic_vector(0 downto 0);
    signal MUX_2218_wire : std_logic_vector(31 downto 0);
    signal OR_u1_u1_2183_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_2192_wire : std_logic_vector(0 downto 0);
    signal konst_2146_wire_constant : std_logic_vector(1 downto 0);
    signal konst_2151_wire_constant : std_logic_vector(1 downto 0);
    signal konst_2154_wire_constant : std_logic_vector(2 downto 0);
    signal konst_2160_wire_constant : std_logic_vector(1 downto 0);
    signal konst_2163_wire_constant : std_logic_vector(2 downto 0);
    signal konst_2169_wire_constant : std_logic_vector(1 downto 0);
    signal konst_2172_wire_constant : std_logic_vector(2 downto 0);
    signal konst_2185_wire_constant : std_logic_vector(3 downto 0);
    signal konst_2194_wire_constant : std_logic_vector(3 downto 0);
    signal konst_2219_wire_constant : std_logic_vector(31 downto 0);
    signal konst_2224_wire_constant : std_logic_vector(31 downto 0);
    signal op2_2139 : std_logic_vector(2 downto 0);
    signal op3_2143 : std_logic_vector(5 downto 0);
    signal op_2135 : std_logic_vector(1 downto 0);
    signal simm22to32_2213 : std_logic_vector(31 downto 0);
    signal simm30to32_2205 : std_logic_vector(31 downto 0);
    signal slice_2201_wire : std_logic_vector(29 downto 0);
    signal slice_2209_wire : std_logic_vector(21 downto 0);
    signal type_cast_2202_wire : std_logic_vector(29 downto 0);
    signal type_cast_2203_wire : std_logic_vector(31 downto 0);
    signal type_cast_2210_wire : std_logic_vector(21 downto 0);
    signal type_cast_2211_wire : std_logic_vector(31 downto 0);
    -- 
  begin -- 
    konst_2146_wire_constant <= "01";
    konst_2151_wire_constant <= "00";
    konst_2154_wire_constant <= "010";
    konst_2160_wire_constant <= "00";
    konst_2163_wire_constant <= "110";
    konst_2169_wire_constant <= "00";
    konst_2172_wire_constant <= "111";
    konst_2185_wire_constant <= "1000";
    konst_2194_wire_constant <= "0000";
    konst_2219_wire_constant <= "00000000000000000000000000000010";
    konst_2224_wire_constant <= "00000000000000000000000000011101";
    -- flow-through select operator MUX_2218_inst
    MUX_2218_wire <= simm30to32_2205 when (is_call_buffer(0) /=  '0') else simm22to32_2213;
    -- flow-through slice operator slice_2134_inst
    op_2135 <= instr_buffer(31 downto 30);
    -- flow-through slice operator slice_2138_inst
    op2_2139 <= instr_buffer(24 downto 22);
    -- flow-through slice operator slice_2142_inst
    op3_2143 <= instr_buffer(24 downto 19);
    -- flow-through slice operator slice_2178_inst
    cond_buffer <= instr_buffer(28 downto 25);
    -- flow-through slice operator slice_2201_inst
    slice_2201_wire <= instr_buffer(29 downto 0);
    -- flow-through slice operator slice_2209_inst
    slice_2209_wire <= instr_buffer(21 downto 0);
    -- interlock type_cast_2202_inst
    process(slice_2201_wire) -- 
      variable tmp_var : std_logic_vector(29 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 29 downto 0) := slice_2201_wire(29 downto 0);
      type_cast_2202_wire <= tmp_var; -- 
    end process;
    -- interlock type_cast_2204_inst
    process(type_cast_2203_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := type_cast_2203_wire(31 downto 0);
      simm30to32_2205 <= tmp_var; -- 
    end process;
    -- interlock type_cast_2210_inst
    process(slice_2209_wire) -- 
      variable tmp_var : std_logic_vector(21 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 21 downto 0) := slice_2209_wire(21 downto 0);
      type_cast_2210_wire <= tmp_var; -- 
    end process;
    -- interlock type_cast_2212_inst
    process(type_cast_2211_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := type_cast_2211_wire(31 downto 0);
      simm22to32_2213 <= tmp_var; -- 
    end process;
    -- flow through binary operator AND_u1_u1_2156_inst
    is_bicc_buffer <= (EQ_u2_u1_2152_wire and EQ_u3_u1_2155_wire);
    -- flow through binary operator AND_u1_u1_2165_inst
    is_fbfcc_buffer <= (EQ_u2_u1_2161_wire and EQ_u3_u1_2164_wire);
    -- flow through binary operator AND_u1_u1_2174_inst
    is_cbccc_buffer <= (EQ_u2_u1_2170_wire and EQ_u3_u1_2173_wire);
    -- flow through binary operator AND_u1_u1_2187_inst
    is_ba_buffer <= (OR_u1_u1_2183_wire and EQ_u4_u1_2186_wire);
    -- flow through binary operator AND_u1_u1_2196_inst
    is_bn_buffer <= (OR_u1_u1_2192_wire and EQ_u4_u1_2195_wire);
    -- flow through binary operator BITSEL_u32_u1_2225_inst
    process(instr_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(instr_buffer, konst_2224_wire_constant, tmp_var);
      cti_annul_flag_buffer <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_2147_inst
    process(op_2135) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op_2135, konst_2146_wire_constant, tmp_var);
      is_call_buffer <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_2152_inst
    process(op_2135) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op_2135, konst_2151_wire_constant, tmp_var);
      EQ_u2_u1_2152_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_2161_inst
    process(op_2135) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op_2135, konst_2160_wire_constant, tmp_var);
      EQ_u2_u1_2161_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_2170_inst
    process(op_2135) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op_2135, konst_2169_wire_constant, tmp_var);
      EQ_u2_u1_2170_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_2155_inst
    process(op2_2139) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op2_2139, konst_2154_wire_constant, tmp_var);
      EQ_u3_u1_2155_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_2164_inst
    process(op2_2139) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op2_2139, konst_2163_wire_constant, tmp_var);
      EQ_u3_u1_2164_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_2173_inst
    process(op2_2139) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op2_2139, konst_2172_wire_constant, tmp_var);
      EQ_u3_u1_2173_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_2186_inst
    process(cond_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(cond_buffer, konst_2185_wire_constant, tmp_var);
      EQ_u4_u1_2186_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_2195_inst
    process(cond_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(cond_buffer, konst_2194_wire_constant, tmp_var);
      EQ_u4_u1_2195_wire <= tmp_var; --
    end process;
    -- flow through binary operator OR_u1_u1_2183_inst
    OR_u1_u1_2183_wire <= (is_bicc_buffer or is_fbfcc_buffer);
    -- flow through binary operator OR_u1_u1_2192_inst
    OR_u1_u1_2192_wire <= (is_bicc_buffer or is_fbfcc_buffer);
    -- flow through binary operator SHL_u32_u32_2220_inst
    process(MUX_2218_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApIntSHL_proc(MUX_2218_wire, konst_2219_wire_constant, tmp_var);
      imm_offset_buffer <= tmp_var; --
    end process;
    -- unary operator type_cast_2203_inst
    process(type_cast_2202_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntToApIntSigned", type_cast_2202_wire, tmp_var);
      type_cast_2203_wire <= tmp_var; -- 
    end process;
    -- unary operator type_cast_2211_inst
    process(type_cast_2210_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntToApIntSigned", type_cast_2210_wire, tmp_var);
      type_cast_2211_wire <= tmp_var; -- 
    end process;
    -- 
  end Block; -- data_path
  -- 
end decode_cti_for_offset_calculation_Volatile_arch;
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
library teu_ifetch;
use teu_ifetch.ifetch_global_package.all;
entity decode_is_flush_asi_Volatile is -- 
  port ( -- 
    asi_id_8 : in  std_logic_vector(7 downto 0);
    is_flush_asi : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity decode_is_flush_asi_Volatile;
architecture decode_is_flush_asi_Volatile_arch of decode_is_flush_asi_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(8-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal asi_id_8_buffer :  std_logic_vector(7 downto 0);
  -- output port buffer signals
  signal is_flush_asi_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  asi_id_8_buffer <= asi_id_8;
  -- output handling  -------------------------------------------------------
  is_flush_asi <= is_flush_asi_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal EQ_u8_u1_4385_wire : std_logic_vector(0 downto 0);
    signal EQ_u8_u1_4388_wire : std_logic_vector(0 downto 0);
    signal EQ_u8_u1_4392_wire : std_logic_vector(0 downto 0);
    signal EQ_u8_u1_4396_wire : std_logic_vector(0 downto 0);
    signal EQ_u8_u1_4399_wire : std_logic_vector(0 downto 0);
    signal EQ_u8_u1_4404_wire : std_logic_vector(0 downto 0);
    signal EQ_u8_u1_4407_wire : std_logic_vector(0 downto 0);
    signal EQ_u8_u1_4411_wire : std_logic_vector(0 downto 0);
    signal EQ_u8_u1_4415_wire : std_logic_vector(0 downto 0);
    signal EQ_u8_u1_4418_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4389_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4393_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4400_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4401_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4408_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4412_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4419_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4420_wire : std_logic_vector(0 downto 0);
    signal R_ASI_FLUSH_I_CONTEXT_4414_wire_constant : std_logic_vector(7 downto 0);
    signal R_ASI_FLUSH_I_D_CONTEXT_4395_wire_constant : std_logic_vector(7 downto 0);
    signal R_ASI_FLUSH_I_D_PAGE_4384_wire_constant : std_logic_vector(7 downto 0);
    signal R_ASI_FLUSH_I_D_REGION_4391_wire_constant : std_logic_vector(7 downto 0);
    signal R_ASI_FLUSH_I_D_SEGMENT_4387_wire_constant : std_logic_vector(7 downto 0);
    signal R_ASI_FLUSH_I_D_USER_4398_wire_constant : std_logic_vector(7 downto 0);
    signal R_ASI_FLUSH_I_PAGE_4403_wire_constant : std_logic_vector(7 downto 0);
    signal R_ASI_FLUSH_I_REGION_4410_wire_constant : std_logic_vector(7 downto 0);
    signal R_ASI_FLUSH_I_SEGMENT_4406_wire_constant : std_logic_vector(7 downto 0);
    signal R_ASI_FLUSH_I_USER_4417_wire_constant : std_logic_vector(7 downto 0);
    -- 
  begin -- 
    R_ASI_FLUSH_I_CONTEXT_4414_wire_constant <= "00011011";
    R_ASI_FLUSH_I_D_CONTEXT_4395_wire_constant <= "00010011";
    R_ASI_FLUSH_I_D_PAGE_4384_wire_constant <= "00010000";
    R_ASI_FLUSH_I_D_REGION_4391_wire_constant <= "00010010";
    R_ASI_FLUSH_I_D_SEGMENT_4387_wire_constant <= "00010001";
    R_ASI_FLUSH_I_D_USER_4398_wire_constant <= "00010100";
    R_ASI_FLUSH_I_PAGE_4403_wire_constant <= "00011000";
    R_ASI_FLUSH_I_REGION_4410_wire_constant <= "00011010";
    R_ASI_FLUSH_I_SEGMENT_4406_wire_constant <= "00011001";
    R_ASI_FLUSH_I_USER_4417_wire_constant <= "00011100";
    -- flow through binary operator EQ_u8_u1_4385_inst
    process(asi_id_8_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_id_8_buffer, R_ASI_FLUSH_I_D_PAGE_4384_wire_constant, tmp_var);
      EQ_u8_u1_4385_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_4388_inst
    process(asi_id_8_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_id_8_buffer, R_ASI_FLUSH_I_D_SEGMENT_4387_wire_constant, tmp_var);
      EQ_u8_u1_4388_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_4392_inst
    process(asi_id_8_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_id_8_buffer, R_ASI_FLUSH_I_D_REGION_4391_wire_constant, tmp_var);
      EQ_u8_u1_4392_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_4396_inst
    process(asi_id_8_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_id_8_buffer, R_ASI_FLUSH_I_D_CONTEXT_4395_wire_constant, tmp_var);
      EQ_u8_u1_4396_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_4399_inst
    process(asi_id_8_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_id_8_buffer, R_ASI_FLUSH_I_D_USER_4398_wire_constant, tmp_var);
      EQ_u8_u1_4399_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_4404_inst
    process(asi_id_8_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_id_8_buffer, R_ASI_FLUSH_I_PAGE_4403_wire_constant, tmp_var);
      EQ_u8_u1_4404_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_4407_inst
    process(asi_id_8_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_id_8_buffer, R_ASI_FLUSH_I_SEGMENT_4406_wire_constant, tmp_var);
      EQ_u8_u1_4407_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_4411_inst
    process(asi_id_8_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_id_8_buffer, R_ASI_FLUSH_I_REGION_4410_wire_constant, tmp_var);
      EQ_u8_u1_4411_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_4415_inst
    process(asi_id_8_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_id_8_buffer, R_ASI_FLUSH_I_CONTEXT_4414_wire_constant, tmp_var);
      EQ_u8_u1_4415_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_4418_inst
    process(asi_id_8_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_id_8_buffer, R_ASI_FLUSH_I_USER_4417_wire_constant, tmp_var);
      EQ_u8_u1_4418_wire <= tmp_var; --
    end process;
    -- flow through binary operator OR_u1_u1_4389_inst
    OR_u1_u1_4389_wire <= (EQ_u8_u1_4385_wire or EQ_u8_u1_4388_wire);
    -- flow through binary operator OR_u1_u1_4393_inst
    OR_u1_u1_4393_wire <= (OR_u1_u1_4389_wire or EQ_u8_u1_4392_wire);
    -- flow through binary operator OR_u1_u1_4400_inst
    OR_u1_u1_4400_wire <= (EQ_u8_u1_4396_wire or EQ_u8_u1_4399_wire);
    -- flow through binary operator OR_u1_u1_4401_inst
    OR_u1_u1_4401_wire <= (OR_u1_u1_4393_wire or OR_u1_u1_4400_wire);
    -- flow through binary operator OR_u1_u1_4408_inst
    OR_u1_u1_4408_wire <= (EQ_u8_u1_4404_wire or EQ_u8_u1_4407_wire);
    -- flow through binary operator OR_u1_u1_4412_inst
    OR_u1_u1_4412_wire <= (OR_u1_u1_4408_wire or EQ_u8_u1_4411_wire);
    -- flow through binary operator OR_u1_u1_4419_inst
    OR_u1_u1_4419_wire <= (EQ_u8_u1_4415_wire or EQ_u8_u1_4418_wire);
    -- flow through binary operator OR_u1_u1_4420_inst
    OR_u1_u1_4420_wire <= (OR_u1_u1_4412_wire or OR_u1_u1_4419_wire);
    -- flow through binary operator OR_u1_u1_4421_inst
    is_flush_asi_buffer <= (OR_u1_u1_4401_wire or OR_u1_u1_4420_wire);
    -- 
  end Block; -- data_path
  -- 
end decode_is_flush_asi_Volatile_arch;
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
library teu_ifetch;
use teu_ifetch.ifetch_global_package.all;
entity early_decode_for_fetch_Volatile is -- 
  port ( -- 
    instr : in  std_logic_vector(31 downto 0);
    is_cti : out  std_logic_vector(0 downto 0);
    is_call : out  std_logic_vector(0 downto 0);
    is_jmpl : out  std_logic_vector(0 downto 0);
    is_rett : out  std_logic_vector(0 downto 0);
    is_flush : out  std_logic_vector(0 downto 0);
    is_write_psr : out  std_logic_vector(0 downto 0);
    is_write_to_mmu_ctrl_register : out  std_logic_vector(0 downto 0);
    will_trap : out  std_logic_vector(0 downto 0);
    imm_bit : out  std_logic_vector(0 downto 0);
    annul_bit : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity early_decode_for_fetch_Volatile;
architecture early_decode_for_fetch_Volatile_arch of early_decode_for_fetch_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(32-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal instr_buffer :  std_logic_vector(31 downto 0);
  -- output port buffer signals
  signal is_cti_buffer :  std_logic_vector(0 downto 0);
  signal is_call_buffer :  std_logic_vector(0 downto 0);
  signal is_jmpl_buffer :  std_logic_vector(0 downto 0);
  signal is_rett_buffer :  std_logic_vector(0 downto 0);
  signal is_flush_buffer :  std_logic_vector(0 downto 0);
  signal is_write_psr_buffer :  std_logic_vector(0 downto 0);
  signal is_write_to_mmu_ctrl_register_buffer :  std_logic_vector(0 downto 0);
  signal will_trap_buffer :  std_logic_vector(0 downto 0);
  signal imm_bit_buffer :  std_logic_vector(0 downto 0);
  signal annul_bit_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  component decode_is_flush_asi_Volatile is -- 
    port ( -- 
      asi_id_8 : in  std_logic_vector(7 downto 0);
      is_flush_asi : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  -- 
begin --  
  -- input handling ------------------------------------------------
  instr_buffer <= instr;
  -- output handling  -------------------------------------------------------
  is_cti <= is_cti_buffer;
  is_call <= is_call_buffer;
  is_jmpl <= is_jmpl_buffer;
  is_rett <= is_rett_buffer;
  is_flush <= is_flush_buffer;
  is_write_psr <= is_write_psr_buffer;
  is_write_to_mmu_ctrl_register <= is_write_to_mmu_ctrl_register_buffer;
  will_trap <= will_trap_buffer;
  imm_bit <= imm_bit_buffer;
  annul_bit <= annul_bit_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_4617_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_4628_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_4639_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_4665_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_4683_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_4694_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_4704_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_4719_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_4730_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_4749_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_4761_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_4769_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_4781_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_4789_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_4595_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_4616_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_4627_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_4638_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_4654_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_4682_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_4693_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_4726_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_4598_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_4601_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_4605_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_4657_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4613_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4624_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4635_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4664_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4686_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4729_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4745_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4753_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4757_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4765_wire : std_logic_vector(0 downto 0);
    signal EQ_u8_u1_4792_wire : std_logic_vector(0 downto 0);
    signal EQ_u8_u1_4795_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4602_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4606_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4672_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4675_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4705_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4750_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4754_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4762_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4770_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4787_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4796_wire : std_logic_vector(0 downto 0);
    signal R_ASI_MMU_FLUSH_PROBE_4791_wire_constant : std_logic_vector(7 downto 0);
    signal R_ASI_MMU_REGISTER_4794_wire_constant : std_logic_vector(7 downto 0);
    signal UGT_u4_u1_4700_wire : std_logic_vector(0 downto 0);
    signal UGT_u4_u1_4777_wire : std_logic_vector(0 downto 0);
    signal ULT_u2_u1_4748_wire : std_logic_vector(0 downto 0);
    signal ULT_u2_u1_4760_wire : std_logic_vector(0 downto 0);
    signal ULT_u2_u1_4768_wire : std_logic_vector(0 downto 0);
    signal ULT_u4_u1_4697_wire : std_logic_vector(0 downto 0);
    signal ULT_u4_u1_4703_wire : std_logic_vector(0 downto 0);
    signal ULT_u4_u1_4742_wire : std_logic_vector(0 downto 0);
    signal ULT_u4_u1_4780_wire : std_logic_vector(0 downto 0);
    signal asi_bit_4707 : std_logic_vector(0 downto 0);
    signal asi_id_8_4711 : std_logic_vector(7 downto 0);
    signal cond_4645 : std_logic_vector(3 downto 0);
    signal is_branch_4608 : std_logic_vector(0 downto 0);
    signal is_flush_asi_4714 : std_logic_vector(0 downto 0);
    signal is_flush_instr_4688 : std_logic_vector(0 downto 0);
    signal is_load_instr_4772 : std_logic_vector(0 downto 0);
    signal is_store_instr_4783 : std_logic_vector(0 downto 0);
    signal is_ticc_4641 : std_logic_vector(0 downto 0);
    signal is_unimplemented_4659 : std_logic_vector(0 downto 0);
    signal konst_4563_wire_constant : std_logic_vector(1 downto 0);
    signal konst_4568_wire_constant : std_logic_vector(1 downto 0);
    signal konst_4589_wire_constant : std_logic_vector(1 downto 0);
    signal konst_4594_wire_constant : std_logic_vector(1 downto 0);
    signal konst_4597_wire_constant : std_logic_vector(2 downto 0);
    signal konst_4600_wire_constant : std_logic_vector(2 downto 0);
    signal konst_4604_wire_constant : std_logic_vector(2 downto 0);
    signal konst_4612_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4615_wire_constant : std_logic_vector(1 downto 0);
    signal konst_4623_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4626_wire_constant : std_logic_vector(1 downto 0);
    signal konst_4634_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4637_wire_constant : std_logic_vector(1 downto 0);
    signal konst_4648_wire_constant : std_logic_vector(31 downto 0);
    signal konst_4653_wire_constant : std_logic_vector(1 downto 0);
    signal konst_4656_wire_constant : std_logic_vector(2 downto 0);
    signal konst_4663_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4681_wire_constant : std_logic_vector(1 downto 0);
    signal konst_4685_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4692_wire_constant : std_logic_vector(1 downto 0);
    signal konst_4696_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4699_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4702_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4725_wire_constant : std_logic_vector(1 downto 0);
    signal konst_4728_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4735_wire_constant : std_logic_vector(31 downto 0);
    signal konst_4741_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4744_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4747_wire_constant : std_logic_vector(1 downto 0);
    signal konst_4752_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4756_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4759_wire_constant : std_logic_vector(1 downto 0);
    signal konst_4764_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4767_wire_constant : std_logic_vector(1 downto 0);
    signal konst_4776_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4779_wire_constant : std_logic_vector(3 downto 0);
    signal op2_4574 : std_logic_vector(2 downto 0);
    signal op3_4578 : std_logic_vector(5 downto 0);
    signal op3_col_4582 : std_logic_vector(1 downto 0);
    signal op3_row_4586 : std_logic_vector(3 downto 0);
    signal op_4560 : std_logic_vector(1 downto 0);
    signal op_eq_2_4565 : std_logic_vector(0 downto 0);
    signal op_eq_3_4570 : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    R_ASI_MMU_FLUSH_PROBE_4791_wire_constant <= "00000011";
    R_ASI_MMU_REGISTER_4794_wire_constant <= "00000100";
    konst_4563_wire_constant <= "10";
    konst_4568_wire_constant <= "11";
    konst_4589_wire_constant <= "01";
    konst_4594_wire_constant <= "00";
    konst_4597_wire_constant <= "010";
    konst_4600_wire_constant <= "110";
    konst_4604_wire_constant <= "111";
    konst_4612_wire_constant <= "1000";
    konst_4615_wire_constant <= "11";
    konst_4623_wire_constant <= "1001";
    konst_4626_wire_constant <= "11";
    konst_4634_wire_constant <= "1010";
    konst_4637_wire_constant <= "11";
    konst_4648_wire_constant <= "00000000000000000000000000011101";
    konst_4653_wire_constant <= "00";
    konst_4656_wire_constant <= "000";
    konst_4663_wire_constant <= "1000";
    konst_4681_wire_constant <= "11";
    konst_4685_wire_constant <= "1011";
    konst_4692_wire_constant <= "01";
    konst_4696_wire_constant <= "1000";
    konst_4699_wire_constant <= "1000";
    konst_4702_wire_constant <= "1011";
    konst_4725_wire_constant <= "11";
    konst_4728_wire_constant <= "0001";
    konst_4735_wire_constant <= "00000000000000000000000000001101";
    konst_4741_wire_constant <= "0010";
    konst_4744_wire_constant <= "0010";
    konst_4747_wire_constant <= "10";
    konst_4752_wire_constant <= "0011";
    konst_4756_wire_constant <= "1001";
    konst_4759_wire_constant <= "10";
    konst_4764_wire_constant <= "1010";
    konst_4767_wire_constant <= "10";
    konst_4776_wire_constant <= "0011";
    konst_4779_wire_constant <= "1000";
    -- flow-through slice operator slice_4559_inst
    op_4560 <= instr_buffer(31 downto 30);
    -- flow-through slice operator slice_4573_inst
    op2_4574 <= instr_buffer(24 downto 22);
    -- flow-through slice operator slice_4577_inst
    op3_4578 <= instr_buffer(24 downto 19);
    -- flow-through slice operator slice_4581_inst
    op3_col_4582 <= op3_4578(5 downto 4);
    -- flow-through slice operator slice_4585_inst
    op3_row_4586 <= op3_4578(3 downto 0);
    -- flow-through slice operator slice_4644_inst
    cond_4645 <= instr_buffer(28 downto 25);
    -- flow-through slice operator slice_4710_inst
    asi_id_8_4711 <= instr_buffer(12 downto 5);
    -- flow through binary operator AND_u1_u1_4607_inst
    is_branch_4608 <= (EQ_u2_u1_4595_wire and OR_u1_u1_4606_wire);
    -- flow through binary operator AND_u1_u1_4617_inst
    AND_u1_u1_4617_wire <= (EQ_u4_u1_4613_wire and EQ_u2_u1_4616_wire);
    -- flow through binary operator AND_u1_u1_4618_inst
    is_jmpl_buffer <= (op_eq_2_4565 and AND_u1_u1_4617_wire);
    -- flow through binary operator AND_u1_u1_4628_inst
    AND_u1_u1_4628_wire <= (EQ_u4_u1_4624_wire and EQ_u2_u1_4627_wire);
    -- flow through binary operator AND_u1_u1_4629_inst
    is_rett_buffer <= (op_eq_2_4565 and AND_u1_u1_4628_wire);
    -- flow through binary operator AND_u1_u1_4639_inst
    AND_u1_u1_4639_wire <= (EQ_u4_u1_4635_wire and EQ_u2_u1_4638_wire);
    -- flow through binary operator AND_u1_u1_4640_inst
    is_ticc_4641 <= (op_eq_2_4565 and AND_u1_u1_4639_wire);
    -- flow through binary operator AND_u1_u1_4658_inst
    is_unimplemented_4659 <= (EQ_u2_u1_4654_wire and EQ_u3_u1_4657_wire);
    -- flow through binary operator AND_u1_u1_4665_inst
    AND_u1_u1_4665_wire <= (is_ticc_4641 and EQ_u4_u1_4664_wire);
    -- flow through binary operator AND_u1_u1_4683_inst
    AND_u1_u1_4683_wire <= (op_eq_2_4565 and EQ_u2_u1_4682_wire);
    -- flow through binary operator AND_u1_u1_4687_inst
    is_flush_instr_4688 <= (AND_u1_u1_4683_wire and EQ_u4_u1_4686_wire);
    -- flow through binary operator AND_u1_u1_4694_inst
    AND_u1_u1_4694_wire <= (op_eq_3_4570 and EQ_u2_u1_4693_wire);
    -- flow through binary operator AND_u1_u1_4704_inst
    AND_u1_u1_4704_wire <= (UGT_u4_u1_4700_wire and ULT_u4_u1_4703_wire);
    -- flow through binary operator AND_u1_u1_4706_inst
    asi_bit_4707 <= (AND_u1_u1_4694_wire and OR_u1_u1_4705_wire);
    -- flow through binary operator AND_u1_u1_4719_inst
    AND_u1_u1_4719_wire <= (asi_bit_4707 and is_flush_asi_4714);
    -- flow through binary operator AND_u1_u1_4730_inst
    AND_u1_u1_4730_wire <= (EQ_u2_u1_4726_wire and EQ_u4_u1_4729_wire);
    -- flow through binary operator AND_u1_u1_4731_inst
    is_write_psr_buffer <= (op_eq_2_4565 and AND_u1_u1_4730_wire);
    -- flow through binary operator AND_u1_u1_4749_inst
    AND_u1_u1_4749_wire <= (EQ_u4_u1_4745_wire and ULT_u2_u1_4748_wire);
    -- flow through binary operator AND_u1_u1_4761_inst
    AND_u1_u1_4761_wire <= (EQ_u4_u1_4757_wire and ULT_u2_u1_4760_wire);
    -- flow through binary operator AND_u1_u1_4769_inst
    AND_u1_u1_4769_wire <= (EQ_u4_u1_4765_wire and ULT_u2_u1_4768_wire);
    -- flow through binary operator AND_u1_u1_4771_inst
    is_load_instr_4772 <= (op_eq_3_4570 and OR_u1_u1_4770_wire);
    -- flow through binary operator AND_u1_u1_4781_inst
    AND_u1_u1_4781_wire <= (UGT_u4_u1_4777_wire and ULT_u4_u1_4780_wire);
    -- flow through binary operator AND_u1_u1_4782_inst
    is_store_instr_4783 <= (op_eq_3_4570 and AND_u1_u1_4781_wire);
    -- flow through binary operator AND_u1_u1_4789_inst
    AND_u1_u1_4789_wire <= (OR_u1_u1_4787_wire and asi_bit_4707);
    -- flow through binary operator AND_u1_u1_4797_inst
    is_write_to_mmu_ctrl_register_buffer <= (AND_u1_u1_4789_wire and OR_u1_u1_4796_wire);
    -- flow through binary operator BITSEL_u32_u1_4649_inst
    process(instr_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(instr_buffer, konst_4648_wire_constant, tmp_var);
      annul_bit_buffer <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u32_u1_4736_inst
    process(instr_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(instr_buffer, konst_4735_wire_constant, tmp_var);
      imm_bit_buffer <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_4564_inst
    process(op_4560) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op_4560, konst_4563_wire_constant, tmp_var);
      op_eq_2_4565 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_4569_inst
    process(op_4560) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op_4560, konst_4568_wire_constant, tmp_var);
      op_eq_3_4570 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_4590_inst
    process(op_4560) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op_4560, konst_4589_wire_constant, tmp_var);
      is_call_buffer <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_4595_inst
    process(op_4560) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op_4560, konst_4594_wire_constant, tmp_var);
      EQ_u2_u1_4595_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_4616_inst
    process(op3_col_4582) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_4582, konst_4615_wire_constant, tmp_var);
      EQ_u2_u1_4616_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_4627_inst
    process(op3_col_4582) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_4582, konst_4626_wire_constant, tmp_var);
      EQ_u2_u1_4627_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_4638_inst
    process(op3_col_4582) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_4582, konst_4637_wire_constant, tmp_var);
      EQ_u2_u1_4638_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_4654_inst
    process(op_4560) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op_4560, konst_4653_wire_constant, tmp_var);
      EQ_u2_u1_4654_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_4682_inst
    process(op3_col_4582) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_4582, konst_4681_wire_constant, tmp_var);
      EQ_u2_u1_4682_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_4693_inst
    process(op3_col_4582) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_4582, konst_4692_wire_constant, tmp_var);
      EQ_u2_u1_4693_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_4726_inst
    process(op3_col_4582) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_4582, konst_4725_wire_constant, tmp_var);
      EQ_u2_u1_4726_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_4598_inst
    process(op2_4574) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op2_4574, konst_4597_wire_constant, tmp_var);
      EQ_u3_u1_4598_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_4601_inst
    process(op2_4574) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op2_4574, konst_4600_wire_constant, tmp_var);
      EQ_u3_u1_4601_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_4605_inst
    process(op2_4574) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op2_4574, konst_4604_wire_constant, tmp_var);
      EQ_u3_u1_4605_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_4657_inst
    process(op2_4574) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op2_4574, konst_4656_wire_constant, tmp_var);
      EQ_u3_u1_4657_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4613_inst
    process(op3_row_4586) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_4586, konst_4612_wire_constant, tmp_var);
      EQ_u4_u1_4613_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4624_inst
    process(op3_row_4586) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_4586, konst_4623_wire_constant, tmp_var);
      EQ_u4_u1_4624_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4635_inst
    process(op3_row_4586) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_4586, konst_4634_wire_constant, tmp_var);
      EQ_u4_u1_4635_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4664_inst
    process(cond_4645) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(cond_4645, konst_4663_wire_constant, tmp_var);
      EQ_u4_u1_4664_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4686_inst
    process(op3_row_4586) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_4586, konst_4685_wire_constant, tmp_var);
      EQ_u4_u1_4686_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4729_inst
    process(op3_row_4586) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_4586, konst_4728_wire_constant, tmp_var);
      EQ_u4_u1_4729_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4745_inst
    process(op3_row_4586) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_4586, konst_4744_wire_constant, tmp_var);
      EQ_u4_u1_4745_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4753_inst
    process(op3_row_4586) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_4586, konst_4752_wire_constant, tmp_var);
      EQ_u4_u1_4753_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4757_inst
    process(op3_row_4586) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_4586, konst_4756_wire_constant, tmp_var);
      EQ_u4_u1_4757_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4765_inst
    process(op3_row_4586) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_4586, konst_4764_wire_constant, tmp_var);
      EQ_u4_u1_4765_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_4792_inst
    process(asi_id_8_4711) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_id_8_4711, R_ASI_MMU_FLUSH_PROBE_4791_wire_constant, tmp_var);
      EQ_u8_u1_4792_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_4795_inst
    process(asi_id_8_4711) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_id_8_4711, R_ASI_MMU_REGISTER_4794_wire_constant, tmp_var);
      EQ_u8_u1_4795_wire <= tmp_var; --
    end process;
    -- flow through binary operator OR_u1_u1_4602_inst
    OR_u1_u1_4602_wire <= (EQ_u3_u1_4598_wire or EQ_u3_u1_4601_wire);
    -- flow through binary operator OR_u1_u1_4606_inst
    OR_u1_u1_4606_wire <= (OR_u1_u1_4602_wire or EQ_u3_u1_4605_wire);
    -- flow through binary operator OR_u1_u1_4667_inst
    will_trap_buffer <= (AND_u1_u1_4665_wire or is_unimplemented_4659);
    -- flow through binary operator OR_u1_u1_4672_inst
    OR_u1_u1_4672_wire <= (is_call_buffer or is_branch_4608);
    -- flow through binary operator OR_u1_u1_4675_inst
    OR_u1_u1_4675_wire <= (is_jmpl_buffer or is_rett_buffer);
    -- flow through binary operator OR_u1_u1_4676_inst
    is_cti_buffer <= (OR_u1_u1_4672_wire or OR_u1_u1_4675_wire);
    -- flow through binary operator OR_u1_u1_4705_inst
    OR_u1_u1_4705_wire <= (ULT_u4_u1_4697_wire or AND_u1_u1_4704_wire);
    -- flow through binary operator OR_u1_u1_4720_inst
    is_flush_buffer <= (is_flush_instr_4688 or AND_u1_u1_4719_wire);
    -- flow through binary operator OR_u1_u1_4750_inst
    OR_u1_u1_4750_wire <= (ULT_u4_u1_4742_wire or AND_u1_u1_4749_wire);
    -- flow through binary operator OR_u1_u1_4754_inst
    OR_u1_u1_4754_wire <= (OR_u1_u1_4750_wire or EQ_u4_u1_4753_wire);
    -- flow through binary operator OR_u1_u1_4762_inst
    OR_u1_u1_4762_wire <= (OR_u1_u1_4754_wire or AND_u1_u1_4761_wire);
    -- flow through binary operator OR_u1_u1_4770_inst
    OR_u1_u1_4770_wire <= (OR_u1_u1_4762_wire or AND_u1_u1_4769_wire);
    -- flow through binary operator OR_u1_u1_4787_inst
    OR_u1_u1_4787_wire <= (is_load_instr_4772 or is_store_instr_4783);
    -- flow through binary operator OR_u1_u1_4796_inst
    OR_u1_u1_4796_wire <= (EQ_u8_u1_4792_wire or EQ_u8_u1_4795_wire);
    -- flow through binary operator UGT_u4_u1_4700_inst
    process(op3_row_4586) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUgt_proc(op3_row_4586, konst_4699_wire_constant, tmp_var);
      UGT_u4_u1_4700_wire <= tmp_var; --
    end process;
    -- flow through binary operator UGT_u4_u1_4777_inst
    process(op3_row_4586) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUgt_proc(op3_row_4586, konst_4776_wire_constant, tmp_var);
      UGT_u4_u1_4777_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u2_u1_4748_inst
    process(op3_col_4582) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(op3_col_4582, konst_4747_wire_constant, tmp_var);
      ULT_u2_u1_4748_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u2_u1_4760_inst
    process(op3_col_4582) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(op3_col_4582, konst_4759_wire_constant, tmp_var);
      ULT_u2_u1_4760_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u2_u1_4768_inst
    process(op3_col_4582) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(op3_col_4582, konst_4767_wire_constant, tmp_var);
      ULT_u2_u1_4768_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u4_u1_4697_inst
    process(op3_row_4586) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(op3_row_4586, konst_4696_wire_constant, tmp_var);
      ULT_u4_u1_4697_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u4_u1_4703_inst
    process(op3_row_4586) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(op3_row_4586, konst_4702_wire_constant, tmp_var);
      ULT_u4_u1_4703_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u4_u1_4742_inst
    process(op3_row_4586) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(op3_row_4586, konst_4741_wire_constant, tmp_var);
      ULT_u4_u1_4742_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u4_u1_4780_inst
    process(op3_row_4586) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(op3_row_4586, konst_4779_wire_constant, tmp_var);
      ULT_u4_u1_4780_wire <= tmp_var; --
    end process;
    volatile_operator_decode_is_flush_asi_5331: decode_is_flush_asi_Volatile port map(asi_id_8 => asi_id_8_4711, is_flush_asi => is_flush_asi_4714); 
    -- 
  end Block; -- data_path
  -- 
end early_decode_for_fetch_Volatile_arch;
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
library teu_ifetch;
use teu_ifetch.ifetch_global_package.all;
entity generic_pc_adder_Volatile is -- 
  port ( -- 
    pc : in  std_logic_vector(31 downto 0);
    offset : in  std_logic_vector(31 downto 0);
    npc : out  std_logic_vector(31 downto 0)-- 
  );
  -- 
end entity generic_pc_adder_Volatile;
architecture generic_pc_adder_Volatile_arch of generic_pc_adder_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(64-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal pc_buffer :  std_logic_vector(31 downto 0);
  signal offset_buffer :  std_logic_vector(31 downto 0);
  -- output port buffer signals
  signal npc_buffer :  std_logic_vector(31 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  pc_buffer <= pc;
  offset_buffer <= offset;
  -- output handling  -------------------------------------------------------
  npc <= npc_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal ADD_u30_u30_4993_wire : std_logic_vector(29 downto 0);
    signal slice_4990_wire : std_logic_vector(29 downto 0);
    signal slice_4992_wire : std_logic_vector(29 downto 0);
    signal type_cast_4995_wire_constant : std_logic_vector(1 downto 0);
    -- 
  begin -- 
    type_cast_4995_wire_constant <= "00";
    -- flow-through slice operator slice_4990_inst
    slice_4990_wire <= pc_buffer(31 downto 2);
    -- flow-through slice operator slice_4992_inst
    slice_4992_wire <= offset_buffer(31 downto 2);
    -- flow through binary operator ADD_u30_u30_4993_inst
    ADD_u30_u30_4993_wire <= std_logic_vector(unsigned(slice_4990_wire) + unsigned(slice_4992_wire));
    -- flow through binary operator CONCAT_u30_u32_4996_inst
    process(ADD_u30_u30_4993_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApConcat_proc(ADD_u30_u30_4993_wire, type_cast_4995_wire_constant, tmp_var);
      npc_buffer <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end generic_pc_adder_Volatile_arch;
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
library teu_ifetch;
use teu_ifetch.ifetch_global_package.all;
entity ifetch_main_daemon is -- 
  generic (tag_length : integer); 
  port ( -- 
    ICACHE_to_CPU_response_pipe_read_req : out  std_logic_vector(0 downto 0);
    ICACHE_to_CPU_response_pipe_read_ack : in   std_logic_vector(0 downto 0);
    ICACHE_to_CPU_response_pipe_read_data : in   std_logic_vector(89 downto 0);
    ccu_to_teu_pipe_read_req : out  std_logic_vector(0 downto 0);
    ccu_to_teu_pipe_read_ack : in   std_logic_vector(0 downto 0);
    ccu_to_teu_pipe_read_data : in   std_logic_vector(106 downto 0);
    noblock_ifetch_substream_update_pipe_read_req : out  std_logic_vector(0 downto 0);
    noblock_ifetch_substream_update_pipe_read_ack : in   std_logic_vector(0 downto 0);
    noblock_ifetch_substream_update_pipe_read_data : in   std_logic_vector(110 downto 0);
    noblock_teu_idispatch_to_ifetch_pipe_read_req : out  std_logic_vector(0 downto 0);
    noblock_teu_idispatch_to_ifetch_pipe_read_ack : in   std_logic_vector(0 downto 0);
    noblock_teu_idispatch_to_ifetch_pipe_read_data : in   std_logic_vector(147 downto 0);
    teu_ifetch_branch_predictor_lookup_response_pipe_read_req : out  std_logic_vector(0 downto 0);
    teu_ifetch_branch_predictor_lookup_response_pipe_read_ack : in   std_logic_vector(0 downto 0);
    teu_ifetch_branch_predictor_lookup_response_pipe_read_data : in   std_logic_vector(30 downto 0);
    ENV_to_CPU_irl : in std_logic_vector(7 downto 0);
    teu_ras_top_of_stack : in std_logic_vector(31 downto 0);
    NOBLOCK_CPU_to_ICACHE_command_pipe_write_req : out  std_logic_vector(0 downto 0);
    NOBLOCK_CPU_to_ICACHE_command_pipe_write_ack : in   std_logic_vector(0 downto 0);
    NOBLOCK_CPU_to_ICACHE_command_pipe_write_data : out  std_logic_vector(40 downto 0);
    ifetch_issue_to_regulator_pipe_pipe_write_req : out  std_logic_vector(0 downto 0);
    ifetch_issue_to_regulator_pipe_pipe_write_ack : in   std_logic_vector(0 downto 0);
    ifetch_issue_to_regulator_pipe_pipe_write_data : out  std_logic_vector(259 downto 0);
    noblock_teu_ifetch_branch_predictor_lookup_command_pipe_write_req : out  std_logic_vector(0 downto 0);
    noblock_teu_ifetch_branch_predictor_lookup_command_pipe_write_ack : in   std_logic_vector(0 downto 0);
    noblock_teu_ifetch_branch_predictor_lookup_command_pipe_write_data : out  std_logic_vector(30 downto 0);
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
end entity ifetch_main_daemon;
architecture ifetch_main_daemon_arch of ifetch_main_daemon is -- 
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
  signal ifetch_main_daemon_CP_1410_start: Boolean;
  signal ifetch_main_daemon_CP_1410_symbol: Boolean;
  -- volatile/operator module components. 
  component issue_instruction_logic_Volatile is -- 
    port ( -- 
      issue_instruction : in  std_logic_vector(0 downto 0);
      irl_8 : in  std_logic_vector(7 downto 0);
      issue_control_word : in  std_logic_vector(148 downto 0);
      request_icache : in  std_logic_vector(0 downto 0);
      from_icache : in  std_logic_vector(89 downto 0);
      ras_top_of_stack : in  std_logic_vector(31 downto 0);
      is_call : out  std_logic_vector(0 downto 0);
      is_ret_or_retl : out  std_logic_vector(0 downto 0);
      is_valid_ras_entry : out  std_logic_vector(0 downto 0);
      is_unconditional_cti : out  std_logic_vector(0 downto 0);
      ras_nnpc : out  std_logic_vector(31 downto 0);
      branch_target_offset : out  std_logic_vector(31 downto 0);
      to_idecode : out  std_logic_vector(189 downto 0)-- 
    );
    -- 
  end component; 
  component generic_pc_adder_Volatile is -- 
    port ( -- 
      pc : in  std_logic_vector(31 downto 0);
      offset : in  std_logic_vector(31 downto 0);
      npc : out  std_logic_vector(31 downto 0)-- 
    );
    -- 
  end component; 
  -- links between control-path and data-path
  signal WPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_6005_inst_ack_1 : boolean;
  signal do_while_stmt_5335_branch_ack_1 : boolean;
  signal WPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_6005_inst_req_1 : boolean;
  signal WPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_6005_inst_ack_0 : boolean;
  signal WPIPE_NOBLOCK_CPU_to_ICACHE_command_6034_inst_req_0 : boolean;
  signal do_while_stmt_5335_branch_req_0 : boolean;
  signal WPIPE_NOBLOCK_CPU_to_ICACHE_command_6034_inst_ack_0 : boolean;
  signal CONCAT_u2_u3_6137_inst_req_1 : boolean;
  signal RPIPE_teu_ifetch_branch_predictor_lookup_response_5341_inst_req_1 : boolean;
  signal do_while_stmt_5335_branch_ack_0 : boolean;
  signal RPIPE_teu_ifetch_branch_predictor_lookup_response_5341_inst_ack_1 : boolean;
  signal RPIPE_noblock_ifetch_substream_update_5344_inst_req_0 : boolean;
  signal WPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_6005_inst_req_0 : boolean;
  signal RPIPE_teu_ifetch_branch_predictor_lookup_response_5341_inst_req_0 : boolean;
  signal RPIPE_teu_ifetch_branch_predictor_lookup_response_5341_inst_ack_0 : boolean;
  signal W_issue_instruction_6274_delayed_1_0_6154_inst_req_0 : boolean;
  signal W_issue_instruction_6274_delayed_1_0_6154_inst_ack_0 : boolean;
  signal phi_stmt_5337_req_0 : boolean;
  signal phi_stmt_5337_req_1 : boolean;
  signal CONCAT_u2_u3_6137_inst_ack_1 : boolean;
  signal phi_stmt_5337_ack_0 : boolean;
  signal WPIPE_ifetch_issue_to_regulator_pipe_6158_inst_req_0 : boolean;
  signal W_issue_instruction_6274_delayed_1_0_6154_inst_req_1 : boolean;
  signal W_issue_instruction_6274_delayed_1_0_6154_inst_ack_1 : boolean;
  signal RPIPE_noblock_ifetch_substream_update_5344_inst_ack_0 : boolean;
  signal RPIPE_noblock_ifetch_substream_update_5344_inst_req_1 : boolean;
  signal RPIPE_noblock_ifetch_substream_update_5344_inst_ack_1 : boolean;
  signal CONCAT_u2_u3_6137_inst_ack_0 : boolean;
  signal CONCAT_u2_u3_6137_inst_req_0 : boolean;
  signal phi_stmt_5345_req_1 : boolean;
  signal phi_stmt_5345_req_0 : boolean;
  signal phi_stmt_5345_ack_0 : boolean;
  signal W_issue_NNPC_offset_relative_to_PC_6242_delayed_1_0_6113_inst_ack_1 : boolean;
  signal W_issue_NNPC_offset_relative_to_PC_6242_delayed_1_0_6113_inst_req_1 : boolean;
  signal W_issue_NNPC_offset_relative_to_PC_6242_delayed_1_0_6113_inst_ack_0 : boolean;
  signal W_issue_NNPC_offset_relative_to_PC_6242_delayed_1_0_6113_inst_req_0 : boolean;
  signal next_CIRCULANT_6189_5348_buf_req_0 : boolean;
  signal next_CIRCULANT_6189_5348_buf_ack_0 : boolean;
  signal next_CIRCULANT_6189_5348_buf_req_1 : boolean;
  signal WPIPE_ifetch_issue_to_regulator_pipe_6158_inst_ack_1 : boolean;
  signal next_CIRCULANT_6189_5348_buf_ack_1 : boolean;
  signal W_issue_NNPC_6241_delayed_1_0_6110_inst_ack_1 : boolean;
  signal W_issue_NNPC_6241_delayed_1_0_6110_inst_req_1 : boolean;
  signal phi_stmt_5349_req_1 : boolean;
  signal phi_stmt_5349_req_0 : boolean;
  signal phi_stmt_5349_ack_0 : boolean;
  signal W_issue_NNPC_6241_delayed_1_0_6110_inst_ack_0 : boolean;
  signal W_issue_NNPC_6241_delayed_1_0_6110_inst_req_0 : boolean;
  signal W_request_icache_6222_delayed_1_0_6087_inst_ack_1 : boolean;
  signal W_request_icache_6222_delayed_1_0_6087_inst_req_1 : boolean;
  signal next_this_thread_is_dead_5705_5352_buf_req_0 : boolean;
  signal WPIPE_ifetch_issue_to_regulator_pipe_6158_inst_req_1 : boolean;
  signal next_this_thread_is_dead_5705_5352_buf_ack_0 : boolean;
  signal next_this_thread_is_dead_5705_5352_buf_req_1 : boolean;
  signal next_this_thread_is_dead_5705_5352_buf_ack_1 : boolean;
  signal W_request_icache_6222_delayed_1_0_6087_inst_ack_0 : boolean;
  signal W_request_icache_6222_delayed_1_0_6087_inst_req_0 : boolean;
  signal WPIPE_NOBLOCK_CPU_to_ICACHE_command_6034_inst_ack_1 : boolean;
  signal phi_stmt_5353_req_1 : boolean;
  signal phi_stmt_5353_req_0 : boolean;
  signal phi_stmt_5353_ack_0 : boolean;
  signal W_ici_6221_delayed_1_0_6084_inst_ack_1 : boolean;
  signal W_ici_6221_delayed_1_0_6084_inst_req_1 : boolean;
  signal W_ici_6221_delayed_1_0_6084_inst_ack_0 : boolean;
  signal W_ici_6221_delayed_1_0_6084_inst_req_0 : boolean;
  signal W_issue_instruction_6219_delayed_1_0_6081_inst_ack_1 : boolean;
  signal W_issue_instruction_6219_delayed_1_0_6081_inst_req_1 : boolean;
  signal W_issue_instruction_6219_delayed_1_0_6081_inst_ack_0 : boolean;
  signal W_issue_instruction_6219_delayed_1_0_6081_inst_req_0 : boolean;
  signal send_to_branch_predictor_5996_5356_buf_req_0 : boolean;
  signal send_to_branch_predictor_5996_5356_buf_ack_0 : boolean;
  signal send_to_branch_predictor_5996_5356_buf_req_1 : boolean;
  signal WPIPE_ifetch_issue_to_regulator_pipe_6158_inst_ack_0 : boolean;
  signal send_to_branch_predictor_5996_5356_buf_ack_1 : boolean;
  signal RPIPE_ICACHE_to_CPU_response_6043_inst_ack_1 : boolean;
  signal RPIPE_ICACHE_to_CPU_response_6043_inst_req_1 : boolean;
  signal WPIPE_NOBLOCK_CPU_to_ICACHE_command_6034_inst_req_1 : boolean;
  signal phi_stmt_5357_req_1 : boolean;
  signal RPIPE_ICACHE_to_CPU_response_6043_inst_ack_0 : boolean;
  signal phi_stmt_5357_req_0 : boolean;
  signal RPIPE_ICACHE_to_CPU_response_6043_inst_req_0 : boolean;
  signal phi_stmt_5357_ack_0 : boolean;
  signal RPIPE_ccu_to_teu_5361_inst_req_0 : boolean;
  signal RPIPE_ccu_to_teu_5361_inst_ack_0 : boolean;
  signal RPIPE_ccu_to_teu_5361_inst_req_1 : boolean;
  signal RPIPE_ccu_to_teu_5361_inst_ack_1 : boolean;
  signal phi_stmt_5362_req_1 : boolean;
  signal phi_stmt_5362_req_0 : boolean;
  signal phi_stmt_5362_ack_0 : boolean;
  signal RPIPE_noblock_teu_idispatch_to_ifetch_5365_inst_req_0 : boolean;
  signal RPIPE_noblock_teu_idispatch_to_ifetch_5365_inst_ack_0 : boolean;
  signal RPIPE_noblock_teu_idispatch_to_ifetch_5365_inst_req_1 : boolean;
  signal RPIPE_noblock_teu_idispatch_to_ifetch_5365_inst_ack_1 : boolean;
  signal phi_stmt_5366_req_1 : boolean;
  signal phi_stmt_5366_req_0 : boolean;
  signal phi_stmt_5366_ack_0 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "ifetch_main_daemon_input_buffer", -- 
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
  ifetch_main_daemon_CP_1410_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "ifetch_main_daemon_out_buffer", -- 
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
    preds <= ifetch_main_daemon_CP_1410_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
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
    preds <= ifetch_main_daemon_CP_1410_start & tag_ilock_write_ack_symbol;
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
    preds <= ifetch_main_daemon_CP_1410_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  ifetch_main_daemon_CP_1410: Block -- control-path 
    signal ifetch_main_daemon_CP_1410_elements: BooleanArray(203 downto 0);
    -- 
  begin -- 
    ifetch_main_daemon_CP_1410_elements(0) <= ifetch_main_daemon_CP_1410_start;
    ifetch_main_daemon_CP_1410_symbol <= ifetch_main_daemon_CP_1410_elements(1);
    -- CP-element group 0:  transition  place  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	2 
    -- CP-element group 0:  members (4) 
      -- CP-element group 0: 	 branch_block_stmt_5334/do_while_stmt_5335__entry__
      -- CP-element group 0: 	 branch_block_stmt_5334/branch_block_stmt_5334__entry__
      -- CP-element group 0: 	 branch_block_stmt_5334/$entry
      -- CP-element group 0: 	 $entry
      -- 
    -- CP-element group 1:  transition  place  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	203 
    -- CP-element group 1: successors 
    -- CP-element group 1:  members (4) 
      -- CP-element group 1: 	 branch_block_stmt_5334/do_while_stmt_5335__exit__
      -- CP-element group 1: 	 branch_block_stmt_5334/branch_block_stmt_5334__exit__
      -- CP-element group 1: 	 $exit
      -- CP-element group 1: 	 branch_block_stmt_5334/$exit
      -- 
    ifetch_main_daemon_CP_1410_elements(1) <= ifetch_main_daemon_CP_1410_elements(203);
    -- CP-element group 2:  transition  place  bypass  pipeline-parent 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	0 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	8 
    -- CP-element group 2:  members (2) 
      -- CP-element group 2: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335__entry__
      -- CP-element group 2: 	 branch_block_stmt_5334/do_while_stmt_5335/$entry
      -- 
    ifetch_main_daemon_CP_1410_elements(2) <= ifetch_main_daemon_CP_1410_elements(0);
    -- CP-element group 3:  merge  place  bypass  pipeline-parent 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	203 
    -- CP-element group 3:  members (1) 
      -- CP-element group 3: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335__exit__
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(3) is bound as output of CP function.
    -- CP-element group 4:  merge  place  bypass  pipeline-parent 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	7 
    -- CP-element group 4:  members (1) 
      -- CP-element group 4: 	 branch_block_stmt_5334/do_while_stmt_5335/loop_back
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(4) is bound as output of CP function.
    -- CP-element group 5:  branch  transition  place  bypass  pipeline-parent 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	10 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	201 
    -- CP-element group 5: 	202 
    -- CP-element group 5:  members (3) 
      -- CP-element group 5: 	 branch_block_stmt_5334/do_while_stmt_5335/loop_taken/$entry
      -- CP-element group 5: 	 branch_block_stmt_5334/do_while_stmt_5335/condition_done
      -- CP-element group 5: 	 branch_block_stmt_5334/do_while_stmt_5335/loop_exit/$entry
      -- 
    ifetch_main_daemon_CP_1410_elements(5) <= ifetch_main_daemon_CP_1410_elements(10);
    -- CP-element group 6:  branch  place  bypass  pipeline-parent 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	200 
    -- CP-element group 6: successors 
    -- CP-element group 6:  members (1) 
      -- CP-element group 6: 	 branch_block_stmt_5334/do_while_stmt_5335/loop_body_done
      -- 
    ifetch_main_daemon_CP_1410_elements(6) <= ifetch_main_daemon_CP_1410_elements(200);
    -- CP-element group 7:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	4 
    -- CP-element group 7: successors 
    -- CP-element group 7: 	85 
    -- CP-element group 7: 	145 
    -- CP-element group 7: 	104 
    -- CP-element group 7: 	66 
    -- CP-element group 7: 	21 
    -- CP-element group 7: 	47 
    -- CP-element group 7: 	125 
    -- CP-element group 7:  members (1) 
      -- CP-element group 7: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/back_edge_to_loop_body
      -- 
    ifetch_main_daemon_CP_1410_elements(7) <= ifetch_main_daemon_CP_1410_elements(4);
    -- CP-element group 8:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	2 
    -- CP-element group 8: successors 
    -- CP-element group 8: 	87 
    -- CP-element group 8: 	147 
    -- CP-element group 8: 	68 
    -- CP-element group 8: 	106 
    -- CP-element group 8: 	23 
    -- CP-element group 8: 	49 
    -- CP-element group 8: 	127 
    -- CP-element group 8:  members (1) 
      -- CP-element group 8: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/first_time_through_loop_body
      -- 
    ifetch_main_daemon_CP_1410_elements(8) <= ifetch_main_daemon_CP_1410_elements(2);
    -- CP-element group 9:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	199 
    -- CP-element group 9: 	140 
    -- CP-element group 9: 	141 
    -- CP-element group 9: 	60 
    -- CP-element group 9: 	98 
    -- CP-element group 9: 	99 
    -- CP-element group 9: 	79 
    -- CP-element group 9: 	80 
    -- CP-element group 9: 	11 
    -- CP-element group 9: 	16 
    -- CP-element group 9: 	17 
    -- CP-element group 9: 	36 
    -- CP-element group 9: 	41 
    -- CP-element group 9: 	42 
    -- CP-element group 9: 	119 
    -- CP-element group 9: 	120 
    -- CP-element group 9: 	61 
    -- CP-element group 9:  members (3) 
      -- CP-element group 9: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/$entry
      -- CP-element group 9: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/loop_body_start
      -- CP-element group 9: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5342_sample_start_
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(9) is bound as output of CP function.
    -- CP-element group 10:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	199 
    -- CP-element group 10: 	13 
    -- CP-element group 10: 	15 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	5 
    -- CP-element group 10:  members (1) 
      -- CP-element group 10: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/condition_evaluated
      -- 
    condition_evaluated_1434_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " condition_evaluated_1434_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(10), ack => do_while_stmt_5335_branch_req_0); -- 
    ifetch_main_daemon_cp_element_group_10: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 38) := "ifetch_main_daemon_cp_element_group_10"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(199) & ifetch_main_daemon_CP_1410_elements(13) & ifetch_main_daemon_CP_1410_elements(15);
      gj_ifetch_main_daemon_cp_element_group_10 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(10), clk => clk, reset => reset); --
    end block;
    -- CP-element group 11:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	140 
    -- CP-element group 11: 	60 
    -- CP-element group 11: 	98 
    -- CP-element group 11: 	79 
    -- CP-element group 11: 	9 
    -- CP-element group 11: 	16 
    -- CP-element group 11: 	41 
    -- CP-element group 11: 	119 
    -- CP-element group 11: marked-predecessors 
    -- CP-element group 11: 	15 
    -- CP-element group 11: successors 
    -- CP-element group 11: 	100 
    -- CP-element group 11: 	81 
    -- CP-element group 11: 	62 
    -- CP-element group 11: 	18 
    -- CP-element group 11: 	37 
    -- CP-element group 11: 	43 
    -- CP-element group 11: 	121 
    -- CP-element group 11:  members (2) 
      -- CP-element group 11: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/aggregated_phi_sample_req
      -- CP-element group 11: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5366_sample_start__ps
      -- 
    ifetch_main_daemon_cp_element_group_11: block -- 
      constant place_capacities: IntegerArray(0 to 8) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1);
      constant place_markings: IntegerArray(0 to 8)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 1);
      constant place_delays: IntegerArray(0 to 8) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0);
      constant joinName: string(1 to 38) := "ifetch_main_daemon_cp_element_group_11"; 
      signal preds: BooleanArray(1 to 9); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(140) & ifetch_main_daemon_CP_1410_elements(60) & ifetch_main_daemon_CP_1410_elements(98) & ifetch_main_daemon_CP_1410_elements(79) & ifetch_main_daemon_CP_1410_elements(9) & ifetch_main_daemon_CP_1410_elements(16) & ifetch_main_daemon_CP_1410_elements(41) & ifetch_main_daemon_CP_1410_elements(119) & ifetch_main_daemon_CP_1410_elements(15);
      gj_ifetch_main_daemon_cp_element_group_11 : generic_join generic map(name => joinName, number_of_predecessors => 9, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(11), clk => clk, reset => reset); --
    end block;
    -- CP-element group 12:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	142 
    -- CP-element group 12: 	101 
    -- CP-element group 12: 	82 
    -- CP-element group 12: 	63 
    -- CP-element group 12: 	19 
    -- CP-element group 12: 	39 
    -- CP-element group 12: 	44 
    -- CP-element group 12: 	122 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	200 
    -- CP-element group 12: 	13 
    -- CP-element group 12: marked-successors 
    -- CP-element group 12: 	140 
    -- CP-element group 12: 	60 
    -- CP-element group 12: 	98 
    -- CP-element group 12: 	79 
    -- CP-element group 12: 	16 
    -- CP-element group 12: 	41 
    -- CP-element group 12: 	119 
    -- CP-element group 12:  members (9) 
      -- CP-element group 12: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5342_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5337_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/aggregated_phi_sample_ack
      -- CP-element group 12: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5345_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5349_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5353_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5357_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5362_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5366_sample_completed_
      -- 
    ifetch_main_daemon_cp_element_group_12: block -- 
      constant place_capacities: IntegerArray(0 to 7) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1);
      constant place_markings: IntegerArray(0 to 7)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0);
      constant place_delays: IntegerArray(0 to 7) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0);
      constant joinName: string(1 to 38) := "ifetch_main_daemon_cp_element_group_12"; 
      signal preds: BooleanArray(1 to 8); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(142) & ifetch_main_daemon_CP_1410_elements(101) & ifetch_main_daemon_CP_1410_elements(82) & ifetch_main_daemon_CP_1410_elements(63) & ifetch_main_daemon_CP_1410_elements(19) & ifetch_main_daemon_CP_1410_elements(39) & ifetch_main_daemon_CP_1410_elements(44) & ifetch_main_daemon_CP_1410_elements(122);
      gj_ifetch_main_daemon_cp_element_group_12 : generic_join generic map(name => joinName, number_of_predecessors => 8, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(12), clk => clk, reset => reset); --
    end block;
    -- CP-element group 13:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: 	12 
    -- CP-element group 13: successors 
    -- CP-element group 13: 	10 
    -- CP-element group 13:  members (1) 
      -- CP-element group 13: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/aggregated_phi_sample_ack_d
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(13) is a control-delay.
    cp_element_13_delay: control_delay_element  generic map(name => " 13_delay", delay_value => 1)  port map(req => ifetch_main_daemon_CP_1410_elements(12), ack => ifetch_main_daemon_CP_1410_elements(13), clk => clk, reset =>reset);
    -- CP-element group 14:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: 	141 
    -- CP-element group 14: 	99 
    -- CP-element group 14: 	80 
    -- CP-element group 14: 	17 
    -- CP-element group 14: 	36 
    -- CP-element group 14: 	42 
    -- CP-element group 14: 	120 
    -- CP-element group 14: 	61 
    -- CP-element group 14: successors 
    -- CP-element group 14: 	143 
    -- CP-element group 14: 	102 
    -- CP-element group 14: 	83 
    -- CP-element group 14: 	64 
    -- CP-element group 14: 	38 
    -- CP-element group 14: 	45 
    -- CP-element group 14: 	123 
    -- CP-element group 14:  members (2) 
      -- CP-element group 14: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5337_update_start__ps
      -- CP-element group 14: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/aggregated_phi_update_req
      -- 
    ifetch_main_daemon_cp_element_group_14: block -- 
      constant place_capacities: IntegerArray(0 to 7) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1);
      constant place_markings: IntegerArray(0 to 7)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0);
      constant place_delays: IntegerArray(0 to 7) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0);
      constant joinName: string(1 to 38) := "ifetch_main_daemon_cp_element_group_14"; 
      signal preds: BooleanArray(1 to 8); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(141) & ifetch_main_daemon_CP_1410_elements(99) & ifetch_main_daemon_CP_1410_elements(80) & ifetch_main_daemon_CP_1410_elements(17) & ifetch_main_daemon_CP_1410_elements(36) & ifetch_main_daemon_CP_1410_elements(42) & ifetch_main_daemon_CP_1410_elements(120) & ifetch_main_daemon_CP_1410_elements(61);
      gj_ifetch_main_daemon_cp_element_group_14 : generic_join generic map(name => joinName, number_of_predecessors => 8, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(14), clk => clk, reset => reset); --
    end block;
    -- CP-element group 15:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: 	84 
    -- CP-element group 15: 	144 
    -- CP-element group 15: 	103 
    -- CP-element group 15: 	65 
    -- CP-element group 15: 	20 
    -- CP-element group 15: 	40 
    -- CP-element group 15: 	46 
    -- CP-element group 15: 	124 
    -- CP-element group 15: successors 
    -- CP-element group 15: 	10 
    -- CP-element group 15: marked-successors 
    -- CP-element group 15: 	11 
    -- CP-element group 15:  members (1) 
      -- CP-element group 15: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/aggregated_phi_update_ack
      -- 
    ifetch_main_daemon_cp_element_group_15: block -- 
      constant place_capacities: IntegerArray(0 to 7) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1);
      constant place_markings: IntegerArray(0 to 7)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0);
      constant place_delays: IntegerArray(0 to 7) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0);
      constant joinName: string(1 to 38) := "ifetch_main_daemon_cp_element_group_15"; 
      signal preds: BooleanArray(1 to 8); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(84) & ifetch_main_daemon_CP_1410_elements(144) & ifetch_main_daemon_CP_1410_elements(103) & ifetch_main_daemon_CP_1410_elements(65) & ifetch_main_daemon_CP_1410_elements(20) & ifetch_main_daemon_CP_1410_elements(40) & ifetch_main_daemon_CP_1410_elements(46) & ifetch_main_daemon_CP_1410_elements(124);
      gj_ifetch_main_daemon_cp_element_group_15 : generic_join generic map(name => joinName, number_of_predecessors => 8, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(15), clk => clk, reset => reset); --
    end block;
    -- CP-element group 16:  join  transition  bypass  pipeline-parent 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: 	9 
    -- CP-element group 16: marked-predecessors 
    -- CP-element group 16: 	12 
    -- CP-element group 16: successors 
    -- CP-element group 16: 	11 
    -- CP-element group 16:  members (1) 
      -- CP-element group 16: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5337_sample_start_
      -- 
    ifetch_main_daemon_cp_element_group_16: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 38) := "ifetch_main_daemon_cp_element_group_16"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(9) & ifetch_main_daemon_CP_1410_elements(12);
      gj_ifetch_main_daemon_cp_element_group_16 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(16), clk => clk, reset => reset); --
    end block;
    -- CP-element group 17:  join  transition  bypass  pipeline-parent 
    -- CP-element group 17: predecessors 
    -- CP-element group 17: 	9 
    -- CP-element group 17: marked-predecessors 
    -- CP-element group 17: 	182 
    -- CP-element group 17: 	186 
    -- CP-element group 17: 	174 
    -- CP-element group 17: successors 
    -- CP-element group 17: 	14 
    -- CP-element group 17:  members (1) 
      -- CP-element group 17: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5337_update_start_
      -- 
    ifetch_main_daemon_cp_element_group_17: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 1,2 => 1,3 => 1);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 38) := "ifetch_main_daemon_cp_element_group_17"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(9) & ifetch_main_daemon_CP_1410_elements(182) & ifetch_main_daemon_CP_1410_elements(186) & ifetch_main_daemon_CP_1410_elements(174);
      gj_ifetch_main_daemon_cp_element_group_17 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(17), clk => clk, reset => reset); --
    end block;
    -- CP-element group 18:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 18: predecessors 
    -- CP-element group 18: 	11 
    -- CP-element group 18: successors 
    -- CP-element group 18:  members (1) 
      -- CP-element group 18: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5337_sample_start__ps
      -- 
    ifetch_main_daemon_CP_1410_elements(18) <= ifetch_main_daemon_CP_1410_elements(11);
    -- CP-element group 19:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 19: predecessors 
    -- CP-element group 19: successors 
    -- CP-element group 19: 	143 
    -- CP-element group 19: 	102 
    -- CP-element group 19: 	83 
    -- CP-element group 19: 	64 
    -- CP-element group 19: 	12 
    -- CP-element group 19: 	38 
    -- CP-element group 19: 	45 
    -- CP-element group 19: 	123 
    -- CP-element group 19:  members (1) 
      -- CP-element group 19: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5337_sample_completed__ps
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(19) is bound as output of CP function.
    -- CP-element group 20:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 20: predecessors 
    -- CP-element group 20: successors 
    -- CP-element group 20: 	180 
    -- CP-element group 20: 	184 
    -- CP-element group 20: 	15 
    -- CP-element group 20: 	172 
    -- CP-element group 20:  members (2) 
      -- CP-element group 20: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5337_update_completed__ps
      -- CP-element group 20: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5337_update_completed_
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(20) is bound as output of CP function.
    -- CP-element group 21:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 21: predecessors 
    -- CP-element group 21: 	7 
    -- CP-element group 21: successors 
    -- CP-element group 21:  members (1) 
      -- CP-element group 21: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5337_loopback_trigger
      -- 
    ifetch_main_daemon_CP_1410_elements(21) <= ifetch_main_daemon_CP_1410_elements(7);
    -- CP-element group 22:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 22: predecessors 
    -- CP-element group 22: successors 
    -- CP-element group 22:  members (2) 
      -- CP-element group 22: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5337_loopback_sample_req_ps
      -- CP-element group 22: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5337_loopback_sample_req
      -- 
    phi_stmt_5337_loopback_sample_req_1450_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_5337_loopback_sample_req_1450_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(22), ack => phi_stmt_5337_req_1); -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(22) is bound as output of CP function.
    -- CP-element group 23:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 23: predecessors 
    -- CP-element group 23: 	8 
    -- CP-element group 23: successors 
    -- CP-element group 23:  members (1) 
      -- CP-element group 23: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5337_entry_trigger
      -- 
    ifetch_main_daemon_CP_1410_elements(23) <= ifetch_main_daemon_CP_1410_elements(8);
    -- CP-element group 24:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 24: predecessors 
    -- CP-element group 24: successors 
    -- CP-element group 24:  members (2) 
      -- CP-element group 24: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5337_entry_sample_req_ps
      -- CP-element group 24: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5337_entry_sample_req
      -- 
    phi_stmt_5337_entry_sample_req_1453_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_5337_entry_sample_req_1453_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(24), ack => phi_stmt_5337_req_0); -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(24) is bound as output of CP function.
    -- CP-element group 25:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 25: predecessors 
    -- CP-element group 25: successors 
    -- CP-element group 25:  members (2) 
      -- CP-element group 25: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5337_phi_mux_ack_ps
      -- CP-element group 25: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5337_phi_mux_ack
      -- 
    phi_stmt_5337_phi_mux_ack_1456_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 25_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_5337_ack_0, ack => ifetch_main_daemon_CP_1410_elements(25)); -- 
    -- CP-element group 26:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 26: predecessors 
    -- CP-element group 26: successors 
    -- CP-element group 26:  members (4) 
      -- CP-element group 26: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/konst_5339_sample_completed__ps
      -- CP-element group 26: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/konst_5339_sample_start_
      -- CP-element group 26: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/konst_5339_sample_completed_
      -- CP-element group 26: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/konst_5339_sample_start__ps
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(26) is bound as output of CP function.
    -- CP-element group 27:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 27: predecessors 
    -- CP-element group 27: successors 
    -- CP-element group 27: 	29 
    -- CP-element group 27:  members (2) 
      -- CP-element group 27: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/konst_5339_update_start__ps
      -- CP-element group 27: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/konst_5339_update_start_
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(27) is bound as output of CP function.
    -- CP-element group 28:  join  transition  bypass  pipeline-parent 
    -- CP-element group 28: predecessors 
    -- CP-element group 28: 	29 
    -- CP-element group 28: successors 
    -- CP-element group 28:  members (1) 
      -- CP-element group 28: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/konst_5339_update_completed__ps
      -- 
    ifetch_main_daemon_CP_1410_elements(28) <= ifetch_main_daemon_CP_1410_elements(29);
    -- CP-element group 29:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 29: predecessors 
    -- CP-element group 29: 	27 
    -- CP-element group 29: successors 
    -- CP-element group 29: 	28 
    -- CP-element group 29:  members (1) 
      -- CP-element group 29: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/konst_5339_update_completed_
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(29) is a control-delay.
    cp_element_29_delay: control_delay_element  generic map(name => " 29_delay", delay_value => 1)  port map(req => ifetch_main_daemon_CP_1410_elements(27), ack => ifetch_main_daemon_CP_1410_elements(29), clk => clk, reset =>reset);
    -- CP-element group 30:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 30: predecessors 
    -- CP-element group 30: successors 
    -- CP-element group 30: 	32 
    -- CP-element group 30:  members (1) 
      -- CP-element group 30: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_teu_ifetch_branch_predictor_lookup_response_5341_sample_start__ps
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(30) is bound as output of CP function.
    -- CP-element group 31:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 31: predecessors 
    -- CP-element group 31: successors 
    -- CP-element group 31: 	33 
    -- CP-element group 31:  members (1) 
      -- CP-element group 31: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_teu_ifetch_branch_predictor_lookup_response_5341_update_start__ps
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(31) is bound as output of CP function.
    -- CP-element group 32:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 32: predecessors 
    -- CP-element group 32: 	30 
    -- CP-element group 32: marked-predecessors 
    -- CP-element group 32: 	35 
    -- CP-element group 32: successors 
    -- CP-element group 32: 	34 
    -- CP-element group 32:  members (3) 
      -- CP-element group 32: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_teu_ifetch_branch_predictor_lookup_response_5341_Sample/$entry
      -- CP-element group 32: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_teu_ifetch_branch_predictor_lookup_response_5341_sample_start_
      -- CP-element group 32: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_teu_ifetch_branch_predictor_lookup_response_5341_Sample/rr
      -- 
    rr_1477_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_1477_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(32), ack => RPIPE_teu_ifetch_branch_predictor_lookup_response_5341_inst_req_0); -- 
    ifetch_main_daemon_cp_element_group_32: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 38) := "ifetch_main_daemon_cp_element_group_32"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(30) & ifetch_main_daemon_CP_1410_elements(35);
      gj_ifetch_main_daemon_cp_element_group_32 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(32), clk => clk, reset => reset); --
    end block;
    -- CP-element group 33:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 33: predecessors 
    -- CP-element group 33: 	31 
    -- CP-element group 33: 	34 
    -- CP-element group 33: successors 
    -- CP-element group 33: 	35 
    -- CP-element group 33:  members (3) 
      -- CP-element group 33: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_teu_ifetch_branch_predictor_lookup_response_5341_update_start_
      -- CP-element group 33: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_teu_ifetch_branch_predictor_lookup_response_5341_Update/cr
      -- CP-element group 33: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_teu_ifetch_branch_predictor_lookup_response_5341_Update/$entry
      -- 
    cr_1482_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_1482_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(33), ack => RPIPE_teu_ifetch_branch_predictor_lookup_response_5341_inst_req_1); -- 
    ifetch_main_daemon_cp_element_group_33: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 38) := "ifetch_main_daemon_cp_element_group_33"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(31) & ifetch_main_daemon_CP_1410_elements(34);
      gj_ifetch_main_daemon_cp_element_group_33 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(33), clk => clk, reset => reset); --
    end block;
    -- CP-element group 34:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 34: predecessors 
    -- CP-element group 34: 	32 
    -- CP-element group 34: successors 
    -- CP-element group 34: 	33 
    -- CP-element group 34:  members (4) 
      -- CP-element group 34: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_teu_ifetch_branch_predictor_lookup_response_5341_Sample/$exit
      -- CP-element group 34: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_teu_ifetch_branch_predictor_lookup_response_5341_sample_completed_
      -- CP-element group 34: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_teu_ifetch_branch_predictor_lookup_response_5341_sample_completed__ps
      -- CP-element group 34: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_teu_ifetch_branch_predictor_lookup_response_5341_Sample/ra
      -- 
    ra_1478_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 34_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_teu_ifetch_branch_predictor_lookup_response_5341_inst_ack_0, ack => ifetch_main_daemon_CP_1410_elements(34)); -- 
    -- CP-element group 35:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 35: predecessors 
    -- CP-element group 35: 	33 
    -- CP-element group 35: successors 
    -- CP-element group 35: marked-successors 
    -- CP-element group 35: 	32 
    -- CP-element group 35:  members (4) 
      -- CP-element group 35: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_teu_ifetch_branch_predictor_lookup_response_5341_update_completed_
      -- CP-element group 35: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_teu_ifetch_branch_predictor_lookup_response_5341_update_completed__ps
      -- CP-element group 35: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_teu_ifetch_branch_predictor_lookup_response_5341_Update/ca
      -- CP-element group 35: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_teu_ifetch_branch_predictor_lookup_response_5341_Update/$exit
      -- 
    ca_1483_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 35_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_teu_ifetch_branch_predictor_lookup_response_5341_inst_ack_1, ack => ifetch_main_daemon_CP_1410_elements(35)); -- 
    -- CP-element group 36:  join  transition  bypass  pipeline-parent 
    -- CP-element group 36: predecessors 
    -- CP-element group 36: 	9 
    -- CP-element group 36: marked-predecessors 
    -- CP-element group 36: 	182 
    -- CP-element group 36: 	186 
    -- CP-element group 36: 	190 
    -- CP-element group 36: 	162 
    -- CP-element group 36: 	166 
    -- CP-element group 36: 	174 
    -- CP-element group 36: 	178 
    -- CP-element group 36: 	159 
    -- CP-element group 36: successors 
    -- CP-element group 36: 	14 
    -- CP-element group 36:  members (1) 
      -- CP-element group 36: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5342_update_start_
      -- 
    ifetch_main_daemon_cp_element_group_36: block -- 
      constant place_capacities: IntegerArray(0 to 8) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1);
      constant place_markings: IntegerArray(0 to 8)  := (0 => 0,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1);
      constant place_delays: IntegerArray(0 to 8) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0);
      constant joinName: string(1 to 38) := "ifetch_main_daemon_cp_element_group_36"; 
      signal preds: BooleanArray(1 to 9); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(9) & ifetch_main_daemon_CP_1410_elements(182) & ifetch_main_daemon_CP_1410_elements(186) & ifetch_main_daemon_CP_1410_elements(190) & ifetch_main_daemon_CP_1410_elements(162) & ifetch_main_daemon_CP_1410_elements(166) & ifetch_main_daemon_CP_1410_elements(174) & ifetch_main_daemon_CP_1410_elements(178) & ifetch_main_daemon_CP_1410_elements(159);
      gj_ifetch_main_daemon_cp_element_group_36 : generic_join generic map(name => joinName, number_of_predecessors => 9, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(36), clk => clk, reset => reset); --
    end block;
    -- CP-element group 37:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 37: predecessors 
    -- CP-element group 37: 	11 
    -- CP-element group 37: marked-predecessors 
    -- CP-element group 37: 	40 
    -- CP-element group 37: successors 
    -- CP-element group 37: 	39 
    -- CP-element group 37:  members (3) 
      -- CP-element group 37: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_noblock_ifetch_substream_update_5344_sample_start_
      -- CP-element group 37: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_noblock_ifetch_substream_update_5344_Sample/$entry
      -- CP-element group 37: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_noblock_ifetch_substream_update_5344_Sample/rr
      -- 
    rr_1496_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_1496_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(37), ack => RPIPE_noblock_ifetch_substream_update_5344_inst_req_0); -- 
    ifetch_main_daemon_cp_element_group_37: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 38) := "ifetch_main_daemon_cp_element_group_37"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(11) & ifetch_main_daemon_CP_1410_elements(40);
      gj_ifetch_main_daemon_cp_element_group_37 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(37), clk => clk, reset => reset); --
    end block;
    -- CP-element group 38:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 38: predecessors 
    -- CP-element group 38: 	14 
    -- CP-element group 38: 	19 
    -- CP-element group 38: 	39 
    -- CP-element group 38: successors 
    -- CP-element group 38: 	40 
    -- CP-element group 38:  members (3) 
      -- CP-element group 38: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_noblock_ifetch_substream_update_5344_update_start_
      -- CP-element group 38: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_noblock_ifetch_substream_update_5344_Update/$entry
      -- CP-element group 38: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_noblock_ifetch_substream_update_5344_Update/cr
      -- 
    cr_1501_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_1501_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(38), ack => RPIPE_noblock_ifetch_substream_update_5344_inst_req_1); -- 
    ifetch_main_daemon_cp_element_group_38: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 38) := "ifetch_main_daemon_cp_element_group_38"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(14) & ifetch_main_daemon_CP_1410_elements(19) & ifetch_main_daemon_CP_1410_elements(39);
      gj_ifetch_main_daemon_cp_element_group_38 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(38), clk => clk, reset => reset); --
    end block;
    -- CP-element group 39:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 39: predecessors 
    -- CP-element group 39: 	37 
    -- CP-element group 39: successors 
    -- CP-element group 39: 	12 
    -- CP-element group 39: 	38 
    -- CP-element group 39:  members (3) 
      -- CP-element group 39: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_noblock_ifetch_substream_update_5344_sample_completed_
      -- CP-element group 39: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_noblock_ifetch_substream_update_5344_Sample/$exit
      -- CP-element group 39: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_noblock_ifetch_substream_update_5344_Sample/ra
      -- 
    ra_1497_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 39_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_ifetch_substream_update_5344_inst_ack_0, ack => ifetch_main_daemon_CP_1410_elements(39)); -- 
    -- CP-element group 40:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 40: predecessors 
    -- CP-element group 40: 	38 
    -- CP-element group 40: successors 
    -- CP-element group 40: 	180 
    -- CP-element group 40: 	184 
    -- CP-element group 40: 	188 
    -- CP-element group 40: 	15 
    -- CP-element group 40: 	161 
    -- CP-element group 40: 	164 
    -- CP-element group 40: 	172 
    -- CP-element group 40: 	176 
    -- CP-element group 40: 	158 
    -- CP-element group 40: marked-successors 
    -- CP-element group 40: 	37 
    -- CP-element group 40:  members (4) 
      -- CP-element group 40: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5342_update_completed_
      -- CP-element group 40: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_noblock_ifetch_substream_update_5344_update_completed_
      -- CP-element group 40: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_noblock_ifetch_substream_update_5344_Update/$exit
      -- CP-element group 40: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_noblock_ifetch_substream_update_5344_Update/ca
      -- 
    ca_1502_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 40_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_ifetch_substream_update_5344_inst_ack_1, ack => ifetch_main_daemon_CP_1410_elements(40)); -- 
    -- CP-element group 41:  join  transition  bypass  pipeline-parent 
    -- CP-element group 41: predecessors 
    -- CP-element group 41: 	9 
    -- CP-element group 41: marked-predecessors 
    -- CP-element group 41: 	12 
    -- CP-element group 41: successors 
    -- CP-element group 41: 	11 
    -- CP-element group 41:  members (1) 
      -- CP-element group 41: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5345_sample_start_
      -- 
    ifetch_main_daemon_cp_element_group_41: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 38) := "ifetch_main_daemon_cp_element_group_41"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(9) & ifetch_main_daemon_CP_1410_elements(12);
      gj_ifetch_main_daemon_cp_element_group_41 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(41), clk => clk, reset => reset); --
    end block;
    -- CP-element group 42:  join  transition  bypass  pipeline-parent 
    -- CP-element group 42: predecessors 
    -- CP-element group 42: 	9 
    -- CP-element group 42: marked-predecessors 
    -- CP-element group 42: 	182 
    -- CP-element group 42: 	186 
    -- CP-element group 42: 	190 
    -- CP-element group 42: 	194 
    -- CP-element group 42: 	162 
    -- CP-element group 42: 	166 
    -- CP-element group 42: 	170 
    -- CP-element group 42: 	174 
    -- CP-element group 42: 	178 
    -- CP-element group 42: 	159 
    -- CP-element group 42: successors 
    -- CP-element group 42: 	14 
    -- CP-element group 42:  members (1) 
      -- CP-element group 42: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5345_update_start_
      -- 
    ifetch_main_daemon_cp_element_group_42: block -- 
      constant place_capacities: IntegerArray(0 to 10) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1,10 => 1);
      constant place_markings: IntegerArray(0 to 10)  := (0 => 0,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1,10 => 1);
      constant place_delays: IntegerArray(0 to 10) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0);
      constant joinName: string(1 to 38) := "ifetch_main_daemon_cp_element_group_42"; 
      signal preds: BooleanArray(1 to 11); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(9) & ifetch_main_daemon_CP_1410_elements(182) & ifetch_main_daemon_CP_1410_elements(186) & ifetch_main_daemon_CP_1410_elements(190) & ifetch_main_daemon_CP_1410_elements(194) & ifetch_main_daemon_CP_1410_elements(162) & ifetch_main_daemon_CP_1410_elements(166) & ifetch_main_daemon_CP_1410_elements(170) & ifetch_main_daemon_CP_1410_elements(174) & ifetch_main_daemon_CP_1410_elements(178) & ifetch_main_daemon_CP_1410_elements(159);
      gj_ifetch_main_daemon_cp_element_group_42 : generic_join generic map(name => joinName, number_of_predecessors => 11, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(42), clk => clk, reset => reset); --
    end block;
    -- CP-element group 43:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 43: predecessors 
    -- CP-element group 43: 	11 
    -- CP-element group 43: successors 
    -- CP-element group 43:  members (1) 
      -- CP-element group 43: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5345_sample_start__ps
      -- 
    ifetch_main_daemon_CP_1410_elements(43) <= ifetch_main_daemon_CP_1410_elements(11);
    -- CP-element group 44:  join  transition  bypass  pipeline-parent 
    -- CP-element group 44: predecessors 
    -- CP-element group 44: successors 
    -- CP-element group 44: 	12 
    -- CP-element group 44:  members (1) 
      -- CP-element group 44: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5345_sample_completed__ps
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(44) is bound as output of CP function.
    -- CP-element group 45:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 45: predecessors 
    -- CP-element group 45: 	14 
    -- CP-element group 45: 	19 
    -- CP-element group 45: successors 
    -- CP-element group 45:  members (1) 
      -- CP-element group 45: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5345_update_start__ps
      -- 
    ifetch_main_daemon_cp_element_group_45: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 38) := "ifetch_main_daemon_cp_element_group_45"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(14) & ifetch_main_daemon_CP_1410_elements(19);
      gj_ifetch_main_daemon_cp_element_group_45 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(45), clk => clk, reset => reset); --
    end block;
    -- CP-element group 46:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 46: predecessors 
    -- CP-element group 46: successors 
    -- CP-element group 46: 	180 
    -- CP-element group 46: 	184 
    -- CP-element group 46: 	188 
    -- CP-element group 46: 	192 
    -- CP-element group 46: 	15 
    -- CP-element group 46: 	161 
    -- CP-element group 46: 	164 
    -- CP-element group 46: 	168 
    -- CP-element group 46: 	172 
    -- CP-element group 46: 	176 
    -- CP-element group 46: 	158 
    -- CP-element group 46:  members (2) 
      -- CP-element group 46: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5345_update_completed_
      -- CP-element group 46: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5345_update_completed__ps
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(46) is bound as output of CP function.
    -- CP-element group 47:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 47: predecessors 
    -- CP-element group 47: 	7 
    -- CP-element group 47: successors 
    -- CP-element group 47:  members (1) 
      -- CP-element group 47: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5345_loopback_trigger
      -- 
    ifetch_main_daemon_CP_1410_elements(47) <= ifetch_main_daemon_CP_1410_elements(7);
    -- CP-element group 48:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 48: predecessors 
    -- CP-element group 48: successors 
    -- CP-element group 48:  members (2) 
      -- CP-element group 48: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5345_loopback_sample_req
      -- CP-element group 48: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5345_loopback_sample_req_ps
      -- 
    phi_stmt_5345_loopback_sample_req_1512_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_5345_loopback_sample_req_1512_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(48), ack => phi_stmt_5345_req_1); -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(48) is bound as output of CP function.
    -- CP-element group 49:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 49: predecessors 
    -- CP-element group 49: 	8 
    -- CP-element group 49: successors 
    -- CP-element group 49:  members (1) 
      -- CP-element group 49: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5345_entry_trigger
      -- 
    ifetch_main_daemon_CP_1410_elements(49) <= ifetch_main_daemon_CP_1410_elements(8);
    -- CP-element group 50:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 50: predecessors 
    -- CP-element group 50: successors 
    -- CP-element group 50:  members (2) 
      -- CP-element group 50: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5345_entry_sample_req
      -- CP-element group 50: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5345_entry_sample_req_ps
      -- 
    phi_stmt_5345_entry_sample_req_1515_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_5345_entry_sample_req_1515_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(50), ack => phi_stmt_5345_req_0); -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(50) is bound as output of CP function.
    -- CP-element group 51:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 51: predecessors 
    -- CP-element group 51: successors 
    -- CP-element group 51:  members (2) 
      -- CP-element group 51: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5345_phi_mux_ack
      -- CP-element group 51: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5345_phi_mux_ack_ps
      -- 
    phi_stmt_5345_phi_mux_ack_1518_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 51_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_5345_ack_0, ack => ifetch_main_daemon_CP_1410_elements(51)); -- 
    -- CP-element group 52:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 52: predecessors 
    -- CP-element group 52: successors 
    -- CP-element group 52:  members (4) 
      -- CP-element group 52: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/konst_5347_sample_start__ps
      -- CP-element group 52: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/konst_5347_sample_completed__ps
      -- CP-element group 52: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/konst_5347_sample_start_
      -- CP-element group 52: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/konst_5347_sample_completed_
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(52) is bound as output of CP function.
    -- CP-element group 53:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 53: predecessors 
    -- CP-element group 53: successors 
    -- CP-element group 53: 	55 
    -- CP-element group 53:  members (2) 
      -- CP-element group 53: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/konst_5347_update_start__ps
      -- CP-element group 53: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/konst_5347_update_start_
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(53) is bound as output of CP function.
    -- CP-element group 54:  join  transition  bypass  pipeline-parent 
    -- CP-element group 54: predecessors 
    -- CP-element group 54: 	55 
    -- CP-element group 54: successors 
    -- CP-element group 54:  members (1) 
      -- CP-element group 54: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/konst_5347_update_completed__ps
      -- 
    ifetch_main_daemon_CP_1410_elements(54) <= ifetch_main_daemon_CP_1410_elements(55);
    -- CP-element group 55:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 55: predecessors 
    -- CP-element group 55: 	53 
    -- CP-element group 55: successors 
    -- CP-element group 55: 	54 
    -- CP-element group 55:  members (1) 
      -- CP-element group 55: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/konst_5347_update_completed_
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(55) is a control-delay.
    cp_element_55_delay: control_delay_element  generic map(name => " 55_delay", delay_value => 1)  port map(req => ifetch_main_daemon_CP_1410_elements(53), ack => ifetch_main_daemon_CP_1410_elements(55), clk => clk, reset =>reset);
    -- CP-element group 56:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 56: predecessors 
    -- CP-element group 56: successors 
    -- CP-element group 56: 	58 
    -- CP-element group 56:  members (4) 
      -- CP-element group 56: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_next_CIRCULANT_5348_sample_start__ps
      -- CP-element group 56: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_next_CIRCULANT_5348_sample_start_
      -- CP-element group 56: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_next_CIRCULANT_5348_Sample/$entry
      -- CP-element group 56: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_next_CIRCULANT_5348_Sample/req
      -- 
    req_1539_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1539_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(56), ack => next_CIRCULANT_6189_5348_buf_req_0); -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(56) is bound as output of CP function.
    -- CP-element group 57:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 57: predecessors 
    -- CP-element group 57: successors 
    -- CP-element group 57: 	59 
    -- CP-element group 57:  members (4) 
      -- CP-element group 57: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_next_CIRCULANT_5348_update_start__ps
      -- CP-element group 57: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_next_CIRCULANT_5348_update_start_
      -- CP-element group 57: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_next_CIRCULANT_5348_Update/$entry
      -- CP-element group 57: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_next_CIRCULANT_5348_Update/req
      -- 
    req_1544_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1544_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(57), ack => next_CIRCULANT_6189_5348_buf_req_1); -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(57) is bound as output of CP function.
    -- CP-element group 58:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 58: predecessors 
    -- CP-element group 58: 	56 
    -- CP-element group 58: successors 
    -- CP-element group 58:  members (4) 
      -- CP-element group 58: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_next_CIRCULANT_5348_sample_completed__ps
      -- CP-element group 58: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_next_CIRCULANT_5348_sample_completed_
      -- CP-element group 58: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_next_CIRCULANT_5348_Sample/$exit
      -- CP-element group 58: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_next_CIRCULANT_5348_Sample/ack
      -- 
    ack_1540_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 58_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_CIRCULANT_6189_5348_buf_ack_0, ack => ifetch_main_daemon_CP_1410_elements(58)); -- 
    -- CP-element group 59:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 59: predecessors 
    -- CP-element group 59: 	57 
    -- CP-element group 59: successors 
    -- CP-element group 59:  members (4) 
      -- CP-element group 59: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_next_CIRCULANT_5348_update_completed__ps
      -- CP-element group 59: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_next_CIRCULANT_5348_update_completed_
      -- CP-element group 59: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_next_CIRCULANT_5348_Update/$exit
      -- CP-element group 59: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_next_CIRCULANT_5348_Update/ack
      -- 
    ack_1545_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 59_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_CIRCULANT_6189_5348_buf_ack_1, ack => ifetch_main_daemon_CP_1410_elements(59)); -- 
    -- CP-element group 60:  join  transition  bypass  pipeline-parent 
    -- CP-element group 60: predecessors 
    -- CP-element group 60: 	9 
    -- CP-element group 60: marked-predecessors 
    -- CP-element group 60: 	12 
    -- CP-element group 60: successors 
    -- CP-element group 60: 	11 
    -- CP-element group 60:  members (1) 
      -- CP-element group 60: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5349_sample_start_
      -- 
    ifetch_main_daemon_cp_element_group_60: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 38) := "ifetch_main_daemon_cp_element_group_60"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(9) & ifetch_main_daemon_CP_1410_elements(12);
      gj_ifetch_main_daemon_cp_element_group_60 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(60), clk => clk, reset => reset); --
    end block;
    -- CP-element group 61:  join  transition  bypass  pipeline-parent 
    -- CP-element group 61: predecessors 
    -- CP-element group 61: 	9 
    -- CP-element group 61: marked-predecessors 
    -- CP-element group 61: 	194 
    -- CP-element group 61: 	162 
    -- CP-element group 61: 	166 
    -- CP-element group 61: 	170 
    -- CP-element group 61: 	178 
    -- CP-element group 61: 	159 
    -- CP-element group 61: successors 
    -- CP-element group 61: 	14 
    -- CP-element group 61:  members (1) 
      -- CP-element group 61: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5349_update_start_
      -- 
    ifetch_main_daemon_cp_element_group_61: block -- 
      constant place_capacities: IntegerArray(0 to 6) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1);
      constant place_markings: IntegerArray(0 to 6)  := (0 => 0,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1);
      constant place_delays: IntegerArray(0 to 6) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0);
      constant joinName: string(1 to 38) := "ifetch_main_daemon_cp_element_group_61"; 
      signal preds: BooleanArray(1 to 7); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(9) & ifetch_main_daemon_CP_1410_elements(194) & ifetch_main_daemon_CP_1410_elements(162) & ifetch_main_daemon_CP_1410_elements(166) & ifetch_main_daemon_CP_1410_elements(170) & ifetch_main_daemon_CP_1410_elements(178) & ifetch_main_daemon_CP_1410_elements(159);
      gj_ifetch_main_daemon_cp_element_group_61 : generic_join generic map(name => joinName, number_of_predecessors => 7, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(61), clk => clk, reset => reset); --
    end block;
    -- CP-element group 62:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 62: predecessors 
    -- CP-element group 62: 	11 
    -- CP-element group 62: successors 
    -- CP-element group 62:  members (1) 
      -- CP-element group 62: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5349_sample_start__ps
      -- 
    ifetch_main_daemon_CP_1410_elements(62) <= ifetch_main_daemon_CP_1410_elements(11);
    -- CP-element group 63:  join  transition  bypass  pipeline-parent 
    -- CP-element group 63: predecessors 
    -- CP-element group 63: successors 
    -- CP-element group 63: 	12 
    -- CP-element group 63:  members (1) 
      -- CP-element group 63: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5349_sample_completed__ps
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(63) is bound as output of CP function.
    -- CP-element group 64:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 64: predecessors 
    -- CP-element group 64: 	14 
    -- CP-element group 64: 	19 
    -- CP-element group 64: successors 
    -- CP-element group 64:  members (1) 
      -- CP-element group 64: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5349_update_start__ps
      -- 
    ifetch_main_daemon_cp_element_group_64: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 38) := "ifetch_main_daemon_cp_element_group_64"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(14) & ifetch_main_daemon_CP_1410_elements(19);
      gj_ifetch_main_daemon_cp_element_group_64 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(64), clk => clk, reset => reset); --
    end block;
    -- CP-element group 65:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 65: predecessors 
    -- CP-element group 65: successors 
    -- CP-element group 65: 	192 
    -- CP-element group 65: 	15 
    -- CP-element group 65: 	161 
    -- CP-element group 65: 	164 
    -- CP-element group 65: 	168 
    -- CP-element group 65: 	176 
    -- CP-element group 65: 	158 
    -- CP-element group 65:  members (2) 
      -- CP-element group 65: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5349_update_completed_
      -- CP-element group 65: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5349_update_completed__ps
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(65) is bound as output of CP function.
    -- CP-element group 66:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 66: predecessors 
    -- CP-element group 66: 	7 
    -- CP-element group 66: successors 
    -- CP-element group 66:  members (1) 
      -- CP-element group 66: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5349_loopback_trigger
      -- 
    ifetch_main_daemon_CP_1410_elements(66) <= ifetch_main_daemon_CP_1410_elements(7);
    -- CP-element group 67:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 67: predecessors 
    -- CP-element group 67: successors 
    -- CP-element group 67:  members (2) 
      -- CP-element group 67: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5349_loopback_sample_req
      -- CP-element group 67: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5349_loopback_sample_req_ps
      -- 
    phi_stmt_5349_loopback_sample_req_1556_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_5349_loopback_sample_req_1556_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(67), ack => phi_stmt_5349_req_1); -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(67) is bound as output of CP function.
    -- CP-element group 68:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 68: predecessors 
    -- CP-element group 68: 	8 
    -- CP-element group 68: successors 
    -- CP-element group 68:  members (1) 
      -- CP-element group 68: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5349_entry_trigger
      -- 
    ifetch_main_daemon_CP_1410_elements(68) <= ifetch_main_daemon_CP_1410_elements(8);
    -- CP-element group 69:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 69: predecessors 
    -- CP-element group 69: successors 
    -- CP-element group 69:  members (2) 
      -- CP-element group 69: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5349_entry_sample_req
      -- CP-element group 69: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5349_entry_sample_req_ps
      -- 
    phi_stmt_5349_entry_sample_req_1559_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_5349_entry_sample_req_1559_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(69), ack => phi_stmt_5349_req_0); -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(69) is bound as output of CP function.
    -- CP-element group 70:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 70: predecessors 
    -- CP-element group 70: successors 
    -- CP-element group 70:  members (2) 
      -- CP-element group 70: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5349_phi_mux_ack
      -- CP-element group 70: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5349_phi_mux_ack_ps
      -- 
    phi_stmt_5349_phi_mux_ack_1562_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 70_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_5349_ack_0, ack => ifetch_main_daemon_CP_1410_elements(70)); -- 
    -- CP-element group 71:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 71: predecessors 
    -- CP-element group 71: successors 
    -- CP-element group 71:  members (4) 
      -- CP-element group 71: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_ONE_1_5351_sample_start__ps
      -- CP-element group 71: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_ONE_1_5351_sample_completed__ps
      -- CP-element group 71: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_ONE_1_5351_sample_start_
      -- CP-element group 71: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_ONE_1_5351_sample_completed_
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(71) is bound as output of CP function.
    -- CP-element group 72:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 72: predecessors 
    -- CP-element group 72: successors 
    -- CP-element group 72: 	74 
    -- CP-element group 72:  members (2) 
      -- CP-element group 72: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_ONE_1_5351_update_start__ps
      -- CP-element group 72: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_ONE_1_5351_update_start_
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(72) is bound as output of CP function.
    -- CP-element group 73:  join  transition  bypass  pipeline-parent 
    -- CP-element group 73: predecessors 
    -- CP-element group 73: 	74 
    -- CP-element group 73: successors 
    -- CP-element group 73:  members (1) 
      -- CP-element group 73: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_ONE_1_5351_update_completed__ps
      -- 
    ifetch_main_daemon_CP_1410_elements(73) <= ifetch_main_daemon_CP_1410_elements(74);
    -- CP-element group 74:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 74: predecessors 
    -- CP-element group 74: 	72 
    -- CP-element group 74: successors 
    -- CP-element group 74: 	73 
    -- CP-element group 74:  members (1) 
      -- CP-element group 74: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_ONE_1_5351_update_completed_
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(74) is a control-delay.
    cp_element_74_delay: control_delay_element  generic map(name => " 74_delay", delay_value => 1)  port map(req => ifetch_main_daemon_CP_1410_elements(72), ack => ifetch_main_daemon_CP_1410_elements(74), clk => clk, reset =>reset);
    -- CP-element group 75:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 75: predecessors 
    -- CP-element group 75: successors 
    -- CP-element group 75: 	77 
    -- CP-element group 75:  members (4) 
      -- CP-element group 75: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_next_this_thread_is_dead_5352_sample_start__ps
      -- CP-element group 75: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_next_this_thread_is_dead_5352_sample_start_
      -- CP-element group 75: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_next_this_thread_is_dead_5352_Sample/$entry
      -- CP-element group 75: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_next_this_thread_is_dead_5352_Sample/req
      -- 
    req_1583_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1583_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(75), ack => next_this_thread_is_dead_5705_5352_buf_req_0); -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(75) is bound as output of CP function.
    -- CP-element group 76:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 76: predecessors 
    -- CP-element group 76: successors 
    -- CP-element group 76: 	78 
    -- CP-element group 76:  members (4) 
      -- CP-element group 76: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_next_this_thread_is_dead_5352_update_start__ps
      -- CP-element group 76: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_next_this_thread_is_dead_5352_update_start_
      -- CP-element group 76: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_next_this_thread_is_dead_5352_Update/$entry
      -- CP-element group 76: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_next_this_thread_is_dead_5352_Update/req
      -- 
    req_1588_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1588_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(76), ack => next_this_thread_is_dead_5705_5352_buf_req_1); -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(76) is bound as output of CP function.
    -- CP-element group 77:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 77: predecessors 
    -- CP-element group 77: 	75 
    -- CP-element group 77: successors 
    -- CP-element group 77:  members (4) 
      -- CP-element group 77: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_next_this_thread_is_dead_5352_sample_completed__ps
      -- CP-element group 77: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_next_this_thread_is_dead_5352_sample_completed_
      -- CP-element group 77: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_next_this_thread_is_dead_5352_Sample/$exit
      -- CP-element group 77: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_next_this_thread_is_dead_5352_Sample/ack
      -- 
    ack_1584_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 77_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_this_thread_is_dead_5705_5352_buf_ack_0, ack => ifetch_main_daemon_CP_1410_elements(77)); -- 
    -- CP-element group 78:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 78: predecessors 
    -- CP-element group 78: 	76 
    -- CP-element group 78: successors 
    -- CP-element group 78:  members (4) 
      -- CP-element group 78: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_next_this_thread_is_dead_5352_update_completed__ps
      -- CP-element group 78: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_next_this_thread_is_dead_5352_update_completed_
      -- CP-element group 78: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_next_this_thread_is_dead_5352_Update/$exit
      -- CP-element group 78: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_next_this_thread_is_dead_5352_Update/ack
      -- 
    ack_1589_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 78_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_this_thread_is_dead_5705_5352_buf_ack_1, ack => ifetch_main_daemon_CP_1410_elements(78)); -- 
    -- CP-element group 79:  join  transition  bypass  pipeline-parent 
    -- CP-element group 79: predecessors 
    -- CP-element group 79: 	9 
    -- CP-element group 79: marked-predecessors 
    -- CP-element group 79: 	12 
    -- CP-element group 79: successors 
    -- CP-element group 79: 	11 
    -- CP-element group 79:  members (1) 
      -- CP-element group 79: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5353_sample_start_
      -- 
    ifetch_main_daemon_cp_element_group_79: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 38) := "ifetch_main_daemon_cp_element_group_79"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(9) & ifetch_main_daemon_CP_1410_elements(12);
      gj_ifetch_main_daemon_cp_element_group_79 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(79), clk => clk, reset => reset); --
    end block;
    -- CP-element group 80:  join  transition  bypass  pipeline-parent 
    -- CP-element group 80: predecessors 
    -- CP-element group 80: 	9 
    -- CP-element group 80: marked-predecessors 
    -- CP-element group 80: 	182 
    -- CP-element group 80: 	186 
    -- CP-element group 80: 	174 
    -- CP-element group 80: successors 
    -- CP-element group 80: 	14 
    -- CP-element group 80:  members (1) 
      -- CP-element group 80: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5353_update_start_
      -- 
    ifetch_main_daemon_cp_element_group_80: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 1,2 => 1,3 => 1);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 38) := "ifetch_main_daemon_cp_element_group_80"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(9) & ifetch_main_daemon_CP_1410_elements(182) & ifetch_main_daemon_CP_1410_elements(186) & ifetch_main_daemon_CP_1410_elements(174);
      gj_ifetch_main_daemon_cp_element_group_80 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(80), clk => clk, reset => reset); --
    end block;
    -- CP-element group 81:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 81: predecessors 
    -- CP-element group 81: 	11 
    -- CP-element group 81: successors 
    -- CP-element group 81:  members (1) 
      -- CP-element group 81: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5353_sample_start__ps
      -- 
    ifetch_main_daemon_CP_1410_elements(81) <= ifetch_main_daemon_CP_1410_elements(11);
    -- CP-element group 82:  join  transition  bypass  pipeline-parent 
    -- CP-element group 82: predecessors 
    -- CP-element group 82: successors 
    -- CP-element group 82: 	12 
    -- CP-element group 82:  members (1) 
      -- CP-element group 82: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5353_sample_completed__ps
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(82) is bound as output of CP function.
    -- CP-element group 83:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 83: predecessors 
    -- CP-element group 83: 	14 
    -- CP-element group 83: 	19 
    -- CP-element group 83: successors 
    -- CP-element group 83:  members (1) 
      -- CP-element group 83: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5353_update_start__ps
      -- 
    ifetch_main_daemon_cp_element_group_83: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 38) := "ifetch_main_daemon_cp_element_group_83"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(14) & ifetch_main_daemon_CP_1410_elements(19);
      gj_ifetch_main_daemon_cp_element_group_83 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(83), clk => clk, reset => reset); --
    end block;
    -- CP-element group 84:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 84: predecessors 
    -- CP-element group 84: successors 
    -- CP-element group 84: 	180 
    -- CP-element group 84: 	184 
    -- CP-element group 84: 	15 
    -- CP-element group 84: 	172 
    -- CP-element group 84:  members (2) 
      -- CP-element group 84: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5353_update_completed_
      -- CP-element group 84: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5353_update_completed__ps
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(84) is bound as output of CP function.
    -- CP-element group 85:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 85: predecessors 
    -- CP-element group 85: 	7 
    -- CP-element group 85: successors 
    -- CP-element group 85:  members (1) 
      -- CP-element group 85: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5353_loopback_trigger
      -- 
    ifetch_main_daemon_CP_1410_elements(85) <= ifetch_main_daemon_CP_1410_elements(7);
    -- CP-element group 86:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 86: predecessors 
    -- CP-element group 86: successors 
    -- CP-element group 86:  members (2) 
      -- CP-element group 86: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5353_loopback_sample_req
      -- CP-element group 86: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5353_loopback_sample_req_ps
      -- 
    phi_stmt_5353_loopback_sample_req_1600_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_5353_loopback_sample_req_1600_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(86), ack => phi_stmt_5353_req_1); -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(86) is bound as output of CP function.
    -- CP-element group 87:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 87: predecessors 
    -- CP-element group 87: 	8 
    -- CP-element group 87: successors 
    -- CP-element group 87:  members (1) 
      -- CP-element group 87: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5353_entry_trigger
      -- 
    ifetch_main_daemon_CP_1410_elements(87) <= ifetch_main_daemon_CP_1410_elements(8);
    -- CP-element group 88:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 88: predecessors 
    -- CP-element group 88: successors 
    -- CP-element group 88:  members (2) 
      -- CP-element group 88: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5353_entry_sample_req
      -- CP-element group 88: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5353_entry_sample_req_ps
      -- 
    phi_stmt_5353_entry_sample_req_1603_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_5353_entry_sample_req_1603_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(88), ack => phi_stmt_5353_req_0); -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(88) is bound as output of CP function.
    -- CP-element group 89:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 89: predecessors 
    -- CP-element group 89: successors 
    -- CP-element group 89:  members (2) 
      -- CP-element group 89: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5353_phi_mux_ack
      -- CP-element group 89: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5353_phi_mux_ack_ps
      -- 
    phi_stmt_5353_phi_mux_ack_1606_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 89_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_5353_ack_0, ack => ifetch_main_daemon_CP_1410_elements(89)); -- 
    -- CP-element group 90:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 90: predecessors 
    -- CP-element group 90: successors 
    -- CP-element group 90:  members (4) 
      -- CP-element group 90: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/konst_5355_sample_start__ps
      -- CP-element group 90: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/konst_5355_sample_completed__ps
      -- CP-element group 90: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/konst_5355_sample_start_
      -- CP-element group 90: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/konst_5355_sample_completed_
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(90) is bound as output of CP function.
    -- CP-element group 91:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 91: predecessors 
    -- CP-element group 91: successors 
    -- CP-element group 91: 	93 
    -- CP-element group 91:  members (2) 
      -- CP-element group 91: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/konst_5355_update_start__ps
      -- CP-element group 91: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/konst_5355_update_start_
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(91) is bound as output of CP function.
    -- CP-element group 92:  join  transition  bypass  pipeline-parent 
    -- CP-element group 92: predecessors 
    -- CP-element group 92: 	93 
    -- CP-element group 92: successors 
    -- CP-element group 92:  members (1) 
      -- CP-element group 92: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/konst_5355_update_completed__ps
      -- 
    ifetch_main_daemon_CP_1410_elements(92) <= ifetch_main_daemon_CP_1410_elements(93);
    -- CP-element group 93:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 93: predecessors 
    -- CP-element group 93: 	91 
    -- CP-element group 93: successors 
    -- CP-element group 93: 	92 
    -- CP-element group 93:  members (1) 
      -- CP-element group 93: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/konst_5355_update_completed_
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(93) is a control-delay.
    cp_element_93_delay: control_delay_element  generic map(name => " 93_delay", delay_value => 1)  port map(req => ifetch_main_daemon_CP_1410_elements(91), ack => ifetch_main_daemon_CP_1410_elements(93), clk => clk, reset =>reset);
    -- CP-element group 94:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 94: predecessors 
    -- CP-element group 94: successors 
    -- CP-element group 94: 	96 
    -- CP-element group 94:  members (4) 
      -- CP-element group 94: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_send_to_branch_predictor_5356_sample_start__ps
      -- CP-element group 94: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_send_to_branch_predictor_5356_sample_start_
      -- CP-element group 94: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_send_to_branch_predictor_5356_Sample/$entry
      -- CP-element group 94: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_send_to_branch_predictor_5356_Sample/req
      -- 
    req_1627_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1627_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(94), ack => send_to_branch_predictor_5996_5356_buf_req_0); -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(94) is bound as output of CP function.
    -- CP-element group 95:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 95: predecessors 
    -- CP-element group 95: successors 
    -- CP-element group 95: 	97 
    -- CP-element group 95:  members (4) 
      -- CP-element group 95: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_send_to_branch_predictor_5356_update_start__ps
      -- CP-element group 95: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_send_to_branch_predictor_5356_update_start_
      -- CP-element group 95: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_send_to_branch_predictor_5356_Update/$entry
      -- CP-element group 95: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_send_to_branch_predictor_5356_Update/req
      -- 
    req_1632_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1632_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(95), ack => send_to_branch_predictor_5996_5356_buf_req_1); -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(95) is bound as output of CP function.
    -- CP-element group 96:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 96: predecessors 
    -- CP-element group 96: 	94 
    -- CP-element group 96: successors 
    -- CP-element group 96:  members (4) 
      -- CP-element group 96: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_send_to_branch_predictor_5356_sample_completed__ps
      -- CP-element group 96: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_send_to_branch_predictor_5356_sample_completed_
      -- CP-element group 96: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_send_to_branch_predictor_5356_Sample/$exit
      -- CP-element group 96: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_send_to_branch_predictor_5356_Sample/ack
      -- 
    ack_1628_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 96_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => send_to_branch_predictor_5996_5356_buf_ack_0, ack => ifetch_main_daemon_CP_1410_elements(96)); -- 
    -- CP-element group 97:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 97: predecessors 
    -- CP-element group 97: 	95 
    -- CP-element group 97: successors 
    -- CP-element group 97:  members (4) 
      -- CP-element group 97: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_send_to_branch_predictor_5356_update_completed__ps
      -- CP-element group 97: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_send_to_branch_predictor_5356_update_completed_
      -- CP-element group 97: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_send_to_branch_predictor_5356_Update/$exit
      -- CP-element group 97: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_send_to_branch_predictor_5356_Update/ack
      -- 
    ack_1633_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 97_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => send_to_branch_predictor_5996_5356_buf_ack_1, ack => ifetch_main_daemon_CP_1410_elements(97)); -- 
    -- CP-element group 98:  join  transition  bypass  pipeline-parent 
    -- CP-element group 98: predecessors 
    -- CP-element group 98: 	9 
    -- CP-element group 98: marked-predecessors 
    -- CP-element group 98: 	12 
    -- CP-element group 98: successors 
    -- CP-element group 98: 	11 
    -- CP-element group 98:  members (1) 
      -- CP-element group 98: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5357_sample_start_
      -- 
    ifetch_main_daemon_cp_element_group_98: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 38) := "ifetch_main_daemon_cp_element_group_98"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(9) & ifetch_main_daemon_CP_1410_elements(12);
      gj_ifetch_main_daemon_cp_element_group_98 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(98), clk => clk, reset => reset); --
    end block;
    -- CP-element group 99:  join  transition  bypass  pipeline-parent 
    -- CP-element group 99: predecessors 
    -- CP-element group 99: 	9 
    -- CP-element group 99: marked-predecessors 
    -- CP-element group 99: 	182 
    -- CP-element group 99: 	186 
    -- CP-element group 99: 	190 
    -- CP-element group 99: 	194 
    -- CP-element group 99: 	162 
    -- CP-element group 99: 	166 
    -- CP-element group 99: 	170 
    -- CP-element group 99: 	174 
    -- CP-element group 99: 	178 
    -- CP-element group 99: 	159 
    -- CP-element group 99: successors 
    -- CP-element group 99: 	14 
    -- CP-element group 99:  members (1) 
      -- CP-element group 99: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5357_update_start_
      -- 
    ifetch_main_daemon_cp_element_group_99: block -- 
      constant place_capacities: IntegerArray(0 to 10) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1,10 => 1);
      constant place_markings: IntegerArray(0 to 10)  := (0 => 0,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1,10 => 1);
      constant place_delays: IntegerArray(0 to 10) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0);
      constant joinName: string(1 to 38) := "ifetch_main_daemon_cp_element_group_99"; 
      signal preds: BooleanArray(1 to 11); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(9) & ifetch_main_daemon_CP_1410_elements(182) & ifetch_main_daemon_CP_1410_elements(186) & ifetch_main_daemon_CP_1410_elements(190) & ifetch_main_daemon_CP_1410_elements(194) & ifetch_main_daemon_CP_1410_elements(162) & ifetch_main_daemon_CP_1410_elements(166) & ifetch_main_daemon_CP_1410_elements(170) & ifetch_main_daemon_CP_1410_elements(174) & ifetch_main_daemon_CP_1410_elements(178) & ifetch_main_daemon_CP_1410_elements(159);
      gj_ifetch_main_daemon_cp_element_group_99 : generic_join generic map(name => joinName, number_of_predecessors => 11, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(99), clk => clk, reset => reset); --
    end block;
    -- CP-element group 100:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 100: predecessors 
    -- CP-element group 100: 	11 
    -- CP-element group 100: successors 
    -- CP-element group 100:  members (1) 
      -- CP-element group 100: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5357_sample_start__ps
      -- 
    ifetch_main_daemon_CP_1410_elements(100) <= ifetch_main_daemon_CP_1410_elements(11);
    -- CP-element group 101:  join  transition  bypass  pipeline-parent 
    -- CP-element group 101: predecessors 
    -- CP-element group 101: successors 
    -- CP-element group 101: 	12 
    -- CP-element group 101:  members (1) 
      -- CP-element group 101: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5357_sample_completed__ps
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(101) is bound as output of CP function.
    -- CP-element group 102:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 102: predecessors 
    -- CP-element group 102: 	14 
    -- CP-element group 102: 	19 
    -- CP-element group 102: successors 
    -- CP-element group 102:  members (1) 
      -- CP-element group 102: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5357_update_start__ps
      -- 
    ifetch_main_daemon_cp_element_group_102: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 39) := "ifetch_main_daemon_cp_element_group_102"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(14) & ifetch_main_daemon_CP_1410_elements(19);
      gj_ifetch_main_daemon_cp_element_group_102 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(102), clk => clk, reset => reset); --
    end block;
    -- CP-element group 103:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 103: predecessors 
    -- CP-element group 103: successors 
    -- CP-element group 103: 	180 
    -- CP-element group 103: 	184 
    -- CP-element group 103: 	188 
    -- CP-element group 103: 	192 
    -- CP-element group 103: 	15 
    -- CP-element group 103: 	161 
    -- CP-element group 103: 	164 
    -- CP-element group 103: 	168 
    -- CP-element group 103: 	172 
    -- CP-element group 103: 	176 
    -- CP-element group 103: 	158 
    -- CP-element group 103:  members (2) 
      -- CP-element group 103: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5357_update_completed_
      -- CP-element group 103: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5357_update_completed__ps
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(103) is bound as output of CP function.
    -- CP-element group 104:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 104: predecessors 
    -- CP-element group 104: 	7 
    -- CP-element group 104: successors 
    -- CP-element group 104:  members (1) 
      -- CP-element group 104: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5357_loopback_trigger
      -- 
    ifetch_main_daemon_CP_1410_elements(104) <= ifetch_main_daemon_CP_1410_elements(7);
    -- CP-element group 105:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 105: predecessors 
    -- CP-element group 105: successors 
    -- CP-element group 105:  members (2) 
      -- CP-element group 105: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5357_loopback_sample_req
      -- CP-element group 105: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5357_loopback_sample_req_ps
      -- 
    phi_stmt_5357_loopback_sample_req_1644_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_5357_loopback_sample_req_1644_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(105), ack => phi_stmt_5357_req_1); -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(105) is bound as output of CP function.
    -- CP-element group 106:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 106: predecessors 
    -- CP-element group 106: 	8 
    -- CP-element group 106: successors 
    -- CP-element group 106:  members (1) 
      -- CP-element group 106: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5357_entry_trigger
      -- 
    ifetch_main_daemon_CP_1410_elements(106) <= ifetch_main_daemon_CP_1410_elements(8);
    -- CP-element group 107:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 107: predecessors 
    -- CP-element group 107: successors 
    -- CP-element group 107:  members (2) 
      -- CP-element group 107: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5357_entry_sample_req
      -- CP-element group 107: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5357_entry_sample_req_ps
      -- 
    phi_stmt_5357_entry_sample_req_1647_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_5357_entry_sample_req_1647_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(107), ack => phi_stmt_5357_req_0); -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(107) is bound as output of CP function.
    -- CP-element group 108:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 108: predecessors 
    -- CP-element group 108: successors 
    -- CP-element group 108:  members (2) 
      -- CP-element group 108: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5357_phi_mux_ack
      -- CP-element group 108: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5357_phi_mux_ack_ps
      -- 
    phi_stmt_5357_phi_mux_ack_1650_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 108_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_5357_ack_0, ack => ifetch_main_daemon_CP_1410_elements(108)); -- 
    -- CP-element group 109:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 109: predecessors 
    -- CP-element group 109: successors 
    -- CP-element group 109:  members (4) 
      -- CP-element group 109: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/type_cast_5360_sample_start__ps
      -- CP-element group 109: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/type_cast_5360_sample_completed__ps
      -- CP-element group 109: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/type_cast_5360_sample_start_
      -- CP-element group 109: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/type_cast_5360_sample_completed_
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(109) is bound as output of CP function.
    -- CP-element group 110:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 110: predecessors 
    -- CP-element group 110: successors 
    -- CP-element group 110: 	112 
    -- CP-element group 110:  members (2) 
      -- CP-element group 110: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/type_cast_5360_update_start__ps
      -- CP-element group 110: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/type_cast_5360_update_start_
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(110) is bound as output of CP function.
    -- CP-element group 111:  join  transition  bypass  pipeline-parent 
    -- CP-element group 111: predecessors 
    -- CP-element group 111: 	112 
    -- CP-element group 111: successors 
    -- CP-element group 111:  members (1) 
      -- CP-element group 111: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/type_cast_5360_update_completed__ps
      -- 
    ifetch_main_daemon_CP_1410_elements(111) <= ifetch_main_daemon_CP_1410_elements(112);
    -- CP-element group 112:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 112: predecessors 
    -- CP-element group 112: 	110 
    -- CP-element group 112: successors 
    -- CP-element group 112: 	111 
    -- CP-element group 112:  members (1) 
      -- CP-element group 112: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/type_cast_5360_update_completed_
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(112) is a control-delay.
    cp_element_112_delay: control_delay_element  generic map(name => " 112_delay", delay_value => 1)  port map(req => ifetch_main_daemon_CP_1410_elements(110), ack => ifetch_main_daemon_CP_1410_elements(112), clk => clk, reset =>reset);
    -- CP-element group 113:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 113: predecessors 
    -- CP-element group 113: successors 
    -- CP-element group 113: 	115 
    -- CP-element group 113:  members (1) 
      -- CP-element group 113: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_ccu_to_teu_5361_sample_start__ps
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(113) is bound as output of CP function.
    -- CP-element group 114:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 114: predecessors 
    -- CP-element group 114: successors 
    -- CP-element group 114: 	116 
    -- CP-element group 114:  members (1) 
      -- CP-element group 114: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_ccu_to_teu_5361_update_start__ps
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(114) is bound as output of CP function.
    -- CP-element group 115:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 115: predecessors 
    -- CP-element group 115: 	113 
    -- CP-element group 115: marked-predecessors 
    -- CP-element group 115: 	118 
    -- CP-element group 115: successors 
    -- CP-element group 115: 	117 
    -- CP-element group 115:  members (3) 
      -- CP-element group 115: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_ccu_to_teu_5361_sample_start_
      -- CP-element group 115: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_ccu_to_teu_5361_Sample/$entry
      -- CP-element group 115: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_ccu_to_teu_5361_Sample/rr
      -- 
    rr_1671_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_1671_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(115), ack => RPIPE_ccu_to_teu_5361_inst_req_0); -- 
    ifetch_main_daemon_cp_element_group_115: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 39) := "ifetch_main_daemon_cp_element_group_115"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(113) & ifetch_main_daemon_CP_1410_elements(118);
      gj_ifetch_main_daemon_cp_element_group_115 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(115), clk => clk, reset => reset); --
    end block;
    -- CP-element group 116:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 116: predecessors 
    -- CP-element group 116: 	114 
    -- CP-element group 116: 	117 
    -- CP-element group 116: successors 
    -- CP-element group 116: 	118 
    -- CP-element group 116:  members (3) 
      -- CP-element group 116: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_ccu_to_teu_5361_update_start_
      -- CP-element group 116: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_ccu_to_teu_5361_Update/$entry
      -- CP-element group 116: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_ccu_to_teu_5361_Update/cr
      -- 
    cr_1676_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_1676_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(116), ack => RPIPE_ccu_to_teu_5361_inst_req_1); -- 
    ifetch_main_daemon_cp_element_group_116: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 39) := "ifetch_main_daemon_cp_element_group_116"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(114) & ifetch_main_daemon_CP_1410_elements(117);
      gj_ifetch_main_daemon_cp_element_group_116 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(116), clk => clk, reset => reset); --
    end block;
    -- CP-element group 117:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 117: predecessors 
    -- CP-element group 117: 	115 
    -- CP-element group 117: successors 
    -- CP-element group 117: 	116 
    -- CP-element group 117:  members (4) 
      -- CP-element group 117: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_ccu_to_teu_5361_sample_completed__ps
      -- CP-element group 117: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_ccu_to_teu_5361_sample_completed_
      -- CP-element group 117: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_ccu_to_teu_5361_Sample/$exit
      -- CP-element group 117: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_ccu_to_teu_5361_Sample/ra
      -- 
    ra_1672_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 117_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ccu_to_teu_5361_inst_ack_0, ack => ifetch_main_daemon_CP_1410_elements(117)); -- 
    -- CP-element group 118:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 118: predecessors 
    -- CP-element group 118: 	116 
    -- CP-element group 118: successors 
    -- CP-element group 118: marked-successors 
    -- CP-element group 118: 	115 
    -- CP-element group 118:  members (4) 
      -- CP-element group 118: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_ccu_to_teu_5361_update_completed__ps
      -- CP-element group 118: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_ccu_to_teu_5361_update_completed_
      -- CP-element group 118: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_ccu_to_teu_5361_Update/$exit
      -- CP-element group 118: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_ccu_to_teu_5361_Update/ca
      -- 
    ca_1677_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 118_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ccu_to_teu_5361_inst_ack_1, ack => ifetch_main_daemon_CP_1410_elements(118)); -- 
    -- CP-element group 119:  join  transition  bypass  pipeline-parent 
    -- CP-element group 119: predecessors 
    -- CP-element group 119: 	9 
    -- CP-element group 119: marked-predecessors 
    -- CP-element group 119: 	12 
    -- CP-element group 119: successors 
    -- CP-element group 119: 	11 
    -- CP-element group 119:  members (1) 
      -- CP-element group 119: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5362_sample_start_
      -- 
    ifetch_main_daemon_cp_element_group_119: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 39) := "ifetch_main_daemon_cp_element_group_119"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(9) & ifetch_main_daemon_CP_1410_elements(12);
      gj_ifetch_main_daemon_cp_element_group_119 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(119), clk => clk, reset => reset); --
    end block;
    -- CP-element group 120:  join  transition  bypass  pipeline-parent 
    -- CP-element group 120: predecessors 
    -- CP-element group 120: 	9 
    -- CP-element group 120: marked-predecessors 
    -- CP-element group 120: 	182 
    -- CP-element group 120: 	186 
    -- CP-element group 120: 	190 
    -- CP-element group 120: 	194 
    -- CP-element group 120: 	162 
    -- CP-element group 120: 	166 
    -- CP-element group 120: 	170 
    -- CP-element group 120: 	174 
    -- CP-element group 120: 	178 
    -- CP-element group 120: 	159 
    -- CP-element group 120: successors 
    -- CP-element group 120: 	14 
    -- CP-element group 120:  members (1) 
      -- CP-element group 120: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5362_update_start_
      -- 
    ifetch_main_daemon_cp_element_group_120: block -- 
      constant place_capacities: IntegerArray(0 to 10) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1,10 => 1);
      constant place_markings: IntegerArray(0 to 10)  := (0 => 0,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1,10 => 1);
      constant place_delays: IntegerArray(0 to 10) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0);
      constant joinName: string(1 to 39) := "ifetch_main_daemon_cp_element_group_120"; 
      signal preds: BooleanArray(1 to 11); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(9) & ifetch_main_daemon_CP_1410_elements(182) & ifetch_main_daemon_CP_1410_elements(186) & ifetch_main_daemon_CP_1410_elements(190) & ifetch_main_daemon_CP_1410_elements(194) & ifetch_main_daemon_CP_1410_elements(162) & ifetch_main_daemon_CP_1410_elements(166) & ifetch_main_daemon_CP_1410_elements(170) & ifetch_main_daemon_CP_1410_elements(174) & ifetch_main_daemon_CP_1410_elements(178) & ifetch_main_daemon_CP_1410_elements(159);
      gj_ifetch_main_daemon_cp_element_group_120 : generic_join generic map(name => joinName, number_of_predecessors => 11, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(120), clk => clk, reset => reset); --
    end block;
    -- CP-element group 121:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 121: predecessors 
    -- CP-element group 121: 	11 
    -- CP-element group 121: successors 
    -- CP-element group 121:  members (1) 
      -- CP-element group 121: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5362_sample_start__ps
      -- 
    ifetch_main_daemon_CP_1410_elements(121) <= ifetch_main_daemon_CP_1410_elements(11);
    -- CP-element group 122:  join  transition  bypass  pipeline-parent 
    -- CP-element group 122: predecessors 
    -- CP-element group 122: successors 
    -- CP-element group 122: 	12 
    -- CP-element group 122:  members (1) 
      -- CP-element group 122: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5362_sample_completed__ps
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(122) is bound as output of CP function.
    -- CP-element group 123:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 123: predecessors 
    -- CP-element group 123: 	14 
    -- CP-element group 123: 	19 
    -- CP-element group 123: successors 
    -- CP-element group 123:  members (1) 
      -- CP-element group 123: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5362_update_start__ps
      -- 
    ifetch_main_daemon_cp_element_group_123: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 39) := "ifetch_main_daemon_cp_element_group_123"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(14) & ifetch_main_daemon_CP_1410_elements(19);
      gj_ifetch_main_daemon_cp_element_group_123 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(123), clk => clk, reset => reset); --
    end block;
    -- CP-element group 124:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 124: predecessors 
    -- CP-element group 124: successors 
    -- CP-element group 124: 	180 
    -- CP-element group 124: 	184 
    -- CP-element group 124: 	188 
    -- CP-element group 124: 	192 
    -- CP-element group 124: 	15 
    -- CP-element group 124: 	161 
    -- CP-element group 124: 	164 
    -- CP-element group 124: 	168 
    -- CP-element group 124: 	172 
    -- CP-element group 124: 	176 
    -- CP-element group 124: 	158 
    -- CP-element group 124:  members (2) 
      -- CP-element group 124: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5362_update_completed_
      -- CP-element group 124: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5362_update_completed__ps
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(124) is bound as output of CP function.
    -- CP-element group 125:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 125: predecessors 
    -- CP-element group 125: 	7 
    -- CP-element group 125: successors 
    -- CP-element group 125:  members (1) 
      -- CP-element group 125: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5362_loopback_trigger
      -- 
    ifetch_main_daemon_CP_1410_elements(125) <= ifetch_main_daemon_CP_1410_elements(7);
    -- CP-element group 126:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 126: predecessors 
    -- CP-element group 126: successors 
    -- CP-element group 126:  members (2) 
      -- CP-element group 126: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5362_loopback_sample_req
      -- CP-element group 126: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5362_loopback_sample_req_ps
      -- 
    phi_stmt_5362_loopback_sample_req_1688_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_5362_loopback_sample_req_1688_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(126), ack => phi_stmt_5362_req_1); -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(126) is bound as output of CP function.
    -- CP-element group 127:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 127: predecessors 
    -- CP-element group 127: 	8 
    -- CP-element group 127: successors 
    -- CP-element group 127:  members (1) 
      -- CP-element group 127: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5362_entry_trigger
      -- 
    ifetch_main_daemon_CP_1410_elements(127) <= ifetch_main_daemon_CP_1410_elements(8);
    -- CP-element group 128:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 128: predecessors 
    -- CP-element group 128: successors 
    -- CP-element group 128:  members (2) 
      -- CP-element group 128: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5362_entry_sample_req
      -- CP-element group 128: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5362_entry_sample_req_ps
      -- 
    phi_stmt_5362_entry_sample_req_1691_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_5362_entry_sample_req_1691_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(128), ack => phi_stmt_5362_req_0); -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(128) is bound as output of CP function.
    -- CP-element group 129:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 129: predecessors 
    -- CP-element group 129: successors 
    -- CP-element group 129:  members (2) 
      -- CP-element group 129: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5362_phi_mux_ack
      -- CP-element group 129: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5362_phi_mux_ack_ps
      -- 
    phi_stmt_5362_phi_mux_ack_1694_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 129_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_5362_ack_0, ack => ifetch_main_daemon_CP_1410_elements(129)); -- 
    -- CP-element group 130:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 130: predecessors 
    -- CP-element group 130: successors 
    -- CP-element group 130:  members (4) 
      -- CP-element group 130: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/konst_5364_sample_start__ps
      -- CP-element group 130: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/konst_5364_sample_completed__ps
      -- CP-element group 130: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/konst_5364_sample_start_
      -- CP-element group 130: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/konst_5364_sample_completed_
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(130) is bound as output of CP function.
    -- CP-element group 131:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 131: predecessors 
    -- CP-element group 131: successors 
    -- CP-element group 131: 	133 
    -- CP-element group 131:  members (2) 
      -- CP-element group 131: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/konst_5364_update_start__ps
      -- CP-element group 131: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/konst_5364_update_start_
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(131) is bound as output of CP function.
    -- CP-element group 132:  join  transition  bypass  pipeline-parent 
    -- CP-element group 132: predecessors 
    -- CP-element group 132: 	133 
    -- CP-element group 132: successors 
    -- CP-element group 132:  members (1) 
      -- CP-element group 132: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/konst_5364_update_completed__ps
      -- 
    ifetch_main_daemon_CP_1410_elements(132) <= ifetch_main_daemon_CP_1410_elements(133);
    -- CP-element group 133:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 133: predecessors 
    -- CP-element group 133: 	131 
    -- CP-element group 133: successors 
    -- CP-element group 133: 	132 
    -- CP-element group 133:  members (1) 
      -- CP-element group 133: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/konst_5364_update_completed_
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(133) is a control-delay.
    cp_element_133_delay: control_delay_element  generic map(name => " 133_delay", delay_value => 1)  port map(req => ifetch_main_daemon_CP_1410_elements(131), ack => ifetch_main_daemon_CP_1410_elements(133), clk => clk, reset =>reset);
    -- CP-element group 134:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 134: predecessors 
    -- CP-element group 134: successors 
    -- CP-element group 134: 	136 
    -- CP-element group 134:  members (1) 
      -- CP-element group 134: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_noblock_teu_idispatch_to_ifetch_5365_sample_start__ps
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(134) is bound as output of CP function.
    -- CP-element group 135:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 135: predecessors 
    -- CP-element group 135: successors 
    -- CP-element group 135: 	137 
    -- CP-element group 135:  members (1) 
      -- CP-element group 135: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_noblock_teu_idispatch_to_ifetch_5365_update_start__ps
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(135) is bound as output of CP function.
    -- CP-element group 136:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 136: predecessors 
    -- CP-element group 136: 	134 
    -- CP-element group 136: marked-predecessors 
    -- CP-element group 136: 	139 
    -- CP-element group 136: successors 
    -- CP-element group 136: 	138 
    -- CP-element group 136:  members (3) 
      -- CP-element group 136: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_noblock_teu_idispatch_to_ifetch_5365_sample_start_
      -- CP-element group 136: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_noblock_teu_idispatch_to_ifetch_5365_Sample/$entry
      -- CP-element group 136: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_noblock_teu_idispatch_to_ifetch_5365_Sample/rr
      -- 
    rr_1715_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_1715_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(136), ack => RPIPE_noblock_teu_idispatch_to_ifetch_5365_inst_req_0); -- 
    ifetch_main_daemon_cp_element_group_136: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 39) := "ifetch_main_daemon_cp_element_group_136"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(134) & ifetch_main_daemon_CP_1410_elements(139);
      gj_ifetch_main_daemon_cp_element_group_136 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(136), clk => clk, reset => reset); --
    end block;
    -- CP-element group 137:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 137: predecessors 
    -- CP-element group 137: 	135 
    -- CP-element group 137: 	138 
    -- CP-element group 137: successors 
    -- CP-element group 137: 	139 
    -- CP-element group 137:  members (3) 
      -- CP-element group 137: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_noblock_teu_idispatch_to_ifetch_5365_update_start_
      -- CP-element group 137: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_noblock_teu_idispatch_to_ifetch_5365_Update/$entry
      -- CP-element group 137: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_noblock_teu_idispatch_to_ifetch_5365_Update/cr
      -- 
    cr_1720_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_1720_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(137), ack => RPIPE_noblock_teu_idispatch_to_ifetch_5365_inst_req_1); -- 
    ifetch_main_daemon_cp_element_group_137: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 39) := "ifetch_main_daemon_cp_element_group_137"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(135) & ifetch_main_daemon_CP_1410_elements(138);
      gj_ifetch_main_daemon_cp_element_group_137 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(137), clk => clk, reset => reset); --
    end block;
    -- CP-element group 138:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 138: predecessors 
    -- CP-element group 138: 	136 
    -- CP-element group 138: successors 
    -- CP-element group 138: 	137 
    -- CP-element group 138:  members (4) 
      -- CP-element group 138: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_noblock_teu_idispatch_to_ifetch_5365_sample_completed__ps
      -- CP-element group 138: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_noblock_teu_idispatch_to_ifetch_5365_sample_completed_
      -- CP-element group 138: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_noblock_teu_idispatch_to_ifetch_5365_Sample/$exit
      -- CP-element group 138: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_noblock_teu_idispatch_to_ifetch_5365_Sample/ra
      -- 
    ra_1716_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 138_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_teu_idispatch_to_ifetch_5365_inst_ack_0, ack => ifetch_main_daemon_CP_1410_elements(138)); -- 
    -- CP-element group 139:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 139: predecessors 
    -- CP-element group 139: 	137 
    -- CP-element group 139: successors 
    -- CP-element group 139: marked-successors 
    -- CP-element group 139: 	136 
    -- CP-element group 139:  members (4) 
      -- CP-element group 139: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_noblock_teu_idispatch_to_ifetch_5365_update_completed__ps
      -- CP-element group 139: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_noblock_teu_idispatch_to_ifetch_5365_update_completed_
      -- CP-element group 139: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_noblock_teu_idispatch_to_ifetch_5365_Update/$exit
      -- CP-element group 139: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_noblock_teu_idispatch_to_ifetch_5365_Update/ca
      -- 
    ca_1721_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 139_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_teu_idispatch_to_ifetch_5365_inst_ack_1, ack => ifetch_main_daemon_CP_1410_elements(139)); -- 
    -- CP-element group 140:  join  transition  bypass  pipeline-parent 
    -- CP-element group 140: predecessors 
    -- CP-element group 140: 	9 
    -- CP-element group 140: marked-predecessors 
    -- CP-element group 140: 	12 
    -- CP-element group 140: successors 
    -- CP-element group 140: 	11 
    -- CP-element group 140:  members (1) 
      -- CP-element group 140: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5366_sample_start_
      -- 
    ifetch_main_daemon_cp_element_group_140: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 39) := "ifetch_main_daemon_cp_element_group_140"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(9) & ifetch_main_daemon_CP_1410_elements(12);
      gj_ifetch_main_daemon_cp_element_group_140 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(140), clk => clk, reset => reset); --
    end block;
    -- CP-element group 141:  join  transition  bypass  pipeline-parent 
    -- CP-element group 141: predecessors 
    -- CP-element group 141: 	9 
    -- CP-element group 141: marked-predecessors 
    -- CP-element group 141: 	144 
    -- CP-element group 141: successors 
    -- CP-element group 141: 	14 
    -- CP-element group 141:  members (1) 
      -- CP-element group 141: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5366_update_start_
      -- 
    ifetch_main_daemon_cp_element_group_141: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 39) := "ifetch_main_daemon_cp_element_group_141"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(9) & ifetch_main_daemon_CP_1410_elements(144);
      gj_ifetch_main_daemon_cp_element_group_141 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(141), clk => clk, reset => reset); --
    end block;
    -- CP-element group 142:  join  transition  bypass  pipeline-parent 
    -- CP-element group 142: predecessors 
    -- CP-element group 142: successors 
    -- CP-element group 142: 	12 
    -- CP-element group 142:  members (1) 
      -- CP-element group 142: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5366_sample_completed__ps
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(142) is bound as output of CP function.
    -- CP-element group 143:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 143: predecessors 
    -- CP-element group 143: 	14 
    -- CP-element group 143: 	19 
    -- CP-element group 143: successors 
    -- CP-element group 143:  members (1) 
      -- CP-element group 143: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5366_update_start__ps
      -- 
    ifetch_main_daemon_cp_element_group_143: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 39) := "ifetch_main_daemon_cp_element_group_143"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(14) & ifetch_main_daemon_CP_1410_elements(19);
      gj_ifetch_main_daemon_cp_element_group_143 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(143), clk => clk, reset => reset); --
    end block;
    -- CP-element group 144:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 144: predecessors 
    -- CP-element group 144: successors 
    -- CP-element group 144: 	15 
    -- CP-element group 144: marked-successors 
    -- CP-element group 144: 	141 
    -- CP-element group 144:  members (2) 
      -- CP-element group 144: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5366_update_completed_
      -- CP-element group 144: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5366_update_completed__ps
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(144) is bound as output of CP function.
    -- CP-element group 145:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 145: predecessors 
    -- CP-element group 145: 	7 
    -- CP-element group 145: successors 
    -- CP-element group 145:  members (1) 
      -- CP-element group 145: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5366_loopback_trigger
      -- 
    ifetch_main_daemon_CP_1410_elements(145) <= ifetch_main_daemon_CP_1410_elements(7);
    -- CP-element group 146:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 146: predecessors 
    -- CP-element group 146: successors 
    -- CP-element group 146:  members (2) 
      -- CP-element group 146: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5366_loopback_sample_req
      -- CP-element group 146: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5366_loopback_sample_req_ps
      -- 
    phi_stmt_5366_loopback_sample_req_1732_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_5366_loopback_sample_req_1732_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(146), ack => phi_stmt_5366_req_1); -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(146) is bound as output of CP function.
    -- CP-element group 147:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 147: predecessors 
    -- CP-element group 147: 	8 
    -- CP-element group 147: successors 
    -- CP-element group 147:  members (1) 
      -- CP-element group 147: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5366_entry_trigger
      -- 
    ifetch_main_daemon_CP_1410_elements(147) <= ifetch_main_daemon_CP_1410_elements(8);
    -- CP-element group 148:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 148: predecessors 
    -- CP-element group 148: successors 
    -- CP-element group 148:  members (2) 
      -- CP-element group 148: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5366_entry_sample_req
      -- CP-element group 148: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5366_entry_sample_req_ps
      -- 
    phi_stmt_5366_entry_sample_req_1735_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_5366_entry_sample_req_1735_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(148), ack => phi_stmt_5366_req_0); -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(148) is bound as output of CP function.
    -- CP-element group 149:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 149: predecessors 
    -- CP-element group 149: successors 
    -- CP-element group 149:  members (2) 
      -- CP-element group 149: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5366_phi_mux_ack
      -- CP-element group 149: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/phi_stmt_5366_phi_mux_ack_ps
      -- 
    phi_stmt_5366_phi_mux_ack_1738_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 149_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_5366_ack_0, ack => ifetch_main_daemon_CP_1410_elements(149)); -- 
    -- CP-element group 150:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 150: predecessors 
    -- CP-element group 150: successors 
    -- CP-element group 150:  members (4) 
      -- CP-element group 150: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_ONE_1_5368_sample_start__ps
      -- CP-element group 150: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_ONE_1_5368_sample_completed__ps
      -- CP-element group 150: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_ONE_1_5368_sample_start_
      -- CP-element group 150: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_ONE_1_5368_sample_completed_
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(150) is bound as output of CP function.
    -- CP-element group 151:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 151: predecessors 
    -- CP-element group 151: successors 
    -- CP-element group 151: 	153 
    -- CP-element group 151:  members (2) 
      -- CP-element group 151: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_ONE_1_5368_update_start__ps
      -- CP-element group 151: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_ONE_1_5368_update_start_
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(151) is bound as output of CP function.
    -- CP-element group 152:  join  transition  bypass  pipeline-parent 
    -- CP-element group 152: predecessors 
    -- CP-element group 152: 	153 
    -- CP-element group 152: successors 
    -- CP-element group 152:  members (1) 
      -- CP-element group 152: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_ONE_1_5368_update_completed__ps
      -- 
    ifetch_main_daemon_CP_1410_elements(152) <= ifetch_main_daemon_CP_1410_elements(153);
    -- CP-element group 153:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 153: predecessors 
    -- CP-element group 153: 	151 
    -- CP-element group 153: successors 
    -- CP-element group 153: 	152 
    -- CP-element group 153:  members (1) 
      -- CP-element group 153: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_ONE_1_5368_update_completed_
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(153) is a control-delay.
    cp_element_153_delay: control_delay_element  generic map(name => " 153_delay", delay_value => 1)  port map(req => ifetch_main_daemon_CP_1410_elements(151), ack => ifetch_main_daemon_CP_1410_elements(153), clk => clk, reset =>reset);
    -- CP-element group 154:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 154: predecessors 
    -- CP-element group 154: successors 
    -- CP-element group 154:  members (4) 
      -- CP-element group 154: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_ZERO_1_5369_sample_completed_
      -- CP-element group 154: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_ZERO_1_5369_sample_start_
      -- CP-element group 154: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_ZERO_1_5369_sample_start__ps
      -- CP-element group 154: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_ZERO_1_5369_sample_completed__ps
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(154) is bound as output of CP function.
    -- CP-element group 155:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 155: predecessors 
    -- CP-element group 155: successors 
    -- CP-element group 155: 	157 
    -- CP-element group 155:  members (2) 
      -- CP-element group 155: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_ZERO_1_5369_update_start_
      -- CP-element group 155: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_ZERO_1_5369_update_start__ps
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(155) is bound as output of CP function.
    -- CP-element group 156:  join  transition  bypass  pipeline-parent 
    -- CP-element group 156: predecessors 
    -- CP-element group 156: 	157 
    -- CP-element group 156: successors 
    -- CP-element group 156:  members (1) 
      -- CP-element group 156: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_ZERO_1_5369_update_completed__ps
      -- 
    ifetch_main_daemon_CP_1410_elements(156) <= ifetch_main_daemon_CP_1410_elements(157);
    -- CP-element group 157:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 157: predecessors 
    -- CP-element group 157: 	155 
    -- CP-element group 157: successors 
    -- CP-element group 157: 	156 
    -- CP-element group 157:  members (1) 
      -- CP-element group 157: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/R_ZERO_1_5369_update_completed_
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(157) is a control-delay.
    cp_element_157_delay: control_delay_element  generic map(name => " 157_delay", delay_value => 1)  port map(req => ifetch_main_daemon_CP_1410_elements(155), ack => ifetch_main_daemon_CP_1410_elements(157), clk => clk, reset =>reset);
    -- CP-element group 158:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 158: predecessors 
    -- CP-element group 158: 	103 
    -- CP-element group 158: 	65 
    -- CP-element group 158: 	40 
    -- CP-element group 158: 	46 
    -- CP-element group 158: 	124 
    -- CP-element group 158: marked-predecessors 
    -- CP-element group 158: 	160 
    -- CP-element group 158: successors 
    -- CP-element group 158: 	159 
    -- CP-element group 158:  members (3) 
      -- CP-element group 158: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/WPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_6005_sample_start_
      -- CP-element group 158: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/WPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_6005_Sample/req
      -- CP-element group 158: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/WPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_6005_Sample/$entry
      -- 
    req_1764_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1764_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(158), ack => WPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_6005_inst_req_0); -- 
    ifetch_main_daemon_cp_element_group_158: block -- 
      constant place_capacities: IntegerArray(0 to 5) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1);
      constant place_markings: IntegerArray(0 to 5)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 1);
      constant place_delays: IntegerArray(0 to 5) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0);
      constant joinName: string(1 to 39) := "ifetch_main_daemon_cp_element_group_158"; 
      signal preds: BooleanArray(1 to 6); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(103) & ifetch_main_daemon_CP_1410_elements(65) & ifetch_main_daemon_CP_1410_elements(40) & ifetch_main_daemon_CP_1410_elements(46) & ifetch_main_daemon_CP_1410_elements(124) & ifetch_main_daemon_CP_1410_elements(160);
      gj_ifetch_main_daemon_cp_element_group_158 : generic_join generic map(name => joinName, number_of_predecessors => 6, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(158), clk => clk, reset => reset); --
    end block;
    -- CP-element group 159:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 159: predecessors 
    -- CP-element group 159: 	158 
    -- CP-element group 159: successors 
    -- CP-element group 159: 	160 
    -- CP-element group 159: marked-successors 
    -- CP-element group 159: 	99 
    -- CP-element group 159: 	36 
    -- CP-element group 159: 	42 
    -- CP-element group 159: 	120 
    -- CP-element group 159: 	61 
    -- CP-element group 159:  members (6) 
      -- CP-element group 159: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/WPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_6005_Update/req
      -- CP-element group 159: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/WPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_6005_Sample/ack
      -- CP-element group 159: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/WPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_6005_Update/$entry
      -- CP-element group 159: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/WPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_6005_sample_completed_
      -- CP-element group 159: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/WPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_6005_Sample/$exit
      -- CP-element group 159: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/WPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_6005_update_start_
      -- 
    ack_1765_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 159_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_6005_inst_ack_0, ack => ifetch_main_daemon_CP_1410_elements(159)); -- 
    req_1769_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1769_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(159), ack => WPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_6005_inst_req_1); -- 
    -- CP-element group 160:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 160: predecessors 
    -- CP-element group 160: 	159 
    -- CP-element group 160: successors 
    -- CP-element group 160: 	200 
    -- CP-element group 160: marked-successors 
    -- CP-element group 160: 	158 
    -- CP-element group 160:  members (3) 
      -- CP-element group 160: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/WPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_6005_Update/ack
      -- CP-element group 160: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/WPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_6005_Update/$exit
      -- CP-element group 160: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/WPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_6005_update_completed_
      -- 
    ack_1770_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 160_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_6005_inst_ack_1, ack => ifetch_main_daemon_CP_1410_elements(160)); -- 
    -- CP-element group 161:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 161: predecessors 
    -- CP-element group 161: 	103 
    -- CP-element group 161: 	65 
    -- CP-element group 161: 	40 
    -- CP-element group 161: 	46 
    -- CP-element group 161: 	124 
    -- CP-element group 161: marked-predecessors 
    -- CP-element group 161: 	163 
    -- CP-element group 161: successors 
    -- CP-element group 161: 	162 
    -- CP-element group 161:  members (3) 
      -- CP-element group 161: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/WPIPE_NOBLOCK_CPU_to_ICACHE_command_6034_sample_start_
      -- CP-element group 161: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/WPIPE_NOBLOCK_CPU_to_ICACHE_command_6034_Sample/req
      -- CP-element group 161: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/WPIPE_NOBLOCK_CPU_to_ICACHE_command_6034_Sample/$entry
      -- 
    req_1778_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1778_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(161), ack => WPIPE_NOBLOCK_CPU_to_ICACHE_command_6034_inst_req_0); -- 
    ifetch_main_daemon_cp_element_group_161: block -- 
      constant place_capacities: IntegerArray(0 to 5) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1);
      constant place_markings: IntegerArray(0 to 5)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 1);
      constant place_delays: IntegerArray(0 to 5) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0);
      constant joinName: string(1 to 39) := "ifetch_main_daemon_cp_element_group_161"; 
      signal preds: BooleanArray(1 to 6); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(103) & ifetch_main_daemon_CP_1410_elements(65) & ifetch_main_daemon_CP_1410_elements(40) & ifetch_main_daemon_CP_1410_elements(46) & ifetch_main_daemon_CP_1410_elements(124) & ifetch_main_daemon_CP_1410_elements(163);
      gj_ifetch_main_daemon_cp_element_group_161 : generic_join generic map(name => joinName, number_of_predecessors => 6, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(161), clk => clk, reset => reset); --
    end block;
    -- CP-element group 162:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 162: predecessors 
    -- CP-element group 162: 	161 
    -- CP-element group 162: successors 
    -- CP-element group 162: 	163 
    -- CP-element group 162: marked-successors 
    -- CP-element group 162: 	99 
    -- CP-element group 162: 	36 
    -- CP-element group 162: 	42 
    -- CP-element group 162: 	120 
    -- CP-element group 162: 	61 
    -- CP-element group 162:  members (6) 
      -- CP-element group 162: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/WPIPE_NOBLOCK_CPU_to_ICACHE_command_6034_Sample/$exit
      -- CP-element group 162: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/WPIPE_NOBLOCK_CPU_to_ICACHE_command_6034_Sample/ack
      -- CP-element group 162: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/WPIPE_NOBLOCK_CPU_to_ICACHE_command_6034_Update/$entry
      -- CP-element group 162: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/WPIPE_NOBLOCK_CPU_to_ICACHE_command_6034_sample_completed_
      -- CP-element group 162: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/WPIPE_NOBLOCK_CPU_to_ICACHE_command_6034_update_start_
      -- CP-element group 162: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/WPIPE_NOBLOCK_CPU_to_ICACHE_command_6034_Update/req
      -- 
    ack_1779_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 162_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_NOBLOCK_CPU_to_ICACHE_command_6034_inst_ack_0, ack => ifetch_main_daemon_CP_1410_elements(162)); -- 
    req_1783_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1783_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(162), ack => WPIPE_NOBLOCK_CPU_to_ICACHE_command_6034_inst_req_1); -- 
    -- CP-element group 163:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 163: predecessors 
    -- CP-element group 163: 	162 
    -- CP-element group 163: successors 
    -- CP-element group 163: 	200 
    -- CP-element group 163: marked-successors 
    -- CP-element group 163: 	161 
    -- CP-element group 163:  members (3) 
      -- CP-element group 163: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/WPIPE_NOBLOCK_CPU_to_ICACHE_command_6034_Update/$exit
      -- CP-element group 163: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/WPIPE_NOBLOCK_CPU_to_ICACHE_command_6034_update_completed_
      -- CP-element group 163: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/WPIPE_NOBLOCK_CPU_to_ICACHE_command_6034_Update/ack
      -- 
    ack_1784_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 163_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_NOBLOCK_CPU_to_ICACHE_command_6034_inst_ack_1, ack => ifetch_main_daemon_CP_1410_elements(163)); -- 
    -- CP-element group 164:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 164: predecessors 
    -- CP-element group 164: 	103 
    -- CP-element group 164: 	65 
    -- CP-element group 164: 	40 
    -- CP-element group 164: 	46 
    -- CP-element group 164: 	124 
    -- CP-element group 164: marked-predecessors 
    -- CP-element group 164: 	167 
    -- CP-element group 164: successors 
    -- CP-element group 164: 	166 
    -- CP-element group 164:  members (3) 
      -- CP-element group 164: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_ICACHE_to_CPU_response_6043_Sample/$entry
      -- CP-element group 164: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_ICACHE_to_CPU_response_6043_sample_start_
      -- CP-element group 164: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_ICACHE_to_CPU_response_6043_Sample/rr
      -- 
    rr_1792_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_1792_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(164), ack => RPIPE_ICACHE_to_CPU_response_6043_inst_req_0); -- 
    ifetch_main_daemon_cp_element_group_164: block -- 
      constant place_capacities: IntegerArray(0 to 5) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1);
      constant place_markings: IntegerArray(0 to 5)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 1);
      constant place_delays: IntegerArray(0 to 5) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0);
      constant joinName: string(1 to 39) := "ifetch_main_daemon_cp_element_group_164"; 
      signal preds: BooleanArray(1 to 6); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(103) & ifetch_main_daemon_CP_1410_elements(65) & ifetch_main_daemon_CP_1410_elements(40) & ifetch_main_daemon_CP_1410_elements(46) & ifetch_main_daemon_CP_1410_elements(124) & ifetch_main_daemon_CP_1410_elements(167);
      gj_ifetch_main_daemon_cp_element_group_164 : generic_join generic map(name => joinName, number_of_predecessors => 6, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(164), clk => clk, reset => reset); --
    end block;
    -- CP-element group 165:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 165: predecessors 
    -- CP-element group 165: 	166 
    -- CP-element group 165: marked-predecessors 
    -- CP-element group 165: 	197 
    -- CP-element group 165: successors 
    -- CP-element group 165: 	167 
    -- CP-element group 165:  members (3) 
      -- CP-element group 165: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_ICACHE_to_CPU_response_6043_update_start_
      -- CP-element group 165: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_ICACHE_to_CPU_response_6043_Update/cr
      -- CP-element group 165: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_ICACHE_to_CPU_response_6043_Update/$entry
      -- 
    cr_1797_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_1797_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(165), ack => RPIPE_ICACHE_to_CPU_response_6043_inst_req_1); -- 
    ifetch_main_daemon_cp_element_group_165: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 39) := "ifetch_main_daemon_cp_element_group_165"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(166) & ifetch_main_daemon_CP_1410_elements(197);
      gj_ifetch_main_daemon_cp_element_group_165 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(165), clk => clk, reset => reset); --
    end block;
    -- CP-element group 166:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 166: predecessors 
    -- CP-element group 166: 	164 
    -- CP-element group 166: successors 
    -- CP-element group 166: 	165 
    -- CP-element group 166: marked-successors 
    -- CP-element group 166: 	99 
    -- CP-element group 166: 	36 
    -- CP-element group 166: 	42 
    -- CP-element group 166: 	120 
    -- CP-element group 166: 	61 
    -- CP-element group 166:  members (3) 
      -- CP-element group 166: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_ICACHE_to_CPU_response_6043_sample_completed_
      -- CP-element group 166: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_ICACHE_to_CPU_response_6043_Sample/ra
      -- CP-element group 166: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_ICACHE_to_CPU_response_6043_Sample/$exit
      -- 
    ra_1793_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 166_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ICACHE_to_CPU_response_6043_inst_ack_0, ack => ifetch_main_daemon_CP_1410_elements(166)); -- 
    -- CP-element group 167:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 167: predecessors 
    -- CP-element group 167: 	165 
    -- CP-element group 167: successors 
    -- CP-element group 167: 	196 
    -- CP-element group 167: marked-successors 
    -- CP-element group 167: 	164 
    -- CP-element group 167:  members (3) 
      -- CP-element group 167: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_ICACHE_to_CPU_response_6043_update_completed_
      -- CP-element group 167: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_ICACHE_to_CPU_response_6043_Update/ca
      -- CP-element group 167: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/RPIPE_ICACHE_to_CPU_response_6043_Update/$exit
      -- 
    ca_1798_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 167_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ICACHE_to_CPU_response_6043_inst_ack_1, ack => ifetch_main_daemon_CP_1410_elements(167)); -- 
    -- CP-element group 168:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 168: predecessors 
    -- CP-element group 168: 	103 
    -- CP-element group 168: 	65 
    -- CP-element group 168: 	46 
    -- CP-element group 168: 	124 
    -- CP-element group 168: successors 
    -- CP-element group 168: 	170 
    -- CP-element group 168:  members (3) 
      -- CP-element group 168: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6083_Sample/req
      -- CP-element group 168: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6083_Sample/$entry
      -- CP-element group 168: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6083_sample_start_
      -- 
    req_1806_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1806_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(168), ack => W_issue_instruction_6219_delayed_1_0_6081_inst_req_0); -- 
    ifetch_main_daemon_cp_element_group_168: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 39) := "ifetch_main_daemon_cp_element_group_168"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(103) & ifetch_main_daemon_CP_1410_elements(65) & ifetch_main_daemon_CP_1410_elements(46) & ifetch_main_daemon_CP_1410_elements(124);
      gj_ifetch_main_daemon_cp_element_group_168 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(168), clk => clk, reset => reset); --
    end block;
    -- CP-element group 169:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 169: predecessors 
    -- CP-element group 169: marked-predecessors 
    -- CP-element group 169: 	197 
    -- CP-element group 169: successors 
    -- CP-element group 169: 	171 
    -- CP-element group 169:  members (3) 
      -- CP-element group 169: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6083_Update/req
      -- CP-element group 169: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6083_Update/$entry
      -- CP-element group 169: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6083_update_start_
      -- 
    req_1811_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1811_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(169), ack => W_issue_instruction_6219_delayed_1_0_6081_inst_req_1); -- 
    ifetch_main_daemon_cp_element_group_169: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 39) := "ifetch_main_daemon_cp_element_group_169"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= ifetch_main_daemon_CP_1410_elements(197);
      gj_ifetch_main_daemon_cp_element_group_169 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(169), clk => clk, reset => reset); --
    end block;
    -- CP-element group 170:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 170: predecessors 
    -- CP-element group 170: 	168 
    -- CP-element group 170: successors 
    -- CP-element group 170: marked-successors 
    -- CP-element group 170: 	99 
    -- CP-element group 170: 	42 
    -- CP-element group 170: 	120 
    -- CP-element group 170: 	61 
    -- CP-element group 170:  members (3) 
      -- CP-element group 170: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6083_Sample/ack
      -- CP-element group 170: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6083_Sample/$exit
      -- CP-element group 170: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6083_sample_completed_
      -- 
    ack_1807_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 170_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_issue_instruction_6219_delayed_1_0_6081_inst_ack_0, ack => ifetch_main_daemon_CP_1410_elements(170)); -- 
    -- CP-element group 171:  transition  input  bypass  pipeline-parent 
    -- CP-element group 171: predecessors 
    -- CP-element group 171: 	169 
    -- CP-element group 171: successors 
    -- CP-element group 171: 	196 
    -- CP-element group 171:  members (3) 
      -- CP-element group 171: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6083_Update/ack
      -- CP-element group 171: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6083_Update/$exit
      -- CP-element group 171: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6083_update_completed_
      -- 
    ack_1812_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 171_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_issue_instruction_6219_delayed_1_0_6081_inst_ack_1, ack => ifetch_main_daemon_CP_1410_elements(171)); -- 
    -- CP-element group 172:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 172: predecessors 
    -- CP-element group 172: 	84 
    -- CP-element group 172: 	103 
    -- CP-element group 172: 	20 
    -- CP-element group 172: 	40 
    -- CP-element group 172: 	46 
    -- CP-element group 172: 	124 
    -- CP-element group 172: successors 
    -- CP-element group 172: 	174 
    -- CP-element group 172:  members (3) 
      -- CP-element group 172: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6086_Sample/req
      -- CP-element group 172: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6086_Sample/$entry
      -- CP-element group 172: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6086_sample_start_
      -- 
    req_1820_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1820_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(172), ack => W_ici_6221_delayed_1_0_6084_inst_req_0); -- 
    ifetch_main_daemon_cp_element_group_172: block -- 
      constant place_capacities: IntegerArray(0 to 5) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1);
      constant place_markings: IntegerArray(0 to 5)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0);
      constant place_delays: IntegerArray(0 to 5) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0);
      constant joinName: string(1 to 39) := "ifetch_main_daemon_cp_element_group_172"; 
      signal preds: BooleanArray(1 to 6); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(84) & ifetch_main_daemon_CP_1410_elements(103) & ifetch_main_daemon_CP_1410_elements(20) & ifetch_main_daemon_CP_1410_elements(40) & ifetch_main_daemon_CP_1410_elements(46) & ifetch_main_daemon_CP_1410_elements(124);
      gj_ifetch_main_daemon_cp_element_group_172 : generic_join generic map(name => joinName, number_of_predecessors => 6, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(172), clk => clk, reset => reset); --
    end block;
    -- CP-element group 173:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 173: predecessors 
    -- CP-element group 173: marked-predecessors 
    -- CP-element group 173: 	197 
    -- CP-element group 173: successors 
    -- CP-element group 173: 	175 
    -- CP-element group 173:  members (3) 
      -- CP-element group 173: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6086_Update/req
      -- CP-element group 173: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6086_Update/$entry
      -- CP-element group 173: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6086_update_start_
      -- 
    req_1825_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1825_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(173), ack => W_ici_6221_delayed_1_0_6084_inst_req_1); -- 
    ifetch_main_daemon_cp_element_group_173: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 39) := "ifetch_main_daemon_cp_element_group_173"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= ifetch_main_daemon_CP_1410_elements(197);
      gj_ifetch_main_daemon_cp_element_group_173 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(173), clk => clk, reset => reset); --
    end block;
    -- CP-element group 174:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 174: predecessors 
    -- CP-element group 174: 	172 
    -- CP-element group 174: successors 
    -- CP-element group 174: marked-successors 
    -- CP-element group 174: 	99 
    -- CP-element group 174: 	80 
    -- CP-element group 174: 	17 
    -- CP-element group 174: 	36 
    -- CP-element group 174: 	42 
    -- CP-element group 174: 	120 
    -- CP-element group 174:  members (3) 
      -- CP-element group 174: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6086_Sample/ack
      -- CP-element group 174: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6086_Sample/$exit
      -- CP-element group 174: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6086_sample_completed_
      -- 
    ack_1821_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 174_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_ici_6221_delayed_1_0_6084_inst_ack_0, ack => ifetch_main_daemon_CP_1410_elements(174)); -- 
    -- CP-element group 175:  transition  input  bypass  pipeline-parent 
    -- CP-element group 175: predecessors 
    -- CP-element group 175: 	173 
    -- CP-element group 175: successors 
    -- CP-element group 175: 	196 
    -- CP-element group 175:  members (3) 
      -- CP-element group 175: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6086_Update/ack
      -- CP-element group 175: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6086_Update/$exit
      -- CP-element group 175: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6086_update_completed_
      -- 
    ack_1826_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 175_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_ici_6221_delayed_1_0_6084_inst_ack_1, ack => ifetch_main_daemon_CP_1410_elements(175)); -- 
    -- CP-element group 176:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 176: predecessors 
    -- CP-element group 176: 	103 
    -- CP-element group 176: 	65 
    -- CP-element group 176: 	40 
    -- CP-element group 176: 	46 
    -- CP-element group 176: 	124 
    -- CP-element group 176: successors 
    -- CP-element group 176: 	178 
    -- CP-element group 176:  members (3) 
      -- CP-element group 176: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6089_Sample/req
      -- CP-element group 176: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6089_Sample/$entry
      -- CP-element group 176: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6089_sample_start_
      -- 
    req_1834_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1834_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(176), ack => W_request_icache_6222_delayed_1_0_6087_inst_req_0); -- 
    ifetch_main_daemon_cp_element_group_176: block -- 
      constant place_capacities: IntegerArray(0 to 4) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1);
      constant place_markings: IntegerArray(0 to 4)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0);
      constant place_delays: IntegerArray(0 to 4) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0);
      constant joinName: string(1 to 39) := "ifetch_main_daemon_cp_element_group_176"; 
      signal preds: BooleanArray(1 to 5); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(103) & ifetch_main_daemon_CP_1410_elements(65) & ifetch_main_daemon_CP_1410_elements(40) & ifetch_main_daemon_CP_1410_elements(46) & ifetch_main_daemon_CP_1410_elements(124);
      gj_ifetch_main_daemon_cp_element_group_176 : generic_join generic map(name => joinName, number_of_predecessors => 5, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(176), clk => clk, reset => reset); --
    end block;
    -- CP-element group 177:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 177: predecessors 
    -- CP-element group 177: marked-predecessors 
    -- CP-element group 177: 	197 
    -- CP-element group 177: successors 
    -- CP-element group 177: 	179 
    -- CP-element group 177:  members (3) 
      -- CP-element group 177: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6089_Update/req
      -- CP-element group 177: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6089_Update/$entry
      -- CP-element group 177: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6089_update_start_
      -- 
    req_1839_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1839_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(177), ack => W_request_icache_6222_delayed_1_0_6087_inst_req_1); -- 
    ifetch_main_daemon_cp_element_group_177: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 39) := "ifetch_main_daemon_cp_element_group_177"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= ifetch_main_daemon_CP_1410_elements(197);
      gj_ifetch_main_daemon_cp_element_group_177 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(177), clk => clk, reset => reset); --
    end block;
    -- CP-element group 178:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 178: predecessors 
    -- CP-element group 178: 	176 
    -- CP-element group 178: successors 
    -- CP-element group 178: marked-successors 
    -- CP-element group 178: 	99 
    -- CP-element group 178: 	36 
    -- CP-element group 178: 	42 
    -- CP-element group 178: 	120 
    -- CP-element group 178: 	61 
    -- CP-element group 178:  members (3) 
      -- CP-element group 178: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6089_Sample/ack
      -- CP-element group 178: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6089_Sample/$exit
      -- CP-element group 178: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6089_sample_completed_
      -- 
    ack_1835_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 178_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_request_icache_6222_delayed_1_0_6087_inst_ack_0, ack => ifetch_main_daemon_CP_1410_elements(178)); -- 
    -- CP-element group 179:  transition  input  bypass  pipeline-parent 
    -- CP-element group 179: predecessors 
    -- CP-element group 179: 	177 
    -- CP-element group 179: successors 
    -- CP-element group 179: 	196 
    -- CP-element group 179:  members (3) 
      -- CP-element group 179: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6089_Update/ack
      -- CP-element group 179: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6089_Update/$exit
      -- CP-element group 179: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6089_update_completed_
      -- 
    ack_1840_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 179_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_request_icache_6222_delayed_1_0_6087_inst_ack_1, ack => ifetch_main_daemon_CP_1410_elements(179)); -- 
    -- CP-element group 180:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 180: predecessors 
    -- CP-element group 180: 	84 
    -- CP-element group 180: 	103 
    -- CP-element group 180: 	20 
    -- CP-element group 180: 	40 
    -- CP-element group 180: 	46 
    -- CP-element group 180: 	124 
    -- CP-element group 180: successors 
    -- CP-element group 180: 	182 
    -- CP-element group 180:  members (3) 
      -- CP-element group 180: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6112_Sample/req
      -- CP-element group 180: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6112_Sample/$entry
      -- CP-element group 180: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6112_sample_start_
      -- 
    req_1848_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1848_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(180), ack => W_issue_NNPC_6241_delayed_1_0_6110_inst_req_0); -- 
    ifetch_main_daemon_cp_element_group_180: block -- 
      constant place_capacities: IntegerArray(0 to 5) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1);
      constant place_markings: IntegerArray(0 to 5)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0);
      constant place_delays: IntegerArray(0 to 5) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0);
      constant joinName: string(1 to 39) := "ifetch_main_daemon_cp_element_group_180"; 
      signal preds: BooleanArray(1 to 6); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(84) & ifetch_main_daemon_CP_1410_elements(103) & ifetch_main_daemon_CP_1410_elements(20) & ifetch_main_daemon_CP_1410_elements(40) & ifetch_main_daemon_CP_1410_elements(46) & ifetch_main_daemon_CP_1410_elements(124);
      gj_ifetch_main_daemon_cp_element_group_180 : generic_join generic map(name => joinName, number_of_predecessors => 6, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(180), clk => clk, reset => reset); --
    end block;
    -- CP-element group 181:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 181: predecessors 
    -- CP-element group 181: marked-predecessors 
    -- CP-element group 181: 	197 
    -- CP-element group 181: successors 
    -- CP-element group 181: 	183 
    -- CP-element group 181:  members (3) 
      -- CP-element group 181: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6112_Update/req
      -- CP-element group 181: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6112_Update/$entry
      -- CP-element group 181: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6112_update_start_
      -- 
    req_1853_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1853_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(181), ack => W_issue_NNPC_6241_delayed_1_0_6110_inst_req_1); -- 
    ifetch_main_daemon_cp_element_group_181: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 39) := "ifetch_main_daemon_cp_element_group_181"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= ifetch_main_daemon_CP_1410_elements(197);
      gj_ifetch_main_daemon_cp_element_group_181 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(181), clk => clk, reset => reset); --
    end block;
    -- CP-element group 182:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 182: predecessors 
    -- CP-element group 182: 	180 
    -- CP-element group 182: successors 
    -- CP-element group 182: marked-successors 
    -- CP-element group 182: 	99 
    -- CP-element group 182: 	80 
    -- CP-element group 182: 	17 
    -- CP-element group 182: 	36 
    -- CP-element group 182: 	42 
    -- CP-element group 182: 	120 
    -- CP-element group 182:  members (3) 
      -- CP-element group 182: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6112_Sample/ack
      -- CP-element group 182: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6112_Sample/$exit
      -- CP-element group 182: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6112_sample_completed_
      -- 
    ack_1849_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 182_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_issue_NNPC_6241_delayed_1_0_6110_inst_ack_0, ack => ifetch_main_daemon_CP_1410_elements(182)); -- 
    -- CP-element group 183:  transition  input  bypass  pipeline-parent 
    -- CP-element group 183: predecessors 
    -- CP-element group 183: 	181 
    -- CP-element group 183: successors 
    -- CP-element group 183: 	196 
    -- CP-element group 183:  members (3) 
      -- CP-element group 183: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6112_Update/ack
      -- CP-element group 183: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6112_Update/$exit
      -- CP-element group 183: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6112_update_completed_
      -- 
    ack_1854_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 183_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_issue_NNPC_6241_delayed_1_0_6110_inst_ack_1, ack => ifetch_main_daemon_CP_1410_elements(183)); -- 
    -- CP-element group 184:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 184: predecessors 
    -- CP-element group 184: 	84 
    -- CP-element group 184: 	103 
    -- CP-element group 184: 	20 
    -- CP-element group 184: 	40 
    -- CP-element group 184: 	46 
    -- CP-element group 184: 	124 
    -- CP-element group 184: successors 
    -- CP-element group 184: 	186 
    -- CP-element group 184:  members (3) 
      -- CP-element group 184: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6115_Sample/req
      -- CP-element group 184: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6115_Sample/$entry
      -- CP-element group 184: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6115_sample_start_
      -- 
    req_1862_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1862_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(184), ack => W_issue_NNPC_offset_relative_to_PC_6242_delayed_1_0_6113_inst_req_0); -- 
    ifetch_main_daemon_cp_element_group_184: block -- 
      constant place_capacities: IntegerArray(0 to 5) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1);
      constant place_markings: IntegerArray(0 to 5)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0);
      constant place_delays: IntegerArray(0 to 5) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0);
      constant joinName: string(1 to 39) := "ifetch_main_daemon_cp_element_group_184"; 
      signal preds: BooleanArray(1 to 6); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(84) & ifetch_main_daemon_CP_1410_elements(103) & ifetch_main_daemon_CP_1410_elements(20) & ifetch_main_daemon_CP_1410_elements(40) & ifetch_main_daemon_CP_1410_elements(46) & ifetch_main_daemon_CP_1410_elements(124);
      gj_ifetch_main_daemon_cp_element_group_184 : generic_join generic map(name => joinName, number_of_predecessors => 6, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(184), clk => clk, reset => reset); --
    end block;
    -- CP-element group 185:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 185: predecessors 
    -- CP-element group 185: marked-predecessors 
    -- CP-element group 185: 	197 
    -- CP-element group 185: successors 
    -- CP-element group 185: 	187 
    -- CP-element group 185:  members (3) 
      -- CP-element group 185: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6115_Update/req
      -- CP-element group 185: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6115_Update/$entry
      -- CP-element group 185: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6115_update_start_
      -- 
    req_1867_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1867_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(185), ack => W_issue_NNPC_offset_relative_to_PC_6242_delayed_1_0_6113_inst_req_1); -- 
    ifetch_main_daemon_cp_element_group_185: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 39) := "ifetch_main_daemon_cp_element_group_185"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= ifetch_main_daemon_CP_1410_elements(197);
      gj_ifetch_main_daemon_cp_element_group_185 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(185), clk => clk, reset => reset); --
    end block;
    -- CP-element group 186:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 186: predecessors 
    -- CP-element group 186: 	184 
    -- CP-element group 186: successors 
    -- CP-element group 186: marked-successors 
    -- CP-element group 186: 	99 
    -- CP-element group 186: 	80 
    -- CP-element group 186: 	17 
    -- CP-element group 186: 	36 
    -- CP-element group 186: 	42 
    -- CP-element group 186: 	120 
    -- CP-element group 186:  members (3) 
      -- CP-element group 186: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6115_Sample/ack
      -- CP-element group 186: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6115_Sample/$exit
      -- CP-element group 186: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6115_sample_completed_
      -- 
    ack_1863_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 186_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_issue_NNPC_offset_relative_to_PC_6242_delayed_1_0_6113_inst_ack_0, ack => ifetch_main_daemon_CP_1410_elements(186)); -- 
    -- CP-element group 187:  transition  input  bypass  pipeline-parent 
    -- CP-element group 187: predecessors 
    -- CP-element group 187: 	185 
    -- CP-element group 187: successors 
    -- CP-element group 187: 	196 
    -- CP-element group 187:  members (3) 
      -- CP-element group 187: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6115_Update/ack
      -- CP-element group 187: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6115_Update/$exit
      -- CP-element group 187: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6115_update_completed_
      -- 
    ack_1868_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 187_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_issue_NNPC_offset_relative_to_PC_6242_delayed_1_0_6113_inst_ack_1, ack => ifetch_main_daemon_CP_1410_elements(187)); -- 
    -- CP-element group 188:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 188: predecessors 
    -- CP-element group 188: 	103 
    -- CP-element group 188: 	40 
    -- CP-element group 188: 	46 
    -- CP-element group 188: 	124 
    -- CP-element group 188: successors 
    -- CP-element group 188: 	190 
    -- CP-element group 188:  members (3) 
      -- CP-element group 188: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/CONCAT_u2_u3_6137_Sample/rr
      -- CP-element group 188: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/CONCAT_u2_u3_6137_Sample/$entry
      -- CP-element group 188: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/CONCAT_u2_u3_6137_sample_start_
      -- 
    rr_1876_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_1876_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(188), ack => CONCAT_u2_u3_6137_inst_req_0); -- 
    ifetch_main_daemon_cp_element_group_188: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 39) := "ifetch_main_daemon_cp_element_group_188"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(103) & ifetch_main_daemon_CP_1410_elements(40) & ifetch_main_daemon_CP_1410_elements(46) & ifetch_main_daemon_CP_1410_elements(124);
      gj_ifetch_main_daemon_cp_element_group_188 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(188), clk => clk, reset => reset); --
    end block;
    -- CP-element group 189:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 189: predecessors 
    -- CP-element group 189: marked-predecessors 
    -- CP-element group 189: 	197 
    -- CP-element group 189: successors 
    -- CP-element group 189: 	191 
    -- CP-element group 189:  members (3) 
      -- CP-element group 189: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/CONCAT_u2_u3_6137_Update/$entry
      -- CP-element group 189: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/CONCAT_u2_u3_6137_Update/cr
      -- CP-element group 189: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/CONCAT_u2_u3_6137_update_start_
      -- 
    cr_1881_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_1881_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(189), ack => CONCAT_u2_u3_6137_inst_req_1); -- 
    ifetch_main_daemon_cp_element_group_189: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 39) := "ifetch_main_daemon_cp_element_group_189"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= ifetch_main_daemon_CP_1410_elements(197);
      gj_ifetch_main_daemon_cp_element_group_189 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(189), clk => clk, reset => reset); --
    end block;
    -- CP-element group 190:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 190: predecessors 
    -- CP-element group 190: 	188 
    -- CP-element group 190: successors 
    -- CP-element group 190: marked-successors 
    -- CP-element group 190: 	99 
    -- CP-element group 190: 	36 
    -- CP-element group 190: 	42 
    -- CP-element group 190: 	120 
    -- CP-element group 190:  members (3) 
      -- CP-element group 190: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/CONCAT_u2_u3_6137_Sample/ra
      -- CP-element group 190: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/CONCAT_u2_u3_6137_Sample/$exit
      -- CP-element group 190: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/CONCAT_u2_u3_6137_sample_completed_
      -- 
    ra_1877_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 190_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => CONCAT_u2_u3_6137_inst_ack_0, ack => ifetch_main_daemon_CP_1410_elements(190)); -- 
    -- CP-element group 191:  transition  input  bypass  pipeline-parent 
    -- CP-element group 191: predecessors 
    -- CP-element group 191: 	189 
    -- CP-element group 191: successors 
    -- CP-element group 191: 	196 
    -- CP-element group 191:  members (3) 
      -- CP-element group 191: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/CONCAT_u2_u3_6137_Update/$exit
      -- CP-element group 191: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/CONCAT_u2_u3_6137_Update/ca
      -- CP-element group 191: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/CONCAT_u2_u3_6137_update_completed_
      -- 
    ca_1882_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 191_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => CONCAT_u2_u3_6137_inst_ack_1, ack => ifetch_main_daemon_CP_1410_elements(191)); -- 
    -- CP-element group 192:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 192: predecessors 
    -- CP-element group 192: 	103 
    -- CP-element group 192: 	65 
    -- CP-element group 192: 	46 
    -- CP-element group 192: 	124 
    -- CP-element group 192: successors 
    -- CP-element group 192: 	194 
    -- CP-element group 192:  members (3) 
      -- CP-element group 192: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6156_sample_start_
      -- CP-element group 192: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6156_Sample/req
      -- CP-element group 192: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6156_Sample/$entry
      -- 
    req_1890_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1890_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(192), ack => W_issue_instruction_6274_delayed_1_0_6154_inst_req_0); -- 
    ifetch_main_daemon_cp_element_group_192: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 39) := "ifetch_main_daemon_cp_element_group_192"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(103) & ifetch_main_daemon_CP_1410_elements(65) & ifetch_main_daemon_CP_1410_elements(46) & ifetch_main_daemon_CP_1410_elements(124);
      gj_ifetch_main_daemon_cp_element_group_192 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(192), clk => clk, reset => reset); --
    end block;
    -- CP-element group 193:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 193: predecessors 
    -- CP-element group 193: marked-predecessors 
    -- CP-element group 193: 	197 
    -- CP-element group 193: successors 
    -- CP-element group 193: 	195 
    -- CP-element group 193:  members (3) 
      -- CP-element group 193: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6156_update_start_
      -- CP-element group 193: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6156_Update/$entry
      -- CP-element group 193: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6156_Update/req
      -- 
    req_1895_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1895_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(193), ack => W_issue_instruction_6274_delayed_1_0_6154_inst_req_1); -- 
    ifetch_main_daemon_cp_element_group_193: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 39) := "ifetch_main_daemon_cp_element_group_193"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= ifetch_main_daemon_CP_1410_elements(197);
      gj_ifetch_main_daemon_cp_element_group_193 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(193), clk => clk, reset => reset); --
    end block;
    -- CP-element group 194:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 194: predecessors 
    -- CP-element group 194: 	192 
    -- CP-element group 194: successors 
    -- CP-element group 194: marked-successors 
    -- CP-element group 194: 	99 
    -- CP-element group 194: 	42 
    -- CP-element group 194: 	120 
    -- CP-element group 194: 	61 
    -- CP-element group 194:  members (3) 
      -- CP-element group 194: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6156_Sample/$exit
      -- CP-element group 194: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6156_sample_completed_
      -- CP-element group 194: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6156_Sample/ack
      -- 
    ack_1891_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 194_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_issue_instruction_6274_delayed_1_0_6154_inst_ack_0, ack => ifetch_main_daemon_CP_1410_elements(194)); -- 
    -- CP-element group 195:  transition  input  bypass  pipeline-parent 
    -- CP-element group 195: predecessors 
    -- CP-element group 195: 	193 
    -- CP-element group 195: successors 
    -- CP-element group 195: 	196 
    -- CP-element group 195:  members (3) 
      -- CP-element group 195: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6156_Update/$exit
      -- CP-element group 195: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6156_update_completed_
      -- CP-element group 195: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/assign_stmt_6156_Update/ack
      -- 
    ack_1896_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 195_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_issue_instruction_6274_delayed_1_0_6154_inst_ack_1, ack => ifetch_main_daemon_CP_1410_elements(195)); -- 
    -- CP-element group 196:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 196: predecessors 
    -- CP-element group 196: 	179 
    -- CP-element group 196: 	183 
    -- CP-element group 196: 	187 
    -- CP-element group 196: 	191 
    -- CP-element group 196: 	195 
    -- CP-element group 196: 	167 
    -- CP-element group 196: 	171 
    -- CP-element group 196: 	175 
    -- CP-element group 196: marked-predecessors 
    -- CP-element group 196: 	198 
    -- CP-element group 196: successors 
    -- CP-element group 196: 	197 
    -- CP-element group 196:  members (3) 
      -- CP-element group 196: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/WPIPE_ifetch_issue_to_regulator_pipe_6158_Sample/$entry
      -- CP-element group 196: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/WPIPE_ifetch_issue_to_regulator_pipe_6158_Sample/req
      -- CP-element group 196: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/WPIPE_ifetch_issue_to_regulator_pipe_6158_sample_start_
      -- 
    req_1904_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1904_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(196), ack => WPIPE_ifetch_issue_to_regulator_pipe_6158_inst_req_0); -- 
    ifetch_main_daemon_cp_element_group_196: block -- 
      constant place_capacities: IntegerArray(0 to 8) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1);
      constant place_markings: IntegerArray(0 to 8)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 1);
      constant place_delays: IntegerArray(0 to 8) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0);
      constant joinName: string(1 to 39) := "ifetch_main_daemon_cp_element_group_196"; 
      signal preds: BooleanArray(1 to 9); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(179) & ifetch_main_daemon_CP_1410_elements(183) & ifetch_main_daemon_CP_1410_elements(187) & ifetch_main_daemon_CP_1410_elements(191) & ifetch_main_daemon_CP_1410_elements(195) & ifetch_main_daemon_CP_1410_elements(167) & ifetch_main_daemon_CP_1410_elements(171) & ifetch_main_daemon_CP_1410_elements(175) & ifetch_main_daemon_CP_1410_elements(198);
      gj_ifetch_main_daemon_cp_element_group_196 : generic_join generic map(name => joinName, number_of_predecessors => 9, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(196), clk => clk, reset => reset); --
    end block;
    -- CP-element group 197:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 197: predecessors 
    -- CP-element group 197: 	196 
    -- CP-element group 197: successors 
    -- CP-element group 197: 	198 
    -- CP-element group 197: marked-successors 
    -- CP-element group 197: 	181 
    -- CP-element group 197: 	185 
    -- CP-element group 197: 	189 
    -- CP-element group 197: 	193 
    -- CP-element group 197: 	165 
    -- CP-element group 197: 	169 
    -- CP-element group 197: 	173 
    -- CP-element group 197: 	177 
    -- CP-element group 197:  members (6) 
      -- CP-element group 197: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/WPIPE_ifetch_issue_to_regulator_pipe_6158_sample_completed_
      -- CP-element group 197: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/WPIPE_ifetch_issue_to_regulator_pipe_6158_update_start_
      -- CP-element group 197: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/WPIPE_ifetch_issue_to_regulator_pipe_6158_Sample/$exit
      -- CP-element group 197: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/WPIPE_ifetch_issue_to_regulator_pipe_6158_Update/req
      -- CP-element group 197: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/WPIPE_ifetch_issue_to_regulator_pipe_6158_Update/$entry
      -- CP-element group 197: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/WPIPE_ifetch_issue_to_regulator_pipe_6158_Sample/ack
      -- 
    ack_1905_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 197_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_ifetch_issue_to_regulator_pipe_6158_inst_ack_0, ack => ifetch_main_daemon_CP_1410_elements(197)); -- 
    req_1909_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1909_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_main_daemon_CP_1410_elements(197), ack => WPIPE_ifetch_issue_to_regulator_pipe_6158_inst_req_1); -- 
    -- CP-element group 198:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 198: predecessors 
    -- CP-element group 198: 	197 
    -- CP-element group 198: successors 
    -- CP-element group 198: 	200 
    -- CP-element group 198: marked-successors 
    -- CP-element group 198: 	196 
    -- CP-element group 198:  members (3) 
      -- CP-element group 198: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/WPIPE_ifetch_issue_to_regulator_pipe_6158_update_completed_
      -- CP-element group 198: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/WPIPE_ifetch_issue_to_regulator_pipe_6158_Update/ack
      -- CP-element group 198: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/WPIPE_ifetch_issue_to_regulator_pipe_6158_Update/$exit
      -- 
    ack_1910_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 198_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_ifetch_issue_to_regulator_pipe_6158_inst_ack_1, ack => ifetch_main_daemon_CP_1410_elements(198)); -- 
    -- CP-element group 199:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 199: predecessors 
    -- CP-element group 199: 	9 
    -- CP-element group 199: successors 
    -- CP-element group 199: 	10 
    -- CP-element group 199:  members (1) 
      -- CP-element group 199: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/loop_body_delay_to_condition_start
      -- 
    -- Element group ifetch_main_daemon_CP_1410_elements(199) is a control-delay.
    cp_element_199_delay: control_delay_element  generic map(name => " 199_delay", delay_value => 1)  port map(req => ifetch_main_daemon_CP_1410_elements(9), ack => ifetch_main_daemon_CP_1410_elements(199), clk => clk, reset =>reset);
    -- CP-element group 200:  join  transition  bypass  pipeline-parent 
    -- CP-element group 200: predecessors 
    -- CP-element group 200: 	198 
    -- CP-element group 200: 	12 
    -- CP-element group 200: 	163 
    -- CP-element group 200: 	160 
    -- CP-element group 200: successors 
    -- CP-element group 200: 	6 
    -- CP-element group 200:  members (1) 
      -- CP-element group 200: 	 branch_block_stmt_5334/do_while_stmt_5335/do_while_stmt_5335_loop_body/$exit
      -- 
    ifetch_main_daemon_cp_element_group_200: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 7,1 => 7,2 => 7,3 => 7);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 39) := "ifetch_main_daemon_cp_element_group_200"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= ifetch_main_daemon_CP_1410_elements(198) & ifetch_main_daemon_CP_1410_elements(12) & ifetch_main_daemon_CP_1410_elements(163) & ifetch_main_daemon_CP_1410_elements(160);
      gj_ifetch_main_daemon_cp_element_group_200 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(200), clk => clk, reset => reset); --
    end block;
    -- CP-element group 201:  transition  input  bypass  pipeline-parent 
    -- CP-element group 201: predecessors 
    -- CP-element group 201: 	5 
    -- CP-element group 201: successors 
    -- CP-element group 201:  members (2) 
      -- CP-element group 201: 	 branch_block_stmt_5334/do_while_stmt_5335/loop_exit/ack
      -- CP-element group 201: 	 branch_block_stmt_5334/do_while_stmt_5335/loop_exit/$exit
      -- 
    ack_1915_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 201_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_5335_branch_ack_0, ack => ifetch_main_daemon_CP_1410_elements(201)); -- 
    -- CP-element group 202:  transition  input  bypass  pipeline-parent 
    -- CP-element group 202: predecessors 
    -- CP-element group 202: 	5 
    -- CP-element group 202: successors 
    -- CP-element group 202:  members (2) 
      -- CP-element group 202: 	 branch_block_stmt_5334/do_while_stmt_5335/loop_taken/ack
      -- CP-element group 202: 	 branch_block_stmt_5334/do_while_stmt_5335/loop_taken/$exit
      -- 
    ack_1919_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 202_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_5335_branch_ack_1, ack => ifetch_main_daemon_CP_1410_elements(202)); -- 
    -- CP-element group 203:  transition  bypass  pipeline-parent 
    -- CP-element group 203: predecessors 
    -- CP-element group 203: 	3 
    -- CP-element group 203: successors 
    -- CP-element group 203: 	1 
    -- CP-element group 203:  members (1) 
      -- CP-element group 203: 	 branch_block_stmt_5334/do_while_stmt_5335/$exit
      -- 
    ifetch_main_daemon_CP_1410_elements(203) <= ifetch_main_daemon_CP_1410_elements(3);
    ifetch_main_daemon_do_while_stmt_5335_terminator_1920: loop_terminator -- 
      generic map (name => " ifetch_main_daemon_do_while_stmt_5335_terminator_1920", max_iterations_in_flight =>7) 
      port map(loop_body_exit => ifetch_main_daemon_CP_1410_elements(6),loop_continue => ifetch_main_daemon_CP_1410_elements(202),loop_terminate => ifetch_main_daemon_CP_1410_elements(201),loop_back => ifetch_main_daemon_CP_1410_elements(4),loop_exit => ifetch_main_daemon_CP_1410_elements(3),clk => clk, reset => reset); -- 
    phi_stmt_5337_phi_seq_1484_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= ifetch_main_daemon_CP_1410_elements(23);
      ifetch_main_daemon_CP_1410_elements(26)<= src_sample_reqs(0);
      src_sample_acks(0)  <= ifetch_main_daemon_CP_1410_elements(26);
      ifetch_main_daemon_CP_1410_elements(27)<= src_update_reqs(0);
      src_update_acks(0)  <= ifetch_main_daemon_CP_1410_elements(28);
      ifetch_main_daemon_CP_1410_elements(24) <= phi_mux_reqs(0);
      triggers(1)  <= ifetch_main_daemon_CP_1410_elements(21);
      ifetch_main_daemon_CP_1410_elements(30)<= src_sample_reqs(1);
      src_sample_acks(1)  <= ifetch_main_daemon_CP_1410_elements(34);
      ifetch_main_daemon_CP_1410_elements(31)<= src_update_reqs(1);
      src_update_acks(1)  <= ifetch_main_daemon_CP_1410_elements(35);
      ifetch_main_daemon_CP_1410_elements(22) <= phi_mux_reqs(1);
      phi_stmt_5337_phi_seq_1484 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_5337_phi_seq_1484") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => ifetch_main_daemon_CP_1410_elements(18), 
          phi_sample_ack => ifetch_main_daemon_CP_1410_elements(19), 
          phi_update_req => ifetch_main_daemon_CP_1410_elements(14), 
          phi_update_ack => ifetch_main_daemon_CP_1410_elements(20), 
          phi_mux_ack => ifetch_main_daemon_CP_1410_elements(25), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_5345_phi_seq_1546_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= ifetch_main_daemon_CP_1410_elements(49);
      ifetch_main_daemon_CP_1410_elements(52)<= src_sample_reqs(0);
      src_sample_acks(0)  <= ifetch_main_daemon_CP_1410_elements(52);
      ifetch_main_daemon_CP_1410_elements(53)<= src_update_reqs(0);
      src_update_acks(0)  <= ifetch_main_daemon_CP_1410_elements(54);
      ifetch_main_daemon_CP_1410_elements(50) <= phi_mux_reqs(0);
      triggers(1)  <= ifetch_main_daemon_CP_1410_elements(47);
      ifetch_main_daemon_CP_1410_elements(56)<= src_sample_reqs(1);
      src_sample_acks(1)  <= ifetch_main_daemon_CP_1410_elements(58);
      ifetch_main_daemon_CP_1410_elements(57)<= src_update_reqs(1);
      src_update_acks(1)  <= ifetch_main_daemon_CP_1410_elements(59);
      ifetch_main_daemon_CP_1410_elements(48) <= phi_mux_reqs(1);
      phi_stmt_5345_phi_seq_1546 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_5345_phi_seq_1546") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => ifetch_main_daemon_CP_1410_elements(43), 
          phi_sample_ack => ifetch_main_daemon_CP_1410_elements(44), 
          phi_update_req => ifetch_main_daemon_CP_1410_elements(45), 
          phi_update_ack => ifetch_main_daemon_CP_1410_elements(46), 
          phi_mux_ack => ifetch_main_daemon_CP_1410_elements(51), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_5349_phi_seq_1590_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= ifetch_main_daemon_CP_1410_elements(68);
      ifetch_main_daemon_CP_1410_elements(71)<= src_sample_reqs(0);
      src_sample_acks(0)  <= ifetch_main_daemon_CP_1410_elements(71);
      ifetch_main_daemon_CP_1410_elements(72)<= src_update_reqs(0);
      src_update_acks(0)  <= ifetch_main_daemon_CP_1410_elements(73);
      ifetch_main_daemon_CP_1410_elements(69) <= phi_mux_reqs(0);
      triggers(1)  <= ifetch_main_daemon_CP_1410_elements(66);
      ifetch_main_daemon_CP_1410_elements(75)<= src_sample_reqs(1);
      src_sample_acks(1)  <= ifetch_main_daemon_CP_1410_elements(77);
      ifetch_main_daemon_CP_1410_elements(76)<= src_update_reqs(1);
      src_update_acks(1)  <= ifetch_main_daemon_CP_1410_elements(78);
      ifetch_main_daemon_CP_1410_elements(67) <= phi_mux_reqs(1);
      phi_stmt_5349_phi_seq_1590 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_5349_phi_seq_1590") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => ifetch_main_daemon_CP_1410_elements(62), 
          phi_sample_ack => ifetch_main_daemon_CP_1410_elements(63), 
          phi_update_req => ifetch_main_daemon_CP_1410_elements(64), 
          phi_update_ack => ifetch_main_daemon_CP_1410_elements(65), 
          phi_mux_ack => ifetch_main_daemon_CP_1410_elements(70), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_5353_phi_seq_1634_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= ifetch_main_daemon_CP_1410_elements(87);
      ifetch_main_daemon_CP_1410_elements(90)<= src_sample_reqs(0);
      src_sample_acks(0)  <= ifetch_main_daemon_CP_1410_elements(90);
      ifetch_main_daemon_CP_1410_elements(91)<= src_update_reqs(0);
      src_update_acks(0)  <= ifetch_main_daemon_CP_1410_elements(92);
      ifetch_main_daemon_CP_1410_elements(88) <= phi_mux_reqs(0);
      triggers(1)  <= ifetch_main_daemon_CP_1410_elements(85);
      ifetch_main_daemon_CP_1410_elements(94)<= src_sample_reqs(1);
      src_sample_acks(1)  <= ifetch_main_daemon_CP_1410_elements(96);
      ifetch_main_daemon_CP_1410_elements(95)<= src_update_reqs(1);
      src_update_acks(1)  <= ifetch_main_daemon_CP_1410_elements(97);
      ifetch_main_daemon_CP_1410_elements(86) <= phi_mux_reqs(1);
      phi_stmt_5353_phi_seq_1634 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_5353_phi_seq_1634") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => ifetch_main_daemon_CP_1410_elements(81), 
          phi_sample_ack => ifetch_main_daemon_CP_1410_elements(82), 
          phi_update_req => ifetch_main_daemon_CP_1410_elements(83), 
          phi_update_ack => ifetch_main_daemon_CP_1410_elements(84), 
          phi_mux_ack => ifetch_main_daemon_CP_1410_elements(89), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_5357_phi_seq_1678_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= ifetch_main_daemon_CP_1410_elements(106);
      ifetch_main_daemon_CP_1410_elements(109)<= src_sample_reqs(0);
      src_sample_acks(0)  <= ifetch_main_daemon_CP_1410_elements(109);
      ifetch_main_daemon_CP_1410_elements(110)<= src_update_reqs(0);
      src_update_acks(0)  <= ifetch_main_daemon_CP_1410_elements(111);
      ifetch_main_daemon_CP_1410_elements(107) <= phi_mux_reqs(0);
      triggers(1)  <= ifetch_main_daemon_CP_1410_elements(104);
      ifetch_main_daemon_CP_1410_elements(113)<= src_sample_reqs(1);
      src_sample_acks(1)  <= ifetch_main_daemon_CP_1410_elements(117);
      ifetch_main_daemon_CP_1410_elements(114)<= src_update_reqs(1);
      src_update_acks(1)  <= ifetch_main_daemon_CP_1410_elements(118);
      ifetch_main_daemon_CP_1410_elements(105) <= phi_mux_reqs(1);
      phi_stmt_5357_phi_seq_1678 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_5357_phi_seq_1678") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => ifetch_main_daemon_CP_1410_elements(100), 
          phi_sample_ack => ifetch_main_daemon_CP_1410_elements(101), 
          phi_update_req => ifetch_main_daemon_CP_1410_elements(102), 
          phi_update_ack => ifetch_main_daemon_CP_1410_elements(103), 
          phi_mux_ack => ifetch_main_daemon_CP_1410_elements(108), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_5362_phi_seq_1722_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= ifetch_main_daemon_CP_1410_elements(127);
      ifetch_main_daemon_CP_1410_elements(130)<= src_sample_reqs(0);
      src_sample_acks(0)  <= ifetch_main_daemon_CP_1410_elements(130);
      ifetch_main_daemon_CP_1410_elements(131)<= src_update_reqs(0);
      src_update_acks(0)  <= ifetch_main_daemon_CP_1410_elements(132);
      ifetch_main_daemon_CP_1410_elements(128) <= phi_mux_reqs(0);
      triggers(1)  <= ifetch_main_daemon_CP_1410_elements(125);
      ifetch_main_daemon_CP_1410_elements(134)<= src_sample_reqs(1);
      src_sample_acks(1)  <= ifetch_main_daemon_CP_1410_elements(138);
      ifetch_main_daemon_CP_1410_elements(135)<= src_update_reqs(1);
      src_update_acks(1)  <= ifetch_main_daemon_CP_1410_elements(139);
      ifetch_main_daemon_CP_1410_elements(126) <= phi_mux_reqs(1);
      phi_stmt_5362_phi_seq_1722 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_5362_phi_seq_1722") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => ifetch_main_daemon_CP_1410_elements(121), 
          phi_sample_ack => ifetch_main_daemon_CP_1410_elements(122), 
          phi_update_req => ifetch_main_daemon_CP_1410_elements(123), 
          phi_update_ack => ifetch_main_daemon_CP_1410_elements(124), 
          phi_mux_ack => ifetch_main_daemon_CP_1410_elements(129), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_5366_phi_seq_1756_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= ifetch_main_daemon_CP_1410_elements(147);
      ifetch_main_daemon_CP_1410_elements(150)<= src_sample_reqs(0);
      src_sample_acks(0)  <= ifetch_main_daemon_CP_1410_elements(150);
      ifetch_main_daemon_CP_1410_elements(151)<= src_update_reqs(0);
      src_update_acks(0)  <= ifetch_main_daemon_CP_1410_elements(152);
      ifetch_main_daemon_CP_1410_elements(148) <= phi_mux_reqs(0);
      triggers(1)  <= ifetch_main_daemon_CP_1410_elements(145);
      ifetch_main_daemon_CP_1410_elements(154)<= src_sample_reqs(1);
      src_sample_acks(1)  <= ifetch_main_daemon_CP_1410_elements(154);
      ifetch_main_daemon_CP_1410_elements(155)<= src_update_reqs(1);
      src_update_acks(1)  <= ifetch_main_daemon_CP_1410_elements(156);
      ifetch_main_daemon_CP_1410_elements(146) <= phi_mux_reqs(1);
      phi_stmt_5366_phi_seq_1756 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_5366_phi_seq_1756") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => ifetch_main_daemon_CP_1410_elements(11), 
          phi_sample_ack => ifetch_main_daemon_CP_1410_elements(142), 
          phi_update_req => ifetch_main_daemon_CP_1410_elements(143), 
          phi_update_ack => ifetch_main_daemon_CP_1410_elements(144), 
          phi_mux_ack => ifetch_main_daemon_CP_1410_elements(149), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    entry_tmerge_1435_block : block -- 
      signal preds : BooleanArray(0 to 1);
      begin -- 
        preds(0)  <= ifetch_main_daemon_CP_1410_elements(7);
        preds(1)  <= ifetch_main_daemon_CP_1410_elements(8);
        entry_tmerge_1435 : transition_merge -- 
          generic map(name => " entry_tmerge_1435")
          port map (preds => preds, symbol_out => ifetch_main_daemon_CP_1410_elements(9));
          -- 
    end block;
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal ADD_u2_u2_5735_wire : std_logic_vector(1 downto 0);
    signal ADD_u30_u30_5805_wire : std_logic_vector(29 downto 0);
    signal ADD_u6_u6_5689_wire : std_logic_vector(5 downto 0);
    signal AND_u1_u1_5656_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5661_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5667_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5676_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5698_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5718_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5770_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5773_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5780_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5862_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5865_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5873_wire : std_logic_vector(0 downto 0);
    signal ANNUL_5380 : std_logic_vector(0 downto 0);
    signal CIRCULANT_5345 : std_logic_vector(146 downto 0);
    signal CONCAT_u13_u17_6060_wire : std_logic_vector(16 downto 0);
    signal CONCAT_u1_u2_6055_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_6058_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_6063_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_6066_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_6135_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_6143_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_6164_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_6167_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_6171_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u33_6147_wire : std_logic_vector(32 downto 0);
    signal CONCAT_u1_u9_5854_wire : std_logic_vector(8 downto 0);
    signal CONCAT_u2_u3_6173_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_6260_6260_delayed_1_0_6138 : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u4_6059_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u2_u4_6067_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u2_u4_6168_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u32_u222_6150_wire : std_logic_vector(221 downto 0);
    signal CONCAT_u32_u64_6070_wire : std_logic_vector(63 downto 0);
    signal CONCAT_u32_u64_6073_wire : std_logic_vector(63 downto 0);
    signal CONCAT_u32_u64_6184_wire : std_logic_vector(63 downto 0);
    signal CONCAT_u33_u255_6151_wire : std_logic_vector(254 downto 0);
    signal CONCAT_u3_u5_6144_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u44_u140_6187_wire : std_logic_vector(139 downto 0);
    signal CONCAT_u4_u132_6075_wire : std_logic_vector(131 downto 0);
    signal CONCAT_u4_u6_6048_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u4_u6_6177_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u4_u7_6174_wire : std_logic_vector(6 downto 0);
    signal CONCAT_u64_u128_6074_wire : std_logic_vector(127 downto 0);
    signal CONCAT_u64_u96_6186_wire : std_logic_vector(95 downto 0);
    signal CONCAT_u6_u13_6052_wire : std_logic_vector(12 downto 0);
    signal CONCAT_u6_u38_6180_wire : std_logic_vector(37 downto 0);
    signal CONCAT_u6_u44_6181_wire : std_logic_vector(43 downto 0);
    signal CONCAT_u6_u7_6051_wire : std_logic_vector(6 downto 0);
    signal EQ_u29_u1_5872_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_5779_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_5660_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_5670_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_5679_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_5776_wire : std_logic_vector(0 downto 0);
    signal MUX_5524_wire : std_logic_vector(0 downto 0);
    signal MUX_5533_wire : std_logic_vector(0 downto 0);
    signal MUX_5542_wire : std_logic_vector(3 downto 0);
    signal MUX_5563_wire : std_logic_vector(0 downto 0);
    signal MUX_5690_wire : std_logic_vector(5 downto 0);
    signal MUX_5703_wire : std_logic_vector(0 downto 0);
    signal MUX_5737_wire : std_logic_vector(1 downto 0);
    signal MUX_5754_wire : std_logic_vector(0 downto 0);
    signal MUX_5789_wire : std_logic_vector(31 downto 0);
    signal MUX_5798_wire : std_logic_vector(31 downto 0);
    signal MUX_5852_wire : std_logic_vector(7 downto 0);
    signal MUX_5900_wire : std_logic_vector(31 downto 0);
    signal MUX_5909_wire : std_logic_vector(31 downto 0);
    signal MUX_5918_wire : std_logic_vector(31 downto 0);
    signal MUX_5927_wire : std_logic_vector(0 downto 0);
    signal MUX_5936_wire : std_logic_vector(1 downto 0);
    signal MUX_6126_wire : std_logic_vector(0 downto 0);
    signal NEQ_u32_u1_6129_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5513_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5548_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5653_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5655_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5769_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5772_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5813_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5833_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5835_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5837_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5861_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5864_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5867_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5879_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5891_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5923_wire : std_logic_vector(0 downto 0);
    signal NPC_5424 : std_logic_vector(31 downto 0);
    signal OR_u1_u1_5702_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5719_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5814_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5816_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5838_wire : std_logic_vector(0 downto 0);
    signal OR_u8_u8_5853_wire : std_logic_vector(7 downto 0);
    signal PC_5420 : std_logic_vector(31 downto 0);
    signal PSR_5432 : std_logic_vector(31 downto 0);
    signal RPIPE_ENV_to_CPU_irl_6091_wire : std_logic_vector(7 downto 0);
    signal RPIPE_ccu_to_teu_5361_wire : std_logic_vector(106 downto 0);
    signal RPIPE_noblock_ifetch_substream_update_5344_wire : std_logic_vector(110 downto 0);
    signal RPIPE_noblock_teu_idispatch_to_ifetch_5365_wire : std_logic_vector(147 downto 0);
    signal RPIPE_teu_ifetch_branch_predictor_lookup_response_5341_wire : std_logic_vector(30 downto 0);
    signal RPIPE_teu_ras_top_of_stack_6095_wire : std_logic_vector(31 downto 0);
    signal R_ASI_SUPERVISOR_INSTRUCTION_5850_wire_constant : std_logic_vector(7 downto 0);
    signal R_ASI_USER_INSTRUCTION_5851_wire_constant : std_logic_vector(7 downto 0);
    signal R_ONE_1_5351_wire_constant : std_logic_vector(0 downto 0);
    signal R_ONE_1_5368_wire_constant : std_logic_vector(0 downto 0);
    signal R_ONE_1_5699_wire_constant : std_logic_vector(0 downto 0);
    signal R_ONE_1_5847_wire_constant : std_logic_vector(0 downto 0);
    signal R_ONE_6_5686_wire_constant : std_logic_vector(5 downto 0);
    signal R_ZERO_1_5369_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_5554_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_5926_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_6_5684_wire_constant : std_logic_vector(5 downto 0);
    signal R_ZERO_6_5742_wire_constant : std_logic_vector(5 downto 0);
    signal R_ZERO_7_5843_wire_constant : std_logic_vector(6 downto 0);
    signal S_5830 : std_logic_vector(0 downto 0);
    signal annul_from_stream_corrector_5601 : std_logic_vector(0 downto 0);
    signal apply_flush_correction_5672 : std_logic_vector(0 downto 0);
    signal apply_psr_correction_5681 : std_logic_vector(0 downto 0);
    signal bpb_result_5376 : std_logic_vector(30 downto 0);
    signal bpb_result_match_5451 : std_logic_vector(0 downto 0);
    signal bpb_result_nnpc_30_5455 : std_logic_vector(29 downto 0);
    signal bpb_result_nnpc_5461 : std_logic_vector(31 downto 0);
    signal bpb_result_raw_5337 : std_logic_vector(30 downto 0);
    signal branch_target_offset_6103 : std_logic_vector(31 downto 0);
    signal call_generic_pc_adder_expr_5990_wire : std_logic_vector(31 downto 0);
    signal ccu_ANNUL_5497 : std_logic_vector(0 downto 0);
    signal ccu_NPC_5489 : std_logic_vector(31 downto 0);
    signal ccu_PC_5485 : std_logic_vector(31 downto 0);
    signal ccu_PSR_5493 : std_logic_vector(31 downto 0);
    signal ccu_debug_mode_selected_5481 : std_logic_vector(0 downto 0);
    signal ccu_ignore_break_point_5477 : std_logic_vector(0 downto 0);
    signal ccu_logging_active_5501 : std_logic_vector(0 downto 0);
    signal ccu_reset_5505 : std_logic_vector(0 downto 0);
    signal ccu_single_step_flag_5473 : std_logic_vector(0 downto 0);
    signal ccu_thread_id_5469 : std_logic_vector(3 downto 0);
    signal ccu_valid_5509 : std_logic_vector(0 downto 0);
    signal compare_operand_1_6109 : std_logic_vector(31 downto 0);
    signal compare_operand_2_6121 : std_logic_vector(31 downto 0);
    signal debug_mode_selected_5392 : std_logic_vector(0 downto 0);
    signal flush_from_stream_corrector_5605 : std_logic_vector(0 downto 0);
    signal flush_mask_5845 : std_logic_vector(7 downto 0);
    signal from_sc_5362 : std_logic_vector(147 downto 0);
    signal icache_response_6044 : std_logic_vector(89 downto 0);
    signal icache_response_merged_6080 : std_logic_vector(89 downto 0);
    signal ici_6077 : std_logic_vector(148 downto 0);
    signal ici_6221_delayed_1_0_6086 : std_logic_vector(148 downto 0);
    signal ifetch_substream_correction_5342 : std_logic_vector(110 downto 0);
    signal ignore_break_point_5388 : std_logic_vector(0 downto 0);
    signal init_5366 : std_logic_vector(0 downto 0);
    signal is_call_6103 : std_logic_vector(0 downto 0);
    signal is_ret_or_retl_6103 : std_logic_vector(0 downto 0);
    signal is_unconditional_cti_6103 : std_logic_vector(0 downto 0);
    signal is_valid_ras_entry_6103 : std_logic_vector(0 downto 0);
    signal issue_ANNUL_5713 : std_logic_vector(0 downto 0);
    signal issue_NNPC_5820 : std_logic_vector(31 downto 0);
    signal issue_NNPC_6241_delayed_1_0_6112 : std_logic_vector(31 downto 0);
    signal issue_NNPC_offset_relative_to_PC_5825 : std_logic_vector(31 downto 0);
    signal issue_NNPC_offset_relative_to_PC_6242_delayed_1_0_6115 : std_logic_vector(31 downto 0);
    signal issue_NPC_5800 : std_logic_vector(31 downto 0);
    signal issue_NPC_plus_4_5809 : std_logic_vector(31 downto 0);
    signal issue_PC_5791 : std_logic_vector(31 downto 0);
    signal issue_PSR_5723 : std_logic_vector(31 downto 0);
    signal issue_flush_flag_5756 : std_logic_vector(0 downto 0);
    signal issue_instruction_5840 : std_logic_vector(0 downto 0);
    signal issue_instruction_6219_delayed_1_0_6083 : std_logic_vector(0 downto 0);
    signal issue_instruction_6274_delayed_1_0_6156 : std_logic_vector(0 downto 0);
    signal issue_nnpc_mismatch_6131 : std_logic_vector(0 downto 0);
    signal issue_slot_id_5745 : std_logic_vector(5 downto 0);
    signal issue_stream_head_5728 : std_logic_vector(0 downto 0);
    signal issue_stream_id_5739 : std_logic_vector(1 downto 0);
    signal issue_substream_head_5782 : std_logic_vector(0 downto 0);
    signal issue_thread_head_5762 : std_logic_vector(0 downto 0);
    signal issue_thread_id_5759 : std_logic_vector(3 downto 0);
    signal kill_thread_from_stream_corrector_5617 : std_logic_vector(0 downto 0);
    signal konst_5339_wire_constant : std_logic_vector(30 downto 0);
    signal konst_5347_wire_constant : std_logic_vector(146 downto 0);
    signal konst_5355_wire_constant : std_logic_vector(0 downto 0);
    signal konst_5364_wire_constant : std_logic_vector(147 downto 0);
    signal konst_5374_wire_constant : std_logic_vector(30 downto 0);
    signal konst_5520_wire_constant : std_logic_vector(0 downto 0);
    signal konst_5529_wire_constant : std_logic_vector(0 downto 0);
    signal konst_5538_wire_constant : std_logic_vector(3 downto 0);
    signal konst_5559_wire_constant : std_logic_vector(0 downto 0);
    signal konst_5688_wire_constant : std_logic_vector(5 downto 0);
    signal konst_5731_wire_constant : std_logic_vector(1 downto 0);
    signal konst_5734_wire_constant : std_logic_vector(1 downto 0);
    signal konst_5753_wire_constant : std_logic_vector(0 downto 0);
    signal konst_5804_wire_constant : std_logic_vector(29 downto 0);
    signal konst_5828_wire_constant : std_logic_vector(31 downto 0);
    signal konst_5896_wire_constant : std_logic_vector(31 downto 0);
    signal konst_5905_wire_constant : std_logic_vector(31 downto 0);
    signal konst_5914_wire_constant : std_logic_vector(31 downto 0);
    signal konst_5932_wire_constant : std_logic_vector(1 downto 0);
    signal konst_5934_wire_constant : std_logic_vector(1 downto 0);
    signal konst_6192_wire_constant : std_logic_vector(0 downto 0);
    signal last_fetched_PC_5428 : std_logic_vector(31 downto 0);
    signal last_fetched_PC_valid_5404 : std_logic_vector(0 downto 0);
    signal last_fetched_pc_match_5875 : std_logic_vector(0 downto 0);
    signal last_pc_from_stream_corrector_5633 : std_logic_vector(31 downto 0);
    signal last_was_cti_from_stream_corrector_5609 : std_logic_vector(0 downto 0);
    signal last_was_write_psr_from_stream_corrector_5613 : std_logic_vector(0 downto 0);
    signal logging_active_5396 : std_logic_vector(0 downto 0);
    signal machine_state_in_5357 : std_logic_vector(106 downto 0);
    signal next_ANNUL_5929 : std_logic_vector(0 downto 0);
    signal next_CIRCULANT_6189 : std_logic_vector(146 downto 0);
    signal next_CIRCULANT_6189_5348_buffered : std_logic_vector(146 downto 0);
    signal next_NPC_5911 : std_logic_vector(31 downto 0);
    signal next_PC_5902 : std_logic_vector(31 downto 0);
    signal next_PSR_5920 : std_logic_vector(31 downto 0);
    signal next_debug_mode_selected_5565 : std_logic_vector(0 downto 0);
    signal next_ignore_break_point_5556 : std_logic_vector(0 downto 0);
    signal next_last_fetched_PC_5887 : std_logic_vector(31 downto 0);
    signal next_last_fetched_PC_valid_5893 : std_logic_vector(0 downto 0);
    signal next_logging_active_5526 : std_logic_vector(0 downto 0);
    signal next_single_step_flag_5535 : std_logic_vector(0 downto 0);
    signal next_slot_id_5692 : std_logic_vector(5 downto 0);
    signal next_stream_id_5938 : std_logic_vector(1 downto 0);
    signal next_this_thread_is_dead_5705 : std_logic_vector(0 downto 0);
    signal next_this_thread_is_dead_5705_5352_buffered : std_logic_vector(0 downto 0);
    signal next_thread_head_5550 : std_logic_vector(0 downto 0);
    signal next_thread_id_5544 : std_logic_vector(3 downto 0);
    signal npc_from_stream_corrector_5625 : std_logic_vector(31 downto 0);
    signal only_update_flush_or_psr_5597 : std_logic_vector(0 downto 0);
    signal pc_from_stream_corrector_5621 : std_logic_vector(31 downto 0);
    signal psr_from_stream_corrector_5629 : std_logic_vector(31 downto 0);
    signal ras_nnpc_6103 : std_logic_vector(31 downto 0);
    signal request_icache_5881 : std_logic_vector(0 downto 0);
    signal request_icache_6222_delayed_1_0_6089 : std_logic_vector(0 downto 0);
    signal sc_slot_id_5593 : std_logic_vector(5 downto 0);
    signal sc_stream_id_5589 : std_logic_vector(1 downto 0);
    signal sc_thread_id_5585 : std_logic_vector(3 downto 0);
    signal send_to_branch_predictor_5996 : std_logic_vector(0 downto 0);
    signal send_to_branch_predictor_5996_5356_buffered : std_logic_vector(0 downto 0);
    signal send_to_branch_predictor_d_5353 : std_logic_vector(0 downto 0);
    signal single_step_flag_5400 : std_logic_vector(0 downto 0);
    signal slice_5803_wire : std_logic_vector(29 downto 0);
    signal slice_5869_wire : std_logic_vector(28 downto 0);
    signal slice_5871_wire : std_logic_vector(28 downto 0);
    signal slice_6001_wire : std_logic_vector(29 downto 0);
    signal slot_id_5416 : std_logic_vector(5 downto 0);
    signal stream_id_5412 : std_logic_vector(1 downto 0);
    signal substream_correction_valid_5942 : std_logic_vector(0 downto 0);
    signal substream_cti_mispredict_5962 : std_logic_vector(0 downto 0);
    signal substream_nnpc_5992 : std_logic_vector(31 downto 0);
    signal substream_npc_5974 : std_logic_vector(31 downto 0);
    signal substream_pc_5970 : std_logic_vector(31 downto 0);
    signal substream_ras_mispredict_5958 : std_logic_vector(0 downto 0);
    signal substream_ras_nnpc_or_branch_offset_5966 : std_logic_vector(31 downto 0);
    signal substream_slot_id_5954 : std_logic_vector(5 downto 0);
    signal substream_stream_id_5950 : std_logic_vector(1 downto 0);
    signal substream_thread_id_5946 : std_logic_vector(3 downto 0);
    signal this_thread_is_dead_5349 : std_logic_vector(0 downto 0);
    signal thread_head_5384 : std_logic_vector(0 downto 0);
    signal thread_id_5408 : std_logic_vector(3 downto 0);
    signal to_branch_predictor_6003 : std_logic_vector(30 downto 0);
    signal to_icache_5857 : std_logic_vector(40 downto 0);
    signal to_idecode_6103 : std_logic_vector(189 downto 0);
    signal to_regulator_6153 : std_logic_vector(259 downto 0);
    signal tr_ccu_5515 : std_logic_vector(0 downto 0);
    signal type_cast_5360_wire_constant : std_logic_vector(106 downto 0);
    signal type_cast_5459_wire_constant : std_logic_vector(1 downto 0);
    signal type_cast_5807_wire_constant : std_logic_vector(1 downto 0);
    signal type_cast_5999_wire_constant : std_logic_vector(0 downto 0);
    signal valid_from_stream_corrector_5663 : std_logic_vector(0 downto 0);
    signal valid_from_stream_corrector_raw_5581 : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    R_ASI_SUPERVISOR_INSTRUCTION_5850_wire_constant <= "00001001";
    R_ASI_USER_INSTRUCTION_5851_wire_constant <= "00001000";
    R_ONE_1_5351_wire_constant <= "1";
    R_ONE_1_5368_wire_constant <= "1";
    R_ONE_1_5699_wire_constant <= "1";
    R_ONE_1_5847_wire_constant <= "1";
    R_ONE_6_5686_wire_constant <= "000001";
    R_ZERO_1_5369_wire_constant <= "0";
    R_ZERO_1_5554_wire_constant <= "0";
    R_ZERO_1_5926_wire_constant <= "0";
    R_ZERO_6_5684_wire_constant <= "000000";
    R_ZERO_6_5742_wire_constant <= "000000";
    R_ZERO_7_5843_wire_constant <= "0000000";
    konst_5339_wire_constant <= "0000000000000000000000000000000";
    konst_5347_wire_constant <= "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    konst_5355_wire_constant <= "0";
    konst_5364_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    konst_5374_wire_constant <= "0000000000000000000000000000000";
    konst_5520_wire_constant <= "0";
    konst_5529_wire_constant <= "0";
    konst_5538_wire_constant <= "0000";
    konst_5559_wire_constant <= "0";
    konst_5688_wire_constant <= "000001";
    konst_5731_wire_constant <= "00";
    konst_5734_wire_constant <= "01";
    konst_5753_wire_constant <= "0";
    konst_5804_wire_constant <= "000000000000000000000000000001";
    konst_5828_wire_constant <= "00000000000000000000000000000111";
    konst_5896_wire_constant <= "00000000000000000000000000000000";
    konst_5905_wire_constant <= "00000000000000000000000000000000";
    konst_5914_wire_constant <= "00000000000000000000000000000000";
    konst_5932_wire_constant <= "00";
    konst_5934_wire_constant <= "00";
    konst_6192_wire_constant <= "1";
    type_cast_5360_wire_constant <= "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    type_cast_5459_wire_constant <= "00";
    type_cast_5807_wire_constant <= "00";
    type_cast_5999_wire_constant <= "1";
    phi_stmt_5337: Block -- phi operator 
      signal idata: std_logic_vector(61 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= konst_5339_wire_constant & RPIPE_teu_ifetch_branch_predictor_lookup_response_5341_wire;
      req <= phi_stmt_5337_req_0 & phi_stmt_5337_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_5337",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 31) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_5337_ack_0,
          idata => idata,
          odata => bpb_result_raw_5337,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_5337
    phi_stmt_5345: Block -- phi operator 
      signal idata: std_logic_vector(293 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= konst_5347_wire_constant & next_CIRCULANT_6189_5348_buffered;
      req <= phi_stmt_5345_req_0 & phi_stmt_5345_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_5345",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 147) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_5345_ack_0,
          idata => idata,
          odata => CIRCULANT_5345,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_5345
    phi_stmt_5349: Block -- phi operator 
      signal idata: std_logic_vector(1 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= R_ONE_1_5351_wire_constant & next_this_thread_is_dead_5705_5352_buffered;
      req <= phi_stmt_5349_req_0 & phi_stmt_5349_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_5349",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 1) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_5349_ack_0,
          idata => idata,
          odata => this_thread_is_dead_5349,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_5349
    phi_stmt_5353: Block -- phi operator 
      signal idata: std_logic_vector(1 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= konst_5355_wire_constant & send_to_branch_predictor_5996_5356_buffered;
      req <= phi_stmt_5353_req_0 & phi_stmt_5353_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_5353",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 1) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_5353_ack_0,
          idata => idata,
          odata => send_to_branch_predictor_d_5353,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_5353
    phi_stmt_5357: Block -- phi operator 
      signal idata: std_logic_vector(213 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= type_cast_5360_wire_constant & RPIPE_ccu_to_teu_5361_wire;
      req <= phi_stmt_5357_req_0 & phi_stmt_5357_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_5357",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 107) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_5357_ack_0,
          idata => idata,
          odata => machine_state_in_5357,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_5357
    phi_stmt_5362: Block -- phi operator 
      signal idata: std_logic_vector(295 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= konst_5364_wire_constant & RPIPE_noblock_teu_idispatch_to_ifetch_5365_wire;
      req <= phi_stmt_5362_req_0 & phi_stmt_5362_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_5362",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 148) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_5362_ack_0,
          idata => idata,
          odata => from_sc_5362,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_5362
    phi_stmt_5366: Block -- phi operator 
      signal idata: std_logic_vector(1 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= R_ONE_1_5368_wire_constant & R_ZERO_1_5369_wire_constant;
      req <= phi_stmt_5366_req_0 & phi_stmt_5366_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_5366",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 1) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_5366_ack_0,
          idata => idata,
          odata => init_5366,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_5366
    -- flow-through select operator MUX_5375_inst
    bpb_result_5376 <= bpb_result_raw_5337 when (send_to_branch_predictor_d_5353(0) /=  '0') else konst_5374_wire_constant;
    -- flow-through select operator MUX_5524_inst
    MUX_5524_wire <= ccu_logging_active_5501 when (ccu_valid_5509(0) /=  '0') else logging_active_5396;
    -- flow-through select operator MUX_5525_inst
    next_logging_active_5526 <= konst_5520_wire_constant when (ccu_reset_5505(0) /=  '0') else MUX_5524_wire;
    -- flow-through select operator MUX_5533_inst
    MUX_5533_wire <= ccu_single_step_flag_5473 when (ccu_valid_5509(0) /=  '0') else single_step_flag_5400;
    -- flow-through select operator MUX_5534_inst
    next_single_step_flag_5535 <= konst_5529_wire_constant when (ccu_reset_5505(0) /=  '0') else MUX_5533_wire;
    -- flow-through select operator MUX_5542_inst
    MUX_5542_wire <= ccu_thread_id_5469 when (ccu_valid_5509(0) /=  '0') else thread_id_5408;
    -- flow-through select operator MUX_5543_inst
    next_thread_id_5544 <= konst_5538_wire_constant when (ccu_reset_5505(0) /=  '0') else MUX_5542_wire;
    -- flow-through select operator MUX_5555_inst
    next_ignore_break_point_5556 <= ccu_ignore_break_point_5477 when (ccu_valid_5509(0) /=  '0') else R_ZERO_1_5554_wire_constant;
    -- flow-through select operator MUX_5563_inst
    MUX_5563_wire <= ccu_debug_mode_selected_5481 when (ccu_valid_5509(0) /=  '0') else debug_mode_selected_5392;
    -- flow-through select operator MUX_5564_inst
    next_debug_mode_selected_5565 <= konst_5559_wire_constant when (ccu_reset_5505(0) /=  '0') else MUX_5563_wire;
    -- flow-through select operator MUX_5690_inst
    MUX_5690_wire <= R_ONE_6_5686_wire_constant when (valid_from_stream_corrector_5663(0) /=  '0') else ADD_u6_u6_5689_wire;
    -- flow-through select operator MUX_5691_inst
    next_slot_id_5692 <= R_ZERO_6_5684_wire_constant when (ccu_valid_5509(0) /=  '0') else MUX_5690_wire;
    -- flow-through select operator MUX_5703_inst
    MUX_5703_wire <= R_ONE_1_5699_wire_constant when (AND_u1_u1_5698_wire(0) /=  '0') else OR_u1_u1_5702_wire;
    -- flow-through select operator MUX_5704_inst
    next_this_thread_is_dead_5705 <= ccu_reset_5505 when (ccu_valid_5509(0) /=  '0') else MUX_5703_wire;
    -- flow-through select operator MUX_5712_inst
    issue_ANNUL_5713 <= annul_from_stream_corrector_5601 when (valid_from_stream_corrector_5663(0) /=  '0') else ANNUL_5380;
    -- flow-through select operator MUX_5722_inst
    issue_PSR_5723 <= psr_from_stream_corrector_5629 when (OR_u1_u1_5719_wire(0) /=  '0') else PSR_5432;
    -- flow-through select operator MUX_5737_inst
    MUX_5737_wire <= ADD_u2_u2_5735_wire when (valid_from_stream_corrector_5663(0) /=  '0') else stream_id_5412;
    -- flow-through select operator MUX_5738_inst
    issue_stream_id_5739 <= konst_5731_wire_constant when (thread_head_5384(0) /=  '0') else MUX_5737_wire;
    -- flow-through select operator MUX_5744_inst
    issue_slot_id_5745 <= R_ZERO_6_5742_wire_constant when (valid_from_stream_corrector_5663(0) /=  '0') else slot_id_5416;
    -- flow-through select operator MUX_5754_inst
    MUX_5754_wire <= flush_from_stream_corrector_5605 when (valid_from_stream_corrector_5663(0) /=  '0') else konst_5753_wire_constant;
    -- flow-through select operator MUX_5789_inst
    MUX_5789_wire <= pc_from_stream_corrector_5621 when (valid_from_stream_corrector_5663(0) /=  '0') else PC_5420;
    -- flow-through select operator MUX_5790_inst
    issue_PC_5791 <= substream_npc_5974 when (issue_substream_head_5782(0) /=  '0') else MUX_5789_wire;
    -- flow-through select operator MUX_5798_inst
    MUX_5798_wire <= npc_from_stream_corrector_5625 when (valid_from_stream_corrector_5663(0) /=  '0') else NPC_5424;
    -- flow-through select operator MUX_5799_inst
    issue_NPC_5800 <= substream_nnpc_5992 when (issue_substream_head_5782(0) /=  '0') else MUX_5798_wire;
    -- flow-through select operator MUX_5819_inst
    issue_NNPC_5820 <= issue_NPC_plus_4_5809 when (OR_u1_u1_5816_wire(0) /=  '0') else bpb_result_nnpc_5461;
    -- flow-through select operator MUX_5852_inst
    MUX_5852_wire <= R_ASI_SUPERVISOR_INSTRUCTION_5850_wire_constant when (S_5830(0) /=  '0') else R_ASI_USER_INSTRUCTION_5851_wire_constant;
    -- flow-through select operator MUX_5886_inst
    next_last_fetched_PC_5887 <= issue_PC_5791 when (request_icache_5881(0) /=  '0') else last_fetched_PC_5428;
    -- flow-through select operator MUX_5900_inst
    MUX_5900_wire <= ccu_PC_5485 when (ccu_valid_5509(0) /=  '0') else issue_NPC_5800;
    -- flow-through select operator MUX_5901_inst
    next_PC_5902 <= konst_5896_wire_constant when (ccu_reset_5505(0) /=  '0') else MUX_5900_wire;
    -- flow-through select operator MUX_5909_inst
    MUX_5909_wire <= ccu_NPC_5489 when (ccu_valid_5509(0) /=  '0') else issue_NNPC_5820;
    -- flow-through select operator MUX_5910_inst
    next_NPC_5911 <= konst_5905_wire_constant when (ccu_reset_5505(0) /=  '0') else MUX_5909_wire;
    -- flow-through select operator MUX_5918_inst
    MUX_5918_wire <= ccu_PSR_5493 when (ccu_valid_5509(0) /=  '0') else issue_PSR_5723;
    -- flow-through select operator MUX_5919_inst
    next_PSR_5920 <= konst_5914_wire_constant when (ccu_reset_5505(0) /=  '0') else MUX_5918_wire;
    -- flow-through select operator MUX_5927_inst
    MUX_5927_wire <= ccu_ANNUL_5497 when (ccu_valid_5509(0) /=  '0') else R_ZERO_1_5926_wire_constant;
    -- flow-through select operator MUX_5936_inst
    MUX_5936_wire <= konst_5934_wire_constant when (ccu_valid_5509(0) /=  '0') else issue_stream_id_5739;
    -- flow-through select operator MUX_5937_inst
    next_stream_id_5938 <= konst_5932_wire_constant when (ccu_reset_5505(0) /=  '0') else MUX_5936_wire;
    -- flow-through select operator MUX_5991_inst
    substream_nnpc_5992 <= substream_ras_nnpc_or_branch_offset_5966 when (substream_ras_mispredict_5958(0) /=  '0') else call_generic_pc_adder_expr_5990_wire;
    -- flow-through select operator MUX_6108_inst
    compare_operand_1_6109 <= ras_nnpc_6103 when (is_ret_or_retl_6103(0) /=  '0') else branch_target_offset_6103;
    -- flow-through select operator MUX_6120_inst
    compare_operand_2_6121 <= issue_NNPC_6241_delayed_1_0_6112 when (is_ret_or_retl_6103(0) /=  '0') else issue_NNPC_offset_relative_to_PC_6242_delayed_1_0_6115;
    -- flow-through select operator MUX_6126_inst
    MUX_6126_wire <= is_valid_ras_entry_6103 when (is_ret_or_retl_6103(0) /=  '0') else is_unconditional_cti_6103;
    -- flow-through slice operator slice_5379_inst
    ANNUL_5380 <= CIRCULANT_5345(146 downto 146);
    -- flow-through slice operator slice_5383_inst
    thread_head_5384 <= CIRCULANT_5345(145 downto 145);
    -- flow-through slice operator slice_5387_inst
    ignore_break_point_5388 <= CIRCULANT_5345(144 downto 144);
    -- flow-through slice operator slice_5391_inst
    debug_mode_selected_5392 <= CIRCULANT_5345(143 downto 143);
    -- flow-through slice operator slice_5395_inst
    logging_active_5396 <= CIRCULANT_5345(142 downto 142);
    -- flow-through slice operator slice_5399_inst
    single_step_flag_5400 <= CIRCULANT_5345(141 downto 141);
    -- flow-through slice operator slice_5403_inst
    last_fetched_PC_valid_5404 <= CIRCULANT_5345(140 downto 140);
    -- flow-through slice operator slice_5407_inst
    thread_id_5408 <= CIRCULANT_5345(139 downto 136);
    -- flow-through slice operator slice_5411_inst
    stream_id_5412 <= CIRCULANT_5345(135 downto 134);
    -- flow-through slice operator slice_5415_inst
    slot_id_5416 <= CIRCULANT_5345(133 downto 128);
    -- flow-through slice operator slice_5419_inst
    PC_5420 <= CIRCULANT_5345(127 downto 96);
    -- flow-through slice operator slice_5423_inst
    NPC_5424 <= CIRCULANT_5345(95 downto 64);
    -- flow-through slice operator slice_5427_inst
    last_fetched_PC_5428 <= CIRCULANT_5345(63 downto 32);
    -- flow-through slice operator slice_5431_inst
    PSR_5432 <= CIRCULANT_5345(31 downto 0);
    -- flow-through slice operator slice_5450_inst
    bpb_result_match_5451 <= bpb_result_5376(30 downto 30);
    -- flow-through slice operator slice_5454_inst
    bpb_result_nnpc_30_5455 <= bpb_result_5376(29 downto 0);
    -- flow-through slice operator slice_5468_inst
    ccu_thread_id_5469 <= machine_state_in_5357(106 downto 103);
    -- flow-through slice operator slice_5472_inst
    ccu_single_step_flag_5473 <= machine_state_in_5357(102 downto 102);
    -- flow-through slice operator slice_5476_inst
    ccu_ignore_break_point_5477 <= machine_state_in_5357(101 downto 101);
    -- flow-through slice operator slice_5480_inst
    ccu_debug_mode_selected_5481 <= machine_state_in_5357(100 downto 100);
    -- flow-through slice operator slice_5484_inst
    ccu_PC_5485 <= machine_state_in_5357(99 downto 68);
    -- flow-through slice operator slice_5488_inst
    ccu_NPC_5489 <= machine_state_in_5357(67 downto 36);
    -- flow-through slice operator slice_5492_inst
    ccu_PSR_5493 <= machine_state_in_5357(35 downto 4);
    -- flow-through slice operator slice_5496_inst
    ccu_ANNUL_5497 <= machine_state_in_5357(3 downto 3);
    -- flow-through slice operator slice_5500_inst
    ccu_logging_active_5501 <= machine_state_in_5357(2 downto 2);
    -- flow-through slice operator slice_5504_inst
    ccu_reset_5505 <= machine_state_in_5357(1 downto 1);
    -- flow-through slice operator slice_5508_inst
    ccu_valid_5509 <= machine_state_in_5357(0 downto 0);
    -- flow-through slice operator slice_5580_inst
    valid_from_stream_corrector_raw_5581 <= from_sc_5362(147 downto 147);
    -- flow-through slice operator slice_5584_inst
    sc_thread_id_5585 <= from_sc_5362(146 downto 143);
    -- flow-through slice operator slice_5588_inst
    sc_stream_id_5589 <= from_sc_5362(142 downto 141);
    -- flow-through slice operator slice_5592_inst
    sc_slot_id_5593 <= from_sc_5362(140 downto 135);
    -- flow-through slice operator slice_5596_inst
    only_update_flush_or_psr_5597 <= from_sc_5362(133 downto 133);
    -- flow-through slice operator slice_5600_inst
    annul_from_stream_corrector_5601 <= from_sc_5362(132 downto 132);
    -- flow-through slice operator slice_5604_inst
    flush_from_stream_corrector_5605 <= from_sc_5362(131 downto 131);
    -- flow-through slice operator slice_5608_inst
    last_was_cti_from_stream_corrector_5609 <= from_sc_5362(130 downto 130);
    -- flow-through slice operator slice_5612_inst
    last_was_write_psr_from_stream_corrector_5613 <= from_sc_5362(129 downto 129);
    -- flow-through slice operator slice_5616_inst
    kill_thread_from_stream_corrector_5617 <= from_sc_5362(128 downto 128);
    -- flow-through slice operator slice_5620_inst
    pc_from_stream_corrector_5621 <= from_sc_5362(127 downto 96);
    -- flow-through slice operator slice_5624_inst
    npc_from_stream_corrector_5625 <= from_sc_5362(95 downto 64);
    -- flow-through slice operator slice_5628_inst
    psr_from_stream_corrector_5629 <= from_sc_5362(63 downto 32);
    -- flow-through slice operator slice_5632_inst
    last_pc_from_stream_corrector_5633 <= from_sc_5362(31 downto 0);
    -- flow-through slice operator slice_5803_inst
    slice_5803_wire <= issue_NPC_5800(31 downto 2);
    -- flow-through slice operator slice_5869_inst
    slice_5869_wire <= last_fetched_PC_5428(31 downto 3);
    -- flow-through slice operator slice_5871_inst
    slice_5871_wire <= issue_PC_5791(31 downto 3);
    -- flow-through slice operator slice_5941_inst
    substream_correction_valid_5942 <= ifetch_substream_correction_5342(110 downto 110);
    -- flow-through slice operator slice_5945_inst
    substream_thread_id_5946 <= ifetch_substream_correction_5342(109 downto 106);
    -- flow-through slice operator slice_5949_inst
    substream_stream_id_5950 <= ifetch_substream_correction_5342(105 downto 104);
    -- flow-through slice operator slice_5953_inst
    substream_slot_id_5954 <= ifetch_substream_correction_5342(103 downto 98);
    -- flow-through slice operator slice_5957_inst
    substream_ras_mispredict_5958 <= ifetch_substream_correction_5342(97 downto 97);
    -- flow-through slice operator slice_5961_inst
    substream_cti_mispredict_5962 <= ifetch_substream_correction_5342(96 downto 96);
    -- flow-through slice operator slice_5965_inst
    substream_ras_nnpc_or_branch_offset_5966 <= ifetch_substream_correction_5342(95 downto 64);
    -- flow-through slice operator slice_5969_inst
    substream_pc_5970 <= ifetch_substream_correction_5342(63 downto 32);
    -- flow-through slice operator slice_5973_inst
    substream_npc_5974 <= ifetch_substream_correction_5342(31 downto 0);
    -- flow-through slice operator slice_6001_inst
    slice_6001_wire <= next_PC_5902(31 downto 2);
    -- interlock W_icache_response_merged_6078_inst
    process(icache_response_6044) -- 
      variable tmp_var : std_logic_vector(89 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 89 downto 0) := icache_response_6044(89 downto 0);
      icache_response_merged_6080 <= tmp_var; -- 
    end process;
    W_ici_6221_delayed_1_0_6084_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_ici_6221_delayed_1_0_6084_inst_req_0;
      W_ici_6221_delayed_1_0_6084_inst_ack_0<= wack(0);
      rreq(0) <= W_ici_6221_delayed_1_0_6084_inst_req_1;
      W_ici_6221_delayed_1_0_6084_inst_ack_1<= rack(0);
      W_ici_6221_delayed_1_0_6084_inst : InterlockBuffer generic map ( -- 
        name => "W_ici_6221_delayed_1_0_6084_inst",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  true ,
        in_data_width => 149,
        out_data_width => 149,
        bypass_flag =>  true 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => ici_6077,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => ici_6221_delayed_1_0_6086,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    W_issue_NNPC_6241_delayed_1_0_6110_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_issue_NNPC_6241_delayed_1_0_6110_inst_req_0;
      W_issue_NNPC_6241_delayed_1_0_6110_inst_ack_0<= wack(0);
      rreq(0) <= W_issue_NNPC_6241_delayed_1_0_6110_inst_req_1;
      W_issue_NNPC_6241_delayed_1_0_6110_inst_ack_1<= rack(0);
      W_issue_NNPC_6241_delayed_1_0_6110_inst : InterlockBuffer generic map ( -- 
        name => "W_issue_NNPC_6241_delayed_1_0_6110_inst",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  true ,
        in_data_width => 32,
        out_data_width => 32,
        bypass_flag =>  true 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => issue_NNPC_5820,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => issue_NNPC_6241_delayed_1_0_6112,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    W_issue_NNPC_offset_relative_to_PC_6242_delayed_1_0_6113_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_issue_NNPC_offset_relative_to_PC_6242_delayed_1_0_6113_inst_req_0;
      W_issue_NNPC_offset_relative_to_PC_6242_delayed_1_0_6113_inst_ack_0<= wack(0);
      rreq(0) <= W_issue_NNPC_offset_relative_to_PC_6242_delayed_1_0_6113_inst_req_1;
      W_issue_NNPC_offset_relative_to_PC_6242_delayed_1_0_6113_inst_ack_1<= rack(0);
      W_issue_NNPC_offset_relative_to_PC_6242_delayed_1_0_6113_inst : InterlockBuffer generic map ( -- 
        name => "W_issue_NNPC_offset_relative_to_PC_6242_delayed_1_0_6113_inst",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  true ,
        in_data_width => 32,
        out_data_width => 32,
        bypass_flag =>  true 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => issue_NNPC_offset_relative_to_PC_5825,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => issue_NNPC_offset_relative_to_PC_6242_delayed_1_0_6115,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    W_issue_instruction_6219_delayed_1_0_6081_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_issue_instruction_6219_delayed_1_0_6081_inst_req_0;
      W_issue_instruction_6219_delayed_1_0_6081_inst_ack_0<= wack(0);
      rreq(0) <= W_issue_instruction_6219_delayed_1_0_6081_inst_req_1;
      W_issue_instruction_6219_delayed_1_0_6081_inst_ack_1<= rack(0);
      W_issue_instruction_6219_delayed_1_0_6081_inst : InterlockBuffer generic map ( -- 
        name => "W_issue_instruction_6219_delayed_1_0_6081_inst",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  true ,
        in_data_width => 1,
        out_data_width => 1,
        bypass_flag =>  true 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => issue_instruction_5840,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => issue_instruction_6219_delayed_1_0_6083,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    W_issue_instruction_6274_delayed_1_0_6154_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_issue_instruction_6274_delayed_1_0_6154_inst_req_0;
      W_issue_instruction_6274_delayed_1_0_6154_inst_ack_0<= wack(0);
      rreq(0) <= W_issue_instruction_6274_delayed_1_0_6154_inst_req_1;
      W_issue_instruction_6274_delayed_1_0_6154_inst_ack_1<= rack(0);
      W_issue_instruction_6274_delayed_1_0_6154_inst : InterlockBuffer generic map ( -- 
        name => "W_issue_instruction_6274_delayed_1_0_6154_inst",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  true ,
        in_data_width => 1,
        out_data_width => 1,
        bypass_flag =>  true 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => issue_instruction_5840,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => issue_instruction_6274_delayed_1_0_6156,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    -- interlock W_issue_thread_head_5760_inst
    process(thread_head_5384) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := thread_head_5384(0 downto 0);
      issue_thread_head_5762 <= tmp_var; -- 
    end process;
    -- interlock W_issue_thread_id_5757_inst
    process(thread_id_5408) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 3 downto 0) := thread_id_5408(3 downto 0);
      issue_thread_id_5759 <= tmp_var; -- 
    end process;
    W_request_icache_6222_delayed_1_0_6087_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_request_icache_6222_delayed_1_0_6087_inst_req_0;
      W_request_icache_6222_delayed_1_0_6087_inst_ack_0<= wack(0);
      rreq(0) <= W_request_icache_6222_delayed_1_0_6087_inst_req_1;
      W_request_icache_6222_delayed_1_0_6087_inst_ack_1<= rack(0);
      W_request_icache_6222_delayed_1_0_6087_inst : InterlockBuffer generic map ( -- 
        name => "W_request_icache_6222_delayed_1_0_6087_inst",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  true ,
        in_data_width => 1,
        out_data_width => 1,
        bypass_flag =>  true 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => request_icache_5881,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => request_icache_6222_delayed_1_0_6089,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    next_CIRCULANT_6189_5348_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= next_CIRCULANT_6189_5348_buf_req_0;
      next_CIRCULANT_6189_5348_buf_ack_0<= wack(0);
      rreq(0) <= next_CIRCULANT_6189_5348_buf_req_1;
      next_CIRCULANT_6189_5348_buf_ack_1<= rack(0);
      next_CIRCULANT_6189_5348_buf : InterlockBuffer generic map ( -- 
        name => "next_CIRCULANT_6189_5348_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 147,
        out_data_width => 147,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => next_CIRCULANT_6189,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => next_CIRCULANT_6189_5348_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    next_this_thread_is_dead_5705_5352_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= next_this_thread_is_dead_5705_5352_buf_req_0;
      next_this_thread_is_dead_5705_5352_buf_ack_0<= wack(0);
      rreq(0) <= next_this_thread_is_dead_5705_5352_buf_req_1;
      next_this_thread_is_dead_5705_5352_buf_ack_1<= rack(0);
      next_this_thread_is_dead_5705_5352_buf : InterlockBuffer generic map ( -- 
        name => "next_this_thread_is_dead_5705_5352_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 1,
        out_data_width => 1,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => next_this_thread_is_dead_5705,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => next_this_thread_is_dead_5705_5352_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    send_to_branch_predictor_5996_5356_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= send_to_branch_predictor_5996_5356_buf_req_0;
      send_to_branch_predictor_5996_5356_buf_ack_0<= wack(0);
      rreq(0) <= send_to_branch_predictor_5996_5356_buf_req_1;
      send_to_branch_predictor_5996_5356_buf_ack_1<= rack(0);
      send_to_branch_predictor_5996_5356_buf : InterlockBuffer generic map ( -- 
        name => "send_to_branch_predictor_5996_5356_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 1,
        out_data_width => 1,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => send_to_branch_predictor_5996,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => send_to_branch_predictor_5996_5356_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    -- interlock ssrc_phi_stmt_5342
    process(RPIPE_noblock_ifetch_substream_update_5344_wire) -- 
      variable tmp_var : std_logic_vector(110 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 110 downto 0) := RPIPE_noblock_ifetch_substream_update_5344_wire(110 downto 0);
      ifetch_substream_correction_5342 <= tmp_var; -- 
    end process;
    do_while_stmt_5335_branch: Block -- 
      -- branch-block
      signal condition_sig : std_logic_vector(0 downto 0);
      begin 
      condition_sig <= konst_6192_wire_constant;
      branch_instance: BranchBase -- 
        generic map( name => "do_while_stmt_5335_branch", condition_width => 1,  bypass_flag => true)
        port map( -- 
          condition => condition_sig,
          req => do_while_stmt_5335_branch_req_0,
          ack0 => do_while_stmt_5335_branch_ack_0,
          ack1 => do_while_stmt_5335_branch_ack_1,
          clk => clk,
          reset => reset); -- 
      --
    end Block; -- branch-block
    -- flow through binary operator ADD_u2_u2_5735_inst
    ADD_u2_u2_5735_wire <= std_logic_vector(unsigned(stream_id_5412) + unsigned(konst_5734_wire_constant));
    -- flow through binary operator ADD_u30_u30_5805_inst
    ADD_u30_u30_5805_wire <= std_logic_vector(unsigned(slice_5803_wire) + unsigned(konst_5804_wire_constant));
    -- flow through binary operator ADD_u6_u6_5689_inst
    ADD_u6_u6_5689_wire <= std_logic_vector(unsigned(slot_id_5416) + unsigned(konst_5688_wire_constant));
    -- flow through binary operator AND_u1_u1_5514_inst
    tr_ccu_5515 <= (ccu_valid_5509 and NOT_u1_u1_5513_wire);
    -- flow through binary operator AND_u1_u1_5549_inst
    next_thread_head_5550 <= (ccu_valid_5509 and NOT_u1_u1_5548_wire);
    -- flow through binary operator AND_u1_u1_5656_inst
    AND_u1_u1_5656_wire <= (NOT_u1_u1_5653_wire and NOT_u1_u1_5655_wire);
    -- flow through binary operator AND_u1_u1_5661_inst
    AND_u1_u1_5661_wire <= (valid_from_stream_corrector_raw_5581 and EQ_u4_u1_5660_wire);
    -- flow through binary operator AND_u1_u1_5662_inst
    valid_from_stream_corrector_5663 <= (AND_u1_u1_5656_wire and AND_u1_u1_5661_wire);
    -- flow through binary operator AND_u1_u1_5667_inst
    AND_u1_u1_5667_wire <= (only_update_flush_or_psr_5597 and flush_from_stream_corrector_5605);
    -- flow through binary operator AND_u1_u1_5671_inst
    apply_flush_correction_5672 <= (AND_u1_u1_5667_wire and EQ_u4_u1_5670_wire);
    -- flow through binary operator AND_u1_u1_5676_inst
    AND_u1_u1_5676_wire <= (only_update_flush_or_psr_5597 and last_was_write_psr_from_stream_corrector_5613);
    -- flow through binary operator AND_u1_u1_5680_inst
    apply_psr_correction_5681 <= (AND_u1_u1_5676_wire and EQ_u4_u1_5679_wire);
    -- flow through binary operator AND_u1_u1_5698_inst
    AND_u1_u1_5698_wire <= (valid_from_stream_corrector_5663 and kill_thread_from_stream_corrector_5617);
    -- flow through binary operator AND_u1_u1_5718_inst
    AND_u1_u1_5718_wire <= (valid_from_stream_corrector_5663 and last_was_write_psr_from_stream_corrector_5613);
    -- flow through binary operator AND_u1_u1_5770_inst
    AND_u1_u1_5770_wire <= (substream_correction_valid_5942 and NOT_u1_u1_5769_wire);
    -- flow through binary operator AND_u1_u1_5773_inst
    AND_u1_u1_5773_wire <= (AND_u1_u1_5770_wire and NOT_u1_u1_5772_wire);
    -- flow through binary operator AND_u1_u1_5780_inst
    AND_u1_u1_5780_wire <= (EQ_u4_u1_5776_wire and EQ_u2_u1_5779_wire);
    -- flow through binary operator AND_u1_u1_5781_inst
    issue_substream_head_5782 <= (AND_u1_u1_5773_wire and AND_u1_u1_5780_wire);
    -- flow through binary operator AND_u1_u1_5839_inst
    issue_instruction_5840 <= (NOT_u1_u1_5833_wire and OR_u1_u1_5838_wire);
    -- flow through binary operator AND_u1_u1_5862_inst
    AND_u1_u1_5862_wire <= (last_fetched_PC_valid_5404 and NOT_u1_u1_5861_wire);
    -- flow through binary operator AND_u1_u1_5865_inst
    AND_u1_u1_5865_wire <= (AND_u1_u1_5862_wire and NOT_u1_u1_5864_wire);
    -- flow through binary operator AND_u1_u1_5873_inst
    AND_u1_u1_5873_wire <= (NOT_u1_u1_5867_wire and EQ_u29_u1_5872_wire);
    -- flow through binary operator AND_u1_u1_5874_inst
    last_fetched_pc_match_5875 <= (AND_u1_u1_5865_wire and AND_u1_u1_5873_wire);
    -- flow through binary operator AND_u1_u1_5880_inst
    request_icache_5881 <= (issue_instruction_5840 and NOT_u1_u1_5879_wire);
    -- flow through binary operator AND_u1_u1_5892_inst
    next_last_fetched_PC_valid_5893 <= (request_icache_5881 and NOT_u1_u1_5891_wire);
    -- flow through binary operator AND_u1_u1_5928_inst
    next_ANNUL_5929 <= (NOT_u1_u1_5923_wire and MUX_5927_wire);
    -- flow through binary operator AND_u1_u1_6130_inst
    issue_nnpc_mismatch_6131 <= (MUX_6126_wire and NEQ_u32_u1_6129_wire);
    -- flow through binary operator BITSEL_u32_u1_5829_inst
    process(issue_PSR_5723) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(issue_PSR_5723, konst_5828_wire_constant, tmp_var);
      S_5830 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u13_u17_6060_inst
    process(CONCAT_u6_u13_6052_wire, CONCAT_u2_u4_6059_wire) -- 
      variable tmp_var : std_logic_vector(16 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u6_u13_6052_wire, CONCAT_u2_u4_6059_wire, tmp_var);
      CONCAT_u13_u17_6060_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u17_u149_6076_inst
    process(CONCAT_u13_u17_6060_wire, CONCAT_u4_u132_6075_wire) -- 
      variable tmp_var : std_logic_vector(148 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u13_u17_6060_wire, CONCAT_u4_u132_6075_wire, tmp_var);
      ici_6077 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_6055_inst
    process(ignore_break_point_5388, debug_mode_selected_5392) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(ignore_break_point_5388, debug_mode_selected_5392, tmp_var);
      CONCAT_u1_u2_6055_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_6058_inst
    process(issue_ANNUL_5713, logging_active_5396) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(issue_ANNUL_5713, logging_active_5396, tmp_var);
      CONCAT_u1_u2_6058_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_6063_inst
    process(issue_thread_head_5762, issue_stream_head_5728) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(issue_thread_head_5762, issue_stream_head_5728, tmp_var);
      CONCAT_u1_u2_6063_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_6066_inst
    process(issue_substream_head_5782, last_fetched_pc_match_5875) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(issue_substream_head_5782, last_fetched_pc_match_5875, tmp_var);
      CONCAT_u1_u2_6066_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_6135_inst
    process(issue_thread_head_5762, issue_stream_head_5728) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(issue_thread_head_5762, issue_stream_head_5728, tmp_var);
      CONCAT_u1_u2_6135_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_6143_inst
    process(is_call_6103, is_ret_or_retl_6103) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_call_6103, is_ret_or_retl_6103, tmp_var);
      CONCAT_u1_u2_6143_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_6164_inst
    process(next_ANNUL_5929, next_thread_head_5550) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(next_ANNUL_5929, next_thread_head_5550, tmp_var);
      CONCAT_u1_u2_6164_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_6167_inst
    process(next_ignore_break_point_5556, next_debug_mode_selected_5565) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(next_ignore_break_point_5556, next_debug_mode_selected_5565, tmp_var);
      CONCAT_u1_u2_6167_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_6171_inst
    process(next_logging_active_5526, next_single_step_flag_5535) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(next_logging_active_5526, next_single_step_flag_5535, tmp_var);
      CONCAT_u1_u2_6171_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u31_6002_inst
    process(type_cast_5999_wire_constant, slice_6001_wire) -- 
      variable tmp_var : std_logic_vector(30 downto 0); -- 
    begin -- 
      ApConcat_proc(type_cast_5999_wire_constant, slice_6001_wire, tmp_var);
      to_branch_predictor_6003 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u33_6147_inst
    process(issue_nnpc_mismatch_6131, ras_nnpc_6103) -- 
      variable tmp_var : std_logic_vector(32 downto 0); -- 
    begin -- 
      ApConcat_proc(issue_nnpc_mismatch_6131, ras_nnpc_6103, tmp_var);
      CONCAT_u1_u33_6147_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u8_5844_inst
    process(issue_flush_flag_5756) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(issue_flush_flag_5756, R_ZERO_7_5843_wire_constant, tmp_var);
      flush_mask_5845 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u9_5854_inst
    process(R_ONE_1_5847_wire_constant, OR_u8_u8_5853_wire) -- 
      variable tmp_var : std_logic_vector(8 downto 0); -- 
    begin -- 
      ApConcat_proc(R_ONE_1_5847_wire_constant, OR_u8_u8_5853_wire, tmp_var);
      CONCAT_u1_u9_5854_wire <= tmp_var; --
    end process;
    -- shared split operator group (43) : CONCAT_u2_u3_6137_inst 
    ApConcat_group_43: Block -- 
      signal data_in: std_logic_vector(2 downto 0);
      signal data_out: std_logic_vector(2 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      data_in <= CONCAT_u1_u2_6135_wire & issue_substream_head_5782;
      CONCAT_u2_u3_6260_6260_delayed_1_0_6138 <= data_out(2 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= CONCAT_u2_u3_6137_inst_req_0;
      CONCAT_u2_u3_6137_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= CONCAT_u2_u3_6137_inst_req_1;
      CONCAT_u2_u3_6137_inst_ack_1 <= ackR_unguarded(0);
      ApConcat_group_43_gI: SplitGuardInterface generic map(name => "ApConcat_group_43_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
          name => "ApConcat_group_43",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 2,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 1, 
          num_inputs    => 2,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 3,
          constant_operand => "0",
          constant_width => 1,
          buffering  => 1,
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
    end Block; -- split operator group 43
    -- flow through binary operator CONCAT_u2_u3_6173_inst
    process(CONCAT_u1_u2_6171_wire, next_last_fetched_PC_valid_5893) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_6171_wire, next_last_fetched_PC_valid_5893, tmp_var);
      CONCAT_u2_u3_6173_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u4_6059_inst
    process(CONCAT_u1_u2_6055_wire, CONCAT_u1_u2_6058_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_6055_wire, CONCAT_u1_u2_6058_wire, tmp_var);
      CONCAT_u2_u4_6059_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u4_6067_inst
    process(CONCAT_u1_u2_6063_wire, CONCAT_u1_u2_6066_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_6063_wire, CONCAT_u1_u2_6066_wire, tmp_var);
      CONCAT_u2_u4_6067_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u4_6168_inst
    process(CONCAT_u1_u2_6164_wire, CONCAT_u1_u2_6167_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_6164_wire, CONCAT_u1_u2_6167_wire, tmp_var);
      CONCAT_u2_u4_6168_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u30_u32_5460_inst
    process(bpb_result_nnpc_30_5455) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApConcat_proc(bpb_result_nnpc_30_5455, type_cast_5459_wire_constant, tmp_var);
      bpb_result_nnpc_5461 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u30_u32_5808_inst
    process(ADD_u30_u30_5805_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApConcat_proc(ADD_u30_u30_5805_wire, type_cast_5807_wire_constant, tmp_var);
      issue_NPC_plus_4_5809 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u222_6150_inst
    process(branch_target_offset_6103, to_idecode_6103) -- 
      variable tmp_var : std_logic_vector(221 downto 0); -- 
    begin -- 
      ApConcat_proc(branch_target_offset_6103, to_idecode_6103, tmp_var);
      CONCAT_u32_u222_6150_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u64_6070_inst
    process(issue_PSR_5723, issue_PC_5791) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(issue_PSR_5723, issue_PC_5791, tmp_var);
      CONCAT_u32_u64_6070_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u64_6073_inst
    process(issue_NPC_5800, issue_NNPC_5820) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(issue_NPC_5800, issue_NNPC_5820, tmp_var);
      CONCAT_u32_u64_6073_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u64_6184_inst
    process(next_NPC_5911, next_last_fetched_PC_5887) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(next_NPC_5911, next_last_fetched_PC_5887, tmp_var);
      CONCAT_u32_u64_6184_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u33_u255_6151_inst
    process(CONCAT_u1_u33_6147_wire, CONCAT_u32_u222_6150_wire) -- 
      variable tmp_var : std_logic_vector(254 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u33_6147_wire, CONCAT_u32_u222_6150_wire, tmp_var);
      CONCAT_u33_u255_6151_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u5_6144_inst
    process(CONCAT_u2_u3_6260_6260_delayed_1_0_6138, CONCAT_u1_u2_6143_wire) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_6260_6260_delayed_1_0_6138, CONCAT_u1_u2_6143_wire, tmp_var);
      CONCAT_u3_u5_6144_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u44_u140_6187_inst
    process(CONCAT_u6_u44_6181_wire, CONCAT_u64_u96_6186_wire) -- 
      variable tmp_var : std_logic_vector(139 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u6_u44_6181_wire, CONCAT_u64_u96_6186_wire, tmp_var);
      CONCAT_u44_u140_6187_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u132_6075_inst
    process(CONCAT_u2_u4_6067_wire, CONCAT_u64_u128_6074_wire) -- 
      variable tmp_var : std_logic_vector(131 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u4_6067_wire, CONCAT_u64_u128_6074_wire, tmp_var);
      CONCAT_u4_u132_6075_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u6_6048_inst
    process(issue_thread_id_5759, issue_stream_id_5739) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(issue_thread_id_5759, issue_stream_id_5739, tmp_var);
      CONCAT_u4_u6_6048_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u6_6177_inst
    process(next_thread_id_5544, next_stream_id_5938) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(next_thread_id_5544, next_stream_id_5938, tmp_var);
      CONCAT_u4_u6_6177_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u7_6174_inst
    process(CONCAT_u2_u4_6168_wire, CONCAT_u2_u3_6173_wire) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u4_6168_wire, CONCAT_u2_u3_6173_wire, tmp_var);
      CONCAT_u4_u7_6174_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u260_6152_inst
    process(CONCAT_u3_u5_6144_wire, CONCAT_u33_u255_6151_wire) -- 
      variable tmp_var : std_logic_vector(259 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u3_u5_6144_wire, CONCAT_u33_u255_6151_wire, tmp_var);
      to_regulator_6153 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u64_u128_6074_inst
    process(CONCAT_u32_u64_6070_wire, CONCAT_u32_u64_6073_wire) -- 
      variable tmp_var : std_logic_vector(127 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u32_u64_6070_wire, CONCAT_u32_u64_6073_wire, tmp_var);
      CONCAT_u64_u128_6074_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u64_u96_6186_inst
    process(CONCAT_u32_u64_6184_wire, next_PSR_5920) -- 
      variable tmp_var : std_logic_vector(95 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u32_u64_6184_wire, next_PSR_5920, tmp_var);
      CONCAT_u64_u96_6186_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u13_6052_inst
    process(CONCAT_u4_u6_6048_wire, CONCAT_u6_u7_6051_wire) -- 
      variable tmp_var : std_logic_vector(12 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u6_6048_wire, CONCAT_u6_u7_6051_wire, tmp_var);
      CONCAT_u6_u13_6052_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u38_6180_inst
    process(next_slot_id_5692, next_PC_5902) -- 
      variable tmp_var : std_logic_vector(37 downto 0); -- 
    begin -- 
      ApConcat_proc(next_slot_id_5692, next_PC_5902, tmp_var);
      CONCAT_u6_u38_6180_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u44_6181_inst
    process(CONCAT_u4_u6_6177_wire, CONCAT_u6_u38_6180_wire) -- 
      variable tmp_var : std_logic_vector(43 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u6_6177_wire, CONCAT_u6_u38_6180_wire, tmp_var);
      CONCAT_u6_u44_6181_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u7_6051_inst
    process(issue_slot_id_5745, single_step_flag_5400) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(issue_slot_id_5745, single_step_flag_5400, tmp_var);
      CONCAT_u6_u7_6051_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u7_u147_6188_inst
    process(CONCAT_u4_u7_6174_wire, CONCAT_u44_u140_6187_wire) -- 
      variable tmp_var : std_logic_vector(146 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u7_6174_wire, CONCAT_u44_u140_6187_wire, tmp_var);
      next_CIRCULANT_6189 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u9_u41_5856_inst
    process(CONCAT_u1_u9_5854_wire, issue_PC_5791) -- 
      variable tmp_var : std_logic_vector(40 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u9_5854_wire, issue_PC_5791, tmp_var);
      to_icache_5857 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u29_u1_5872_inst
    process(slice_5869_wire, slice_5871_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(slice_5869_wire, slice_5871_wire, tmp_var);
      EQ_u29_u1_5872_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_5779_inst
    process(substream_stream_id_5950, issue_stream_id_5739) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(substream_stream_id_5950, issue_stream_id_5739, tmp_var);
      EQ_u2_u1_5779_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_5660_inst
    process(sc_thread_id_5585, thread_id_5408) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(sc_thread_id_5585, thread_id_5408, tmp_var);
      EQ_u4_u1_5660_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_5670_inst
    process(sc_thread_id_5585, thread_id_5408) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(sc_thread_id_5585, thread_id_5408, tmp_var);
      EQ_u4_u1_5670_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_5679_inst
    process(sc_thread_id_5585, thread_id_5408) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(sc_thread_id_5585, thread_id_5408, tmp_var);
      EQ_u4_u1_5679_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_5776_inst
    process(substream_thread_id_5946, issue_thread_id_5759) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(substream_thread_id_5946, issue_thread_id_5759, tmp_var);
      EQ_u4_u1_5776_wire <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u32_u1_6129_inst
    process(compare_operand_1_6109, compare_operand_2_6121) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(compare_operand_1_6109, compare_operand_2_6121, tmp_var);
      NEQ_u32_u1_6129_wire <= tmp_var; --
    end process;
    -- unary operator NOT_u1_u1_5513_inst
    process(ccu_reset_5505) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ccu_reset_5505, tmp_var);
      NOT_u1_u1_5513_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5548_inst
    process(ccu_reset_5505) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ccu_reset_5505, tmp_var);
      NOT_u1_u1_5548_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5653_inst
    process(ccu_valid_5509) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ccu_valid_5509, tmp_var);
      NOT_u1_u1_5653_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5655_inst
    process(only_update_flush_or_psr_5597) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", only_update_flush_or_psr_5597, tmp_var);
      NOT_u1_u1_5655_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5769_inst
    process(issue_thread_head_5762) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", issue_thread_head_5762, tmp_var);
      NOT_u1_u1_5769_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5772_inst
    process(issue_stream_head_5728) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", issue_stream_head_5728, tmp_var);
      NOT_u1_u1_5772_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5813_inst
    process(bpb_result_match_5451) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", bpb_result_match_5451, tmp_var);
      NOT_u1_u1_5813_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5833_inst
    process(this_thread_is_dead_5349) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", this_thread_is_dead_5349, tmp_var);
      NOT_u1_u1_5833_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5835_inst
    process(valid_from_stream_corrector_5663) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", valid_from_stream_corrector_5663, tmp_var);
      NOT_u1_u1_5835_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5837_inst
    process(kill_thread_from_stream_corrector_5617) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", kill_thread_from_stream_corrector_5617, tmp_var);
      NOT_u1_u1_5837_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5861_inst
    process(issue_flush_flag_5756) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", issue_flush_flag_5756, tmp_var);
      NOT_u1_u1_5861_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5864_inst
    process(issue_stream_head_5728) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", issue_stream_head_5728, tmp_var);
      NOT_u1_u1_5864_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5867_inst
    process(issue_thread_head_5762) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", issue_thread_head_5762, tmp_var);
      NOT_u1_u1_5867_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5879_inst
    process(last_fetched_pc_match_5875) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", last_fetched_pc_match_5875, tmp_var);
      NOT_u1_u1_5879_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5891_inst
    process(issue_flush_flag_5756) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", issue_flush_flag_5756, tmp_var);
      NOT_u1_u1_5891_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5923_inst
    process(ccu_reset_5505) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ccu_reset_5505, tmp_var);
      NOT_u1_u1_5923_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5995_inst
    process(this_thread_is_dead_5349) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", this_thread_is_dead_5349, tmp_var);
      send_to_branch_predictor_5996 <= tmp_var; -- 
    end process;
    -- flow through binary operator OR_u1_u1_5702_inst
    OR_u1_u1_5702_wire <= (single_step_flag_5400 or this_thread_is_dead_5349);
    -- flow through binary operator OR_u1_u1_5719_inst
    OR_u1_u1_5719_wire <= (apply_psr_correction_5681 or AND_u1_u1_5718_wire);
    -- flow through binary operator OR_u1_u1_5727_inst
    issue_stream_head_5728 <= (thread_head_5384 or valid_from_stream_corrector_5663);
    -- flow through binary operator OR_u1_u1_5755_inst
    issue_flush_flag_5756 <= (apply_flush_correction_5672 or MUX_5754_wire);
    -- flow through binary operator OR_u1_u1_5814_inst
    OR_u1_u1_5814_wire <= (valid_from_stream_corrector_5663 or NOT_u1_u1_5813_wire);
    -- flow through binary operator OR_u1_u1_5816_inst
    OR_u1_u1_5816_wire <= (OR_u1_u1_5814_wire or issue_substream_head_5782);
    -- flow through binary operator OR_u1_u1_5838_inst
    OR_u1_u1_5838_wire <= (NOT_u1_u1_5835_wire or NOT_u1_u1_5837_wire);
    -- flow through binary operator OR_u8_u8_5853_inst
    OR_u8_u8_5853_wire <= (flush_mask_5845 or MUX_5852_wire);
    -- flow through binary operator SUB_u32_u32_5824_inst
    issue_NNPC_offset_relative_to_PC_5825 <= std_logic_vector(unsigned(issue_NNPC_5820) - unsigned(issue_PC_5791));
    -- read from input-signal ENV_to_CPU_irl
    RPIPE_ENV_to_CPU_irl_6091_wire <= ENV_to_CPU_irl;
    -- shared inport operator group (1) : RPIPE_ICACHE_to_CPU_response_6043_inst 
    InportGroup_1: Block -- 
      signal data_out: std_logic_vector(89 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_ICACHE_to_CPU_response_6043_inst_req_0;
      RPIPE_ICACHE_to_CPU_response_6043_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_ICACHE_to_CPU_response_6043_inst_req_1;
      RPIPE_ICACHE_to_CPU_response_6043_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <= request_icache_5881(0);
      icache_response_6044 <= data_out(89 downto 0);
      ICACHE_to_CPU_response_read_1_gI: SplitGuardInterface generic map(name => "ICACHE_to_CPU_response_read_1_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      ICACHE_to_CPU_response_read_1: InputPort_P2P -- 
        generic map ( name => "ICACHE_to_CPU_response_read_1", data_width => 90,    bypass_flag => true,   	nonblocking_read_flag => false,  barrier_flag => false,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => ICACHE_to_CPU_response_pipe_read_req(0),
          oack => ICACHE_to_CPU_response_pipe_read_ack(0),
          odata => ICACHE_to_CPU_response_pipe_read_data(89 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 1
    -- shared inport operator group (2) : RPIPE_ccu_to_teu_5361_inst 
    InportGroup_2: Block -- 
      signal data_out: std_logic_vector(106 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_ccu_to_teu_5361_inst_req_0;
      RPIPE_ccu_to_teu_5361_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_ccu_to_teu_5361_inst_req_1;
      RPIPE_ccu_to_teu_5361_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      RPIPE_ccu_to_teu_5361_wire <= data_out(106 downto 0);
      ccu_to_teu_read_2_gI: SplitGuardInterface generic map(name => "ccu_to_teu_read_2_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      ccu_to_teu_read_2: InputPortRevised -- 
        generic map ( name => "ccu_to_teu_read_2", data_width => 107,  num_reqs => 1,  output_buffering => outBUFs,   nonblocking_read_flag => true,  no_arbitration => false)
        port map (-- 
          sample_req => reqL , 
          sample_ack => ackL, 
          update_req => reqR, 
          update_ack => ackR, 
          data => data_out, 
          oreq => ccu_to_teu_pipe_read_req(0),
          oack => ccu_to_teu_pipe_read_ack(0),
          odata => ccu_to_teu_pipe_read_data(106 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 2
    -- shared inport operator group (3) : RPIPE_noblock_ifetch_substream_update_5344_inst 
    InportGroup_3: Block -- 
      signal data_out: std_logic_vector(110 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_noblock_ifetch_substream_update_5344_inst_req_0;
      RPIPE_noblock_ifetch_substream_update_5344_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_noblock_ifetch_substream_update_5344_inst_req_1;
      RPIPE_noblock_ifetch_substream_update_5344_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      RPIPE_noblock_ifetch_substream_update_5344_wire <= data_out(110 downto 0);
      noblock_ifetch_substream_update_read_3_gI: SplitGuardInterface generic map(name => "noblock_ifetch_substream_update_read_3_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      noblock_ifetch_substream_update_read_3: InputPort_P2P -- 
        generic map ( name => "noblock_ifetch_substream_update_read_3", data_width => 111,    bypass_flag => false,   	nonblocking_read_flag => true,  barrier_flag => false,   queue_depth =>  1)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => noblock_ifetch_substream_update_pipe_read_req(0),
          oack => noblock_ifetch_substream_update_pipe_read_ack(0),
          odata => noblock_ifetch_substream_update_pipe_read_data(110 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 3
    -- shared inport operator group (4) : RPIPE_noblock_teu_idispatch_to_ifetch_5365_inst 
    InportGroup_4: Block -- 
      signal data_out: std_logic_vector(147 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_noblock_teu_idispatch_to_ifetch_5365_inst_req_0;
      RPIPE_noblock_teu_idispatch_to_ifetch_5365_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_noblock_teu_idispatch_to_ifetch_5365_inst_req_1;
      RPIPE_noblock_teu_idispatch_to_ifetch_5365_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      RPIPE_noblock_teu_idispatch_to_ifetch_5365_wire <= data_out(147 downto 0);
      noblock_teu_idispatch_to_ifetch_read_4_gI: SplitGuardInterface generic map(name => "noblock_teu_idispatch_to_ifetch_read_4_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      noblock_teu_idispatch_to_ifetch_read_4: InputPort_P2P -- 
        generic map ( name => "noblock_teu_idispatch_to_ifetch_read_4", data_width => 148,    bypass_flag => true,   	nonblocking_read_flag => true,  barrier_flag => false,   queue_depth =>  1)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => noblock_teu_idispatch_to_ifetch_pipe_read_req(0),
          oack => noblock_teu_idispatch_to_ifetch_pipe_read_ack(0),
          odata => noblock_teu_idispatch_to_ifetch_pipe_read_data(147 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 4
    -- shared inport operator group (5) : RPIPE_teu_ifetch_branch_predictor_lookup_response_5341_inst 
    InportGroup_5: Block -- 
      signal data_out: std_logic_vector(30 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_teu_ifetch_branch_predictor_lookup_response_5341_inst_req_0;
      RPIPE_teu_ifetch_branch_predictor_lookup_response_5341_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_teu_ifetch_branch_predictor_lookup_response_5341_inst_req_1;
      RPIPE_teu_ifetch_branch_predictor_lookup_response_5341_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <= send_to_branch_predictor_5996(0);
      RPIPE_teu_ifetch_branch_predictor_lookup_response_5341_wire <= data_out(30 downto 0);
      teu_ifetch_branch_predictor_lookup_response_read_5_gI: SplitGuardInterface generic map(name => "teu_ifetch_branch_predictor_lookup_response_read_5_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      teu_ifetch_branch_predictor_lookup_response_read_5: InputPort_P2P -- 
        generic map ( name => "teu_ifetch_branch_predictor_lookup_response_read_5", data_width => 31,    bypass_flag => true,   	nonblocking_read_flag => false,  barrier_flag => true,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => teu_ifetch_branch_predictor_lookup_response_pipe_read_req(0),
          oack => teu_ifetch_branch_predictor_lookup_response_pipe_read_ack(0),
          odata => teu_ifetch_branch_predictor_lookup_response_pipe_read_data(30 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 5
    -- read from input-signal teu_ras_top_of_stack
    RPIPE_teu_ras_top_of_stack_6095_wire <= teu_ras_top_of_stack;
    -- shared outport operator group (0) : WPIPE_NOBLOCK_CPU_to_ICACHE_command_6034_inst 
    OutportGroup_0: Block -- 
      signal data_in: std_logic_vector(40 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_NOBLOCK_CPU_to_ICACHE_command_6034_inst_req_0;
      WPIPE_NOBLOCK_CPU_to_ICACHE_command_6034_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_NOBLOCK_CPU_to_ICACHE_command_6034_inst_req_1;
      WPIPE_NOBLOCK_CPU_to_ICACHE_command_6034_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= request_icache_5881(0);
      data_in <= to_icache_5857;
      NOBLOCK_CPU_to_ICACHE_command_write_0_gI: SplitGuardInterface generic map(name => "NOBLOCK_CPU_to_ICACHE_command_write_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      NOBLOCK_CPU_to_ICACHE_command_write_0: OutputPortRevised -- 
        generic map ( name => "NOBLOCK_CPU_to_ICACHE_command", data_width => 41, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => NOBLOCK_CPU_to_ICACHE_command_pipe_write_req(0),
          oack => NOBLOCK_CPU_to_ICACHE_command_pipe_write_ack(0),
          odata => NOBLOCK_CPU_to_ICACHE_command_pipe_write_data(40 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    -- shared outport operator group (1) : WPIPE_ifetch_issue_to_regulator_pipe_6158_inst 
    OutportGroup_1: Block -- 
      signal data_in: std_logic_vector(259 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_ifetch_issue_to_regulator_pipe_6158_inst_req_0;
      WPIPE_ifetch_issue_to_regulator_pipe_6158_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_ifetch_issue_to_regulator_pipe_6158_inst_req_1;
      WPIPE_ifetch_issue_to_regulator_pipe_6158_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= issue_instruction_6274_delayed_1_0_6156(0);
      data_in <= to_regulator_6153;
      ifetch_issue_to_regulator_pipe_write_1_gI: SplitGuardInterface generic map(name => "ifetch_issue_to_regulator_pipe_write_1_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      ifetch_issue_to_regulator_pipe_write_1: OutputPortRevised -- 
        generic map ( name => "ifetch_issue_to_regulator_pipe", data_width => 260, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => ifetch_issue_to_regulator_pipe_pipe_write_req(0),
          oack => ifetch_issue_to_regulator_pipe_pipe_write_ack(0),
          odata => ifetch_issue_to_regulator_pipe_pipe_write_data(259 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 1
    -- shared outport operator group (2) : WPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_6005_inst 
    OutportGroup_2: Block -- 
      signal data_in: std_logic_vector(30 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_6005_inst_req_0;
      WPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_6005_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_6005_inst_req_1;
      WPIPE_noblock_teu_ifetch_branch_predictor_lookup_command_6005_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= send_to_branch_predictor_5996(0);
      data_in <= to_branch_predictor_6003;
      noblock_teu_ifetch_branch_predictor_lookup_command_write_2_gI: SplitGuardInterface generic map(name => "noblock_teu_ifetch_branch_predictor_lookup_command_write_2_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      noblock_teu_ifetch_branch_predictor_lookup_command_write_2: OutputPortRevised -- 
        generic map ( name => "noblock_teu_ifetch_branch_predictor_lookup_command", data_width => 31, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => noblock_teu_ifetch_branch_predictor_lookup_command_pipe_write_req(0),
          oack => noblock_teu_ifetch_branch_predictor_lookup_command_pipe_write_ack(0),
          odata => noblock_teu_ifetch_branch_predictor_lookup_command_pipe_write_data(30 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 2
    volatile_operator_generic_pc_adder_6746: generic_pc_adder_Volatile port map(pc => substream_pc_5970, offset => substream_ras_nnpc_or_branch_offset_5966, npc => call_generic_pc_adder_expr_5990_wire); 
    volatile_operator_issue_instruction_logic_6775: issue_instruction_logic_Volatile port map(issue_instruction => issue_instruction_6219_delayed_1_0_6083, irl_8 => RPIPE_ENV_to_CPU_irl_6091_wire, issue_control_word => ici_6221_delayed_1_0_6086, request_icache => request_icache_6222_delayed_1_0_6089, from_icache => icache_response_merged_6080, ras_top_of_stack => RPIPE_teu_ras_top_of_stack_6095_wire, is_call => is_call_6103, is_ret_or_retl => is_ret_or_retl_6103, is_valid_ras_entry => is_valid_ras_entry_6103, is_unconditional_cti => is_unconditional_cti_6103, ras_nnpc => ras_nnpc_6103, branch_target_offset => branch_target_offset_6103, to_idecode => to_idecode_6103); 
    -- 
  end Block; -- data_path
  -- 
end ifetch_main_daemon_arch;
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
library teu_ifetch;
use teu_ifetch.ifetch_global_package.all;
entity ifetch_regulator_daemon is -- 
  generic (tag_length : integer); 
  port ( -- 
    ifetch_issue_to_regulator_pipe_pipe_read_req : out  std_logic_vector(0 downto 0);
    ifetch_issue_to_regulator_pipe_pipe_read_ack : in   std_logic_vector(0 downto 0);
    ifetch_issue_to_regulator_pipe_pipe_read_data : in   std_logic_vector(259 downto 0);
    noblock_ifetch_substream_update_pipe_write_req : out  std_logic_vector(0 downto 0);
    noblock_ifetch_substream_update_pipe_write_ack : in   std_logic_vector(0 downto 0);
    noblock_ifetch_substream_update_pipe_write_data : out  std_logic_vector(110 downto 0);
    teu_ifetch_to_idecode_extended_pipe_write_req : out  std_logic_vector(0 downto 0);
    teu_ifetch_to_idecode_extended_pipe_write_ack : in   std_logic_vector(0 downto 0);
    teu_ifetch_to_idecode_extended_pipe_write_data : out  std_logic_vector(223 downto 0);
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
end entity ifetch_regulator_daemon;
architecture ifetch_regulator_daemon_arch of ifetch_regulator_daemon is -- 
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
  signal ifetch_regulator_daemon_CP_1921_start: Boolean;
  signal ifetch_regulator_daemon_CP_1921_symbol: Boolean;
  -- volatile/operator module components. 
  -- links between control-path and data-path
  signal do_while_stmt_6197_branch_req_0 : boolean;
  signal RPIPE_ifetch_issue_to_regulator_pipe_6201_inst_req_0 : boolean;
  signal RPIPE_ifetch_issue_to_regulator_pipe_6201_inst_ack_0 : boolean;
  signal RPIPE_ifetch_issue_to_regulator_pipe_6201_inst_req_1 : boolean;
  signal RPIPE_ifetch_issue_to_regulator_pipe_6201_inst_ack_1 : boolean;
  signal phi_stmt_6202_req_1 : boolean;
  signal phi_stmt_6202_req_0 : boolean;
  signal phi_stmt_6202_ack_0 : boolean;
  signal next_regulator_state_6346_6205_buf_req_0 : boolean;
  signal next_regulator_state_6346_6205_buf_ack_0 : boolean;
  signal next_regulator_state_6346_6205_buf_req_1 : boolean;
  signal next_regulator_state_6346_6205_buf_ack_1 : boolean;
  signal phi_stmt_6206_req_1 : boolean;
  signal phi_stmt_6206_req_0 : boolean;
  signal phi_stmt_6206_ack_0 : boolean;
  signal next_ras_counter_6383_6210_buf_req_0 : boolean;
  signal next_ras_counter_6383_6210_buf_ack_0 : boolean;
  signal next_ras_counter_6383_6210_buf_req_1 : boolean;
  signal next_ras_counter_6383_6210_buf_ack_1 : boolean;
  signal WPIPE_noblock_ifetch_substream_update_6410_inst_req_0 : boolean;
  signal WPIPE_noblock_ifetch_substream_update_6410_inst_ack_0 : boolean;
  signal WPIPE_noblock_ifetch_substream_update_6410_inst_req_1 : boolean;
  signal WPIPE_noblock_ifetch_substream_update_6410_inst_ack_1 : boolean;
  signal WPIPE_teu_ifetch_to_idecode_extended_6438_inst_req_0 : boolean;
  signal WPIPE_teu_ifetch_to_idecode_extended_6438_inst_ack_0 : boolean;
  signal WPIPE_teu_ifetch_to_idecode_extended_6438_inst_req_1 : boolean;
  signal WPIPE_teu_ifetch_to_idecode_extended_6438_inst_ack_1 : boolean;
  signal do_while_stmt_6197_branch_ack_0 : boolean;
  signal do_while_stmt_6197_branch_ack_1 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "ifetch_regulator_daemon_input_buffer", -- 
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
  ifetch_regulator_daemon_CP_1921_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "ifetch_regulator_daemon_out_buffer", -- 
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
    preds <= ifetch_regulator_daemon_CP_1921_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
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
    preds <= ifetch_regulator_daemon_CP_1921_start & tag_ilock_write_ack_symbol;
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
    preds <= ifetch_regulator_daemon_CP_1921_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  ifetch_regulator_daemon_CP_1921: Block -- control-path 
    signal ifetch_regulator_daemon_CP_1921_elements: BooleanArray(67 downto 0);
    -- 
  begin -- 
    ifetch_regulator_daemon_CP_1921_elements(0) <= ifetch_regulator_daemon_CP_1921_start;
    ifetch_regulator_daemon_CP_1921_symbol <= ifetch_regulator_daemon_CP_1921_elements(1);
    -- CP-element group 0:  transition  place  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	2 
    -- CP-element group 0:  members (4) 
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 branch_block_stmt_6196/$entry
      -- CP-element group 0: 	 branch_block_stmt_6196/branch_block_stmt_6196__entry__
      -- CP-element group 0: 	 branch_block_stmt_6196/do_while_stmt_6197__entry__
      -- 
    -- CP-element group 1:  transition  place  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	67 
    -- CP-element group 1: successors 
    -- CP-element group 1:  members (4) 
      -- CP-element group 1: 	 $exit
      -- CP-element group 1: 	 branch_block_stmt_6196/$exit
      -- CP-element group 1: 	 branch_block_stmt_6196/branch_block_stmt_6196__exit__
      -- CP-element group 1: 	 branch_block_stmt_6196/do_while_stmt_6197__exit__
      -- 
    ifetch_regulator_daemon_CP_1921_elements(1) <= ifetch_regulator_daemon_CP_1921_elements(67);
    -- CP-element group 2:  transition  place  bypass  pipeline-parent 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	0 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	8 
    -- CP-element group 2:  members (2) 
      -- CP-element group 2: 	 branch_block_stmt_6196/do_while_stmt_6197/$entry
      -- CP-element group 2: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197__entry__
      -- 
    ifetch_regulator_daemon_CP_1921_elements(2) <= ifetch_regulator_daemon_CP_1921_elements(0);
    -- CP-element group 3:  merge  place  bypass  pipeline-parent 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	67 
    -- CP-element group 3:  members (1) 
      -- CP-element group 3: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197__exit__
      -- 
    -- Element group ifetch_regulator_daemon_CP_1921_elements(3) is bound as output of CP function.
    -- CP-element group 4:  merge  place  bypass  pipeline-parent 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	7 
    -- CP-element group 4:  members (1) 
      -- CP-element group 4: 	 branch_block_stmt_6196/do_while_stmt_6197/loop_back
      -- 
    -- Element group ifetch_regulator_daemon_CP_1921_elements(4) is bound as output of CP function.
    -- CP-element group 5:  branch  transition  place  bypass  pipeline-parent 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	10 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	65 
    -- CP-element group 5: 	66 
    -- CP-element group 5:  members (3) 
      -- CP-element group 5: 	 branch_block_stmt_6196/do_while_stmt_6197/condition_done
      -- CP-element group 5: 	 branch_block_stmt_6196/do_while_stmt_6197/loop_exit/$entry
      -- CP-element group 5: 	 branch_block_stmt_6196/do_while_stmt_6197/loop_taken/$entry
      -- 
    ifetch_regulator_daemon_CP_1921_elements(5) <= ifetch_regulator_daemon_CP_1921_elements(10);
    -- CP-element group 6:  branch  place  bypass  pipeline-parent 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	64 
    -- CP-element group 6: successors 
    -- CP-element group 6:  members (1) 
      -- CP-element group 6: 	 branch_block_stmt_6196/do_while_stmt_6197/loop_body_done
      -- 
    ifetch_regulator_daemon_CP_1921_elements(6) <= ifetch_regulator_daemon_CP_1921_elements(64);
    -- CP-element group 7:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	4 
    -- CP-element group 7: successors 
    -- CP-element group 7: 	25 
    -- CP-element group 7: 	44 
    -- CP-element group 7:  members (1) 
      -- CP-element group 7: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/back_edge_to_loop_body
      -- 
    ifetch_regulator_daemon_CP_1921_elements(7) <= ifetch_regulator_daemon_CP_1921_elements(4);
    -- CP-element group 8:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	2 
    -- CP-element group 8: successors 
    -- CP-element group 8: 	27 
    -- CP-element group 8: 	46 
    -- CP-element group 8:  members (1) 
      -- CP-element group 8: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/first_time_through_loop_body
      -- 
    ifetch_regulator_daemon_CP_1921_elements(8) <= ifetch_regulator_daemon_CP_1921_elements(2);
    -- CP-element group 9:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	21 
    -- CP-element group 9: 	22 
    -- CP-element group 9: 	38 
    -- CP-element group 9: 	39 
    -- CP-element group 9: 	63 
    -- CP-element group 9: 	11 
    -- CP-element group 9: 	16 
    -- CP-element group 9:  members (3) 
      -- CP-element group 9: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/$entry
      -- CP-element group 9: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/loop_body_start
      -- CP-element group 9: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/phi_stmt_6199_sample_start_
      -- 
    -- Element group ifetch_regulator_daemon_CP_1921_elements(9) is bound as output of CP function.
    -- CP-element group 10:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	63 
    -- CP-element group 10: 	13 
    -- CP-element group 10: 	15 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	5 
    -- CP-element group 10:  members (1) 
      -- CP-element group 10: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/condition_evaluated
      -- 
    condition_evaluated_1945_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " condition_evaluated_1945_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_regulator_daemon_CP_1921_elements(10), ack => do_while_stmt_6197_branch_req_0); -- 
    ifetch_regulator_daemon_cp_element_group_10: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 43) := "ifetch_regulator_daemon_cp_element_group_10"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= ifetch_regulator_daemon_CP_1921_elements(63) & ifetch_regulator_daemon_CP_1921_elements(13) & ifetch_regulator_daemon_CP_1921_elements(15);
      gj_ifetch_regulator_daemon_cp_element_group_10 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_regulator_daemon_CP_1921_elements(10), clk => clk, reset => reset); --
    end block;
    -- CP-element group 11:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	21 
    -- CP-element group 11: 	38 
    -- CP-element group 11: 	9 
    -- CP-element group 11: marked-predecessors 
    -- CP-element group 11: 	15 
    -- CP-element group 11: successors 
    -- CP-element group 11: 	17 
    -- CP-element group 11: 	40 
    -- CP-element group 11:  members (2) 
      -- CP-element group 11: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/aggregated_phi_sample_req
      -- CP-element group 11: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/phi_stmt_6202_sample_start__ps
      -- 
    ifetch_regulator_daemon_cp_element_group_11: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 0,2 => 0,3 => 1);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 43) := "ifetch_regulator_daemon_cp_element_group_11"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= ifetch_regulator_daemon_CP_1921_elements(21) & ifetch_regulator_daemon_CP_1921_elements(38) & ifetch_regulator_daemon_CP_1921_elements(9) & ifetch_regulator_daemon_CP_1921_elements(15);
      gj_ifetch_regulator_daemon_cp_element_group_11 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_regulator_daemon_CP_1921_elements(11), clk => clk, reset => reset); --
    end block;
    -- CP-element group 12:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	19 
    -- CP-element group 12: 	23 
    -- CP-element group 12: 	41 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	64 
    -- CP-element group 12: 	13 
    -- CP-element group 12: marked-successors 
    -- CP-element group 12: 	21 
    -- CP-element group 12: 	38 
    -- CP-element group 12:  members (4) 
      -- CP-element group 12: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/aggregated_phi_sample_ack
      -- CP-element group 12: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/phi_stmt_6199_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/phi_stmt_6202_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/phi_stmt_6206_sample_completed_
      -- 
    ifetch_regulator_daemon_cp_element_group_12: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 43) := "ifetch_regulator_daemon_cp_element_group_12"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= ifetch_regulator_daemon_CP_1921_elements(19) & ifetch_regulator_daemon_CP_1921_elements(23) & ifetch_regulator_daemon_CP_1921_elements(41);
      gj_ifetch_regulator_daemon_cp_element_group_12 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_regulator_daemon_CP_1921_elements(12), clk => clk, reset => reset); --
    end block;
    -- CP-element group 13:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: 	12 
    -- CP-element group 13: successors 
    -- CP-element group 13: 	10 
    -- CP-element group 13:  members (1) 
      -- CP-element group 13: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/aggregated_phi_sample_ack_d
      -- 
    -- Element group ifetch_regulator_daemon_CP_1921_elements(13) is a control-delay.
    cp_element_13_delay: control_delay_element  generic map(name => " 13_delay", delay_value => 1)  port map(req => ifetch_regulator_daemon_CP_1921_elements(12), ack => ifetch_regulator_daemon_CP_1921_elements(13), clk => clk, reset =>reset);
    -- CP-element group 14:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: 	22 
    -- CP-element group 14: 	39 
    -- CP-element group 14: 	16 
    -- CP-element group 14: successors 
    -- CP-element group 14: 	18 
    -- CP-element group 14: 	42 
    -- CP-element group 14:  members (2) 
      -- CP-element group 14: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/aggregated_phi_update_req
      -- CP-element group 14: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/phi_stmt_6202_update_start__ps
      -- 
    ifetch_regulator_daemon_cp_element_group_14: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 43) := "ifetch_regulator_daemon_cp_element_group_14"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= ifetch_regulator_daemon_CP_1921_elements(22) & ifetch_regulator_daemon_CP_1921_elements(39) & ifetch_regulator_daemon_CP_1921_elements(16);
      gj_ifetch_regulator_daemon_cp_element_group_14 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_regulator_daemon_CP_1921_elements(14), clk => clk, reset => reset); --
    end block;
    -- CP-element group 15:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: 	20 
    -- CP-element group 15: 	24 
    -- CP-element group 15: 	43 
    -- CP-element group 15: successors 
    -- CP-element group 15: 	10 
    -- CP-element group 15: marked-successors 
    -- CP-element group 15: 	11 
    -- CP-element group 15:  members (1) 
      -- CP-element group 15: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/aggregated_phi_update_ack
      -- 
    ifetch_regulator_daemon_cp_element_group_15: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 43) := "ifetch_regulator_daemon_cp_element_group_15"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= ifetch_regulator_daemon_CP_1921_elements(20) & ifetch_regulator_daemon_CP_1921_elements(24) & ifetch_regulator_daemon_CP_1921_elements(43);
      gj_ifetch_regulator_daemon_cp_element_group_15 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_regulator_daemon_CP_1921_elements(15), clk => clk, reset => reset); --
    end block;
    -- CP-element group 16:  join  transition  bypass  pipeline-parent 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: 	9 
    -- CP-element group 16: marked-predecessors 
    -- CP-element group 16: 	58 
    -- CP-element group 16: 	61 
    -- CP-element group 16: successors 
    -- CP-element group 16: 	14 
    -- CP-element group 16:  members (1) 
      -- CP-element group 16: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/phi_stmt_6199_update_start_
      -- 
    ifetch_regulator_daemon_cp_element_group_16: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 43) := "ifetch_regulator_daemon_cp_element_group_16"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= ifetch_regulator_daemon_CP_1921_elements(9) & ifetch_regulator_daemon_CP_1921_elements(58) & ifetch_regulator_daemon_CP_1921_elements(61);
      gj_ifetch_regulator_daemon_cp_element_group_16 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_regulator_daemon_CP_1921_elements(16), clk => clk, reset => reset); --
    end block;
    -- CP-element group 17:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 17: predecessors 
    -- CP-element group 17: 	11 
    -- CP-element group 17: marked-predecessors 
    -- CP-element group 17: 	20 
    -- CP-element group 17: successors 
    -- CP-element group 17: 	19 
    -- CP-element group 17:  members (3) 
      -- CP-element group 17: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/RPIPE_ifetch_issue_to_regulator_pipe_6201_sample_start_
      -- CP-element group 17: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/RPIPE_ifetch_issue_to_regulator_pipe_6201_Sample/$entry
      -- CP-element group 17: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/RPIPE_ifetch_issue_to_regulator_pipe_6201_Sample/rr
      -- 
    rr_1963_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_1963_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_regulator_daemon_CP_1921_elements(17), ack => RPIPE_ifetch_issue_to_regulator_pipe_6201_inst_req_0); -- 
    ifetch_regulator_daemon_cp_element_group_17: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 43) := "ifetch_regulator_daemon_cp_element_group_17"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= ifetch_regulator_daemon_CP_1921_elements(11) & ifetch_regulator_daemon_CP_1921_elements(20);
      gj_ifetch_regulator_daemon_cp_element_group_17 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_regulator_daemon_CP_1921_elements(17), clk => clk, reset => reset); --
    end block;
    -- CP-element group 18:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 18: predecessors 
    -- CP-element group 18: 	19 
    -- CP-element group 18: 	14 
    -- CP-element group 18: successors 
    -- CP-element group 18: 	20 
    -- CP-element group 18:  members (3) 
      -- CP-element group 18: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/RPIPE_ifetch_issue_to_regulator_pipe_6201_update_start_
      -- CP-element group 18: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/RPIPE_ifetch_issue_to_regulator_pipe_6201_Update/$entry
      -- CP-element group 18: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/RPIPE_ifetch_issue_to_regulator_pipe_6201_Update/cr
      -- 
    cr_1968_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_1968_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_regulator_daemon_CP_1921_elements(18), ack => RPIPE_ifetch_issue_to_regulator_pipe_6201_inst_req_1); -- 
    ifetch_regulator_daemon_cp_element_group_18: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 43) := "ifetch_regulator_daemon_cp_element_group_18"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= ifetch_regulator_daemon_CP_1921_elements(19) & ifetch_regulator_daemon_CP_1921_elements(14);
      gj_ifetch_regulator_daemon_cp_element_group_18 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_regulator_daemon_CP_1921_elements(18), clk => clk, reset => reset); --
    end block;
    -- CP-element group 19:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 19: predecessors 
    -- CP-element group 19: 	17 
    -- CP-element group 19: successors 
    -- CP-element group 19: 	18 
    -- CP-element group 19: 	12 
    -- CP-element group 19:  members (3) 
      -- CP-element group 19: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/RPIPE_ifetch_issue_to_regulator_pipe_6201_sample_completed_
      -- CP-element group 19: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/RPIPE_ifetch_issue_to_regulator_pipe_6201_Sample/$exit
      -- CP-element group 19: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/RPIPE_ifetch_issue_to_regulator_pipe_6201_Sample/ra
      -- 
    ra_1964_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 19_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ifetch_issue_to_regulator_pipe_6201_inst_ack_0, ack => ifetch_regulator_daemon_CP_1921_elements(19)); -- 
    -- CP-element group 20:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 20: predecessors 
    -- CP-element group 20: 	18 
    -- CP-element group 20: successors 
    -- CP-element group 20: 	57 
    -- CP-element group 20: 	60 
    -- CP-element group 20: 	15 
    -- CP-element group 20: marked-successors 
    -- CP-element group 20: 	17 
    -- CP-element group 20:  members (4) 
      -- CP-element group 20: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/phi_stmt_6199_update_completed_
      -- CP-element group 20: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/RPIPE_ifetch_issue_to_regulator_pipe_6201_update_completed_
      -- CP-element group 20: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/RPIPE_ifetch_issue_to_regulator_pipe_6201_Update/$exit
      -- CP-element group 20: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/RPIPE_ifetch_issue_to_regulator_pipe_6201_Update/ca
      -- 
    ca_1969_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 20_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ifetch_issue_to_regulator_pipe_6201_inst_ack_1, ack => ifetch_regulator_daemon_CP_1921_elements(20)); -- 
    -- CP-element group 21:  join  transition  bypass  pipeline-parent 
    -- CP-element group 21: predecessors 
    -- CP-element group 21: 	9 
    -- CP-element group 21: marked-predecessors 
    -- CP-element group 21: 	12 
    -- CP-element group 21: successors 
    -- CP-element group 21: 	11 
    -- CP-element group 21:  members (1) 
      -- CP-element group 21: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/phi_stmt_6202_sample_start_
      -- 
    ifetch_regulator_daemon_cp_element_group_21: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 43) := "ifetch_regulator_daemon_cp_element_group_21"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= ifetch_regulator_daemon_CP_1921_elements(9) & ifetch_regulator_daemon_CP_1921_elements(12);
      gj_ifetch_regulator_daemon_cp_element_group_21 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_regulator_daemon_CP_1921_elements(21), clk => clk, reset => reset); --
    end block;
    -- CP-element group 22:  join  transition  bypass  pipeline-parent 
    -- CP-element group 22: predecessors 
    -- CP-element group 22: 	9 
    -- CP-element group 22: marked-predecessors 
    -- CP-element group 22: 	58 
    -- CP-element group 22: 	61 
    -- CP-element group 22: successors 
    -- CP-element group 22: 	14 
    -- CP-element group 22:  members (1) 
      -- CP-element group 22: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/phi_stmt_6202_update_start_
      -- 
    ifetch_regulator_daemon_cp_element_group_22: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 43) := "ifetch_regulator_daemon_cp_element_group_22"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= ifetch_regulator_daemon_CP_1921_elements(9) & ifetch_regulator_daemon_CP_1921_elements(58) & ifetch_regulator_daemon_CP_1921_elements(61);
      gj_ifetch_regulator_daemon_cp_element_group_22 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_regulator_daemon_CP_1921_elements(22), clk => clk, reset => reset); --
    end block;
    -- CP-element group 23:  join  transition  bypass  pipeline-parent 
    -- CP-element group 23: predecessors 
    -- CP-element group 23: successors 
    -- CP-element group 23: 	12 
    -- CP-element group 23:  members (1) 
      -- CP-element group 23: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/phi_stmt_6202_sample_completed__ps
      -- 
    -- Element group ifetch_regulator_daemon_CP_1921_elements(23) is bound as output of CP function.
    -- CP-element group 24:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 24: predecessors 
    -- CP-element group 24: successors 
    -- CP-element group 24: 	57 
    -- CP-element group 24: 	60 
    -- CP-element group 24: 	15 
    -- CP-element group 24:  members (2) 
      -- CP-element group 24: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/phi_stmt_6202_update_completed_
      -- CP-element group 24: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/phi_stmt_6202_update_completed__ps
      -- 
    -- Element group ifetch_regulator_daemon_CP_1921_elements(24) is bound as output of CP function.
    -- CP-element group 25:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 25: predecessors 
    -- CP-element group 25: 	7 
    -- CP-element group 25: successors 
    -- CP-element group 25:  members (1) 
      -- CP-element group 25: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/phi_stmt_6202_loopback_trigger
      -- 
    ifetch_regulator_daemon_CP_1921_elements(25) <= ifetch_regulator_daemon_CP_1921_elements(7);
    -- CP-element group 26:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 26: predecessors 
    -- CP-element group 26: successors 
    -- CP-element group 26:  members (2) 
      -- CP-element group 26: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/phi_stmt_6202_loopback_sample_req
      -- CP-element group 26: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/phi_stmt_6202_loopback_sample_req_ps
      -- 
    phi_stmt_6202_loopback_sample_req_1979_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_6202_loopback_sample_req_1979_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_regulator_daemon_CP_1921_elements(26), ack => phi_stmt_6202_req_1); -- 
    -- Element group ifetch_regulator_daemon_CP_1921_elements(26) is bound as output of CP function.
    -- CP-element group 27:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 27: predecessors 
    -- CP-element group 27: 	8 
    -- CP-element group 27: successors 
    -- CP-element group 27:  members (1) 
      -- CP-element group 27: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/phi_stmt_6202_entry_trigger
      -- 
    ifetch_regulator_daemon_CP_1921_elements(27) <= ifetch_regulator_daemon_CP_1921_elements(8);
    -- CP-element group 28:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 28: predecessors 
    -- CP-element group 28: successors 
    -- CP-element group 28:  members (2) 
      -- CP-element group 28: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/phi_stmt_6202_entry_sample_req
      -- CP-element group 28: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/phi_stmt_6202_entry_sample_req_ps
      -- 
    phi_stmt_6202_entry_sample_req_1982_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_6202_entry_sample_req_1982_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_regulator_daemon_CP_1921_elements(28), ack => phi_stmt_6202_req_0); -- 
    -- Element group ifetch_regulator_daemon_CP_1921_elements(28) is bound as output of CP function.
    -- CP-element group 29:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 29: predecessors 
    -- CP-element group 29: successors 
    -- CP-element group 29:  members (2) 
      -- CP-element group 29: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/phi_stmt_6202_phi_mux_ack
      -- CP-element group 29: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/phi_stmt_6202_phi_mux_ack_ps
      -- 
    phi_stmt_6202_phi_mux_ack_1985_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 29_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_6202_ack_0, ack => ifetch_regulator_daemon_CP_1921_elements(29)); -- 
    -- CP-element group 30:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 30: predecessors 
    -- CP-element group 30: successors 
    -- CP-element group 30:  members (4) 
      -- CP-element group 30: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_NORMAL_ISSUE_6204_sample_start__ps
      -- CP-element group 30: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_NORMAL_ISSUE_6204_sample_completed__ps
      -- CP-element group 30: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_NORMAL_ISSUE_6204_sample_start_
      -- CP-element group 30: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_NORMAL_ISSUE_6204_sample_completed_
      -- 
    -- Element group ifetch_regulator_daemon_CP_1921_elements(30) is bound as output of CP function.
    -- CP-element group 31:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 31: predecessors 
    -- CP-element group 31: successors 
    -- CP-element group 31: 	33 
    -- CP-element group 31:  members (2) 
      -- CP-element group 31: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_NORMAL_ISSUE_6204_update_start__ps
      -- CP-element group 31: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_NORMAL_ISSUE_6204_update_start_
      -- 
    -- Element group ifetch_regulator_daemon_CP_1921_elements(31) is bound as output of CP function.
    -- CP-element group 32:  join  transition  bypass  pipeline-parent 
    -- CP-element group 32: predecessors 
    -- CP-element group 32: 	33 
    -- CP-element group 32: successors 
    -- CP-element group 32:  members (1) 
      -- CP-element group 32: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_NORMAL_ISSUE_6204_update_completed__ps
      -- 
    ifetch_regulator_daemon_CP_1921_elements(32) <= ifetch_regulator_daemon_CP_1921_elements(33);
    -- CP-element group 33:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 33: predecessors 
    -- CP-element group 33: 	31 
    -- CP-element group 33: successors 
    -- CP-element group 33: 	32 
    -- CP-element group 33:  members (1) 
      -- CP-element group 33: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_NORMAL_ISSUE_6204_update_completed_
      -- 
    -- Element group ifetch_regulator_daemon_CP_1921_elements(33) is a control-delay.
    cp_element_33_delay: control_delay_element  generic map(name => " 33_delay", delay_value => 1)  port map(req => ifetch_regulator_daemon_CP_1921_elements(31), ack => ifetch_regulator_daemon_CP_1921_elements(33), clk => clk, reset =>reset);
    -- CP-element group 34:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 34: predecessors 
    -- CP-element group 34: successors 
    -- CP-element group 34: 	36 
    -- CP-element group 34:  members (4) 
      -- CP-element group 34: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_next_regulator_state_6205_sample_start__ps
      -- CP-element group 34: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_next_regulator_state_6205_sample_start_
      -- CP-element group 34: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_next_regulator_state_6205_Sample/$entry
      -- CP-element group 34: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_next_regulator_state_6205_Sample/req
      -- 
    req_2006_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2006_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_regulator_daemon_CP_1921_elements(34), ack => next_regulator_state_6346_6205_buf_req_0); -- 
    -- Element group ifetch_regulator_daemon_CP_1921_elements(34) is bound as output of CP function.
    -- CP-element group 35:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 35: predecessors 
    -- CP-element group 35: successors 
    -- CP-element group 35: 	37 
    -- CP-element group 35:  members (4) 
      -- CP-element group 35: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_next_regulator_state_6205_update_start__ps
      -- CP-element group 35: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_next_regulator_state_6205_update_start_
      -- CP-element group 35: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_next_regulator_state_6205_Update/$entry
      -- CP-element group 35: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_next_regulator_state_6205_Update/req
      -- 
    req_2011_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2011_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_regulator_daemon_CP_1921_elements(35), ack => next_regulator_state_6346_6205_buf_req_1); -- 
    -- Element group ifetch_regulator_daemon_CP_1921_elements(35) is bound as output of CP function.
    -- CP-element group 36:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 36: predecessors 
    -- CP-element group 36: 	34 
    -- CP-element group 36: successors 
    -- CP-element group 36:  members (4) 
      -- CP-element group 36: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_next_regulator_state_6205_sample_completed__ps
      -- CP-element group 36: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_next_regulator_state_6205_sample_completed_
      -- CP-element group 36: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_next_regulator_state_6205_Sample/$exit
      -- CP-element group 36: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_next_regulator_state_6205_Sample/ack
      -- 
    ack_2007_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 36_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_regulator_state_6346_6205_buf_ack_0, ack => ifetch_regulator_daemon_CP_1921_elements(36)); -- 
    -- CP-element group 37:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 37: predecessors 
    -- CP-element group 37: 	35 
    -- CP-element group 37: successors 
    -- CP-element group 37:  members (4) 
      -- CP-element group 37: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_next_regulator_state_6205_update_completed__ps
      -- CP-element group 37: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_next_regulator_state_6205_update_completed_
      -- CP-element group 37: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_next_regulator_state_6205_Update/$exit
      -- CP-element group 37: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_next_regulator_state_6205_Update/ack
      -- 
    ack_2012_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 37_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_regulator_state_6346_6205_buf_ack_1, ack => ifetch_regulator_daemon_CP_1921_elements(37)); -- 
    -- CP-element group 38:  join  transition  bypass  pipeline-parent 
    -- CP-element group 38: predecessors 
    -- CP-element group 38: 	9 
    -- CP-element group 38: marked-predecessors 
    -- CP-element group 38: 	12 
    -- CP-element group 38: successors 
    -- CP-element group 38: 	11 
    -- CP-element group 38:  members (1) 
      -- CP-element group 38: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/phi_stmt_6206_sample_start_
      -- 
    ifetch_regulator_daemon_cp_element_group_38: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 43) := "ifetch_regulator_daemon_cp_element_group_38"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= ifetch_regulator_daemon_CP_1921_elements(9) & ifetch_regulator_daemon_CP_1921_elements(12);
      gj_ifetch_regulator_daemon_cp_element_group_38 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_regulator_daemon_CP_1921_elements(38), clk => clk, reset => reset); --
    end block;
    -- CP-element group 39:  join  transition  bypass  pipeline-parent 
    -- CP-element group 39: predecessors 
    -- CP-element group 39: 	9 
    -- CP-element group 39: marked-predecessors 
    -- CP-element group 39: 	58 
    -- CP-element group 39: 	61 
    -- CP-element group 39: successors 
    -- CP-element group 39: 	14 
    -- CP-element group 39:  members (1) 
      -- CP-element group 39: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/phi_stmt_6206_update_start_
      -- 
    ifetch_regulator_daemon_cp_element_group_39: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 43) := "ifetch_regulator_daemon_cp_element_group_39"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= ifetch_regulator_daemon_CP_1921_elements(9) & ifetch_regulator_daemon_CP_1921_elements(58) & ifetch_regulator_daemon_CP_1921_elements(61);
      gj_ifetch_regulator_daemon_cp_element_group_39 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_regulator_daemon_CP_1921_elements(39), clk => clk, reset => reset); --
    end block;
    -- CP-element group 40:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 40: predecessors 
    -- CP-element group 40: 	11 
    -- CP-element group 40: successors 
    -- CP-element group 40:  members (1) 
      -- CP-element group 40: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/phi_stmt_6206_sample_start__ps
      -- 
    ifetch_regulator_daemon_CP_1921_elements(40) <= ifetch_regulator_daemon_CP_1921_elements(11);
    -- CP-element group 41:  join  transition  bypass  pipeline-parent 
    -- CP-element group 41: predecessors 
    -- CP-element group 41: successors 
    -- CP-element group 41: 	12 
    -- CP-element group 41:  members (1) 
      -- CP-element group 41: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/phi_stmt_6206_sample_completed__ps
      -- 
    -- Element group ifetch_regulator_daemon_CP_1921_elements(41) is bound as output of CP function.
    -- CP-element group 42:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 42: predecessors 
    -- CP-element group 42: 	14 
    -- CP-element group 42: successors 
    -- CP-element group 42:  members (1) 
      -- CP-element group 42: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/phi_stmt_6206_update_start__ps
      -- 
    ifetch_regulator_daemon_CP_1921_elements(42) <= ifetch_regulator_daemon_CP_1921_elements(14);
    -- CP-element group 43:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 43: predecessors 
    -- CP-element group 43: successors 
    -- CP-element group 43: 	57 
    -- CP-element group 43: 	60 
    -- CP-element group 43: 	15 
    -- CP-element group 43:  members (2) 
      -- CP-element group 43: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/phi_stmt_6206_update_completed_
      -- CP-element group 43: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/phi_stmt_6206_update_completed__ps
      -- 
    -- Element group ifetch_regulator_daemon_CP_1921_elements(43) is bound as output of CP function.
    -- CP-element group 44:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 44: predecessors 
    -- CP-element group 44: 	7 
    -- CP-element group 44: successors 
    -- CP-element group 44:  members (1) 
      -- CP-element group 44: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/phi_stmt_6206_loopback_trigger
      -- 
    ifetch_regulator_daemon_CP_1921_elements(44) <= ifetch_regulator_daemon_CP_1921_elements(7);
    -- CP-element group 45:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 45: predecessors 
    -- CP-element group 45: successors 
    -- CP-element group 45:  members (2) 
      -- CP-element group 45: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/phi_stmt_6206_loopback_sample_req
      -- CP-element group 45: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/phi_stmt_6206_loopback_sample_req_ps
      -- 
    phi_stmt_6206_loopback_sample_req_2023_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_6206_loopback_sample_req_2023_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_regulator_daemon_CP_1921_elements(45), ack => phi_stmt_6206_req_1); -- 
    -- Element group ifetch_regulator_daemon_CP_1921_elements(45) is bound as output of CP function.
    -- CP-element group 46:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 46: predecessors 
    -- CP-element group 46: 	8 
    -- CP-element group 46: successors 
    -- CP-element group 46:  members (1) 
      -- CP-element group 46: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/phi_stmt_6206_entry_trigger
      -- 
    ifetch_regulator_daemon_CP_1921_elements(46) <= ifetch_regulator_daemon_CP_1921_elements(8);
    -- CP-element group 47:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 47: predecessors 
    -- CP-element group 47: successors 
    -- CP-element group 47:  members (2) 
      -- CP-element group 47: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/phi_stmt_6206_entry_sample_req
      -- CP-element group 47: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/phi_stmt_6206_entry_sample_req_ps
      -- 
    phi_stmt_6206_entry_sample_req_2026_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_6206_entry_sample_req_2026_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_regulator_daemon_CP_1921_elements(47), ack => phi_stmt_6206_req_0); -- 
    -- Element group ifetch_regulator_daemon_CP_1921_elements(47) is bound as output of CP function.
    -- CP-element group 48:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 48: predecessors 
    -- CP-element group 48: successors 
    -- CP-element group 48:  members (2) 
      -- CP-element group 48: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/phi_stmt_6206_phi_mux_ack
      -- CP-element group 48: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/phi_stmt_6206_phi_mux_ack_ps
      -- 
    phi_stmt_6206_phi_mux_ack_2029_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 48_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_6206_ack_0, ack => ifetch_regulator_daemon_CP_1921_elements(48)); -- 
    -- CP-element group 49:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 49: predecessors 
    -- CP-element group 49: successors 
    -- CP-element group 49:  members (4) 
      -- CP-element group 49: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/type_cast_6209_sample_start__ps
      -- CP-element group 49: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/type_cast_6209_sample_completed__ps
      -- CP-element group 49: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/type_cast_6209_sample_start_
      -- CP-element group 49: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/type_cast_6209_sample_completed_
      -- 
    -- Element group ifetch_regulator_daemon_CP_1921_elements(49) is bound as output of CP function.
    -- CP-element group 50:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 50: predecessors 
    -- CP-element group 50: successors 
    -- CP-element group 50: 	52 
    -- CP-element group 50:  members (2) 
      -- CP-element group 50: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/type_cast_6209_update_start__ps
      -- CP-element group 50: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/type_cast_6209_update_start_
      -- 
    -- Element group ifetch_regulator_daemon_CP_1921_elements(50) is bound as output of CP function.
    -- CP-element group 51:  join  transition  bypass  pipeline-parent 
    -- CP-element group 51: predecessors 
    -- CP-element group 51: 	52 
    -- CP-element group 51: successors 
    -- CP-element group 51:  members (1) 
      -- CP-element group 51: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/type_cast_6209_update_completed__ps
      -- 
    ifetch_regulator_daemon_CP_1921_elements(51) <= ifetch_regulator_daemon_CP_1921_elements(52);
    -- CP-element group 52:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 52: predecessors 
    -- CP-element group 52: 	50 
    -- CP-element group 52: successors 
    -- CP-element group 52: 	51 
    -- CP-element group 52:  members (1) 
      -- CP-element group 52: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/type_cast_6209_update_completed_
      -- 
    -- Element group ifetch_regulator_daemon_CP_1921_elements(52) is a control-delay.
    cp_element_52_delay: control_delay_element  generic map(name => " 52_delay", delay_value => 1)  port map(req => ifetch_regulator_daemon_CP_1921_elements(50), ack => ifetch_regulator_daemon_CP_1921_elements(52), clk => clk, reset =>reset);
    -- CP-element group 53:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 53: predecessors 
    -- CP-element group 53: successors 
    -- CP-element group 53: 	55 
    -- CP-element group 53:  members (4) 
      -- CP-element group 53: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_next_ras_counter_6210_sample_start__ps
      -- CP-element group 53: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_next_ras_counter_6210_sample_start_
      -- CP-element group 53: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_next_ras_counter_6210_Sample/$entry
      -- CP-element group 53: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_next_ras_counter_6210_Sample/req
      -- 
    req_2050_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2050_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_regulator_daemon_CP_1921_elements(53), ack => next_ras_counter_6383_6210_buf_req_0); -- 
    -- Element group ifetch_regulator_daemon_CP_1921_elements(53) is bound as output of CP function.
    -- CP-element group 54:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 54: predecessors 
    -- CP-element group 54: successors 
    -- CP-element group 54: 	56 
    -- CP-element group 54:  members (4) 
      -- CP-element group 54: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_next_ras_counter_6210_update_start__ps
      -- CP-element group 54: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_next_ras_counter_6210_update_start_
      -- CP-element group 54: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_next_ras_counter_6210_Update/$entry
      -- CP-element group 54: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_next_ras_counter_6210_Update/req
      -- 
    req_2055_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2055_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_regulator_daemon_CP_1921_elements(54), ack => next_ras_counter_6383_6210_buf_req_1); -- 
    -- Element group ifetch_regulator_daemon_CP_1921_elements(54) is bound as output of CP function.
    -- CP-element group 55:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 55: predecessors 
    -- CP-element group 55: 	53 
    -- CP-element group 55: successors 
    -- CP-element group 55:  members (4) 
      -- CP-element group 55: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_next_ras_counter_6210_sample_completed__ps
      -- CP-element group 55: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_next_ras_counter_6210_sample_completed_
      -- CP-element group 55: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_next_ras_counter_6210_Sample/$exit
      -- CP-element group 55: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_next_ras_counter_6210_Sample/ack
      -- 
    ack_2051_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 55_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_ras_counter_6383_6210_buf_ack_0, ack => ifetch_regulator_daemon_CP_1921_elements(55)); -- 
    -- CP-element group 56:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 56: predecessors 
    -- CP-element group 56: 	54 
    -- CP-element group 56: successors 
    -- CP-element group 56:  members (4) 
      -- CP-element group 56: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_next_ras_counter_6210_update_completed__ps
      -- CP-element group 56: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_next_ras_counter_6210_update_completed_
      -- CP-element group 56: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_next_ras_counter_6210_Update/$exit
      -- CP-element group 56: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/R_next_ras_counter_6210_Update/ack
      -- 
    ack_2056_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 56_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_ras_counter_6383_6210_buf_ack_1, ack => ifetch_regulator_daemon_CP_1921_elements(56)); -- 
    -- CP-element group 57:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 57: predecessors 
    -- CP-element group 57: 	20 
    -- CP-element group 57: 	24 
    -- CP-element group 57: 	43 
    -- CP-element group 57: marked-predecessors 
    -- CP-element group 57: 	59 
    -- CP-element group 57: successors 
    -- CP-element group 57: 	58 
    -- CP-element group 57:  members (3) 
      -- CP-element group 57: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/WPIPE_noblock_ifetch_substream_update_6410_sample_start_
      -- CP-element group 57: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/WPIPE_noblock_ifetch_substream_update_6410_Sample/$entry
      -- CP-element group 57: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/WPIPE_noblock_ifetch_substream_update_6410_Sample/req
      -- 
    req_2065_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2065_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_regulator_daemon_CP_1921_elements(57), ack => WPIPE_noblock_ifetch_substream_update_6410_inst_req_0); -- 
    ifetch_regulator_daemon_cp_element_group_57: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 0,2 => 0,3 => 1);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 43) := "ifetch_regulator_daemon_cp_element_group_57"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= ifetch_regulator_daemon_CP_1921_elements(20) & ifetch_regulator_daemon_CP_1921_elements(24) & ifetch_regulator_daemon_CP_1921_elements(43) & ifetch_regulator_daemon_CP_1921_elements(59);
      gj_ifetch_regulator_daemon_cp_element_group_57 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_regulator_daemon_CP_1921_elements(57), clk => clk, reset => reset); --
    end block;
    -- CP-element group 58:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 58: predecessors 
    -- CP-element group 58: 	57 
    -- CP-element group 58: successors 
    -- CP-element group 58: 	59 
    -- CP-element group 58: marked-successors 
    -- CP-element group 58: 	22 
    -- CP-element group 58: 	39 
    -- CP-element group 58: 	16 
    -- CP-element group 58:  members (6) 
      -- CP-element group 58: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/WPIPE_noblock_ifetch_substream_update_6410_sample_completed_
      -- CP-element group 58: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/WPIPE_noblock_ifetch_substream_update_6410_update_start_
      -- CP-element group 58: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/WPIPE_noblock_ifetch_substream_update_6410_Sample/$exit
      -- CP-element group 58: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/WPIPE_noblock_ifetch_substream_update_6410_Sample/ack
      -- CP-element group 58: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/WPIPE_noblock_ifetch_substream_update_6410_Update/$entry
      -- CP-element group 58: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/WPIPE_noblock_ifetch_substream_update_6410_Update/req
      -- 
    ack_2066_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 58_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_ifetch_substream_update_6410_inst_ack_0, ack => ifetch_regulator_daemon_CP_1921_elements(58)); -- 
    req_2070_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2070_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_regulator_daemon_CP_1921_elements(58), ack => WPIPE_noblock_ifetch_substream_update_6410_inst_req_1); -- 
    -- CP-element group 59:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 59: predecessors 
    -- CP-element group 59: 	58 
    -- CP-element group 59: successors 
    -- CP-element group 59: 	64 
    -- CP-element group 59: marked-successors 
    -- CP-element group 59: 	57 
    -- CP-element group 59:  members (3) 
      -- CP-element group 59: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/WPIPE_noblock_ifetch_substream_update_6410_update_completed_
      -- CP-element group 59: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/WPIPE_noblock_ifetch_substream_update_6410_Update/$exit
      -- CP-element group 59: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/WPIPE_noblock_ifetch_substream_update_6410_Update/ack
      -- 
    ack_2071_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 59_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_ifetch_substream_update_6410_inst_ack_1, ack => ifetch_regulator_daemon_CP_1921_elements(59)); -- 
    -- CP-element group 60:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 60: predecessors 
    -- CP-element group 60: 	20 
    -- CP-element group 60: 	24 
    -- CP-element group 60: 	43 
    -- CP-element group 60: marked-predecessors 
    -- CP-element group 60: 	62 
    -- CP-element group 60: successors 
    -- CP-element group 60: 	61 
    -- CP-element group 60:  members (3) 
      -- CP-element group 60: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/WPIPE_teu_ifetch_to_idecode_extended_6438_sample_start_
      -- CP-element group 60: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/WPIPE_teu_ifetch_to_idecode_extended_6438_Sample/$entry
      -- CP-element group 60: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/WPIPE_teu_ifetch_to_idecode_extended_6438_Sample/req
      -- 
    req_2079_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2079_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_regulator_daemon_CP_1921_elements(60), ack => WPIPE_teu_ifetch_to_idecode_extended_6438_inst_req_0); -- 
    ifetch_regulator_daemon_cp_element_group_60: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 0,2 => 0,3 => 1);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 43) := "ifetch_regulator_daemon_cp_element_group_60"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= ifetch_regulator_daemon_CP_1921_elements(20) & ifetch_regulator_daemon_CP_1921_elements(24) & ifetch_regulator_daemon_CP_1921_elements(43) & ifetch_regulator_daemon_CP_1921_elements(62);
      gj_ifetch_regulator_daemon_cp_element_group_60 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_regulator_daemon_CP_1921_elements(60), clk => clk, reset => reset); --
    end block;
    -- CP-element group 61:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 61: predecessors 
    -- CP-element group 61: 	60 
    -- CP-element group 61: successors 
    -- CP-element group 61: 	62 
    -- CP-element group 61: marked-successors 
    -- CP-element group 61: 	22 
    -- CP-element group 61: 	39 
    -- CP-element group 61: 	16 
    -- CP-element group 61:  members (6) 
      -- CP-element group 61: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/WPIPE_teu_ifetch_to_idecode_extended_6438_sample_completed_
      -- CP-element group 61: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/WPIPE_teu_ifetch_to_idecode_extended_6438_update_start_
      -- CP-element group 61: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/WPIPE_teu_ifetch_to_idecode_extended_6438_Sample/$exit
      -- CP-element group 61: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/WPIPE_teu_ifetch_to_idecode_extended_6438_Sample/ack
      -- CP-element group 61: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/WPIPE_teu_ifetch_to_idecode_extended_6438_Update/$entry
      -- CP-element group 61: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/WPIPE_teu_ifetch_to_idecode_extended_6438_Update/req
      -- 
    ack_2080_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 61_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_ifetch_to_idecode_extended_6438_inst_ack_0, ack => ifetch_regulator_daemon_CP_1921_elements(61)); -- 
    req_2084_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2084_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ifetch_regulator_daemon_CP_1921_elements(61), ack => WPIPE_teu_ifetch_to_idecode_extended_6438_inst_req_1); -- 
    -- CP-element group 62:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 62: predecessors 
    -- CP-element group 62: 	61 
    -- CP-element group 62: successors 
    -- CP-element group 62: 	64 
    -- CP-element group 62: marked-successors 
    -- CP-element group 62: 	60 
    -- CP-element group 62:  members (3) 
      -- CP-element group 62: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/WPIPE_teu_ifetch_to_idecode_extended_6438_update_completed_
      -- CP-element group 62: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/WPIPE_teu_ifetch_to_idecode_extended_6438_Update/$exit
      -- CP-element group 62: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/WPIPE_teu_ifetch_to_idecode_extended_6438_Update/ack
      -- 
    ack_2085_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 62_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_ifetch_to_idecode_extended_6438_inst_ack_1, ack => ifetch_regulator_daemon_CP_1921_elements(62)); -- 
    -- CP-element group 63:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 63: predecessors 
    -- CP-element group 63: 	9 
    -- CP-element group 63: successors 
    -- CP-element group 63: 	10 
    -- CP-element group 63:  members (1) 
      -- CP-element group 63: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/loop_body_delay_to_condition_start
      -- 
    -- Element group ifetch_regulator_daemon_CP_1921_elements(63) is a control-delay.
    cp_element_63_delay: control_delay_element  generic map(name => " 63_delay", delay_value => 1)  port map(req => ifetch_regulator_daemon_CP_1921_elements(9), ack => ifetch_regulator_daemon_CP_1921_elements(63), clk => clk, reset =>reset);
    -- CP-element group 64:  join  transition  bypass  pipeline-parent 
    -- CP-element group 64: predecessors 
    -- CP-element group 64: 	59 
    -- CP-element group 64: 	62 
    -- CP-element group 64: 	12 
    -- CP-element group 64: successors 
    -- CP-element group 64: 	6 
    -- CP-element group 64:  members (1) 
      -- CP-element group 64: 	 branch_block_stmt_6196/do_while_stmt_6197/do_while_stmt_6197_loop_body/$exit
      -- 
    ifetch_regulator_daemon_cp_element_group_64: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 7,1 => 7,2 => 7);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 43) := "ifetch_regulator_daemon_cp_element_group_64"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= ifetch_regulator_daemon_CP_1921_elements(59) & ifetch_regulator_daemon_CP_1921_elements(62) & ifetch_regulator_daemon_CP_1921_elements(12);
      gj_ifetch_regulator_daemon_cp_element_group_64 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ifetch_regulator_daemon_CP_1921_elements(64), clk => clk, reset => reset); --
    end block;
    -- CP-element group 65:  transition  input  bypass  pipeline-parent 
    -- CP-element group 65: predecessors 
    -- CP-element group 65: 	5 
    -- CP-element group 65: successors 
    -- CP-element group 65:  members (2) 
      -- CP-element group 65: 	 branch_block_stmt_6196/do_while_stmt_6197/loop_exit/$exit
      -- CP-element group 65: 	 branch_block_stmt_6196/do_while_stmt_6197/loop_exit/ack
      -- 
    ack_2090_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 65_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_6197_branch_ack_0, ack => ifetch_regulator_daemon_CP_1921_elements(65)); -- 
    -- CP-element group 66:  transition  input  bypass  pipeline-parent 
    -- CP-element group 66: predecessors 
    -- CP-element group 66: 	5 
    -- CP-element group 66: successors 
    -- CP-element group 66:  members (2) 
      -- CP-element group 66: 	 branch_block_stmt_6196/do_while_stmt_6197/loop_taken/$exit
      -- CP-element group 66: 	 branch_block_stmt_6196/do_while_stmt_6197/loop_taken/ack
      -- 
    ack_2094_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 66_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_6197_branch_ack_1, ack => ifetch_regulator_daemon_CP_1921_elements(66)); -- 
    -- CP-element group 67:  transition  bypass  pipeline-parent 
    -- CP-element group 67: predecessors 
    -- CP-element group 67: 	3 
    -- CP-element group 67: successors 
    -- CP-element group 67: 	1 
    -- CP-element group 67:  members (1) 
      -- CP-element group 67: 	 branch_block_stmt_6196/do_while_stmt_6197/$exit
      -- 
    ifetch_regulator_daemon_CP_1921_elements(67) <= ifetch_regulator_daemon_CP_1921_elements(3);
    ifetch_regulator_daemon_do_while_stmt_6197_terminator_2095: loop_terminator -- 
      generic map (name => " ifetch_regulator_daemon_do_while_stmt_6197_terminator_2095", max_iterations_in_flight =>7) 
      port map(loop_body_exit => ifetch_regulator_daemon_CP_1921_elements(6),loop_continue => ifetch_regulator_daemon_CP_1921_elements(66),loop_terminate => ifetch_regulator_daemon_CP_1921_elements(65),loop_back => ifetch_regulator_daemon_CP_1921_elements(4),loop_exit => ifetch_regulator_daemon_CP_1921_elements(3),clk => clk, reset => reset); -- 
    phi_stmt_6202_phi_seq_2013_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= ifetch_regulator_daemon_CP_1921_elements(27);
      ifetch_regulator_daemon_CP_1921_elements(30)<= src_sample_reqs(0);
      src_sample_acks(0)  <= ifetch_regulator_daemon_CP_1921_elements(30);
      ifetch_regulator_daemon_CP_1921_elements(31)<= src_update_reqs(0);
      src_update_acks(0)  <= ifetch_regulator_daemon_CP_1921_elements(32);
      ifetch_regulator_daemon_CP_1921_elements(28) <= phi_mux_reqs(0);
      triggers(1)  <= ifetch_regulator_daemon_CP_1921_elements(25);
      ifetch_regulator_daemon_CP_1921_elements(34)<= src_sample_reqs(1);
      src_sample_acks(1)  <= ifetch_regulator_daemon_CP_1921_elements(36);
      ifetch_regulator_daemon_CP_1921_elements(35)<= src_update_reqs(1);
      src_update_acks(1)  <= ifetch_regulator_daemon_CP_1921_elements(37);
      ifetch_regulator_daemon_CP_1921_elements(26) <= phi_mux_reqs(1);
      phi_stmt_6202_phi_seq_2013 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_6202_phi_seq_2013") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => ifetch_regulator_daemon_CP_1921_elements(11), 
          phi_sample_ack => ifetch_regulator_daemon_CP_1921_elements(23), 
          phi_update_req => ifetch_regulator_daemon_CP_1921_elements(14), 
          phi_update_ack => ifetch_regulator_daemon_CP_1921_elements(24), 
          phi_mux_ack => ifetch_regulator_daemon_CP_1921_elements(29), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_6206_phi_seq_2057_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= ifetch_regulator_daemon_CP_1921_elements(46);
      ifetch_regulator_daemon_CP_1921_elements(49)<= src_sample_reqs(0);
      src_sample_acks(0)  <= ifetch_regulator_daemon_CP_1921_elements(49);
      ifetch_regulator_daemon_CP_1921_elements(50)<= src_update_reqs(0);
      src_update_acks(0)  <= ifetch_regulator_daemon_CP_1921_elements(51);
      ifetch_regulator_daemon_CP_1921_elements(47) <= phi_mux_reqs(0);
      triggers(1)  <= ifetch_regulator_daemon_CP_1921_elements(44);
      ifetch_regulator_daemon_CP_1921_elements(53)<= src_sample_reqs(1);
      src_sample_acks(1)  <= ifetch_regulator_daemon_CP_1921_elements(55);
      ifetch_regulator_daemon_CP_1921_elements(54)<= src_update_reqs(1);
      src_update_acks(1)  <= ifetch_regulator_daemon_CP_1921_elements(56);
      ifetch_regulator_daemon_CP_1921_elements(45) <= phi_mux_reqs(1);
      phi_stmt_6206_phi_seq_2057 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_6206_phi_seq_2057") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => ifetch_regulator_daemon_CP_1921_elements(40), 
          phi_sample_ack => ifetch_regulator_daemon_CP_1921_elements(41), 
          phi_update_req => ifetch_regulator_daemon_CP_1921_elements(42), 
          phi_update_ack => ifetch_regulator_daemon_CP_1921_elements(43), 
          phi_mux_ack => ifetch_regulator_daemon_CP_1921_elements(48), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    entry_tmerge_1946_block : block -- 
      signal preds : BooleanArray(0 to 1);
      begin -- 
        preds(0)  <= ifetch_regulator_daemon_CP_1921_elements(7);
        preds(1)  <= ifetch_regulator_daemon_CP_1921_elements(8);
        entry_tmerge_1946 : transition_merge -- 
          generic map(name => " entry_tmerge_1946")
          port map (preds => preds, symbol_out => ifetch_regulator_daemon_CP_1921_elements(9));
          -- 
    end block;
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal ADD_u2_u2_6377_wire : std_logic_vector(1 downto 0);
    signal AND_u1_u1_6368_wire : std_logic_vector(0 downto 0);
    signal CONCAT_u1_u2_6431_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u33_6402_wire : std_logic_vector(32 downto 0);
    signal CONCAT_u1_u5_6393_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u32_u222_6434_wire : std_logic_vector(221 downto 0);
    signal CONCAT_u32_u64_6405_wire : std_logic_vector(63 downto 0);
    signal CONCAT_u33_u97_6406_wire : std_logic_vector(96 downto 0);
    signal CONCAT_u5_u7_6395_wire : std_logic_vector(6 downto 0);
    signal CONCAT_u6_u7_6398_wire : std_logic_vector(6 downto 0);
    signal CONCAT_u7_u14_6399_wire : std_logic_vector(13 downto 0);
    signal EQ_u1_u1_6326_wire : std_logic_vector(0 downto 0);
    signal EQ_u1_u1_6335_wire : std_logic_vector(0 downto 0);
    signal EQ_u1_u1_6353_wire : std_logic_vector(0 downto 0);
    signal MUX_6330_wire : std_logic_vector(0 downto 0);
    signal MUX_6332_wire : std_logic_vector(0 downto 0);
    signal MUX_6340_wire : std_logic_vector(0 downto 0);
    signal MUX_6342_wire : std_logic_vector(0 downto 0);
    signal MUX_6344_wire : std_logic_vector(0 downto 0);
    signal MUX_6379_wire : std_logic_vector(1 downto 0);
    signal MUX_6381_wire : std_logic_vector(1 downto 0);
    signal NOT_u1_u1_6282_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_6307_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_6319_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_6367_wire : std_logic_vector(0 downto 0);
    signal RPIPE_ifetch_issue_to_regulator_pipe_6201_wire : std_logic_vector(259 downto 0);
    signal R_BLOCK_FOR_NEW_SUBSTREAM_6328_wire_constant : std_logic_vector(0 downto 0);
    signal R_BLOCK_FOR_NEW_SUBSTREAM_6334_wire_constant : std_logic_vector(0 downto 0);
    signal R_BLOCK_FOR_NEW_SUBSTREAM_6338_wire_constant : std_logic_vector(0 downto 0);
    signal R_BLOCK_FOR_NEW_SUBSTREAM_6341_wire_constant : std_logic_vector(0 downto 0);
    signal R_NORMAL_ISSUE_6204_wire_constant : std_logic_vector(0 downto 0);
    signal R_NORMAL_ISSUE_6325_wire_constant : std_logic_vector(0 downto 0);
    signal R_NORMAL_ISSUE_6329_wire_constant : std_logic_vector(0 downto 0);
    signal R_NORMAL_ISSUE_6339_wire_constant : std_logic_vector(0 downto 0);
    signal R_NORMAL_ISSUE_6352_wire_constant : std_logic_vector(0 downto 0);
    signal ULT_u2_u1_6276_wire : std_logic_vector(0 downto 0);
    signal ULT_u2_u1_6374_wire : std_logic_vector(0 downto 0);
    signal actually_issue_instruction_6356 : std_logic_vector(0 downto 0);
    signal branch_target_offset_6243 : std_logic_vector(31 downto 0);
    signal continue_issuing_6322 : std_logic_vector(0 downto 0);
    signal corrected_issue_nnpc_mismatch_6284 : std_logic_vector(0 downto 0);
    signal cti_mispredict_6310 : std_logic_vector(0 downto 0);
    signal final_to_idecode_6436 : std_logic_vector(223 downto 0);
    signal is_call_6227 : std_logic_vector(0 downto 0);
    signal is_ret_or_retl_6231 : std_logic_vector(0 downto 0);
    signal issue_nnpc_6259 : std_logic_vector(31 downto 0);
    signal issue_nnpc_mismatch_6235 : std_logic_vector(0 downto 0);
    signal issue_npc_6255 : std_logic_vector(31 downto 0);
    signal issue_pc_6251 : std_logic_vector(31 downto 0);
    signal issue_slot_id_6271 : std_logic_vector(5 downto 0);
    signal issue_stream_id_6267 : std_logic_vector(1 downto 0);
    signal issue_thread_id_6263 : std_logic_vector(3 downto 0);
    signal konst_6275_wire_constant : std_logic_vector(1 downto 0);
    signal konst_6331_wire_constant : std_logic_vector(0 downto 0);
    signal konst_6343_wire_constant : std_logic_vector(0 downto 0);
    signal konst_6373_wire_constant : std_logic_vector(1 downto 0);
    signal konst_6376_wire_constant : std_logic_vector(1 downto 0);
    signal konst_6378_wire_constant : std_logic_vector(1 downto 0);
    signal konst_6442_wire_constant : std_logic_vector(0 downto 0);
    signal next_ras_counter_6383 : std_logic_vector(1 downto 0);
    signal next_ras_counter_6383_6210_buffered : std_logic_vector(1 downto 0);
    signal next_regulator_state_6346 : std_logic_vector(0 downto 0);
    signal next_regulator_state_6346_6205_buffered : std_logic_vector(0 downto 0);
    signal ras_counter_6206 : std_logic_vector(1 downto 0);
    signal ras_mispredict_6304 : std_logic_vector(0 downto 0);
    signal ras_nnpc_6239 : std_logic_vector(31 downto 0);
    signal ras_nnpc_or_branch_offset_6362 : std_logic_vector(31 downto 0);
    signal ras_not_applicable_6278 : std_logic_vector(0 downto 0);
    signal regulator_command_6199 : std_logic_vector(259 downto 0);
    signal regulator_state_6202 : std_logic_vector(0 downto 0);
    signal send_substream_correction_6388 : std_logic_vector(0 downto 0);
    signal stream_head_6219 : std_logic_vector(0 downto 0);
    signal substream_correction_6408 : std_logic_vector(110 downto 0);
    signal substream_head_6223 : std_logic_vector(0 downto 0);
    signal thread_head_6215 : std_logic_vector(0 downto 0);
    signal to_idecode_6247 : std_logic_vector(189 downto 0);
    signal type_cast_6209_wire_constant : std_logic_vector(1 downto 0);
    signal type_cast_6370_wire_constant : std_logic_vector(1 downto 0);
    signal type_cast_6391_wire_constant : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    R_BLOCK_FOR_NEW_SUBSTREAM_6328_wire_constant <= "1";
    R_BLOCK_FOR_NEW_SUBSTREAM_6334_wire_constant <= "1";
    R_BLOCK_FOR_NEW_SUBSTREAM_6338_wire_constant <= "1";
    R_BLOCK_FOR_NEW_SUBSTREAM_6341_wire_constant <= "1";
    R_NORMAL_ISSUE_6204_wire_constant <= "0";
    R_NORMAL_ISSUE_6325_wire_constant <= "0";
    R_NORMAL_ISSUE_6329_wire_constant <= "0";
    R_NORMAL_ISSUE_6339_wire_constant <= "0";
    R_NORMAL_ISSUE_6352_wire_constant <= "0";
    konst_6275_wire_constant <= "11";
    konst_6331_wire_constant <= "0";
    konst_6343_wire_constant <= "0";
    konst_6373_wire_constant <= "11";
    konst_6376_wire_constant <= "01";
    konst_6378_wire_constant <= "11";
    konst_6442_wire_constant <= "1";
    type_cast_6209_wire_constant <= "00";
    type_cast_6370_wire_constant <= "01";
    type_cast_6391_wire_constant <= "1";
    phi_stmt_6202: Block -- phi operator 
      signal idata: std_logic_vector(1 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= R_NORMAL_ISSUE_6204_wire_constant & next_regulator_state_6346_6205_buffered;
      req <= phi_stmt_6202_req_0 & phi_stmt_6202_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_6202",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 1) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_6202_ack_0,
          idata => idata,
          odata => regulator_state_6202,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_6202
    phi_stmt_6206: Block -- phi operator 
      signal idata: std_logic_vector(3 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= type_cast_6209_wire_constant & next_ras_counter_6383_6210_buffered;
      req <= phi_stmt_6206_req_0 & phi_stmt_6206_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_6206",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 2) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_6206_ack_0,
          idata => idata,
          odata => ras_counter_6206,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_6206
    -- flow-through select operator MUX_6330_inst
    MUX_6330_wire <= R_BLOCK_FOR_NEW_SUBSTREAM_6328_wire_constant when (corrected_issue_nnpc_mismatch_6284(0) /=  '0') else R_NORMAL_ISSUE_6329_wire_constant;
    -- flow-through select operator MUX_6332_inst
    MUX_6332_wire <= MUX_6330_wire when (EQ_u1_u1_6326_wire(0) /=  '0') else konst_6331_wire_constant;
    -- flow-through select operator MUX_6340_inst
    MUX_6340_wire <= R_BLOCK_FOR_NEW_SUBSTREAM_6338_wire_constant when (corrected_issue_nnpc_mismatch_6284(0) /=  '0') else R_NORMAL_ISSUE_6339_wire_constant;
    -- flow-through select operator MUX_6342_inst
    MUX_6342_wire <= MUX_6340_wire when (continue_issuing_6322(0) /=  '0') else R_BLOCK_FOR_NEW_SUBSTREAM_6341_wire_constant;
    -- flow-through select operator MUX_6344_inst
    MUX_6344_wire <= MUX_6342_wire when (EQ_u1_u1_6335_wire(0) /=  '0') else konst_6343_wire_constant;
    -- flow-through select operator MUX_6361_inst
    ras_nnpc_or_branch_offset_6362 <= ras_nnpc_6239 when (is_ret_or_retl_6231(0) /=  '0') else branch_target_offset_6243;
    -- flow-through select operator MUX_6379_inst
    MUX_6379_wire <= ADD_u2_u2_6377_wire when (ULT_u2_u1_6374_wire(0) /=  '0') else konst_6378_wire_constant;
    -- flow-through select operator MUX_6381_inst
    MUX_6381_wire <= MUX_6379_wire when (actually_issue_instruction_6356(0) /=  '0') else ras_counter_6206;
    -- flow-through select operator MUX_6382_inst
    next_ras_counter_6383 <= type_cast_6370_wire_constant when (AND_u1_u1_6368_wire(0) /=  '0') else MUX_6381_wire;
    -- flow-through slice operator slice_6214_inst
    thread_head_6215 <= regulator_command_6199(259 downto 259);
    -- flow-through slice operator slice_6218_inst
    stream_head_6219 <= regulator_command_6199(258 downto 258);
    -- flow-through slice operator slice_6222_inst
    substream_head_6223 <= regulator_command_6199(257 downto 257);
    -- flow-through slice operator slice_6226_inst
    is_call_6227 <= regulator_command_6199(256 downto 256);
    -- flow-through slice operator slice_6230_inst
    is_ret_or_retl_6231 <= regulator_command_6199(255 downto 255);
    -- flow-through slice operator slice_6234_inst
    issue_nnpc_mismatch_6235 <= regulator_command_6199(254 downto 254);
    -- flow-through slice operator slice_6238_inst
    ras_nnpc_6239 <= regulator_command_6199(253 downto 222);
    -- flow-through slice operator slice_6242_inst
    branch_target_offset_6243 <= regulator_command_6199(221 downto 190);
    -- flow-through slice operator slice_6246_inst
    to_idecode_6247 <= regulator_command_6199(189 downto 0);
    -- flow-through slice operator slice_6250_inst
    issue_pc_6251 <= to_idecode_6247(95 downto 64);
    -- flow-through slice operator slice_6254_inst
    issue_npc_6255 <= to_idecode_6247(63 downto 32);
    -- flow-through slice operator slice_6258_inst
    issue_nnpc_6259 <= to_idecode_6247(127 downto 96);
    -- flow-through slice operator slice_6262_inst
    issue_thread_id_6263 <= to_idecode_6247(189 downto 186);
    -- flow-through slice operator slice_6266_inst
    issue_stream_id_6267 <= to_idecode_6247(185 downto 184);
    -- flow-through slice operator slice_6270_inst
    issue_slot_id_6271 <= to_idecode_6247(183 downto 178);
    next_ras_counter_6383_6210_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= next_ras_counter_6383_6210_buf_req_0;
      next_ras_counter_6383_6210_buf_ack_0<= wack(0);
      rreq(0) <= next_ras_counter_6383_6210_buf_req_1;
      next_ras_counter_6383_6210_buf_ack_1<= rack(0);
      next_ras_counter_6383_6210_buf : InterlockBuffer generic map ( -- 
        name => "next_ras_counter_6383_6210_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 2,
        out_data_width => 2,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => next_ras_counter_6383,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => next_ras_counter_6383_6210_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    next_regulator_state_6346_6205_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= next_regulator_state_6346_6205_buf_req_0;
      next_regulator_state_6346_6205_buf_ack_0<= wack(0);
      rreq(0) <= next_regulator_state_6346_6205_buf_req_1;
      next_regulator_state_6346_6205_buf_ack_1<= rack(0);
      next_regulator_state_6346_6205_buf : InterlockBuffer generic map ( -- 
        name => "next_regulator_state_6346_6205_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 1,
        out_data_width => 1,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => next_regulator_state_6346,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => next_regulator_state_6346_6205_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    -- interlock ssrc_phi_stmt_6199
    process(RPIPE_ifetch_issue_to_regulator_pipe_6201_wire) -- 
      variable tmp_var : std_logic_vector(259 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 259 downto 0) := RPIPE_ifetch_issue_to_regulator_pipe_6201_wire(259 downto 0);
      regulator_command_6199 <= tmp_var; -- 
    end process;
    do_while_stmt_6197_branch: Block -- 
      -- branch-block
      signal condition_sig : std_logic_vector(0 downto 0);
      begin 
      condition_sig <= konst_6442_wire_constant;
      branch_instance: BranchBase -- 
        generic map( name => "do_while_stmt_6197_branch", condition_width => 1,  bypass_flag => true)
        port map( -- 
          condition => condition_sig,
          req => do_while_stmt_6197_branch_req_0,
          ack0 => do_while_stmt_6197_branch_ack_0,
          ack1 => do_while_stmt_6197_branch_ack_1,
          clk => clk,
          reset => reset); -- 
      --
    end Block; -- branch-block
    -- flow through binary operator ADD_u2_u2_6377_inst
    ADD_u2_u2_6377_wire <= std_logic_vector(unsigned(ras_counter_6206) + unsigned(konst_6376_wire_constant));
    -- flow through binary operator AND_u1_u1_6277_inst
    ras_not_applicable_6278 <= (is_ret_or_retl_6231 and ULT_u2_u1_6276_wire);
    -- flow through binary operator AND_u1_u1_6283_inst
    corrected_issue_nnpc_mismatch_6284 <= (issue_nnpc_mismatch_6235 and NOT_u1_u1_6282_wire);
    -- flow through binary operator AND_u1_u1_6303_inst
    ras_mispredict_6304 <= (is_ret_or_retl_6231 and corrected_issue_nnpc_mismatch_6284);
    -- flow through binary operator AND_u1_u1_6309_inst
    cti_mispredict_6310 <= (NOT_u1_u1_6307_wire and corrected_issue_nnpc_mismatch_6284);
    -- flow through binary operator AND_u1_u1_6368_inst
    AND_u1_u1_6368_wire <= (actually_issue_instruction_6356 and OR_u1_u1_6367_wire);
    -- flow through binary operator AND_u1_u1_6387_inst
    send_substream_correction_6388 <= (actually_issue_instruction_6356 and corrected_issue_nnpc_mismatch_6284);
    -- flow through binary operator CONCAT_u14_u111_6407_inst
    process(CONCAT_u7_u14_6399_wire, CONCAT_u33_u97_6406_wire) -- 
      variable tmp_var : std_logic_vector(110 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u7_u14_6399_wire, CONCAT_u33_u97_6406_wire, tmp_var);
      substream_correction_6408 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_6431_inst
    process(ras_mispredict_6304, cti_mispredict_6310) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(ras_mispredict_6304, cti_mispredict_6310, tmp_var);
      CONCAT_u1_u2_6431_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u33_6402_inst
    process(cti_mispredict_6310, ras_nnpc_or_branch_offset_6362) -- 
      variable tmp_var : std_logic_vector(32 downto 0); -- 
    begin -- 
      ApConcat_proc(cti_mispredict_6310, ras_nnpc_or_branch_offset_6362, tmp_var);
      CONCAT_u1_u33_6402_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u5_6393_inst
    process(type_cast_6391_wire_constant, issue_thread_id_6263) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(type_cast_6391_wire_constant, issue_thread_id_6263, tmp_var);
      CONCAT_u1_u5_6393_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u224_6435_inst
    process(CONCAT_u1_u2_6431_wire, CONCAT_u32_u222_6434_wire) -- 
      variable tmp_var : std_logic_vector(223 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_6431_wire, CONCAT_u32_u222_6434_wire, tmp_var);
      final_to_idecode_6436 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u222_6434_inst
    process(ras_nnpc_or_branch_offset_6362, to_idecode_6247) -- 
      variable tmp_var : std_logic_vector(221 downto 0); -- 
    begin -- 
      ApConcat_proc(ras_nnpc_or_branch_offset_6362, to_idecode_6247, tmp_var);
      CONCAT_u32_u222_6434_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u64_6405_inst
    process(issue_pc_6251, issue_npc_6255) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(issue_pc_6251, issue_npc_6255, tmp_var);
      CONCAT_u32_u64_6405_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u33_u97_6406_inst
    process(CONCAT_u1_u33_6402_wire, CONCAT_u32_u64_6405_wire) -- 
      variable tmp_var : std_logic_vector(96 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u33_6402_wire, CONCAT_u32_u64_6405_wire, tmp_var);
      CONCAT_u33_u97_6406_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u7_6395_inst
    process(CONCAT_u1_u5_6393_wire, issue_stream_id_6267) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u5_6393_wire, issue_stream_id_6267, tmp_var);
      CONCAT_u5_u7_6395_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u7_6398_inst
    process(issue_slot_id_6271, ras_mispredict_6304) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(issue_slot_id_6271, ras_mispredict_6304, tmp_var);
      CONCAT_u6_u7_6398_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u7_u14_6399_inst
    process(CONCAT_u5_u7_6395_wire, CONCAT_u6_u7_6398_wire) -- 
      variable tmp_var : std_logic_vector(13 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u5_u7_6395_wire, CONCAT_u6_u7_6398_wire, tmp_var);
      CONCAT_u7_u14_6399_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u1_u1_6326_inst
    process(regulator_state_6202) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(regulator_state_6202, R_NORMAL_ISSUE_6325_wire_constant, tmp_var);
      EQ_u1_u1_6326_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u1_u1_6335_inst
    process(regulator_state_6202) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(regulator_state_6202, R_BLOCK_FOR_NEW_SUBSTREAM_6334_wire_constant, tmp_var);
      EQ_u1_u1_6335_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u1_u1_6353_inst
    process(regulator_state_6202) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(regulator_state_6202, R_NORMAL_ISSUE_6352_wire_constant, tmp_var);
      EQ_u1_u1_6353_wire <= tmp_var; --
    end process;
    -- unary operator NOT_u1_u1_6282_inst
    process(ras_not_applicable_6278) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ras_not_applicable_6278, tmp_var);
      NOT_u1_u1_6282_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_6307_inst
    process(is_ret_or_retl_6231) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", is_ret_or_retl_6231, tmp_var);
      NOT_u1_u1_6307_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator OR_u1_u1_6319_inst
    OR_u1_u1_6319_wire <= (thread_head_6215 or stream_head_6219);
    -- flow through binary operator OR_u1_u1_6321_inst
    continue_issuing_6322 <= (OR_u1_u1_6319_wire or substream_head_6223);
    -- flow through binary operator OR_u1_u1_6345_inst
    next_regulator_state_6346 <= (MUX_6332_wire or MUX_6344_wire);
    -- flow through binary operator OR_u1_u1_6355_inst
    actually_issue_instruction_6356 <= (EQ_u1_u1_6353_wire or continue_issuing_6322);
    -- flow through binary operator OR_u1_u1_6367_inst
    OR_u1_u1_6367_wire <= (is_call_6227 or is_ret_or_retl_6231);
    -- flow through binary operator ULT_u2_u1_6276_inst
    process(ras_counter_6206) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(ras_counter_6206, konst_6275_wire_constant, tmp_var);
      ULT_u2_u1_6276_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u2_u1_6374_inst
    process(ras_counter_6206) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(ras_counter_6206, konst_6373_wire_constant, tmp_var);
      ULT_u2_u1_6374_wire <= tmp_var; --
    end process;
    -- shared inport operator group (0) : RPIPE_ifetch_issue_to_regulator_pipe_6201_inst 
    InportGroup_0: Block -- 
      signal data_out: std_logic_vector(259 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_ifetch_issue_to_regulator_pipe_6201_inst_req_0;
      RPIPE_ifetch_issue_to_regulator_pipe_6201_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_ifetch_issue_to_regulator_pipe_6201_inst_req_1;
      RPIPE_ifetch_issue_to_regulator_pipe_6201_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      RPIPE_ifetch_issue_to_regulator_pipe_6201_wire <= data_out(259 downto 0);
      ifetch_issue_to_regulator_pipe_read_0_gI: SplitGuardInterface generic map(name => "ifetch_issue_to_regulator_pipe_read_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      ifetch_issue_to_regulator_pipe_read_0: InputPort_P2P -- 
        generic map ( name => "ifetch_issue_to_regulator_pipe_read_0", data_width => 260,    bypass_flag => true,   	nonblocking_read_flag => false,  barrier_flag => false,   queue_depth =>  0)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => ifetch_issue_to_regulator_pipe_pipe_read_req(0),
          oack => ifetch_issue_to_regulator_pipe_pipe_read_ack(0),
          odata => ifetch_issue_to_regulator_pipe_pipe_read_data(259 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 0
    -- shared outport operator group (0) : WPIPE_noblock_ifetch_substream_update_6410_inst 
    OutportGroup_0: Block -- 
      signal data_in: std_logic_vector(110 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_noblock_ifetch_substream_update_6410_inst_req_0;
      WPIPE_noblock_ifetch_substream_update_6410_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_noblock_ifetch_substream_update_6410_inst_req_1;
      WPIPE_noblock_ifetch_substream_update_6410_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= send_substream_correction_6388(0);
      data_in <= substream_correction_6408;
      noblock_ifetch_substream_update_write_0_gI: SplitGuardInterface generic map(name => "noblock_ifetch_substream_update_write_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      noblock_ifetch_substream_update_write_0: OutputPortRevised -- 
        generic map ( name => "noblock_ifetch_substream_update", data_width => 111, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => noblock_ifetch_substream_update_pipe_write_req(0),
          oack => noblock_ifetch_substream_update_pipe_write_ack(0),
          odata => noblock_ifetch_substream_update_pipe_write_data(110 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    -- shared outport operator group (1) : WPIPE_teu_ifetch_to_idecode_extended_6438_inst 
    OutportGroup_1: Block -- 
      signal data_in: std_logic_vector(223 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_teu_ifetch_to_idecode_extended_6438_inst_req_0;
      WPIPE_teu_ifetch_to_idecode_extended_6438_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_teu_ifetch_to_idecode_extended_6438_inst_req_1;
      WPIPE_teu_ifetch_to_idecode_extended_6438_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= actually_issue_instruction_6356(0);
      data_in <= final_to_idecode_6436;
      teu_ifetch_to_idecode_extended_write_1_gI: SplitGuardInterface generic map(name => "teu_ifetch_to_idecode_extended_write_1_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      teu_ifetch_to_idecode_extended_write_1: OutputPortRevised -- 
        generic map ( name => "teu_ifetch_to_idecode_extended", data_width => 224, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => teu_ifetch_to_idecode_extended_pipe_write_req(0),
          oack => teu_ifetch_to_idecode_extended_pipe_write_ack(0),
          odata => teu_ifetch_to_idecode_extended_pipe_write_data(223 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 1
    -- 
  end Block; -- data_path
  -- 
end ifetch_regulator_daemon_arch;
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
library teu_ifetch;
use teu_ifetch.ifetch_global_package.all;
entity issue_instruction_logic_Volatile is -- 
  port ( -- 
    issue_instruction : in  std_logic_vector(0 downto 0);
    irl_8 : in  std_logic_vector(7 downto 0);
    issue_control_word : in  std_logic_vector(148 downto 0);
    request_icache : in  std_logic_vector(0 downto 0);
    from_icache : in  std_logic_vector(89 downto 0);
    ras_top_of_stack : in  std_logic_vector(31 downto 0);
    is_call : out  std_logic_vector(0 downto 0);
    is_ret_or_retl : out  std_logic_vector(0 downto 0);
    is_valid_ras_entry : out  std_logic_vector(0 downto 0);
    is_unconditional_cti : out  std_logic_vector(0 downto 0);
    ras_nnpc : out  std_logic_vector(31 downto 0);
    branch_target_offset : out  std_logic_vector(31 downto 0);
    to_idecode : out  std_logic_vector(189 downto 0)-- 
  );
  -- 
end entity issue_instruction_logic_Volatile;
architecture issue_instruction_logic_Volatile_arch of issue_instruction_logic_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(281-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal issue_instruction_buffer :  std_logic_vector(0 downto 0);
  signal irl_8_buffer :  std_logic_vector(7 downto 0);
  signal issue_control_word_buffer :  std_logic_vector(148 downto 0);
  signal request_icache_buffer :  std_logic_vector(0 downto 0);
  signal from_icache_buffer :  std_logic_vector(89 downto 0);
  signal ras_top_of_stack_buffer :  std_logic_vector(31 downto 0);
  -- output port buffer signals
  signal is_call_buffer :  std_logic_vector(0 downto 0);
  signal is_ret_or_retl_buffer :  std_logic_vector(0 downto 0);
  signal is_valid_ras_entry_buffer :  std_logic_vector(0 downto 0);
  signal is_unconditional_cti_buffer :  std_logic_vector(0 downto 0);
  signal ras_nnpc_buffer :  std_logic_vector(31 downto 0);
  signal branch_target_offset_buffer :  std_logic_vector(31 downto 0);
  signal to_idecode_buffer :  std_logic_vector(189 downto 0);
  -- volatile/operator module components. 
  component calculate_potential_nnpc_Volatile is -- 
    port ( -- 
      pc : in  std_logic_vector(31 downto 0);
      instr : in  std_logic_vector(31 downto 0);
      is_ret_or_retl : in  std_logic_vector(0 downto 0);
      ras_top_of_stack : in  std_logic_vector(31 downto 0);
      is_valid_ras_entry : out  std_logic_vector(0 downto 0);
      is_unconditional_cti : out  std_logic_vector(0 downto 0);
      ras_nnpc : out  std_logic_vector(31 downto 0);
      branch_target_offset : out  std_logic_vector(31 downto 0)-- 
    );
    -- 
  end component; 
  component early_decode_for_fetch_Volatile is -- 
    port ( -- 
      instr : in  std_logic_vector(31 downto 0);
      is_cti : out  std_logic_vector(0 downto 0);
      is_call : out  std_logic_vector(0 downto 0);
      is_jmpl : out  std_logic_vector(0 downto 0);
      is_rett : out  std_logic_vector(0 downto 0);
      is_flush : out  std_logic_vector(0 downto 0);
      is_write_psr : out  std_logic_vector(0 downto 0);
      is_write_to_mmu_ctrl_register : out  std_logic_vector(0 downto 0);
      will_trap : out  std_logic_vector(0 downto 0);
      imm_bit : out  std_logic_vector(0 downto 0);
      annul_bit : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  -- 
begin --  
  -- input handling ------------------------------------------------
  issue_instruction_buffer <= issue_instruction;
  irl_8_buffer <= irl_8;
  issue_control_word_buffer <= issue_control_word;
  request_icache_buffer <= request_icache;
  from_icache_buffer <= from_icache;
  ras_top_of_stack_buffer <= ras_top_of_stack;
  -- output handling  -------------------------------------------------------
  is_call <= is_call_buffer;
  is_ret_or_retl <= is_ret_or_retl_buffer;
  is_valid_ras_entry <= is_valid_ras_entry_buffer;
  is_unconditional_cti <= is_unconditional_cti_buffer;
  ras_nnpc <= ras_nnpc_buffer;
  branch_target_offset <= branch_target_offset_buffer;
  to_idecode <= to_idecode_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_5177_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5189_wire : std_logic_vector(0 downto 0);
    signal CONCAT_u13_u17_5284_wire : std_logic_vector(16 downto 0);
    signal CONCAT_u18_u40_5290_wire : std_logic_vector(39 downto 0);
    signal CONCAT_u1_u2_5233_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5238_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5247_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5252_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5257_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5261_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5264_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5279_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5282_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u5_5287_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u2_u3_5235_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_5254_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u4_5265_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u2_u4_5283_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u32_u64_5294_wire : std_logic_vector(63 downto 0);
    signal CONCAT_u32_u64_5297_wire : std_logic_vector(63 downto 0);
    signal CONCAT_u3_u5_5239_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u3_u5_5258_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u45_u173_5299_wire : std_logic_vector(172 downto 0);
    signal CONCAT_u4_u5_5242_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u4_u6_5272_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u5_u13_5249_wire : std_logic_vector(12 downto 0);
    signal CONCAT_u5_u45_5291_wire : std_logic_vector(44 downto 0);
    signal CONCAT_u5_u6_5244_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u5_u9_5266_wire : std_logic_vector(8 downto 0);
    signal CONCAT_u64_u128_5298_wire : std_logic_vector(127 downto 0);
    signal CONCAT_u6_u13_5276_wire : std_logic_vector(12 downto 0);
    signal CONCAT_u6_u7_5275_wire : std_logic_vector(6 downto 0);
    signal CONCAT_u6_u8_5248_wire : std_logic_vector(7 downto 0);
    signal EQ_u13_u1_5181_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_5124_wire : std_logic_vector(0 downto 0);
    signal EQ_u5_u1_5184_wire : std_logic_vector(0 downto 0);
    signal EQ_u5_u1_5187_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5188_wire : std_logic_vector(0 downto 0);
    signal PSR_5072 : std_logic_vector(31 downto 0);
    signal S_5210 : std_logic_vector(0 downto 0);
    signal annul_pc_5052 : std_logic_vector(0 downto 0);
    signal ctrl_word_5268 : std_logic_vector(21 downto 0);
    signal debug_mode_selected_5048 : std_logic_vector(0 downto 0);
    signal enable_cp_5229 : std_logic_vector(0 downto 0);
    signal enable_fp_5224 : std_logic_vector(0 downto 0);
    signal et_5215 : std_logic_vector(0 downto 0);
    signal i_pc_5130 : std_logic_vector(31 downto 0);
    signal i_pc_annul_next_5166 : std_logic_vector(0 downto 0);
    signal i_pc_imm_bit_5166 : std_logic_vector(0 downto 0);
    signal i_pc_is_call_5166 : std_logic_vector(0 downto 0);
    signal i_pc_is_cti_5166 : std_logic_vector(0 downto 0);
    signal i_pc_is_flush_5166 : std_logic_vector(0 downto 0);
    signal i_pc_is_jmpl_5166 : std_logic_vector(0 downto 0);
    signal i_pc_is_mmu_ctrl_write_5166 : std_logic_vector(0 downto 0);
    signal i_pc_is_rett_5166 : std_logic_vector(0 downto 0);
    signal i_pc_is_write_psr_5166 : std_logic_vector(0 downto 0);
    signal i_pc_will_trap_5166 : std_logic_vector(0 downto 0);
    signal icache_hit_5147 : std_logic_vector(0 downto 0);
    signal icache_hit_raw_5134 : std_logic_vector(0 downto 0);
    signal ignore_break_point_5044 : std_logic_vector(0 downto 0);
    signal instr_pair_at_pc_5119 : std_logic_vector(63 downto 0);
    signal irl_4_5088 : std_logic_vector(3 downto 0);
    signal konst_5123_wire_constant : std_logic_vector(2 downto 0);
    signal konst_5180_wire_constant : std_logic_vector(12 downto 0);
    signal konst_5183_wire_constant : std_logic_vector(4 downto 0);
    signal konst_5186_wire_constant : std_logic_vector(4 downto 0);
    signal konst_5208_wire_constant : std_logic_vector(31 downto 0);
    signal konst_5213_wire_constant : std_logic_vector(31 downto 0);
    signal konst_5222_wire_constant : std_logic_vector(31 downto 0);
    signal konst_5227_wire_constant : std_logic_vector(31 downto 0);
    signal logging_active_5056 : std_logic_vector(0 downto 0);
    signal mmu_fsr_5111 : std_logic_vector(17 downto 0);
    signal npc_5080 : std_logic_vector(31 downto 0);
    signal pc_5076 : std_logic_vector(31 downto 0);
    signal pc_fetch_error_5138 : std_logic_vector(0 downto 0);
    signal pc_fetch_mae_5115 : std_logic_vector(7 downto 0);
    signal pc_fetch_trap_5142 : std_logic_vector(0 downto 0);
    signal predicted_next_npc_5084 : std_logic_vector(31 downto 0);
    signal psr_ilvl_5219 : std_logic_vector(3 downto 0);
    signal rs1_5173 : std_logic_vector(4 downto 0);
    signal single_step_flag_5040 : std_logic_vector(0 downto 0);
    signal slice_5122_wire : std_logic_vector(2 downto 0);
    signal slice_5126_wire : std_logic_vector(31 downto 0);
    signal slice_5128_wire : std_logic_vector(31 downto 0);
    signal slice_5179_wire : std_logic_vector(12 downto 0);
    signal slot_id_5036 : std_logic_vector(5 downto 0);
    signal stream_head_5064 : std_logic_vector(0 downto 0);
    signal stream_id_5032 : std_logic_vector(1 downto 0);
    signal substream_head_5068 : std_logic_vector(0 downto 0);
    signal thread_head_5060 : std_logic_vector(0 downto 0);
    signal thread_id_5028 : std_logic_vector(3 downto 0);
    -- 
  begin -- 
    konst_5123_wire_constant <= "000";
    konst_5180_wire_constant <= "0000000001000";
    konst_5183_wire_constant <= "01111";
    konst_5186_wire_constant <= "11111";
    konst_5208_wire_constant <= "00000000000000000000000000000111";
    konst_5213_wire_constant <= "00000000000000000000000000000101";
    konst_5222_wire_constant <= "00000000000000000000000000001100";
    konst_5227_wire_constant <= "00000000000000000000000000001101";
    -- flow-through select operator MUX_5129_inst
    i_pc_5130 <= slice_5126_wire when (EQ_u3_u1_5124_wire(0) /=  '0') else slice_5128_wire;
    -- flow-through slice operator slice_5027_inst
    thread_id_5028 <= issue_control_word_buffer(148 downto 145);
    -- flow-through slice operator slice_5031_inst
    stream_id_5032 <= issue_control_word_buffer(144 downto 143);
    -- flow-through slice operator slice_5035_inst
    slot_id_5036 <= issue_control_word_buffer(142 downto 137);
    -- flow-through slice operator slice_5039_inst
    single_step_flag_5040 <= issue_control_word_buffer(136 downto 136);
    -- flow-through slice operator slice_5043_inst
    ignore_break_point_5044 <= issue_control_word_buffer(135 downto 135);
    -- flow-through slice operator slice_5047_inst
    debug_mode_selected_5048 <= issue_control_word_buffer(134 downto 134);
    -- flow-through slice operator slice_5051_inst
    annul_pc_5052 <= issue_control_word_buffer(133 downto 133);
    -- flow-through slice operator slice_5055_inst
    logging_active_5056 <= issue_control_word_buffer(132 downto 132);
    -- flow-through slice operator slice_5059_inst
    thread_head_5060 <= issue_control_word_buffer(131 downto 131);
    -- flow-through slice operator slice_5063_inst
    stream_head_5064 <= issue_control_word_buffer(130 downto 130);
    -- flow-through slice operator slice_5067_inst
    substream_head_5068 <= issue_control_word_buffer(129 downto 129);
    -- flow-through slice operator slice_5071_inst
    PSR_5072 <= issue_control_word_buffer(127 downto 96);
    -- flow-through slice operator slice_5075_inst
    pc_5076 <= issue_control_word_buffer(95 downto 64);
    -- flow-through slice operator slice_5079_inst
    npc_5080 <= issue_control_word_buffer(63 downto 32);
    -- flow-through slice operator slice_5083_inst
    predicted_next_npc_5084 <= issue_control_word_buffer(31 downto 0);
    -- flow-through slice operator slice_5087_inst
    irl_4_5088 <= irl_8_buffer(3 downto 0);
    -- flow-through slice operator slice_5110_inst
    mmu_fsr_5111 <= from_icache_buffer(89 downto 72);
    -- flow-through slice operator slice_5114_inst
    pc_fetch_mae_5115 <= from_icache_buffer(71 downto 64);
    -- flow-through slice operator slice_5118_inst
    instr_pair_at_pc_5119 <= from_icache_buffer(63 downto 0);
    -- flow-through slice operator slice_5122_inst
    slice_5122_wire <= pc_5076(2 downto 0);
    -- flow-through slice operator slice_5126_inst
    slice_5126_wire <= instr_pair_at_pc_5119(63 downto 32);
    -- flow-through slice operator slice_5128_inst
    slice_5128_wire <= instr_pair_at_pc_5119(31 downto 0);
    -- flow-through slice operator slice_5133_inst
    icache_hit_raw_5134 <= pc_fetch_mae_5115(2 downto 2);
    -- flow-through slice operator slice_5137_inst
    pc_fetch_error_5138 <= pc_fetch_mae_5115(1 downto 1);
    -- flow-through slice operator slice_5141_inst
    pc_fetch_trap_5142 <= pc_fetch_mae_5115(0 downto 0);
    -- flow-through slice operator slice_5172_inst
    rs1_5173 <= i_pc_5130(18 downto 14);
    -- flow-through slice operator slice_5179_inst
    slice_5179_wire <= i_pc_5130(12 downto 0);
    -- flow-through slice operator slice_5218_inst
    psr_ilvl_5219 <= PSR_5072(11 downto 8);
    -- interlock W_is_call_5167_inst
    process(i_pc_is_call_5166) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := i_pc_is_call_5166(0 downto 0);
      is_call_buffer <= tmp_var; -- 
    end process;
    -- flow through binary operator AND_u1_u1_5146_inst
    icache_hit_5147 <= (request_icache_buffer and icache_hit_raw_5134);
    -- flow through binary operator AND_u1_u1_5177_inst
    AND_u1_u1_5177_wire <= (i_pc_is_jmpl_5166 and i_pc_imm_bit_5166);
    -- flow through binary operator AND_u1_u1_5189_inst
    AND_u1_u1_5189_wire <= (EQ_u13_u1_5181_wire and OR_u1_u1_5188_wire);
    -- flow through binary operator AND_u1_u1_5190_inst
    is_ret_or_retl_buffer <= (AND_u1_u1_5177_wire and AND_u1_u1_5189_wire);
    -- flow through binary operator BITSEL_u32_u1_5209_inst
    process(PSR_5072) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(PSR_5072, konst_5208_wire_constant, tmp_var);
      S_5210 <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u32_u1_5214_inst
    process(PSR_5072) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(PSR_5072, konst_5213_wire_constant, tmp_var);
      et_5215 <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u32_u1_5223_inst
    process(PSR_5072) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(PSR_5072, konst_5222_wire_constant, tmp_var);
      enable_fp_5224 <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u32_u1_5228_inst
    process(PSR_5072) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(PSR_5072, konst_5227_wire_constant, tmp_var);
      enable_cp_5229 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u13_u17_5284_inst
    process(CONCAT_u6_u13_5276_wire, CONCAT_u2_u4_5283_wire) -- 
      variable tmp_var : std_logic_vector(16 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u6_u13_5276_wire, CONCAT_u2_u4_5283_wire, tmp_var);
      CONCAT_u13_u17_5284_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u13_u22_5267_inst
    process(CONCAT_u5_u13_5249_wire, CONCAT_u5_u9_5266_wire) -- 
      variable tmp_var : std_logic_vector(21 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u5_u13_5249_wire, CONCAT_u5_u9_5266_wire, tmp_var);
      ctrl_word_5268 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u17_u190_5300_inst
    process(CONCAT_u13_u17_5284_wire, CONCAT_u45_u173_5299_wire) -- 
      variable tmp_var : std_logic_vector(189 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u13_u17_5284_wire, CONCAT_u45_u173_5299_wire, tmp_var);
      to_idecode_buffer <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u18_u40_5290_inst
    process(mmu_fsr_5111, ctrl_word_5268) -- 
      variable tmp_var : std_logic_vector(39 downto 0); -- 
    begin -- 
      ApConcat_proc(mmu_fsr_5111, ctrl_word_5268, tmp_var);
      CONCAT_u18_u40_5290_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5233_inst
    process(i_pc_is_jmpl_5166, i_pc_is_rett_5166) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(i_pc_is_jmpl_5166, i_pc_is_rett_5166, tmp_var);
      CONCAT_u1_u2_5233_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5238_inst
    process(debug_mode_selected_5048, logging_active_5056) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(debug_mode_selected_5048, logging_active_5056, tmp_var);
      CONCAT_u1_u2_5238_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5247_inst
    process(ignore_break_point_5044, S_5210) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(ignore_break_point_5044, S_5210, tmp_var);
      CONCAT_u1_u2_5247_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5252_inst
    process(i_pc_imm_bit_5166, i_pc_is_write_psr_5166) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(i_pc_imm_bit_5166, i_pc_is_write_psr_5166, tmp_var);
      CONCAT_u1_u2_5252_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5257_inst
    process(i_pc_is_flush_5166, i_pc_is_cti_5166) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(i_pc_is_flush_5166, i_pc_is_cti_5166, tmp_var);
      CONCAT_u1_u2_5257_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5261_inst
    process(icache_hit_5147, pc_fetch_trap_5142) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(icache_hit_5147, pc_fetch_trap_5142, tmp_var);
      CONCAT_u1_u2_5261_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5264_inst
    process(stream_head_5064, thread_head_5060) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(stream_head_5064, thread_head_5060, tmp_var);
      CONCAT_u1_u2_5264_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5279_inst
    process(pc_fetch_trap_5142, pc_fetch_error_5138) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(pc_fetch_trap_5142, pc_fetch_error_5138, tmp_var);
      CONCAT_u1_u2_5279_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5282_inst
    process(annul_pc_5052, enable_fp_5224) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(annul_pc_5052, enable_fp_5224, tmp_var);
      CONCAT_u1_u2_5282_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u5_5287_inst
    process(enable_cp_5229, irl_4_5088) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(enable_cp_5229, irl_4_5088, tmp_var);
      CONCAT_u1_u5_5287_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_5235_inst
    process(CONCAT_u1_u2_5233_wire, request_icache_buffer) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_5233_wire, request_icache_buffer, tmp_var);
      CONCAT_u2_u3_5235_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_5254_inst
    process(CONCAT_u1_u2_5252_wire, i_pc_is_mmu_ctrl_write_5166) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_5252_wire, i_pc_is_mmu_ctrl_write_5166, tmp_var);
      CONCAT_u2_u3_5254_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u4_5265_inst
    process(CONCAT_u1_u2_5261_wire, CONCAT_u1_u2_5264_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_5261_wire, CONCAT_u1_u2_5264_wire, tmp_var);
      CONCAT_u2_u4_5265_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u4_5283_inst
    process(CONCAT_u1_u2_5279_wire, CONCAT_u1_u2_5282_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_5279_wire, CONCAT_u1_u2_5282_wire, tmp_var);
      CONCAT_u2_u4_5283_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u64_5294_inst
    process(predicted_next_npc_5084, pc_5076) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(predicted_next_npc_5084, pc_5076, tmp_var);
      CONCAT_u32_u64_5294_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u64_5297_inst
    process(npc_5080, i_pc_5130) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(npc_5080, i_pc_5130, tmp_var);
      CONCAT_u32_u64_5297_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u5_5239_inst
    process(CONCAT_u2_u3_5235_wire, CONCAT_u1_u2_5238_wire) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_5235_wire, CONCAT_u1_u2_5238_wire, tmp_var);
      CONCAT_u3_u5_5239_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u5_5258_inst
    process(CONCAT_u2_u3_5254_wire, CONCAT_u1_u2_5257_wire) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_5254_wire, CONCAT_u1_u2_5257_wire, tmp_var);
      CONCAT_u3_u5_5258_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u45_u173_5299_inst
    process(CONCAT_u5_u45_5291_wire, CONCAT_u64_u128_5298_wire) -- 
      variable tmp_var : std_logic_vector(172 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u5_u45_5291_wire, CONCAT_u64_u128_5298_wire, tmp_var);
      CONCAT_u45_u173_5299_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u5_5242_inst
    process(psr_ilvl_5219, et_5215) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(psr_ilvl_5219, et_5215, tmp_var);
      CONCAT_u4_u5_5242_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u6_5272_inst
    process(thread_id_5028, stream_id_5032) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(thread_id_5028, stream_id_5032, tmp_var);
      CONCAT_u4_u6_5272_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u13_5249_inst
    process(CONCAT_u3_u5_5239_wire, CONCAT_u6_u8_5248_wire) -- 
      variable tmp_var : std_logic_vector(12 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u3_u5_5239_wire, CONCAT_u6_u8_5248_wire, tmp_var);
      CONCAT_u5_u13_5249_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u45_5291_inst
    process(CONCAT_u1_u5_5287_wire, CONCAT_u18_u40_5290_wire) -- 
      variable tmp_var : std_logic_vector(44 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u5_5287_wire, CONCAT_u18_u40_5290_wire, tmp_var);
      CONCAT_u5_u45_5291_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u6_5244_inst
    process(CONCAT_u4_u5_5242_wire, single_step_flag_5040) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u5_5242_wire, single_step_flag_5040, tmp_var);
      CONCAT_u5_u6_5244_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u9_5266_inst
    process(CONCAT_u3_u5_5258_wire, CONCAT_u2_u4_5265_wire) -- 
      variable tmp_var : std_logic_vector(8 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u3_u5_5258_wire, CONCAT_u2_u4_5265_wire, tmp_var);
      CONCAT_u5_u9_5266_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u64_u128_5298_inst
    process(CONCAT_u32_u64_5294_wire, CONCAT_u32_u64_5297_wire) -- 
      variable tmp_var : std_logic_vector(127 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u32_u64_5294_wire, CONCAT_u32_u64_5297_wire, tmp_var);
      CONCAT_u64_u128_5298_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u13_5276_inst
    process(CONCAT_u4_u6_5272_wire, CONCAT_u6_u7_5275_wire) -- 
      variable tmp_var : std_logic_vector(12 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u6_5272_wire, CONCAT_u6_u7_5275_wire, tmp_var);
      CONCAT_u6_u13_5276_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u7_5275_inst
    process(slot_id_5036, substream_head_5068) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(slot_id_5036, substream_head_5068, tmp_var);
      CONCAT_u6_u7_5275_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u8_5248_inst
    process(CONCAT_u5_u6_5244_wire, CONCAT_u1_u2_5247_wire) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u5_u6_5244_wire, CONCAT_u1_u2_5247_wire, tmp_var);
      CONCAT_u6_u8_5248_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u13_u1_5181_inst
    process(slice_5179_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(slice_5179_wire, konst_5180_wire_constant, tmp_var);
      EQ_u13_u1_5181_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_5124_inst
    process(slice_5122_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(slice_5122_wire, konst_5123_wire_constant, tmp_var);
      EQ_u3_u1_5124_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u5_u1_5184_inst
    process(rs1_5173) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(rs1_5173, konst_5183_wire_constant, tmp_var);
      EQ_u5_u1_5184_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u5_u1_5187_inst
    process(rs1_5173) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(rs1_5173, konst_5186_wire_constant, tmp_var);
      EQ_u5_u1_5187_wire <= tmp_var; --
    end process;
    -- flow through binary operator OR_u1_u1_5188_inst
    OR_u1_u1_5188_wire <= (EQ_u5_u1_5184_wire or EQ_u5_u1_5187_wire);
    volatile_operator_early_decode_for_fetch_5691: early_decode_for_fetch_Volatile port map(instr => i_pc_5130, is_cti => i_pc_is_cti_5166, is_call => i_pc_is_call_5166, is_jmpl => i_pc_is_jmpl_5166, is_rett => i_pc_is_rett_5166, is_flush => i_pc_is_flush_5166, is_write_psr => i_pc_is_write_psr_5166, is_write_to_mmu_ctrl_register => i_pc_is_mmu_ctrl_write_5166, will_trap => i_pc_will_trap_5166, imm_bit => i_pc_imm_bit_5166, annul_bit => i_pc_annul_next_5166); 
    volatile_operator_calculate_potential_nnpc_5702: calculate_potential_nnpc_Volatile port map(pc => pc_5076, instr => i_pc_5130, is_ret_or_retl => is_ret_or_retl_buffer, ras_top_of_stack => ras_top_of_stack_buffer, is_valid_ras_entry => is_valid_ras_entry_buffer, is_unconditional_cti => is_unconditional_cti_buffer, ras_nnpc => ras_nnpc_buffer, branch_target_offset => branch_target_offset_buffer); 
    -- 
  end Block; -- data_path
  -- 
end issue_instruction_logic_Volatile_arch;
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
library teu_ifetch;
use teu_ifetch.ifetch_global_package.all;
entity rng_daemon is -- 
  generic (tag_length : integer); 
  port ( -- 
    random_number_2_pipe_write_req : out  std_logic_vector(0 downto 0);
    random_number_2_pipe_write_ack : in   std_logic_vector(0 downto 0);
    random_number_2_pipe_write_data : out  std_logic_vector(1 downto 0);
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
end entity rng_daemon;
architecture rng_daemon_arch of rng_daemon is -- 
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
  signal rng_daemon_CP_2934_start: Boolean;
  signal rng_daemon_CP_2934_symbol: Boolean;
  -- volatile/operator module components. 
  -- links between control-path and data-path
  signal phi_stmt_6832_req_0 : boolean;
  signal next_sr_6860_6836_buf_ack_0 : boolean;
  signal slice_6863_inst_req_0 : boolean;
  signal next_sr_6860_6836_buf_req_0 : boolean;
  signal slice_6863_inst_req_1 : boolean;
  signal next_sr_6860_6836_buf_req_1 : boolean;
  signal next_sr_6860_6836_buf_ack_1 : boolean;
  signal phi_stmt_6832_ack_0 : boolean;
  signal phi_stmt_6832_req_1 : boolean;
  signal slice_6863_inst_ack_0 : boolean;
  signal slice_6863_inst_ack_1 : boolean;
  signal do_while_stmt_6830_branch_req_0 : boolean;
  signal WPIPE_random_number_2_6861_inst_req_0 : boolean;
  signal WPIPE_random_number_2_6861_inst_ack_0 : boolean;
  signal WPIPE_random_number_2_6861_inst_req_1 : boolean;
  signal WPIPE_random_number_2_6861_inst_ack_1 : boolean;
  signal do_while_stmt_6830_branch_ack_0 : boolean;
  signal do_while_stmt_6830_branch_ack_1 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "rng_daemon_input_buffer", -- 
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
  rng_daemon_CP_2934_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "rng_daemon_out_buffer", -- 
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
    preds <= rng_daemon_CP_2934_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
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
    preds <= rng_daemon_CP_2934_start & tag_ilock_write_ack_symbol;
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
    preds <= rng_daemon_CP_2934_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  rng_daemon_CP_2934: Block -- control-path 
    signal rng_daemon_CP_2934_elements: BooleanArray(40 downto 0);
    -- 
  begin -- 
    rng_daemon_CP_2934_elements(0) <= rng_daemon_CP_2934_start;
    rng_daemon_CP_2934_symbol <= rng_daemon_CP_2934_elements(1);
    -- CP-element group 0:  transition  place  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	2 
    -- CP-element group 0:  members (4) 
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 branch_block_stmt_6829/$entry
      -- CP-element group 0: 	 branch_block_stmt_6829/branch_block_stmt_6829__entry__
      -- CP-element group 0: 	 branch_block_stmt_6829/do_while_stmt_6830__entry__
      -- 
    -- CP-element group 1:  transition  place  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	40 
    -- CP-element group 1: successors 
    -- CP-element group 1:  members (4) 
      -- CP-element group 1: 	 $exit
      -- CP-element group 1: 	 branch_block_stmt_6829/$exit
      -- CP-element group 1: 	 branch_block_stmt_6829/branch_block_stmt_6829__exit__
      -- CP-element group 1: 	 branch_block_stmt_6829/do_while_stmt_6830__exit__
      -- 
    rng_daemon_CP_2934_elements(1) <= rng_daemon_CP_2934_elements(40);
    -- CP-element group 2:  transition  place  bypass  pipeline-parent 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	0 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	8 
    -- CP-element group 2:  members (2) 
      -- CP-element group 2: 	 branch_block_stmt_6829/do_while_stmt_6830/$entry
      -- CP-element group 2: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830__entry__
      -- 
    rng_daemon_CP_2934_elements(2) <= rng_daemon_CP_2934_elements(0);
    -- CP-element group 3:  merge  place  bypass  pipeline-parent 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	40 
    -- CP-element group 3:  members (1) 
      -- CP-element group 3: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830__exit__
      -- 
    -- Element group rng_daemon_CP_2934_elements(3) is bound as output of CP function.
    -- CP-element group 4:  merge  place  bypass  pipeline-parent 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	7 
    -- CP-element group 4:  members (1) 
      -- CP-element group 4: 	 branch_block_stmt_6829/do_while_stmt_6830/loop_back
      -- 
    -- Element group rng_daemon_CP_2934_elements(4) is bound as output of CP function.
    -- CP-element group 5:  branch  transition  place  bypass  pipeline-parent 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	10 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	38 
    -- CP-element group 5: 	39 
    -- CP-element group 5:  members (3) 
      -- CP-element group 5: 	 branch_block_stmt_6829/do_while_stmt_6830/condition_done
      -- CP-element group 5: 	 branch_block_stmt_6829/do_while_stmt_6830/loop_exit/$entry
      -- CP-element group 5: 	 branch_block_stmt_6829/do_while_stmt_6830/loop_taken/$entry
      -- 
    rng_daemon_CP_2934_elements(5) <= rng_daemon_CP_2934_elements(10);
    -- CP-element group 6:  branch  place  bypass  pipeline-parent 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	37 
    -- CP-element group 6: successors 
    -- CP-element group 6:  members (1) 
      -- CP-element group 6: 	 branch_block_stmt_6829/do_while_stmt_6830/loop_body_done
      -- 
    rng_daemon_CP_2934_elements(6) <= rng_daemon_CP_2934_elements(37);
    -- CP-element group 7:  transition  bypass  pipeline-parent 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	4 
    -- CP-element group 7: successors 
    -- CP-element group 7: 	17 
    -- CP-element group 7:  members (1) 
      -- CP-element group 7: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/back_edge_to_loop_body
      -- 
    rng_daemon_CP_2934_elements(7) <= rng_daemon_CP_2934_elements(4);
    -- CP-element group 8:  transition  bypass  pipeline-parent 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	2 
    -- CP-element group 8: successors 
    -- CP-element group 8: 	19 
    -- CP-element group 8:  members (1) 
      -- CP-element group 8: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/first_time_through_loop_body
      -- 
    rng_daemon_CP_2934_elements(8) <= rng_daemon_CP_2934_elements(2);
    -- CP-element group 9:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	36 
    -- CP-element group 9: 	13 
    -- CP-element group 9: 	14 
    -- CP-element group 9:  members (2) 
      -- CP-element group 9: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/$entry
      -- CP-element group 9: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/loop_body_start
      -- 
    -- Element group rng_daemon_CP_2934_elements(9) is bound as output of CP function.
    -- CP-element group 10:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	36 
    -- CP-element group 10: 	12 
    -- CP-element group 10: 	16 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	5 
    -- CP-element group 10:  members (1) 
      -- CP-element group 10: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/condition_evaluated
      -- 
    condition_evaluated_2958_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " condition_evaluated_2958_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => rng_daemon_CP_2934_elements(10), ack => do_while_stmt_6830_branch_req_0); -- 
    rng_daemon_cp_element_group_10: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 30) := "rng_daemon_cp_element_group_10"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= rng_daemon_CP_2934_elements(36) & rng_daemon_CP_2934_elements(12) & rng_daemon_CP_2934_elements(16);
      gj_rng_daemon_cp_element_group_10 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => rng_daemon_CP_2934_elements(10), clk => clk, reset => reset); --
    end block;
    -- CP-element group 11:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	13 
    -- CP-element group 11: marked-predecessors 
    -- CP-element group 11: 	16 
    -- CP-element group 11: successors 
    -- CP-element group 11:  members (2) 
      -- CP-element group 11: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/phi_stmt_6832_sample_start__ps
      -- CP-element group 11: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/aggregated_phi_sample_req
      -- 
    rng_daemon_cp_element_group_11: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 30) := "rng_daemon_cp_element_group_11"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= rng_daemon_CP_2934_elements(13) & rng_daemon_CP_2934_elements(16);
      gj_rng_daemon_cp_element_group_11 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => rng_daemon_CP_2934_elements(11), clk => clk, reset => reset); --
    end block;
    -- CP-element group 12:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	15 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	10 
    -- CP-element group 12:  members (1) 
      -- CP-element group 12: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/aggregated_phi_sample_ack_d
      -- 
    -- Element group rng_daemon_CP_2934_elements(12) is a control-delay.
    cp_element_12_delay: control_delay_element  generic map(name => " 12_delay", delay_value => 1)  port map(req => rng_daemon_CP_2934_elements(15), ack => rng_daemon_CP_2934_elements(12), clk => clk, reset =>reset);
    -- CP-element group 13:  join  transition  bypass  pipeline-parent 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: 	9 
    -- CP-element group 13: marked-predecessors 
    -- CP-element group 13: 	15 
    -- CP-element group 13: successors 
    -- CP-element group 13: 	11 
    -- CP-element group 13:  members (1) 
      -- CP-element group 13: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/phi_stmt_6832_sample_start_
      -- 
    rng_daemon_cp_element_group_13: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 30) := "rng_daemon_cp_element_group_13"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= rng_daemon_CP_2934_elements(9) & rng_daemon_CP_2934_elements(15);
      gj_rng_daemon_cp_element_group_13 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => rng_daemon_CP_2934_elements(13), clk => clk, reset => reset); --
    end block;
    -- CP-element group 14:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: 	9 
    -- CP-element group 14: marked-predecessors 
    -- CP-element group 14: 	31 
    -- CP-element group 14: successors 
    -- CP-element group 14:  members (3) 
      -- CP-element group 14: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/phi_stmt_6832_update_start__ps
      -- CP-element group 14: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/aggregated_phi_update_req
      -- CP-element group 14: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/phi_stmt_6832_update_start_
      -- 
    rng_daemon_cp_element_group_14: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 30) := "rng_daemon_cp_element_group_14"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= rng_daemon_CP_2934_elements(9) & rng_daemon_CP_2934_elements(31);
      gj_rng_daemon_cp_element_group_14 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => rng_daemon_CP_2934_elements(14), clk => clk, reset => reset); --
    end block;
    -- CP-element group 15:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: successors 
    -- CP-element group 15: 	37 
    -- CP-element group 15: 	12 
    -- CP-element group 15: marked-successors 
    -- CP-element group 15: 	13 
    -- CP-element group 15:  members (3) 
      -- CP-element group 15: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/phi_stmt_6832_sample_completed__ps
      -- CP-element group 15: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/aggregated_phi_sample_ack
      -- CP-element group 15: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/phi_stmt_6832_sample_completed_
      -- 
    -- Element group rng_daemon_CP_2934_elements(15) is bound as output of CP function.
    -- CP-element group 16:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: successors 
    -- CP-element group 16: 	10 
    -- CP-element group 16: 	31 
    -- CP-element group 16: marked-successors 
    -- CP-element group 16: 	11 
    -- CP-element group 16:  members (6) 
      -- CP-element group 16: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/slice_6863_Sample/rr
      -- CP-element group 16: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/slice_6863_Sample/$entry
      -- CP-element group 16: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/phi_stmt_6832_update_completed__ps
      -- CP-element group 16: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/slice_6863_sample_start_
      -- CP-element group 16: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/phi_stmt_6832_update_completed_
      -- CP-element group 16: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/aggregated_phi_update_ack
      -- 
    rr_3016_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_3016_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => rng_daemon_CP_2934_elements(16), ack => slice_6863_inst_req_0); -- 
    -- Element group rng_daemon_CP_2934_elements(16) is bound as output of CP function.
    -- CP-element group 17:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 17: predecessors 
    -- CP-element group 17: 	7 
    -- CP-element group 17: successors 
    -- CP-element group 17:  members (1) 
      -- CP-element group 17: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/phi_stmt_6832_loopback_trigger
      -- 
    rng_daemon_CP_2934_elements(17) <= rng_daemon_CP_2934_elements(7);
    -- CP-element group 18:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 18: predecessors 
    -- CP-element group 18: successors 
    -- CP-element group 18:  members (2) 
      -- CP-element group 18: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/phi_stmt_6832_loopback_sample_req_ps
      -- CP-element group 18: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/phi_stmt_6832_loopback_sample_req
      -- 
    phi_stmt_6832_loopback_sample_req_2974_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_6832_loopback_sample_req_2974_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => rng_daemon_CP_2934_elements(18), ack => phi_stmt_6832_req_1); -- 
    -- Element group rng_daemon_CP_2934_elements(18) is bound as output of CP function.
    -- CP-element group 19:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 19: predecessors 
    -- CP-element group 19: 	8 
    -- CP-element group 19: successors 
    -- CP-element group 19:  members (1) 
      -- CP-element group 19: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/phi_stmt_6832_entry_trigger
      -- 
    rng_daemon_CP_2934_elements(19) <= rng_daemon_CP_2934_elements(8);
    -- CP-element group 20:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 20: predecessors 
    -- CP-element group 20: successors 
    -- CP-element group 20:  members (2) 
      -- CP-element group 20: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/phi_stmt_6832_entry_sample_req
      -- CP-element group 20: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/phi_stmt_6832_entry_sample_req_ps
      -- 
    phi_stmt_6832_entry_sample_req_2977_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_6832_entry_sample_req_2977_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => rng_daemon_CP_2934_elements(20), ack => phi_stmt_6832_req_0); -- 
    -- Element group rng_daemon_CP_2934_elements(20) is bound as output of CP function.
    -- CP-element group 21:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 21: predecessors 
    -- CP-element group 21: successors 
    -- CP-element group 21:  members (2) 
      -- CP-element group 21: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/phi_stmt_6832_phi_mux_ack
      -- CP-element group 21: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/phi_stmt_6832_phi_mux_ack_ps
      -- 
    phi_stmt_6832_phi_mux_ack_2980_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 21_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_6832_ack_0, ack => rng_daemon_CP_2934_elements(21)); -- 
    -- CP-element group 22:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 22: predecessors 
    -- CP-element group 22: successors 
    -- CP-element group 22:  members (4) 
      -- CP-element group 22: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/type_cast_6835_sample_completed_
      -- CP-element group 22: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/type_cast_6835_sample_start_
      -- CP-element group 22: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/type_cast_6835_sample_start__ps
      -- CP-element group 22: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/type_cast_6835_sample_completed__ps
      -- 
    -- Element group rng_daemon_CP_2934_elements(22) is bound as output of CP function.
    -- CP-element group 23:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 23: predecessors 
    -- CP-element group 23: successors 
    -- CP-element group 23: 	25 
    -- CP-element group 23:  members (2) 
      -- CP-element group 23: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/type_cast_6835_update_start__ps
      -- CP-element group 23: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/type_cast_6835_update_start_
      -- 
    -- Element group rng_daemon_CP_2934_elements(23) is bound as output of CP function.
    -- CP-element group 24:  join  transition  bypass  pipeline-parent 
    -- CP-element group 24: predecessors 
    -- CP-element group 24: 	25 
    -- CP-element group 24: successors 
    -- CP-element group 24:  members (1) 
      -- CP-element group 24: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/type_cast_6835_update_completed__ps
      -- 
    rng_daemon_CP_2934_elements(24) <= rng_daemon_CP_2934_elements(25);
    -- CP-element group 25:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 25: predecessors 
    -- CP-element group 25: 	23 
    -- CP-element group 25: successors 
    -- CP-element group 25: 	24 
    -- CP-element group 25:  members (1) 
      -- CP-element group 25: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/type_cast_6835_update_completed_
      -- 
    -- Element group rng_daemon_CP_2934_elements(25) is a control-delay.
    cp_element_25_delay: control_delay_element  generic map(name => " 25_delay", delay_value => 1)  port map(req => rng_daemon_CP_2934_elements(23), ack => rng_daemon_CP_2934_elements(25), clk => clk, reset =>reset);
    -- CP-element group 26:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 26: predecessors 
    -- CP-element group 26: successors 
    -- CP-element group 26: 	28 
    -- CP-element group 26:  members (4) 
      -- CP-element group 26: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/R_next_sr_6836_Sample/req
      -- CP-element group 26: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/R_next_sr_6836_sample_start_
      -- CP-element group 26: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/R_next_sr_6836_sample_start__ps
      -- CP-element group 26: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/R_next_sr_6836_Sample/$entry
      -- 
    req_3001_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_3001_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => rng_daemon_CP_2934_elements(26), ack => next_sr_6860_6836_buf_req_0); -- 
    -- Element group rng_daemon_CP_2934_elements(26) is bound as output of CP function.
    -- CP-element group 27:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 27: predecessors 
    -- CP-element group 27: successors 
    -- CP-element group 27: 	29 
    -- CP-element group 27:  members (4) 
      -- CP-element group 27: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/R_next_sr_6836_update_start__ps
      -- CP-element group 27: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/R_next_sr_6836_Update/$entry
      -- CP-element group 27: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/R_next_sr_6836_Update/req
      -- CP-element group 27: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/R_next_sr_6836_update_start_
      -- 
    req_3006_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_3006_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => rng_daemon_CP_2934_elements(27), ack => next_sr_6860_6836_buf_req_1); -- 
    -- Element group rng_daemon_CP_2934_elements(27) is bound as output of CP function.
    -- CP-element group 28:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 28: predecessors 
    -- CP-element group 28: 	26 
    -- CP-element group 28: successors 
    -- CP-element group 28:  members (4) 
      -- CP-element group 28: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/R_next_sr_6836_Sample/ack
      -- CP-element group 28: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/R_next_sr_6836_sample_completed__ps
      -- CP-element group 28: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/R_next_sr_6836_sample_completed_
      -- CP-element group 28: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/R_next_sr_6836_Sample/$exit
      -- 
    ack_3002_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 28_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_sr_6860_6836_buf_ack_0, ack => rng_daemon_CP_2934_elements(28)); -- 
    -- CP-element group 29:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 29: predecessors 
    -- CP-element group 29: 	27 
    -- CP-element group 29: successors 
    -- CP-element group 29:  members (4) 
      -- CP-element group 29: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/R_next_sr_6836_Update/$exit
      -- CP-element group 29: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/R_next_sr_6836_update_completed__ps
      -- CP-element group 29: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/R_next_sr_6836_Update/ack
      -- CP-element group 29: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/R_next_sr_6836_update_completed_
      -- 
    ack_3007_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 29_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_sr_6860_6836_buf_ack_1, ack => rng_daemon_CP_2934_elements(29)); -- 
    -- CP-element group 30:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 30: predecessors 
    -- CP-element group 30: marked-predecessors 
    -- CP-element group 30: 	34 
    -- CP-element group 30: successors 
    -- CP-element group 30: 	32 
    -- CP-element group 30:  members (3) 
      -- CP-element group 30: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/slice_6863_update_start_
      -- CP-element group 30: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/slice_6863_Update/cr
      -- CP-element group 30: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/slice_6863_Update/$entry
      -- 
    cr_3021_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_3021_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => rng_daemon_CP_2934_elements(30), ack => slice_6863_inst_req_1); -- 
    rng_daemon_cp_element_group_30: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 30) := "rng_daemon_cp_element_group_30"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= rng_daemon_CP_2934_elements(34);
      gj_rng_daemon_cp_element_group_30 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => rng_daemon_CP_2934_elements(30), clk => clk, reset => reset); --
    end block;
    -- CP-element group 31:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 31: predecessors 
    -- CP-element group 31: 	16 
    -- CP-element group 31: successors 
    -- CP-element group 31: marked-successors 
    -- CP-element group 31: 	14 
    -- CP-element group 31:  members (3) 
      -- CP-element group 31: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/slice_6863_Sample/$exit
      -- CP-element group 31: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/slice_6863_sample_completed_
      -- CP-element group 31: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/slice_6863_Sample/ra
      -- 
    ra_3017_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 31_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => slice_6863_inst_ack_0, ack => rng_daemon_CP_2934_elements(31)); -- 
    -- CP-element group 32:  transition  input  bypass  pipeline-parent 
    -- CP-element group 32: predecessors 
    -- CP-element group 32: 	30 
    -- CP-element group 32: successors 
    -- CP-element group 32: 	33 
    -- CP-element group 32:  members (3) 
      -- CP-element group 32: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/slice_6863_Update/$exit
      -- CP-element group 32: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/slice_6863_update_completed_
      -- CP-element group 32: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/slice_6863_Update/ca
      -- 
    ca_3022_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 32_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => slice_6863_inst_ack_1, ack => rng_daemon_CP_2934_elements(32)); -- 
    -- CP-element group 33:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 33: predecessors 
    -- CP-element group 33: 	32 
    -- CP-element group 33: marked-predecessors 
    -- CP-element group 33: 	35 
    -- CP-element group 33: successors 
    -- CP-element group 33: 	34 
    -- CP-element group 33:  members (3) 
      -- CP-element group 33: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/WPIPE_random_number_2_6861_sample_start_
      -- CP-element group 33: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/WPIPE_random_number_2_6861_Sample/$entry
      -- CP-element group 33: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/WPIPE_random_number_2_6861_Sample/req
      -- 
    req_3030_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_3030_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => rng_daemon_CP_2934_elements(33), ack => WPIPE_random_number_2_6861_inst_req_0); -- 
    rng_daemon_cp_element_group_33: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 30) := "rng_daemon_cp_element_group_33"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= rng_daemon_CP_2934_elements(32) & rng_daemon_CP_2934_elements(35);
      gj_rng_daemon_cp_element_group_33 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => rng_daemon_CP_2934_elements(33), clk => clk, reset => reset); --
    end block;
    -- CP-element group 34:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 34: predecessors 
    -- CP-element group 34: 	33 
    -- CP-element group 34: successors 
    -- CP-element group 34: 	35 
    -- CP-element group 34: marked-successors 
    -- CP-element group 34: 	30 
    -- CP-element group 34:  members (6) 
      -- CP-element group 34: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/WPIPE_random_number_2_6861_sample_completed_
      -- CP-element group 34: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/WPIPE_random_number_2_6861_update_start_
      -- CP-element group 34: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/WPIPE_random_number_2_6861_Sample/$exit
      -- CP-element group 34: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/WPIPE_random_number_2_6861_Sample/ack
      -- CP-element group 34: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/WPIPE_random_number_2_6861_Update/$entry
      -- CP-element group 34: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/WPIPE_random_number_2_6861_Update/req
      -- 
    ack_3031_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 34_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_random_number_2_6861_inst_ack_0, ack => rng_daemon_CP_2934_elements(34)); -- 
    req_3035_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_3035_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => rng_daemon_CP_2934_elements(34), ack => WPIPE_random_number_2_6861_inst_req_1); -- 
    -- CP-element group 35:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 35: predecessors 
    -- CP-element group 35: 	34 
    -- CP-element group 35: successors 
    -- CP-element group 35: 	37 
    -- CP-element group 35: marked-successors 
    -- CP-element group 35: 	33 
    -- CP-element group 35:  members (3) 
      -- CP-element group 35: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/WPIPE_random_number_2_6861_update_completed_
      -- CP-element group 35: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/WPIPE_random_number_2_6861_Update/$exit
      -- CP-element group 35: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/WPIPE_random_number_2_6861_Update/ack
      -- 
    ack_3036_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 35_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_random_number_2_6861_inst_ack_1, ack => rng_daemon_CP_2934_elements(35)); -- 
    -- CP-element group 36:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 36: predecessors 
    -- CP-element group 36: 	9 
    -- CP-element group 36: successors 
    -- CP-element group 36: 	10 
    -- CP-element group 36:  members (1) 
      -- CP-element group 36: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/loop_body_delay_to_condition_start
      -- 
    -- Element group rng_daemon_CP_2934_elements(36) is a control-delay.
    cp_element_36_delay: control_delay_element  generic map(name => " 36_delay", delay_value => 1)  port map(req => rng_daemon_CP_2934_elements(9), ack => rng_daemon_CP_2934_elements(36), clk => clk, reset =>reset);
    -- CP-element group 37:  join  transition  bypass  pipeline-parent 
    -- CP-element group 37: predecessors 
    -- CP-element group 37: 	35 
    -- CP-element group 37: 	15 
    -- CP-element group 37: successors 
    -- CP-element group 37: 	6 
    -- CP-element group 37:  members (1) 
      -- CP-element group 37: 	 branch_block_stmt_6829/do_while_stmt_6830/do_while_stmt_6830_loop_body/$exit
      -- 
    rng_daemon_cp_element_group_37: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 7);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 30) := "rng_daemon_cp_element_group_37"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= rng_daemon_CP_2934_elements(35) & rng_daemon_CP_2934_elements(15);
      gj_rng_daemon_cp_element_group_37 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => rng_daemon_CP_2934_elements(37), clk => clk, reset => reset); --
    end block;
    -- CP-element group 38:  transition  input  bypass  pipeline-parent 
    -- CP-element group 38: predecessors 
    -- CP-element group 38: 	5 
    -- CP-element group 38: successors 
    -- CP-element group 38:  members (2) 
      -- CP-element group 38: 	 branch_block_stmt_6829/do_while_stmt_6830/loop_exit/$exit
      -- CP-element group 38: 	 branch_block_stmt_6829/do_while_stmt_6830/loop_exit/ack
      -- 
    ack_3041_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 38_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_6830_branch_ack_0, ack => rng_daemon_CP_2934_elements(38)); -- 
    -- CP-element group 39:  transition  input  bypass  pipeline-parent 
    -- CP-element group 39: predecessors 
    -- CP-element group 39: 	5 
    -- CP-element group 39: successors 
    -- CP-element group 39:  members (2) 
      -- CP-element group 39: 	 branch_block_stmt_6829/do_while_stmt_6830/loop_taken/$exit
      -- CP-element group 39: 	 branch_block_stmt_6829/do_while_stmt_6830/loop_taken/ack
      -- 
    ack_3045_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 39_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_6830_branch_ack_1, ack => rng_daemon_CP_2934_elements(39)); -- 
    -- CP-element group 40:  transition  bypass  pipeline-parent 
    -- CP-element group 40: predecessors 
    -- CP-element group 40: 	3 
    -- CP-element group 40: successors 
    -- CP-element group 40: 	1 
    -- CP-element group 40:  members (1) 
      -- CP-element group 40: 	 branch_block_stmt_6829/do_while_stmt_6830/$exit
      -- 
    rng_daemon_CP_2934_elements(40) <= rng_daemon_CP_2934_elements(3);
    rng_daemon_do_while_stmt_6830_terminator_3046: loop_terminator -- 
      generic map (name => " rng_daemon_do_while_stmt_6830_terminator_3046", max_iterations_in_flight =>7) 
      port map(loop_body_exit => rng_daemon_CP_2934_elements(6),loop_continue => rng_daemon_CP_2934_elements(39),loop_terminate => rng_daemon_CP_2934_elements(38),loop_back => rng_daemon_CP_2934_elements(4),loop_exit => rng_daemon_CP_2934_elements(3),clk => clk, reset => reset); -- 
    phi_stmt_6832_phi_seq_3008_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= rng_daemon_CP_2934_elements(19);
      rng_daemon_CP_2934_elements(22)<= src_sample_reqs(0);
      src_sample_acks(0)  <= rng_daemon_CP_2934_elements(22);
      rng_daemon_CP_2934_elements(23)<= src_update_reqs(0);
      src_update_acks(0)  <= rng_daemon_CP_2934_elements(24);
      rng_daemon_CP_2934_elements(20) <= phi_mux_reqs(0);
      triggers(1)  <= rng_daemon_CP_2934_elements(17);
      rng_daemon_CP_2934_elements(26)<= src_sample_reqs(1);
      src_sample_acks(1)  <= rng_daemon_CP_2934_elements(28);
      rng_daemon_CP_2934_elements(27)<= src_update_reqs(1);
      src_update_acks(1)  <= rng_daemon_CP_2934_elements(29);
      rng_daemon_CP_2934_elements(18) <= phi_mux_reqs(1);
      phi_stmt_6832_phi_seq_3008 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_6832_phi_seq_3008") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => rng_daemon_CP_2934_elements(11), 
          phi_sample_ack => rng_daemon_CP_2934_elements(15), 
          phi_update_req => rng_daemon_CP_2934_elements(14), 
          phi_update_ack => rng_daemon_CP_2934_elements(16), 
          phi_mux_ack => rng_daemon_CP_2934_elements(21), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    entry_tmerge_2959_block : block -- 
      signal preds : BooleanArray(0 to 1);
      begin -- 
        preds(0)  <= rng_daemon_CP_2934_elements(7);
        preds(1)  <= rng_daemon_CP_2934_elements(8);
        entry_tmerge_2959 : transition_merge -- 
          generic map(name => " entry_tmerge_2959")
          port map (preds => preds, symbol_out => rng_daemon_CP_2934_elements(9));
          -- 
    end block;
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal BITSEL_u16_u1_6845_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u16_u1_6849_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u16_u1_6853_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u16_u1_6856_wire : std_logic_vector(0 downto 0);
    signal XOR_u1_u1_6846_wire : std_logic_vector(0 downto 0);
    signal XOR_u1_u1_6850_wire : std_logic_vector(0 downto 0);
    signal XOR_u1_u1_6857_wire : std_logic_vector(0 downto 0);
    signal XOR_u1_u1_6858_wire : std_logic_vector(0 downto 0);
    signal konst_6844_wire_constant : std_logic_vector(15 downto 0);
    signal konst_6848_wire_constant : std_logic_vector(15 downto 0);
    signal konst_6852_wire_constant : std_logic_vector(15 downto 0);
    signal konst_6855_wire_constant : std_logic_vector(15 downto 0);
    signal konst_6866_wire_constant : std_logic_vector(0 downto 0);
    signal next_sr_6860 : std_logic_vector(15 downto 0);
    signal next_sr_6860_6836_buffered : std_logic_vector(15 downto 0);
    signal slice_6840_wire : std_logic_vector(14 downto 0);
    signal slice_6863_wire : std_logic_vector(1 downto 0);
    signal sr_6832 : std_logic_vector(15 downto 0);
    signal type_cast_6835_wire_constant : std_logic_vector(15 downto 0);
    signal type_cast_6842_wire_constant : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    konst_6844_wire_constant <= "0000000000001111";
    konst_6848_wire_constant <= "0000000000001101";
    konst_6852_wire_constant <= "0000000000001100";
    konst_6855_wire_constant <= "0000000000001010";
    konst_6866_wire_constant <= "1";
    type_cast_6835_wire_constant <= "0000000000000001";
    type_cast_6842_wire_constant <= "1";
    phi_stmt_6832: Block -- phi operator 
      signal idata: std_logic_vector(31 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= type_cast_6835_wire_constant & next_sr_6860_6836_buffered;
      req <= phi_stmt_6832_req_0 & phi_stmt_6832_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_6832",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 16) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_6832_ack_0,
          idata => idata,
          odata => sr_6832,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_6832
    -- flow-through slice operator slice_6840_inst
    slice_6840_wire <= sr_6832(14 downto 0);
    slice_6863_inst_block : block -- 
      signal sample_req, sample_ack, update_req, update_ack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      sample_req(0) <= slice_6863_inst_req_0;
      slice_6863_inst_ack_0<= sample_ack(0);
      update_req(0) <= slice_6863_inst_req_1;
      slice_6863_inst_ack_1<= update_ack(0);
      slice_6863_inst: SliceSplitProtocol generic map(name => "slice_6863_inst", in_data_width => 16, high_index => 15, low_index => 14, buffering => 1, flow_through => false,  full_rate => true) -- 
        port map( din => sr_6832, dout => slice_6863_wire, sample_req => sample_req(0) , sample_ack => sample_ack(0) , update_req => update_req(0) , update_ack => update_ack(0) , clk => clk, reset => reset); -- 
      -- 
    end block;
    next_sr_6860_6836_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= next_sr_6860_6836_buf_req_0;
      next_sr_6860_6836_buf_ack_0<= wack(0);
      rreq(0) <= next_sr_6860_6836_buf_req_1;
      next_sr_6860_6836_buf_ack_1<= rack(0);
      next_sr_6860_6836_buf : InterlockBuffer generic map ( -- 
        name => "next_sr_6860_6836_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 16,
        out_data_width => 16,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => next_sr_6860,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => next_sr_6860_6836_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    do_while_stmt_6830_branch: Block -- 
      -- branch-block
      signal condition_sig : std_logic_vector(0 downto 0);
      begin 
      condition_sig <= konst_6866_wire_constant;
      branch_instance: BranchBase -- 
        generic map( name => "do_while_stmt_6830_branch", condition_width => 1,  bypass_flag => true)
        port map( -- 
          condition => condition_sig,
          req => do_while_stmt_6830_branch_req_0,
          ack0 => do_while_stmt_6830_branch_ack_0,
          ack1 => do_while_stmt_6830_branch_ack_1,
          clk => clk,
          reset => reset); -- 
      --
    end Block; -- branch-block
    -- flow through binary operator BITSEL_u16_u1_6845_inst
    process(sr_6832) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(sr_6832, konst_6844_wire_constant, tmp_var);
      BITSEL_u16_u1_6845_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u16_u1_6849_inst
    process(sr_6832) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(sr_6832, konst_6848_wire_constant, tmp_var);
      BITSEL_u16_u1_6849_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u16_u1_6853_inst
    process(sr_6832) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(sr_6832, konst_6852_wire_constant, tmp_var);
      BITSEL_u16_u1_6853_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u16_u1_6856_inst
    process(sr_6832) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(sr_6832, konst_6855_wire_constant, tmp_var);
      BITSEL_u16_u1_6856_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u15_u16_6859_inst
    process(slice_6840_wire, XOR_u1_u1_6858_wire) -- 
      variable tmp_var : std_logic_vector(15 downto 0); -- 
    begin -- 
      ApConcat_proc(slice_6840_wire, XOR_u1_u1_6858_wire, tmp_var);
      next_sr_6860 <= tmp_var; --
    end process;
    -- flow through binary operator XOR_u1_u1_6846_inst
    XOR_u1_u1_6846_wire <= (BITSEL_u16_u1_6845_wire xor type_cast_6842_wire_constant);
    -- flow through binary operator XOR_u1_u1_6850_inst
    XOR_u1_u1_6850_wire <= (XOR_u1_u1_6846_wire xor BITSEL_u16_u1_6849_wire);
    -- flow through binary operator XOR_u1_u1_6857_inst
    XOR_u1_u1_6857_wire <= (BITSEL_u16_u1_6853_wire xor BITSEL_u16_u1_6856_wire);
    -- flow through binary operator XOR_u1_u1_6858_inst
    XOR_u1_u1_6858_wire <= (XOR_u1_u1_6850_wire xor XOR_u1_u1_6857_wire);
    -- shared outport operator group (0) : WPIPE_random_number_2_6861_inst 
    OutportGroup_0: Block -- 
      signal data_in: std_logic_vector(1 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_random_number_2_6861_inst_req_0;
      WPIPE_random_number_2_6861_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_random_number_2_6861_inst_req_1;
      WPIPE_random_number_2_6861_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= slice_6863_wire;
      random_number_2_write_0_gI: SplitGuardInterface generic map(name => "random_number_2_write_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      random_number_2_write_0: OutputPortRevised -- 
        generic map ( name => "random_number_2", data_width => 2, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => random_number_2_pipe_write_req(0),
          oack => random_number_2_pipe_write_ack(0),
          odata => random_number_2_pipe_write_data(1 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    -- 
  end Block; -- data_path
  -- 
end rng_daemon_arch;
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
library teu_ifetch;
use teu_ifetch.ifetch_global_package.all;
entity satDecrement_Volatile is -- 
  port ( -- 
    x : in  std_logic_vector(1 downto 0);
    y : out  std_logic_vector(1 downto 0)-- 
  );
  -- 
end entity satDecrement_Volatile;
architecture satDecrement_Volatile_arch of satDecrement_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(2-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal x_buffer :  std_logic_vector(1 downto 0);
  -- output port buffer signals
  signal y_buffer :  std_logic_vector(1 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  x_buffer <= x;
  -- output handling  -------------------------------------------------------
  y <= y_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal SUB_u2_u2_1685_wire : std_logic_vector(1 downto 0);
    signal UGT_u2_u1_1682_wire : std_logic_vector(0 downto 0);
    signal konst_1681_wire_constant : std_logic_vector(1 downto 0);
    signal konst_1684_wire_constant : std_logic_vector(1 downto 0);
    -- 
  begin -- 
    konst_1681_wire_constant <= "00";
    konst_1684_wire_constant <= "01";
    -- flow-through select operator MUX_1687_inst
    y_buffer <= SUB_u2_u2_1685_wire when (UGT_u2_u1_1682_wire(0) /=  '0') else x_buffer;
    -- flow through binary operator SUB_u2_u2_1685_inst
    SUB_u2_u2_1685_wire <= std_logic_vector(unsigned(x_buffer) - unsigned(konst_1684_wire_constant));
    -- flow through binary operator UGT_u2_u1_1682_inst
    process(x_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUgt_proc(x_buffer, konst_1681_wire_constant, tmp_var);
      UGT_u2_u1_1682_wire <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end satDecrement_Volatile_arch;
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
library teu_ifetch;
use teu_ifetch.ifetch_global_package.all;
entity satIncrement_Volatile is -- 
  port ( -- 
    x : in  std_logic_vector(1 downto 0);
    y : out  std_logic_vector(1 downto 0)-- 
  );
  -- 
end entity satIncrement_Volatile;
architecture satIncrement_Volatile_arch of satIncrement_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(2-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal x_buffer :  std_logic_vector(1 downto 0);
  -- output port buffer signals
  signal y_buffer :  std_logic_vector(1 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  x_buffer <= x;
  -- output handling  -------------------------------------------------------
  y <= y_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal ADD_u2_u2_1699_wire : std_logic_vector(1 downto 0);
    signal ULT_u2_u1_1696_wire : std_logic_vector(0 downto 0);
    signal konst_1695_wire_constant : std_logic_vector(1 downto 0);
    signal konst_1698_wire_constant : std_logic_vector(1 downto 0);
    -- 
  begin -- 
    konst_1695_wire_constant <= "11";
    konst_1698_wire_constant <= "01";
    -- flow-through select operator MUX_1701_inst
    y_buffer <= ADD_u2_u2_1699_wire when (ULT_u2_u1_1696_wire(0) /=  '0') else x_buffer;
    -- flow through binary operator ADD_u2_u2_1699_inst
    ADD_u2_u2_1699_wire <= std_logic_vector(unsigned(x_buffer) + unsigned(konst_1698_wire_constant));
    -- flow through binary operator ULT_u2_u1_1696_inst
    process(x_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(x_buffer, konst_1695_wire_constant, tmp_var);
      ULT_u2_u1_1696_wire <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end satIncrement_Volatile_arch;
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
library teu_ifetch;
use teu_ifetch.ifetch_global_package.all;
entity ifetch is  -- system 
  port (-- 
    clk : in std_logic;
    reset : in std_logic;
    ENV_to_CPU_irl: in std_logic_vector(7 downto 0);
    ICACHE_to_CPU_response_pipe_write_data: in std_logic_vector(89 downto 0);
    ICACHE_to_CPU_response_pipe_write_req : in std_logic_vector(0 downto 0);
    ICACHE_to_CPU_response_pipe_write_ack : out std_logic_vector(0 downto 0);
    NOBLOCK_CPU_to_ICACHE_command_pipe_read_data: out std_logic_vector(40 downto 0);
    NOBLOCK_CPU_to_ICACHE_command_pipe_read_req : in std_logic_vector(0 downto 0);
    NOBLOCK_CPU_to_ICACHE_command_pipe_read_ack : out std_logic_vector(0 downto 0);
    ccu_to_teu_pipe_write_data: in std_logic_vector(106 downto 0);
    ccu_to_teu_pipe_write_req : in std_logic_vector(0 downto 0);
    ccu_to_teu_pipe_write_ack : out std_logic_vector(0 downto 0);
    noblock_teu_idispatch_to_ifetch_pipe_write_data: in std_logic_vector(147 downto 0);
    noblock_teu_idispatch_to_ifetch_pipe_write_req : in std_logic_vector(0 downto 0);
    noblock_teu_idispatch_to_ifetch_pipe_write_ack : out std_logic_vector(0 downto 0);
    noblock_teu_ifetch_branch_predictor_update_pipe_write_data: in std_logic_vector(62 downto 0);
    noblock_teu_ifetch_branch_predictor_update_pipe_write_req : in std_logic_vector(0 downto 0);
    noblock_teu_ifetch_branch_predictor_update_pipe_write_ack : out std_logic_vector(0 downto 0);
    teu_ifetch_to_idecode_extended_pipe_read_data: out std_logic_vector(223 downto 0);
    teu_ifetch_to_idecode_extended_pipe_read_req : in std_logic_vector(0 downto 0);
    teu_ifetch_to_idecode_extended_pipe_read_ack : out std_logic_vector(0 downto 0);
    teu_ras_access_pipe_pipe_write_data: in std_logic_vector(32 downto 0);
    teu_ras_access_pipe_pipe_write_req : in std_logic_vector(0 downto 0);
    teu_ras_access_pipe_pipe_write_ack : out std_logic_vector(0 downto 0)); -- 
  -- 
end entity; 
architecture ifetch_arch  of ifetch is -- system-architecture 
  -- interface signals to connect to memory space memory_space_1
  -- declarations related to module bpbV3_daemon
  component bpbV3_daemon is -- 
    generic (tag_length : integer); 
    port ( -- 
      noblock_teu_ifetch_branch_predictor_lookup_command_pipe_read_req : out  std_logic_vector(0 downto 0);
      noblock_teu_ifetch_branch_predictor_lookup_command_pipe_read_ack : in   std_logic_vector(0 downto 0);
      noblock_teu_ifetch_branch_predictor_lookup_command_pipe_read_data : in   std_logic_vector(30 downto 0);
      noblock_teu_ifetch_branch_predictor_update_pipe_read_req : out  std_logic_vector(0 downto 0);
      noblock_teu_ifetch_branch_predictor_update_pipe_read_ack : in   std_logic_vector(0 downto 0);
      noblock_teu_ifetch_branch_predictor_update_pipe_read_data : in   std_logic_vector(62 downto 0);
      random_number_2 : in std_logic_vector(1 downto 0);
      teu_ifetch_branch_predictor_lookup_response_pipe_write_req : out  std_logic_vector(0 downto 0);
      teu_ifetch_branch_predictor_lookup_response_pipe_write_ack : in   std_logic_vector(0 downto 0);
      teu_ifetch_branch_predictor_lookup_response_pipe_write_data : out  std_logic_vector(30 downto 0);
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
  -- argument signals for module bpbV3_daemon
  signal bpbV3_daemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal bpbV3_daemon_tag_out   : std_logic_vector(1 downto 0);
  signal bpbV3_daemon_start_req : std_logic;
  signal bpbV3_daemon_start_ack : std_logic;
  signal bpbV3_daemon_fin_req   : std_logic;
  signal bpbV3_daemon_fin_ack : std_logic;
  -- declarations related to module bpbV3_dual_port_mem
  -- declarations related to module branch_predict
  -- declarations related to module calculate_potential_nnpc
  -- declarations related to module calculate_updated_entry
  -- declarations related to module decode_cti_for_offset_calculation
  -- declarations related to module decode_is_flush_asi
  -- declarations related to module early_decode_for_fetch
  -- declarations related to module generic_pc_adder
  -- declarations related to module ifetch_main_daemon
  component ifetch_main_daemon is -- 
    generic (tag_length : integer); 
    port ( -- 
      ICACHE_to_CPU_response_pipe_read_req : out  std_logic_vector(0 downto 0);
      ICACHE_to_CPU_response_pipe_read_ack : in   std_logic_vector(0 downto 0);
      ICACHE_to_CPU_response_pipe_read_data : in   std_logic_vector(89 downto 0);
      ccu_to_teu_pipe_read_req : out  std_logic_vector(0 downto 0);
      ccu_to_teu_pipe_read_ack : in   std_logic_vector(0 downto 0);
      ccu_to_teu_pipe_read_data : in   std_logic_vector(106 downto 0);
      noblock_ifetch_substream_update_pipe_read_req : out  std_logic_vector(0 downto 0);
      noblock_ifetch_substream_update_pipe_read_ack : in   std_logic_vector(0 downto 0);
      noblock_ifetch_substream_update_pipe_read_data : in   std_logic_vector(110 downto 0);
      noblock_teu_idispatch_to_ifetch_pipe_read_req : out  std_logic_vector(0 downto 0);
      noblock_teu_idispatch_to_ifetch_pipe_read_ack : in   std_logic_vector(0 downto 0);
      noblock_teu_idispatch_to_ifetch_pipe_read_data : in   std_logic_vector(147 downto 0);
      teu_ifetch_branch_predictor_lookup_response_pipe_read_req : out  std_logic_vector(0 downto 0);
      teu_ifetch_branch_predictor_lookup_response_pipe_read_ack : in   std_logic_vector(0 downto 0);
      teu_ifetch_branch_predictor_lookup_response_pipe_read_data : in   std_logic_vector(30 downto 0);
      ENV_to_CPU_irl : in std_logic_vector(7 downto 0);
      teu_ras_top_of_stack : in std_logic_vector(31 downto 0);
      NOBLOCK_CPU_to_ICACHE_command_pipe_write_req : out  std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_ICACHE_command_pipe_write_ack : in   std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_ICACHE_command_pipe_write_data : out  std_logic_vector(40 downto 0);
      ifetch_issue_to_regulator_pipe_pipe_write_req : out  std_logic_vector(0 downto 0);
      ifetch_issue_to_regulator_pipe_pipe_write_ack : in   std_logic_vector(0 downto 0);
      ifetch_issue_to_regulator_pipe_pipe_write_data : out  std_logic_vector(259 downto 0);
      noblock_teu_ifetch_branch_predictor_lookup_command_pipe_write_req : out  std_logic_vector(0 downto 0);
      noblock_teu_ifetch_branch_predictor_lookup_command_pipe_write_ack : in   std_logic_vector(0 downto 0);
      noblock_teu_ifetch_branch_predictor_lookup_command_pipe_write_data : out  std_logic_vector(30 downto 0);
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
  -- argument signals for module ifetch_main_daemon
  signal ifetch_main_daemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal ifetch_main_daemon_tag_out   : std_logic_vector(1 downto 0);
  signal ifetch_main_daemon_start_req : std_logic;
  signal ifetch_main_daemon_start_ack : std_logic;
  signal ifetch_main_daemon_fin_req   : std_logic;
  signal ifetch_main_daemon_fin_ack : std_logic;
  -- declarations related to module ifetch_regulator_daemon
  component ifetch_regulator_daemon is -- 
    generic (tag_length : integer); 
    port ( -- 
      ifetch_issue_to_regulator_pipe_pipe_read_req : out  std_logic_vector(0 downto 0);
      ifetch_issue_to_regulator_pipe_pipe_read_ack : in   std_logic_vector(0 downto 0);
      ifetch_issue_to_regulator_pipe_pipe_read_data : in   std_logic_vector(259 downto 0);
      noblock_ifetch_substream_update_pipe_write_req : out  std_logic_vector(0 downto 0);
      noblock_ifetch_substream_update_pipe_write_ack : in   std_logic_vector(0 downto 0);
      noblock_ifetch_substream_update_pipe_write_data : out  std_logic_vector(110 downto 0);
      teu_ifetch_to_idecode_extended_pipe_write_req : out  std_logic_vector(0 downto 0);
      teu_ifetch_to_idecode_extended_pipe_write_ack : in   std_logic_vector(0 downto 0);
      teu_ifetch_to_idecode_extended_pipe_write_data : out  std_logic_vector(223 downto 0);
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
  -- argument signals for module ifetch_regulator_daemon
  signal ifetch_regulator_daemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal ifetch_regulator_daemon_tag_out   : std_logic_vector(1 downto 0);
  signal ifetch_regulator_daemon_start_req : std_logic;
  signal ifetch_regulator_daemon_start_ack : std_logic;
  signal ifetch_regulator_daemon_fin_req   : std_logic;
  signal ifetch_regulator_daemon_fin_ack : std_logic;
  -- declarations related to module issue_instruction_logic
  -- declarations related to module ras_daemon
  -- argument signals for module ras_daemon
  signal ras_daemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal ras_daemon_tag_out   : std_logic_vector(1 downto 0);
  signal ras_daemon_start_req : std_logic;
  signal ras_daemon_start_ack : std_logic;
  signal ras_daemon_fin_req   : std_logic;
  signal ras_daemon_fin_ack : std_logic;
  -- declarations related to module rng_daemon
  component rng_daemon is -- 
    generic (tag_length : integer); 
    port ( -- 
      random_number_2_pipe_write_req : out  std_logic_vector(0 downto 0);
      random_number_2_pipe_write_ack : in   std_logic_vector(0 downto 0);
      random_number_2_pipe_write_data : out  std_logic_vector(1 downto 0);
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
  -- argument signals for module rng_daemon
  signal rng_daemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal rng_daemon_tag_out   : std_logic_vector(1 downto 0);
  signal rng_daemon_start_req : std_logic;
  signal rng_daemon_start_ack : std_logic;
  signal rng_daemon_fin_req   : std_logic;
  signal rng_daemon_fin_ack : std_logic;
  -- declarations related to module satDecrement
  -- declarations related to module satIncrement
  -- aggregate signals for read from pipe ICACHE_to_CPU_response
  signal ICACHE_to_CPU_response_pipe_read_data: std_logic_vector(89 downto 0);
  signal ICACHE_to_CPU_response_pipe_read_req: std_logic_vector(0 downto 0);
  signal ICACHE_to_CPU_response_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe NOBLOCK_CPU_to_ICACHE_command
  signal NOBLOCK_CPU_to_ICACHE_command_pipe_write_data: std_logic_vector(40 downto 0);
  signal NOBLOCK_CPU_to_ICACHE_command_pipe_write_req: std_logic_vector(0 downto 0);
  signal NOBLOCK_CPU_to_ICACHE_command_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe ccu_to_teu
  signal ccu_to_teu_pipe_read_data: std_logic_vector(106 downto 0);
  signal ccu_to_teu_pipe_read_req: std_logic_vector(0 downto 0);
  signal ccu_to_teu_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe ifetch_issue_to_regulator_pipe
  signal ifetch_issue_to_regulator_pipe_pipe_write_data: std_logic_vector(259 downto 0);
  signal ifetch_issue_to_regulator_pipe_pipe_write_req: std_logic_vector(0 downto 0);
  signal ifetch_issue_to_regulator_pipe_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe ifetch_issue_to_regulator_pipe
  signal ifetch_issue_to_regulator_pipe_pipe_read_data: std_logic_vector(259 downto 0);
  signal ifetch_issue_to_regulator_pipe_pipe_read_req: std_logic_vector(0 downto 0);
  signal ifetch_issue_to_regulator_pipe_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe noblock_ifetch_substream_update
  signal noblock_ifetch_substream_update_pipe_write_data: std_logic_vector(110 downto 0);
  signal noblock_ifetch_substream_update_pipe_write_req: std_logic_vector(0 downto 0);
  signal noblock_ifetch_substream_update_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe noblock_ifetch_substream_update
  signal noblock_ifetch_substream_update_pipe_read_data: std_logic_vector(110 downto 0);
  signal noblock_ifetch_substream_update_pipe_read_req: std_logic_vector(0 downto 0);
  signal noblock_ifetch_substream_update_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe noblock_teu_idispatch_to_ifetch
  signal noblock_teu_idispatch_to_ifetch_pipe_read_data: std_logic_vector(147 downto 0);
  signal noblock_teu_idispatch_to_ifetch_pipe_read_req: std_logic_vector(0 downto 0);
  signal noblock_teu_idispatch_to_ifetch_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe noblock_teu_ifetch_branch_predictor_lookup_command
  signal noblock_teu_ifetch_branch_predictor_lookup_command_pipe_write_data: std_logic_vector(30 downto 0);
  signal noblock_teu_ifetch_branch_predictor_lookup_command_pipe_write_req: std_logic_vector(0 downto 0);
  signal noblock_teu_ifetch_branch_predictor_lookup_command_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe noblock_teu_ifetch_branch_predictor_lookup_command
  signal noblock_teu_ifetch_branch_predictor_lookup_command_pipe_read_data: std_logic_vector(30 downto 0);
  signal noblock_teu_ifetch_branch_predictor_lookup_command_pipe_read_req: std_logic_vector(0 downto 0);
  signal noblock_teu_ifetch_branch_predictor_lookup_command_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe noblock_teu_ifetch_branch_predictor_update
  signal noblock_teu_ifetch_branch_predictor_update_pipe_read_data: std_logic_vector(62 downto 0);
  signal noblock_teu_ifetch_branch_predictor_update_pipe_read_req: std_logic_vector(0 downto 0);
  signal noblock_teu_ifetch_branch_predictor_update_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe random_number_2
  signal random_number_2_pipe_write_data: std_logic_vector(1 downto 0);
  signal random_number_2_pipe_write_req: std_logic_vector(0 downto 0);
  signal random_number_2_pipe_write_ack: std_logic_vector(0 downto 0);
  -- signal decl. for read from internal signal pipe random_number_2
  signal random_number_2: std_logic_vector(1 downto 0);
  -- aggregate signals for write to pipe teu_ifetch_branch_predictor_lookup_response
  signal teu_ifetch_branch_predictor_lookup_response_pipe_write_data: std_logic_vector(30 downto 0);
  signal teu_ifetch_branch_predictor_lookup_response_pipe_write_req: std_logic_vector(0 downto 0);
  signal teu_ifetch_branch_predictor_lookup_response_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe teu_ifetch_branch_predictor_lookup_response
  signal teu_ifetch_branch_predictor_lookup_response_pipe_read_data: std_logic_vector(30 downto 0);
  signal teu_ifetch_branch_predictor_lookup_response_pipe_read_req: std_logic_vector(0 downto 0);
  signal teu_ifetch_branch_predictor_lookup_response_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe teu_ifetch_to_idecode_extended
  signal teu_ifetch_to_idecode_extended_pipe_write_data: std_logic_vector(223 downto 0);
  signal teu_ifetch_to_idecode_extended_pipe_write_req: std_logic_vector(0 downto 0);
  signal teu_ifetch_to_idecode_extended_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe teu_ras_access_pipe
  signal teu_ras_access_pipe_pipe_read_data: std_logic_vector(32 downto 0);
  signal teu_ras_access_pipe_pipe_read_req: std_logic_vector(0 downto 0);
  signal teu_ras_access_pipe_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe teu_ras_top_of_stack
  signal teu_ras_top_of_stack_pipe_write_data: std_logic_vector(31 downto 0);
  signal teu_ras_top_of_stack_pipe_write_req: std_logic_vector(0 downto 0);
  signal teu_ras_top_of_stack_pipe_write_ack: std_logic_vector(0 downto 0);
  -- signal decl. for read from internal signal pipe teu_ras_top_of_stack
  signal teu_ras_top_of_stack: std_logic_vector(31 downto 0);
  -- gated clock signal declarations.
  -- 
begin -- 
  -- module bpbV3_daemon
  bpbV3_daemon_instance:bpbV3_daemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => bpbV3_daemon_start_req,
      start_ack => bpbV3_daemon_start_ack,
      fin_req => bpbV3_daemon_fin_req,
      fin_ack => bpbV3_daemon_fin_ack,
      clk => clk,
      reset => reset,
      noblock_teu_ifetch_branch_predictor_lookup_command_pipe_read_req => noblock_teu_ifetch_branch_predictor_lookup_command_pipe_read_req(0 downto 0),
      noblock_teu_ifetch_branch_predictor_lookup_command_pipe_read_ack => noblock_teu_ifetch_branch_predictor_lookup_command_pipe_read_ack(0 downto 0),
      noblock_teu_ifetch_branch_predictor_lookup_command_pipe_read_data => noblock_teu_ifetch_branch_predictor_lookup_command_pipe_read_data(30 downto 0),
      noblock_teu_ifetch_branch_predictor_update_pipe_read_req => noblock_teu_ifetch_branch_predictor_update_pipe_read_req(0 downto 0),
      noblock_teu_ifetch_branch_predictor_update_pipe_read_ack => noblock_teu_ifetch_branch_predictor_update_pipe_read_ack(0 downto 0),
      noblock_teu_ifetch_branch_predictor_update_pipe_read_data => noblock_teu_ifetch_branch_predictor_update_pipe_read_data(62 downto 0),
      random_number_2 => random_number_2,
      teu_ifetch_branch_predictor_lookup_response_pipe_write_req => teu_ifetch_branch_predictor_lookup_response_pipe_write_req(0 downto 0),
      teu_ifetch_branch_predictor_lookup_response_pipe_write_ack => teu_ifetch_branch_predictor_lookup_response_pipe_write_ack(0 downto 0),
      teu_ifetch_branch_predictor_lookup_response_pipe_write_data => teu_ifetch_branch_predictor_lookup_response_pipe_write_data(30 downto 0),
      tag_in => bpbV3_daemon_tag_in,
      tag_out => bpbV3_daemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  bpbV3_daemon_tag_in <= (others => '0');
  bpbV3_daemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => bpbV3_daemon_start_req, start_ack => bpbV3_daemon_start_ack,  fin_req => bpbV3_daemon_fin_req,  fin_ack => bpbV3_daemon_fin_ack);
  -- module ifetch_main_daemon
  ifetch_main_daemon_instance:ifetch_main_daemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => ifetch_main_daemon_start_req,
      start_ack => ifetch_main_daemon_start_ack,
      fin_req => ifetch_main_daemon_fin_req,
      fin_ack => ifetch_main_daemon_fin_ack,
      clk => clk,
      reset => reset,
      ENV_to_CPU_irl => ENV_to_CPU_irl,
      ICACHE_to_CPU_response_pipe_read_req => ICACHE_to_CPU_response_pipe_read_req(0 downto 0),
      ICACHE_to_CPU_response_pipe_read_ack => ICACHE_to_CPU_response_pipe_read_ack(0 downto 0),
      ICACHE_to_CPU_response_pipe_read_data => ICACHE_to_CPU_response_pipe_read_data(89 downto 0),
      ccu_to_teu_pipe_read_req => ccu_to_teu_pipe_read_req(0 downto 0),
      ccu_to_teu_pipe_read_ack => ccu_to_teu_pipe_read_ack(0 downto 0),
      ccu_to_teu_pipe_read_data => ccu_to_teu_pipe_read_data(106 downto 0),
      noblock_ifetch_substream_update_pipe_read_req => noblock_ifetch_substream_update_pipe_read_req(0 downto 0),
      noblock_ifetch_substream_update_pipe_read_ack => noblock_ifetch_substream_update_pipe_read_ack(0 downto 0),
      noblock_ifetch_substream_update_pipe_read_data => noblock_ifetch_substream_update_pipe_read_data(110 downto 0),
      noblock_teu_idispatch_to_ifetch_pipe_read_req => noblock_teu_idispatch_to_ifetch_pipe_read_req(0 downto 0),
      noblock_teu_idispatch_to_ifetch_pipe_read_ack => noblock_teu_idispatch_to_ifetch_pipe_read_ack(0 downto 0),
      noblock_teu_idispatch_to_ifetch_pipe_read_data => noblock_teu_idispatch_to_ifetch_pipe_read_data(147 downto 0),
      teu_ifetch_branch_predictor_lookup_response_pipe_read_req => teu_ifetch_branch_predictor_lookup_response_pipe_read_req(0 downto 0),
      teu_ifetch_branch_predictor_lookup_response_pipe_read_ack => teu_ifetch_branch_predictor_lookup_response_pipe_read_ack(0 downto 0),
      teu_ifetch_branch_predictor_lookup_response_pipe_read_data => teu_ifetch_branch_predictor_lookup_response_pipe_read_data(30 downto 0),
      teu_ras_top_of_stack => teu_ras_top_of_stack,
      NOBLOCK_CPU_to_ICACHE_command_pipe_write_req => NOBLOCK_CPU_to_ICACHE_command_pipe_write_req(0 downto 0),
      NOBLOCK_CPU_to_ICACHE_command_pipe_write_ack => NOBLOCK_CPU_to_ICACHE_command_pipe_write_ack(0 downto 0),
      NOBLOCK_CPU_to_ICACHE_command_pipe_write_data => NOBLOCK_CPU_to_ICACHE_command_pipe_write_data(40 downto 0),
      ifetch_issue_to_regulator_pipe_pipe_write_req => ifetch_issue_to_regulator_pipe_pipe_write_req(0 downto 0),
      ifetch_issue_to_regulator_pipe_pipe_write_ack => ifetch_issue_to_regulator_pipe_pipe_write_ack(0 downto 0),
      ifetch_issue_to_regulator_pipe_pipe_write_data => ifetch_issue_to_regulator_pipe_pipe_write_data(259 downto 0),
      noblock_teu_ifetch_branch_predictor_lookup_command_pipe_write_req => noblock_teu_ifetch_branch_predictor_lookup_command_pipe_write_req(0 downto 0),
      noblock_teu_ifetch_branch_predictor_lookup_command_pipe_write_ack => noblock_teu_ifetch_branch_predictor_lookup_command_pipe_write_ack(0 downto 0),
      noblock_teu_ifetch_branch_predictor_lookup_command_pipe_write_data => noblock_teu_ifetch_branch_predictor_lookup_command_pipe_write_data(30 downto 0),
      tag_in => ifetch_main_daemon_tag_in,
      tag_out => ifetch_main_daemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  ifetch_main_daemon_tag_in <= (others => '0');
  ifetch_main_daemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => ifetch_main_daemon_start_req, start_ack => ifetch_main_daemon_start_ack,  fin_req => ifetch_main_daemon_fin_req,  fin_ack => ifetch_main_daemon_fin_ack);
  -- module ifetch_regulator_daemon
  ifetch_regulator_daemon_instance:ifetch_regulator_daemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => ifetch_regulator_daemon_start_req,
      start_ack => ifetch_regulator_daemon_start_ack,
      fin_req => ifetch_regulator_daemon_fin_req,
      fin_ack => ifetch_regulator_daemon_fin_ack,
      clk => clk,
      reset => reset,
      ifetch_issue_to_regulator_pipe_pipe_read_req => ifetch_issue_to_regulator_pipe_pipe_read_req(0 downto 0),
      ifetch_issue_to_regulator_pipe_pipe_read_ack => ifetch_issue_to_regulator_pipe_pipe_read_ack(0 downto 0),
      ifetch_issue_to_regulator_pipe_pipe_read_data => ifetch_issue_to_regulator_pipe_pipe_read_data(259 downto 0),
      noblock_ifetch_substream_update_pipe_write_req => noblock_ifetch_substream_update_pipe_write_req(0 downto 0),
      noblock_ifetch_substream_update_pipe_write_ack => noblock_ifetch_substream_update_pipe_write_ack(0 downto 0),
      noblock_ifetch_substream_update_pipe_write_data => noblock_ifetch_substream_update_pipe_write_data(110 downto 0),
      teu_ifetch_to_idecode_extended_pipe_write_req => teu_ifetch_to_idecode_extended_pipe_write_req(0 downto 0),
      teu_ifetch_to_idecode_extended_pipe_write_ack => teu_ifetch_to_idecode_extended_pipe_write_ack(0 downto 0),
      teu_ifetch_to_idecode_extended_pipe_write_data => teu_ifetch_to_idecode_extended_pipe_write_data(223 downto 0),
      tag_in => ifetch_regulator_daemon_tag_in,
      tag_out => ifetch_regulator_daemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  ifetch_regulator_daemon_tag_in <= (others => '0');
  ifetch_regulator_daemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => ifetch_regulator_daemon_start_req, start_ack => ifetch_regulator_daemon_start_ack,  fin_req => ifetch_regulator_daemon_fin_req,  fin_ack => ifetch_regulator_daemon_fin_ack);
  -- module ras_daemon
  ras_daemon_instance:ras_daemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => ras_daemon_start_req,
      start_ack => ras_daemon_start_ack,
      fin_req => ras_daemon_fin_req,
      fin_ack => ras_daemon_fin_ack,
      clk => clk,
      reset => reset,
      teu_ras_access_pipe_pipe_read_req => teu_ras_access_pipe_pipe_read_req(0 downto 0),
      teu_ras_access_pipe_pipe_read_ack => teu_ras_access_pipe_pipe_read_ack(0 downto 0),
      teu_ras_access_pipe_pipe_read_data => teu_ras_access_pipe_pipe_read_data(32 downto 0),
      teu_ras_top_of_stack_pipe_write_req => teu_ras_top_of_stack_pipe_write_req(0 downto 0),
      teu_ras_top_of_stack_pipe_write_ack => teu_ras_top_of_stack_pipe_write_ack(0 downto 0),
      teu_ras_top_of_stack_pipe_write_data => teu_ras_top_of_stack_pipe_write_data(31 downto 0),
      tag_in => ras_daemon_tag_in,
      tag_out => ras_daemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  ras_daemon_tag_in <= (others => '0');
  ras_daemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => ras_daemon_start_req, start_ack => ras_daemon_start_ack,  fin_req => ras_daemon_fin_req,  fin_ack => ras_daemon_fin_ack);
  -- module rng_daemon
  rng_daemon_instance:rng_daemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => rng_daemon_start_req,
      start_ack => rng_daemon_start_ack,
      fin_req => rng_daemon_fin_req,
      fin_ack => rng_daemon_fin_ack,
      clk => clk,
      reset => reset,
      random_number_2_pipe_write_req => random_number_2_pipe_write_req(0 downto 0),
      random_number_2_pipe_write_ack => random_number_2_pipe_write_ack(0 downto 0),
      random_number_2_pipe_write_data => random_number_2_pipe_write_data(1 downto 0),
      tag_in => rng_daemon_tag_in,
      tag_out => rng_daemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  rng_daemon_tag_in <= (others => '0');
  rng_daemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => rng_daemon_start_req, start_ack => rng_daemon_start_ack,  fin_req => rng_daemon_fin_req,  fin_ack => rng_daemon_fin_ack);
  -- input signal-pipe ENV_to_CPU_irl accessed directly. 
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
  ccu_to_teu_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe ccu_to_teu",
      num_reads => 1,
      num_writes => 1,
      data_width => 107,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => ccu_to_teu_pipe_read_req,
      read_ack => ccu_to_teu_pipe_read_ack,
      read_data => ccu_to_teu_pipe_read_data,
      write_req => ccu_to_teu_pipe_write_req,
      write_ack => ccu_to_teu_pipe_write_ack,
      write_data => ccu_to_teu_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  ifetch_issue_to_regulator_pipe_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe ifetch_issue_to_regulator_pipe",
      num_reads => 1,
      num_writes => 1,
      data_width => 260,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => true,
      depth => 0 --
    )
    port map( -- 
      read_req => ifetch_issue_to_regulator_pipe_pipe_read_req,
      read_ack => ifetch_issue_to_regulator_pipe_pipe_read_ack,
      read_data => ifetch_issue_to_regulator_pipe_pipe_read_data,
      write_req => ifetch_issue_to_regulator_pipe_pipe_write_req,
      write_ack => ifetch_issue_to_regulator_pipe_pipe_write_ack,
      write_data => ifetch_issue_to_regulator_pipe_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  noblock_ifetch_substream_update_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe noblock_ifetch_substream_update",
      num_reads => 1,
      num_writes => 1,
      data_width => 111,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => noblock_ifetch_substream_update_pipe_read_req,
      read_ack => noblock_ifetch_substream_update_pipe_read_ack,
      read_data => noblock_ifetch_substream_update_pipe_read_data,
      write_req => noblock_ifetch_substream_update_pipe_write_req,
      write_ack => noblock_ifetch_substream_update_pipe_write_ack,
      write_data => noblock_ifetch_substream_update_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  noblock_teu_idispatch_to_ifetch_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe noblock_teu_idispatch_to_ifetch",
      num_reads => 1,
      num_writes => 1,
      data_width => 148,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => true,
      depth => 0 --
    )
    port map( -- 
      read_req => noblock_teu_idispatch_to_ifetch_pipe_read_req,
      read_ack => noblock_teu_idispatch_to_ifetch_pipe_read_ack,
      read_data => noblock_teu_idispatch_to_ifetch_pipe_read_data,
      write_req => noblock_teu_idispatch_to_ifetch_pipe_write_req,
      write_ack => noblock_teu_idispatch_to_ifetch_pipe_write_ack,
      write_data => noblock_teu_idispatch_to_ifetch_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  noblock_teu_ifetch_branch_predictor_lookup_command_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe noblock_teu_ifetch_branch_predictor_lookup_command",
      num_reads => 1,
      num_writes => 1,
      data_width => 31,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => true,
      depth => 0 --
    )
    port map( -- 
      read_req => noblock_teu_ifetch_branch_predictor_lookup_command_pipe_read_req,
      read_ack => noblock_teu_ifetch_branch_predictor_lookup_command_pipe_read_ack,
      read_data => noblock_teu_ifetch_branch_predictor_lookup_command_pipe_read_data,
      write_req => noblock_teu_ifetch_branch_predictor_lookup_command_pipe_write_req,
      write_ack => noblock_teu_ifetch_branch_predictor_lookup_command_pipe_write_ack,
      write_data => noblock_teu_ifetch_branch_predictor_lookup_command_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  noblock_teu_ifetch_branch_predictor_update_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe noblock_teu_ifetch_branch_predictor_update",
      num_reads => 1,
      num_writes => 1,
      data_width => 63,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => noblock_teu_ifetch_branch_predictor_update_pipe_read_req,
      read_ack => noblock_teu_ifetch_branch_predictor_update_pipe_read_ack,
      read_data => noblock_teu_ifetch_branch_predictor_update_pipe_read_data,
      write_req => noblock_teu_ifetch_branch_predictor_update_pipe_write_req,
      write_ack => noblock_teu_ifetch_branch_predictor_update_pipe_write_ack,
      write_data => noblock_teu_ifetch_branch_predictor_update_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  random_number_2_Signal: SignalBase -- 
    generic map( -- 
      name => "pipe random_number_2",
      volatile_flag => false,
      num_writes => 1,
      data_width => 2 --
    ) 
    port map( -- 
      read_data => random_number_2,
      write_req => random_number_2_pipe_write_req,
      write_ack => random_number_2_pipe_write_ack,
      write_data => random_number_2_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  teu_ifetch_branch_predictor_lookup_response_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe teu_ifetch_branch_predictor_lookup_response",
      num_reads => 1,
      num_writes => 1,
      data_width => 31,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => true,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_ifetch_branch_predictor_lookup_response_pipe_read_req,
      read_ack => teu_ifetch_branch_predictor_lookup_response_pipe_read_ack,
      read_data => teu_ifetch_branch_predictor_lookup_response_pipe_read_data,
      write_req => teu_ifetch_branch_predictor_lookup_response_pipe_write_req,
      write_ack => teu_ifetch_branch_predictor_lookup_response_pipe_write_ack,
      write_data => teu_ifetch_branch_predictor_lookup_response_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  teu_ifetch_to_idecode_extended_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe teu_ifetch_to_idecode_extended",
      num_reads => 1,
      num_writes => 1,
      data_width => 224,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_ifetch_to_idecode_extended_pipe_read_req,
      read_ack => teu_ifetch_to_idecode_extended_pipe_read_ack,
      read_data => teu_ifetch_to_idecode_extended_pipe_read_data,
      write_req => teu_ifetch_to_idecode_extended_pipe_write_req,
      write_ack => teu_ifetch_to_idecode_extended_pipe_write_ack,
      write_data => teu_ifetch_to_idecode_extended_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  teu_ras_access_pipe_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe teu_ras_access_pipe",
      num_reads => 1,
      num_writes => 1,
      data_width => 33,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => true,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_ras_access_pipe_pipe_read_req,
      read_ack => teu_ras_access_pipe_pipe_read_ack,
      read_data => teu_ras_access_pipe_pipe_read_data,
      write_req => teu_ras_access_pipe_pipe_write_req,
      write_ack => teu_ras_access_pipe_pipe_write_ack,
      write_data => teu_ras_access_pipe_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  teu_ras_top_of_stack_Signal: SignalBase -- 
    generic map( -- 
      name => "pipe teu_ras_top_of_stack",
      volatile_flag => true,
      num_writes => 1,
      data_width => 32 --
    ) 
    port map( -- 
      read_data => teu_ras_top_of_stack,
      write_req => teu_ras_top_of_stack_pipe_write_req,
      write_ack => teu_ras_top_of_stack_pipe_write_ack,
      write_data => teu_ras_top_of_stack_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- gated clock generators 
  -- 
end ifetch_arch;
