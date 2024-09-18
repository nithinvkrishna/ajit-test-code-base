-- VHDL global package produced by vc2vhdl from virtual circuit (vc) description 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
package debug_interface_global_package is -- 
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
  constant WIM_MASK : std_logic_vector(31 downto 0) := "00000000000000000000000011111111";
  constant WINDOW_OVERFLOW_TRAP_BIT_VEC : std_logic_vector(31 downto 0) := "00000000000000001000000000000000";
  constant WINDOW_OVERFLOW_TRAP_INDEX : std_logic_vector(31 downto 0) := "00000000000000000000000000001110";
  constant WINDOW_UNDERFLOW_TRAP_BIT_VEC : std_logic_vector(31 downto 0) := "00000000000000010000000000000000";
  constant WINDOW_UNDERFLOW_TRAP_INDEX : std_logic_vector(31 downto 0) := "00000000000000000000000000001111";
  constant WP_REGS_base_address : std_logic_vector(6 downto 0) := "0000000";
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
  component debug_interface is -- 
    port (-- 
      clk : in std_logic;
      reset : in std_logic;
      AJIT_to_ENV_debug_response_pipe_read_data: out std_logic_vector(31 downto 0);
      AJIT_to_ENV_debug_response_pipe_read_req : in std_logic_vector(0 downto 0);
      AJIT_to_ENV_debug_response_pipe_read_ack : out std_logic_vector(0 downto 0);
      ENV_to_AJIT_debug_command_pipe_write_data: in std_logic_vector(31 downto 0);
      ENV_to_AJIT_debug_command_pipe_write_req : in std_logic_vector(0 downto 0);
      ENV_to_AJIT_debug_command_pipe_write_ack : out std_logic_vector(0 downto 0);
      ccu_to_debug_interface_pipe_write_data: in std_logic_vector(32 downto 0);
      ccu_to_debug_interface_pipe_write_req : in std_logic_vector(0 downto 0);
      ccu_to_debug_interface_pipe_write_ack : out std_logic_vector(0 downto 0);
      debug_interface_to_ccu_pipe_read_data: out std_logic_vector(32 downto 0);
      debug_interface_to_ccu_pipe_read_req : in std_logic_vector(0 downto 0);
      debug_interface_to_ccu_pipe_read_ack : out std_logic_vector(0 downto 0)); -- 
    -- 
  end component;
  -- 
end package debug_interface_global_package;
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
library cpu_debug_interface;
use cpu_debug_interface.debug_interface_global_package.all;
entity inWardDaemon is -- 
  generic (tag_length : integer); 
  port ( -- 
    ENV_to_AJIT_debug_command_pipe_read_req : out  std_logic_vector(0 downto 0);
    ENV_to_AJIT_debug_command_pipe_read_ack : in   std_logic_vector(0 downto 0);
    ENV_to_AJIT_debug_command_pipe_read_data : in   std_logic_vector(31 downto 0);
    debug_interface_to_ccu_pipe_write_req : out  std_logic_vector(0 downto 0);
    debug_interface_to_ccu_pipe_write_ack : in   std_logic_vector(0 downto 0);
    debug_interface_to_ccu_pipe_write_data : out  std_logic_vector(32 downto 0);
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
end entity inWardDaemon;
architecture inWardDaemon_arch of inWardDaemon is -- 
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
  signal inWardDaemon_CP_3_start: Boolean;
  signal inWardDaemon_CP_3_symbol: Boolean;
  -- volatile/operator module components. 
  -- links between control-path and data-path
  signal WPIPE_debug_interface_to_ccu_1145_inst_ack_1 : boolean;
  signal WPIPE_debug_interface_to_ccu_1145_inst_req_1 : boolean;
  signal WPIPE_debug_interface_to_ccu_1145_inst_ack_0 : boolean;
  signal WPIPE_debug_interface_to_ccu_1145_inst_req_0 : boolean;
  signal RPIPE_ENV_to_AJIT_debug_command_1136_inst_ack_1 : boolean;
  signal RPIPE_ENV_to_AJIT_debug_command_1136_inst_req_1 : boolean;
  signal RPIPE_ENV_to_AJIT_debug_command_1136_inst_ack_0 : boolean;
  signal RPIPE_ENV_to_AJIT_debug_command_1136_inst_req_0 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "inWardDaemon_input_buffer", -- 
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
  inWardDaemon_CP_3_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "inWardDaemon_out_buffer", -- 
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
    preds <= inWardDaemon_CP_3_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
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
    preds <= inWardDaemon_CP_3_start & tag_ilock_write_ack_symbol;
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
    preds <= inWardDaemon_CP_3_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  inWardDaemon_CP_3: Block -- control-path 
    signal inWardDaemon_CP_3_elements: BooleanArray(6 downto 0);
    -- 
  begin -- 
    inWardDaemon_CP_3_elements(0) <= inWardDaemon_CP_3_start;
    inWardDaemon_CP_3_symbol <= inWardDaemon_CP_3_elements(1);
    -- CP-element group 0:  branch  transition  place  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	6 
    -- CP-element group 0:  members (7) 
      -- CP-element group 0: 	 branch_block_stmt_1133/merge_stmt_1134__entry__
      -- CP-element group 0: 	 branch_block_stmt_1133/merge_stmt_1134__entry___PhiReq/$exit
      -- CP-element group 0: 	 branch_block_stmt_1133/merge_stmt_1134__entry___PhiReq/$entry
      -- CP-element group 0: 	 branch_block_stmt_1133/merge_stmt_1134_dead_link/$entry
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 branch_block_stmt_1133/$entry
      -- CP-element group 0: 	 branch_block_stmt_1133/branch_block_stmt_1133__entry__
      -- 
    -- CP-element group 1:  transition  place  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: successors 
    -- CP-element group 1:  members (3) 
      -- CP-element group 1: 	 $exit
      -- CP-element group 1: 	 branch_block_stmt_1133/branch_block_stmt_1133__exit__
      -- CP-element group 1: 	 branch_block_stmt_1133/$exit
      -- 
    inWardDaemon_CP_3_elements(1) <= false; 
    -- CP-element group 2:  transition  input  output  bypass 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	6 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	3 
    -- CP-element group 2:  members (6) 
      -- CP-element group 2: 	 branch_block_stmt_1133/assign_stmt_1137_to_assign_stmt_1147/RPIPE_ENV_to_AJIT_debug_command_1136_Sample/$exit
      -- CP-element group 2: 	 branch_block_stmt_1133/assign_stmt_1137_to_assign_stmt_1147/RPIPE_ENV_to_AJIT_debug_command_1136_update_start_
      -- CP-element group 2: 	 branch_block_stmt_1133/assign_stmt_1137_to_assign_stmt_1147/RPIPE_ENV_to_AJIT_debug_command_1136_sample_completed_
      -- CP-element group 2: 	 branch_block_stmt_1133/assign_stmt_1137_to_assign_stmt_1147/RPIPE_ENV_to_AJIT_debug_command_1136_Update/cr
      -- CP-element group 2: 	 branch_block_stmt_1133/assign_stmt_1137_to_assign_stmt_1147/RPIPE_ENV_to_AJIT_debug_command_1136_Update/$entry
      -- CP-element group 2: 	 branch_block_stmt_1133/assign_stmt_1137_to_assign_stmt_1147/RPIPE_ENV_to_AJIT_debug_command_1136_Sample/ra
      -- 
    ra_27_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 2_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ENV_to_AJIT_debug_command_1136_inst_ack_0, ack => inWardDaemon_CP_3_elements(2)); -- 
    cr_31_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_31_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => inWardDaemon_CP_3_elements(2), ack => RPIPE_ENV_to_AJIT_debug_command_1136_inst_req_1); -- 
    -- CP-element group 3:  transition  input  output  bypass 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: 	2 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	4 
    -- CP-element group 3:  members (6) 
      -- CP-element group 3: 	 branch_block_stmt_1133/assign_stmt_1137_to_assign_stmt_1147/RPIPE_ENV_to_AJIT_debug_command_1136_update_completed_
      -- CP-element group 3: 	 branch_block_stmt_1133/assign_stmt_1137_to_assign_stmt_1147/WPIPE_debug_interface_to_ccu_1145_Sample/req
      -- CP-element group 3: 	 branch_block_stmt_1133/assign_stmt_1137_to_assign_stmt_1147/WPIPE_debug_interface_to_ccu_1145_Sample/$entry
      -- CP-element group 3: 	 branch_block_stmt_1133/assign_stmt_1137_to_assign_stmt_1147/WPIPE_debug_interface_to_ccu_1145_sample_start_
      -- CP-element group 3: 	 branch_block_stmt_1133/assign_stmt_1137_to_assign_stmt_1147/RPIPE_ENV_to_AJIT_debug_command_1136_Update/ca
      -- CP-element group 3: 	 branch_block_stmt_1133/assign_stmt_1137_to_assign_stmt_1147/RPIPE_ENV_to_AJIT_debug_command_1136_Update/$exit
      -- 
    ca_32_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 3_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ENV_to_AJIT_debug_command_1136_inst_ack_1, ack => inWardDaemon_CP_3_elements(3)); -- 
    req_40_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_40_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => inWardDaemon_CP_3_elements(3), ack => WPIPE_debug_interface_to_ccu_1145_inst_req_0); -- 
    -- CP-element group 4:  transition  input  output  bypass 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: 	3 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	5 
    -- CP-element group 4:  members (6) 
      -- CP-element group 4: 	 branch_block_stmt_1133/assign_stmt_1137_to_assign_stmt_1147/WPIPE_debug_interface_to_ccu_1145_Update/req
      -- CP-element group 4: 	 branch_block_stmt_1133/assign_stmt_1137_to_assign_stmt_1147/WPIPE_debug_interface_to_ccu_1145_Update/$entry
      -- CP-element group 4: 	 branch_block_stmt_1133/assign_stmt_1137_to_assign_stmt_1147/WPIPE_debug_interface_to_ccu_1145_Sample/ack
      -- CP-element group 4: 	 branch_block_stmt_1133/assign_stmt_1137_to_assign_stmt_1147/WPIPE_debug_interface_to_ccu_1145_Sample/$exit
      -- CP-element group 4: 	 branch_block_stmt_1133/assign_stmt_1137_to_assign_stmt_1147/WPIPE_debug_interface_to_ccu_1145_update_start_
      -- CP-element group 4: 	 branch_block_stmt_1133/assign_stmt_1137_to_assign_stmt_1147/WPIPE_debug_interface_to_ccu_1145_sample_completed_
      -- 
    ack_41_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 4_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_debug_interface_to_ccu_1145_inst_ack_0, ack => inWardDaemon_CP_3_elements(4)); -- 
    req_45_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_45_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => inWardDaemon_CP_3_elements(4), ack => WPIPE_debug_interface_to_ccu_1145_inst_req_1); -- 
    -- CP-element group 5:  transition  place  input  bypass 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	4 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	6 
    -- CP-element group 5:  members (8) 
      -- CP-element group 5: 	 branch_block_stmt_1133/assign_stmt_1137_to_assign_stmt_1147/$exit
      -- CP-element group 5: 	 branch_block_stmt_1133/loopback_PhiReq/$exit
      -- CP-element group 5: 	 branch_block_stmt_1133/loopback_PhiReq/$entry
      -- CP-element group 5: 	 branch_block_stmt_1133/loopback
      -- CP-element group 5: 	 branch_block_stmt_1133/assign_stmt_1137_to_assign_stmt_1147/WPIPE_debug_interface_to_ccu_1145_Update/ack
      -- CP-element group 5: 	 branch_block_stmt_1133/assign_stmt_1137_to_assign_stmt_1147/WPIPE_debug_interface_to_ccu_1145_Update/$exit
      -- CP-element group 5: 	 branch_block_stmt_1133/assign_stmt_1137_to_assign_stmt_1147/WPIPE_debug_interface_to_ccu_1145_update_completed_
      -- CP-element group 5: 	 branch_block_stmt_1133/assign_stmt_1137_to_assign_stmt_1147__exit__
      -- 
    ack_46_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 5_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_debug_interface_to_ccu_1145_inst_ack_1, ack => inWardDaemon_CP_3_elements(5)); -- 
    -- CP-element group 6:  merge  transition  place  output  bypass 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	5 
    -- CP-element group 6: 	0 
    -- CP-element group 6: successors 
    -- CP-element group 6: 	2 
    -- CP-element group 6:  members (10) 
      -- CP-element group 6: 	 branch_block_stmt_1133/merge_stmt_1134__exit__
      -- CP-element group 6: 	 branch_block_stmt_1133/assign_stmt_1137_to_assign_stmt_1147/RPIPE_ENV_to_AJIT_debug_command_1136_Sample/$entry
      -- CP-element group 6: 	 branch_block_stmt_1133/assign_stmt_1137_to_assign_stmt_1147/RPIPE_ENV_to_AJIT_debug_command_1136_sample_start_
      -- CP-element group 6: 	 branch_block_stmt_1133/merge_stmt_1134_PhiAck/dummy
      -- CP-element group 6: 	 branch_block_stmt_1133/merge_stmt_1134_PhiAck/$entry
      -- CP-element group 6: 	 branch_block_stmt_1133/merge_stmt_1134_PhiAck/$exit
      -- CP-element group 6: 	 branch_block_stmt_1133/merge_stmt_1134_PhiReqMerge
      -- CP-element group 6: 	 branch_block_stmt_1133/assign_stmt_1137_to_assign_stmt_1147/$entry
      -- CP-element group 6: 	 branch_block_stmt_1133/assign_stmt_1137_to_assign_stmt_1147__entry__
      -- CP-element group 6: 	 branch_block_stmt_1133/assign_stmt_1137_to_assign_stmt_1147/RPIPE_ENV_to_AJIT_debug_command_1136_Sample/rr
      -- 
    rr_26_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_26_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => inWardDaemon_CP_3_elements(6), ack => RPIPE_ENV_to_AJIT_debug_command_1136_inst_req_0); -- 
    inWardDaemon_CP_3_elements(6) <= OrReduce(inWardDaemon_CP_3_elements(5) & inWardDaemon_CP_3_elements(0));
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal R_ONE_1_1141_wire_constant : std_logic_vector(0 downto 0);
    signal from_dbg_1137 : std_logic_vector(31 downto 0);
    signal to_ccu_1144 : std_logic_vector(32 downto 0);
    -- 
  begin -- 
    R_ONE_1_1141_wire_constant <= "1";
    -- flow through binary operator CONCAT_u1_u33_1143_inst
    process(R_ONE_1_1141_wire_constant, from_dbg_1137) -- 
      variable tmp_var : std_logic_vector(32 downto 0); -- 
    begin -- 
      ApConcat_proc(R_ONE_1_1141_wire_constant, from_dbg_1137, tmp_var);
      to_ccu_1144 <= tmp_var; --
    end process;
    -- shared inport operator group (0) : RPIPE_ENV_to_AJIT_debug_command_1136_inst 
    InportGroup_0: Block -- 
      signal data_out: std_logic_vector(31 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_ENV_to_AJIT_debug_command_1136_inst_req_0;
      RPIPE_ENV_to_AJIT_debug_command_1136_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_ENV_to_AJIT_debug_command_1136_inst_req_1;
      RPIPE_ENV_to_AJIT_debug_command_1136_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      from_dbg_1137 <= data_out(31 downto 0);
      ENV_to_AJIT_debug_command_read_0_gI: SplitGuardInterface generic map(name => "ENV_to_AJIT_debug_command_read_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      ENV_to_AJIT_debug_command_read_0: InputPortRevised -- 
        generic map ( name => "ENV_to_AJIT_debug_command_read_0", data_width => 32,  num_reqs => 1,  output_buffering => outBUFs,   nonblocking_read_flag => False,  no_arbitration => false)
        port map (-- 
          sample_req => reqL , 
          sample_ack => ackL, 
          update_req => reqR, 
          update_ack => ackR, 
          data => data_out, 
          oreq => ENV_to_AJIT_debug_command_pipe_read_req(0),
          oack => ENV_to_AJIT_debug_command_pipe_read_ack(0),
          odata => ENV_to_AJIT_debug_command_pipe_read_data(31 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 0
    -- shared outport operator group (0) : WPIPE_debug_interface_to_ccu_1145_inst 
    OutportGroup_0: Block -- 
      signal data_in: std_logic_vector(32 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_debug_interface_to_ccu_1145_inst_req_0;
      WPIPE_debug_interface_to_ccu_1145_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_debug_interface_to_ccu_1145_inst_req_1;
      WPIPE_debug_interface_to_ccu_1145_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= to_ccu_1144;
      debug_interface_to_ccu_write_0_gI: SplitGuardInterface generic map(name => "debug_interface_to_ccu_write_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      debug_interface_to_ccu_write_0: OutputPortRevised -- 
        generic map ( name => "debug_interface_to_ccu", data_width => 33, num_reqs => 1, input_buffering => inBUFs, full_rate => false,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => debug_interface_to_ccu_pipe_write_req(0),
          oack => debug_interface_to_ccu_pipe_write_ack(0),
          odata => debug_interface_to_ccu_pipe_write_data(32 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    -- 
  end Block; -- data_path
  -- 
end inWardDaemon_arch;
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
library cpu_debug_interface;
use cpu_debug_interface.debug_interface_global_package.all;
entity outWardDaemon is -- 
  generic (tag_length : integer); 
  port ( -- 
    ccu_to_debug_interface_pipe_read_req : out  std_logic_vector(0 downto 0);
    ccu_to_debug_interface_pipe_read_ack : in   std_logic_vector(0 downto 0);
    ccu_to_debug_interface_pipe_read_data : in   std_logic_vector(32 downto 0);
    AJIT_to_ENV_debug_response_pipe_write_req : out  std_logic_vector(0 downto 0);
    AJIT_to_ENV_debug_response_pipe_write_ack : in   std_logic_vector(0 downto 0);
    AJIT_to_ENV_debug_response_pipe_write_data : out  std_logic_vector(31 downto 0);
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
end entity outWardDaemon;
architecture outWardDaemon_arch of outWardDaemon is -- 
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
  signal outWardDaemon_CP_198_start: Boolean;
  signal outWardDaemon_CP_198_symbol: Boolean;
  -- volatile/operator module components. 
  -- links between control-path and data-path
  signal WPIPE_AJIT_to_ENV_debug_response_1193_inst_req_1 : boolean;
  signal WPIPE_AJIT_to_ENV_debug_response_1193_inst_ack_1 : boolean;
  signal WPIPE_AJIT_to_ENV_debug_response_1193_inst_req_0 : boolean;
  signal WPIPE_AJIT_to_ENV_debug_response_1193_inst_ack_0 : boolean;
  signal RPIPE_ccu_to_debug_interface_1179_inst_ack_1 : boolean;
  signal RPIPE_ccu_to_debug_interface_1179_inst_req_1 : boolean;
  signal RPIPE_ccu_to_debug_interface_1179_inst_req_0 : boolean;
  signal RPIPE_ccu_to_debug_interface_1179_inst_ack_0 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "outWardDaemon_input_buffer", -- 
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
  outWardDaemon_CP_198_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "outWardDaemon_out_buffer", -- 
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
    preds <= outWardDaemon_CP_198_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
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
    preds <= outWardDaemon_CP_198_start & tag_ilock_write_ack_symbol;
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
    preds <= outWardDaemon_CP_198_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  outWardDaemon_CP_198: Block -- control-path 
    signal outWardDaemon_CP_198_elements: BooleanArray(6 downto 0);
    -- 
  begin -- 
    outWardDaemon_CP_198_elements(0) <= outWardDaemon_CP_198_start;
    outWardDaemon_CP_198_symbol <= outWardDaemon_CP_198_elements(1);
    -- CP-element group 0:  branch  transition  place  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	6 
    -- CP-element group 0:  members (7) 
      -- CP-element group 0: 	 branch_block_stmt_1176/merge_stmt_1177__entry___PhiReq/$entry
      -- CP-element group 0: 	 branch_block_stmt_1176/merge_stmt_1177__entry___PhiReq/$exit
      -- CP-element group 0: 	 branch_block_stmt_1176/merge_stmt_1177_dead_link/$entry
      -- CP-element group 0: 	 branch_block_stmt_1176/merge_stmt_1177__entry__
      -- CP-element group 0: 	 branch_block_stmt_1176/branch_block_stmt_1176__entry__
      -- CP-element group 0: 	 branch_block_stmt_1176/$entry
      -- CP-element group 0: 	 $entry
      -- 
    -- CP-element group 1:  transition  place  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: successors 
    -- CP-element group 1:  members (3) 
      -- CP-element group 1: 	 $exit
      -- CP-element group 1: 	 branch_block_stmt_1176/branch_block_stmt_1176__exit__
      -- CP-element group 1: 	 branch_block_stmt_1176/$exit
      -- 
    outWardDaemon_CP_198_elements(1) <= false; 
    -- CP-element group 2:  transition  input  output  bypass 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	6 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	3 
    -- CP-element group 2:  members (6) 
      -- CP-element group 2: 	 branch_block_stmt_1176/assign_stmt_1180_to_assign_stmt_1195/RPIPE_ccu_to_debug_interface_1179_Update/cr
      -- CP-element group 2: 	 branch_block_stmt_1176/assign_stmt_1180_to_assign_stmt_1195/RPIPE_ccu_to_debug_interface_1179_Update/$entry
      -- CP-element group 2: 	 branch_block_stmt_1176/assign_stmt_1180_to_assign_stmt_1195/RPIPE_ccu_to_debug_interface_1179_Sample/ra
      -- CP-element group 2: 	 branch_block_stmt_1176/assign_stmt_1180_to_assign_stmt_1195/RPIPE_ccu_to_debug_interface_1179_Sample/$exit
      -- CP-element group 2: 	 branch_block_stmt_1176/assign_stmt_1180_to_assign_stmt_1195/RPIPE_ccu_to_debug_interface_1179_update_start_
      -- CP-element group 2: 	 branch_block_stmt_1176/assign_stmt_1180_to_assign_stmt_1195/RPIPE_ccu_to_debug_interface_1179_sample_completed_
      -- 
    ra_222_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 2_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ccu_to_debug_interface_1179_inst_ack_0, ack => outWardDaemon_CP_198_elements(2)); -- 
    cr_226_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_226_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => outWardDaemon_CP_198_elements(2), ack => RPIPE_ccu_to_debug_interface_1179_inst_req_1); -- 
    -- CP-element group 3:  transition  input  output  bypass 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: 	2 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	4 
    -- CP-element group 3:  members (6) 
      -- CP-element group 3: 	 branch_block_stmt_1176/assign_stmt_1180_to_assign_stmt_1195/WPIPE_AJIT_to_ENV_debug_response_1193_Sample/req
      -- CP-element group 3: 	 branch_block_stmt_1176/assign_stmt_1180_to_assign_stmt_1195/WPIPE_AJIT_to_ENV_debug_response_1193_Sample/$entry
      -- CP-element group 3: 	 branch_block_stmt_1176/assign_stmt_1180_to_assign_stmt_1195/WPIPE_AJIT_to_ENV_debug_response_1193_sample_start_
      -- CP-element group 3: 	 branch_block_stmt_1176/assign_stmt_1180_to_assign_stmt_1195/RPIPE_ccu_to_debug_interface_1179_Update/ca
      -- CP-element group 3: 	 branch_block_stmt_1176/assign_stmt_1180_to_assign_stmt_1195/RPIPE_ccu_to_debug_interface_1179_Update/$exit
      -- CP-element group 3: 	 branch_block_stmt_1176/assign_stmt_1180_to_assign_stmt_1195/RPIPE_ccu_to_debug_interface_1179_update_completed_
      -- 
    ca_227_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 3_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ccu_to_debug_interface_1179_inst_ack_1, ack => outWardDaemon_CP_198_elements(3)); -- 
    req_235_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_235_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => outWardDaemon_CP_198_elements(3), ack => WPIPE_AJIT_to_ENV_debug_response_1193_inst_req_0); -- 
    -- CP-element group 4:  transition  input  output  bypass 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: 	3 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	5 
    -- CP-element group 4:  members (6) 
      -- CP-element group 4: 	 branch_block_stmt_1176/assign_stmt_1180_to_assign_stmt_1195/WPIPE_AJIT_to_ENV_debug_response_1193_Update/req
      -- CP-element group 4: 	 branch_block_stmt_1176/assign_stmt_1180_to_assign_stmt_1195/WPIPE_AJIT_to_ENV_debug_response_1193_Update/$entry
      -- CP-element group 4: 	 branch_block_stmt_1176/assign_stmt_1180_to_assign_stmt_1195/WPIPE_AJIT_to_ENV_debug_response_1193_Sample/ack
      -- CP-element group 4: 	 branch_block_stmt_1176/assign_stmt_1180_to_assign_stmt_1195/WPIPE_AJIT_to_ENV_debug_response_1193_Sample/$exit
      -- CP-element group 4: 	 branch_block_stmt_1176/assign_stmt_1180_to_assign_stmt_1195/WPIPE_AJIT_to_ENV_debug_response_1193_update_start_
      -- CP-element group 4: 	 branch_block_stmt_1176/assign_stmt_1180_to_assign_stmt_1195/WPIPE_AJIT_to_ENV_debug_response_1193_sample_completed_
      -- 
    ack_236_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 4_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_AJIT_to_ENV_debug_response_1193_inst_ack_0, ack => outWardDaemon_CP_198_elements(4)); -- 
    req_240_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_240_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => outWardDaemon_CP_198_elements(4), ack => WPIPE_AJIT_to_ENV_debug_response_1193_inst_req_1); -- 
    -- CP-element group 5:  transition  place  input  bypass 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	4 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	6 
    -- CP-element group 5:  members (8) 
      -- CP-element group 5: 	 branch_block_stmt_1176/loopback_PhiReq/$exit
      -- CP-element group 5: 	 branch_block_stmt_1176/loopback_PhiReq/$entry
      -- CP-element group 5: 	 branch_block_stmt_1176/assign_stmt_1180_to_assign_stmt_1195/WPIPE_AJIT_to_ENV_debug_response_1193_Update/ack
      -- CP-element group 5: 	 branch_block_stmt_1176/assign_stmt_1180_to_assign_stmt_1195/WPIPE_AJIT_to_ENV_debug_response_1193_Update/$exit
      -- CP-element group 5: 	 branch_block_stmt_1176/assign_stmt_1180_to_assign_stmt_1195/WPIPE_AJIT_to_ENV_debug_response_1193_update_completed_
      -- CP-element group 5: 	 branch_block_stmt_1176/assign_stmt_1180_to_assign_stmt_1195/$exit
      -- CP-element group 5: 	 branch_block_stmt_1176/loopback
      -- CP-element group 5: 	 branch_block_stmt_1176/assign_stmt_1180_to_assign_stmt_1195__exit__
      -- 
    ack_241_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 5_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_AJIT_to_ENV_debug_response_1193_inst_ack_1, ack => outWardDaemon_CP_198_elements(5)); -- 
    -- CP-element group 6:  merge  transition  place  output  bypass 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	0 
    -- CP-element group 6: 	5 
    -- CP-element group 6: successors 
    -- CP-element group 6: 	2 
    -- CP-element group 6:  members (10) 
      -- CP-element group 6: 	 branch_block_stmt_1176/merge_stmt_1177_PhiReqMerge
      -- CP-element group 6: 	 branch_block_stmt_1176/merge_stmt_1177_PhiAck/dummy
      -- CP-element group 6: 	 branch_block_stmt_1176/merge_stmt_1177_PhiAck/$entry
      -- CP-element group 6: 	 branch_block_stmt_1176/merge_stmt_1177_PhiAck/$exit
      -- CP-element group 6: 	 branch_block_stmt_1176/assign_stmt_1180_to_assign_stmt_1195/RPIPE_ccu_to_debug_interface_1179_Sample/rr
      -- CP-element group 6: 	 branch_block_stmt_1176/assign_stmt_1180_to_assign_stmt_1195/RPIPE_ccu_to_debug_interface_1179_Sample/$entry
      -- CP-element group 6: 	 branch_block_stmt_1176/assign_stmt_1180_to_assign_stmt_1195/RPIPE_ccu_to_debug_interface_1179_sample_start_
      -- CP-element group 6: 	 branch_block_stmt_1176/assign_stmt_1180_to_assign_stmt_1195/$entry
      -- CP-element group 6: 	 branch_block_stmt_1176/merge_stmt_1177__exit__
      -- CP-element group 6: 	 branch_block_stmt_1176/assign_stmt_1180_to_assign_stmt_1195__entry__
      -- 
    rr_221_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_221_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => outWardDaemon_CP_198_elements(6), ack => RPIPE_ccu_to_debug_interface_1179_inst_req_0); -- 
    outWardDaemon_CP_198_elements(6) <= OrReduce(outWardDaemon_CP_198_elements(0) & outWardDaemon_CP_198_elements(5));
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal from_ccu_1180 : std_logic_vector(32 downto 0);
    signal to_dbg_1188 : std_logic_vector(31 downto 0);
    signal valid_1184 : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    -- flow-through slice operator slice_1183_inst
    valid_1184 <= from_ccu_1180(32 downto 32);
    -- flow-through slice operator slice_1187_inst
    to_dbg_1188 <= from_ccu_1180(31 downto 0);
    -- shared inport operator group (0) : RPIPE_ccu_to_debug_interface_1179_inst 
    InportGroup_0: Block -- 
      signal data_out: std_logic_vector(32 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_ccu_to_debug_interface_1179_inst_req_0;
      RPIPE_ccu_to_debug_interface_1179_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_ccu_to_debug_interface_1179_inst_req_1;
      RPIPE_ccu_to_debug_interface_1179_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      from_ccu_1180 <= data_out(32 downto 0);
      ccu_to_debug_interface_read_0_gI: SplitGuardInterface generic map(name => "ccu_to_debug_interface_read_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      ccu_to_debug_interface_read_0: InputPortRevised -- 
        generic map ( name => "ccu_to_debug_interface_read_0", data_width => 33,  num_reqs => 1,  output_buffering => outBUFs,   nonblocking_read_flag => true,  no_arbitration => false)
        port map (-- 
          sample_req => reqL , 
          sample_ack => ackL, 
          update_req => reqR, 
          update_ack => ackR, 
          data => data_out, 
          oreq => ccu_to_debug_interface_pipe_read_req(0),
          oack => ccu_to_debug_interface_pipe_read_ack(0),
          odata => ccu_to_debug_interface_pipe_read_data(32 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 0
    -- shared outport operator group (0) : WPIPE_AJIT_to_ENV_debug_response_1193_inst 
    OutportGroup_0: Block -- 
      signal data_in: std_logic_vector(31 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_AJIT_to_ENV_debug_response_1193_inst_req_0;
      WPIPE_AJIT_to_ENV_debug_response_1193_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_AJIT_to_ENV_debug_response_1193_inst_req_1;
      WPIPE_AJIT_to_ENV_debug_response_1193_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= valid_1184(0);
      data_in <= to_dbg_1188;
      AJIT_to_ENV_debug_response_write_0_gI: SplitGuardInterface generic map(name => "AJIT_to_ENV_debug_response_write_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      AJIT_to_ENV_debug_response_write_0: OutputPortRevised -- 
        generic map ( name => "AJIT_to_ENV_debug_response", data_width => 32, num_reqs => 1, input_buffering => inBUFs, full_rate => false,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => AJIT_to_ENV_debug_response_pipe_write_req(0),
          oack => AJIT_to_ENV_debug_response_pipe_write_ack(0),
          odata => AJIT_to_ENV_debug_response_pipe_write_data(31 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    -- 
  end Block; -- data_path
  -- 
end outWardDaemon_arch;
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
library cpu_debug_interface;
use cpu_debug_interface.debug_interface_global_package.all;
entity debug_interface is  -- system 
  port (-- 
    clk : in std_logic;
    reset : in std_logic;
    AJIT_to_ENV_debug_response_pipe_read_data: out std_logic_vector(31 downto 0);
    AJIT_to_ENV_debug_response_pipe_read_req : in std_logic_vector(0 downto 0);
    AJIT_to_ENV_debug_response_pipe_read_ack : out std_logic_vector(0 downto 0);
    ENV_to_AJIT_debug_command_pipe_write_data: in std_logic_vector(31 downto 0);
    ENV_to_AJIT_debug_command_pipe_write_req : in std_logic_vector(0 downto 0);
    ENV_to_AJIT_debug_command_pipe_write_ack : out std_logic_vector(0 downto 0);
    ccu_to_debug_interface_pipe_write_data: in std_logic_vector(32 downto 0);
    ccu_to_debug_interface_pipe_write_req : in std_logic_vector(0 downto 0);
    ccu_to_debug_interface_pipe_write_ack : out std_logic_vector(0 downto 0);
    debug_interface_to_ccu_pipe_read_data: out std_logic_vector(32 downto 0);
    debug_interface_to_ccu_pipe_read_req : in std_logic_vector(0 downto 0);
    debug_interface_to_ccu_pipe_read_ack : out std_logic_vector(0 downto 0)); -- 
  -- 
end entity; 
architecture debug_interface_arch  of debug_interface is -- system-architecture 
  -- interface signals to connect to memory space memory_space_2
  -- declarations related to module inWardDaemon
  component inWardDaemon is -- 
    generic (tag_length : integer); 
    port ( -- 
      ENV_to_AJIT_debug_command_pipe_read_req : out  std_logic_vector(0 downto 0);
      ENV_to_AJIT_debug_command_pipe_read_ack : in   std_logic_vector(0 downto 0);
      ENV_to_AJIT_debug_command_pipe_read_data : in   std_logic_vector(31 downto 0);
      debug_interface_to_ccu_pipe_write_req : out  std_logic_vector(0 downto 0);
      debug_interface_to_ccu_pipe_write_ack : in   std_logic_vector(0 downto 0);
      debug_interface_to_ccu_pipe_write_data : out  std_logic_vector(32 downto 0);
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
  -- argument signals for module inWardDaemon
  signal inWardDaemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal inWardDaemon_tag_out   : std_logic_vector(1 downto 0);
  signal inWardDaemon_start_req : std_logic;
  signal inWardDaemon_start_ack : std_logic;
  signal inWardDaemon_fin_req   : std_logic;
  signal inWardDaemon_fin_ack : std_logic;
  -- declarations related to module outWardDaemon
  component outWardDaemon is -- 
    generic (tag_length : integer); 
    port ( -- 
      ccu_to_debug_interface_pipe_read_req : out  std_logic_vector(0 downto 0);
      ccu_to_debug_interface_pipe_read_ack : in   std_logic_vector(0 downto 0);
      ccu_to_debug_interface_pipe_read_data : in   std_logic_vector(32 downto 0);
      AJIT_to_ENV_debug_response_pipe_write_req : out  std_logic_vector(0 downto 0);
      AJIT_to_ENV_debug_response_pipe_write_ack : in   std_logic_vector(0 downto 0);
      AJIT_to_ENV_debug_response_pipe_write_data : out  std_logic_vector(31 downto 0);
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
  -- argument signals for module outWardDaemon
  signal outWardDaemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal outWardDaemon_tag_out   : std_logic_vector(1 downto 0);
  signal outWardDaemon_start_req : std_logic;
  signal outWardDaemon_start_ack : std_logic;
  signal outWardDaemon_fin_req   : std_logic;
  signal outWardDaemon_fin_ack : std_logic;
  -- aggregate signals for write to pipe AJIT_to_ENV_debug_response
  signal AJIT_to_ENV_debug_response_pipe_write_data: std_logic_vector(31 downto 0);
  signal AJIT_to_ENV_debug_response_pipe_write_req: std_logic_vector(0 downto 0);
  signal AJIT_to_ENV_debug_response_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe ENV_to_AJIT_debug_command
  signal ENV_to_AJIT_debug_command_pipe_read_data: std_logic_vector(31 downto 0);
  signal ENV_to_AJIT_debug_command_pipe_read_req: std_logic_vector(0 downto 0);
  signal ENV_to_AJIT_debug_command_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe ccu_to_debug_interface
  signal ccu_to_debug_interface_pipe_read_data: std_logic_vector(32 downto 0);
  signal ccu_to_debug_interface_pipe_read_req: std_logic_vector(0 downto 0);
  signal ccu_to_debug_interface_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe debug_interface_to_ccu
  signal debug_interface_to_ccu_pipe_write_data: std_logic_vector(32 downto 0);
  signal debug_interface_to_ccu_pipe_write_req: std_logic_vector(0 downto 0);
  signal debug_interface_to_ccu_pipe_write_ack: std_logic_vector(0 downto 0);
  -- gated clock signal declarations.
  -- 
begin -- 
  -- module inWardDaemon
  inWardDaemon_instance:inWardDaemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => inWardDaemon_start_req,
      start_ack => inWardDaemon_start_ack,
      fin_req => inWardDaemon_fin_req,
      fin_ack => inWardDaemon_fin_ack,
      clk => clk,
      reset => reset,
      ENV_to_AJIT_debug_command_pipe_read_req => ENV_to_AJIT_debug_command_pipe_read_req(0 downto 0),
      ENV_to_AJIT_debug_command_pipe_read_ack => ENV_to_AJIT_debug_command_pipe_read_ack(0 downto 0),
      ENV_to_AJIT_debug_command_pipe_read_data => ENV_to_AJIT_debug_command_pipe_read_data(31 downto 0),
      debug_interface_to_ccu_pipe_write_req => debug_interface_to_ccu_pipe_write_req(0 downto 0),
      debug_interface_to_ccu_pipe_write_ack => debug_interface_to_ccu_pipe_write_ack(0 downto 0),
      debug_interface_to_ccu_pipe_write_data => debug_interface_to_ccu_pipe_write_data(32 downto 0),
      tag_in => inWardDaemon_tag_in,
      tag_out => inWardDaemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  inWardDaemon_tag_in <= (others => '0');
  inWardDaemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => inWardDaemon_start_req, start_ack => inWardDaemon_start_ack,  fin_req => inWardDaemon_fin_req,  fin_ack => inWardDaemon_fin_ack);
  -- module outWardDaemon
  outWardDaemon_instance:outWardDaemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => outWardDaemon_start_req,
      start_ack => outWardDaemon_start_ack,
      fin_req => outWardDaemon_fin_req,
      fin_ack => outWardDaemon_fin_ack,
      clk => clk,
      reset => reset,
      ccu_to_debug_interface_pipe_read_req => ccu_to_debug_interface_pipe_read_req(0 downto 0),
      ccu_to_debug_interface_pipe_read_ack => ccu_to_debug_interface_pipe_read_ack(0 downto 0),
      ccu_to_debug_interface_pipe_read_data => ccu_to_debug_interface_pipe_read_data(32 downto 0),
      AJIT_to_ENV_debug_response_pipe_write_req => AJIT_to_ENV_debug_response_pipe_write_req(0 downto 0),
      AJIT_to_ENV_debug_response_pipe_write_ack => AJIT_to_ENV_debug_response_pipe_write_ack(0 downto 0),
      AJIT_to_ENV_debug_response_pipe_write_data => AJIT_to_ENV_debug_response_pipe_write_data(31 downto 0),
      tag_in => outWardDaemon_tag_in,
      tag_out => outWardDaemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  outWardDaemon_tag_in <= (others => '0');
  outWardDaemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => outWardDaemon_start_req, start_ack => outWardDaemon_start_ack,  fin_req => outWardDaemon_fin_req,  fin_ack => outWardDaemon_fin_ack);
  AJIT_to_ENV_debug_response_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe AJIT_to_ENV_debug_response",
      num_reads => 1,
      num_writes => 1,
      data_width => 32,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => AJIT_to_ENV_debug_response_pipe_read_req,
      read_ack => AJIT_to_ENV_debug_response_pipe_read_ack,
      read_data => AJIT_to_ENV_debug_response_pipe_read_data,
      write_req => AJIT_to_ENV_debug_response_pipe_write_req,
      write_ack => AJIT_to_ENV_debug_response_pipe_write_ack,
      write_data => AJIT_to_ENV_debug_response_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  ENV_to_AJIT_debug_command_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe ENV_to_AJIT_debug_command",
      num_reads => 1,
      num_writes => 1,
      data_width => 32,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => ENV_to_AJIT_debug_command_pipe_read_req,
      read_ack => ENV_to_AJIT_debug_command_pipe_read_ack,
      read_data => ENV_to_AJIT_debug_command_pipe_read_data,
      write_req => ENV_to_AJIT_debug_command_pipe_write_req,
      write_ack => ENV_to_AJIT_debug_command_pipe_write_ack,
      write_data => ENV_to_AJIT_debug_command_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  ccu_to_debug_interface_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe ccu_to_debug_interface",
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
      read_req => ccu_to_debug_interface_pipe_read_req,
      read_ack => ccu_to_debug_interface_pipe_read_ack,
      read_data => ccu_to_debug_interface_pipe_read_data,
      write_req => ccu_to_debug_interface_pipe_write_req,
      write_ack => ccu_to_debug_interface_pipe_write_ack,
      write_data => ccu_to_debug_interface_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  debug_interface_to_ccu_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe debug_interface_to_ccu",
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
      read_req => debug_interface_to_ccu_pipe_read_req,
      read_ack => debug_interface_to_ccu_pipe_read_ack,
      read_data => debug_interface_to_ccu_pipe_read_data,
      write_req => debug_interface_to_ccu_pipe_write_req,
      write_ack => debug_interface_to_ccu_pipe_write_ack,
      write_data => debug_interface_to_ccu_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- gated clock generators 
  -- 
end debug_interface_arch;
