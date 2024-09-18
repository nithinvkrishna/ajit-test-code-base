-- VHDL global package produced by vc2vhdl from virtual circuit (vc) description 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
package loadstore_global_package is -- 
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
  constant CONTINUES_MISPREDICTED_STREAM : std_logic_vector(2 downto 0) := "100";
  constant CONTINUES_TRAPPED_STREAM : std_logic_vector(2 downto 0) := "110";
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
  constant DTI_IS_LOAD : std_logic_vector(1 downto 0) := "01";
  constant DTI_IS_NOP : std_logic_vector(1 downto 0) := "00";
  constant DTI_IS_SPECIAL_STORE : std_logic_vector(1 downto 0) := "11";
  constant DTI_IS_STORE : std_logic_vector(1 downto 0) := "10";
  constant EXCEPTION_FOUND : std_logic_vector(7 downto 0) := "00000010";
  constant FIFTEEN_8 : std_logic_vector(7 downto 0) := "00001111";
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
  constant IN_LIVE_STREAM_ANNULLED : std_logic_vector(2 downto 0) := "001";
  constant IN_LIVE_STREAM_NOT_ANNULLED : std_logic_vector(2 downto 0) := "000";
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
  constant TERMINATES_STREAM : std_logic_vector(2 downto 0) := "011";
  constant TERMINATES_THREAD : std_logic_vector(2 downto 0) := "111";
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
  constant WB_MISPREDICTED_STREAM : std_logic_vector(1 downto 0) := "10";
  constant WB_NORMAL : std_logic_vector(1 downto 0) := "01";
  constant WB_RESET : std_logic_vector(1 downto 0) := "00";
  constant WB_TRAPPED : std_logic_vector(1 downto 0) := "11";
  constant WIM_MASK : std_logic_vector(31 downto 0) := "00000000000000000000000011111111";
  constant WINDOW_OVERFLOW_TRAP_BIT_VEC : std_logic_vector(31 downto 0) := "00000000000000001000000000000000";
  constant WINDOW_OVERFLOW_TRAP_INDEX : std_logic_vector(31 downto 0) := "00000000000000000000000000001110";
  constant WINDOW_UNDERFLOW_TRAP_BIT_VEC : std_logic_vector(31 downto 0) := "00000000000000010000000000000000";
  constant WINDOW_UNDERFLOW_TRAP_INDEX : std_logic_vector(31 downto 0) := "00000000000000000000000000001111";
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
  component loadstore is -- 
    port (-- 
      clk : in std_logic;
      reset : in std_logic;
      BROADCAST_INIT_PC: in std_logic_vector(31 downto 0);
      DCACHE_to_CPU_response_pipe_write_data: in std_logic_vector(71 downto 0);
      DCACHE_to_CPU_response_pipe_write_req : in std_logic_vector(0 downto 0);
      DCACHE_to_CPU_response_pipe_write_ack : out std_logic_vector(0 downto 0);
      DCACHE_to_CPU_slow_response_pipe_write_data: in std_logic_vector(71 downto 0);
      DCACHE_to_CPU_slow_response_pipe_write_req : in std_logic_vector(0 downto 0);
      DCACHE_to_CPU_slow_response_pipe_write_ack : out std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_DCACHE_command_pipe_read_data: out std_logic_vector(142 downto 0);
      NOBLOCK_CPU_to_DCACHE_command_pipe_read_req : in std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_DCACHE_command_pipe_read_ack : out std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_data: out std_logic_vector(120 downto 0);
      NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_req : in std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_ack : out std_logic_vector(0 downto 0);
      THREAD_ID: in std_logic_vector(7 downto 0);
      ccu_to_teu_load_store_command_pipe_write_data: in std_logic_vector(72 downto 0);
      ccu_to_teu_load_store_command_pipe_write_req : in std_logic_vector(0 downto 0);
      ccu_to_teu_load_store_command_pipe_write_ack : out std_logic_vector(0 downto 0);
      debug_wp_0: in std_logic_vector(31 downto 0);
      debug_wp_1: in std_logic_vector(31 downto 0);
      debug_wp_2: in std_logic_vector(31 downto 0);
      debug_wp_3: in std_logic_vector(31 downto 0);
      noblock_teu_idispatch_to_loadstore_pipe_write_data: in std_logic_vector(125 downto 0);
      noblock_teu_idispatch_to_loadstore_pipe_write_req : in std_logic_vector(0 downto 0);
      noblock_teu_idispatch_to_loadstore_pipe_write_ack : out std_logic_vector(0 downto 0);
      noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_data: out std_logic_vector(0 downto 0);
      noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_req : in std_logic_vector(0 downto 0);
      noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_ack : out std_logic_vector(0 downto 0);
      noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_data: out std_logic_vector(0 downto 0);
      noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_req : in std_logic_vector(0 downto 0);
      noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_ack : out std_logic_vector(0 downto 0);
      teu_fpunit_register_file_to_loadstore_pipe_write_data: in std_logic_vector(76 downto 0);
      teu_fpunit_register_file_to_loadstore_pipe_write_req : in std_logic_vector(0 downto 0);
      teu_fpunit_register_file_to_loadstore_pipe_write_ack : out std_logic_vector(0 downto 0);
      teu_fpunit_trap_to_loadstore_pipe_write_data: in std_logic_vector(12 downto 0);
      teu_fpunit_trap_to_loadstore_pipe_write_req : in std_logic_vector(0 downto 0);
      teu_fpunit_trap_to_loadstore_pipe_write_ack : out std_logic_vector(0 downto 0);
      teu_iunit_register_file_to_loadstore_pipe_write_data: in std_logic_vector(141 downto 0);
      teu_iunit_register_file_to_loadstore_pipe_write_req : in std_logic_vector(0 downto 0);
      teu_iunit_register_file_to_loadstore_pipe_write_ack : out std_logic_vector(0 downto 0);
      teu_iunit_trap_to_loadstore_pipe_write_data: in std_logic_vector(0 downto 0);
      teu_iunit_trap_to_loadstore_pipe_write_req : in std_logic_vector(0 downto 0);
      teu_iunit_trap_to_loadstore_pipe_write_ack : out std_logic_vector(0 downto 0);
      teu_loadstore_to_fpunit_pipe_read_data: out std_logic_vector(77 downto 0);
      teu_loadstore_to_fpunit_pipe_read_req : in std_logic_vector(0 downto 0);
      teu_loadstore_to_fpunit_pipe_read_ack : out std_logic_vector(0 downto 0);
      teu_loadstore_to_iretire_pipe_read_data: out std_logic_vector(53 downto 0);
      teu_loadstore_to_iretire_pipe_read_req : in std_logic_vector(0 downto 0);
      teu_loadstore_to_iretire_pipe_read_ack : out std_logic_vector(0 downto 0);
      teu_loadstore_to_iunit_pipe_read_data: out std_logic_vector(77 downto 0);
      teu_loadstore_to_iunit_pipe_read_req : in std_logic_vector(0 downto 0);
      teu_loadstore_to_iunit_pipe_read_ack : out std_logic_vector(0 downto 0);
      teu_stream_corrector_to_loadstore_pipe_write_data: in std_logic_vector(18 downto 0);
      teu_stream_corrector_to_loadstore_pipe_write_req : in std_logic_vector(0 downto 0);
      teu_stream_corrector_to_loadstore_pipe_write_ack : out std_logic_vector(0 downto 0);
      teu_to_ccu_load_store_response_pipe_read_data: out std_logic_vector(32 downto 0);
      teu_to_ccu_load_store_response_pipe_read_req : in std_logic_vector(0 downto 0);
      teu_to_ccu_load_store_response_pipe_read_ack : out std_logic_vector(0 downto 0)); -- 
    -- 
  end component;
  -- 
end package loadstore_global_package;
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
library teu_loadstore;
use teu_loadstore.loadstore_global_package.all;
entity analyze_dcache_response_Volatile is -- 
  port ( -- 
    addr : in  std_logic_vector(31 downto 0);
    dcache_response : in  std_logic_vector(71 downto 0);
    is_load : in  std_logic_vector(0 downto 0);
    is_store : in  std_logic_vector(0 downto 0);
    signed_type : in  std_logic_vector(0 downto 0);
    unsigned_type : in  std_logic_vector(0 downto 0);
    byte : in  std_logic_vector(0 downto 0);
    half_word : in  std_logic_vector(0 downto 0);
    word : in  std_logic_vector(0 downto 0);
    double_word : in  std_logic_vector(0 downto 0);
    dout_h : out  std_logic_vector(31 downto 0);
    dout_l : out  std_logic_vector(31 downto 0);
    data_access_exception : out  std_logic_vector(0 downto 0);
    data_access_error : out  std_logic_vector(0 downto 0);
    dcache_hit : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity analyze_dcache_response_Volatile;
architecture analyze_dcache_response_Volatile_arch of analyze_dcache_response_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(112-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal addr_buffer :  std_logic_vector(31 downto 0);
  signal dcache_response_buffer :  std_logic_vector(71 downto 0);
  signal is_load_buffer :  std_logic_vector(0 downto 0);
  signal is_store_buffer :  std_logic_vector(0 downto 0);
  signal signed_type_buffer :  std_logic_vector(0 downto 0);
  signal unsigned_type_buffer :  std_logic_vector(0 downto 0);
  signal byte_buffer :  std_logic_vector(0 downto 0);
  signal half_word_buffer :  std_logic_vector(0 downto 0);
  signal word_buffer :  std_logic_vector(0 downto 0);
  signal double_word_buffer :  std_logic_vector(0 downto 0);
  -- output port buffer signals
  signal dout_h_buffer :  std_logic_vector(31 downto 0);
  signal dout_l_buffer :  std_logic_vector(31 downto 0);
  signal data_access_exception_buffer :  std_logic_vector(0 downto 0);
  signal data_access_error_buffer :  std_logic_vector(0 downto 0);
  signal dcache_hit_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  addr_buffer <= addr;
  dcache_response_buffer <= dcache_response;
  is_load_buffer <= is_load;
  is_store_buffer <= is_store;
  signed_type_buffer <= signed_type;
  unsigned_type_buffer <= unsigned_type;
  byte_buffer <= byte;
  half_word_buffer <= half_word;
  word_buffer <= word;
  double_word_buffer <= double_word;
  -- output handling  -------------------------------------------------------
  dout_h <= dout_h_buffer;
  dout_l <= dout_l_buffer;
  data_access_exception <= data_access_exception_buffer;
  data_access_error <= data_access_error_buffer;
  dcache_hit <= dcache_hit_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal BITSEL_u32_u1_1216_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_1226_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_1233_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_1241_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_1248_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_1259_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_1266_wire : std_logic_vector(0 downto 0);
    signal MUX_1230_wire : std_logic_vector(7 downto 0);
    signal MUX_1237_wire : std_logic_vector(7 downto 0);
    signal MUX_1245_wire : std_logic_vector(7 downto 0);
    signal MUX_1252_wire : std_logic_vector(7 downto 0);
    signal MUX_1263_wire : std_logic_vector(15 downto 0);
    signal MUX_1270_wire : std_logic_vector(15 downto 0);
    signal MUX_1287_wire : std_logic_vector(31 downto 0);
    signal MUX_1289_wire : std_logic_vector(31 downto 0);
    signal MUX_1299_wire : std_logic_vector(31 downto 0);
    signal MUX_1301_wire : std_logic_vector(31 downto 0);
    signal MUX_1308_wire : std_logic_vector(31 downto 0);
    signal OR_u1_u1_1217_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1305_wire : std_logic_vector(0 downto 0);
    signal OR_u32_u32_1302_wire : std_logic_vector(31 downto 0);
    signal OR_u8_u8_1238_wire : std_logic_vector(7 downto 0);
    signal OR_u8_u8_1253_wire : std_logic_vector(7 downto 0);
    signal a10_1207 : std_logic_vector(1 downto 0);
    signal dcache_mae_1184 : std_logic_vector(7 downto 0);
    signal ext_byte_1255 : std_logic_vector(7 downto 0);
    signal ext_half_word_1272 : std_logic_vector(15 downto 0);
    signal konst_1191_wire_constant : std_logic_vector(7 downto 0);
    signal konst_1196_wire_constant : std_logic_vector(7 downto 0);
    signal konst_1201_wire_constant : std_logic_vector(7 downto 0);
    signal konst_1215_wire_constant : std_logic_vector(31 downto 0);
    signal konst_1225_wire_constant : std_logic_vector(1 downto 0);
    signal konst_1229_wire_constant : std_logic_vector(7 downto 0);
    signal konst_1232_wire_constant : std_logic_vector(1 downto 0);
    signal konst_1236_wire_constant : std_logic_vector(7 downto 0);
    signal konst_1240_wire_constant : std_logic_vector(1 downto 0);
    signal konst_1244_wire_constant : std_logic_vector(7 downto 0);
    signal konst_1247_wire_constant : std_logic_vector(1 downto 0);
    signal konst_1251_wire_constant : std_logic_vector(7 downto 0);
    signal konst_1258_wire_constant : std_logic_vector(1 downto 0);
    signal konst_1262_wire_constant : std_logic_vector(15 downto 0);
    signal konst_1265_wire_constant : std_logic_vector(1 downto 0);
    signal konst_1269_wire_constant : std_logic_vector(15 downto 0);
    signal konst_1288_wire_constant : std_logic_vector(31 downto 0);
    signal konst_1300_wire_constant : std_logic_vector(31 downto 0);
    signal konst_1307_wire_constant : std_logic_vector(31 downto 0);
    signal loaded_high_word_1211 : std_logic_vector(31 downto 0);
    signal loaded_low_word_1222 : std_logic_vector(31 downto 0);
    signal loaded_word_1188 : std_logic_vector(63 downto 0);
    signal slice_1219_wire : std_logic_vector(31 downto 0);
    signal slice_1228_wire : std_logic_vector(7 downto 0);
    signal slice_1235_wire : std_logic_vector(7 downto 0);
    signal slice_1243_wire : std_logic_vector(7 downto 0);
    signal slice_1250_wire : std_logic_vector(7 downto 0);
    signal slice_1261_wire : std_logic_vector(15 downto 0);
    signal slice_1268_wire : std_logic_vector(15 downto 0);
    signal type_cast_1282_wire : std_logic_vector(7 downto 0);
    signal type_cast_1283_wire : std_logic_vector(31 downto 0);
    signal type_cast_1284_wire : std_logic_vector(31 downto 0);
    signal type_cast_1286_wire : std_logic_vector(31 downto 0);
    signal type_cast_1294_wire : std_logic_vector(15 downto 0);
    signal type_cast_1295_wire : std_logic_vector(31 downto 0);
    signal type_cast_1296_wire : std_logic_vector(31 downto 0);
    signal type_cast_1298_wire : std_logic_vector(31 downto 0);
    -- 
  begin -- 
    konst_1191_wire_constant <= "00000000";
    konst_1196_wire_constant <= "00000001";
    konst_1201_wire_constant <= "00000010";
    konst_1215_wire_constant <= "00000000000000000000000000000010";
    konst_1225_wire_constant <= "00";
    konst_1229_wire_constant <= "00000000";
    konst_1232_wire_constant <= "01";
    konst_1236_wire_constant <= "00000000";
    konst_1240_wire_constant <= "10";
    konst_1244_wire_constant <= "00000000";
    konst_1247_wire_constant <= "11";
    konst_1251_wire_constant <= "00000000";
    konst_1258_wire_constant <= "00";
    konst_1262_wire_constant <= "0000000000000000";
    konst_1265_wire_constant <= "10";
    konst_1269_wire_constant <= "0000000000000000";
    konst_1288_wire_constant <= "00000000000000000000000000000000";
    konst_1300_wire_constant <= "00000000000000000000000000000000";
    konst_1307_wire_constant <= "00000000000000000000000000000000";
    -- flow-through select operator MUX_1221_inst
    loaded_low_word_1222 <= slice_1219_wire when (OR_u1_u1_1217_wire(0) /=  '0') else loaded_high_word_1211;
    -- flow-through select operator MUX_1230_inst
    MUX_1230_wire <= slice_1228_wire when (EQ_u2_u1_1226_wire(0) /=  '0') else konst_1229_wire_constant;
    -- flow-through select operator MUX_1237_inst
    MUX_1237_wire <= slice_1235_wire when (EQ_u2_u1_1233_wire(0) /=  '0') else konst_1236_wire_constant;
    -- flow-through select operator MUX_1245_inst
    MUX_1245_wire <= slice_1243_wire when (EQ_u2_u1_1241_wire(0) /=  '0') else konst_1244_wire_constant;
    -- flow-through select operator MUX_1252_inst
    MUX_1252_wire <= slice_1250_wire when (EQ_u2_u1_1248_wire(0) /=  '0') else konst_1251_wire_constant;
    -- flow-through select operator MUX_1263_inst
    MUX_1263_wire <= slice_1261_wire when (EQ_u2_u1_1259_wire(0) /=  '0') else konst_1262_wire_constant;
    -- flow-through select operator MUX_1270_inst
    MUX_1270_wire <= slice_1268_wire when (EQ_u2_u1_1266_wire(0) /=  '0') else konst_1269_wire_constant;
    -- flow-through select operator MUX_1287_inst
    MUX_1287_wire <= type_cast_1284_wire when (signed_type_buffer(0) /=  '0') else type_cast_1286_wire;
    -- flow-through select operator MUX_1289_inst
    MUX_1289_wire <= MUX_1287_wire when (byte_buffer(0) /=  '0') else konst_1288_wire_constant;
    -- flow-through select operator MUX_1299_inst
    MUX_1299_wire <= type_cast_1296_wire when (signed_type_buffer(0) /=  '0') else type_cast_1298_wire;
    -- flow-through select operator MUX_1301_inst
    MUX_1301_wire <= MUX_1299_wire when (half_word_buffer(0) /=  '0') else konst_1300_wire_constant;
    -- flow-through select operator MUX_1308_inst
    MUX_1308_wire <= loaded_low_word_1222 when (OR_u1_u1_1305_wire(0) /=  '0') else konst_1307_wire_constant;
    -- flow-through slice operator slice_1183_inst
    dcache_mae_1184 <= dcache_response_buffer(71 downto 64);
    -- flow-through slice operator slice_1187_inst
    loaded_word_1188 <= dcache_response_buffer(63 downto 0);
    -- flow-through slice operator slice_1206_inst
    a10_1207 <= addr_buffer(1 downto 0);
    -- flow-through slice operator slice_1210_inst
    loaded_high_word_1211 <= loaded_word_1188(63 downto 32);
    -- flow-through slice operator slice_1219_inst
    slice_1219_wire <= loaded_word_1188(31 downto 0);
    -- flow-through slice operator slice_1228_inst
    slice_1228_wire <= loaded_low_word_1222(31 downto 24);
    -- flow-through slice operator slice_1235_inst
    slice_1235_wire <= loaded_low_word_1222(23 downto 16);
    -- flow-through slice operator slice_1243_inst
    slice_1243_wire <= loaded_low_word_1222(15 downto 8);
    -- flow-through slice operator slice_1250_inst
    slice_1250_wire <= loaded_low_word_1222(7 downto 0);
    -- flow-through slice operator slice_1261_inst
    slice_1261_wire <= loaded_low_word_1222(31 downto 16);
    -- flow-through slice operator slice_1268_inst
    slice_1268_wire <= loaded_low_word_1222(15 downto 0);
    -- interlock W_dout_h_1273_inst
    process(loaded_high_word_1211) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := loaded_high_word_1211(31 downto 0);
      dout_h_buffer <= tmp_var; -- 
    end process;
    -- interlock type_cast_1282_inst
    process(ext_byte_1255) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 7 downto 0) := ext_byte_1255(7 downto 0);
      type_cast_1282_wire <= tmp_var; -- 
    end process;
    -- interlock type_cast_1284_inst
    process(type_cast_1283_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := type_cast_1283_wire(31 downto 0);
      type_cast_1284_wire <= tmp_var; -- 
    end process;
    -- interlock type_cast_1286_inst
    process(ext_byte_1255) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 7 downto 0) := ext_byte_1255(7 downto 0);
      type_cast_1286_wire <= tmp_var; -- 
    end process;
    -- interlock type_cast_1294_inst
    process(ext_half_word_1272) -- 
      variable tmp_var : std_logic_vector(15 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 15 downto 0) := ext_half_word_1272(15 downto 0);
      type_cast_1294_wire <= tmp_var; -- 
    end process;
    -- interlock type_cast_1296_inst
    process(type_cast_1295_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := type_cast_1295_wire(31 downto 0);
      type_cast_1296_wire <= tmp_var; -- 
    end process;
    -- interlock type_cast_1298_inst
    process(ext_half_word_1272) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 15 downto 0) := ext_half_word_1272(15 downto 0);
      type_cast_1298_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator BITSEL_u32_u1_1216_inst
    process(addr_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(addr_buffer, konst_1215_wire_constant, tmp_var);
      BITSEL_u32_u1_1216_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u8_u1_1192_inst
    process(dcache_mae_1184) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(dcache_mae_1184, konst_1191_wire_constant, tmp_var);
      data_access_exception_buffer <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u8_u1_1197_inst
    process(dcache_mae_1184) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(dcache_mae_1184, konst_1196_wire_constant, tmp_var);
      data_access_error_buffer <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u8_u1_1202_inst
    process(dcache_mae_1184) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(dcache_mae_1184, konst_1201_wire_constant, tmp_var);
      dcache_hit_buffer <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_1226_inst
    process(a10_1207) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(a10_1207, konst_1225_wire_constant, tmp_var);
      EQ_u2_u1_1226_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_1233_inst
    process(a10_1207) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(a10_1207, konst_1232_wire_constant, tmp_var);
      EQ_u2_u1_1233_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_1241_inst
    process(a10_1207) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(a10_1207, konst_1240_wire_constant, tmp_var);
      EQ_u2_u1_1241_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_1248_inst
    process(a10_1207) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(a10_1207, konst_1247_wire_constant, tmp_var);
      EQ_u2_u1_1248_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_1259_inst
    process(a10_1207) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(a10_1207, konst_1258_wire_constant, tmp_var);
      EQ_u2_u1_1259_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_1266_inst
    process(a10_1207) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(a10_1207, konst_1265_wire_constant, tmp_var);
      EQ_u2_u1_1266_wire <= tmp_var; --
    end process;
    -- flow through binary operator OR_u16_u16_1271_inst
    ext_half_word_1272 <= (MUX_1263_wire or MUX_1270_wire);
    -- flow through binary operator OR_u1_u1_1217_inst
    OR_u1_u1_1217_wire <= (double_word_buffer or BITSEL_u32_u1_1216_wire);
    -- flow through binary operator OR_u1_u1_1305_inst
    OR_u1_u1_1305_wire <= (word_buffer or double_word_buffer);
    -- flow through binary operator OR_u32_u32_1302_inst
    OR_u32_u32_1302_wire <= (MUX_1289_wire or MUX_1301_wire);
    -- flow through binary operator OR_u32_u32_1309_inst
    dout_l_buffer <= (OR_u32_u32_1302_wire or MUX_1308_wire);
    -- flow through binary operator OR_u8_u8_1238_inst
    OR_u8_u8_1238_wire <= (MUX_1230_wire or MUX_1237_wire);
    -- flow through binary operator OR_u8_u8_1253_inst
    OR_u8_u8_1253_wire <= (MUX_1245_wire or MUX_1252_wire);
    -- flow through binary operator OR_u8_u8_1254_inst
    ext_byte_1255 <= (OR_u8_u8_1238_wire or OR_u8_u8_1253_wire);
    -- unary operator type_cast_1283_inst
    process(type_cast_1282_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntToApIntSigned", type_cast_1282_wire, tmp_var);
      type_cast_1283_wire <= tmp_var; -- 
    end process;
    -- unary operator type_cast_1295_inst
    process(type_cast_1294_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntToApIntSigned", type_cast_1294_wire, tmp_var);
      type_cast_1295_wire <= tmp_var; -- 
    end process;
    -- 
  end Block; -- data_path
  -- 
end analyze_dcache_response_Volatile_arch;
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
library teu_loadstore;
use teu_loadstore.loadstore_global_package.all;
entity ccu_service_daemon is -- 
  generic (tag_length : integer); 
  port ( -- 
    ccu_to_teu_load_store_command_pipe_read_req : out  std_logic_vector(0 downto 0);
    ccu_to_teu_load_store_command_pipe_read_ack : in   std_logic_vector(0 downto 0);
    ccu_to_teu_load_store_command_pipe_read_data : in   std_logic_vector(72 downto 0);
    teu_to_ccu_load_store_response_pipe_write_req : out  std_logic_vector(0 downto 0);
    teu_to_ccu_load_store_response_pipe_write_ack : in   std_logic_vector(0 downto 0);
    teu_to_ccu_load_store_response_pipe_write_data : out  std_logic_vector(32 downto 0);
    dcache_access_call_reqs : out  std_logic_vector(0 downto 0);
    dcache_access_call_acks : in   std_logic_vector(0 downto 0);
    dcache_access_call_data : out  std_logic_vector(119 downto 0);
    dcache_access_call_tag  :  out  std_logic_vector(1 downto 0);
    dcache_access_return_reqs : out  std_logic_vector(0 downto 0);
    dcache_access_return_acks : in   std_logic_vector(0 downto 0);
    dcache_access_return_data : in   std_logic_vector(71 downto 0);
    dcache_access_return_tag :  in   std_logic_vector(1 downto 0);
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
end entity ccu_service_daemon;
architecture ccu_service_daemon_arch of ccu_service_daemon is -- 
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
  signal ccu_service_daemon_CP_43_start: Boolean;
  signal ccu_service_daemon_CP_43_symbol: Boolean;
  -- volatile/operator module components. 
  component dcache_access is -- 
    generic (tag_length : integer); 
    port ( -- 
      req_type : in  std_logic_vector(7 downto 0);
      asi : in  std_logic_vector(7 downto 0);
      byte_mask : in  std_logic_vector(7 downto 0);
      addr : in  std_logic_vector(31 downto 0);
      write_data : in  std_logic_vector(63 downto 0);
      dcache_read_response : out  std_logic_vector(71 downto 0);
      DCACHE_to_CPU_slow_response_pipe_read_req : out  std_logic_vector(0 downto 0);
      DCACHE_to_CPU_slow_response_pipe_read_ack : in   std_logic_vector(0 downto 0);
      DCACHE_to_CPU_slow_response_pipe_read_data : in   std_logic_vector(71 downto 0);
      NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_req : out  std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_ack : in   std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_data : out  std_logic_vector(120 downto 0);
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
  signal RPIPE_ccu_to_teu_load_store_command_1426_inst_ack_0 : boolean;
  signal CONCAT_u1_u33_1519_inst_ack_1 : boolean;
  signal CONCAT_u1_u33_1519_inst_req_1 : boolean;
  signal WPIPE_teu_to_ccu_load_store_response_1516_inst_ack_1 : boolean;
  signal WPIPE_teu_to_ccu_load_store_response_1516_inst_req_1 : boolean;
  signal CONCAT_u1_u33_1519_inst_ack_0 : boolean;
  signal CONCAT_u1_u33_1519_inst_req_0 : boolean;
  signal RPIPE_ccu_to_teu_load_store_command_1426_inst_req_1 : boolean;
  signal RPIPE_ccu_to_teu_load_store_command_1426_inst_ack_1 : boolean;
  signal WPIPE_teu_to_ccu_load_store_response_1516_inst_ack_0 : boolean;
  signal WPIPE_teu_to_ccu_load_store_response_1516_inst_req_0 : boolean;
  signal call_stmt_1486_call_ack_1 : boolean;
  signal call_stmt_1486_call_req_1 : boolean;
  signal RPIPE_ccu_to_teu_load_store_command_1426_inst_req_0 : boolean;
  signal call_stmt_1486_call_ack_0 : boolean;
  signal call_stmt_1486_call_req_0 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "ccu_service_daemon_input_buffer", -- 
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
  ccu_service_daemon_CP_43_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "ccu_service_daemon_out_buffer", -- 
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
    preds <= ccu_service_daemon_CP_43_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
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
    preds <= ccu_service_daemon_CP_43_start & tag_ilock_write_ack_symbol;
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
    preds <= ccu_service_daemon_CP_43_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  ccu_service_daemon_CP_43: Block -- control-path 
    signal ccu_service_daemon_CP_43_elements: BooleanArray(11 downto 0);
    -- 
  begin -- 
    ccu_service_daemon_CP_43_elements(0) <= ccu_service_daemon_CP_43_start;
    ccu_service_daemon_CP_43_symbol <= ccu_service_daemon_CP_43_elements(1);
    -- CP-element group 0:  branch  transition  place  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	11 
    -- CP-element group 0:  members (7) 
      -- CP-element group 0: 	 branch_block_stmt_1422/merge_stmt_1424__entry__
      -- CP-element group 0: 	 branch_block_stmt_1422/merge_stmt_1424_dead_link/$entry
      -- CP-element group 0: 	 branch_block_stmt_1422/branch_block_stmt_1422__entry__
      -- CP-element group 0: 	 branch_block_stmt_1422/$entry
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 branch_block_stmt_1422/merge_stmt_1424__entry___PhiReq/$entry
      -- CP-element group 0: 	 branch_block_stmt_1422/merge_stmt_1424__entry___PhiReq/$exit
      -- 
    -- CP-element group 1:  transition  place  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: successors 
    -- CP-element group 1:  members (3) 
      -- CP-element group 1: 	 branch_block_stmt_1422/branch_block_stmt_1422__exit__
      -- CP-element group 1: 	 branch_block_stmt_1422/$exit
      -- CP-element group 1: 	 $exit
      -- 
    ccu_service_daemon_CP_43_elements(1) <= false; 
    -- CP-element group 2:  transition  input  output  bypass 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	11 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	3 
    -- CP-element group 2:  members (6) 
      -- CP-element group 2: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/RPIPE_ccu_to_teu_load_store_command_1426_sample_completed_
      -- CP-element group 2: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/RPIPE_ccu_to_teu_load_store_command_1426_update_start_
      -- CP-element group 2: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/RPIPE_ccu_to_teu_load_store_command_1426_Sample/ra
      -- CP-element group 2: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/RPIPE_ccu_to_teu_load_store_command_1426_Update/cr
      -- CP-element group 2: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/RPIPE_ccu_to_teu_load_store_command_1426_Update/$entry
      -- CP-element group 2: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/RPIPE_ccu_to_teu_load_store_command_1426_Sample/$exit
      -- 
    ra_67_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 2_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ccu_to_teu_load_store_command_1426_inst_ack_0, ack => ccu_service_daemon_CP_43_elements(2)); -- 
    cr_71_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_71_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ccu_service_daemon_CP_43_elements(2), ack => RPIPE_ccu_to_teu_load_store_command_1426_inst_req_1); -- 
    -- CP-element group 3:  fork  transition  input  output  bypass 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: 	2 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	4 
    -- CP-element group 3: 	6 
    -- CP-element group 3:  members (6) 
      -- CP-element group 3: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/call_stmt_1486_sample_start_
      -- CP-element group 3: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/RPIPE_ccu_to_teu_load_store_command_1426_Update/ca
      -- CP-element group 3: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/RPIPE_ccu_to_teu_load_store_command_1426_Update/$exit
      -- CP-element group 3: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/call_stmt_1486_Sample/$entry
      -- CP-element group 3: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/RPIPE_ccu_to_teu_load_store_command_1426_update_completed_
      -- CP-element group 3: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/call_stmt_1486_Sample/crr
      -- 
    ca_72_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 3_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ccu_to_teu_load_store_command_1426_inst_ack_1, ack => ccu_service_daemon_CP_43_elements(3)); -- 
    crr_80_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " crr_80_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ccu_service_daemon_CP_43_elements(3), ack => call_stmt_1486_call_req_0); -- 
    -- CP-element group 4:  transition  input  bypass 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: 	3 
    -- CP-element group 4: successors 
    -- CP-element group 4:  members (3) 
      -- CP-element group 4: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/call_stmt_1486_Sample/$exit
      -- CP-element group 4: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/call_stmt_1486_sample_completed_
      -- CP-element group 4: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/call_stmt_1486_Sample/cra
      -- 
    cra_81_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 4_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_1486_call_ack_0, ack => ccu_service_daemon_CP_43_elements(4)); -- 
    -- CP-element group 5:  transition  input  bypass 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	11 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	6 
    -- CP-element group 5:  members (3) 
      -- CP-element group 5: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/call_stmt_1486_update_completed_
      -- CP-element group 5: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/call_stmt_1486_Update/cca
      -- CP-element group 5: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/call_stmt_1486_Update/$exit
      -- 
    cca_86_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 5_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_1486_call_ack_1, ack => ccu_service_daemon_CP_43_elements(5)); -- 
    -- CP-element group 6:  join  transition  output  bypass 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	5 
    -- CP-element group 6: 	3 
    -- CP-element group 6: successors 
    -- CP-element group 6: 	7 
    -- CP-element group 6:  members (3) 
      -- CP-element group 6: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/CONCAT_u1_u33_1519_Sample/rr
      -- CP-element group 6: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/CONCAT_u1_u33_1519_Sample/$entry
      -- CP-element group 6: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/CONCAT_u1_u33_1519_sample_start_
      -- 
    rr_94_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_94_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ccu_service_daemon_CP_43_elements(6), ack => CONCAT_u1_u33_1519_inst_req_0); -- 
    ccu_service_daemon_cp_element_group_6: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 37) := "ccu_service_daemon_cp_element_group_6"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= ccu_service_daemon_CP_43_elements(5) & ccu_service_daemon_CP_43_elements(3);
      gj_ccu_service_daemon_cp_element_group_6 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => ccu_service_daemon_CP_43_elements(6), clk => clk, reset => reset); --
    end block;
    -- CP-element group 7:  transition  input  bypass 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	6 
    -- CP-element group 7: successors 
    -- CP-element group 7:  members (3) 
      -- CP-element group 7: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/CONCAT_u1_u33_1519_Sample/ra
      -- CP-element group 7: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/CONCAT_u1_u33_1519_Sample/$exit
      -- CP-element group 7: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/CONCAT_u1_u33_1519_sample_completed_
      -- 
    ra_95_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 7_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => CONCAT_u1_u33_1519_inst_ack_0, ack => ccu_service_daemon_CP_43_elements(7)); -- 
    -- CP-element group 8:  transition  input  output  bypass 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	11 
    -- CP-element group 8: successors 
    -- CP-element group 8: 	9 
    -- CP-element group 8:  members (6) 
      -- CP-element group 8: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/WPIPE_teu_to_ccu_load_store_response_1516_sample_start_
      -- CP-element group 8: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/CONCAT_u1_u33_1519_Update/ca
      -- CP-element group 8: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/CONCAT_u1_u33_1519_Update/$exit
      -- CP-element group 8: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/CONCAT_u1_u33_1519_update_completed_
      -- CP-element group 8: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/WPIPE_teu_to_ccu_load_store_response_1516_Sample/req
      -- CP-element group 8: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/WPIPE_teu_to_ccu_load_store_response_1516_Sample/$entry
      -- 
    ca_100_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 8_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => CONCAT_u1_u33_1519_inst_ack_1, ack => ccu_service_daemon_CP_43_elements(8)); -- 
    req_108_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_108_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ccu_service_daemon_CP_43_elements(8), ack => WPIPE_teu_to_ccu_load_store_response_1516_inst_req_0); -- 
    -- CP-element group 9:  transition  input  output  bypass 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: 	8 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	10 
    -- CP-element group 9:  members (6) 
      -- CP-element group 9: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/WPIPE_teu_to_ccu_load_store_response_1516_update_start_
      -- CP-element group 9: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/WPIPE_teu_to_ccu_load_store_response_1516_sample_completed_
      -- CP-element group 9: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/WPIPE_teu_to_ccu_load_store_response_1516_Update/req
      -- CP-element group 9: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/WPIPE_teu_to_ccu_load_store_response_1516_Update/$entry
      -- CP-element group 9: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/WPIPE_teu_to_ccu_load_store_response_1516_Sample/ack
      -- CP-element group 9: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/WPIPE_teu_to_ccu_load_store_response_1516_Sample/$exit
      -- 
    ack_109_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 9_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_to_ccu_load_store_response_1516_inst_ack_0, ack => ccu_service_daemon_CP_43_elements(9)); -- 
    req_113_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_113_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ccu_service_daemon_CP_43_elements(9), ack => WPIPE_teu_to_ccu_load_store_response_1516_inst_req_1); -- 
    -- CP-element group 10:  transition  place  input  bypass 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	9 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	11 
    -- CP-element group 10:  members (8) 
      -- CP-element group 10: 	 branch_block_stmt_1422/loopback_PhiReq/$entry
      -- CP-element group 10: 	 branch_block_stmt_1422/loopback_PhiReq/$exit
      -- CP-element group 10: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/$exit
      -- CP-element group 10: 	 branch_block_stmt_1422/loopback
      -- CP-element group 10: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520__exit__
      -- CP-element group 10: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/WPIPE_teu_to_ccu_load_store_response_1516_Update/ack
      -- CP-element group 10: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/WPIPE_teu_to_ccu_load_store_response_1516_Update/$exit
      -- CP-element group 10: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/WPIPE_teu_to_ccu_load_store_response_1516_update_completed_
      -- 
    ack_114_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 10_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_to_ccu_load_store_response_1516_inst_ack_1, ack => ccu_service_daemon_CP_43_elements(10)); -- 
    -- CP-element group 11:  merge  fork  transition  place  output  bypass 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	10 
    -- CP-element group 11: 	0 
    -- CP-element group 11: successors 
    -- CP-element group 11: 	8 
    -- CP-element group 11: 	5 
    -- CP-element group 11: 	2 
    -- CP-element group 11:  members (16) 
      -- CP-element group 11: 	 branch_block_stmt_1422/merge_stmt_1424_PhiAck/$entry
      -- CP-element group 11: 	 branch_block_stmt_1422/merge_stmt_1424_PhiAck/$exit
      -- CP-element group 11: 	 branch_block_stmt_1422/merge_stmt_1424_PhiReqMerge
      -- CP-element group 11: 	 branch_block_stmt_1422/merge_stmt_1424_PhiAck/dummy
      -- CP-element group 11: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/RPIPE_ccu_to_teu_load_store_command_1426_Sample/$entry
      -- CP-element group 11: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/RPIPE_ccu_to_teu_load_store_command_1426_sample_start_
      -- CP-element group 11: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/$entry
      -- CP-element group 11: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520__entry__
      -- CP-element group 11: 	 branch_block_stmt_1422/merge_stmt_1424__exit__
      -- CP-element group 11: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/call_stmt_1486_Update/$entry
      -- CP-element group 11: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/CONCAT_u1_u33_1519_Update/cr
      -- CP-element group 11: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/CONCAT_u1_u33_1519_Update/$entry
      -- CP-element group 11: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/call_stmt_1486_update_start_
      -- CP-element group 11: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/CONCAT_u1_u33_1519_update_start_
      -- CP-element group 11: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/call_stmt_1486_Update/ccr
      -- CP-element group 11: 	 branch_block_stmt_1422/assign_stmt_1427_to_assign_stmt_1520/RPIPE_ccu_to_teu_load_store_command_1426_Sample/rr
      -- 
    cr_99_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_99_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ccu_service_daemon_CP_43_elements(11), ack => CONCAT_u1_u33_1519_inst_req_1); -- 
    ccr_85_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " ccr_85_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ccu_service_daemon_CP_43_elements(11), ack => call_stmt_1486_call_req_1); -- 
    rr_66_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_66_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ccu_service_daemon_CP_43_elements(11), ack => RPIPE_ccu_to_teu_load_store_command_1426_inst_req_0); -- 
    ccu_service_daemon_CP_43_elements(11) <= OrReduce(ccu_service_daemon_CP_43_elements(10) & ccu_service_daemon_CP_43_elements(0));
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal AND_u8_u8_1512_wire : std_logic_vector(7 downto 0);
    signal CONCAT_u1_u33_1519_wire : std_logic_vector(32 downto 0);
    signal MUX_1477_wire : std_logic_vector(3 downto 0);
    signal R_FIFTEEN_8_1466_wire_constant : std_logic_vector(7 downto 0);
    signal R_REQUEST_TYPE_CCU_CACHE_READ_1475_wire_constant : std_logic_vector(3 downto 0);
    signal R_REQUEST_TYPE_CCU_CACHE_WRITE_1476_wire_constant : std_logic_vector(3 downto 0);
    signal R_ZERO_4_1473_wire_constant : std_logic_vector(3 downto 0);
    signal SHL_u8_u8_1469_wire_constant : std_logic_vector(7 downto 0);
    signal addr_1439 : std_logic_vector(31 downto 0);
    signal asi_1435 : std_logic_vector(7 downto 0);
    signal byte_mask_1471 : std_logic_vector(7 downto 0);
    signal ccu_req_1427 : std_logic_vector(72 downto 0);
    signal dcache_dword_1494 : std_logic_vector(63 downto 0);
    signal dcache_rsp_1486 : std_logic_vector(71 downto 0);
    signal din_1443 : std_logic_vector(31 downto 0);
    signal dout_1508 : std_logic_vector(31 downto 0);
    signal dout_64_1500 : std_logic_vector(63 downto 0);
    signal dword_addr_1458 : std_logic_vector(31 downto 0);
    signal err_1515 : std_logic_vector(0 downto 0);
    signal konst_1456_wire_constant : std_logic_vector(31 downto 0);
    signal konst_1461_wire_constant : std_logic_vector(31 downto 0);
    signal konst_1498_wire_constant : std_logic_vector(63 downto 0);
    signal konst_1511_wire_constant : std_logic_vector(7 downto 0);
    signal konst_1513_wire_constant : std_logic_vector(7 downto 0);
    signal lower_word_1463 : std_logic_vector(0 downto 0);
    signal mae_1490 : std_logic_vector(7 downto 0);
    signal rd_wr_bar_1431 : std_logic_vector(0 downto 0);
    signal req_type_1479 : std_logic_vector(7 downto 0);
    signal slice_1504_wire : std_logic_vector(31 downto 0);
    signal slice_1506_wire : std_logic_vector(31 downto 0);
    signal write_data_1453 : std_logic_vector(63 downto 0);
    -- 
  begin -- 
    R_FIFTEEN_8_1466_wire_constant <= "00001111";
    R_REQUEST_TYPE_CCU_CACHE_READ_1475_wire_constant <= "0101";
    R_REQUEST_TYPE_CCU_CACHE_WRITE_1476_wire_constant <= "0110";
    R_ZERO_4_1473_wire_constant <= "0000";
    SHL_u8_u8_1469_wire_constant <= "11110000";
    konst_1456_wire_constant <= "11111111111111111111111111111000";
    konst_1461_wire_constant <= "00000000000000000000000000000010";
    konst_1498_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000000";
    konst_1511_wire_constant <= "00000011";
    konst_1513_wire_constant <= "00000000";
    -- flow-through select operator MUX_1470_inst
    byte_mask_1471 <= R_FIFTEEN_8_1466_wire_constant when (lower_word_1463(0) /=  '0') else SHL_u8_u8_1469_wire_constant;
    -- flow-through select operator MUX_1477_inst
    MUX_1477_wire <= R_REQUEST_TYPE_CCU_CACHE_READ_1475_wire_constant when (rd_wr_bar_1431(0) /=  '0') else R_REQUEST_TYPE_CCU_CACHE_WRITE_1476_wire_constant;
    -- flow-through select operator MUX_1499_inst
    dout_64_1500 <= dcache_dword_1494 when (rd_wr_bar_1431(0) /=  '0') else konst_1498_wire_constant;
    -- flow-through select operator MUX_1507_inst
    dout_1508 <= slice_1504_wire when (lower_word_1463(0) /=  '0') else slice_1506_wire;
    -- flow-through slice operator slice_1430_inst
    rd_wr_bar_1431 <= ccu_req_1427(72 downto 72);
    -- flow-through slice operator slice_1434_inst
    asi_1435 <= ccu_req_1427(71 downto 64);
    -- flow-through slice operator slice_1438_inst
    addr_1439 <= ccu_req_1427(63 downto 32);
    -- flow-through slice operator slice_1442_inst
    din_1443 <= ccu_req_1427(31 downto 0);
    -- flow-through slice operator slice_1489_inst
    mae_1490 <= dcache_rsp_1486(71 downto 64);
    -- flow-through slice operator slice_1493_inst
    dcache_dword_1494 <= dcache_rsp_1486(63 downto 0);
    -- flow-through slice operator slice_1504_inst
    slice_1504_wire <= dout_64_1500(31 downto 0);
    -- flow-through slice operator slice_1506_inst
    slice_1506_wire <= dout_64_1500(63 downto 32);
    -- flow through binary operator AND_u32_u32_1457_inst
    dword_addr_1458 <= (addr_1439 and konst_1456_wire_constant);
    -- flow through binary operator AND_u8_u8_1512_inst
    AND_u8_u8_1512_wire <= (mae_1490 and konst_1511_wire_constant);
    -- flow through binary operator BITSEL_u32_u1_1462_inst
    process(addr_1439) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(addr_1439, konst_1461_wire_constant, tmp_var);
      lower_word_1463 <= tmp_var; --
    end process;
    -- shared split operator group (3) : CONCAT_u1_u33_1519_inst 
    ApConcat_group_3: Block -- 
      signal data_in: std_logic_vector(32 downto 0);
      signal data_out: std_logic_vector(32 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      data_in <= err_1515 & dout_1508;
      CONCAT_u1_u33_1519_wire <= data_out(32 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= CONCAT_u1_u33_1519_inst_req_0;
      CONCAT_u1_u33_1519_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= CONCAT_u1_u33_1519_inst_req_1;
      CONCAT_u1_u33_1519_inst_ack_1 <= ackR_unguarded(0);
      ApConcat_group_3_gI: SplitGuardInterface generic map(name => "ApConcat_group_3_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
          name => "ApConcat_group_3",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 1,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 32, 
          num_inputs    => 2,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 33,
          constant_operand => "0",
          constant_width => 1,
          buffering  => 1,
          flow_through => false,
          full_rate  => false,
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
    end Block; -- split operator group 3
    -- flow through binary operator CONCAT_u32_u64_1452_inst
    process(din_1443, din_1443) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(din_1443, din_1443, tmp_var);
      write_data_1453 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u8_1478_inst
    process(R_ZERO_4_1473_wire_constant, MUX_1477_wire) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(R_ZERO_4_1473_wire_constant, MUX_1477_wire, tmp_var);
      req_type_1479 <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u8_u1_1514_inst
    process(AND_u8_u8_1512_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(AND_u8_u8_1512_wire, konst_1513_wire_constant, tmp_var);
      err_1515 <= tmp_var; --
    end process;
    -- shared inport operator group (0) : RPIPE_ccu_to_teu_load_store_command_1426_inst 
    InportGroup_0: Block -- 
      signal data_out: std_logic_vector(72 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_ccu_to_teu_load_store_command_1426_inst_req_0;
      RPIPE_ccu_to_teu_load_store_command_1426_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_ccu_to_teu_load_store_command_1426_inst_req_1;
      RPIPE_ccu_to_teu_load_store_command_1426_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      ccu_req_1427 <= data_out(72 downto 0);
      ccu_to_teu_load_store_command_read_0_gI: SplitGuardInterface generic map(name => "ccu_to_teu_load_store_command_read_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      ccu_to_teu_load_store_command_read_0: InputPort_P2P -- 
        generic map ( name => "ccu_to_teu_load_store_command_read_0", data_width => 73,    bypass_flag => false,   	nonblocking_read_flag => false,  barrier_flag => false,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => ccu_to_teu_load_store_command_pipe_read_req(0),
          oack => ccu_to_teu_load_store_command_pipe_read_ack(0),
          odata => ccu_to_teu_load_store_command_pipe_read_data(72 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 0
    -- shared outport operator group (0) : WPIPE_teu_to_ccu_load_store_response_1516_inst 
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
      sample_req_unguarded(0) <= WPIPE_teu_to_ccu_load_store_response_1516_inst_req_0;
      WPIPE_teu_to_ccu_load_store_response_1516_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_teu_to_ccu_load_store_response_1516_inst_req_1;
      WPIPE_teu_to_ccu_load_store_response_1516_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= CONCAT_u1_u33_1519_wire;
      teu_to_ccu_load_store_response_write_0_gI: SplitGuardInterface generic map(name => "teu_to_ccu_load_store_response_write_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      teu_to_ccu_load_store_response_write_0: OutputPortRevised -- 
        generic map ( name => "teu_to_ccu_load_store_response", data_width => 33, num_reqs => 1, input_buffering => inBUFs, full_rate => false,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => teu_to_ccu_load_store_response_pipe_write_req(0),
          oack => teu_to_ccu_load_store_response_pipe_write_ack(0),
          odata => teu_to_ccu_load_store_response_pipe_write_data(32 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    -- shared call operator group (0) : call_stmt_1486_call 
    dcache_access_call_group_0: Block -- 
      signal data_in: std_logic_vector(119 downto 0);
      signal data_out: std_logic_vector(71 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqL_unregulated, ackL_unregulated : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= call_stmt_1486_call_req_0;
      call_stmt_1486_call_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= call_stmt_1486_call_req_1;
      call_stmt_1486_call_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      reqL <= reqL_unregulated;
      ackL_unregulated <= ackL;
      dcache_access_call_group_0_gI: SplitGuardInterface generic map(name => "dcache_access_call_group_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
      data_in <= req_type_1479 & asi_1435 & byte_mask_1471 & dword_addr_1458 & write_data_1453;
      dcache_rsp_1486 <= data_out(71 downto 0);
      CallReq: InputMuxWithBuffering -- 
        generic map (name => "InputMuxWithBuffering",
        iwidth => 120,
        owidth => 120,
        buffering => inBUFs,
        full_rate =>  false,
        twidth => 2,
        nreqs => 1,
        registered_output => false,
        no_arbitration => false)
        port map ( -- 
          reqL => reqL , 
          ackL => ackL , 
          dataL => data_in, 
          reqR => dcache_access_call_reqs(0),
          ackR => dcache_access_call_acks(0),
          dataR => dcache_access_call_data(119 downto 0),
          tagR => dcache_access_call_tag(1 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      CallComplete: OutputDemuxBaseWithBuffering -- 
        generic map ( -- 
          iwidth => 72,
          owidth => 72,
          detailed_buffering_per_output => outBUFs, 
          full_rate => false, 
          twidth => 2,
          name => "OutputDemuxBaseWithBuffering",
          nreqs => 1) -- 
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          dataR => data_out, 
          reqL => dcache_access_return_acks(0), -- cross-over
          ackL => dcache_access_return_reqs(0), -- cross-over
          dataL => dcache_access_return_data(71 downto 0),
          tagL => dcache_access_return_tag(1 downto 0),
          clk => clk,
          reset => reset -- 
        ); -- 
      -- 
    end Block; -- call group 0
    -- 
  end Block; -- data_path
  -- 
end ccu_service_daemon_arch;
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
library teu_loadstore;
use teu_loadstore.loadstore_global_package.all;
entity classify_load_store_operation_Volatile is -- 
  port ( -- 
    untrap_cache : in  std_logic_vector(0 downto 0);
    update_mmu_fsr : in  std_logic_vector(0 downto 0);
    is_load : in  std_logic_vector(0 downto 0);
    is_store : in  std_logic_vector(0 downto 0);
    is_swap : in  std_logic_vector(0 downto 0);
    is_atomic_ld_st : in  std_logic_vector(0 downto 0);
    run_flush : in  std_logic_vector(0 downto 0);
    is_simple_load_store : out  std_logic_vector(0 downto 0);
    is_messy_load_store : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity classify_load_store_operation_Volatile;
architecture classify_load_store_operation_Volatile_arch of classify_load_store_operation_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(7-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal untrap_cache_buffer :  std_logic_vector(0 downto 0);
  signal update_mmu_fsr_buffer :  std_logic_vector(0 downto 0);
  signal is_load_buffer :  std_logic_vector(0 downto 0);
  signal is_store_buffer :  std_logic_vector(0 downto 0);
  signal is_swap_buffer :  std_logic_vector(0 downto 0);
  signal is_atomic_ld_st_buffer :  std_logic_vector(0 downto 0);
  signal run_flush_buffer :  std_logic_vector(0 downto 0);
  -- output port buffer signals
  signal is_simple_load_store_buffer :  std_logic_vector(0 downto 0);
  signal is_messy_load_store_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  untrap_cache_buffer <= untrap_cache;
  update_mmu_fsr_buffer <= update_mmu_fsr;
  is_load_buffer <= is_load;
  is_store_buffer <= is_store;
  is_swap_buffer <= is_swap;
  is_atomic_ld_st_buffer <= is_atomic_ld_st;
  run_flush_buffer <= run_flush;
  -- output handling  -------------------------------------------------------
  is_simple_load_store <= is_simple_load_store_buffer;
  is_messy_load_store <= is_messy_load_store_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_1578_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1582_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1575_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1577_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1580_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1597_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1591_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1600_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1602_wire : std_logic_vector(0 downto 0);
    signal is_load_request_1557 : std_logic_vector(0 downto 0);
    signal is_messy_load_request_1552 : std_logic_vector(0 downto 0);
    signal is_messy_store_request_1567 : std_logic_vector(0 downto 0);
    signal is_simple_load_request_1547 : std_logic_vector(0 downto 0);
    signal is_simple_store_request_1562 : std_logic_vector(0 downto 0);
    signal is_store_request_1572 : std_logic_vector(0 downto 0);
    signal is_untrap_request_1584 : std_logic_vector(0 downto 0);
    signal is_write_mmu_fsr_request_1587 : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    -- interlock W_is_simple_load_request_1545_inst
    process(is_load_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := is_load_buffer(0 downto 0);
      is_simple_load_request_1547 <= tmp_var; -- 
    end process;
    -- interlock W_is_write_mmu_fsr_request_1585_inst
    process(update_mmu_fsr_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := update_mmu_fsr_buffer(0 downto 0);
      is_write_mmu_fsr_request_1587 <= tmp_var; -- 
    end process;
    -- flow through binary operator AND_u1_u1_1578_inst
    AND_u1_u1_1578_wire <= (NOT_u1_u1_1575_wire and NOT_u1_u1_1577_wire);
    -- flow through binary operator AND_u1_u1_1582_inst
    AND_u1_u1_1582_wire <= (NOT_u1_u1_1580_wire and untrap_cache_buffer);
    -- flow through binary operator AND_u1_u1_1583_inst
    is_untrap_request_1584 <= (AND_u1_u1_1578_wire and AND_u1_u1_1582_wire);
    -- flow through binary operator AND_u1_u1_1603_inst
    is_simple_load_store_buffer <= (NOT_u1_u1_1597_wire and OR_u1_u1_1602_wire);
    -- unary operator NOT_u1_u1_1575_inst
    process(is_store_request_1572) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", is_store_request_1572, tmp_var);
      NOT_u1_u1_1575_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_1577_inst
    process(is_load_request_1557) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", is_load_request_1557, tmp_var);
      NOT_u1_u1_1577_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_1580_inst
    process(update_mmu_fsr_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", update_mmu_fsr_buffer, tmp_var);
      NOT_u1_u1_1580_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_1597_inst
    process(is_messy_load_store_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", is_messy_load_store_buffer, tmp_var);
      NOT_u1_u1_1597_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator OR_u1_u1_1551_inst
    is_messy_load_request_1552 <= (is_swap_buffer or is_atomic_ld_st_buffer);
    -- flow through binary operator OR_u1_u1_1556_inst
    is_load_request_1557 <= (is_messy_load_request_1552 or is_simple_load_request_1547);
    -- flow through binary operator OR_u1_u1_1561_inst
    is_simple_store_request_1562 <= (is_store_buffer or run_flush_buffer);
    -- flow through binary operator OR_u1_u1_1566_inst
    is_messy_store_request_1567 <= (is_swap_buffer or is_atomic_ld_st_buffer);
    -- flow through binary operator OR_u1_u1_1571_inst
    is_store_request_1572 <= (is_messy_store_request_1567 or is_simple_store_request_1562);
    -- flow through binary operator OR_u1_u1_1591_inst
    OR_u1_u1_1591_wire <= (is_messy_load_request_1552 or is_messy_store_request_1567);
    -- flow through binary operator OR_u1_u1_1593_inst
    is_messy_load_store_buffer <= (OR_u1_u1_1591_wire or is_write_mmu_fsr_request_1587);
    -- flow through binary operator OR_u1_u1_1600_inst
    OR_u1_u1_1600_wire <= (is_simple_load_request_1547 or is_simple_store_request_1562);
    -- flow through binary operator OR_u1_u1_1602_inst
    OR_u1_u1_1602_wire <= (OR_u1_u1_1600_wire or is_untrap_request_1584);
    -- 
  end Block; -- data_path
  -- 
end classify_load_store_operation_Volatile_arch;
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
library teu_loadstore;
use teu_loadstore.loadstore_global_package.all;
entity dcache_access is -- 
  generic (tag_length : integer); 
  port ( -- 
    req_type : in  std_logic_vector(7 downto 0);
    asi : in  std_logic_vector(7 downto 0);
    byte_mask : in  std_logic_vector(7 downto 0);
    addr : in  std_logic_vector(31 downto 0);
    write_data : in  std_logic_vector(63 downto 0);
    dcache_read_response : out  std_logic_vector(71 downto 0);
    DCACHE_to_CPU_slow_response_pipe_read_req : out  std_logic_vector(0 downto 0);
    DCACHE_to_CPU_slow_response_pipe_read_ack : in   std_logic_vector(0 downto 0);
    DCACHE_to_CPU_slow_response_pipe_read_data : in   std_logic_vector(71 downto 0);
    NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_req : out  std_logic_vector(0 downto 0);
    NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_ack : in   std_logic_vector(0 downto 0);
    NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_data : out  std_logic_vector(120 downto 0);
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
end entity dcache_access;
architecture dcache_access_arch of dcache_access is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector((tag_length + 120)-1 downto 0);
  signal default_zero_sig: std_logic;
  signal in_buffer_write_req: std_logic;
  signal in_buffer_write_ack: std_logic;
  signal in_buffer_unload_req_symbol: Boolean;
  signal in_buffer_unload_ack_symbol: Boolean;
  signal out_buffer_data_in, out_buffer_data_out: std_logic_vector((tag_length + 72)-1 downto 0);
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
  signal req_type_buffer :  std_logic_vector(7 downto 0);
  signal req_type_update_enable: Boolean;
  signal asi_buffer :  std_logic_vector(7 downto 0);
  signal asi_update_enable: Boolean;
  signal byte_mask_buffer :  std_logic_vector(7 downto 0);
  signal byte_mask_update_enable: Boolean;
  signal addr_buffer :  std_logic_vector(31 downto 0);
  signal addr_update_enable: Boolean;
  signal write_data_buffer :  std_logic_vector(63 downto 0);
  signal write_data_update_enable: Boolean;
  -- output port buffer signals
  signal dcache_read_response_buffer :  std_logic_vector(71 downto 0);
  signal dcache_read_response_update_enable: Boolean;
  signal dcache_access_CP_9_start: Boolean;
  signal dcache_access_CP_9_symbol: Boolean;
  -- volatile/operator module components. 
  -- links between control-path and data-path
  signal RPIPE_DCACHE_to_CPU_slow_response_1418_inst_req_1 : boolean;
  signal RPIPE_DCACHE_to_CPU_slow_response_1418_inst_ack_1 : boolean;
  signal RPIPE_DCACHE_to_CPU_slow_response_1418_inst_req_0 : boolean;
  signal RPIPE_DCACHE_to_CPU_slow_response_1418_inst_ack_0 : boolean;
  signal WPIPE_NOBLOCK_CPU_to_DCACHE_slow_command_1414_inst_req_1 : boolean;
  signal WPIPE_NOBLOCK_CPU_to_DCACHE_slow_command_1414_inst_ack_1 : boolean;
  signal WPIPE_NOBLOCK_CPU_to_DCACHE_slow_command_1414_inst_req_0 : boolean;
  signal WPIPE_NOBLOCK_CPU_to_DCACHE_slow_command_1414_inst_ack_0 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "dcache_access_input_buffer", -- 
      buffer_size => 1,
      bypass_flag => false,
      data_width => tag_length + 120) -- 
    port map(write_req => in_buffer_write_req, -- 
      write_ack => in_buffer_write_ack, 
      write_data => in_buffer_data_in,
      unload_req => in_buffer_unload_req_symbol, 
      unload_ack => in_buffer_unload_ack_symbol, 
      read_data => in_buffer_data_out,
      clk => clk, reset => reset); -- 
  in_buffer_data_in(7 downto 0) <= req_type;
  req_type_buffer <= in_buffer_data_out(7 downto 0);
  in_buffer_data_in(15 downto 8) <= asi;
  asi_buffer <= in_buffer_data_out(15 downto 8);
  in_buffer_data_in(23 downto 16) <= byte_mask;
  byte_mask_buffer <= in_buffer_data_out(23 downto 16);
  in_buffer_data_in(55 downto 24) <= addr;
  addr_buffer <= in_buffer_data_out(55 downto 24);
  in_buffer_data_in(119 downto 56) <= write_data;
  write_data_buffer <= in_buffer_data_out(119 downto 56);
  in_buffer_data_in(tag_length + 119 downto 120) <= tag_in;
  tag_ub_out <= in_buffer_data_out(tag_length + 119 downto 120);
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
  dcache_access_CP_9_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "dcache_access_out_buffer", -- 
      buffer_size => 1,
      full_rate => false,
      data_width => tag_length + 72) --
    port map(write_req => out_buffer_write_req_symbol, -- 
      write_ack => out_buffer_write_ack_symbol, 
      write_data => out_buffer_data_in,
      read_req => out_buffer_read_req, 
      read_ack => out_buffer_read_ack, 
      read_data => out_buffer_data_out,
      clk => clk, reset => reset); -- 
  out_buffer_data_in(71 downto 0) <= dcache_read_response_buffer;
  dcache_read_response <= out_buffer_data_out(71 downto 0);
  out_buffer_data_in(tag_length + 71 downto 72) <= tag_ilock_out;
  tag_out <= out_buffer_data_out(tag_length + 71 downto 72);
  out_buffer_write_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
    constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 0);
    constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 1,2 => 0);
    constant joinName: string(1 to 32) := "out_buffer_write_req_symbol_join"; 
    signal preds: BooleanArray(1 to 3); -- 
  begin -- 
    preds <= dcache_access_CP_9_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
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
    preds <= dcache_access_CP_9_start & tag_ilock_write_ack_symbol;
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
    preds <= dcache_access_CP_9_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  dcache_access_CP_9: Block -- control-path 
    signal dcache_access_CP_9_elements: BooleanArray(5 downto 0);
    -- 
  begin -- 
    dcache_access_CP_9_elements(0) <= dcache_access_CP_9_start;
    dcache_access_CP_9_symbol <= dcache_access_CP_9_elements(5);
    -- CP-element group 0:  fork  transition  output  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	1 
    -- CP-element group 0: 	3 
    -- CP-element group 0:  members (8) 
      -- CP-element group 0: 	 assign_stmt_1413_to_assign_stmt_1419/WPIPE_NOBLOCK_CPU_to_DCACHE_slow_command_1414_sample_start_
      -- CP-element group 0: 	 assign_stmt_1413_to_assign_stmt_1419/$entry
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 assign_stmt_1413_to_assign_stmt_1419/RPIPE_DCACHE_to_CPU_slow_response_1418_sample_start_
      -- CP-element group 0: 	 assign_stmt_1413_to_assign_stmt_1419/RPIPE_DCACHE_to_CPU_slow_response_1418_Sample/rr
      -- CP-element group 0: 	 assign_stmt_1413_to_assign_stmt_1419/RPIPE_DCACHE_to_CPU_slow_response_1418_Sample/$entry
      -- CP-element group 0: 	 assign_stmt_1413_to_assign_stmt_1419/WPIPE_NOBLOCK_CPU_to_DCACHE_slow_command_1414_Sample/req
      -- CP-element group 0: 	 assign_stmt_1413_to_assign_stmt_1419/WPIPE_NOBLOCK_CPU_to_DCACHE_slow_command_1414_Sample/$entry
      -- 
    req_22_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_22_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dcache_access_CP_9_elements(0), ack => WPIPE_NOBLOCK_CPU_to_DCACHE_slow_command_1414_inst_req_0); -- 
    rr_36_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_36_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dcache_access_CP_9_elements(0), ack => RPIPE_DCACHE_to_CPU_slow_response_1418_inst_req_0); -- 
    -- CP-element group 1:  transition  input  output  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	0 
    -- CP-element group 1: successors 
    -- CP-element group 1: 	2 
    -- CP-element group 1:  members (6) 
      -- CP-element group 1: 	 assign_stmt_1413_to_assign_stmt_1419/WPIPE_NOBLOCK_CPU_to_DCACHE_slow_command_1414_sample_completed_
      -- CP-element group 1: 	 assign_stmt_1413_to_assign_stmt_1419/WPIPE_NOBLOCK_CPU_to_DCACHE_slow_command_1414_update_start_
      -- CP-element group 1: 	 assign_stmt_1413_to_assign_stmt_1419/WPIPE_NOBLOCK_CPU_to_DCACHE_slow_command_1414_Update/req
      -- CP-element group 1: 	 assign_stmt_1413_to_assign_stmt_1419/WPIPE_NOBLOCK_CPU_to_DCACHE_slow_command_1414_Update/$entry
      -- CP-element group 1: 	 assign_stmt_1413_to_assign_stmt_1419/WPIPE_NOBLOCK_CPU_to_DCACHE_slow_command_1414_Sample/ack
      -- CP-element group 1: 	 assign_stmt_1413_to_assign_stmt_1419/WPIPE_NOBLOCK_CPU_to_DCACHE_slow_command_1414_Sample/$exit
      -- 
    ack_23_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 1_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_NOBLOCK_CPU_to_DCACHE_slow_command_1414_inst_ack_0, ack => dcache_access_CP_9_elements(1)); -- 
    req_27_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_27_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dcache_access_CP_9_elements(1), ack => WPIPE_NOBLOCK_CPU_to_DCACHE_slow_command_1414_inst_req_1); -- 
    -- CP-element group 2:  transition  input  bypass 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	1 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	5 
    -- CP-element group 2:  members (3) 
      -- CP-element group 2: 	 assign_stmt_1413_to_assign_stmt_1419/WPIPE_NOBLOCK_CPU_to_DCACHE_slow_command_1414_Update/ack
      -- CP-element group 2: 	 assign_stmt_1413_to_assign_stmt_1419/WPIPE_NOBLOCK_CPU_to_DCACHE_slow_command_1414_Update/$exit
      -- CP-element group 2: 	 assign_stmt_1413_to_assign_stmt_1419/WPIPE_NOBLOCK_CPU_to_DCACHE_slow_command_1414_update_completed_
      -- 
    ack_28_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 2_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_NOBLOCK_CPU_to_DCACHE_slow_command_1414_inst_ack_1, ack => dcache_access_CP_9_elements(2)); -- 
    -- CP-element group 3:  transition  input  output  bypass 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: 	0 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	4 
    -- CP-element group 3:  members (6) 
      -- CP-element group 3: 	 assign_stmt_1413_to_assign_stmt_1419/RPIPE_DCACHE_to_CPU_slow_response_1418_sample_completed_
      -- CP-element group 3: 	 assign_stmt_1413_to_assign_stmt_1419/RPIPE_DCACHE_to_CPU_slow_response_1418_update_start_
      -- CP-element group 3: 	 assign_stmt_1413_to_assign_stmt_1419/RPIPE_DCACHE_to_CPU_slow_response_1418_Update/cr
      -- CP-element group 3: 	 assign_stmt_1413_to_assign_stmt_1419/RPIPE_DCACHE_to_CPU_slow_response_1418_Update/$entry
      -- CP-element group 3: 	 assign_stmt_1413_to_assign_stmt_1419/RPIPE_DCACHE_to_CPU_slow_response_1418_Sample/ra
      -- CP-element group 3: 	 assign_stmt_1413_to_assign_stmt_1419/RPIPE_DCACHE_to_CPU_slow_response_1418_Sample/$exit
      -- 
    ra_37_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 3_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_DCACHE_to_CPU_slow_response_1418_inst_ack_0, ack => dcache_access_CP_9_elements(3)); -- 
    cr_41_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_41_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dcache_access_CP_9_elements(3), ack => RPIPE_DCACHE_to_CPU_slow_response_1418_inst_req_1); -- 
    -- CP-element group 4:  transition  input  bypass 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: 	3 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	5 
    -- CP-element group 4:  members (3) 
      -- CP-element group 4: 	 assign_stmt_1413_to_assign_stmt_1419/RPIPE_DCACHE_to_CPU_slow_response_1418_update_completed_
      -- CP-element group 4: 	 assign_stmt_1413_to_assign_stmt_1419/RPIPE_DCACHE_to_CPU_slow_response_1418_Update/ca
      -- CP-element group 4: 	 assign_stmt_1413_to_assign_stmt_1419/RPIPE_DCACHE_to_CPU_slow_response_1418_Update/$exit
      -- 
    ca_42_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 4_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_DCACHE_to_CPU_slow_response_1418_inst_ack_1, ack => dcache_access_CP_9_elements(4)); -- 
    -- CP-element group 5:  join  transition  bypass 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	4 
    -- CP-element group 5: 	2 
    -- CP-element group 5: successors 
    -- CP-element group 5:  members (2) 
      -- CP-element group 5: 	 assign_stmt_1413_to_assign_stmt_1419/$exit
      -- CP-element group 5: 	 $exit
      -- 
    dcache_access_cp_element_group_5: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 32) := "dcache_access_cp_element_group_5"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dcache_access_CP_9_elements(4) & dcache_access_CP_9_elements(2);
      gj_dcache_access_cp_element_group_5 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dcache_access_CP_9_elements(5), clk => clk, reset => reset); --
    end block;
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal CONCAT_u1_u9_1404_wire : std_logic_vector(8 downto 0);
    signal CONCAT_u40_u104_1411_wire : std_logic_vector(103 downto 0);
    signal CONCAT_u8_u40_1409_wire : std_logic_vector(39 downto 0);
    signal CONCAT_u9_u17_1406_wire : std_logic_vector(16 downto 0);
    signal R_ONE_1_1402_wire_constant : std_logic_vector(0 downto 0);
    signal to_dcache_1413 : std_logic_vector(120 downto 0);
    -- 
  begin -- 
    R_ONE_1_1402_wire_constant <= "1";
    -- flow through binary operator CONCAT_u17_u121_1412_inst
    process(CONCAT_u9_u17_1406_wire, CONCAT_u40_u104_1411_wire) -- 
      variable tmp_var : std_logic_vector(120 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u9_u17_1406_wire, CONCAT_u40_u104_1411_wire, tmp_var);
      to_dcache_1413 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u9_1404_inst
    process(R_ONE_1_1402_wire_constant, req_type_buffer) -- 
      variable tmp_var : std_logic_vector(8 downto 0); -- 
    begin -- 
      ApConcat_proc(R_ONE_1_1402_wire_constant, req_type_buffer, tmp_var);
      CONCAT_u1_u9_1404_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u40_u104_1411_inst
    process(CONCAT_u8_u40_1409_wire, write_data_buffer) -- 
      variable tmp_var : std_logic_vector(103 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u8_u40_1409_wire, write_data_buffer, tmp_var);
      CONCAT_u40_u104_1411_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u8_u40_1409_inst
    process(byte_mask_buffer, addr_buffer) -- 
      variable tmp_var : std_logic_vector(39 downto 0); -- 
    begin -- 
      ApConcat_proc(byte_mask_buffer, addr_buffer, tmp_var);
      CONCAT_u8_u40_1409_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u9_u17_1406_inst
    process(CONCAT_u1_u9_1404_wire, asi_buffer) -- 
      variable tmp_var : std_logic_vector(16 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u9_1404_wire, asi_buffer, tmp_var);
      CONCAT_u9_u17_1406_wire <= tmp_var; --
    end process;
    -- shared inport operator group (0) : RPIPE_DCACHE_to_CPU_slow_response_1418_inst 
    InportGroup_0: Block -- 
      signal data_out: std_logic_vector(71 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_DCACHE_to_CPU_slow_response_1418_inst_req_0;
      RPIPE_DCACHE_to_CPU_slow_response_1418_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_DCACHE_to_CPU_slow_response_1418_inst_req_1;
      RPIPE_DCACHE_to_CPU_slow_response_1418_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      dcache_read_response_buffer <= data_out(71 downto 0);
      DCACHE_to_CPU_slow_response_read_0_gI: SplitGuardInterface generic map(name => "DCACHE_to_CPU_slow_response_read_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      DCACHE_to_CPU_slow_response_read_0: InputPort_P2P -- 
        generic map ( name => "DCACHE_to_CPU_slow_response_read_0", data_width => 72,    bypass_flag => false,   	nonblocking_read_flag => false,  barrier_flag => false,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => DCACHE_to_CPU_slow_response_pipe_read_req(0),
          oack => DCACHE_to_CPU_slow_response_pipe_read_ack(0),
          odata => DCACHE_to_CPU_slow_response_pipe_read_data(71 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 0
    -- shared outport operator group (0) : WPIPE_NOBLOCK_CPU_to_DCACHE_slow_command_1414_inst 
    OutportGroup_0: Block -- 
      signal data_in: std_logic_vector(120 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_NOBLOCK_CPU_to_DCACHE_slow_command_1414_inst_req_0;
      WPIPE_NOBLOCK_CPU_to_DCACHE_slow_command_1414_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_NOBLOCK_CPU_to_DCACHE_slow_command_1414_inst_req_1;
      WPIPE_NOBLOCK_CPU_to_DCACHE_slow_command_1414_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= to_dcache_1413;
      NOBLOCK_CPU_to_DCACHE_slow_command_write_0_gI: SplitGuardInterface generic map(name => "NOBLOCK_CPU_to_DCACHE_slow_command_write_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      NOBLOCK_CPU_to_DCACHE_slow_command_write_0: OutputPortRevised -- 
        generic map ( name => "NOBLOCK_CPU_to_DCACHE_slow_command", data_width => 121, num_reqs => 1, input_buffering => inBUFs, full_rate => false,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_req(0),
          oack => NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_ack(0),
          odata => NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_data(120 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    -- 
  end Block; -- data_path
  -- 
end dcache_access_arch;
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
library teu_loadstore;
use teu_loadstore.loadstore_global_package.all;
entity debug_calculate_debug_wp_hits_Volatile is -- 
  port ( -- 
    is_load : in  std_logic_vector(0 downto 0);
    is_store : in  std_logic_vector(0 downto 0);
    wp0_in : in  std_logic_vector(31 downto 0);
    wp1_in : in  std_logic_vector(31 downto 0);
    wp2_in : in  std_logic_vector(31 downto 0);
    wp3_in : in  std_logic_vector(31 downto 0);
    addr_from_iunit : in  std_logic_vector(31 downto 0);
    debug_wp_reg_id : out  std_logic_vector(1 downto 0);
    read_debug_wp_hit : out  std_logic_vector(0 downto 0);
    write_debug_wp_hit : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity debug_calculate_debug_wp_hits_Volatile;
architecture debug_calculate_debug_wp_hits_Volatile_arch of debug_calculate_debug_wp_hits_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(162-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal is_load_buffer :  std_logic_vector(0 downto 0);
  signal is_store_buffer :  std_logic_vector(0 downto 0);
  signal wp0_in_buffer :  std_logic_vector(31 downto 0);
  signal wp1_in_buffer :  std_logic_vector(31 downto 0);
  signal wp2_in_buffer :  std_logic_vector(31 downto 0);
  signal wp3_in_buffer :  std_logic_vector(31 downto 0);
  signal addr_from_iunit_buffer :  std_logic_vector(31 downto 0);
  -- output port buffer signals
  signal debug_wp_reg_id_buffer :  std_logic_vector(1 downto 0);
  signal read_debug_wp_hit_buffer :  std_logic_vector(0 downto 0);
  signal write_debug_wp_hit_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  is_load_buffer <= is_load;
  is_store_buffer <= is_store;
  wp0_in_buffer <= wp0_in;
  wp1_in_buffer <= wp1_in;
  wp2_in_buffer <= wp2_in;
  wp3_in_buffer <= wp3_in;
  addr_from_iunit_buffer <= addr_from_iunit;
  -- output handling  -------------------------------------------------------
  debug_wp_reg_id <= debug_wp_reg_id_buffer;
  read_debug_wp_hit <= read_debug_wp_hit_buffer;
  write_debug_wp_hit <= write_debug_wp_hit_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_1782_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1785_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1817_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1820_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1852_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1855_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1887_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1890_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1924_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1927_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1931_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1934_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1941_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1944_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1948_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1951_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_1764_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_1767_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_1773_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_1776_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_1799_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_1802_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_1808_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_1811_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_1834_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_1837_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_1843_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_1846_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_1869_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_1872_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_1878_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_1881_wire : std_logic_vector(0 downto 0);
    signal EQ_u30_u1_1897_wire : std_logic_vector(0 downto 0);
    signal EQ_u30_u1_1904_wire : std_logic_vector(0 downto 0);
    signal EQ_u30_u1_1911_wire : std_logic_vector(0 downto 0);
    signal EQ_u30_u1_1918_wire : std_logic_vector(0 downto 0);
    signal MUX_1965_wire : std_logic_vector(1 downto 0);
    signal MUX_1966_wire : std_logic_vector(1 downto 0);
    signal MUX_1967_wire : std_logic_vector(1 downto 0);
    signal OR_u1_u1_1928_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1935_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1945_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1952_wire : std_logic_vector(0 downto 0);
    signal R_ONE_2_1763_wire_constant : std_logic_vector(1 downto 0);
    signal R_ONE_2_1798_wire_constant : std_logic_vector(1 downto 0);
    signal R_ONE_2_1833_wire_constant : std_logic_vector(1 downto 0);
    signal R_ONE_2_1868_wire_constant : std_logic_vector(1 downto 0);
    signal R_ONE_2_1959_wire_constant : std_logic_vector(1 downto 0);
    signal R_THREE_2_1766_wire_constant : std_logic_vector(1 downto 0);
    signal R_THREE_2_1775_wire_constant : std_logic_vector(1 downto 0);
    signal R_THREE_2_1801_wire_constant : std_logic_vector(1 downto 0);
    signal R_THREE_2_1810_wire_constant : std_logic_vector(1 downto 0);
    signal R_THREE_2_1836_wire_constant : std_logic_vector(1 downto 0);
    signal R_THREE_2_1845_wire_constant : std_logic_vector(1 downto 0);
    signal R_THREE_2_1871_wire_constant : std_logic_vector(1 downto 0);
    signal R_THREE_2_1880_wire_constant : std_logic_vector(1 downto 0);
    signal R_THREE_2_1963_wire_constant : std_logic_vector(1 downto 0);
    signal R_TWO_2_1772_wire_constant : std_logic_vector(1 downto 0);
    signal R_TWO_2_1807_wire_constant : std_logic_vector(1 downto 0);
    signal R_TWO_2_1842_wire_constant : std_logic_vector(1 downto 0);
    signal R_TWO_2_1877_wire_constant : std_logic_vector(1 downto 0);
    signal R_TWO_2_1961_wire_constant : std_logic_vector(1 downto 0);
    signal R_ZERO_2_1957_wire_constant : std_logic_vector(1 downto 0);
    signal R_ZERO_2_1964_wire_constant : std_logic_vector(1 downto 0);
    signal addr_31_2_1752 : std_logic_vector(29 downto 0);
    signal wp0_addr_31_2_1756 : std_logic_vector(29 downto 0);
    signal wp0_hit_1899 : std_logic_vector(0 downto 0);
    signal wp0_hit_is_valid_1787 : std_logic_vector(0 downto 0);
    signal wp0_is_load_1778 : std_logic_vector(0 downto 0);
    signal wp0_is_store_1769 : std_logic_vector(0 downto 0);
    signal wp0_type_1760 : std_logic_vector(1 downto 0);
    signal wp1_addr_31_2_1791 : std_logic_vector(29 downto 0);
    signal wp1_hit_1906 : std_logic_vector(0 downto 0);
    signal wp1_hit_is_valid_1822 : std_logic_vector(0 downto 0);
    signal wp1_is_load_1813 : std_logic_vector(0 downto 0);
    signal wp1_is_store_1804 : std_logic_vector(0 downto 0);
    signal wp1_type_1795 : std_logic_vector(1 downto 0);
    signal wp2_addr_31_2_1826 : std_logic_vector(29 downto 0);
    signal wp2_hit_1913 : std_logic_vector(0 downto 0);
    signal wp2_hit_is_valid_1857 : std_logic_vector(0 downto 0);
    signal wp2_is_load_1848 : std_logic_vector(0 downto 0);
    signal wp2_is_store_1839 : std_logic_vector(0 downto 0);
    signal wp2_type_1830 : std_logic_vector(1 downto 0);
    signal wp3_addr_31_2_1861 : std_logic_vector(29 downto 0);
    signal wp3_hit_1920 : std_logic_vector(0 downto 0);
    signal wp3_hit_is_valid_1892 : std_logic_vector(0 downto 0);
    signal wp3_is_load_1883 : std_logic_vector(0 downto 0);
    signal wp3_is_store_1874 : std_logic_vector(0 downto 0);
    signal wp3_type_1865 : std_logic_vector(1 downto 0);
    -- 
  begin -- 
    R_ONE_2_1763_wire_constant <= "01";
    R_ONE_2_1798_wire_constant <= "01";
    R_ONE_2_1833_wire_constant <= "01";
    R_ONE_2_1868_wire_constant <= "01";
    R_ONE_2_1959_wire_constant <= "01";
    R_THREE_2_1766_wire_constant <= "11";
    R_THREE_2_1775_wire_constant <= "11";
    R_THREE_2_1801_wire_constant <= "11";
    R_THREE_2_1810_wire_constant <= "11";
    R_THREE_2_1836_wire_constant <= "11";
    R_THREE_2_1845_wire_constant <= "11";
    R_THREE_2_1871_wire_constant <= "11";
    R_THREE_2_1880_wire_constant <= "11";
    R_THREE_2_1963_wire_constant <= "11";
    R_TWO_2_1772_wire_constant <= "10";
    R_TWO_2_1807_wire_constant <= "10";
    R_TWO_2_1842_wire_constant <= "10";
    R_TWO_2_1877_wire_constant <= "10";
    R_TWO_2_1961_wire_constant <= "10";
    R_ZERO_2_1957_wire_constant <= "00";
    R_ZERO_2_1964_wire_constant <= "00";
    -- flow-through select operator MUX_1965_inst
    MUX_1965_wire <= R_THREE_2_1963_wire_constant when (wp3_hit_1920(0) /=  '0') else R_ZERO_2_1964_wire_constant;
    -- flow-through select operator MUX_1966_inst
    MUX_1966_wire <= R_TWO_2_1961_wire_constant when (wp2_hit_1913(0) /=  '0') else MUX_1965_wire;
    -- flow-through select operator MUX_1967_inst
    MUX_1967_wire <= R_ONE_2_1959_wire_constant when (wp1_hit_1906(0) /=  '0') else MUX_1966_wire;
    -- flow-through select operator MUX_1968_inst
    debug_wp_reg_id_buffer <= R_ZERO_2_1957_wire_constant when (wp0_hit_1899(0) /=  '0') else MUX_1967_wire;
    -- flow-through slice operator slice_1751_inst
    addr_31_2_1752 <= addr_from_iunit_buffer(31 downto 2);
    -- flow-through slice operator slice_1755_inst
    wp0_addr_31_2_1756 <= wp0_in_buffer(31 downto 2);
    -- flow-through slice operator slice_1759_inst
    wp0_type_1760 <= wp0_in_buffer(1 downto 0);
    -- flow-through slice operator slice_1790_inst
    wp1_addr_31_2_1791 <= wp1_in_buffer(31 downto 2);
    -- flow-through slice operator slice_1794_inst
    wp1_type_1795 <= wp1_in_buffer(1 downto 0);
    -- flow-through slice operator slice_1825_inst
    wp2_addr_31_2_1826 <= wp2_in_buffer(31 downto 2);
    -- flow-through slice operator slice_1829_inst
    wp2_type_1830 <= wp2_in_buffer(1 downto 0);
    -- flow-through slice operator slice_1860_inst
    wp3_addr_31_2_1861 <= wp3_in_buffer(31 downto 2);
    -- flow-through slice operator slice_1864_inst
    wp3_type_1865 <= wp3_in_buffer(1 downto 0);
    -- flow through binary operator AND_u1_u1_1782_inst
    AND_u1_u1_1782_wire <= (wp0_is_store_1769 and is_store_buffer);
    -- flow through binary operator AND_u1_u1_1785_inst
    AND_u1_u1_1785_wire <= (wp0_is_load_1778 and is_load_buffer);
    -- flow through binary operator AND_u1_u1_1817_inst
    AND_u1_u1_1817_wire <= (wp1_is_store_1804 and is_store_buffer);
    -- flow through binary operator AND_u1_u1_1820_inst
    AND_u1_u1_1820_wire <= (wp1_is_load_1813 and is_load_buffer);
    -- flow through binary operator AND_u1_u1_1852_inst
    AND_u1_u1_1852_wire <= (wp2_is_store_1839 and is_store_buffer);
    -- flow through binary operator AND_u1_u1_1855_inst
    AND_u1_u1_1855_wire <= (wp2_is_load_1848 and is_load_buffer);
    -- flow through binary operator AND_u1_u1_1887_inst
    AND_u1_u1_1887_wire <= (wp3_is_store_1874 and is_store_buffer);
    -- flow through binary operator AND_u1_u1_1890_inst
    AND_u1_u1_1890_wire <= (wp3_is_load_1883 and is_load_buffer);
    -- flow through binary operator AND_u1_u1_1898_inst
    wp0_hit_1899 <= (wp0_hit_is_valid_1787 and EQ_u30_u1_1897_wire);
    -- flow through binary operator AND_u1_u1_1905_inst
    wp1_hit_1906 <= (wp1_hit_is_valid_1822 and EQ_u30_u1_1904_wire);
    -- flow through binary operator AND_u1_u1_1912_inst
    wp2_hit_1913 <= (wp2_hit_is_valid_1857 and EQ_u30_u1_1911_wire);
    -- flow through binary operator AND_u1_u1_1919_inst
    wp3_hit_1920 <= (wp3_hit_is_valid_1892 and EQ_u30_u1_1918_wire);
    -- flow through binary operator AND_u1_u1_1924_inst
    AND_u1_u1_1924_wire <= (wp0_hit_1899 and wp0_is_load_1778);
    -- flow through binary operator AND_u1_u1_1927_inst
    AND_u1_u1_1927_wire <= (wp1_hit_1906 and wp1_is_load_1813);
    -- flow through binary operator AND_u1_u1_1931_inst
    AND_u1_u1_1931_wire <= (wp2_hit_1913 and wp2_is_load_1848);
    -- flow through binary operator AND_u1_u1_1934_inst
    AND_u1_u1_1934_wire <= (wp3_hit_1920 and wp3_is_load_1883);
    -- flow through binary operator AND_u1_u1_1941_inst
    AND_u1_u1_1941_wire <= (wp0_hit_1899 and wp0_is_store_1769);
    -- flow through binary operator AND_u1_u1_1944_inst
    AND_u1_u1_1944_wire <= (wp1_hit_1906 and wp1_is_store_1804);
    -- flow through binary operator AND_u1_u1_1948_inst
    AND_u1_u1_1948_wire <= (wp2_hit_1913 and wp2_is_store_1839);
    -- flow through binary operator AND_u1_u1_1951_inst
    AND_u1_u1_1951_wire <= (wp3_hit_1920 and wp3_is_store_1874);
    -- flow through binary operator EQ_u2_u1_1764_inst
    process(wp0_type_1760) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wp0_type_1760, R_ONE_2_1763_wire_constant, tmp_var);
      EQ_u2_u1_1764_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_1767_inst
    process(wp0_type_1760) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wp0_type_1760, R_THREE_2_1766_wire_constant, tmp_var);
      EQ_u2_u1_1767_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_1773_inst
    process(wp0_type_1760) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wp0_type_1760, R_TWO_2_1772_wire_constant, tmp_var);
      EQ_u2_u1_1773_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_1776_inst
    process(wp0_type_1760) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wp0_type_1760, R_THREE_2_1775_wire_constant, tmp_var);
      EQ_u2_u1_1776_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_1799_inst
    process(wp1_type_1795) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wp1_type_1795, R_ONE_2_1798_wire_constant, tmp_var);
      EQ_u2_u1_1799_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_1802_inst
    process(wp1_type_1795) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wp1_type_1795, R_THREE_2_1801_wire_constant, tmp_var);
      EQ_u2_u1_1802_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_1808_inst
    process(wp1_type_1795) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wp1_type_1795, R_TWO_2_1807_wire_constant, tmp_var);
      EQ_u2_u1_1808_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_1811_inst
    process(wp1_type_1795) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wp1_type_1795, R_THREE_2_1810_wire_constant, tmp_var);
      EQ_u2_u1_1811_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_1834_inst
    process(wp2_type_1830) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wp2_type_1830, R_ONE_2_1833_wire_constant, tmp_var);
      EQ_u2_u1_1834_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_1837_inst
    process(wp2_type_1830) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wp2_type_1830, R_THREE_2_1836_wire_constant, tmp_var);
      EQ_u2_u1_1837_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_1843_inst
    process(wp2_type_1830) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wp2_type_1830, R_TWO_2_1842_wire_constant, tmp_var);
      EQ_u2_u1_1843_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_1846_inst
    process(wp2_type_1830) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wp2_type_1830, R_THREE_2_1845_wire_constant, tmp_var);
      EQ_u2_u1_1846_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_1869_inst
    process(wp3_type_1865) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wp3_type_1865, R_ONE_2_1868_wire_constant, tmp_var);
      EQ_u2_u1_1869_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_1872_inst
    process(wp3_type_1865) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wp3_type_1865, R_THREE_2_1871_wire_constant, tmp_var);
      EQ_u2_u1_1872_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_1878_inst
    process(wp3_type_1865) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wp3_type_1865, R_TWO_2_1877_wire_constant, tmp_var);
      EQ_u2_u1_1878_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_1881_inst
    process(wp3_type_1865) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wp3_type_1865, R_THREE_2_1880_wire_constant, tmp_var);
      EQ_u2_u1_1881_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u30_u1_1897_inst
    process(addr_31_2_1752, wp0_addr_31_2_1756) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(addr_31_2_1752, wp0_addr_31_2_1756, tmp_var);
      EQ_u30_u1_1897_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u30_u1_1904_inst
    process(addr_31_2_1752, wp1_addr_31_2_1791) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(addr_31_2_1752, wp1_addr_31_2_1791, tmp_var);
      EQ_u30_u1_1904_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u30_u1_1911_inst
    process(addr_31_2_1752, wp2_addr_31_2_1826) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(addr_31_2_1752, wp2_addr_31_2_1826, tmp_var);
      EQ_u30_u1_1911_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u30_u1_1918_inst
    process(addr_31_2_1752, wp3_addr_31_2_1861) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(addr_31_2_1752, wp3_addr_31_2_1861, tmp_var);
      EQ_u30_u1_1918_wire <= tmp_var; --
    end process;
    -- flow through binary operator OR_u1_u1_1768_inst
    wp0_is_store_1769 <= (EQ_u2_u1_1764_wire or EQ_u2_u1_1767_wire);
    -- flow through binary operator OR_u1_u1_1777_inst
    wp0_is_load_1778 <= (EQ_u2_u1_1773_wire or EQ_u2_u1_1776_wire);
    -- flow through binary operator OR_u1_u1_1786_inst
    wp0_hit_is_valid_1787 <= (AND_u1_u1_1782_wire or AND_u1_u1_1785_wire);
    -- flow through binary operator OR_u1_u1_1803_inst
    wp1_is_store_1804 <= (EQ_u2_u1_1799_wire or EQ_u2_u1_1802_wire);
    -- flow through binary operator OR_u1_u1_1812_inst
    wp1_is_load_1813 <= (EQ_u2_u1_1808_wire or EQ_u2_u1_1811_wire);
    -- flow through binary operator OR_u1_u1_1821_inst
    wp1_hit_is_valid_1822 <= (AND_u1_u1_1817_wire or AND_u1_u1_1820_wire);
    -- flow through binary operator OR_u1_u1_1838_inst
    wp2_is_store_1839 <= (EQ_u2_u1_1834_wire or EQ_u2_u1_1837_wire);
    -- flow through binary operator OR_u1_u1_1847_inst
    wp2_is_load_1848 <= (EQ_u2_u1_1843_wire or EQ_u2_u1_1846_wire);
    -- flow through binary operator OR_u1_u1_1856_inst
    wp2_hit_is_valid_1857 <= (AND_u1_u1_1852_wire or AND_u1_u1_1855_wire);
    -- flow through binary operator OR_u1_u1_1873_inst
    wp3_is_store_1874 <= (EQ_u2_u1_1869_wire or EQ_u2_u1_1872_wire);
    -- flow through binary operator OR_u1_u1_1882_inst
    wp3_is_load_1883 <= (EQ_u2_u1_1878_wire or EQ_u2_u1_1881_wire);
    -- flow through binary operator OR_u1_u1_1891_inst
    wp3_hit_is_valid_1892 <= (AND_u1_u1_1887_wire or AND_u1_u1_1890_wire);
    -- flow through binary operator OR_u1_u1_1928_inst
    OR_u1_u1_1928_wire <= (AND_u1_u1_1924_wire or AND_u1_u1_1927_wire);
    -- flow through binary operator OR_u1_u1_1935_inst
    OR_u1_u1_1935_wire <= (AND_u1_u1_1931_wire or AND_u1_u1_1934_wire);
    -- flow through binary operator OR_u1_u1_1936_inst
    read_debug_wp_hit_buffer <= (OR_u1_u1_1928_wire or OR_u1_u1_1935_wire);
    -- flow through binary operator OR_u1_u1_1945_inst
    OR_u1_u1_1945_wire <= (AND_u1_u1_1941_wire or AND_u1_u1_1944_wire);
    -- flow through binary operator OR_u1_u1_1952_inst
    OR_u1_u1_1952_wire <= (AND_u1_u1_1948_wire or AND_u1_u1_1951_wire);
    -- flow through binary operator OR_u1_u1_1953_inst
    write_debug_wp_hit_buffer <= (OR_u1_u1_1945_wire or OR_u1_u1_1952_wire);
    -- 
  end Block; -- data_path
  -- 
end debug_calculate_debug_wp_hits_Volatile_arch;
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
library teu_loadstore;
use teu_loadstore.loadstore_global_package.all;
entity decode_dti_ispec_Volatile is -- 
  port ( -- 
    ispec : in  std_logic_vector(23 downto 0);
    is_load : out  std_logic_vector(0 downto 0);
    is_store : out  std_logic_vector(0 downto 0);
    is_atomic_ldstub : out  std_logic_vector(0 downto 0);
    is_swap : out  std_logic_vector(0 downto 0);
    S : out  std_logic_vector(0 downto 0);
    U : out  std_logic_vector(0 downto 0);
    FP : out  std_logic_vector(0 downto 0);
    byte : out  std_logic_vector(0 downto 0);
    half_word : out  std_logic_vector(0 downto 0);
    word : out  std_logic_vector(0 downto 0);
    double_word : out  std_logic_vector(0 downto 0);
    is_fp_access : out  std_logic_vector(0 downto 0);
    is_cp_access : out  std_logic_vector(0 downto 0);
    is_fp_cp_sr_access : out  std_logic_vector(0 downto 0);
    is_fp_cp_q_access : out  std_logic_vector(0 downto 0);
    asi_bit : out  std_logic_vector(0 downto 0);
    asi_id_8 : out  std_logic_vector(7 downto 0)-- 
  );
  -- 
end entity decode_dti_ispec_Volatile;
architecture decode_dti_ispec_Volatile_arch of decode_dti_ispec_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(24-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal ispec_buffer :  std_logic_vector(23 downto 0);
  -- output port buffer signals
  signal is_load_buffer :  std_logic_vector(0 downto 0);
  signal is_store_buffer :  std_logic_vector(0 downto 0);
  signal is_atomic_ldstub_buffer :  std_logic_vector(0 downto 0);
  signal is_swap_buffer :  std_logic_vector(0 downto 0);
  signal S_buffer :  std_logic_vector(0 downto 0);
  signal U_buffer :  std_logic_vector(0 downto 0);
  signal FP_buffer :  std_logic_vector(0 downto 0);
  signal byte_buffer :  std_logic_vector(0 downto 0);
  signal half_word_buffer :  std_logic_vector(0 downto 0);
  signal word_buffer :  std_logic_vector(0 downto 0);
  signal double_word_buffer :  std_logic_vector(0 downto 0);
  signal is_fp_access_buffer :  std_logic_vector(0 downto 0);
  signal is_cp_access_buffer :  std_logic_vector(0 downto 0);
  signal is_fp_cp_sr_access_buffer :  std_logic_vector(0 downto 0);
  signal is_fp_cp_q_access_buffer :  std_logic_vector(0 downto 0);
  signal asi_bit_buffer :  std_logic_vector(0 downto 0);
  signal asi_id_8_buffer :  std_logic_vector(7 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  ispec_buffer <= ispec;
  -- output handling  -------------------------------------------------------
  is_load <= is_load_buffer;
  is_store <= is_store_buffer;
  is_atomic_ldstub <= is_atomic_ldstub_buffer;
  is_swap <= is_swap_buffer;
  S <= S_buffer;
  U <= U_buffer;
  FP <= FP_buffer;
  byte <= byte_buffer;
  half_word <= half_word_buffer;
  word <= word_buffer;
  double_word <= double_word_buffer;
  is_fp_access <= is_fp_access_buffer;
  is_cp_access <= is_cp_access_buffer;
  is_fp_cp_sr_access <= is_fp_cp_sr_access_buffer;
  is_fp_cp_q_access <= is_fp_cp_q_access_buffer;
  asi_bit <= asi_bit_buffer;
  asi_id_8 <= asi_id_8_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    -- 
  begin -- 
    -- flow-through slice operator slice_2501_inst
    is_load_buffer <= ispec_buffer(23 downto 23);
    -- flow-through slice operator slice_2505_inst
    is_store_buffer <= ispec_buffer(22 downto 22);
    -- flow-through slice operator slice_2509_inst
    is_atomic_ldstub_buffer <= ispec_buffer(21 downto 21);
    -- flow-through slice operator slice_2513_inst
    is_swap_buffer <= ispec_buffer(20 downto 20);
    -- flow-through slice operator slice_2517_inst
    S_buffer <= ispec_buffer(19 downto 19);
    -- flow-through slice operator slice_2521_inst
    U_buffer <= ispec_buffer(18 downto 18);
    -- flow-through slice operator slice_2525_inst
    FP_buffer <= ispec_buffer(17 downto 17);
    -- flow-through slice operator slice_2529_inst
    double_word_buffer <= ispec_buffer(16 downto 16);
    -- flow-through slice operator slice_2533_inst
    word_buffer <= ispec_buffer(15 downto 15);
    -- flow-through slice operator slice_2537_inst
    half_word_buffer <= ispec_buffer(14 downto 14);
    -- flow-through slice operator slice_2541_inst
    byte_buffer <= ispec_buffer(13 downto 13);
    -- flow-through slice operator slice_2545_inst
    is_fp_access_buffer <= ispec_buffer(12 downto 12);
    -- flow-through slice operator slice_2549_inst
    is_cp_access_buffer <= ispec_buffer(11 downto 11);
    -- flow-through slice operator slice_2553_inst
    is_fp_cp_sr_access_buffer <= ispec_buffer(10 downto 10);
    -- flow-through slice operator slice_2557_inst
    is_fp_cp_q_access_buffer <= ispec_buffer(9 downto 9);
    -- flow-through slice operator slice_2561_inst
    asi_bit_buffer <= ispec_buffer(8 downto 8);
    -- flow-through slice operator slice_2565_inst
    asi_id_8_buffer <= ispec_buffer(7 downto 0);
    -- 
  end Block; -- data_path
  -- 
end decode_dti_ispec_Volatile_arch;
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
library teu_loadstore;
use teu_loadstore.loadstore_global_package.all;
entity decode_routing_control_info_Volatile is -- 
  port ( -- 
    control_info : in  std_logic_vector(96 downto 0);
    read_simple : out  std_logic_vector(0 downto 0);
    read_messy : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity decode_routing_control_info_Volatile;
architecture decode_routing_control_info_Volatile_arch of decode_routing_control_info_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(97-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal control_info_buffer :  std_logic_vector(96 downto 0);
  -- output port buffer signals
  signal read_simple_buffer :  std_logic_vector(0 downto 0);
  signal read_messy_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  control_info_buffer <= control_info;
  -- output handling  -------------------------------------------------------
  read_simple <= read_simple_buffer;
  read_messy <= read_messy_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    -- 
  begin -- 
    -- flow-through slice operator slice_6257_inst
    read_messy_buffer <= control_info_buffer(80 downto 80);
    -- flow-through slice operator slice_6261_inst
    read_simple_buffer <= control_info_buffer(79 downto 79);
    -- 
  end Block; -- data_path
  -- 
end decode_routing_control_info_Volatile_arch;
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
library teu_loadstore;
use teu_loadstore.loadstore_global_package.all;
entity execute_messy_dti is -- 
  generic (tag_length : integer); 
  port ( -- 
    cpu_id_2 : in  std_logic_vector(1 downto 0);
    run_dti : in  std_logic_vector(0 downto 0);
    untrap_cache : in  std_logic_vector(0 downto 0);
    update_mmu_fsr : in  std_logic_vector(0 downto 0);
    addr : in  std_logic_vector(31 downto 0);
    din_h : in  std_logic_vector(31 downto 0);
    din_l : in  std_logic_vector(31 downto 0);
    pc : in  std_logic_vector(31 downto 0);
    mmu_fsr : in  std_logic_vector(17 downto 0);
    is_swap : in  std_logic_vector(0 downto 0);
    is_atomic_ld_st : in  std_logic_vector(0 downto 0);
    signed_type : in  std_logic_vector(0 downto 0);
    use_asi : in  std_logic_vector(0 downto 0);
    asi : in  std_logic_vector(7 downto 0);
    S : in  std_logic_vector(0 downto 0);
    dout_h : out  std_logic_vector(31 downto 0);
    dout_l : out  std_logic_vector(31 downto 0);
    data_access_exception : out  std_logic_vector(0 downto 0);
    data_access_error : out  std_logic_vector(0 downto 0);
    store_signature : out  std_logic_vector(31 downto 0);
    BROADCAST_INIT_PC : in std_logic_vector(31 downto 0);
    messy_operation_completed_pipe_write_req : out  std_logic_vector(0 downto 0);
    messy_operation_completed_pipe_write_ack : in   std_logic_vector(0 downto 0);
    messy_operation_completed_pipe_write_data : out  std_logic_vector(0 downto 0);
    dcache_access_call_reqs : out  std_logic_vector(0 downto 0);
    dcache_access_call_acks : in   std_logic_vector(0 downto 0);
    dcache_access_call_data : out  std_logic_vector(119 downto 0);
    dcache_access_call_tag  :  out  std_logic_vector(1 downto 0);
    dcache_access_return_reqs : out  std_logic_vector(0 downto 0);
    dcache_access_return_acks : in   std_logic_vector(0 downto 0);
    dcache_access_return_data : in   std_logic_vector(71 downto 0);
    dcache_access_return_tag :  in   std_logic_vector(1 downto 0);
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
end entity execute_messy_dti;
architecture execute_messy_dti_arch of execute_messy_dti is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector((tag_length + 164)-1 downto 0);
  signal default_zero_sig: std_logic;
  signal in_buffer_write_req: std_logic;
  signal in_buffer_write_ack: std_logic;
  signal in_buffer_unload_req_symbol: Boolean;
  signal in_buffer_unload_ack_symbol: Boolean;
  signal out_buffer_data_in, out_buffer_data_out: std_logic_vector((tag_length + 98)-1 downto 0);
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
  signal cpu_id_2_buffer :  std_logic_vector(1 downto 0);
  signal cpu_id_2_update_enable: Boolean;
  signal run_dti_buffer :  std_logic_vector(0 downto 0);
  signal run_dti_update_enable: Boolean;
  signal untrap_cache_buffer :  std_logic_vector(0 downto 0);
  signal untrap_cache_update_enable: Boolean;
  signal update_mmu_fsr_buffer :  std_logic_vector(0 downto 0);
  signal update_mmu_fsr_update_enable: Boolean;
  signal addr_buffer :  std_logic_vector(31 downto 0);
  signal addr_update_enable: Boolean;
  signal din_h_buffer :  std_logic_vector(31 downto 0);
  signal din_h_update_enable: Boolean;
  signal din_l_buffer :  std_logic_vector(31 downto 0);
  signal din_l_update_enable: Boolean;
  signal pc_buffer :  std_logic_vector(31 downto 0);
  signal pc_update_enable: Boolean;
  signal mmu_fsr_buffer :  std_logic_vector(17 downto 0);
  signal mmu_fsr_update_enable: Boolean;
  signal is_swap_buffer :  std_logic_vector(0 downto 0);
  signal is_swap_update_enable: Boolean;
  signal is_atomic_ld_st_buffer :  std_logic_vector(0 downto 0);
  signal is_atomic_ld_st_update_enable: Boolean;
  signal signed_type_buffer :  std_logic_vector(0 downto 0);
  signal signed_type_update_enable: Boolean;
  signal use_asi_buffer :  std_logic_vector(0 downto 0);
  signal use_asi_update_enable: Boolean;
  signal asi_buffer :  std_logic_vector(7 downto 0);
  signal asi_update_enable: Boolean;
  signal S_buffer :  std_logic_vector(0 downto 0);
  signal S_update_enable: Boolean;
  -- output port buffer signals
  signal dout_h_buffer :  std_logic_vector(31 downto 0);
  signal dout_h_update_enable: Boolean;
  signal dout_l_buffer :  std_logic_vector(31 downto 0);
  signal dout_l_update_enable: Boolean;
  signal data_access_exception_buffer :  std_logic_vector(0 downto 0);
  signal data_access_exception_update_enable: Boolean;
  signal data_access_error_buffer :  std_logic_vector(0 downto 0);
  signal data_access_error_update_enable: Boolean;
  signal store_signature_buffer :  std_logic_vector(31 downto 0);
  signal store_signature_update_enable: Boolean;
  signal execute_messy_dti_CP_205_start: Boolean;
  signal execute_messy_dti_CP_205_symbol: Boolean;
  -- volatile/operator module components. 
  component dcache_access is -- 
    generic (tag_length : integer); 
    port ( -- 
      req_type : in  std_logic_vector(7 downto 0);
      asi : in  std_logic_vector(7 downto 0);
      byte_mask : in  std_logic_vector(7 downto 0);
      addr : in  std_logic_vector(31 downto 0);
      write_data : in  std_logic_vector(63 downto 0);
      dcache_read_response : out  std_logic_vector(71 downto 0);
      DCACHE_to_CPU_slow_response_pipe_read_req : out  std_logic_vector(0 downto 0);
      DCACHE_to_CPU_slow_response_pipe_read_ack : in   std_logic_vector(0 downto 0);
      DCACHE_to_CPU_slow_response_pipe_read_data : in   std_logic_vector(71 downto 0);
      NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_req : out  std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_ack : in   std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_data : out  std_logic_vector(120 downto 0);
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
  component signature_8_Volatile is -- 
    port ( -- 
      A : in  std_logic_vector(31 downto 0);
      AS : out  std_logic_vector(7 downto 0)-- 
    );
    -- 
  end component; 
  -- links between control-path and data-path
  signal call_stmt_7116_call_req_0 : boolean;
  signal call_stmt_7380_call_ack_0 : boolean;
  signal call_stmt_7380_call_ack_1 : boolean;
  signal call_stmt_7380_call_req_0 : boolean;
  signal W_dout_h_7452_inst_ack_0 : boolean;
  signal W_dout_h_7452_inst_req_1 : boolean;
  signal call_stmt_7380_call_req_1 : boolean;
  signal W_dout_h_7452_inst_req_0 : boolean;
  signal MUX_7466_inst_ack_1 : boolean;
  signal MUX_7466_inst_req_1 : boolean;
  signal MUX_7466_inst_req_0 : boolean;
  signal MUX_7466_inst_ack_0 : boolean;
  signal W_dout_h_7452_inst_ack_1 : boolean;
  signal call_stmt_7116_call_req_1 : boolean;
  signal call_stmt_7116_call_ack_1 : boolean;
  signal call_stmt_7116_call_ack_0 : boolean;
  signal call_stmt_7562_call_req_0 : boolean;
  signal call_stmt_7562_call_ack_0 : boolean;
  signal call_stmt_7562_call_req_1 : boolean;
  signal call_stmt_7562_call_ack_1 : boolean;
  signal OR_u1_u1_7584_inst_req_0 : boolean;
  signal OR_u1_u1_7584_inst_ack_0 : boolean;
  signal OR_u1_u1_7584_inst_req_1 : boolean;
  signal OR_u1_u1_7584_inst_ack_1 : boolean;
  signal OR_u1_u1_7589_inst_req_0 : boolean;
  signal OR_u1_u1_7589_inst_ack_0 : boolean;
  signal OR_u1_u1_7589_inst_req_1 : boolean;
  signal OR_u1_u1_7589_inst_ack_1 : boolean;
  signal MUX_7641_inst_req_0 : boolean;
  signal MUX_7641_inst_ack_0 : boolean;
  signal MUX_7641_inst_req_1 : boolean;
  signal MUX_7641_inst_ack_1 : boolean;
  signal WPIPE_messy_operation_completed_7643_inst_req_0 : boolean;
  signal WPIPE_messy_operation_completed_7643_inst_ack_0 : boolean;
  signal WPIPE_messy_operation_completed_7643_inst_req_1 : boolean;
  signal WPIPE_messy_operation_completed_7643_inst_ack_1 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "execute_messy_dti_input_buffer", -- 
      buffer_size => 1,
      bypass_flag => false,
      data_width => tag_length + 164) -- 
    port map(write_req => in_buffer_write_req, -- 
      write_ack => in_buffer_write_ack, 
      write_data => in_buffer_data_in,
      unload_req => in_buffer_unload_req_symbol, 
      unload_ack => in_buffer_unload_ack_symbol, 
      read_data => in_buffer_data_out,
      clk => clk, reset => reset); -- 
  in_buffer_data_in(1 downto 0) <= cpu_id_2;
  cpu_id_2_buffer <= in_buffer_data_out(1 downto 0);
  in_buffer_data_in(2 downto 2) <= run_dti;
  run_dti_buffer <= in_buffer_data_out(2 downto 2);
  in_buffer_data_in(3 downto 3) <= untrap_cache;
  untrap_cache_buffer <= in_buffer_data_out(3 downto 3);
  in_buffer_data_in(4 downto 4) <= update_mmu_fsr;
  update_mmu_fsr_buffer <= in_buffer_data_out(4 downto 4);
  in_buffer_data_in(36 downto 5) <= addr;
  addr_buffer <= in_buffer_data_out(36 downto 5);
  in_buffer_data_in(68 downto 37) <= din_h;
  din_h_buffer <= in_buffer_data_out(68 downto 37);
  in_buffer_data_in(100 downto 69) <= din_l;
  din_l_buffer <= in_buffer_data_out(100 downto 69);
  in_buffer_data_in(132 downto 101) <= pc;
  pc_buffer <= in_buffer_data_out(132 downto 101);
  in_buffer_data_in(150 downto 133) <= mmu_fsr;
  mmu_fsr_buffer <= in_buffer_data_out(150 downto 133);
  in_buffer_data_in(151 downto 151) <= is_swap;
  is_swap_buffer <= in_buffer_data_out(151 downto 151);
  in_buffer_data_in(152 downto 152) <= is_atomic_ld_st;
  is_atomic_ld_st_buffer <= in_buffer_data_out(152 downto 152);
  in_buffer_data_in(153 downto 153) <= signed_type;
  signed_type_buffer <= in_buffer_data_out(153 downto 153);
  in_buffer_data_in(154 downto 154) <= use_asi;
  use_asi_buffer <= in_buffer_data_out(154 downto 154);
  in_buffer_data_in(162 downto 155) <= asi;
  asi_buffer <= in_buffer_data_out(162 downto 155);
  in_buffer_data_in(163 downto 163) <= S;
  S_buffer <= in_buffer_data_out(163 downto 163);
  in_buffer_data_in(tag_length + 163 downto 164) <= tag_in;
  tag_ub_out <= in_buffer_data_out(tag_length + 163 downto 164);
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
  execute_messy_dti_CP_205_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "execute_messy_dti_out_buffer", -- 
      buffer_size => 1,
      full_rate => false,
      data_width => tag_length + 98) --
    port map(write_req => out_buffer_write_req_symbol, -- 
      write_ack => out_buffer_write_ack_symbol, 
      write_data => out_buffer_data_in,
      read_req => out_buffer_read_req, 
      read_ack => out_buffer_read_ack, 
      read_data => out_buffer_data_out,
      clk => clk, reset => reset); -- 
  out_buffer_data_in(31 downto 0) <= dout_h_buffer;
  dout_h <= out_buffer_data_out(31 downto 0);
  out_buffer_data_in(63 downto 32) <= dout_l_buffer;
  dout_l <= out_buffer_data_out(63 downto 32);
  out_buffer_data_in(64 downto 64) <= data_access_exception_buffer;
  data_access_exception <= out_buffer_data_out(64 downto 64);
  out_buffer_data_in(65 downto 65) <= data_access_error_buffer;
  data_access_error <= out_buffer_data_out(65 downto 65);
  out_buffer_data_in(97 downto 66) <= store_signature_buffer;
  store_signature <= out_buffer_data_out(97 downto 66);
  out_buffer_data_in(tag_length + 97 downto 98) <= tag_ilock_out;
  tag_out <= out_buffer_data_out(tag_length + 97 downto 98);
  out_buffer_write_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
    constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 0);
    constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 1,2 => 0);
    constant joinName: string(1 to 32) := "out_buffer_write_req_symbol_join"; 
    signal preds: BooleanArray(1 to 3); -- 
  begin -- 
    preds <= execute_messy_dti_CP_205_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
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
    preds <= execute_messy_dti_CP_205_start & tag_ilock_write_ack_symbol;
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
    preds <= execute_messy_dti_CP_205_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  execute_messy_dti_CP_205: Block -- control-path 
    signal execute_messy_dti_CP_205_elements: BooleanArray(24 downto 0);
    -- 
  begin -- 
    execute_messy_dti_CP_205_elements(0) <= execute_messy_dti_CP_205_start;
    execute_messy_dti_CP_205_symbol <= execute_messy_dti_CP_205_elements(24);
    -- CP-element group 0:  fork  transition  output  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	4 
    -- CP-element group 0: 	11 
    -- CP-element group 0: 	14 
    -- CP-element group 0: 	17 
    -- CP-element group 0: 	20 
    -- CP-element group 0: 	6 
    -- CP-element group 0: 	8 
    -- CP-element group 0: 	2 
    -- CP-element group 0: 	1 
    -- CP-element group 0:  members (29) 
      -- CP-element group 0: 	 assign_stmt_7030_to_assign_stmt_7645/call_stmt_7116_Sample/crr
      -- CP-element group 0: 	 assign_stmt_7030_to_assign_stmt_7645/call_stmt_7380_Update/$entry
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 assign_stmt_7030_to_assign_stmt_7645/call_stmt_7116_Sample/$entry
      -- CP-element group 0: 	 assign_stmt_7030_to_assign_stmt_7645/call_stmt_7380_update_start_
      -- CP-element group 0: 	 assign_stmt_7030_to_assign_stmt_7645/call_stmt_7116_Update/$entry
      -- CP-element group 0: 	 assign_stmt_7030_to_assign_stmt_7645/call_stmt_7116_update_start_
      -- CP-element group 0: 	 assign_stmt_7030_to_assign_stmt_7645/assign_stmt_7454_Update/$entry
      -- CP-element group 0: 	 assign_stmt_7030_to_assign_stmt_7645/assign_stmt_7454_Update/req
      -- CP-element group 0: 	 assign_stmt_7030_to_assign_stmt_7645/call_stmt_7380_Update/ccr
      -- CP-element group 0: 	 assign_stmt_7030_to_assign_stmt_7645/$entry
      -- CP-element group 0: 	 assign_stmt_7030_to_assign_stmt_7645/call_stmt_7116_sample_start_
      -- CP-element group 0: 	 assign_stmt_7030_to_assign_stmt_7645/call_stmt_7562_update_start_
      -- CP-element group 0: 	 assign_stmt_7030_to_assign_stmt_7645/MUX_7466_complete/req
      -- CP-element group 0: 	 assign_stmt_7030_to_assign_stmt_7645/MUX_7466_complete/$entry
      -- CP-element group 0: 	 assign_stmt_7030_to_assign_stmt_7645/MUX_7466_update_start_
      -- CP-element group 0: 	 assign_stmt_7030_to_assign_stmt_7645/call_stmt_7116_Update/ccr
      -- CP-element group 0: 	 assign_stmt_7030_to_assign_stmt_7645/assign_stmt_7454_update_start_
      -- CP-element group 0: 	 assign_stmt_7030_to_assign_stmt_7645/call_stmt_7562_Update/$entry
      -- CP-element group 0: 	 assign_stmt_7030_to_assign_stmt_7645/call_stmt_7562_Update/ccr
      -- CP-element group 0: 	 assign_stmt_7030_to_assign_stmt_7645/OR_u1_u1_7584_update_start_
      -- CP-element group 0: 	 assign_stmt_7030_to_assign_stmt_7645/OR_u1_u1_7584_Update/$entry
      -- CP-element group 0: 	 assign_stmt_7030_to_assign_stmt_7645/OR_u1_u1_7584_Update/cr
      -- CP-element group 0: 	 assign_stmt_7030_to_assign_stmt_7645/OR_u1_u1_7589_update_start_
      -- CP-element group 0: 	 assign_stmt_7030_to_assign_stmt_7645/OR_u1_u1_7589_Update/$entry
      -- CP-element group 0: 	 assign_stmt_7030_to_assign_stmt_7645/OR_u1_u1_7589_Update/cr
      -- CP-element group 0: 	 assign_stmt_7030_to_assign_stmt_7645/MUX_7641_update_start_
      -- CP-element group 0: 	 assign_stmt_7030_to_assign_stmt_7645/MUX_7641_complete/$entry
      -- CP-element group 0: 	 assign_stmt_7030_to_assign_stmt_7645/MUX_7641_complete/req
      -- 
    req_251_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_251_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_messy_dti_CP_205_elements(0), ack => W_dout_h_7452_inst_req_1); -- 
    ccr_279_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " ccr_279_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_messy_dti_CP_205_elements(0), ack => call_stmt_7562_call_req_1); -- 
    cr_293_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_293_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_messy_dti_CP_205_elements(0), ack => OR_u1_u1_7584_inst_req_1); -- 
    cr_307_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_307_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_messy_dti_CP_205_elements(0), ack => OR_u1_u1_7589_inst_req_1); -- 
    req_321_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_321_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_messy_dti_CP_205_elements(0), ack => MUX_7641_inst_req_1); -- 
    ccr_223_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " ccr_223_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_messy_dti_CP_205_elements(0), ack => call_stmt_7116_call_req_1); -- 
    crr_218_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " crr_218_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_messy_dti_CP_205_elements(0), ack => call_stmt_7116_call_req_0); -- 
    req_265_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_265_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_messy_dti_CP_205_elements(0), ack => MUX_7466_inst_req_1); -- 
    ccr_237_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " ccr_237_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_messy_dti_CP_205_elements(0), ack => call_stmt_7380_call_req_1); -- 
    -- CP-element group 1:  transition  input  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	0 
    -- CP-element group 1: successors 
    -- CP-element group 1:  members (3) 
      -- CP-element group 1: 	 assign_stmt_7030_to_assign_stmt_7645/call_stmt_7116_Sample/$exit
      -- CP-element group 1: 	 assign_stmt_7030_to_assign_stmt_7645/call_stmt_7116_sample_completed_
      -- CP-element group 1: 	 assign_stmt_7030_to_assign_stmt_7645/call_stmt_7116_Sample/cra
      -- 
    cra_219_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 1_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_7116_call_ack_0, ack => execute_messy_dti_CP_205_elements(1)); -- 
    -- CP-element group 2:  fork  transition  input  output  bypass 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	0 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	12 
    -- CP-element group 2: 	15 
    -- CP-element group 2: 	18 
    -- CP-element group 2: 	9 
    -- CP-element group 2: 	3 
    -- CP-element group 2:  members (6) 
      -- CP-element group 2: 	 assign_stmt_7030_to_assign_stmt_7645/call_stmt_7116_Update/$exit
      -- CP-element group 2: 	 assign_stmt_7030_to_assign_stmt_7645/call_stmt_7380_Sample/crr
      -- CP-element group 2: 	 assign_stmt_7030_to_assign_stmt_7645/call_stmt_7116_update_completed_
      -- CP-element group 2: 	 assign_stmt_7030_to_assign_stmt_7645/call_stmt_7380_Sample/$entry
      -- CP-element group 2: 	 assign_stmt_7030_to_assign_stmt_7645/call_stmt_7380_sample_start_
      -- CP-element group 2: 	 assign_stmt_7030_to_assign_stmt_7645/call_stmt_7116_Update/cca
      -- 
    cca_224_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 2_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_7116_call_ack_1, ack => execute_messy_dti_CP_205_elements(2)); -- 
    crr_232_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " crr_232_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_messy_dti_CP_205_elements(2), ack => call_stmt_7380_call_req_0); -- 
    -- CP-element group 3:  transition  input  bypass 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: 	2 
    -- CP-element group 3: successors 
    -- CP-element group 3:  members (3) 
      -- CP-element group 3: 	 assign_stmt_7030_to_assign_stmt_7645/call_stmt_7380_Sample/cra
      -- CP-element group 3: 	 assign_stmt_7030_to_assign_stmt_7645/call_stmt_7380_sample_completed_
      -- CP-element group 3: 	 assign_stmt_7030_to_assign_stmt_7645/call_stmt_7380_Sample/$exit
      -- 
    cra_233_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 3_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_7380_call_ack_0, ack => execute_messy_dti_CP_205_elements(3)); -- 
    -- CP-element group 4:  fork  transition  input  output  bypass 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: 	0 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	5 
    -- CP-element group 4: 	12 
    -- CP-element group 4: 	15 
    -- CP-element group 4: 	18 
    -- CP-element group 4: 	7 
    -- CP-element group 4: 	9 
    -- CP-element group 4:  members (9) 
      -- CP-element group 4: 	 assign_stmt_7030_to_assign_stmt_7645/call_stmt_7380_Update/cca
      -- CP-element group 4: 	 assign_stmt_7030_to_assign_stmt_7645/call_stmt_7380_update_completed_
      -- CP-element group 4: 	 assign_stmt_7030_to_assign_stmt_7645/assign_stmt_7454_sample_start_
      -- CP-element group 4: 	 assign_stmt_7030_to_assign_stmt_7645/assign_stmt_7454_Sample/$entry
      -- CP-element group 4: 	 assign_stmt_7030_to_assign_stmt_7645/call_stmt_7380_Update/$exit
      -- CP-element group 4: 	 assign_stmt_7030_to_assign_stmt_7645/assign_stmt_7454_Sample/req
      -- CP-element group 4: 	 assign_stmt_7030_to_assign_stmt_7645/MUX_7466_start/req
      -- CP-element group 4: 	 assign_stmt_7030_to_assign_stmt_7645/MUX_7466_start/$entry
      -- CP-element group 4: 	 assign_stmt_7030_to_assign_stmt_7645/MUX_7466_sample_start_
      -- 
    cca_238_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 4_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_7380_call_ack_1, ack => execute_messy_dti_CP_205_elements(4)); -- 
    req_246_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_246_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_messy_dti_CP_205_elements(4), ack => W_dout_h_7452_inst_req_0); -- 
    req_260_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_260_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_messy_dti_CP_205_elements(4), ack => MUX_7466_inst_req_0); -- 
    -- CP-element group 5:  transition  input  bypass 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	4 
    -- CP-element group 5: successors 
    -- CP-element group 5:  members (3) 
      -- CP-element group 5: 	 assign_stmt_7030_to_assign_stmt_7645/assign_stmt_7454_Sample/ack
      -- CP-element group 5: 	 assign_stmt_7030_to_assign_stmt_7645/assign_stmt_7454_sample_completed_
      -- CP-element group 5: 	 assign_stmt_7030_to_assign_stmt_7645/assign_stmt_7454_Sample/$exit
      -- 
    ack_247_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 5_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_dout_h_7452_inst_ack_0, ack => execute_messy_dti_CP_205_elements(5)); -- 
    -- CP-element group 6:  transition  input  bypass 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	0 
    -- CP-element group 6: successors 
    -- CP-element group 6: 	24 
    -- CP-element group 6:  members (3) 
      -- CP-element group 6: 	 assign_stmt_7030_to_assign_stmt_7645/assign_stmt_7454_Update/ack
      -- CP-element group 6: 	 assign_stmt_7030_to_assign_stmt_7645/assign_stmt_7454_Update/$exit
      -- CP-element group 6: 	 assign_stmt_7030_to_assign_stmt_7645/assign_stmt_7454_update_completed_
      -- 
    ack_252_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 6_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_dout_h_7452_inst_ack_1, ack => execute_messy_dti_CP_205_elements(6)); -- 
    -- CP-element group 7:  transition  input  bypass 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	4 
    -- CP-element group 7: successors 
    -- CP-element group 7:  members (3) 
      -- CP-element group 7: 	 assign_stmt_7030_to_assign_stmt_7645/MUX_7466_start/ack
      -- CP-element group 7: 	 assign_stmt_7030_to_assign_stmt_7645/MUX_7466_start/$exit
      -- CP-element group 7: 	 assign_stmt_7030_to_assign_stmt_7645/MUX_7466_sample_completed_
      -- 
    ack_261_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 7_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => MUX_7466_inst_ack_0, ack => execute_messy_dti_CP_205_elements(7)); -- 
    -- CP-element group 8:  transition  input  bypass 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	0 
    -- CP-element group 8: successors 
    -- CP-element group 8: 	24 
    -- CP-element group 8:  members (3) 
      -- CP-element group 8: 	 assign_stmt_7030_to_assign_stmt_7645/MUX_7466_complete/ack
      -- CP-element group 8: 	 assign_stmt_7030_to_assign_stmt_7645/MUX_7466_complete/$exit
      -- CP-element group 8: 	 assign_stmt_7030_to_assign_stmt_7645/MUX_7466_update_completed_
      -- 
    ack_266_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 8_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => MUX_7466_inst_ack_1, ack => execute_messy_dti_CP_205_elements(8)); -- 
    -- CP-element group 9:  join  transition  output  bypass 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: 	4 
    -- CP-element group 9: 	2 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	10 
    -- CP-element group 9:  members (3) 
      -- CP-element group 9: 	 assign_stmt_7030_to_assign_stmt_7645/call_stmt_7562_sample_start_
      -- CP-element group 9: 	 assign_stmt_7030_to_assign_stmt_7645/call_stmt_7562_Sample/$entry
      -- CP-element group 9: 	 assign_stmt_7030_to_assign_stmt_7645/call_stmt_7562_Sample/crr
      -- 
    crr_274_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " crr_274_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_messy_dti_CP_205_elements(9), ack => call_stmt_7562_call_req_0); -- 
    execute_messy_dti_cp_element_group_9: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 36) := "execute_messy_dti_cp_element_group_9"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= execute_messy_dti_CP_205_elements(4) & execute_messy_dti_CP_205_elements(2);
      gj_execute_messy_dti_cp_element_group_9 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => execute_messy_dti_CP_205_elements(9), clk => clk, reset => reset); --
    end block;
    -- CP-element group 10:  transition  input  bypass 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	9 
    -- CP-element group 10: successors 
    -- CP-element group 10:  members (3) 
      -- CP-element group 10: 	 assign_stmt_7030_to_assign_stmt_7645/call_stmt_7562_sample_completed_
      -- CP-element group 10: 	 assign_stmt_7030_to_assign_stmt_7645/call_stmt_7562_Sample/$exit
      -- CP-element group 10: 	 assign_stmt_7030_to_assign_stmt_7645/call_stmt_7562_Sample/cra
      -- 
    cra_275_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 10_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_7562_call_ack_0, ack => execute_messy_dti_CP_205_elements(10)); -- 
    -- CP-element group 11:  fork  transition  input  bypass 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	0 
    -- CP-element group 11: successors 
    -- CP-element group 11: 	12 
    -- CP-element group 11: 	15 
    -- CP-element group 11: 	23 
    -- CP-element group 11:  members (3) 
      -- CP-element group 11: 	 assign_stmt_7030_to_assign_stmt_7645/call_stmt_7562_update_completed_
      -- CP-element group 11: 	 assign_stmt_7030_to_assign_stmt_7645/call_stmt_7562_Update/$exit
      -- CP-element group 11: 	 assign_stmt_7030_to_assign_stmt_7645/call_stmt_7562_Update/cca
      -- 
    cca_280_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 11_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_7562_call_ack_1, ack => execute_messy_dti_CP_205_elements(11)); -- 
    -- CP-element group 12:  join  transition  output  bypass 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	4 
    -- CP-element group 12: 	11 
    -- CP-element group 12: 	2 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	13 
    -- CP-element group 12:  members (3) 
      -- CP-element group 12: 	 assign_stmt_7030_to_assign_stmt_7645/OR_u1_u1_7584_sample_start_
      -- CP-element group 12: 	 assign_stmt_7030_to_assign_stmt_7645/OR_u1_u1_7584_Sample/$entry
      -- CP-element group 12: 	 assign_stmt_7030_to_assign_stmt_7645/OR_u1_u1_7584_Sample/rr
      -- 
    rr_288_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_288_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_messy_dti_CP_205_elements(12), ack => OR_u1_u1_7584_inst_req_0); -- 
    execute_messy_dti_cp_element_group_12: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 37) := "execute_messy_dti_cp_element_group_12"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= execute_messy_dti_CP_205_elements(4) & execute_messy_dti_CP_205_elements(11) & execute_messy_dti_CP_205_elements(2);
      gj_execute_messy_dti_cp_element_group_12 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => execute_messy_dti_CP_205_elements(12), clk => clk, reset => reset); --
    end block;
    -- CP-element group 13:  transition  input  bypass 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: 	12 
    -- CP-element group 13: successors 
    -- CP-element group 13:  members (3) 
      -- CP-element group 13: 	 assign_stmt_7030_to_assign_stmt_7645/OR_u1_u1_7584_sample_completed_
      -- CP-element group 13: 	 assign_stmt_7030_to_assign_stmt_7645/OR_u1_u1_7584_Sample/$exit
      -- CP-element group 13: 	 assign_stmt_7030_to_assign_stmt_7645/OR_u1_u1_7584_Sample/ra
      -- 
    ra_289_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 13_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => OR_u1_u1_7584_inst_ack_0, ack => execute_messy_dti_CP_205_elements(13)); -- 
    -- CP-element group 14:  transition  input  bypass 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: 	0 
    -- CP-element group 14: successors 
    -- CP-element group 14: 	24 
    -- CP-element group 14:  members (3) 
      -- CP-element group 14: 	 assign_stmt_7030_to_assign_stmt_7645/OR_u1_u1_7584_update_completed_
      -- CP-element group 14: 	 assign_stmt_7030_to_assign_stmt_7645/OR_u1_u1_7584_Update/$exit
      -- CP-element group 14: 	 assign_stmt_7030_to_assign_stmt_7645/OR_u1_u1_7584_Update/ca
      -- 
    ca_294_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 14_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => OR_u1_u1_7584_inst_ack_1, ack => execute_messy_dti_CP_205_elements(14)); -- 
    -- CP-element group 15:  join  transition  output  bypass 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: 	4 
    -- CP-element group 15: 	11 
    -- CP-element group 15: 	2 
    -- CP-element group 15: successors 
    -- CP-element group 15: 	16 
    -- CP-element group 15:  members (3) 
      -- CP-element group 15: 	 assign_stmt_7030_to_assign_stmt_7645/OR_u1_u1_7589_sample_start_
      -- CP-element group 15: 	 assign_stmt_7030_to_assign_stmt_7645/OR_u1_u1_7589_Sample/$entry
      -- CP-element group 15: 	 assign_stmt_7030_to_assign_stmt_7645/OR_u1_u1_7589_Sample/rr
      -- 
    rr_302_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_302_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_messy_dti_CP_205_elements(15), ack => OR_u1_u1_7589_inst_req_0); -- 
    execute_messy_dti_cp_element_group_15: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 37) := "execute_messy_dti_cp_element_group_15"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= execute_messy_dti_CP_205_elements(4) & execute_messy_dti_CP_205_elements(11) & execute_messy_dti_CP_205_elements(2);
      gj_execute_messy_dti_cp_element_group_15 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => execute_messy_dti_CP_205_elements(15), clk => clk, reset => reset); --
    end block;
    -- CP-element group 16:  transition  input  bypass 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: 	15 
    -- CP-element group 16: successors 
    -- CP-element group 16:  members (3) 
      -- CP-element group 16: 	 assign_stmt_7030_to_assign_stmt_7645/OR_u1_u1_7589_sample_completed_
      -- CP-element group 16: 	 assign_stmt_7030_to_assign_stmt_7645/OR_u1_u1_7589_Sample/$exit
      -- CP-element group 16: 	 assign_stmt_7030_to_assign_stmt_7645/OR_u1_u1_7589_Sample/ra
      -- 
    ra_303_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 16_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => OR_u1_u1_7589_inst_ack_0, ack => execute_messy_dti_CP_205_elements(16)); -- 
    -- CP-element group 17:  transition  input  bypass 
    -- CP-element group 17: predecessors 
    -- CP-element group 17: 	0 
    -- CP-element group 17: successors 
    -- CP-element group 17: 	24 
    -- CP-element group 17:  members (3) 
      -- CP-element group 17: 	 assign_stmt_7030_to_assign_stmt_7645/OR_u1_u1_7589_update_completed_
      -- CP-element group 17: 	 assign_stmt_7030_to_assign_stmt_7645/OR_u1_u1_7589_Update/$exit
      -- CP-element group 17: 	 assign_stmt_7030_to_assign_stmt_7645/OR_u1_u1_7589_Update/ca
      -- 
    ca_308_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 17_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => OR_u1_u1_7589_inst_ack_1, ack => execute_messy_dti_CP_205_elements(17)); -- 
    -- CP-element group 18:  join  transition  output  bypass 
    -- CP-element group 18: predecessors 
    -- CP-element group 18: 	4 
    -- CP-element group 18: 	2 
    -- CP-element group 18: successors 
    -- CP-element group 18: 	19 
    -- CP-element group 18:  members (3) 
      -- CP-element group 18: 	 assign_stmt_7030_to_assign_stmt_7645/MUX_7641_sample_start_
      -- CP-element group 18: 	 assign_stmt_7030_to_assign_stmt_7645/MUX_7641_start/$entry
      -- CP-element group 18: 	 assign_stmt_7030_to_assign_stmt_7645/MUX_7641_start/req
      -- 
    req_316_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_316_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_messy_dti_CP_205_elements(18), ack => MUX_7641_inst_req_0); -- 
    execute_messy_dti_cp_element_group_18: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 37) := "execute_messy_dti_cp_element_group_18"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= execute_messy_dti_CP_205_elements(4) & execute_messy_dti_CP_205_elements(2);
      gj_execute_messy_dti_cp_element_group_18 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => execute_messy_dti_CP_205_elements(18), clk => clk, reset => reset); --
    end block;
    -- CP-element group 19:  transition  input  bypass 
    -- CP-element group 19: predecessors 
    -- CP-element group 19: 	18 
    -- CP-element group 19: successors 
    -- CP-element group 19:  members (3) 
      -- CP-element group 19: 	 assign_stmt_7030_to_assign_stmt_7645/MUX_7641_sample_completed_
      -- CP-element group 19: 	 assign_stmt_7030_to_assign_stmt_7645/MUX_7641_start/$exit
      -- CP-element group 19: 	 assign_stmt_7030_to_assign_stmt_7645/MUX_7641_start/ack
      -- 
    ack_317_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 19_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => MUX_7641_inst_ack_0, ack => execute_messy_dti_CP_205_elements(19)); -- 
    -- CP-element group 20:  transition  input  bypass 
    -- CP-element group 20: predecessors 
    -- CP-element group 20: 	0 
    -- CP-element group 20: successors 
    -- CP-element group 20: 	24 
    -- CP-element group 20:  members (3) 
      -- CP-element group 20: 	 assign_stmt_7030_to_assign_stmt_7645/MUX_7641_update_completed_
      -- CP-element group 20: 	 assign_stmt_7030_to_assign_stmt_7645/MUX_7641_complete/$exit
      -- CP-element group 20: 	 assign_stmt_7030_to_assign_stmt_7645/MUX_7641_complete/ack
      -- 
    ack_322_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 20_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => MUX_7641_inst_ack_1, ack => execute_messy_dti_CP_205_elements(20)); -- 
    -- CP-element group 21:  transition  input  output  bypass 
    -- CP-element group 21: predecessors 
    -- CP-element group 21: 	23 
    -- CP-element group 21: successors 
    -- CP-element group 21: 	22 
    -- CP-element group 21:  members (6) 
      -- CP-element group 21: 	 assign_stmt_7030_to_assign_stmt_7645/WPIPE_messy_operation_completed_7643_sample_completed_
      -- CP-element group 21: 	 assign_stmt_7030_to_assign_stmt_7645/WPIPE_messy_operation_completed_7643_update_start_
      -- CP-element group 21: 	 assign_stmt_7030_to_assign_stmt_7645/WPIPE_messy_operation_completed_7643_Sample/$exit
      -- CP-element group 21: 	 assign_stmt_7030_to_assign_stmt_7645/WPIPE_messy_operation_completed_7643_Sample/ack
      -- CP-element group 21: 	 assign_stmt_7030_to_assign_stmt_7645/WPIPE_messy_operation_completed_7643_Update/$entry
      -- CP-element group 21: 	 assign_stmt_7030_to_assign_stmt_7645/WPIPE_messy_operation_completed_7643_Update/req
      -- 
    ack_331_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 21_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_messy_operation_completed_7643_inst_ack_0, ack => execute_messy_dti_CP_205_elements(21)); -- 
    req_335_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_335_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_messy_dti_CP_205_elements(21), ack => WPIPE_messy_operation_completed_7643_inst_req_1); -- 
    -- CP-element group 22:  transition  input  bypass 
    -- CP-element group 22: predecessors 
    -- CP-element group 22: 	21 
    -- CP-element group 22: successors 
    -- CP-element group 22: 	24 
    -- CP-element group 22:  members (3) 
      -- CP-element group 22: 	 assign_stmt_7030_to_assign_stmt_7645/WPIPE_messy_operation_completed_7643_update_completed_
      -- CP-element group 22: 	 assign_stmt_7030_to_assign_stmt_7645/WPIPE_messy_operation_completed_7643_Update/$exit
      -- CP-element group 22: 	 assign_stmt_7030_to_assign_stmt_7645/WPIPE_messy_operation_completed_7643_Update/ack
      -- 
    ack_336_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 22_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_messy_operation_completed_7643_inst_ack_1, ack => execute_messy_dti_CP_205_elements(22)); -- 
    -- CP-element group 23:  transition  output  delay-element  bypass 
    -- CP-element group 23: predecessors 
    -- CP-element group 23: 	11 
    -- CP-element group 23: successors 
    -- CP-element group 23: 	21 
    -- CP-element group 23:  members (4) 
      -- CP-element group 23: 	 assign_stmt_7030_to_assign_stmt_7645/WPIPE_messy_operation_completed_7643_sample_start_
      -- CP-element group 23: 	 assign_stmt_7030_to_assign_stmt_7645/WPIPE_messy_operation_completed_7643_Sample/$entry
      -- CP-element group 23: 	 assign_stmt_7030_to_assign_stmt_7645/WPIPE_messy_operation_completed_7643_Sample/req
      -- CP-element group 23: 	 assign_stmt_7030_to_assign_stmt_7645/synch_WPIPE_messy_operation_completed_7643_sample_start__call_stmt_7562_sample_completed_
      -- 
    req_330_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_330_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => execute_messy_dti_CP_205_elements(23), ack => WPIPE_messy_operation_completed_7643_inst_req_0); -- 
    -- Element group execute_messy_dti_CP_205_elements(23) is a control-delay.
    cp_element_23_delay: control_delay_element  generic map(name => " 23_delay", delay_value => 1)  port map(req => execute_messy_dti_CP_205_elements(11), ack => execute_messy_dti_CP_205_elements(23), clk => clk, reset =>reset);
    -- CP-element group 24:  join  transition  bypass 
    -- CP-element group 24: predecessors 
    -- CP-element group 24: 	14 
    -- CP-element group 24: 	17 
    -- CP-element group 24: 	20 
    -- CP-element group 24: 	22 
    -- CP-element group 24: 	6 
    -- CP-element group 24: 	8 
    -- CP-element group 24: successors 
    -- CP-element group 24:  members (2) 
      -- CP-element group 24: 	 $exit
      -- CP-element group 24: 	 assign_stmt_7030_to_assign_stmt_7645/$exit
      -- 
    execute_messy_dti_cp_element_group_24: block -- 
      constant place_capacities: IntegerArray(0 to 5) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1);
      constant place_markings: IntegerArray(0 to 5)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0);
      constant place_delays: IntegerArray(0 to 5) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0);
      constant joinName: string(1 to 37) := "execute_messy_dti_cp_element_group_24"; 
      signal preds: BooleanArray(1 to 6); -- 
    begin -- 
      preds <= execute_messy_dti_CP_205_elements(14) & execute_messy_dti_CP_205_elements(17) & execute_messy_dti_CP_205_elements(20) & execute_messy_dti_CP_205_elements(22) & execute_messy_dti_CP_205_elements(6) & execute_messy_dti_CP_205_elements(8);
      gj_execute_messy_dti_cp_element_group_24 : generic_join generic map(name => joinName, number_of_predecessors => 6, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => execute_messy_dti_CP_205_elements(24), clk => clk, reset => reset); --
    end block;
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_7071_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_7471_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_7503_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_7519_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_7522_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u32_u1_7176_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u32_u1_7413_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u8_u1_7126_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u8_u1_7393_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u8_u1_7400_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u8_u1_7571_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u8_u1_7578_wire : std_logic_vector(0 downto 0);
    signal CONCAT_u14_u32_7096_wire : std_logic_vector(31 downto 0);
    signal CONCAT_u16_u24_7638_wire : std_logic_vector(23 downto 0);
    signal CONCAT_u1_u2_7197_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_7279_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_7628_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u4_7086_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u1_u6_7632_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u2_u6_7200_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u2_u6_7282_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u2_u8_7633_wire : std_logic_vector(7 downto 0);
    signal CONCAT_u32_u64_7269_wire : std_logic_vector(63 downto 0);
    signal CONCAT_u32_u64_7272_wire : std_logic_vector(63 downto 0);
    signal CONCAT_u4_u8_7179_wire : std_logic_vector(7 downto 0);
    signal CONCAT_u4_u8_7182_wire : std_logic_vector(7 downto 0);
    signal CONCAT_u8_u16_7636_wire : std_logic_vector(15 downto 0);
    signal CONCAT_u8_u32_7639_wire : std_logic_vector(31 downto 0);
    signal EQ_u2_u1_7138_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_7145_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_7153_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_7160_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_7210_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_7218_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_7227_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_7235_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_7422_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_7429_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_7437_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_7444_wire : std_logic_vector(0 downto 0);
    signal MUX_7090_wire : std_logic_vector(3 downto 0);
    signal MUX_7142_wire : std_logic_vector(3 downto 0);
    signal MUX_7149_wire : std_logic_vector(3 downto 0);
    signal MUX_7157_wire : std_logic_vector(3 downto 0);
    signal MUX_7164_wire : std_logic_vector(3 downto 0);
    signal MUX_7170_wire : std_logic_vector(3 downto 0);
    signal MUX_7191_wire : std_logic_vector(7 downto 0);
    signal MUX_7215_wire : std_logic_vector(31 downto 0);
    signal MUX_7223_wire : std_logic_vector(31 downto 0);
    signal MUX_7232_wire : std_logic_vector(31 downto 0);
    signal MUX_7238_wire : std_logic_vector(31 downto 0);
    signal MUX_7250_wire : std_logic_vector(7 downto 0);
    signal MUX_7306_wire : std_logic_vector(1 downto 0);
    signal MUX_7330_wire : std_logic_vector(7 downto 0);
    signal MUX_7334_wire : std_logic_vector(7 downto 0);
    signal MUX_7341_wire : std_logic_vector(7 downto 0);
    signal MUX_7345_wire : std_logic_vector(7 downto 0);
    signal MUX_7355_wire : std_logic_vector(31 downto 0);
    signal MUX_7359_wire : std_logic_vector(31 downto 0);
    signal MUX_7366_wire : std_logic_vector(63 downto 0);
    signal MUX_7370_wire : std_logic_vector(63 downto 0);
    signal MUX_7426_wire : std_logic_vector(7 downto 0);
    signal MUX_7433_wire : std_logic_vector(7 downto 0);
    signal MUX_7441_wire : std_logic_vector(7 downto 0);
    signal MUX_7448_wire : std_logic_vector(7 downto 0);
    signal MUX_7464_wire : std_logic_vector(31 downto 0);
    signal MUX_7506_wire : std_logic_vector(1 downto 0);
    signal MUX_7595_wire : std_logic_vector(0 downto 0);
    signal MUX_7599_wire : std_logic_vector(0 downto 0);
    signal NEQ_u2_u1_7323_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_7068_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_7070_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_7123_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_7127_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_7518_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_7521_wire : std_logic_vector(0 downto 0);
    signal NOT_u32_u32_7049_wire_constant : std_logic_vector(31 downto 0);
    signal NOT_u32_u32_7256_wire_constant : std_logic_vector(31 downto 0);
    signal NOT_u32_u32_7294_wire_constant : std_logic_vector(31 downto 0);
    signal OR_u1_u1_7056_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_7063_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_7474_wire : std_logic_vector(0 downto 0);
    signal OR_u32_u32_7224_wire : std_logic_vector(31 downto 0);
    signal OR_u32_u32_7239_wire : std_logic_vector(31 downto 0);
    signal OR_u32_u32_7240_wire : std_logic_vector(31 downto 0);
    signal OR_u4_u4_7150_wire : std_logic_vector(3 downto 0);
    signal OR_u4_u4_7165_wire : std_logic_vector(3 downto 0);
    signal OR_u4_u4_7166_wire : std_logic_vector(3 downto 0);
    signal OR_u8_u8_7434_wire : std_logic_vector(7 downto 0);
    signal OR_u8_u8_7449_wire : std_logic_vector(7 downto 0);
    signal RPIPE_BROADCAST_INIT_PC_7492_wire : std_logic_vector(31 downto 0);
    signal R_ASI_SUPERVISOR_DATA_7189_wire_constant : std_logic_vector(7 downto 0);
    signal R_ASI_SUPERVISOR_DATA_7248_wire_constant : std_logic_vector(7 downto 0);
    signal R_ASI_USER_DATA_7190_wire_constant : std_logic_vector(7 downto 0);
    signal R_ASI_USER_DATA_7249_wire_constant : std_logic_vector(7 downto 0);
    signal R_DTI_IS_LOAD_7302_wire_constant : std_logic_vector(1 downto 0);
    signal R_DTI_IS_LOAD_7311_wire_constant : std_logic_vector(1 downto 0);
    signal R_DTI_IS_LOAD_7500_wire_constant : std_logic_vector(1 downto 0);
    signal R_DTI_IS_NOP_7305_wire_constant : std_logic_vector(1 downto 0);
    signal R_DTI_IS_NOP_7505_wire_constant : std_logic_vector(1 downto 0);
    signal R_DTI_IS_STORE_7304_wire_constant : std_logic_vector(1 downto 0);
    signal R_DTI_IS_STORE_7316_wire_constant : std_logic_vector(1 downto 0);
    signal R_DTI_IS_STORE_7504_wire_constant : std_logic_vector(1 downto 0);
    signal R_DTI_IS_STORE_7511_wire_constant : std_logic_vector(1 downto 0);
    signal R_ONE_1_7644_wire_constant : std_logic_vector(0 downto 0);
    signal R_REQUEST_TYPE_NOP_7089_wire_constant : std_logic_vector(3 downto 0);
    signal R_REQUEST_TYPE_READ_7199_wire_constant : std_logic_vector(3 downto 0);
    signal R_REQUEST_TYPE_WRFSRFAR_7088_wire_constant : std_logic_vector(3 downto 0);
    signal R_REQUEST_TYPE_WRITE_7281_wire_constant : std_logic_vector(3 downto 0);
    signal R_ZERO_14_7094_wire_constant : std_logic_vector(13 downto 0);
    signal R_ZERO_1_7627_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_7629_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_32_7267_wire_constant : std_logic_vector(31 downto 0);
    signal R_ZERO_32_7271_wire_constant : std_logic_vector(31 downto 0);
    signal R_ZERO_3_7085_wire_constant : std_logic_vector(2 downto 0);
    signal R_ZERO_4_7177_wire_constant : std_logic_vector(3 downto 0);
    signal R_ZERO_4_7181_wire_constant : std_logic_vector(3 downto 0);
    signal SHL_u32_u32_7213_wire : std_logic_vector(31 downto 0);
    signal SHL_u32_u32_7221_wire : std_logic_vector(31 downto 0);
    signal SHL_u32_u32_7230_wire : std_logic_vector(31 downto 0);
    signal a10_7133 : std_logic_vector(1 downto 0);
    signal addr_signature_7604 : std_logic_vector(7 downto 0);
    signal dcache_byte_mask_7184 : std_logic_vector(7 downto 0);
    signal dcache_byte_mask_l_7172 : std_logic_vector(3 downto 0);
    signal dcache_wr_data_7274 : std_logic_vector(63 downto 0);
    signal din_h_signature_7615 : std_logic_vector(7 downto 0);
    signal din_l_signature_7618 : std_logic_vector(7 downto 0);
    signal do_dummy_second_7476 : std_logic_vector(0 downto 0);
    signal dummy_address_7493 : std_logic_vector(31 downto 0);
    signal dummy_asi_7490 : std_logic_vector(7 downto 0);
    signal dummy_byte_mask_7486 : std_logic_vector(7 downto 0);
    signal dummy_request_type_7482 : std_logic_vector(7 downto 0);
    signal dummy_write_data_7497 : std_logic_vector(63 downto 0);
    signal dword_addr_7051 : std_logic_vector(31 downto 0);
    signal ext_byte_7451 : std_logic_vector(7 downto 0);
    signal first_access_type_7308 : std_logic_vector(1 downto 0);
    signal first_address_7361 : std_logic_vector(31 downto 0);
    signal first_asi_7347 : std_logic_vector(7 downto 0);
    signal first_byte_mask_7350 : std_logic_vector(7 downto 0);
    signal first_data_access_error_7402 : std_logic_vector(0 downto 0);
    signal first_data_access_exception_7395 : std_logic_vector(0 downto 0);
    signal first_is_load_7313 : std_logic_vector(0 downto 0);
    signal first_is_store_7318 : std_logic_vector(0 downto 0);
    signal first_is_valid_7325 : std_logic_vector(0 downto 0);
    signal first_mae_7384 : std_logic_vector(7 downto 0);
    signal first_read_data_7388 : std_logic_vector(63 downto 0);
    signal first_read_response_7380 : std_logic_vector(71 downto 0);
    signal first_request_type_7336 : std_logic_vector(7 downto 0);
    signal first_write_data_7372 : std_logic_vector(63 downto 0);
    signal is_load_request_7058 : std_logic_vector(0 downto 0);
    signal is_store_request_7065 : std_logic_vector(0 downto 0);
    signal issue_special_store_7082 : std_logic_vector(0 downto 0);
    signal issue_untrap_request_7074 : std_logic_vector(0 downto 0);
    signal issue_write_mmu_fsr_request_7077 : std_logic_vector(0 downto 0);
    signal konst_7125_wire_constant : std_logic_vector(7 downto 0);
    signal konst_7137_wire_constant : std_logic_vector(1 downto 0);
    signal konst_7141_wire_constant : std_logic_vector(3 downto 0);
    signal konst_7144_wire_constant : std_logic_vector(1 downto 0);
    signal konst_7148_wire_constant : std_logic_vector(3 downto 0);
    signal konst_7152_wire_constant : std_logic_vector(1 downto 0);
    signal konst_7156_wire_constant : std_logic_vector(3 downto 0);
    signal konst_7159_wire_constant : std_logic_vector(1 downto 0);
    signal konst_7163_wire_constant : std_logic_vector(3 downto 0);
    signal konst_7168_wire_constant : std_logic_vector(3 downto 0);
    signal konst_7169_wire_constant : std_logic_vector(3 downto 0);
    signal konst_7175_wire_constant : std_logic_vector(31 downto 0);
    signal konst_7209_wire_constant : std_logic_vector(1 downto 0);
    signal konst_7212_wire_constant : std_logic_vector(31 downto 0);
    signal konst_7214_wire_constant : std_logic_vector(31 downto 0);
    signal konst_7217_wire_constant : std_logic_vector(1 downto 0);
    signal konst_7220_wire_constant : std_logic_vector(31 downto 0);
    signal konst_7222_wire_constant : std_logic_vector(31 downto 0);
    signal konst_7226_wire_constant : std_logic_vector(1 downto 0);
    signal konst_7229_wire_constant : std_logic_vector(31 downto 0);
    signal konst_7231_wire_constant : std_logic_vector(31 downto 0);
    signal konst_7234_wire_constant : std_logic_vector(1 downto 0);
    signal konst_7237_wire_constant : std_logic_vector(31 downto 0);
    signal konst_7262_wire_constant : std_logic_vector(31 downto 0);
    signal konst_7322_wire_constant : std_logic_vector(1 downto 0);
    signal konst_7329_wire_constant : std_logic_vector(7 downto 0);
    signal konst_7333_wire_constant : std_logic_vector(7 downto 0);
    signal konst_7340_wire_constant : std_logic_vector(7 downto 0);
    signal konst_7344_wire_constant : std_logic_vector(7 downto 0);
    signal konst_7354_wire_constant : std_logic_vector(31 downto 0);
    signal konst_7358_wire_constant : std_logic_vector(31 downto 0);
    signal konst_7364_wire_constant : std_logic_vector(63 downto 0);
    signal konst_7365_wire_constant : std_logic_vector(63 downto 0);
    signal konst_7369_wire_constant : std_logic_vector(63 downto 0);
    signal konst_7392_wire_constant : std_logic_vector(7 downto 0);
    signal konst_7399_wire_constant : std_logic_vector(7 downto 0);
    signal konst_7412_wire_constant : std_logic_vector(31 downto 0);
    signal konst_7421_wire_constant : std_logic_vector(1 downto 0);
    signal konst_7425_wire_constant : std_logic_vector(7 downto 0);
    signal konst_7428_wire_constant : std_logic_vector(1 downto 0);
    signal konst_7432_wire_constant : std_logic_vector(7 downto 0);
    signal konst_7436_wire_constant : std_logic_vector(1 downto 0);
    signal konst_7440_wire_constant : std_logic_vector(7 downto 0);
    signal konst_7443_wire_constant : std_logic_vector(1 downto 0);
    signal konst_7447_wire_constant : std_logic_vector(7 downto 0);
    signal konst_7570_wire_constant : std_logic_vector(7 downto 0);
    signal konst_7577_wire_constant : std_logic_vector(7 downto 0);
    signal konst_7594_wire_constant : std_logic_vector(0 downto 0);
    signal konst_7598_wire_constant : std_logic_vector(0 downto 0);
    signal konst_7640_wire_constant : std_logic_vector(31 downto 0);
    signal load_asi_7193 : std_logic_vector(7 downto 0);
    signal load_dword_addr_7205 : std_logic_vector(31 downto 0);
    signal load_request_type_7202 : std_logic_vector(7 downto 0);
    signal loaded_high_word_7409 : std_logic_vector(31 downto 0);
    signal loaded_low_word_7418 : std_logic_vector(31 downto 0);
    signal loaded_word_7405 : std_logic_vector(63 downto 0);
    signal lock_bus_7030 : std_logic_vector(0 downto 0);
    signal low_word_in_lower_half_7264 : std_logic_vector(0 downto 0);
    signal second_access_type_7508 : std_logic_vector(1 downto 0);
    signal second_address_7548 : std_logic_vector(31 downto 0);
    signal second_asi_7536 : std_logic_vector(7 downto 0);
    signal second_byte_mask_7542 : std_logic_vector(7 downto 0);
    signal second_data_access_error_7580 : std_logic_vector(0 downto 0);
    signal second_data_access_exception_7573 : std_logic_vector(0 downto 0);
    signal second_is_store_7513 : std_logic_vector(0 downto 0);
    signal second_is_valid_7524 : std_logic_vector(0 downto 0);
    signal second_mae_7566 : std_logic_vector(7 downto 0);
    signal second_read_response_7562 : std_logic_vector(71 downto 0);
    signal second_request_type_7530 : std_logic_vector(7 downto 0);
    signal second_write_data_7554 : std_logic_vector(63 downto 0);
    signal slice_7415_wire : std_logic_vector(31 downto 0);
    signal slice_7424_wire : std_logic_vector(7 downto 0);
    signal slice_7431_wire : std_logic_vector(7 downto 0);
    signal slice_7439_wire : std_logic_vector(7 downto 0);
    signal slice_7446_wire : std_logic_vector(7 downto 0);
    signal slice_7631_wire : std_logic_vector(4 downto 0);
    signal special_request_address_7102 : std_logic_vector(31 downto 0);
    signal special_request_asi_7108 : std_logic_vector(7 downto 0);
    signal special_request_byte_mask_7105 : std_logic_vector(7 downto 0);
    signal special_request_mae_7120 : std_logic_vector(7 downto 0);
    signal special_request_ok_7129 : std_logic_vector(0 downto 0);
    signal special_request_response_7116 : std_logic_vector(71 downto 0);
    signal special_request_type_7092 : std_logic_vector(7 downto 0);
    signal special_request_write_data_7099 : std_logic_vector(63 downto 0);
    signal store_addr_7287 : std_logic_vector(31 downto 0);
    signal store_address_space_7252 : std_logic_vector(7 downto 0);
    signal store_asi_7290 : std_logic_vector(7 downto 0);
    signal store_dword_addr_7296 : std_logic_vector(31 downto 0);
    signal store_request_type_7284 : std_logic_vector(7 downto 0);
    signal store_was_issued_7601 : std_logic_vector(0 downto 0);
    signal store_word_l_7243 : std_logic_vector(31 downto 0);
    signal store_write_data_7299 : std_logic_vector(63 downto 0);
    signal type_cast_7140_wire_constant : std_logic_vector(3 downto 0);
    signal type_cast_7147_wire_constant : std_logic_vector(3 downto 0);
    signal type_cast_7155_wire_constant : std_logic_vector(3 downto 0);
    signal type_cast_7162_wire_constant : std_logic_vector(3 downto 0);
    signal type_cast_7278_wire_constant : std_logic_vector(0 downto 0);
    signal type_cast_7459_wire : std_logic_vector(7 downto 0);
    signal type_cast_7460_wire : std_logic_vector(31 downto 0);
    signal type_cast_7461_wire : std_logic_vector(31 downto 0);
    signal type_cast_7463_wire : std_logic_vector(31 downto 0);
    signal word_data_7259 : std_logic_vector(31 downto 0);
    signal wr_data_h_7608 : std_logic_vector(31 downto 0);
    signal wr_data_l_7612 : std_logic_vector(31 downto 0);
    signal wr_data_signature_7623 : std_logic_vector(7 downto 0);
    -- 
  begin -- 
    NOT_u32_u32_7049_wire_constant <= "11111111111111111111111111111000";
    NOT_u32_u32_7256_wire_constant <= "11111111111111111111111111111111";
    NOT_u32_u32_7294_wire_constant <= "11111111111111111111111111111000";
    R_ASI_SUPERVISOR_DATA_7189_wire_constant <= "00001011";
    R_ASI_SUPERVISOR_DATA_7248_wire_constant <= "00001011";
    R_ASI_USER_DATA_7190_wire_constant <= "00001010";
    R_ASI_USER_DATA_7249_wire_constant <= "00001010";
    R_DTI_IS_LOAD_7302_wire_constant <= "01";
    R_DTI_IS_LOAD_7311_wire_constant <= "01";
    R_DTI_IS_LOAD_7500_wire_constant <= "01";
    R_DTI_IS_NOP_7305_wire_constant <= "00";
    R_DTI_IS_NOP_7505_wire_constant <= "00";
    R_DTI_IS_STORE_7304_wire_constant <= "10";
    R_DTI_IS_STORE_7316_wire_constant <= "10";
    R_DTI_IS_STORE_7504_wire_constant <= "10";
    R_DTI_IS_STORE_7511_wire_constant <= "10";
    R_ONE_1_7644_wire_constant <= "1";
    R_REQUEST_TYPE_NOP_7089_wire_constant <= "0111";
    R_REQUEST_TYPE_READ_7199_wire_constant <= "0001";
    R_REQUEST_TYPE_WRFSRFAR_7088_wire_constant <= "0100";
    R_REQUEST_TYPE_WRITE_7281_wire_constant <= "0010";
    R_ZERO_14_7094_wire_constant <= "00000000000000";
    R_ZERO_1_7627_wire_constant <= "0";
    R_ZERO_1_7629_wire_constant <= "0";
    R_ZERO_32_7267_wire_constant <= "00000000000000000000000000000000";
    R_ZERO_32_7271_wire_constant <= "00000000000000000000000000000000";
    R_ZERO_3_7085_wire_constant <= "000";
    R_ZERO_4_7177_wire_constant <= "0000";
    R_ZERO_4_7181_wire_constant <= "0000";
    dummy_asi_7490 <= "00100000";
    dummy_byte_mask_7486 <= "11110000";
    dummy_request_type_7482 <= "00000001";
    dummy_write_data_7497 <= "0000000000000000000000000000000000000000000000000000000000000000";
    konst_7125_wire_constant <= "00000000";
    konst_7137_wire_constant <= "00";
    konst_7141_wire_constant <= "0000";
    konst_7144_wire_constant <= "01";
    konst_7148_wire_constant <= "0000";
    konst_7152_wire_constant <= "10";
    konst_7156_wire_constant <= "0000";
    konst_7159_wire_constant <= "11";
    konst_7163_wire_constant <= "0000";
    konst_7168_wire_constant <= "1111";
    konst_7169_wire_constant <= "0000";
    konst_7175_wire_constant <= "00000000000000000000000000000010";
    konst_7209_wire_constant <= "00";
    konst_7212_wire_constant <= "00000000000000000000000000011000";
    konst_7214_wire_constant <= "00000000000000000000000000000000";
    konst_7217_wire_constant <= "01";
    konst_7220_wire_constant <= "00000000000000000000000000010000";
    konst_7222_wire_constant <= "00000000000000000000000000000000";
    konst_7226_wire_constant <= "10";
    konst_7229_wire_constant <= "00000000000000000000000000001000";
    konst_7231_wire_constant <= "00000000000000000000000000000000";
    konst_7234_wire_constant <= "11";
    konst_7237_wire_constant <= "00000000000000000000000000000000";
    konst_7262_wire_constant <= "00000000000000000000000000000010";
    konst_7322_wire_constant <= "00";
    konst_7329_wire_constant <= "00000000";
    konst_7333_wire_constant <= "00000000";
    konst_7340_wire_constant <= "00000000";
    konst_7344_wire_constant <= "00000000";
    konst_7354_wire_constant <= "00000000000000000000000000000000";
    konst_7358_wire_constant <= "00000000000000000000000000000000";
    konst_7364_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000000";
    konst_7365_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000000";
    konst_7369_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000000";
    konst_7392_wire_constant <= "00000000";
    konst_7399_wire_constant <= "00000001";
    konst_7412_wire_constant <= "00000000000000000000000000000010";
    konst_7421_wire_constant <= "00";
    konst_7425_wire_constant <= "00000000";
    konst_7428_wire_constant <= "01";
    konst_7432_wire_constant <= "00000000";
    konst_7436_wire_constant <= "10";
    konst_7440_wire_constant <= "00000000";
    konst_7443_wire_constant <= "11";
    konst_7447_wire_constant <= "00000000";
    konst_7570_wire_constant <= "00000000";
    konst_7577_wire_constant <= "00000001";
    konst_7594_wire_constant <= "0";
    konst_7598_wire_constant <= "0";
    konst_7640_wire_constant <= "00000000000000000000000000000000";
    special_request_address_7102 <= "00000000000000000000000000000000";
    special_request_asi_7108 <= "00000000";
    special_request_byte_mask_7105 <= "00000000";
    type_cast_7140_wire_constant <= "1000";
    type_cast_7147_wire_constant <= "0100";
    type_cast_7155_wire_constant <= "0010";
    type_cast_7162_wire_constant <= "0001";
    type_cast_7278_wire_constant <= "0";
    -- flow-through select operator MUX_7090_inst
    MUX_7090_wire <= R_REQUEST_TYPE_WRFSRFAR_7088_wire_constant when (update_mmu_fsr_buffer(0) /=  '0') else R_REQUEST_TYPE_NOP_7089_wire_constant;
    -- flow-through select operator MUX_7142_inst
    MUX_7142_wire <= type_cast_7140_wire_constant when (EQ_u2_u1_7138_wire(0) /=  '0') else konst_7141_wire_constant;
    -- flow-through select operator MUX_7149_inst
    MUX_7149_wire <= type_cast_7147_wire_constant when (EQ_u2_u1_7145_wire(0) /=  '0') else konst_7148_wire_constant;
    -- flow-through select operator MUX_7157_inst
    MUX_7157_wire <= type_cast_7155_wire_constant when (EQ_u2_u1_7153_wire(0) /=  '0') else konst_7156_wire_constant;
    -- flow-through select operator MUX_7164_inst
    MUX_7164_wire <= type_cast_7162_wire_constant when (EQ_u2_u1_7160_wire(0) /=  '0') else konst_7163_wire_constant;
    -- flow-through select operator MUX_7170_inst
    MUX_7170_wire <= konst_7168_wire_constant when (is_swap_buffer(0) /=  '0') else konst_7169_wire_constant;
    -- flow-through select operator MUX_7171_inst
    dcache_byte_mask_l_7172 <= OR_u4_u4_7166_wire when (is_atomic_ld_st_buffer(0) /=  '0') else MUX_7170_wire;
    -- flow-through select operator MUX_7183_inst
    dcache_byte_mask_7184 <= CONCAT_u4_u8_7179_wire when (BITSEL_u32_u1_7176_wire(0) /=  '0') else CONCAT_u4_u8_7182_wire;
    -- flow-through select operator MUX_7191_inst
    MUX_7191_wire <= R_ASI_SUPERVISOR_DATA_7189_wire_constant when (S_buffer(0) /=  '0') else R_ASI_USER_DATA_7190_wire_constant;
    -- flow-through select operator MUX_7192_inst
    load_asi_7193 <= asi_buffer when (use_asi_buffer(0) /=  '0') else MUX_7191_wire;
    -- flow-through select operator MUX_7215_inst
    MUX_7215_wire <= SHL_u32_u32_7213_wire when (EQ_u2_u1_7210_wire(0) /=  '0') else konst_7214_wire_constant;
    -- flow-through select operator MUX_7223_inst
    MUX_7223_wire <= SHL_u32_u32_7221_wire when (EQ_u2_u1_7218_wire(0) /=  '0') else konst_7222_wire_constant;
    -- flow-through select operator MUX_7232_inst
    MUX_7232_wire <= SHL_u32_u32_7230_wire when (EQ_u2_u1_7227_wire(0) /=  '0') else konst_7231_wire_constant;
    -- flow-through select operator MUX_7238_inst
    MUX_7238_wire <= din_l_buffer when (EQ_u2_u1_7235_wire(0) /=  '0') else konst_7237_wire_constant;
    -- flow-through select operator MUX_7242_inst
    store_word_l_7243 <= OR_u32_u32_7240_wire when (is_atomic_ld_st_buffer(0) /=  '0') else din_l_buffer;
    -- flow-through select operator MUX_7250_inst
    MUX_7250_wire <= R_ASI_SUPERVISOR_DATA_7248_wire_constant when (S_buffer(0) /=  '0') else R_ASI_USER_DATA_7249_wire_constant;
    -- flow-through select operator MUX_7251_inst
    store_address_space_7252 <= asi_buffer when (use_asi_buffer(0) /=  '0') else MUX_7250_wire;
    -- flow-through select operator MUX_7258_inst
    word_data_7259 <= NOT_u32_u32_7256_wire_constant when (is_atomic_ld_st_buffer(0) /=  '0') else store_word_l_7243;
    -- flow-through select operator MUX_7273_inst
    dcache_wr_data_7274 <= CONCAT_u32_u64_7269_wire when (low_word_in_lower_half_7264(0) /=  '0') else CONCAT_u32_u64_7272_wire;
    -- flow-through select operator MUX_7306_inst
    MUX_7306_wire <= R_DTI_IS_STORE_7304_wire_constant when (is_store_request_7065(0) /=  '0') else R_DTI_IS_NOP_7305_wire_constant;
    -- flow-through select operator MUX_7307_inst
    first_access_type_7308 <= R_DTI_IS_LOAD_7302_wire_constant when (is_load_request_7058(0) /=  '0') else MUX_7306_wire;
    -- flow-through select operator MUX_7330_inst
    MUX_7330_wire <= load_request_type_7202 when (first_is_load_7313(0) /=  '0') else konst_7329_wire_constant;
    -- flow-through select operator MUX_7334_inst
    MUX_7334_wire <= store_request_type_7284 when (first_is_store_7318(0) /=  '0') else konst_7333_wire_constant;
    -- flow-through select operator MUX_7341_inst
    MUX_7341_wire <= load_asi_7193 when (first_is_load_7313(0) /=  '0') else konst_7340_wire_constant;
    -- flow-through select operator MUX_7345_inst
    MUX_7345_wire <= store_asi_7290 when (first_is_store_7318(0) /=  '0') else konst_7344_wire_constant;
    -- flow-through select operator MUX_7355_inst
    MUX_7355_wire <= load_dword_addr_7205 when (first_is_load_7313(0) /=  '0') else konst_7354_wire_constant;
    -- flow-through select operator MUX_7359_inst
    MUX_7359_wire <= store_dword_addr_7296 when (first_is_store_7318(0) /=  '0') else konst_7358_wire_constant;
    -- flow-through select operator MUX_7366_inst
    MUX_7366_wire <= konst_7364_wire_constant when (first_is_load_7313(0) /=  '0') else konst_7365_wire_constant;
    -- flow-through select operator MUX_7370_inst
    MUX_7370_wire <= store_write_data_7299 when (first_is_store_7318(0) /=  '0') else konst_7369_wire_constant;
    -- flow-through select operator MUX_7417_inst
    loaded_low_word_7418 <= slice_7415_wire when (BITSEL_u32_u1_7413_wire(0) /=  '0') else loaded_high_word_7409;
    -- flow-through select operator MUX_7426_inst
    MUX_7426_wire <= slice_7424_wire when (EQ_u2_u1_7422_wire(0) /=  '0') else konst_7425_wire_constant;
    -- flow-through select operator MUX_7433_inst
    MUX_7433_wire <= slice_7431_wire when (EQ_u2_u1_7429_wire(0) /=  '0') else konst_7432_wire_constant;
    -- flow-through select operator MUX_7441_inst
    MUX_7441_wire <= slice_7439_wire when (EQ_u2_u1_7437_wire(0) /=  '0') else konst_7440_wire_constant;
    -- flow-through select operator MUX_7448_inst
    MUX_7448_wire <= slice_7446_wire when (EQ_u2_u1_7444_wire(0) /=  '0') else konst_7447_wire_constant;
    -- flow-through select operator MUX_7464_inst
    MUX_7464_wire <= type_cast_7461_wire when (signed_type_buffer(0) /=  '0') else type_cast_7463_wire;
    MUX_7466_inst_block : block -- 
      signal sample_req, sample_ack, update_req, update_ack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      sample_req(0) <= MUX_7466_inst_req_0;
      MUX_7466_inst_ack_0<= sample_ack(0);
      update_req(0) <= MUX_7466_inst_req_1;
      MUX_7466_inst_ack_1<= update_ack(0);
      MUX_7466_inst: SelectSplitProtocol generic map(name => "MUX_7466_inst", data_width => 32, buffering => 1, flow_through => false, full_rate => false) -- 
        port map( x => MUX_7464_wire, y => loaded_low_word_7418, sel => is_atomic_ld_st_buffer, z => dout_l_buffer, sample_req => sample_req(0), sample_ack => sample_ack(0), update_req => update_req(0), update_ack => update_ack(0), clk => clk, reset => reset); -- 
      -- 
    end block;
    -- flow-through select operator MUX_7506_inst
    MUX_7506_wire <= R_DTI_IS_STORE_7504_wire_constant when (AND_u1_u1_7503_wire(0) /=  '0') else R_DTI_IS_NOP_7505_wire_constant;
    -- flow-through select operator MUX_7507_inst
    second_access_type_7508 <= R_DTI_IS_LOAD_7500_wire_constant when (do_dummy_second_7476(0) /=  '0') else MUX_7506_wire;
    -- flow-through select operator MUX_7529_inst
    second_request_type_7530 <= dummy_request_type_7482 when (do_dummy_second_7476(0) /=  '0') else store_request_type_7284;
    -- flow-through select operator MUX_7535_inst
    second_asi_7536 <= dummy_asi_7490 when (do_dummy_second_7476(0) /=  '0') else store_asi_7290;
    -- flow-through select operator MUX_7541_inst
    second_byte_mask_7542 <= dummy_byte_mask_7486 when (do_dummy_second_7476(0) /=  '0') else dcache_byte_mask_7184;
    -- flow-through select operator MUX_7547_inst
    second_address_7548 <= dummy_address_7493 when (do_dummy_second_7476(0) /=  '0') else store_dword_addr_7296;
    -- flow-through select operator MUX_7553_inst
    second_write_data_7554 <= dummy_write_data_7497 when (do_dummy_second_7476(0) /=  '0') else store_write_data_7299;
    -- flow-through select operator MUX_7595_inst
    MUX_7595_wire <= first_is_store_7318 when (first_is_valid_7325(0) /=  '0') else konst_7594_wire_constant;
    -- flow-through select operator MUX_7599_inst
    MUX_7599_wire <= second_is_store_7513 when (second_is_valid_7524(0) /=  '0') else konst_7598_wire_constant;
    MUX_7641_inst_block : block -- 
      signal sample_req, sample_ack, update_req, update_ack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      sample_req(0) <= MUX_7641_inst_req_0;
      MUX_7641_inst_ack_0<= sample_ack(0);
      update_req(0) <= MUX_7641_inst_req_1;
      MUX_7641_inst_ack_1<= update_ack(0);
      MUX_7641_inst: SelectSplitProtocol generic map(name => "MUX_7641_inst", data_width => 32, buffering => 1, flow_through => false, full_rate => false) -- 
        port map( x => CONCAT_u8_u32_7639_wire, y => konst_7640_wire_constant, sel => store_was_issued_7601, z => store_signature_buffer, sample_req => sample_req(0), sample_ack => sample_ack(0), update_req => update_req(0), update_ack => update_ack(0), clk => clk, reset => reset); -- 
      -- 
    end block;
    -- flow-through slice operator slice_7119_inst
    special_request_mae_7120 <= special_request_response_7116(71 downto 64);
    -- flow-through slice operator slice_7132_inst
    a10_7133 <= addr_buffer(1 downto 0);
    -- flow-through slice operator slice_7383_inst
    first_mae_7384 <= first_read_response_7380(71 downto 64);
    -- flow-through slice operator slice_7387_inst
    first_read_data_7388 <= first_read_response_7380(63 downto 0);
    -- flow-through slice operator slice_7408_inst
    loaded_high_word_7409 <= loaded_word_7405(63 downto 32);
    -- flow-through slice operator slice_7415_inst
    slice_7415_wire <= loaded_word_7405(31 downto 0);
    -- flow-through slice operator slice_7424_inst
    slice_7424_wire <= loaded_low_word_7418(31 downto 24);
    -- flow-through slice operator slice_7431_inst
    slice_7431_wire <= loaded_low_word_7418(23 downto 16);
    -- flow-through slice operator slice_7439_inst
    slice_7439_wire <= loaded_low_word_7418(15 downto 8);
    -- flow-through slice operator slice_7446_inst
    slice_7446_wire <= loaded_low_word_7418(7 downto 0);
    -- flow-through slice operator slice_7565_inst
    second_mae_7566 <= second_read_response_7562(71 downto 64);
    -- flow-through slice operator slice_7607_inst
    wr_data_h_7608 <= store_write_data_7299(63 downto 32);
    -- flow-through slice operator slice_7611_inst
    wr_data_l_7612 <= store_write_data_7299(31 downto 0);
    -- flow-through slice operator slice_7631_inst
    slice_7631_wire <= store_asi_7290(4 downto 0);
    W_dout_h_7452_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_dout_h_7452_inst_req_0;
      W_dout_h_7452_inst_ack_0<= wack(0);
      rreq(0) <= W_dout_h_7452_inst_req_1;
      W_dout_h_7452_inst_ack_1<= rack(0);
      W_dout_h_7452_inst : InterlockBuffer generic map ( -- 
        name => "W_dout_h_7452_inst",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 32,
        out_data_width => 32,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => loaded_high_word_7409,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => dout_h_buffer,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    -- interlock W_dummy_address_7491_inst
    process(RPIPE_BROADCAST_INIT_PC_7492_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := RPIPE_BROADCAST_INIT_PC_7492_wire(31 downto 0);
      dummy_address_7493 <= tmp_var; -- 
    end process;
    -- interlock W_first_byte_mask_7348_inst
    process(dcache_byte_mask_7184) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 7 downto 0) := dcache_byte_mask_7184(7 downto 0);
      first_byte_mask_7350 <= tmp_var; -- 
    end process;
    -- interlock W_issue_write_mmu_fsr_request_7075_inst
    process(update_mmu_fsr_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := update_mmu_fsr_buffer(0 downto 0);
      issue_write_mmu_fsr_request_7077 <= tmp_var; -- 
    end process;
    -- interlock W_load_dword_addr_7203_inst
    process(dword_addr_7051) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := dword_addr_7051(31 downto 0);
      load_dword_addr_7205 <= tmp_var; -- 
    end process;
    -- interlock W_loaded_word_7403_inst
    process(first_read_data_7388) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 63 downto 0) := first_read_data_7388(63 downto 0);
      loaded_word_7405 <= tmp_var; -- 
    end process;
    -- interlock W_store_addr_7285_inst
    process(addr_buffer) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := addr_buffer(31 downto 0);
      store_addr_7287 <= tmp_var; -- 
    end process;
    -- interlock W_store_asi_7288_inst
    process(store_address_space_7252) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 7 downto 0) := store_address_space_7252(7 downto 0);
      store_asi_7290 <= tmp_var; -- 
    end process;
    -- interlock W_store_write_data_7297_inst
    process(dcache_wr_data_7274) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 63 downto 0) := dcache_wr_data_7274(63 downto 0);
      store_write_data_7299 <= tmp_var; -- 
    end process;
    -- interlock type_cast_7459_inst
    process(ext_byte_7451) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 7 downto 0) := ext_byte_7451(7 downto 0);
      type_cast_7459_wire <= tmp_var; -- 
    end process;
    -- interlock type_cast_7461_inst
    process(type_cast_7460_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := type_cast_7460_wire(31 downto 0);
      type_cast_7461_wire <= tmp_var; -- 
    end process;
    -- interlock type_cast_7463_inst
    process(ext_byte_7451) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 7 downto 0) := ext_byte_7451(7 downto 0);
      type_cast_7463_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator AND_u1_u1_7057_inst
    is_load_request_7058 <= (run_dti_buffer and OR_u1_u1_7056_wire);
    -- flow through binary operator AND_u1_u1_7064_inst
    is_store_request_7065 <= (run_dti_buffer and OR_u1_u1_7063_wire);
    -- flow through binary operator AND_u1_u1_7071_inst
    AND_u1_u1_7071_wire <= (NOT_u1_u1_7068_wire and NOT_u1_u1_7070_wire);
    -- flow through binary operator AND_u1_u1_7073_inst
    issue_untrap_request_7074 <= (AND_u1_u1_7071_wire and untrap_cache_buffer);
    -- flow through binary operator AND_u1_u1_7324_inst
    first_is_valid_7325 <= (special_request_ok_7129 and NEQ_u2_u1_7323_wire);
    -- flow through binary operator AND_u1_u1_7394_inst
    first_data_access_exception_7395 <= (first_is_valid_7325 and BITSEL_u8_u1_7393_wire);
    -- flow through binary operator AND_u1_u1_7401_inst
    first_data_access_error_7402 <= (first_is_valid_7325 and BITSEL_u8_u1_7400_wire);
    -- flow through binary operator AND_u1_u1_7471_inst
    AND_u1_u1_7471_wire <= (is_store_request_7065 and is_load_request_7058);
    -- flow through binary operator AND_u1_u1_7475_inst
    do_dummy_second_7476 <= (AND_u1_u1_7471_wire and OR_u1_u1_7474_wire);
    -- flow through binary operator AND_u1_u1_7503_inst
    AND_u1_u1_7503_wire <= (is_store_request_7065 and is_load_request_7058);
    -- flow through binary operator AND_u1_u1_7519_inst
    AND_u1_u1_7519_wire <= (second_is_store_7513 and NOT_u1_u1_7518_wire);
    -- flow through binary operator AND_u1_u1_7522_inst
    AND_u1_u1_7522_wire <= (AND_u1_u1_7519_wire and NOT_u1_u1_7521_wire);
    -- flow through binary operator AND_u1_u1_7572_inst
    second_data_access_exception_7573 <= (second_is_valid_7524 and BITSEL_u8_u1_7571_wire);
    -- flow through binary operator AND_u1_u1_7579_inst
    second_data_access_error_7580 <= (second_is_valid_7524 and BITSEL_u8_u1_7578_wire);
    -- flow through binary operator AND_u32_u32_7050_inst
    dword_addr_7051 <= (addr_buffer and NOT_u32_u32_7049_wire_constant);
    -- flow through binary operator AND_u32_u32_7295_inst
    store_dword_addr_7296 <= (store_addr_7287 and NOT_u32_u32_7294_wire_constant);
    -- flow through binary operator BITSEL_u32_u1_7176_inst
    process(addr_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(addr_buffer, konst_7175_wire_constant, tmp_var);
      BITSEL_u32_u1_7176_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u32_u1_7263_inst
    process(addr_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(addr_buffer, konst_7262_wire_constant, tmp_var);
      low_word_in_lower_half_7264 <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u32_u1_7413_inst
    process(addr_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(addr_buffer, konst_7412_wire_constant, tmp_var);
      BITSEL_u32_u1_7413_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u8_u1_7126_inst
    process(special_request_mae_7120) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(special_request_mae_7120, konst_7125_wire_constant, tmp_var);
      BITSEL_u8_u1_7126_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u8_u1_7393_inst
    process(first_mae_7384) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(first_mae_7384, konst_7392_wire_constant, tmp_var);
      BITSEL_u8_u1_7393_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u8_u1_7400_inst
    process(first_mae_7384) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(first_mae_7384, konst_7399_wire_constant, tmp_var);
      BITSEL_u8_u1_7400_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u8_u1_7571_inst
    process(second_mae_7566) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(second_mae_7566, konst_7570_wire_constant, tmp_var);
      BITSEL_u8_u1_7571_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u8_u1_7578_inst
    process(second_mae_7566) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(second_mae_7566, konst_7577_wire_constant, tmp_var);
      BITSEL_u8_u1_7578_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u14_u32_7096_inst
    process(R_ZERO_14_7094_wire_constant, mmu_fsr_buffer) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApConcat_proc(R_ZERO_14_7094_wire_constant, mmu_fsr_buffer, tmp_var);
      CONCAT_u14_u32_7096_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u16_u24_7638_inst
    process(CONCAT_u8_u16_7636_wire, wr_data_signature_7623) -- 
      variable tmp_var : std_logic_vector(23 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u8_u16_7636_wire, wr_data_signature_7623, tmp_var);
      CONCAT_u16_u24_7638_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_7197_inst
    process(untrap_cache_buffer, lock_bus_7030) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(untrap_cache_buffer, lock_bus_7030, tmp_var);
      CONCAT_u1_u2_7197_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_7279_inst
    process(untrap_cache_buffer) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(untrap_cache_buffer, type_cast_7278_wire_constant, tmp_var);
      CONCAT_u1_u2_7279_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_7628_inst
    process(store_was_issued_7601) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(store_was_issued_7601, R_ZERO_1_7627_wire_constant, tmp_var);
      CONCAT_u1_u2_7628_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u4_7086_inst
    process(untrap_cache_buffer) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(untrap_cache_buffer, R_ZERO_3_7085_wire_constant, tmp_var);
      CONCAT_u1_u4_7086_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u6_7632_inst
    process(R_ZERO_1_7629_wire_constant, slice_7631_wire) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(R_ZERO_1_7629_wire_constant, slice_7631_wire, tmp_var);
      CONCAT_u1_u6_7632_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u6_7200_inst
    process(cpu_id_2_buffer) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(cpu_id_2_buffer, R_REQUEST_TYPE_READ_7199_wire_constant, tmp_var);
      CONCAT_u2_u6_7200_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u6_7282_inst
    process(cpu_id_2_buffer) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(cpu_id_2_buffer, R_REQUEST_TYPE_WRITE_7281_wire_constant, tmp_var);
      CONCAT_u2_u6_7282_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u8_7201_inst
    process(CONCAT_u1_u2_7197_wire, CONCAT_u2_u6_7200_wire) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_7197_wire, CONCAT_u2_u6_7200_wire, tmp_var);
      load_request_type_7202 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u8_7283_inst
    process(CONCAT_u1_u2_7279_wire, CONCAT_u2_u6_7282_wire) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_7279_wire, CONCAT_u2_u6_7282_wire, tmp_var);
      store_request_type_7284 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u8_7633_inst
    process(CONCAT_u1_u2_7628_wire, CONCAT_u1_u6_7632_wire) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_7628_wire, CONCAT_u1_u6_7632_wire, tmp_var);
      CONCAT_u2_u8_7633_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u64_7098_inst
    process(CONCAT_u14_u32_7096_wire, pc_buffer) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u14_u32_7096_wire, pc_buffer, tmp_var);
      special_request_write_data_7099 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u64_7269_inst
    process(R_ZERO_32_7267_wire_constant, word_data_7259) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(R_ZERO_32_7267_wire_constant, word_data_7259, tmp_var);
      CONCAT_u32_u64_7269_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u64_7272_inst
    process(word_data_7259) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(word_data_7259, R_ZERO_32_7271_wire_constant, tmp_var);
      CONCAT_u32_u64_7272_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u8_7091_inst
    process(CONCAT_u1_u4_7086_wire, MUX_7090_wire) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u4_7086_wire, MUX_7090_wire, tmp_var);
      special_request_type_7092 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u8_7179_inst
    process(R_ZERO_4_7177_wire_constant, dcache_byte_mask_l_7172) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(R_ZERO_4_7177_wire_constant, dcache_byte_mask_l_7172, tmp_var);
      CONCAT_u4_u8_7179_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u8_7182_inst
    process(dcache_byte_mask_l_7172) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(dcache_byte_mask_l_7172, R_ZERO_4_7181_wire_constant, tmp_var);
      CONCAT_u4_u8_7182_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u8_u16_7636_inst
    process(dcache_byte_mask_7184, addr_signature_7604) -- 
      variable tmp_var : std_logic_vector(15 downto 0); -- 
    begin -- 
      ApConcat_proc(dcache_byte_mask_7184, addr_signature_7604, tmp_var);
      CONCAT_u8_u16_7636_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u8_u32_7639_inst
    process(CONCAT_u2_u8_7633_wire, CONCAT_u16_u24_7638_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u8_7633_wire, CONCAT_u16_u24_7638_wire, tmp_var);
      CONCAT_u8_u32_7639_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_7138_inst
    process(a10_7133) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(a10_7133, konst_7137_wire_constant, tmp_var);
      EQ_u2_u1_7138_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_7145_inst
    process(a10_7133) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(a10_7133, konst_7144_wire_constant, tmp_var);
      EQ_u2_u1_7145_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_7153_inst
    process(a10_7133) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(a10_7133, konst_7152_wire_constant, tmp_var);
      EQ_u2_u1_7153_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_7160_inst
    process(a10_7133) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(a10_7133, konst_7159_wire_constant, tmp_var);
      EQ_u2_u1_7160_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_7210_inst
    process(a10_7133) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(a10_7133, konst_7209_wire_constant, tmp_var);
      EQ_u2_u1_7210_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_7218_inst
    process(a10_7133) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(a10_7133, konst_7217_wire_constant, tmp_var);
      EQ_u2_u1_7218_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_7227_inst
    process(a10_7133) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(a10_7133, konst_7226_wire_constant, tmp_var);
      EQ_u2_u1_7227_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_7235_inst
    process(a10_7133) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(a10_7133, konst_7234_wire_constant, tmp_var);
      EQ_u2_u1_7235_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_7312_inst
    process(first_access_type_7308) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(first_access_type_7308, R_DTI_IS_LOAD_7311_wire_constant, tmp_var);
      first_is_load_7313 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_7317_inst
    process(first_access_type_7308) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(first_access_type_7308, R_DTI_IS_STORE_7316_wire_constant, tmp_var);
      first_is_store_7318 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_7422_inst
    process(a10_7133) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(a10_7133, konst_7421_wire_constant, tmp_var);
      EQ_u2_u1_7422_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_7429_inst
    process(a10_7133) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(a10_7133, konst_7428_wire_constant, tmp_var);
      EQ_u2_u1_7429_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_7437_inst
    process(a10_7133) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(a10_7133, konst_7436_wire_constant, tmp_var);
      EQ_u2_u1_7437_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_7444_inst
    process(a10_7133) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(a10_7133, konst_7443_wire_constant, tmp_var);
      EQ_u2_u1_7444_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_7512_inst
    process(second_access_type_7508) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(second_access_type_7508, R_DTI_IS_STORE_7511_wire_constant, tmp_var);
      second_is_store_7513 <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u2_u1_7323_inst
    process(first_access_type_7308) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(first_access_type_7308, konst_7322_wire_constant, tmp_var);
      NEQ_u2_u1_7323_wire <= tmp_var; --
    end process;
    -- unary operator NOT_u1_u1_7068_inst
    process(is_store_request_7065) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", is_store_request_7065, tmp_var);
      NOT_u1_u1_7068_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_7070_inst
    process(is_load_request_7058) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", is_load_request_7058, tmp_var);
      NOT_u1_u1_7070_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_7123_inst
    process(issue_special_store_7082) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", issue_special_store_7082, tmp_var);
      NOT_u1_u1_7123_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_7127_inst
    process(BITSEL_u8_u1_7126_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", BITSEL_u8_u1_7126_wire, tmp_var);
      NOT_u1_u1_7127_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_7518_inst
    process(first_data_access_exception_7395) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", first_data_access_exception_7395, tmp_var);
      NOT_u1_u1_7518_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_7521_inst
    process(first_data_access_error_7402) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", first_data_access_error_7402, tmp_var);
      NOT_u1_u1_7521_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator OR_u1_u1_7029_inst
    lock_bus_7030 <= (is_swap_buffer or is_atomic_ld_st_buffer);
    -- flow through binary operator OR_u1_u1_7056_inst
    OR_u1_u1_7056_wire <= (is_swap_buffer or is_atomic_ld_st_buffer);
    -- flow through binary operator OR_u1_u1_7063_inst
    OR_u1_u1_7063_wire <= (is_swap_buffer or is_atomic_ld_st_buffer);
    -- flow through binary operator OR_u1_u1_7081_inst
    issue_special_store_7082 <= (issue_untrap_request_7074 or issue_write_mmu_fsr_request_7077);
    -- flow through binary operator OR_u1_u1_7128_inst
    special_request_ok_7129 <= (NOT_u1_u1_7123_wire or NOT_u1_u1_7127_wire);
    -- flow through binary operator OR_u1_u1_7474_inst
    OR_u1_u1_7474_wire <= (first_data_access_exception_7395 or first_data_access_error_7402);
    -- flow through binary operator OR_u1_u1_7523_inst
    second_is_valid_7524 <= (do_dummy_second_7476 or AND_u1_u1_7522_wire);
    -- shared split operator group (73) : OR_u1_u1_7584_inst 
    ApIntOr_group_73: Block -- 
      signal data_in: std_logic_vector(1 downto 0);
      signal data_out: std_logic_vector(0 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      data_in <= first_data_access_exception_7395 & second_data_access_exception_7573;
      data_access_exception_buffer <= data_out(0 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= OR_u1_u1_7584_inst_req_0;
      OR_u1_u1_7584_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= OR_u1_u1_7584_inst_req_1;
      OR_u1_u1_7584_inst_ack_1 <= ackR_unguarded(0);
      ApIntOr_group_73_gI: SplitGuardInterface generic map(name => "ApIntOr_group_73_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
          operator_id => "ApIntOr",
          name => "ApIntOr_group_73",
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
          buffering  => 1,
          flow_through => false,
          full_rate  => false,
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
    end Block; -- split operator group 73
    -- shared split operator group (74) : OR_u1_u1_7589_inst 
    ApIntOr_group_74: Block -- 
      signal data_in: std_logic_vector(1 downto 0);
      signal data_out: std_logic_vector(0 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      data_in <= first_data_access_error_7402 & second_data_access_error_7580;
      data_access_error_buffer <= data_out(0 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= OR_u1_u1_7589_inst_req_0;
      OR_u1_u1_7589_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= OR_u1_u1_7589_inst_req_1;
      OR_u1_u1_7589_inst_ack_1 <= ackR_unguarded(0);
      ApIntOr_group_74_gI: SplitGuardInterface generic map(name => "ApIntOr_group_74_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
          operator_id => "ApIntOr",
          name => "ApIntOr_group_74",
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
          buffering  => 1,
          flow_through => false,
          full_rate  => false,
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
    end Block; -- split operator group 74
    -- flow through binary operator OR_u1_u1_7600_inst
    store_was_issued_7601 <= (MUX_7595_wire or MUX_7599_wire);
    -- flow through binary operator OR_u32_u32_7224_inst
    OR_u32_u32_7224_wire <= (MUX_7215_wire or MUX_7223_wire);
    -- flow through binary operator OR_u32_u32_7239_inst
    OR_u32_u32_7239_wire <= (MUX_7232_wire or MUX_7238_wire);
    -- flow through binary operator OR_u32_u32_7240_inst
    OR_u32_u32_7240_wire <= (OR_u32_u32_7224_wire or OR_u32_u32_7239_wire);
    -- flow through binary operator OR_u32_u32_7360_inst
    first_address_7361 <= (MUX_7355_wire or MUX_7359_wire);
    -- flow through binary operator OR_u4_u4_7150_inst
    OR_u4_u4_7150_wire <= (MUX_7142_wire or MUX_7149_wire);
    -- flow through binary operator OR_u4_u4_7165_inst
    OR_u4_u4_7165_wire <= (MUX_7157_wire or MUX_7164_wire);
    -- flow through binary operator OR_u4_u4_7166_inst
    OR_u4_u4_7166_wire <= (OR_u4_u4_7150_wire or OR_u4_u4_7165_wire);
    -- flow through binary operator OR_u64_u64_7371_inst
    first_write_data_7372 <= (MUX_7366_wire or MUX_7370_wire);
    -- flow through binary operator OR_u8_u8_7335_inst
    first_request_type_7336 <= (MUX_7330_wire or MUX_7334_wire);
    -- flow through binary operator OR_u8_u8_7346_inst
    first_asi_7347 <= (MUX_7341_wire or MUX_7345_wire);
    -- flow through binary operator OR_u8_u8_7434_inst
    OR_u8_u8_7434_wire <= (MUX_7426_wire or MUX_7433_wire);
    -- flow through binary operator OR_u8_u8_7449_inst
    OR_u8_u8_7449_wire <= (MUX_7441_wire or MUX_7448_wire);
    -- flow through binary operator OR_u8_u8_7450_inst
    ext_byte_7451 <= (OR_u8_u8_7434_wire or OR_u8_u8_7449_wire);
    -- flow through binary operator SHL_u32_u32_7213_inst
    process(din_l_buffer) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApIntSHL_proc(din_l_buffer, konst_7212_wire_constant, tmp_var);
      SHL_u32_u32_7213_wire <= tmp_var; --
    end process;
    -- flow through binary operator SHL_u32_u32_7221_inst
    process(din_l_buffer) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApIntSHL_proc(din_l_buffer, konst_7220_wire_constant, tmp_var);
      SHL_u32_u32_7221_wire <= tmp_var; --
    end process;
    -- flow through binary operator SHL_u32_u32_7230_inst
    process(din_l_buffer) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApIntSHL_proc(din_l_buffer, konst_7229_wire_constant, tmp_var);
      SHL_u32_u32_7230_wire <= tmp_var; --
    end process;
    -- flow through binary operator XOR_u8_u8_7622_inst
    wr_data_signature_7623 <= (din_h_signature_7615 xor din_l_signature_7618);
    -- unary operator type_cast_7460_inst
    process(type_cast_7459_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntToApIntSigned", type_cast_7459_wire, tmp_var);
      type_cast_7460_wire <= tmp_var; -- 
    end process;
    -- read from input-signal BROADCAST_INIT_PC
    RPIPE_BROADCAST_INIT_PC_7492_wire <= BROADCAST_INIT_PC;
    -- shared outport operator group (0) : WPIPE_messy_operation_completed_7643_inst 
    OutportGroup_0: Block -- 
      signal data_in: std_logic_vector(0 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_messy_operation_completed_7643_inst_req_0;
      WPIPE_messy_operation_completed_7643_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_messy_operation_completed_7643_inst_req_1;
      WPIPE_messy_operation_completed_7643_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= R_ONE_1_7644_wire_constant;
      messy_operation_completed_write_0_gI: SplitGuardInterface generic map(name => "messy_operation_completed_write_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      messy_operation_completed_write_0: OutputPortRevised -- 
        generic map ( name => "messy_operation_completed", data_width => 1, num_reqs => 1, input_buffering => inBUFs, full_rate => false,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => messy_operation_completed_pipe_write_req(0),
          oack => messy_operation_completed_pipe_write_ack(0),
          odata => messy_operation_completed_pipe_write_data(0 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    -- shared call operator group (0) : call_stmt_7562_call call_stmt_7116_call call_stmt_7380_call 
    dcache_access_call_group_0: Block -- 
      signal data_in: std_logic_vector(359 downto 0);
      signal data_out: std_logic_vector(215 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 2 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 2 downto 0);
      signal reqL_unregulated, ackL_unregulated : BooleanArray( 2 downto 0);
      signal guard_vector : std_logic_vector( 2 downto 0);
      constant inBUFs : IntegerArray(2 downto 0) := (2 => 1, 1 => 1, 0 => 1);
      constant outBUFs : IntegerArray(2 downto 0) := (2 => 1, 1 => 1, 0 => 1);
      constant guardFlags : BooleanArray(2 downto 0) := (0 => true, 1 => true, 2 => true);
      constant guardBuffering: IntegerArray(2 downto 0)  := (0 => 2, 1 => 2, 2 => 2);
      -- 
    begin -- 
      reqL_unguarded(2) <= call_stmt_7562_call_req_0;
      reqL_unguarded(1) <= call_stmt_7116_call_req_0;
      reqL_unguarded(0) <= call_stmt_7380_call_req_0;
      call_stmt_7562_call_ack_0 <= ackL_unguarded(2);
      call_stmt_7116_call_ack_0 <= ackL_unguarded(1);
      call_stmt_7380_call_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(2) <= call_stmt_7562_call_req_1;
      reqR_unguarded(1) <= call_stmt_7116_call_req_1;
      reqR_unguarded(0) <= call_stmt_7380_call_req_1;
      call_stmt_7562_call_ack_1 <= ackR_unguarded(2);
      call_stmt_7116_call_ack_1 <= ackR_unguarded(1);
      call_stmt_7380_call_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <= first_is_valid_7325(0);
      guard_vector(1)  <= issue_special_store_7082(0);
      guard_vector(2)  <= second_is_valid_7524(0);
      dcache_access_call_group_0_accessRegulator_0: access_regulator_base generic map (name => "dcache_access_call_group_0_accessRegulator_0", num_slots => 1) -- 
        port map (req => reqL_unregulated(0), -- 
          ack => ackL_unregulated(0),
          regulated_req => reqL(0),
          regulated_ack => ackL(0),
          release_req => reqR(0),
          release_ack => ackR(0),
          clk => clk, reset => reset); -- 
      dcache_access_call_group_0_accessRegulator_1: access_regulator_base generic map (name => "dcache_access_call_group_0_accessRegulator_1", num_slots => 1) -- 
        port map (req => reqL_unregulated(1), -- 
          ack => ackL_unregulated(1),
          regulated_req => reqL(1),
          regulated_ack => ackL(1),
          release_req => reqR(1),
          release_ack => ackR(1),
          clk => clk, reset => reset); -- 
      dcache_access_call_group_0_accessRegulator_2: access_regulator_base generic map (name => "dcache_access_call_group_0_accessRegulator_2", num_slots => 1) -- 
        port map (req => reqL_unregulated(2), -- 
          ack => ackL_unregulated(2),
          regulated_req => reqL(2),
          regulated_ack => ackL(2),
          release_req => reqR(2),
          release_ack => ackR(2),
          clk => clk, reset => reset); -- 
      dcache_access_call_group_0_gI: SplitGuardInterface generic map(name => "dcache_access_call_group_0_gI", nreqs => 3, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
      data_in <= second_request_type_7530 & second_asi_7536 & second_byte_mask_7542 & second_address_7548 & second_write_data_7554 & special_request_type_7092 & special_request_asi_7108 & special_request_byte_mask_7105 & special_request_address_7102 & special_request_write_data_7099 & first_request_type_7336 & first_asi_7347 & first_byte_mask_7350 & first_address_7361 & first_write_data_7372;
      second_read_response_7562 <= data_out(215 downto 144);
      special_request_response_7116 <= data_out(143 downto 72);
      first_read_response_7380 <= data_out(71 downto 0);
      CallReq: InputMuxWithBuffering -- 
        generic map (name => "InputMuxWithBuffering",
        iwidth => 360,
        owidth => 120,
        buffering => inBUFs,
        full_rate =>  false,
        twidth => 2,
        nreqs => 3,
        registered_output => false,
        no_arbitration => false)
        port map ( -- 
          reqL => reqL , 
          ackL => ackL , 
          dataL => data_in, 
          reqR => dcache_access_call_reqs(0),
          ackR => dcache_access_call_acks(0),
          dataR => dcache_access_call_data(119 downto 0),
          tagR => dcache_access_call_tag(1 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      CallComplete: OutputDemuxBaseWithBuffering -- 
        generic map ( -- 
          iwidth => 72,
          owidth => 216,
          detailed_buffering_per_output => outBUFs, 
          full_rate => false, 
          twidth => 2,
          name => "OutputDemuxBaseWithBuffering",
          nreqs => 3) -- 
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          dataR => data_out, 
          reqL => dcache_access_return_acks(0), -- cross-over
          ackL => dcache_access_return_reqs(0), -- cross-over
          dataL => dcache_access_return_data(71 downto 0),
          tagL => dcache_access_return_tag(1 downto 0),
          clk => clk,
          reset => reset -- 
        ); -- 
      -- 
    end Block; -- call group 0
    volatile_operator_signature_8_6428: signature_8_Volatile port map(A => store_addr_7287, AS => addr_signature_7604); 
    volatile_operator_signature_8_6431: signature_8_Volatile port map(A => wr_data_h_7608, AS => din_h_signature_7615); 
    volatile_operator_signature_8_6432: signature_8_Volatile port map(A => wr_data_l_7612, AS => din_l_signature_7618); 
    -- 
  end Block; -- data_path
  -- 
end execute_messy_dti_arch;
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
library teu_loadstore;
use teu_loadstore.loadstore_global_package.all;
entity load_store_daemon is -- 
  generic (tag_length : integer); 
  port ( -- 
    messy_operation_completed_pipe_read_req : out  std_logic_vector(0 downto 0);
    messy_operation_completed_pipe_read_ack : in   std_logic_vector(0 downto 0);
    messy_operation_completed_pipe_read_data : in   std_logic_vector(0 downto 0);
    noblock_teu_idispatch_to_loadstore_pipe_read_req : out  std_logic_vector(0 downto 0);
    noblock_teu_idispatch_to_loadstore_pipe_read_ack : in   std_logic_vector(0 downto 0);
    noblock_teu_idispatch_to_loadstore_pipe_read_data : in   std_logic_vector(125 downto 0);
    teu_fpunit_register_file_to_loadstore_pipe_read_req : out  std_logic_vector(0 downto 0);
    teu_fpunit_register_file_to_loadstore_pipe_read_ack : in   std_logic_vector(0 downto 0);
    teu_fpunit_register_file_to_loadstore_pipe_read_data : in   std_logic_vector(76 downto 0);
    teu_fpunit_trap_to_loadstore_pipe_read_req : out  std_logic_vector(0 downto 0);
    teu_fpunit_trap_to_loadstore_pipe_read_ack : in   std_logic_vector(0 downto 0);
    teu_fpunit_trap_to_loadstore_pipe_read_data : in   std_logic_vector(12 downto 0);
    teu_iunit_register_file_to_loadstore_pipe_read_req : out  std_logic_vector(0 downto 0);
    teu_iunit_register_file_to_loadstore_pipe_read_ack : in   std_logic_vector(0 downto 0);
    teu_iunit_register_file_to_loadstore_pipe_read_data : in   std_logic_vector(141 downto 0);
    teu_iunit_trap_to_loadstore_pipe_read_req : out  std_logic_vector(0 downto 0);
    teu_iunit_trap_to_loadstore_pipe_read_ack : in   std_logic_vector(0 downto 0);
    teu_iunit_trap_to_loadstore_pipe_read_data : in   std_logic_vector(0 downto 0);
    teu_stream_corrector_to_loadstore_pipe_read_req : out  std_logic_vector(0 downto 0);
    teu_stream_corrector_to_loadstore_pipe_read_ack : in   std_logic_vector(0 downto 0);
    teu_stream_corrector_to_loadstore_pipe_read_data : in   std_logic_vector(18 downto 0);
    THREAD_ID : in std_logic_vector(7 downto 0);
    debug_wp_0 : in std_logic_vector(31 downto 0);
    debug_wp_1 : in std_logic_vector(31 downto 0);
    debug_wp_2 : in std_logic_vector(31 downto 0);
    debug_wp_3 : in std_logic_vector(31 downto 0);
    NOBLOCK_CPU_to_DCACHE_command_pipe_write_req : out  std_logic_vector(0 downto 0);
    NOBLOCK_CPU_to_DCACHE_command_pipe_write_ack : in   std_logic_vector(0 downto 0);
    NOBLOCK_CPU_to_DCACHE_command_pipe_write_data : out  std_logic_vector(142 downto 0);
    load_store_messy_to_router_pipe_pipe_write_req : out  std_logic_vector(0 downto 0);
    load_store_messy_to_router_pipe_pipe_write_ack : in   std_logic_vector(0 downto 0);
    load_store_messy_to_router_pipe_pipe_write_data : out  std_logic_vector(97 downto 0);
    load_store_router_control_pipe_pipe_write_req : out  std_logic_vector(0 downto 0);
    load_store_router_control_pipe_pipe_write_ack : in   std_logic_vector(0 downto 0);
    load_store_router_control_pipe_pipe_write_data : out  std_logic_vector(96 downto 0);
    noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_req : out  std_logic_vector(0 downto 0);
    noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_ack : in   std_logic_vector(0 downto 0);
    noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_data : out  std_logic_vector(0 downto 0);
    noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_req : out  std_logic_vector(0 downto 0);
    noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_ack : in   std_logic_vector(0 downto 0);
    noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_data : out  std_logic_vector(0 downto 0);
    execute_messy_dti_call_reqs : out  std_logic_vector(0 downto 0);
    execute_messy_dti_call_acks : in   std_logic_vector(0 downto 0);
    execute_messy_dti_call_data : out  std_logic_vector(163 downto 0);
    execute_messy_dti_call_tag  :  out  std_logic_vector(0 downto 0);
    execute_messy_dti_return_reqs : out  std_logic_vector(0 downto 0);
    execute_messy_dti_return_acks : in   std_logic_vector(0 downto 0);
    execute_messy_dti_return_data : in   std_logic_vector(97 downto 0);
    execute_messy_dti_return_tag :  in   std_logic_vector(0 downto 0);
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
end entity load_store_daemon;
architecture load_store_daemon_arch of load_store_daemon is -- 
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
  signal load_store_daemon_CP_356_start: Boolean;
  signal load_store_daemon_CP_356_symbol: Boolean;
  -- volatile/operator module components. 
  component decode_dti_ispec_Volatile is -- 
    port ( -- 
      ispec : in  std_logic_vector(23 downto 0);
      is_load : out  std_logic_vector(0 downto 0);
      is_store : out  std_logic_vector(0 downto 0);
      is_atomic_ldstub : out  std_logic_vector(0 downto 0);
      is_swap : out  std_logic_vector(0 downto 0);
      S : out  std_logic_vector(0 downto 0);
      U : out  std_logic_vector(0 downto 0);
      FP : out  std_logic_vector(0 downto 0);
      byte : out  std_logic_vector(0 downto 0);
      half_word : out  std_logic_vector(0 downto 0);
      word : out  std_logic_vector(0 downto 0);
      double_word : out  std_logic_vector(0 downto 0);
      is_fp_access : out  std_logic_vector(0 downto 0);
      is_cp_access : out  std_logic_vector(0 downto 0);
      is_fp_cp_sr_access : out  std_logic_vector(0 downto 0);
      is_fp_cp_q_access : out  std_logic_vector(0 downto 0);
      asi_bit : out  std_logic_vector(0 downto 0);
      asi_id_8 : out  std_logic_vector(7 downto 0)-- 
    );
    -- 
  end component; 
  component classify_load_store_operation_Volatile is -- 
    port ( -- 
      untrap_cache : in  std_logic_vector(0 downto 0);
      update_mmu_fsr : in  std_logic_vector(0 downto 0);
      is_load : in  std_logic_vector(0 downto 0);
      is_store : in  std_logic_vector(0 downto 0);
      is_swap : in  std_logic_vector(0 downto 0);
      is_atomic_ld_st : in  std_logic_vector(0 downto 0);
      run_flush : in  std_logic_vector(0 downto 0);
      is_simple_load_store : out  std_logic_vector(0 downto 0);
      is_messy_load_store : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  component debug_calculate_debug_wp_hits_Volatile is -- 
    port ( -- 
      is_load : in  std_logic_vector(0 downto 0);
      is_store : in  std_logic_vector(0 downto 0);
      wp0_in : in  std_logic_vector(31 downto 0);
      wp1_in : in  std_logic_vector(31 downto 0);
      wp2_in : in  std_logic_vector(31 downto 0);
      wp3_in : in  std_logic_vector(31 downto 0);
      addr_from_iunit : in  std_logic_vector(31 downto 0);
      debug_wp_reg_id : out  std_logic_vector(1 downto 0);
      read_debug_wp_hit : out  std_logic_vector(0 downto 0);
      write_debug_wp_hit : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  component execute_messy_dti is -- 
    generic (tag_length : integer); 
    port ( -- 
      cpu_id_2 : in  std_logic_vector(1 downto 0);
      run_dti : in  std_logic_vector(0 downto 0);
      untrap_cache : in  std_logic_vector(0 downto 0);
      update_mmu_fsr : in  std_logic_vector(0 downto 0);
      addr : in  std_logic_vector(31 downto 0);
      din_h : in  std_logic_vector(31 downto 0);
      din_l : in  std_logic_vector(31 downto 0);
      pc : in  std_logic_vector(31 downto 0);
      mmu_fsr : in  std_logic_vector(17 downto 0);
      is_swap : in  std_logic_vector(0 downto 0);
      is_atomic_ld_st : in  std_logic_vector(0 downto 0);
      signed_type : in  std_logic_vector(0 downto 0);
      use_asi : in  std_logic_vector(0 downto 0);
      asi : in  std_logic_vector(7 downto 0);
      S : in  std_logic_vector(0 downto 0);
      dout_h : out  std_logic_vector(31 downto 0);
      dout_l : out  std_logic_vector(31 downto 0);
      data_access_exception : out  std_logic_vector(0 downto 0);
      data_access_error : out  std_logic_vector(0 downto 0);
      store_signature : out  std_logic_vector(31 downto 0);
      BROADCAST_INIT_PC : in std_logic_vector(31 downto 0);
      messy_operation_completed_pipe_write_req : out  std_logic_vector(0 downto 0);
      messy_operation_completed_pipe_write_ack : in   std_logic_vector(0 downto 0);
      messy_operation_completed_pipe_write_data : out  std_logic_vector(0 downto 0);
      dcache_access_call_reqs : out  std_logic_vector(0 downto 0);
      dcache_access_call_acks : in   std_logic_vector(0 downto 0);
      dcache_access_call_data : out  std_logic_vector(119 downto 0);
      dcache_access_call_tag  :  out  std_logic_vector(1 downto 0);
      dcache_access_return_reqs : out  std_logic_vector(0 downto 0);
      dcache_access_return_acks : in   std_logic_vector(0 downto 0);
      dcache_access_return_data : in   std_logic_vector(71 downto 0);
      dcache_access_return_tag :  in   std_logic_vector(1 downto 0);
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
  component writeback_fsm_Volatile is -- 
    port ( -- 
      wb_state : in  std_logic_vector(1 downto 0);
      valid_bit : in  std_logic_vector(0 downto 0);
      thread_head : in  std_logic_vector(0 downto 0);
      stream_head : in  std_logic_vector(0 downto 0);
      break_thread : in  std_logic_vector(0 downto 0);
      terminate_thread : in  std_logic_vector(0 downto 0);
      kill_thread_now : in  std_logic_vector(0 downto 0);
      break_stream : in  std_logic_vector(0 downto 0);
      next_wb_state : out  std_logic_vector(1 downto 0);
      instr_can_execute : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  component prepare_simple_dcache_command_Volatile is -- 
    port ( -- 
      cpu_id_2 : in  std_logic_vector(1 downto 0);
      untrap_cache : in  std_logic_vector(0 downto 0);
      addr : in  std_logic_vector(31 downto 0);
      din_h : in  std_logic_vector(31 downto 0);
      din_l : in  std_logic_vector(31 downto 0);
      pc : in  std_logic_vector(31 downto 0);
      is_load : in  std_logic_vector(0 downto 0);
      is_store : in  std_logic_vector(0 downto 0);
      signed_type : in  std_logic_vector(0 downto 0);
      unsigned_type : in  std_logic_vector(0 downto 0);
      fp_type : in  std_logic_vector(0 downto 0);
      byte : in  std_logic_vector(0 downto 0);
      half_word : in  std_logic_vector(0 downto 0);
      word : in  std_logic_vector(0 downto 0);
      double_word : in  std_logic_vector(0 downto 0);
      use_asi : in  std_logic_vector(0 downto 0);
      asi : in  std_logic_vector(7 downto 0);
      is_flush : in  std_logic_vector(0 downto 0);
      S : in  std_logic_vector(0 downto 0);
      dcache_request_type : out  std_logic_vector(7 downto 0);
      dcache_asi : out  std_logic_vector(7 downto 0);
      dcache_byte_mask : out  std_logic_vector(7 downto 0);
      dcache_address : out  std_logic_vector(31 downto 0);
      dcache_write_data : out  std_logic_vector(63 downto 0);
      store_signature : out  std_logic_vector(31 downto 0)-- 
    );
    -- 
  end component; 
  -- links between control-path and data-path
  signal RPIPE_teu_iunit_register_file_to_loadstore_8268_inst_req_0 : boolean;
  signal phi_stmt_8279_req_0 : boolean;
  signal RPIPE_teu_iunit_trap_to_loadstore_8273_inst_req_1 : boolean;
  signal phi_stmt_8279_req_1 : boolean;
  signal phi_stmt_8269_ack_0 : boolean;
  signal RPIPE_teu_iunit_register_file_to_loadstore_8268_inst_req_1 : boolean;
  signal phi_stmt_8274_req_0 : boolean;
  signal RPIPE_teu_iunit_register_file_to_loadstore_8268_inst_ack_0 : boolean;
  signal phi_stmt_8269_req_0 : boolean;
  signal RPIPE_teu_fpunit_register_file_to_loadstore_8278_inst_req_0 : boolean;
  signal phi_stmt_8274_req_1 : boolean;
  signal phi_stmt_8269_req_1 : boolean;
  signal RPIPE_teu_iunit_trap_to_loadstore_8273_inst_ack_1 : boolean;
  signal RPIPE_teu_iunit_trap_to_loadstore_8273_inst_req_0 : boolean;
  signal RPIPE_teu_fpunit_trap_to_loadstore_8283_inst_ack_0 : boolean;
  signal RPIPE_teu_iunit_trap_to_loadstore_8273_inst_ack_0 : boolean;
  signal RPIPE_teu_fpunit_register_file_to_loadstore_8278_inst_ack_0 : boolean;
  signal RPIPE_teu_fpunit_trap_to_loadstore_8283_inst_req_0 : boolean;
  signal RPIPE_noblock_teu_idispatch_to_loadstore_8287_inst_req_1 : boolean;
  signal phi_stmt_8284_req_1 : boolean;
  signal RPIPE_teu_fpunit_register_file_to_loadstore_8278_inst_req_1 : boolean;
  signal RPIPE_teu_iunit_register_file_to_loadstore_8268_inst_ack_1 : boolean;
  signal phi_stmt_8279_ack_0 : boolean;
  signal phi_stmt_8274_ack_0 : boolean;
  signal RPIPE_teu_fpunit_register_file_to_loadstore_8278_inst_ack_1 : boolean;
  signal phi_stmt_8284_req_0 : boolean;
  signal RPIPE_noblock_teu_idispatch_to_loadstore_8287_inst_ack_1 : boolean;
  signal phi_stmt_8288_req_1 : boolean;
  signal RPIPE_teu_fpunit_trap_to_loadstore_8283_inst_req_1 : boolean;
  signal phi_stmt_8284_ack_0 : boolean;
  signal RPIPE_noblock_teu_idispatch_to_loadstore_8287_inst_req_0 : boolean;
  signal RPIPE_noblock_teu_idispatch_to_loadstore_8287_inst_ack_0 : boolean;
  signal phi_stmt_8288_ack_0 : boolean;
  signal phi_stmt_8288_req_0 : boolean;
  signal RPIPE_teu_fpunit_trap_to_loadstore_8283_inst_ack_1 : boolean;
  signal do_while_stmt_8257_branch_req_0 : boolean;
  signal phi_stmt_8259_req_1 : boolean;
  signal phi_stmt_8259_req_0 : boolean;
  signal phi_stmt_8259_ack_0 : boolean;
  signal RPIPE_teu_stream_corrector_to_loadstore_8263_inst_req_0 : boolean;
  signal RPIPE_teu_stream_corrector_to_loadstore_8263_inst_ack_0 : boolean;
  signal RPIPE_teu_stream_corrector_to_loadstore_8263_inst_req_1 : boolean;
  signal RPIPE_teu_stream_corrector_to_loadstore_8263_inst_ack_1 : boolean;
  signal phi_stmt_8264_req_1 : boolean;
  signal phi_stmt_8264_req_0 : boolean;
  signal phi_stmt_8264_ack_0 : boolean;
  signal next_CIRCULANT_9471_8291_buf_req_0 : boolean;
  signal next_CIRCULANT_9471_8291_buf_ack_0 : boolean;
  signal next_CIRCULANT_9471_8291_buf_req_1 : boolean;
  signal next_CIRCULANT_9471_8291_buf_ack_1 : boolean;
  signal phi_stmt_8292_req_1 : boolean;
  signal phi_stmt_8292_req_0 : boolean;
  signal phi_stmt_8292_ack_0 : boolean;
  signal RPIPE_messy_operation_completed_8296_inst_req_0 : boolean;
  signal RPIPE_messy_operation_completed_8296_inst_ack_0 : boolean;
  signal RPIPE_messy_operation_completed_8296_inst_req_1 : boolean;
  signal RPIPE_messy_operation_completed_8296_inst_ack_1 : boolean;
  signal RPIPE_THREAD_ID_8299_wire_8299_buf_req_0 : boolean;
  signal RPIPE_THREAD_ID_8299_wire_8299_buf_ack_0 : boolean;
  signal RPIPE_THREAD_ID_8299_wire_8299_buf_req_1 : boolean;
  signal RPIPE_THREAD_ID_8299_wire_8299_buf_ack_1 : boolean;
  signal WPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_8681_inst_req_0 : boolean;
  signal WPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_8681_inst_ack_0 : boolean;
  signal WPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_8681_inst_req_1 : boolean;
  signal WPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_8681_inst_ack_1 : boolean;
  signal WPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_8762_inst_req_0 : boolean;
  signal WPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_8762_inst_ack_0 : boolean;
  signal WPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_8762_inst_req_1 : boolean;
  signal WPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_8762_inst_ack_1 : boolean;
  signal call_stmt_9243_call_req_0 : boolean;
  signal call_stmt_9243_call_ack_0 : boolean;
  signal call_stmt_9243_call_req_1 : boolean;
  signal call_stmt_9243_call_ack_1 : boolean;
  signal W_run_messy_load_store_op_qualified_9527_delayed_3_0_9255_inst_req_0 : boolean;
  signal W_run_messy_load_store_op_qualified_9527_delayed_3_0_9255_inst_ack_0 : boolean;
  signal W_run_messy_load_store_op_qualified_9527_delayed_3_0_9255_inst_req_1 : boolean;
  signal W_run_messy_load_store_op_qualified_9527_delayed_3_0_9255_inst_ack_1 : boolean;
  signal WPIPE_load_store_messy_to_router_pipe_9259_inst_req_0 : boolean;
  signal WPIPE_load_store_messy_to_router_pipe_9259_inst_ack_0 : boolean;
  signal WPIPE_load_store_messy_to_router_pipe_9259_inst_req_1 : boolean;
  signal WPIPE_load_store_messy_to_router_pipe_9259_inst_ack_1 : boolean;
  signal WPIPE_NOBLOCK_CPU_to_DCACHE_command_9370_inst_req_0 : boolean;
  signal WPIPE_NOBLOCK_CPU_to_DCACHE_command_9370_inst_ack_0 : boolean;
  signal WPIPE_NOBLOCK_CPU_to_DCACHE_command_9370_inst_req_1 : boolean;
  signal WPIPE_NOBLOCK_CPU_to_DCACHE_command_9370_inst_ack_1 : boolean;
  signal WPIPE_load_store_router_control_pipe_9436_inst_req_0 : boolean;
  signal WPIPE_load_store_router_control_pipe_9436_inst_ack_0 : boolean;
  signal WPIPE_load_store_router_control_pipe_9436_inst_req_1 : boolean;
  signal WPIPE_load_store_router_control_pipe_9436_inst_ack_1 : boolean;
  signal do_while_stmt_8257_branch_ack_0 : boolean;
  signal do_while_stmt_8257_branch_ack_1 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "load_store_daemon_input_buffer", -- 
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
  load_store_daemon_CP_356_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "load_store_daemon_out_buffer", -- 
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
    preds <= load_store_daemon_CP_356_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
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
    preds <= load_store_daemon_CP_356_start & tag_ilock_write_ack_symbol;
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
    preds <= load_store_daemon_CP_356_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  load_store_daemon_CP_356: Block -- control-path 
    signal load_store_daemon_CP_356_elements: BooleanArray(212 downto 0);
    -- 
  begin -- 
    load_store_daemon_CP_356_elements(0) <= load_store_daemon_CP_356_start;
    load_store_daemon_CP_356_symbol <= load_store_daemon_CP_356_elements(1);
    -- CP-element group 0:  transition  place  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	2 
    -- CP-element group 0:  members (4) 
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 branch_block_stmt_8256/$entry
      -- CP-element group 0: 	 branch_block_stmt_8256/branch_block_stmt_8256__entry__
      -- CP-element group 0: 	 branch_block_stmt_8256/do_while_stmt_8257__entry__
      -- 
    -- CP-element group 1:  transition  place  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	212 
    -- CP-element group 1: successors 
    -- CP-element group 1:  members (4) 
      -- CP-element group 1: 	 $exit
      -- CP-element group 1: 	 branch_block_stmt_8256/$exit
      -- CP-element group 1: 	 branch_block_stmt_8256/branch_block_stmt_8256__exit__
      -- CP-element group 1: 	 branch_block_stmt_8256/do_while_stmt_8257__exit__
      -- 
    load_store_daemon_CP_356_elements(1) <= load_store_daemon_CP_356_elements(212);
    -- CP-element group 2:  transition  place  bypass  pipeline-parent 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	0 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	8 
    -- CP-element group 2:  members (2) 
      -- CP-element group 2: 	 branch_block_stmt_8256/do_while_stmt_8257/$entry
      -- CP-element group 2: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257__entry__
      -- 
    load_store_daemon_CP_356_elements(2) <= load_store_daemon_CP_356_elements(0);
    -- CP-element group 3:  merge  place  bypass  pipeline-parent 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	212 
    -- CP-element group 3:  members (1) 
      -- CP-element group 3: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257__exit__
      -- 
    -- Element group load_store_daemon_CP_356_elements(3) is bound as output of CP function.
    -- CP-element group 4:  merge  place  bypass  pipeline-parent 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	7 
    -- CP-element group 4:  members (1) 
      -- CP-element group 4: 	 branch_block_stmt_8256/do_while_stmt_8257/loop_back
      -- 
    -- Element group load_store_daemon_CP_356_elements(4) is bound as output of CP function.
    -- CP-element group 5:  branch  transition  place  bypass  pipeline-parent 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	10 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	210 
    -- CP-element group 5: 	211 
    -- CP-element group 5:  members (3) 
      -- CP-element group 5: 	 branch_block_stmt_8256/do_while_stmt_8257/condition_done
      -- CP-element group 5: 	 branch_block_stmt_8256/do_while_stmt_8257/loop_exit/$entry
      -- CP-element group 5: 	 branch_block_stmt_8256/do_while_stmt_8257/loop_taken/$entry
      -- 
    load_store_daemon_CP_356_elements(5) <= load_store_daemon_CP_356_elements(10);
    -- CP-element group 6:  branch  place  bypass  pipeline-parent 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	209 
    -- CP-element group 6: successors 
    -- CP-element group 6:  members (1) 
      -- CP-element group 6: 	 branch_block_stmt_8256/do_while_stmt_8257/loop_body_done
      -- 
    load_store_daemon_CP_356_elements(6) <= load_store_daemon_CP_356_elements(209);
    -- CP-element group 7:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	4 
    -- CP-element group 7: successors 
    -- CP-element group 7: 	20 
    -- CP-element group 7: 	41 
    -- CP-element group 7: 	165 
    -- CP-element group 7: 	62 
    -- CP-element group 7: 	83 
    -- CP-element group 7: 	104 
    -- CP-element group 7: 	125 
    -- CP-element group 7: 	146 
    -- CP-element group 7:  members (1) 
      -- CP-element group 7: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/back_edge_to_loop_body
      -- 
    load_store_daemon_CP_356_elements(7) <= load_store_daemon_CP_356_elements(4);
    -- CP-element group 8:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	2 
    -- CP-element group 8: successors 
    -- CP-element group 8: 	148 
    -- CP-element group 8: 	22 
    -- CP-element group 8: 	43 
    -- CP-element group 8: 	167 
    -- CP-element group 8: 	64 
    -- CP-element group 8: 	85 
    -- CP-element group 8: 	106 
    -- CP-element group 8: 	127 
    -- CP-element group 8:  members (1) 
      -- CP-element group 8: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/first_time_through_loop_body
      -- 
    load_store_daemon_CP_356_elements(8) <= load_store_daemon_CP_356_elements(2);
    -- CP-element group 9:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	11 
    -- CP-element group 9: 	16 
    -- CP-element group 9: 	17 
    -- CP-element group 9: 	35 
    -- CP-element group 9: 	36 
    -- CP-element group 9: 	208 
    -- CP-element group 9: 	159 
    -- CP-element group 9: 	160 
    -- CP-element group 9: 	180 
    -- CP-element group 9: 	56 
    -- CP-element group 9: 	57 
    -- CP-element group 9: 	77 
    -- CP-element group 9: 	78 
    -- CP-element group 9: 	98 
    -- CP-element group 9: 	99 
    -- CP-element group 9: 	119 
    -- CP-element group 9: 	120 
    -- CP-element group 9: 	140 
    -- CP-element group 9: 	141 
    -- CP-element group 9:  members (3) 
      -- CP-element group 9: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/$entry
      -- CP-element group 9: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/loop_body_start
      -- CP-element group 9: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8297_sample_start_
      -- 
    -- Element group load_store_daemon_CP_356_elements(9) is bound as output of CP function.
    -- CP-element group 10:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	13 
    -- CP-element group 10: 	15 
    -- CP-element group 10: 	208 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	5 
    -- CP-element group 10:  members (1) 
      -- CP-element group 10: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/condition_evaluated
      -- 
    condition_evaluated_380_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " condition_evaluated_380_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(10), ack => do_while_stmt_8257_branch_req_0); -- 
    load_store_daemon_cp_element_group_10: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 37) := "load_store_daemon_cp_element_group_10"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(13) & load_store_daemon_CP_356_elements(15) & load_store_daemon_CP_356_elements(208);
      gj_load_store_daemon_cp_element_group_10 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(10), clk => clk, reset => reset); --
    end block;
    -- CP-element group 11:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	9 
    -- CP-element group 11: 	16 
    -- CP-element group 11: 	35 
    -- CP-element group 11: 	159 
    -- CP-element group 11: 	56 
    -- CP-element group 11: 	77 
    -- CP-element group 11: 	98 
    -- CP-element group 11: 	119 
    -- CP-element group 11: 	140 
    -- CP-element group 11: marked-predecessors 
    -- CP-element group 11: 	15 
    -- CP-element group 11: successors 
    -- CP-element group 11: 	37 
    -- CP-element group 11: 	181 
    -- CP-element group 11: 	161 
    -- CP-element group 11: 	58 
    -- CP-element group 11: 	79 
    -- CP-element group 11: 	100 
    -- CP-element group 11: 	121 
    -- CP-element group 11: 	142 
    -- CP-element group 11:  members (2) 
      -- CP-element group 11: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/aggregated_phi_sample_req
      -- CP-element group 11: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8259_sample_start__ps
      -- 
    load_store_daemon_cp_element_group_11: block -- 
      constant place_capacities: IntegerArray(0 to 9) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1);
      constant place_markings: IntegerArray(0 to 9)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 1);
      constant place_delays: IntegerArray(0 to 9) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0);
      constant joinName: string(1 to 37) := "load_store_daemon_cp_element_group_11"; 
      signal preds: BooleanArray(1 to 10); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(9) & load_store_daemon_CP_356_elements(16) & load_store_daemon_CP_356_elements(35) & load_store_daemon_CP_356_elements(159) & load_store_daemon_CP_356_elements(56) & load_store_daemon_CP_356_elements(77) & load_store_daemon_CP_356_elements(98) & load_store_daemon_CP_356_elements(119) & load_store_daemon_CP_356_elements(140) & load_store_daemon_CP_356_elements(15);
      gj_load_store_daemon_cp_element_group_11 : generic_join generic map(name => joinName, number_of_predecessors => 10, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(11), clk => clk, reset => reset); --
    end block;
    -- CP-element group 12:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	18 
    -- CP-element group 12: 	38 
    -- CP-element group 12: 	183 
    -- CP-element group 12: 	162 
    -- CP-element group 12: 	59 
    -- CP-element group 12: 	80 
    -- CP-element group 12: 	101 
    -- CP-element group 12: 	122 
    -- CP-element group 12: 	143 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	13 
    -- CP-element group 12: 	209 
    -- CP-element group 12: marked-successors 
    -- CP-element group 12: 	16 
    -- CP-element group 12: 	35 
    -- CP-element group 12: 	159 
    -- CP-element group 12: 	56 
    -- CP-element group 12: 	77 
    -- CP-element group 12: 	98 
    -- CP-element group 12: 	119 
    -- CP-element group 12: 	140 
    -- CP-element group 12:  members (10) 
      -- CP-element group 12: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8274_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8269_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8284_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8279_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8288_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/aggregated_phi_sample_ack
      -- CP-element group 12: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8259_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8264_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8292_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8297_sample_completed_
      -- 
    load_store_daemon_cp_element_group_12: block -- 
      constant place_capacities: IntegerArray(0 to 8) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1);
      constant place_markings: IntegerArray(0 to 8)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0);
      constant place_delays: IntegerArray(0 to 8) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0);
      constant joinName: string(1 to 37) := "load_store_daemon_cp_element_group_12"; 
      signal preds: BooleanArray(1 to 9); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(18) & load_store_daemon_CP_356_elements(38) & load_store_daemon_CP_356_elements(183) & load_store_daemon_CP_356_elements(162) & load_store_daemon_CP_356_elements(59) & load_store_daemon_CP_356_elements(80) & load_store_daemon_CP_356_elements(101) & load_store_daemon_CP_356_elements(122) & load_store_daemon_CP_356_elements(143);
      gj_load_store_daemon_cp_element_group_12 : generic_join generic map(name => joinName, number_of_predecessors => 9, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(12), clk => clk, reset => reset); --
    end block;
    -- CP-element group 13:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: 	12 
    -- CP-element group 13: successors 
    -- CP-element group 13: 	10 
    -- CP-element group 13:  members (1) 
      -- CP-element group 13: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/aggregated_phi_sample_ack_d
      -- 
    -- Element group load_store_daemon_CP_356_elements(13) is a control-delay.
    cp_element_13_delay: control_delay_element  generic map(name => " 13_delay", delay_value => 1)  port map(req => load_store_daemon_CP_356_elements(12), ack => load_store_daemon_CP_356_elements(13), clk => clk, reset =>reset);
    -- CP-element group 14:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: 	17 
    -- CP-element group 14: 	36 
    -- CP-element group 14: 	160 
    -- CP-element group 14: 	180 
    -- CP-element group 14: 	57 
    -- CP-element group 14: 	78 
    -- CP-element group 14: 	99 
    -- CP-element group 14: 	120 
    -- CP-element group 14: 	141 
    -- CP-element group 14: successors 
    -- CP-element group 14: 	39 
    -- CP-element group 14: 	182 
    -- CP-element group 14: 	163 
    -- CP-element group 14: 	60 
    -- CP-element group 14: 	81 
    -- CP-element group 14: 	102 
    -- CP-element group 14: 	123 
    -- CP-element group 14: 	144 
    -- CP-element group 14:  members (2) 
      -- CP-element group 14: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/aggregated_phi_update_req
      -- CP-element group 14: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8259_update_start__ps
      -- 
    load_store_daemon_cp_element_group_14: block -- 
      constant place_capacities: IntegerArray(0 to 8) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1);
      constant place_markings: IntegerArray(0 to 8)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0);
      constant place_delays: IntegerArray(0 to 8) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0);
      constant joinName: string(1 to 37) := "load_store_daemon_cp_element_group_14"; 
      signal preds: BooleanArray(1 to 9); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(17) & load_store_daemon_CP_356_elements(36) & load_store_daemon_CP_356_elements(160) & load_store_daemon_CP_356_elements(180) & load_store_daemon_CP_356_elements(57) & load_store_daemon_CP_356_elements(78) & load_store_daemon_CP_356_elements(99) & load_store_daemon_CP_356_elements(120) & load_store_daemon_CP_356_elements(141);
      gj_load_store_daemon_cp_element_group_14 : generic_join generic map(name => joinName, number_of_predecessors => 9, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(14), clk => clk, reset => reset); --
    end block;
    -- CP-element group 15:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: 	19 
    -- CP-element group 15: 	40 
    -- CP-element group 15: 	184 
    -- CP-element group 15: 	164 
    -- CP-element group 15: 	61 
    -- CP-element group 15: 	82 
    -- CP-element group 15: 	103 
    -- CP-element group 15: 	124 
    -- CP-element group 15: 	145 
    -- CP-element group 15: successors 
    -- CP-element group 15: 	10 
    -- CP-element group 15: marked-successors 
    -- CP-element group 15: 	11 
    -- CP-element group 15:  members (1) 
      -- CP-element group 15: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/aggregated_phi_update_ack
      -- 
    load_store_daemon_cp_element_group_15: block -- 
      constant place_capacities: IntegerArray(0 to 8) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1);
      constant place_markings: IntegerArray(0 to 8)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0);
      constant place_delays: IntegerArray(0 to 8) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0);
      constant joinName: string(1 to 37) := "load_store_daemon_cp_element_group_15"; 
      signal preds: BooleanArray(1 to 9); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(19) & load_store_daemon_CP_356_elements(40) & load_store_daemon_CP_356_elements(184) & load_store_daemon_CP_356_elements(164) & load_store_daemon_CP_356_elements(61) & load_store_daemon_CP_356_elements(82) & load_store_daemon_CP_356_elements(103) & load_store_daemon_CP_356_elements(124) & load_store_daemon_CP_356_elements(145);
      gj_load_store_daemon_cp_element_group_15 : generic_join generic map(name => joinName, number_of_predecessors => 9, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(15), clk => clk, reset => reset); --
    end block;
    -- CP-element group 16:  join  transition  bypass  pipeline-parent 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: 	9 
    -- CP-element group 16: marked-predecessors 
    -- CP-element group 16: 	12 
    -- CP-element group 16: successors 
    -- CP-element group 16: 	11 
    -- CP-element group 16:  members (1) 
      -- CP-element group 16: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8259_sample_start_
      -- 
    load_store_daemon_cp_element_group_16: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 37) := "load_store_daemon_cp_element_group_16"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(9) & load_store_daemon_CP_356_elements(12);
      gj_load_store_daemon_cp_element_group_16 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(16), clk => clk, reset => reset); --
    end block;
    -- CP-element group 17:  join  transition  bypass  pipeline-parent 
    -- CP-element group 17: predecessors 
    -- CP-element group 17: 	9 
    -- CP-element group 17: marked-predecessors 
    -- CP-element group 17: 	197 
    -- CP-element group 17: 	203 
    -- CP-element group 17: 	206 
    -- CP-element group 17: 	193 
    -- CP-element group 17: successors 
    -- CP-element group 17: 	14 
    -- CP-element group 17:  members (1) 
      -- CP-element group 17: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8259_update_start_
      -- 
    load_store_daemon_cp_element_group_17: block -- 
      constant place_capacities: IntegerArray(0 to 4) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1);
      constant place_markings: IntegerArray(0 to 4)  := (0 => 0,1 => 1,2 => 1,3 => 1,4 => 1);
      constant place_delays: IntegerArray(0 to 4) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0);
      constant joinName: string(1 to 37) := "load_store_daemon_cp_element_group_17"; 
      signal preds: BooleanArray(1 to 5); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(9) & load_store_daemon_CP_356_elements(197) & load_store_daemon_CP_356_elements(203) & load_store_daemon_CP_356_elements(206) & load_store_daemon_CP_356_elements(193);
      gj_load_store_daemon_cp_element_group_17 : generic_join generic map(name => joinName, number_of_predecessors => 5, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(17), clk => clk, reset => reset); --
    end block;
    -- CP-element group 18:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 18: predecessors 
    -- CP-element group 18: successors 
    -- CP-element group 18: 	12 
    -- CP-element group 18: 	39 
    -- CP-element group 18: 	182 
    -- CP-element group 18: 	163 
    -- CP-element group 18: 	60 
    -- CP-element group 18: 	81 
    -- CP-element group 18: 	102 
    -- CP-element group 18: 	123 
    -- CP-element group 18: 	144 
    -- CP-element group 18:  members (1) 
      -- CP-element group 18: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8259_sample_completed__ps
      -- 
    -- Element group load_store_daemon_CP_356_elements(18) is bound as output of CP function.
    -- CP-element group 19:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 19: predecessors 
    -- CP-element group 19: successors 
    -- CP-element group 19: 	15 
    -- CP-element group 19: 	195 
    -- CP-element group 19: 	202 
    -- CP-element group 19: 	205 
    -- CP-element group 19: 	191 
    -- CP-element group 19:  members (2) 
      -- CP-element group 19: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8259_update_completed_
      -- CP-element group 19: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8259_update_completed__ps
      -- 
    -- Element group load_store_daemon_CP_356_elements(19) is bound as output of CP function.
    -- CP-element group 20:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 20: predecessors 
    -- CP-element group 20: 	7 
    -- CP-element group 20: successors 
    -- CP-element group 20:  members (1) 
      -- CP-element group 20: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8259_loopback_trigger
      -- 
    load_store_daemon_CP_356_elements(20) <= load_store_daemon_CP_356_elements(7);
    -- CP-element group 21:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 21: predecessors 
    -- CP-element group 21: successors 
    -- CP-element group 21:  members (2) 
      -- CP-element group 21: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8259_loopback_sample_req
      -- CP-element group 21: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8259_loopback_sample_req_ps
      -- 
    phi_stmt_8259_loopback_sample_req_396_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_8259_loopback_sample_req_396_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(21), ack => phi_stmt_8259_req_1); -- 
    -- Element group load_store_daemon_CP_356_elements(21) is bound as output of CP function.
    -- CP-element group 22:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 22: predecessors 
    -- CP-element group 22: 	8 
    -- CP-element group 22: successors 
    -- CP-element group 22:  members (1) 
      -- CP-element group 22: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8259_entry_trigger
      -- 
    load_store_daemon_CP_356_elements(22) <= load_store_daemon_CP_356_elements(8);
    -- CP-element group 23:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 23: predecessors 
    -- CP-element group 23: successors 
    -- CP-element group 23:  members (2) 
      -- CP-element group 23: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8259_entry_sample_req
      -- CP-element group 23: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8259_entry_sample_req_ps
      -- 
    phi_stmt_8259_entry_sample_req_399_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_8259_entry_sample_req_399_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(23), ack => phi_stmt_8259_req_0); -- 
    -- Element group load_store_daemon_CP_356_elements(23) is bound as output of CP function.
    -- CP-element group 24:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 24: predecessors 
    -- CP-element group 24: successors 
    -- CP-element group 24:  members (2) 
      -- CP-element group 24: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8259_phi_mux_ack
      -- CP-element group 24: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8259_phi_mux_ack_ps
      -- 
    phi_stmt_8259_phi_mux_ack_402_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 24_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_8259_ack_0, ack => load_store_daemon_CP_356_elements(24)); -- 
    -- CP-element group 25:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 25: predecessors 
    -- CP-element group 25: successors 
    -- CP-element group 25:  members (4) 
      -- CP-element group 25: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8261_sample_start__ps
      -- CP-element group 25: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8261_sample_completed__ps
      -- CP-element group 25: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8261_sample_start_
      -- CP-element group 25: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8261_sample_completed_
      -- 
    -- Element group load_store_daemon_CP_356_elements(25) is bound as output of CP function.
    -- CP-element group 26:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 26: predecessors 
    -- CP-element group 26: successors 
    -- CP-element group 26: 	28 
    -- CP-element group 26:  members (2) 
      -- CP-element group 26: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8261_update_start__ps
      -- CP-element group 26: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8261_update_start_
      -- 
    -- Element group load_store_daemon_CP_356_elements(26) is bound as output of CP function.
    -- CP-element group 27:  join  transition  bypass  pipeline-parent 
    -- CP-element group 27: predecessors 
    -- CP-element group 27: 	28 
    -- CP-element group 27: successors 
    -- CP-element group 27:  members (1) 
      -- CP-element group 27: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8261_update_completed__ps
      -- 
    load_store_daemon_CP_356_elements(27) <= load_store_daemon_CP_356_elements(28);
    -- CP-element group 28:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 28: predecessors 
    -- CP-element group 28: 	26 
    -- CP-element group 28: successors 
    -- CP-element group 28: 	27 
    -- CP-element group 28:  members (1) 
      -- CP-element group 28: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8261_update_completed_
      -- 
    -- Element group load_store_daemon_CP_356_elements(28) is a control-delay.
    cp_element_28_delay: control_delay_element  generic map(name => " 28_delay", delay_value => 1)  port map(req => load_store_daemon_CP_356_elements(26), ack => load_store_daemon_CP_356_elements(28), clk => clk, reset =>reset);
    -- CP-element group 29:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 29: predecessors 
    -- CP-element group 29: successors 
    -- CP-element group 29: 	31 
    -- CP-element group 29:  members (1) 
      -- CP-element group 29: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_stream_corrector_to_loadstore_8263_sample_start__ps
      -- 
    -- Element group load_store_daemon_CP_356_elements(29) is bound as output of CP function.
    -- CP-element group 30:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 30: predecessors 
    -- CP-element group 30: successors 
    -- CP-element group 30: 	32 
    -- CP-element group 30:  members (1) 
      -- CP-element group 30: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_stream_corrector_to_loadstore_8263_update_start__ps
      -- 
    -- Element group load_store_daemon_CP_356_elements(30) is bound as output of CP function.
    -- CP-element group 31:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 31: predecessors 
    -- CP-element group 31: 	29 
    -- CP-element group 31: marked-predecessors 
    -- CP-element group 31: 	34 
    -- CP-element group 31: successors 
    -- CP-element group 31: 	33 
    -- CP-element group 31:  members (3) 
      -- CP-element group 31: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_stream_corrector_to_loadstore_8263_sample_start_
      -- CP-element group 31: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_stream_corrector_to_loadstore_8263_Sample/$entry
      -- CP-element group 31: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_stream_corrector_to_loadstore_8263_Sample/rr
      -- 
    rr_423_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_423_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(31), ack => RPIPE_teu_stream_corrector_to_loadstore_8263_inst_req_0); -- 
    load_store_daemon_cp_element_group_31: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 37) := "load_store_daemon_cp_element_group_31"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(29) & load_store_daemon_CP_356_elements(34);
      gj_load_store_daemon_cp_element_group_31 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(31), clk => clk, reset => reset); --
    end block;
    -- CP-element group 32:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 32: predecessors 
    -- CP-element group 32: 	30 
    -- CP-element group 32: 	33 
    -- CP-element group 32: successors 
    -- CP-element group 32: 	34 
    -- CP-element group 32:  members (3) 
      -- CP-element group 32: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_stream_corrector_to_loadstore_8263_update_start_
      -- CP-element group 32: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_stream_corrector_to_loadstore_8263_Update/$entry
      -- CP-element group 32: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_stream_corrector_to_loadstore_8263_Update/cr
      -- 
    cr_428_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_428_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(32), ack => RPIPE_teu_stream_corrector_to_loadstore_8263_inst_req_1); -- 
    load_store_daemon_cp_element_group_32: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 37) := "load_store_daemon_cp_element_group_32"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(30) & load_store_daemon_CP_356_elements(33);
      gj_load_store_daemon_cp_element_group_32 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(32), clk => clk, reset => reset); --
    end block;
    -- CP-element group 33:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 33: predecessors 
    -- CP-element group 33: 	31 
    -- CP-element group 33: successors 
    -- CP-element group 33: 	32 
    -- CP-element group 33:  members (4) 
      -- CP-element group 33: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_stream_corrector_to_loadstore_8263_sample_completed__ps
      -- CP-element group 33: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_stream_corrector_to_loadstore_8263_sample_completed_
      -- CP-element group 33: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_stream_corrector_to_loadstore_8263_Sample/$exit
      -- CP-element group 33: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_stream_corrector_to_loadstore_8263_Sample/ra
      -- 
    ra_424_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 33_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_teu_stream_corrector_to_loadstore_8263_inst_ack_0, ack => load_store_daemon_CP_356_elements(33)); -- 
    -- CP-element group 34:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 34: predecessors 
    -- CP-element group 34: 	32 
    -- CP-element group 34: successors 
    -- CP-element group 34: marked-successors 
    -- CP-element group 34: 	31 
    -- CP-element group 34:  members (4) 
      -- CP-element group 34: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_stream_corrector_to_loadstore_8263_update_completed__ps
      -- CP-element group 34: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_stream_corrector_to_loadstore_8263_update_completed_
      -- CP-element group 34: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_stream_corrector_to_loadstore_8263_Update/$exit
      -- CP-element group 34: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_stream_corrector_to_loadstore_8263_Update/ca
      -- 
    ca_429_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 34_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_teu_stream_corrector_to_loadstore_8263_inst_ack_1, ack => load_store_daemon_CP_356_elements(34)); -- 
    -- CP-element group 35:  join  transition  bypass  pipeline-parent 
    -- CP-element group 35: predecessors 
    -- CP-element group 35: 	9 
    -- CP-element group 35: marked-predecessors 
    -- CP-element group 35: 	12 
    -- CP-element group 35: successors 
    -- CP-element group 35: 	11 
    -- CP-element group 35:  members (1) 
      -- CP-element group 35: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8264_sample_start_
      -- 
    load_store_daemon_cp_element_group_35: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 37) := "load_store_daemon_cp_element_group_35"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(9) & load_store_daemon_CP_356_elements(12);
      gj_load_store_daemon_cp_element_group_35 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(35), clk => clk, reset => reset); --
    end block;
    -- CP-element group 36:  join  transition  bypass  pipeline-parent 
    -- CP-element group 36: predecessors 
    -- CP-element group 36: 	9 
    -- CP-element group 36: marked-predecessors 
    -- CP-element group 36: 	197 
    -- CP-element group 36: 	203 
    -- CP-element group 36: 	206 
    -- CP-element group 36: 	186 
    -- CP-element group 36: 	193 
    -- CP-element group 36: successors 
    -- CP-element group 36: 	14 
    -- CP-element group 36:  members (1) 
      -- CP-element group 36: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8264_update_start_
      -- 
    load_store_daemon_cp_element_group_36: block -- 
      constant place_capacities: IntegerArray(0 to 5) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1);
      constant place_markings: IntegerArray(0 to 5)  := (0 => 0,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1);
      constant place_delays: IntegerArray(0 to 5) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0);
      constant joinName: string(1 to 37) := "load_store_daemon_cp_element_group_36"; 
      signal preds: BooleanArray(1 to 6); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(9) & load_store_daemon_CP_356_elements(197) & load_store_daemon_CP_356_elements(203) & load_store_daemon_CP_356_elements(206) & load_store_daemon_CP_356_elements(186) & load_store_daemon_CP_356_elements(193);
      gj_load_store_daemon_cp_element_group_36 : generic_join generic map(name => joinName, number_of_predecessors => 6, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(36), clk => clk, reset => reset); --
    end block;
    -- CP-element group 37:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 37: predecessors 
    -- CP-element group 37: 	11 
    -- CP-element group 37: successors 
    -- CP-element group 37:  members (1) 
      -- CP-element group 37: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8264_sample_start__ps
      -- 
    load_store_daemon_CP_356_elements(37) <= load_store_daemon_CP_356_elements(11);
    -- CP-element group 38:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 38: predecessors 
    -- CP-element group 38: successors 
    -- CP-element group 38: 	12 
    -- CP-element group 38: 	182 
    -- CP-element group 38: 	163 
    -- CP-element group 38: 	60 
    -- CP-element group 38: 	81 
    -- CP-element group 38: 	102 
    -- CP-element group 38: 	123 
    -- CP-element group 38: 	144 
    -- CP-element group 38:  members (1) 
      -- CP-element group 38: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8264_sample_completed__ps
      -- 
    -- Element group load_store_daemon_CP_356_elements(38) is bound as output of CP function.
    -- CP-element group 39:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 39: predecessors 
    -- CP-element group 39: 	14 
    -- CP-element group 39: 	18 
    -- CP-element group 39: successors 
    -- CP-element group 39:  members (1) 
      -- CP-element group 39: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8264_update_start__ps
      -- 
    load_store_daemon_cp_element_group_39: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 37) := "load_store_daemon_cp_element_group_39"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(14) & load_store_daemon_CP_356_elements(18);
      gj_load_store_daemon_cp_element_group_39 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(39), clk => clk, reset => reset); --
    end block;
    -- CP-element group 40:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 40: predecessors 
    -- CP-element group 40: successors 
    -- CP-element group 40: 	15 
    -- CP-element group 40: 	195 
    -- CP-element group 40: 	202 
    -- CP-element group 40: 	205 
    -- CP-element group 40: 	185 
    -- CP-element group 40: 	191 
    -- CP-element group 40:  members (2) 
      -- CP-element group 40: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8264_update_completed_
      -- CP-element group 40: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8264_update_completed__ps
      -- 
    -- Element group load_store_daemon_CP_356_elements(40) is bound as output of CP function.
    -- CP-element group 41:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 41: predecessors 
    -- CP-element group 41: 	7 
    -- CP-element group 41: successors 
    -- CP-element group 41:  members (1) 
      -- CP-element group 41: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8264_loopback_trigger
      -- 
    load_store_daemon_CP_356_elements(41) <= load_store_daemon_CP_356_elements(7);
    -- CP-element group 42:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 42: predecessors 
    -- CP-element group 42: successors 
    -- CP-element group 42:  members (2) 
      -- CP-element group 42: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8264_loopback_sample_req
      -- CP-element group 42: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8264_loopback_sample_req_ps
      -- 
    phi_stmt_8264_loopback_sample_req_440_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_8264_loopback_sample_req_440_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(42), ack => phi_stmt_8264_req_1); -- 
    -- Element group load_store_daemon_CP_356_elements(42) is bound as output of CP function.
    -- CP-element group 43:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 43: predecessors 
    -- CP-element group 43: 	8 
    -- CP-element group 43: successors 
    -- CP-element group 43:  members (1) 
      -- CP-element group 43: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8264_entry_trigger
      -- 
    load_store_daemon_CP_356_elements(43) <= load_store_daemon_CP_356_elements(8);
    -- CP-element group 44:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 44: predecessors 
    -- CP-element group 44: successors 
    -- CP-element group 44:  members (2) 
      -- CP-element group 44: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8264_entry_sample_req
      -- CP-element group 44: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8264_entry_sample_req_ps
      -- 
    phi_stmt_8264_entry_sample_req_443_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_8264_entry_sample_req_443_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(44), ack => phi_stmt_8264_req_0); -- 
    -- Element group load_store_daemon_CP_356_elements(44) is bound as output of CP function.
    -- CP-element group 45:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 45: predecessors 
    -- CP-element group 45: successors 
    -- CP-element group 45:  members (2) 
      -- CP-element group 45: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8264_phi_mux_ack
      -- CP-element group 45: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8264_phi_mux_ack_ps
      -- 
    phi_stmt_8264_phi_mux_ack_446_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 45_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_8264_ack_0, ack => load_store_daemon_CP_356_elements(45)); -- 
    -- CP-element group 46:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 46: predecessors 
    -- CP-element group 46: successors 
    -- CP-element group 46:  members (4) 
      -- CP-element group 46: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8266_sample_completed_
      -- CP-element group 46: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8266_sample_start_
      -- CP-element group 46: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8266_sample_start__ps
      -- CP-element group 46: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8266_sample_completed__ps
      -- 
    -- Element group load_store_daemon_CP_356_elements(46) is bound as output of CP function.
    -- CP-element group 47:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 47: predecessors 
    -- CP-element group 47: successors 
    -- CP-element group 47: 	49 
    -- CP-element group 47:  members (2) 
      -- CP-element group 47: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8266_update_start_
      -- CP-element group 47: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8266_update_start__ps
      -- 
    -- Element group load_store_daemon_CP_356_elements(47) is bound as output of CP function.
    -- CP-element group 48:  join  transition  bypass  pipeline-parent 
    -- CP-element group 48: predecessors 
    -- CP-element group 48: 	49 
    -- CP-element group 48: successors 
    -- CP-element group 48:  members (1) 
      -- CP-element group 48: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8266_update_completed__ps
      -- 
    load_store_daemon_CP_356_elements(48) <= load_store_daemon_CP_356_elements(49);
    -- CP-element group 49:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 49: predecessors 
    -- CP-element group 49: 	47 
    -- CP-element group 49: successors 
    -- CP-element group 49: 	48 
    -- CP-element group 49:  members (1) 
      -- CP-element group 49: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8266_update_completed_
      -- 
    -- Element group load_store_daemon_CP_356_elements(49) is a control-delay.
    cp_element_49_delay: control_delay_element  generic map(name => " 49_delay", delay_value => 1)  port map(req => load_store_daemon_CP_356_elements(47), ack => load_store_daemon_CP_356_elements(49), clk => clk, reset =>reset);
    -- CP-element group 50:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 50: predecessors 
    -- CP-element group 50: successors 
    -- CP-element group 50: 	52 
    -- CP-element group 50:  members (1) 
      -- CP-element group 50: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_iunit_register_file_to_loadstore_8268_sample_start__ps
      -- 
    -- Element group load_store_daemon_CP_356_elements(50) is bound as output of CP function.
    -- CP-element group 51:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 51: predecessors 
    -- CP-element group 51: successors 
    -- CP-element group 51: 	53 
    -- CP-element group 51:  members (1) 
      -- CP-element group 51: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_iunit_register_file_to_loadstore_8268_update_start__ps
      -- 
    -- Element group load_store_daemon_CP_356_elements(51) is bound as output of CP function.
    -- CP-element group 52:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 52: predecessors 
    -- CP-element group 52: 	50 
    -- CP-element group 52: marked-predecessors 
    -- CP-element group 52: 	55 
    -- CP-element group 52: successors 
    -- CP-element group 52: 	54 
    -- CP-element group 52:  members (3) 
      -- CP-element group 52: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_iunit_register_file_to_loadstore_8268_Sample/rr
      -- CP-element group 52: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_iunit_register_file_to_loadstore_8268_sample_start_
      -- CP-element group 52: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_iunit_register_file_to_loadstore_8268_Sample/$entry
      -- 
    rr_467_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_467_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(52), ack => RPIPE_teu_iunit_register_file_to_loadstore_8268_inst_req_0); -- 
    load_store_daemon_cp_element_group_52: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 37) := "load_store_daemon_cp_element_group_52"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(50) & load_store_daemon_CP_356_elements(55);
      gj_load_store_daemon_cp_element_group_52 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(52), clk => clk, reset => reset); --
    end block;
    -- CP-element group 53:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 53: predecessors 
    -- CP-element group 53: 	51 
    -- CP-element group 53: 	54 
    -- CP-element group 53: successors 
    -- CP-element group 53: 	55 
    -- CP-element group 53:  members (3) 
      -- CP-element group 53: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_iunit_register_file_to_loadstore_8268_Update/cr
      -- CP-element group 53: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_iunit_register_file_to_loadstore_8268_Update/$entry
      -- CP-element group 53: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_iunit_register_file_to_loadstore_8268_update_start_
      -- 
    cr_472_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_472_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(53), ack => RPIPE_teu_iunit_register_file_to_loadstore_8268_inst_req_1); -- 
    load_store_daemon_cp_element_group_53: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 37) := "load_store_daemon_cp_element_group_53"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(51) & load_store_daemon_CP_356_elements(54);
      gj_load_store_daemon_cp_element_group_53 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(53), clk => clk, reset => reset); --
    end block;
    -- CP-element group 54:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 54: predecessors 
    -- CP-element group 54: 	52 
    -- CP-element group 54: successors 
    -- CP-element group 54: 	53 
    -- CP-element group 54:  members (4) 
      -- CP-element group 54: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_iunit_register_file_to_loadstore_8268_Sample/ra
      -- CP-element group 54: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_iunit_register_file_to_loadstore_8268_sample_completed__ps
      -- CP-element group 54: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_iunit_register_file_to_loadstore_8268_Sample/$exit
      -- CP-element group 54: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_iunit_register_file_to_loadstore_8268_sample_completed_
      -- 
    ra_468_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 54_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_teu_iunit_register_file_to_loadstore_8268_inst_ack_0, ack => load_store_daemon_CP_356_elements(54)); -- 
    -- CP-element group 55:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 55: predecessors 
    -- CP-element group 55: 	53 
    -- CP-element group 55: successors 
    -- CP-element group 55: marked-successors 
    -- CP-element group 55: 	52 
    -- CP-element group 55:  members (4) 
      -- CP-element group 55: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_iunit_register_file_to_loadstore_8268_Update/$exit
      -- CP-element group 55: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_iunit_register_file_to_loadstore_8268_update_completed__ps
      -- CP-element group 55: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_iunit_register_file_to_loadstore_8268_update_completed_
      -- CP-element group 55: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_iunit_register_file_to_loadstore_8268_Update/ca
      -- 
    ca_473_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 55_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_teu_iunit_register_file_to_loadstore_8268_inst_ack_1, ack => load_store_daemon_CP_356_elements(55)); -- 
    -- CP-element group 56:  join  transition  bypass  pipeline-parent 
    -- CP-element group 56: predecessors 
    -- CP-element group 56: 	9 
    -- CP-element group 56: marked-predecessors 
    -- CP-element group 56: 	12 
    -- CP-element group 56: successors 
    -- CP-element group 56: 	11 
    -- CP-element group 56:  members (1) 
      -- CP-element group 56: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8269_sample_start_
      -- 
    load_store_daemon_cp_element_group_56: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 37) := "load_store_daemon_cp_element_group_56"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(9) & load_store_daemon_CP_356_elements(12);
      gj_load_store_daemon_cp_element_group_56 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(56), clk => clk, reset => reset); --
    end block;
    -- CP-element group 57:  join  transition  bypass  pipeline-parent 
    -- CP-element group 57: predecessors 
    -- CP-element group 57: 	9 
    -- CP-element group 57: marked-predecessors 
    -- CP-element group 57: 	197 
    -- CP-element group 57: 	203 
    -- CP-element group 57: 	206 
    -- CP-element group 57: 	193 
    -- CP-element group 57: successors 
    -- CP-element group 57: 	14 
    -- CP-element group 57:  members (1) 
      -- CP-element group 57: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8269_update_start_
      -- 
    load_store_daemon_cp_element_group_57: block -- 
      constant place_capacities: IntegerArray(0 to 4) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1);
      constant place_markings: IntegerArray(0 to 4)  := (0 => 0,1 => 1,2 => 1,3 => 1,4 => 1);
      constant place_delays: IntegerArray(0 to 4) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0);
      constant joinName: string(1 to 37) := "load_store_daemon_cp_element_group_57"; 
      signal preds: BooleanArray(1 to 5); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(9) & load_store_daemon_CP_356_elements(197) & load_store_daemon_CP_356_elements(203) & load_store_daemon_CP_356_elements(206) & load_store_daemon_CP_356_elements(193);
      gj_load_store_daemon_cp_element_group_57 : generic_join generic map(name => joinName, number_of_predecessors => 5, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(57), clk => clk, reset => reset); --
    end block;
    -- CP-element group 58:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 58: predecessors 
    -- CP-element group 58: 	11 
    -- CP-element group 58: successors 
    -- CP-element group 58:  members (1) 
      -- CP-element group 58: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8269_sample_start__ps
      -- 
    load_store_daemon_CP_356_elements(58) <= load_store_daemon_CP_356_elements(11);
    -- CP-element group 59:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 59: predecessors 
    -- CP-element group 59: successors 
    -- CP-element group 59: 	12 
    -- CP-element group 59: 	182 
    -- CP-element group 59: 	163 
    -- CP-element group 59: 	81 
    -- CP-element group 59: 	102 
    -- CP-element group 59: 	123 
    -- CP-element group 59: 	144 
    -- CP-element group 59:  members (1) 
      -- CP-element group 59: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8269_sample_completed__ps
      -- 
    -- Element group load_store_daemon_CP_356_elements(59) is bound as output of CP function.
    -- CP-element group 60:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 60: predecessors 
    -- CP-element group 60: 	14 
    -- CP-element group 60: 	18 
    -- CP-element group 60: 	38 
    -- CP-element group 60: successors 
    -- CP-element group 60:  members (1) 
      -- CP-element group 60: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8269_update_start__ps
      -- 
    load_store_daemon_cp_element_group_60: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 37) := "load_store_daemon_cp_element_group_60"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(14) & load_store_daemon_CP_356_elements(18) & load_store_daemon_CP_356_elements(38);
      gj_load_store_daemon_cp_element_group_60 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(60), clk => clk, reset => reset); --
    end block;
    -- CP-element group 61:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 61: predecessors 
    -- CP-element group 61: successors 
    -- CP-element group 61: 	15 
    -- CP-element group 61: 	195 
    -- CP-element group 61: 	202 
    -- CP-element group 61: 	205 
    -- CP-element group 61: 	191 
    -- CP-element group 61:  members (2) 
      -- CP-element group 61: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8269_update_completed_
      -- CP-element group 61: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8269_update_completed__ps
      -- 
    -- Element group load_store_daemon_CP_356_elements(61) is bound as output of CP function.
    -- CP-element group 62:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 62: predecessors 
    -- CP-element group 62: 	7 
    -- CP-element group 62: successors 
    -- CP-element group 62:  members (1) 
      -- CP-element group 62: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8269_loopback_trigger
      -- 
    load_store_daemon_CP_356_elements(62) <= load_store_daemon_CP_356_elements(7);
    -- CP-element group 63:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 63: predecessors 
    -- CP-element group 63: successors 
    -- CP-element group 63:  members (2) 
      -- CP-element group 63: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8269_loopback_sample_req_ps
      -- CP-element group 63: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8269_loopback_sample_req
      -- 
    phi_stmt_8269_loopback_sample_req_484_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_8269_loopback_sample_req_484_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(63), ack => phi_stmt_8269_req_1); -- 
    -- Element group load_store_daemon_CP_356_elements(63) is bound as output of CP function.
    -- CP-element group 64:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 64: predecessors 
    -- CP-element group 64: 	8 
    -- CP-element group 64: successors 
    -- CP-element group 64:  members (1) 
      -- CP-element group 64: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8269_entry_trigger
      -- 
    load_store_daemon_CP_356_elements(64) <= load_store_daemon_CP_356_elements(8);
    -- CP-element group 65:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 65: predecessors 
    -- CP-element group 65: successors 
    -- CP-element group 65:  members (2) 
      -- CP-element group 65: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8269_entry_sample_req_ps
      -- CP-element group 65: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8269_entry_sample_req
      -- 
    phi_stmt_8269_entry_sample_req_487_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_8269_entry_sample_req_487_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(65), ack => phi_stmt_8269_req_0); -- 
    -- Element group load_store_daemon_CP_356_elements(65) is bound as output of CP function.
    -- CP-element group 66:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 66: predecessors 
    -- CP-element group 66: successors 
    -- CP-element group 66:  members (2) 
      -- CP-element group 66: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8269_phi_mux_ack
      -- CP-element group 66: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8269_phi_mux_ack_ps
      -- 
    phi_stmt_8269_phi_mux_ack_490_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 66_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_8269_ack_0, ack => load_store_daemon_CP_356_elements(66)); -- 
    -- CP-element group 67:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 67: predecessors 
    -- CP-element group 67: successors 
    -- CP-element group 67:  members (4) 
      -- CP-element group 67: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8271_sample_completed_
      -- CP-element group 67: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8271_sample_start_
      -- CP-element group 67: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8271_sample_completed__ps
      -- CP-element group 67: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8271_sample_start__ps
      -- 
    -- Element group load_store_daemon_CP_356_elements(67) is bound as output of CP function.
    -- CP-element group 68:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 68: predecessors 
    -- CP-element group 68: successors 
    -- CP-element group 68: 	70 
    -- CP-element group 68:  members (2) 
      -- CP-element group 68: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8271_update_start_
      -- CP-element group 68: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8271_update_start__ps
      -- 
    -- Element group load_store_daemon_CP_356_elements(68) is bound as output of CP function.
    -- CP-element group 69:  join  transition  bypass  pipeline-parent 
    -- CP-element group 69: predecessors 
    -- CP-element group 69: 	70 
    -- CP-element group 69: successors 
    -- CP-element group 69:  members (1) 
      -- CP-element group 69: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8271_update_completed__ps
      -- 
    load_store_daemon_CP_356_elements(69) <= load_store_daemon_CP_356_elements(70);
    -- CP-element group 70:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 70: predecessors 
    -- CP-element group 70: 	68 
    -- CP-element group 70: successors 
    -- CP-element group 70: 	69 
    -- CP-element group 70:  members (1) 
      -- CP-element group 70: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8271_update_completed_
      -- 
    -- Element group load_store_daemon_CP_356_elements(70) is a control-delay.
    cp_element_70_delay: control_delay_element  generic map(name => " 70_delay", delay_value => 1)  port map(req => load_store_daemon_CP_356_elements(68), ack => load_store_daemon_CP_356_elements(70), clk => clk, reset =>reset);
    -- CP-element group 71:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 71: predecessors 
    -- CP-element group 71: successors 
    -- CP-element group 71: 	73 
    -- CP-element group 71:  members (1) 
      -- CP-element group 71: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_iunit_trap_to_loadstore_8273_sample_start__ps
      -- 
    -- Element group load_store_daemon_CP_356_elements(71) is bound as output of CP function.
    -- CP-element group 72:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 72: predecessors 
    -- CP-element group 72: successors 
    -- CP-element group 72: 	74 
    -- CP-element group 72:  members (1) 
      -- CP-element group 72: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_iunit_trap_to_loadstore_8273_update_start__ps
      -- 
    -- Element group load_store_daemon_CP_356_elements(72) is bound as output of CP function.
    -- CP-element group 73:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 73: predecessors 
    -- CP-element group 73: 	71 
    -- CP-element group 73: marked-predecessors 
    -- CP-element group 73: 	76 
    -- CP-element group 73: successors 
    -- CP-element group 73: 	75 
    -- CP-element group 73:  members (3) 
      -- CP-element group 73: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_iunit_trap_to_loadstore_8273_Sample/rr
      -- CP-element group 73: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_iunit_trap_to_loadstore_8273_Sample/$entry
      -- CP-element group 73: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_iunit_trap_to_loadstore_8273_sample_start_
      -- 
    rr_511_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_511_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(73), ack => RPIPE_teu_iunit_trap_to_loadstore_8273_inst_req_0); -- 
    load_store_daemon_cp_element_group_73: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 37) := "load_store_daemon_cp_element_group_73"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(71) & load_store_daemon_CP_356_elements(76);
      gj_load_store_daemon_cp_element_group_73 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(73), clk => clk, reset => reset); --
    end block;
    -- CP-element group 74:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 74: predecessors 
    -- CP-element group 74: 	72 
    -- CP-element group 74: 	75 
    -- CP-element group 74: successors 
    -- CP-element group 74: 	76 
    -- CP-element group 74:  members (3) 
      -- CP-element group 74: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_iunit_trap_to_loadstore_8273_Update/cr
      -- CP-element group 74: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_iunit_trap_to_loadstore_8273_Update/$entry
      -- CP-element group 74: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_iunit_trap_to_loadstore_8273_update_start_
      -- 
    cr_516_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_516_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(74), ack => RPIPE_teu_iunit_trap_to_loadstore_8273_inst_req_1); -- 
    load_store_daemon_cp_element_group_74: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 37) := "load_store_daemon_cp_element_group_74"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(72) & load_store_daemon_CP_356_elements(75);
      gj_load_store_daemon_cp_element_group_74 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(74), clk => clk, reset => reset); --
    end block;
    -- CP-element group 75:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 75: predecessors 
    -- CP-element group 75: 	73 
    -- CP-element group 75: successors 
    -- CP-element group 75: 	74 
    -- CP-element group 75:  members (4) 
      -- CP-element group 75: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_iunit_trap_to_loadstore_8273_sample_completed__ps
      -- CP-element group 75: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_iunit_trap_to_loadstore_8273_Sample/$exit
      -- CP-element group 75: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_iunit_trap_to_loadstore_8273_Sample/ra
      -- CP-element group 75: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_iunit_trap_to_loadstore_8273_sample_completed_
      -- 
    ra_512_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 75_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_teu_iunit_trap_to_loadstore_8273_inst_ack_0, ack => load_store_daemon_CP_356_elements(75)); -- 
    -- CP-element group 76:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 76: predecessors 
    -- CP-element group 76: 	74 
    -- CP-element group 76: successors 
    -- CP-element group 76: marked-successors 
    -- CP-element group 76: 	73 
    -- CP-element group 76:  members (4) 
      -- CP-element group 76: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_iunit_trap_to_loadstore_8273_Update/$exit
      -- CP-element group 76: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_iunit_trap_to_loadstore_8273_Update/ca
      -- CP-element group 76: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_iunit_trap_to_loadstore_8273_update_completed__ps
      -- CP-element group 76: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_iunit_trap_to_loadstore_8273_update_completed_
      -- 
    ca_517_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 76_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_teu_iunit_trap_to_loadstore_8273_inst_ack_1, ack => load_store_daemon_CP_356_elements(76)); -- 
    -- CP-element group 77:  join  transition  bypass  pipeline-parent 
    -- CP-element group 77: predecessors 
    -- CP-element group 77: 	9 
    -- CP-element group 77: marked-predecessors 
    -- CP-element group 77: 	12 
    -- CP-element group 77: successors 
    -- CP-element group 77: 	11 
    -- CP-element group 77:  members (1) 
      -- CP-element group 77: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8274_sample_start_
      -- 
    load_store_daemon_cp_element_group_77: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 37) := "load_store_daemon_cp_element_group_77"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(9) & load_store_daemon_CP_356_elements(12);
      gj_load_store_daemon_cp_element_group_77 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(77), clk => clk, reset => reset); --
    end block;
    -- CP-element group 78:  join  transition  bypass  pipeline-parent 
    -- CP-element group 78: predecessors 
    -- CP-element group 78: 	9 
    -- CP-element group 78: marked-predecessors 
    -- CP-element group 78: 	203 
    -- CP-element group 78: 	206 
    -- CP-element group 78: 	189 
    -- CP-element group 78: 	193 
    -- CP-element group 78: successors 
    -- CP-element group 78: 	14 
    -- CP-element group 78:  members (1) 
      -- CP-element group 78: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8274_update_start_
      -- 
    load_store_daemon_cp_element_group_78: block -- 
      constant place_capacities: IntegerArray(0 to 4) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1);
      constant place_markings: IntegerArray(0 to 4)  := (0 => 0,1 => 1,2 => 1,3 => 1,4 => 1);
      constant place_delays: IntegerArray(0 to 4) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0);
      constant joinName: string(1 to 37) := "load_store_daemon_cp_element_group_78"; 
      signal preds: BooleanArray(1 to 5); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(9) & load_store_daemon_CP_356_elements(203) & load_store_daemon_CP_356_elements(206) & load_store_daemon_CP_356_elements(189) & load_store_daemon_CP_356_elements(193);
      gj_load_store_daemon_cp_element_group_78 : generic_join generic map(name => joinName, number_of_predecessors => 5, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(78), clk => clk, reset => reset); --
    end block;
    -- CP-element group 79:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 79: predecessors 
    -- CP-element group 79: 	11 
    -- CP-element group 79: successors 
    -- CP-element group 79:  members (1) 
      -- CP-element group 79: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8274_sample_start__ps
      -- 
    load_store_daemon_CP_356_elements(79) <= load_store_daemon_CP_356_elements(11);
    -- CP-element group 80:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 80: predecessors 
    -- CP-element group 80: successors 
    -- CP-element group 80: 	12 
    -- CP-element group 80: 	182 
    -- CP-element group 80: 	163 
    -- CP-element group 80: 	102 
    -- CP-element group 80: 	123 
    -- CP-element group 80: 	144 
    -- CP-element group 80:  members (1) 
      -- CP-element group 80: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8274_sample_completed__ps
      -- 
    -- Element group load_store_daemon_CP_356_elements(80) is bound as output of CP function.
    -- CP-element group 81:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 81: predecessors 
    -- CP-element group 81: 	14 
    -- CP-element group 81: 	18 
    -- CP-element group 81: 	38 
    -- CP-element group 81: 	59 
    -- CP-element group 81: successors 
    -- CP-element group 81:  members (1) 
      -- CP-element group 81: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8274_update_start__ps
      -- 
    load_store_daemon_cp_element_group_81: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 37) := "load_store_daemon_cp_element_group_81"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(14) & load_store_daemon_CP_356_elements(18) & load_store_daemon_CP_356_elements(38) & load_store_daemon_CP_356_elements(59);
      gj_load_store_daemon_cp_element_group_81 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(81), clk => clk, reset => reset); --
    end block;
    -- CP-element group 82:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 82: predecessors 
    -- CP-element group 82: successors 
    -- CP-element group 82: 	15 
    -- CP-element group 82: 	202 
    -- CP-element group 82: 	205 
    -- CP-element group 82: 	188 
    -- CP-element group 82: 	191 
    -- CP-element group 82:  members (2) 
      -- CP-element group 82: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8274_update_completed_
      -- CP-element group 82: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8274_update_completed__ps
      -- 
    -- Element group load_store_daemon_CP_356_elements(82) is bound as output of CP function.
    -- CP-element group 83:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 83: predecessors 
    -- CP-element group 83: 	7 
    -- CP-element group 83: successors 
    -- CP-element group 83:  members (1) 
      -- CP-element group 83: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8274_loopback_trigger
      -- 
    load_store_daemon_CP_356_elements(83) <= load_store_daemon_CP_356_elements(7);
    -- CP-element group 84:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 84: predecessors 
    -- CP-element group 84: successors 
    -- CP-element group 84:  members (2) 
      -- CP-element group 84: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8274_loopback_sample_req_ps
      -- CP-element group 84: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8274_loopback_sample_req
      -- 
    phi_stmt_8274_loopback_sample_req_528_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_8274_loopback_sample_req_528_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(84), ack => phi_stmt_8274_req_1); -- 
    -- Element group load_store_daemon_CP_356_elements(84) is bound as output of CP function.
    -- CP-element group 85:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 85: predecessors 
    -- CP-element group 85: 	8 
    -- CP-element group 85: successors 
    -- CP-element group 85:  members (1) 
      -- CP-element group 85: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8274_entry_trigger
      -- 
    load_store_daemon_CP_356_elements(85) <= load_store_daemon_CP_356_elements(8);
    -- CP-element group 86:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 86: predecessors 
    -- CP-element group 86: successors 
    -- CP-element group 86:  members (2) 
      -- CP-element group 86: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8274_entry_sample_req_ps
      -- CP-element group 86: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8274_entry_sample_req
      -- 
    phi_stmt_8274_entry_sample_req_531_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_8274_entry_sample_req_531_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(86), ack => phi_stmt_8274_req_0); -- 
    -- Element group load_store_daemon_CP_356_elements(86) is bound as output of CP function.
    -- CP-element group 87:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 87: predecessors 
    -- CP-element group 87: successors 
    -- CP-element group 87:  members (2) 
      -- CP-element group 87: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8274_phi_mux_ack
      -- CP-element group 87: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8274_phi_mux_ack_ps
      -- 
    phi_stmt_8274_phi_mux_ack_534_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 87_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_8274_ack_0, ack => load_store_daemon_CP_356_elements(87)); -- 
    -- CP-element group 88:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 88: predecessors 
    -- CP-element group 88: successors 
    -- CP-element group 88:  members (4) 
      -- CP-element group 88: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8276_sample_start__ps
      -- CP-element group 88: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8276_sample_completed__ps
      -- CP-element group 88: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8276_sample_start_
      -- CP-element group 88: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8276_sample_completed_
      -- 
    -- Element group load_store_daemon_CP_356_elements(88) is bound as output of CP function.
    -- CP-element group 89:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 89: predecessors 
    -- CP-element group 89: successors 
    -- CP-element group 89: 	91 
    -- CP-element group 89:  members (2) 
      -- CP-element group 89: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8276_update_start__ps
      -- CP-element group 89: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8276_update_start_
      -- 
    -- Element group load_store_daemon_CP_356_elements(89) is bound as output of CP function.
    -- CP-element group 90:  join  transition  bypass  pipeline-parent 
    -- CP-element group 90: predecessors 
    -- CP-element group 90: 	91 
    -- CP-element group 90: successors 
    -- CP-element group 90:  members (1) 
      -- CP-element group 90: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8276_update_completed__ps
      -- 
    load_store_daemon_CP_356_elements(90) <= load_store_daemon_CP_356_elements(91);
    -- CP-element group 91:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 91: predecessors 
    -- CP-element group 91: 	89 
    -- CP-element group 91: successors 
    -- CP-element group 91: 	90 
    -- CP-element group 91:  members (1) 
      -- CP-element group 91: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8276_update_completed_
      -- 
    -- Element group load_store_daemon_CP_356_elements(91) is a control-delay.
    cp_element_91_delay: control_delay_element  generic map(name => " 91_delay", delay_value => 1)  port map(req => load_store_daemon_CP_356_elements(89), ack => load_store_daemon_CP_356_elements(91), clk => clk, reset =>reset);
    -- CP-element group 92:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 92: predecessors 
    -- CP-element group 92: successors 
    -- CP-element group 92: 	94 
    -- CP-element group 92:  members (1) 
      -- CP-element group 92: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_fpunit_register_file_to_loadstore_8278_sample_start__ps
      -- 
    -- Element group load_store_daemon_CP_356_elements(92) is bound as output of CP function.
    -- CP-element group 93:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 93: predecessors 
    -- CP-element group 93: successors 
    -- CP-element group 93: 	95 
    -- CP-element group 93:  members (1) 
      -- CP-element group 93: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_fpunit_register_file_to_loadstore_8278_update_start__ps
      -- 
    -- Element group load_store_daemon_CP_356_elements(93) is bound as output of CP function.
    -- CP-element group 94:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 94: predecessors 
    -- CP-element group 94: 	92 
    -- CP-element group 94: marked-predecessors 
    -- CP-element group 94: 	97 
    -- CP-element group 94: successors 
    -- CP-element group 94: 	96 
    -- CP-element group 94:  members (3) 
      -- CP-element group 94: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_fpunit_register_file_to_loadstore_8278_Sample/$entry
      -- CP-element group 94: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_fpunit_register_file_to_loadstore_8278_Sample/rr
      -- CP-element group 94: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_fpunit_register_file_to_loadstore_8278_sample_start_
      -- 
    rr_555_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_555_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(94), ack => RPIPE_teu_fpunit_register_file_to_loadstore_8278_inst_req_0); -- 
    load_store_daemon_cp_element_group_94: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 37) := "load_store_daemon_cp_element_group_94"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(92) & load_store_daemon_CP_356_elements(97);
      gj_load_store_daemon_cp_element_group_94 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(94), clk => clk, reset => reset); --
    end block;
    -- CP-element group 95:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 95: predecessors 
    -- CP-element group 95: 	93 
    -- CP-element group 95: 	96 
    -- CP-element group 95: successors 
    -- CP-element group 95: 	97 
    -- CP-element group 95:  members (3) 
      -- CP-element group 95: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_fpunit_register_file_to_loadstore_8278_update_start_
      -- CP-element group 95: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_fpunit_register_file_to_loadstore_8278_Update/$entry
      -- CP-element group 95: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_fpunit_register_file_to_loadstore_8278_Update/cr
      -- 
    cr_560_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_560_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(95), ack => RPIPE_teu_fpunit_register_file_to_loadstore_8278_inst_req_1); -- 
    load_store_daemon_cp_element_group_95: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 37) := "load_store_daemon_cp_element_group_95"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(93) & load_store_daemon_CP_356_elements(96);
      gj_load_store_daemon_cp_element_group_95 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(95), clk => clk, reset => reset); --
    end block;
    -- CP-element group 96:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 96: predecessors 
    -- CP-element group 96: 	94 
    -- CP-element group 96: successors 
    -- CP-element group 96: 	95 
    -- CP-element group 96:  members (4) 
      -- CP-element group 96: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_fpunit_register_file_to_loadstore_8278_sample_completed__ps
      -- CP-element group 96: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_fpunit_register_file_to_loadstore_8278_sample_completed_
      -- CP-element group 96: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_fpunit_register_file_to_loadstore_8278_Sample/ra
      -- CP-element group 96: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_fpunit_register_file_to_loadstore_8278_Sample/$exit
      -- 
    ra_556_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 96_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_teu_fpunit_register_file_to_loadstore_8278_inst_ack_0, ack => load_store_daemon_CP_356_elements(96)); -- 
    -- CP-element group 97:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 97: predecessors 
    -- CP-element group 97: 	95 
    -- CP-element group 97: successors 
    -- CP-element group 97: marked-successors 
    -- CP-element group 97: 	94 
    -- CP-element group 97:  members (4) 
      -- CP-element group 97: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_fpunit_register_file_to_loadstore_8278_update_completed_
      -- CP-element group 97: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_fpunit_register_file_to_loadstore_8278_Update/$exit
      -- CP-element group 97: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_fpunit_register_file_to_loadstore_8278_Update/ca
      -- CP-element group 97: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_fpunit_register_file_to_loadstore_8278_update_completed__ps
      -- 
    ca_561_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 97_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_teu_fpunit_register_file_to_loadstore_8278_inst_ack_1, ack => load_store_daemon_CP_356_elements(97)); -- 
    -- CP-element group 98:  join  transition  bypass  pipeline-parent 
    -- CP-element group 98: predecessors 
    -- CP-element group 98: 	9 
    -- CP-element group 98: marked-predecessors 
    -- CP-element group 98: 	12 
    -- CP-element group 98: successors 
    -- CP-element group 98: 	11 
    -- CP-element group 98:  members (1) 
      -- CP-element group 98: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8279_sample_start_
      -- 
    load_store_daemon_cp_element_group_98: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 37) := "load_store_daemon_cp_element_group_98"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(9) & load_store_daemon_CP_356_elements(12);
      gj_load_store_daemon_cp_element_group_98 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(98), clk => clk, reset => reset); --
    end block;
    -- CP-element group 99:  join  transition  bypass  pipeline-parent 
    -- CP-element group 99: predecessors 
    -- CP-element group 99: 	9 
    -- CP-element group 99: marked-predecessors 
    -- CP-element group 99: 	197 
    -- CP-element group 99: 	203 
    -- CP-element group 99: 	206 
    -- CP-element group 99: 	193 
    -- CP-element group 99: successors 
    -- CP-element group 99: 	14 
    -- CP-element group 99:  members (1) 
      -- CP-element group 99: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8279_update_start_
      -- 
    load_store_daemon_cp_element_group_99: block -- 
      constant place_capacities: IntegerArray(0 to 4) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1);
      constant place_markings: IntegerArray(0 to 4)  := (0 => 0,1 => 1,2 => 1,3 => 1,4 => 1);
      constant place_delays: IntegerArray(0 to 4) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0);
      constant joinName: string(1 to 37) := "load_store_daemon_cp_element_group_99"; 
      signal preds: BooleanArray(1 to 5); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(9) & load_store_daemon_CP_356_elements(197) & load_store_daemon_CP_356_elements(203) & load_store_daemon_CP_356_elements(206) & load_store_daemon_CP_356_elements(193);
      gj_load_store_daemon_cp_element_group_99 : generic_join generic map(name => joinName, number_of_predecessors => 5, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(99), clk => clk, reset => reset); --
    end block;
    -- CP-element group 100:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 100: predecessors 
    -- CP-element group 100: 	11 
    -- CP-element group 100: successors 
    -- CP-element group 100:  members (1) 
      -- CP-element group 100: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8279_sample_start__ps
      -- 
    load_store_daemon_CP_356_elements(100) <= load_store_daemon_CP_356_elements(11);
    -- CP-element group 101:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 101: predecessors 
    -- CP-element group 101: successors 
    -- CP-element group 101: 	12 
    -- CP-element group 101: 	182 
    -- CP-element group 101: 	163 
    -- CP-element group 101: 	123 
    -- CP-element group 101: 	144 
    -- CP-element group 101:  members (1) 
      -- CP-element group 101: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8279_sample_completed__ps
      -- 
    -- Element group load_store_daemon_CP_356_elements(101) is bound as output of CP function.
    -- CP-element group 102:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 102: predecessors 
    -- CP-element group 102: 	14 
    -- CP-element group 102: 	18 
    -- CP-element group 102: 	38 
    -- CP-element group 102: 	59 
    -- CP-element group 102: 	80 
    -- CP-element group 102: successors 
    -- CP-element group 102:  members (1) 
      -- CP-element group 102: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8279_update_start__ps
      -- 
    load_store_daemon_cp_element_group_102: block -- 
      constant place_capacities: IntegerArray(0 to 4) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1);
      constant place_markings: IntegerArray(0 to 4)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0);
      constant place_delays: IntegerArray(0 to 4) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0);
      constant joinName: string(1 to 38) := "load_store_daemon_cp_element_group_102"; 
      signal preds: BooleanArray(1 to 5); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(14) & load_store_daemon_CP_356_elements(18) & load_store_daemon_CP_356_elements(38) & load_store_daemon_CP_356_elements(59) & load_store_daemon_CP_356_elements(80);
      gj_load_store_daemon_cp_element_group_102 : generic_join generic map(name => joinName, number_of_predecessors => 5, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(102), clk => clk, reset => reset); --
    end block;
    -- CP-element group 103:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 103: predecessors 
    -- CP-element group 103: successors 
    -- CP-element group 103: 	15 
    -- CP-element group 103: 	195 
    -- CP-element group 103: 	202 
    -- CP-element group 103: 	205 
    -- CP-element group 103: 	191 
    -- CP-element group 103:  members (2) 
      -- CP-element group 103: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8279_update_completed_
      -- CP-element group 103: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8279_update_completed__ps
      -- 
    -- Element group load_store_daemon_CP_356_elements(103) is bound as output of CP function.
    -- CP-element group 104:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 104: predecessors 
    -- CP-element group 104: 	7 
    -- CP-element group 104: successors 
    -- CP-element group 104:  members (1) 
      -- CP-element group 104: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8279_loopback_trigger
      -- 
    load_store_daemon_CP_356_elements(104) <= load_store_daemon_CP_356_elements(7);
    -- CP-element group 105:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 105: predecessors 
    -- CP-element group 105: successors 
    -- CP-element group 105:  members (2) 
      -- CP-element group 105: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8279_loopback_sample_req
      -- CP-element group 105: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8279_loopback_sample_req_ps
      -- 
    phi_stmt_8279_loopback_sample_req_572_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_8279_loopback_sample_req_572_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(105), ack => phi_stmt_8279_req_1); -- 
    -- Element group load_store_daemon_CP_356_elements(105) is bound as output of CP function.
    -- CP-element group 106:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 106: predecessors 
    -- CP-element group 106: 	8 
    -- CP-element group 106: successors 
    -- CP-element group 106:  members (1) 
      -- CP-element group 106: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8279_entry_trigger
      -- 
    load_store_daemon_CP_356_elements(106) <= load_store_daemon_CP_356_elements(8);
    -- CP-element group 107:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 107: predecessors 
    -- CP-element group 107: successors 
    -- CP-element group 107:  members (2) 
      -- CP-element group 107: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8279_entry_sample_req
      -- CP-element group 107: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8279_entry_sample_req_ps
      -- 
    phi_stmt_8279_entry_sample_req_575_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_8279_entry_sample_req_575_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(107), ack => phi_stmt_8279_req_0); -- 
    -- Element group load_store_daemon_CP_356_elements(107) is bound as output of CP function.
    -- CP-element group 108:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 108: predecessors 
    -- CP-element group 108: successors 
    -- CP-element group 108:  members (2) 
      -- CP-element group 108: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8279_phi_mux_ack_ps
      -- CP-element group 108: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8279_phi_mux_ack
      -- 
    phi_stmt_8279_phi_mux_ack_578_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 108_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_8279_ack_0, ack => load_store_daemon_CP_356_elements(108)); -- 
    -- CP-element group 109:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 109: predecessors 
    -- CP-element group 109: successors 
    -- CP-element group 109:  members (4) 
      -- CP-element group 109: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8281_sample_start__ps
      -- CP-element group 109: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8281_sample_completed__ps
      -- CP-element group 109: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8281_sample_start_
      -- CP-element group 109: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8281_sample_completed_
      -- 
    -- Element group load_store_daemon_CP_356_elements(109) is bound as output of CP function.
    -- CP-element group 110:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 110: predecessors 
    -- CP-element group 110: successors 
    -- CP-element group 110: 	112 
    -- CP-element group 110:  members (2) 
      -- CP-element group 110: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8281_update_start_
      -- CP-element group 110: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8281_update_start__ps
      -- 
    -- Element group load_store_daemon_CP_356_elements(110) is bound as output of CP function.
    -- CP-element group 111:  join  transition  bypass  pipeline-parent 
    -- CP-element group 111: predecessors 
    -- CP-element group 111: 	112 
    -- CP-element group 111: successors 
    -- CP-element group 111:  members (1) 
      -- CP-element group 111: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8281_update_completed__ps
      -- 
    load_store_daemon_CP_356_elements(111) <= load_store_daemon_CP_356_elements(112);
    -- CP-element group 112:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 112: predecessors 
    -- CP-element group 112: 	110 
    -- CP-element group 112: successors 
    -- CP-element group 112: 	111 
    -- CP-element group 112:  members (1) 
      -- CP-element group 112: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8281_update_completed_
      -- 
    -- Element group load_store_daemon_CP_356_elements(112) is a control-delay.
    cp_element_112_delay: control_delay_element  generic map(name => " 112_delay", delay_value => 1)  port map(req => load_store_daemon_CP_356_elements(110), ack => load_store_daemon_CP_356_elements(112), clk => clk, reset =>reset);
    -- CP-element group 113:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 113: predecessors 
    -- CP-element group 113: successors 
    -- CP-element group 113: 	115 
    -- CP-element group 113:  members (1) 
      -- CP-element group 113: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_fpunit_trap_to_loadstore_8283_sample_start__ps
      -- 
    -- Element group load_store_daemon_CP_356_elements(113) is bound as output of CP function.
    -- CP-element group 114:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 114: predecessors 
    -- CP-element group 114: successors 
    -- CP-element group 114: 	116 
    -- CP-element group 114:  members (1) 
      -- CP-element group 114: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_fpunit_trap_to_loadstore_8283_update_start__ps
      -- 
    -- Element group load_store_daemon_CP_356_elements(114) is bound as output of CP function.
    -- CP-element group 115:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 115: predecessors 
    -- CP-element group 115: 	113 
    -- CP-element group 115: marked-predecessors 
    -- CP-element group 115: 	118 
    -- CP-element group 115: successors 
    -- CP-element group 115: 	117 
    -- CP-element group 115:  members (3) 
      -- CP-element group 115: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_fpunit_trap_to_loadstore_8283_sample_start_
      -- CP-element group 115: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_fpunit_trap_to_loadstore_8283_Sample/rr
      -- CP-element group 115: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_fpunit_trap_to_loadstore_8283_Sample/$entry
      -- 
    rr_599_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_599_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(115), ack => RPIPE_teu_fpunit_trap_to_loadstore_8283_inst_req_0); -- 
    load_store_daemon_cp_element_group_115: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 38) := "load_store_daemon_cp_element_group_115"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(113) & load_store_daemon_CP_356_elements(118);
      gj_load_store_daemon_cp_element_group_115 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(115), clk => clk, reset => reset); --
    end block;
    -- CP-element group 116:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 116: predecessors 
    -- CP-element group 116: 	114 
    -- CP-element group 116: 	117 
    -- CP-element group 116: successors 
    -- CP-element group 116: 	118 
    -- CP-element group 116:  members (3) 
      -- CP-element group 116: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_fpunit_trap_to_loadstore_8283_Update/$entry
      -- CP-element group 116: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_fpunit_trap_to_loadstore_8283_update_start_
      -- CP-element group 116: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_fpunit_trap_to_loadstore_8283_Update/cr
      -- 
    cr_604_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_604_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(116), ack => RPIPE_teu_fpunit_trap_to_loadstore_8283_inst_req_1); -- 
    load_store_daemon_cp_element_group_116: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 38) := "load_store_daemon_cp_element_group_116"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(114) & load_store_daemon_CP_356_elements(117);
      gj_load_store_daemon_cp_element_group_116 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(116), clk => clk, reset => reset); --
    end block;
    -- CP-element group 117:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 117: predecessors 
    -- CP-element group 117: 	115 
    -- CP-element group 117: successors 
    -- CP-element group 117: 	116 
    -- CP-element group 117:  members (4) 
      -- CP-element group 117: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_fpunit_trap_to_loadstore_8283_Sample/ra
      -- CP-element group 117: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_fpunit_trap_to_loadstore_8283_Sample/$exit
      -- CP-element group 117: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_fpunit_trap_to_loadstore_8283_sample_completed__ps
      -- CP-element group 117: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_fpunit_trap_to_loadstore_8283_sample_completed_
      -- 
    ra_600_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 117_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_teu_fpunit_trap_to_loadstore_8283_inst_ack_0, ack => load_store_daemon_CP_356_elements(117)); -- 
    -- CP-element group 118:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 118: predecessors 
    -- CP-element group 118: 	116 
    -- CP-element group 118: successors 
    -- CP-element group 118: marked-successors 
    -- CP-element group 118: 	115 
    -- CP-element group 118:  members (4) 
      -- CP-element group 118: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_fpunit_trap_to_loadstore_8283_update_completed__ps
      -- CP-element group 118: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_fpunit_trap_to_loadstore_8283_Update/$exit
      -- CP-element group 118: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_fpunit_trap_to_loadstore_8283_update_completed_
      -- CP-element group 118: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_teu_fpunit_trap_to_loadstore_8283_Update/ca
      -- 
    ca_605_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 118_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_teu_fpunit_trap_to_loadstore_8283_inst_ack_1, ack => load_store_daemon_CP_356_elements(118)); -- 
    -- CP-element group 119:  join  transition  bypass  pipeline-parent 
    -- CP-element group 119: predecessors 
    -- CP-element group 119: 	9 
    -- CP-element group 119: marked-predecessors 
    -- CP-element group 119: 	12 
    -- CP-element group 119: successors 
    -- CP-element group 119: 	11 
    -- CP-element group 119:  members (1) 
      -- CP-element group 119: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8284_sample_start_
      -- 
    load_store_daemon_cp_element_group_119: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 38) := "load_store_daemon_cp_element_group_119"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(9) & load_store_daemon_CP_356_elements(12);
      gj_load_store_daemon_cp_element_group_119 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(119), clk => clk, reset => reset); --
    end block;
    -- CP-element group 120:  join  transition  bypass  pipeline-parent 
    -- CP-element group 120: predecessors 
    -- CP-element group 120: 	9 
    -- CP-element group 120: marked-predecessors 
    -- CP-element group 120: 	124 
    -- CP-element group 120: successors 
    -- CP-element group 120: 	14 
    -- CP-element group 120:  members (1) 
      -- CP-element group 120: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8284_update_start_
      -- 
    load_store_daemon_cp_element_group_120: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 38) := "load_store_daemon_cp_element_group_120"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(9) & load_store_daemon_CP_356_elements(124);
      gj_load_store_daemon_cp_element_group_120 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(120), clk => clk, reset => reset); --
    end block;
    -- CP-element group 121:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 121: predecessors 
    -- CP-element group 121: 	11 
    -- CP-element group 121: successors 
    -- CP-element group 121:  members (1) 
      -- CP-element group 121: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8284_sample_start__ps
      -- 
    load_store_daemon_CP_356_elements(121) <= load_store_daemon_CP_356_elements(11);
    -- CP-element group 122:  join  transition  bypass  pipeline-parent 
    -- CP-element group 122: predecessors 
    -- CP-element group 122: successors 
    -- CP-element group 122: 	12 
    -- CP-element group 122:  members (1) 
      -- CP-element group 122: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8284_sample_completed__ps
      -- 
    -- Element group load_store_daemon_CP_356_elements(122) is bound as output of CP function.
    -- CP-element group 123:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 123: predecessors 
    -- CP-element group 123: 	14 
    -- CP-element group 123: 	18 
    -- CP-element group 123: 	38 
    -- CP-element group 123: 	59 
    -- CP-element group 123: 	80 
    -- CP-element group 123: 	101 
    -- CP-element group 123: successors 
    -- CP-element group 123:  members (1) 
      -- CP-element group 123: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8284_update_start__ps
      -- 
    load_store_daemon_cp_element_group_123: block -- 
      constant place_capacities: IntegerArray(0 to 5) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1);
      constant place_markings: IntegerArray(0 to 5)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0);
      constant place_delays: IntegerArray(0 to 5) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0);
      constant joinName: string(1 to 38) := "load_store_daemon_cp_element_group_123"; 
      signal preds: BooleanArray(1 to 6); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(14) & load_store_daemon_CP_356_elements(18) & load_store_daemon_CP_356_elements(38) & load_store_daemon_CP_356_elements(59) & load_store_daemon_CP_356_elements(80) & load_store_daemon_CP_356_elements(101);
      gj_load_store_daemon_cp_element_group_123 : generic_join generic map(name => joinName, number_of_predecessors => 6, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(123), clk => clk, reset => reset); --
    end block;
    -- CP-element group 124:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 124: predecessors 
    -- CP-element group 124: successors 
    -- CP-element group 124: 	15 
    -- CP-element group 124: marked-successors 
    -- CP-element group 124: 	120 
    -- CP-element group 124:  members (2) 
      -- CP-element group 124: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8284_update_completed_
      -- CP-element group 124: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8284_update_completed__ps
      -- 
    -- Element group load_store_daemon_CP_356_elements(124) is bound as output of CP function.
    -- CP-element group 125:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 125: predecessors 
    -- CP-element group 125: 	7 
    -- CP-element group 125: successors 
    -- CP-element group 125:  members (1) 
      -- CP-element group 125: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8284_loopback_trigger
      -- 
    load_store_daemon_CP_356_elements(125) <= load_store_daemon_CP_356_elements(7);
    -- CP-element group 126:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 126: predecessors 
    -- CP-element group 126: successors 
    -- CP-element group 126:  members (2) 
      -- CP-element group 126: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8284_loopback_sample_req
      -- CP-element group 126: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8284_loopback_sample_req_ps
      -- 
    phi_stmt_8284_loopback_sample_req_616_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_8284_loopback_sample_req_616_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(126), ack => phi_stmt_8284_req_1); -- 
    -- Element group load_store_daemon_CP_356_elements(126) is bound as output of CP function.
    -- CP-element group 127:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 127: predecessors 
    -- CP-element group 127: 	8 
    -- CP-element group 127: successors 
    -- CP-element group 127:  members (1) 
      -- CP-element group 127: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8284_entry_trigger
      -- 
    load_store_daemon_CP_356_elements(127) <= load_store_daemon_CP_356_elements(8);
    -- CP-element group 128:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 128: predecessors 
    -- CP-element group 128: successors 
    -- CP-element group 128:  members (2) 
      -- CP-element group 128: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8284_entry_sample_req
      -- CP-element group 128: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8284_entry_sample_req_ps
      -- 
    phi_stmt_8284_entry_sample_req_619_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_8284_entry_sample_req_619_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(128), ack => phi_stmt_8284_req_0); -- 
    -- Element group load_store_daemon_CP_356_elements(128) is bound as output of CP function.
    -- CP-element group 129:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 129: predecessors 
    -- CP-element group 129: successors 
    -- CP-element group 129:  members (2) 
      -- CP-element group 129: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8284_phi_mux_ack
      -- CP-element group 129: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8284_phi_mux_ack_ps
      -- 
    phi_stmt_8284_phi_mux_ack_622_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 129_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_8284_ack_0, ack => load_store_daemon_CP_356_elements(129)); -- 
    -- CP-element group 130:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 130: predecessors 
    -- CP-element group 130: successors 
    -- CP-element group 130:  members (4) 
      -- CP-element group 130: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8286_sample_completed_
      -- CP-element group 130: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8286_sample_completed__ps
      -- CP-element group 130: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8286_sample_start__ps
      -- CP-element group 130: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8286_sample_start_
      -- 
    -- Element group load_store_daemon_CP_356_elements(130) is bound as output of CP function.
    -- CP-element group 131:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 131: predecessors 
    -- CP-element group 131: successors 
    -- CP-element group 131: 	133 
    -- CP-element group 131:  members (2) 
      -- CP-element group 131: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8286_update_start_
      -- CP-element group 131: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8286_update_start__ps
      -- 
    -- Element group load_store_daemon_CP_356_elements(131) is bound as output of CP function.
    -- CP-element group 132:  join  transition  bypass  pipeline-parent 
    -- CP-element group 132: predecessors 
    -- CP-element group 132: 	133 
    -- CP-element group 132: successors 
    -- CP-element group 132:  members (1) 
      -- CP-element group 132: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8286_update_completed__ps
      -- 
    load_store_daemon_CP_356_elements(132) <= load_store_daemon_CP_356_elements(133);
    -- CP-element group 133:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 133: predecessors 
    -- CP-element group 133: 	131 
    -- CP-element group 133: successors 
    -- CP-element group 133: 	132 
    -- CP-element group 133:  members (1) 
      -- CP-element group 133: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8286_update_completed_
      -- 
    -- Element group load_store_daemon_CP_356_elements(133) is a control-delay.
    cp_element_133_delay: control_delay_element  generic map(name => " 133_delay", delay_value => 1)  port map(req => load_store_daemon_CP_356_elements(131), ack => load_store_daemon_CP_356_elements(133), clk => clk, reset =>reset);
    -- CP-element group 134:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 134: predecessors 
    -- CP-element group 134: successors 
    -- CP-element group 134: 	136 
    -- CP-element group 134:  members (1) 
      -- CP-element group 134: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_noblock_teu_idispatch_to_loadstore_8287_sample_start__ps
      -- 
    -- Element group load_store_daemon_CP_356_elements(134) is bound as output of CP function.
    -- CP-element group 135:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 135: predecessors 
    -- CP-element group 135: successors 
    -- CP-element group 135: 	137 
    -- CP-element group 135:  members (1) 
      -- CP-element group 135: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_noblock_teu_idispatch_to_loadstore_8287_update_start__ps
      -- 
    -- Element group load_store_daemon_CP_356_elements(135) is bound as output of CP function.
    -- CP-element group 136:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 136: predecessors 
    -- CP-element group 136: 	134 
    -- CP-element group 136: marked-predecessors 
    -- CP-element group 136: 	139 
    -- CP-element group 136: successors 
    -- CP-element group 136: 	138 
    -- CP-element group 136:  members (3) 
      -- CP-element group 136: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_noblock_teu_idispatch_to_loadstore_8287_Sample/$entry
      -- CP-element group 136: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_noblock_teu_idispatch_to_loadstore_8287_Sample/rr
      -- CP-element group 136: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_noblock_teu_idispatch_to_loadstore_8287_sample_start_
      -- 
    rr_643_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_643_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(136), ack => RPIPE_noblock_teu_idispatch_to_loadstore_8287_inst_req_0); -- 
    load_store_daemon_cp_element_group_136: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 38) := "load_store_daemon_cp_element_group_136"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(134) & load_store_daemon_CP_356_elements(139);
      gj_load_store_daemon_cp_element_group_136 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(136), clk => clk, reset => reset); --
    end block;
    -- CP-element group 137:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 137: predecessors 
    -- CP-element group 137: 	135 
    -- CP-element group 137: 	138 
    -- CP-element group 137: successors 
    -- CP-element group 137: 	139 
    -- CP-element group 137:  members (3) 
      -- CP-element group 137: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_noblock_teu_idispatch_to_loadstore_8287_update_start_
      -- CP-element group 137: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_noblock_teu_idispatch_to_loadstore_8287_Update/$entry
      -- CP-element group 137: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_noblock_teu_idispatch_to_loadstore_8287_Update/cr
      -- 
    cr_648_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_648_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(137), ack => RPIPE_noblock_teu_idispatch_to_loadstore_8287_inst_req_1); -- 
    load_store_daemon_cp_element_group_137: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 38) := "load_store_daemon_cp_element_group_137"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(135) & load_store_daemon_CP_356_elements(138);
      gj_load_store_daemon_cp_element_group_137 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(137), clk => clk, reset => reset); --
    end block;
    -- CP-element group 138:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 138: predecessors 
    -- CP-element group 138: 	136 
    -- CP-element group 138: successors 
    -- CP-element group 138: 	137 
    -- CP-element group 138:  members (4) 
      -- CP-element group 138: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_noblock_teu_idispatch_to_loadstore_8287_sample_completed__ps
      -- CP-element group 138: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_noblock_teu_idispatch_to_loadstore_8287_sample_completed_
      -- CP-element group 138: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_noblock_teu_idispatch_to_loadstore_8287_Sample/$exit
      -- CP-element group 138: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_noblock_teu_idispatch_to_loadstore_8287_Sample/ra
      -- 
    ra_644_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 138_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_teu_idispatch_to_loadstore_8287_inst_ack_0, ack => load_store_daemon_CP_356_elements(138)); -- 
    -- CP-element group 139:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 139: predecessors 
    -- CP-element group 139: 	137 
    -- CP-element group 139: successors 
    -- CP-element group 139: marked-successors 
    -- CP-element group 139: 	136 
    -- CP-element group 139:  members (4) 
      -- CP-element group 139: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_noblock_teu_idispatch_to_loadstore_8287_Update/$exit
      -- CP-element group 139: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_noblock_teu_idispatch_to_loadstore_8287_update_completed_
      -- CP-element group 139: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_noblock_teu_idispatch_to_loadstore_8287_Update/ca
      -- CP-element group 139: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_noblock_teu_idispatch_to_loadstore_8287_update_completed__ps
      -- 
    ca_649_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 139_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_teu_idispatch_to_loadstore_8287_inst_ack_1, ack => load_store_daemon_CP_356_elements(139)); -- 
    -- CP-element group 140:  join  transition  bypass  pipeline-parent 
    -- CP-element group 140: predecessors 
    -- CP-element group 140: 	9 
    -- CP-element group 140: marked-predecessors 
    -- CP-element group 140: 	12 
    -- CP-element group 140: successors 
    -- CP-element group 140: 	11 
    -- CP-element group 140:  members (1) 
      -- CP-element group 140: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8288_sample_start_
      -- 
    load_store_daemon_cp_element_group_140: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 38) := "load_store_daemon_cp_element_group_140"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(9) & load_store_daemon_CP_356_elements(12);
      gj_load_store_daemon_cp_element_group_140 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(140), clk => clk, reset => reset); --
    end block;
    -- CP-element group 141:  join  transition  bypass  pipeline-parent 
    -- CP-element group 141: predecessors 
    -- CP-element group 141: 	9 
    -- CP-element group 141: marked-predecessors 
    -- CP-element group 141: 	197 
    -- CP-element group 141: 	203 
    -- CP-element group 141: 	206 
    -- CP-element group 141: 	186 
    -- CP-element group 141: 	189 
    -- CP-element group 141: 	193 
    -- CP-element group 141: successors 
    -- CP-element group 141: 	14 
    -- CP-element group 141:  members (1) 
      -- CP-element group 141: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8288_update_start_
      -- 
    load_store_daemon_cp_element_group_141: block -- 
      constant place_capacities: IntegerArray(0 to 6) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1);
      constant place_markings: IntegerArray(0 to 6)  := (0 => 0,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1);
      constant place_delays: IntegerArray(0 to 6) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0);
      constant joinName: string(1 to 38) := "load_store_daemon_cp_element_group_141"; 
      signal preds: BooleanArray(1 to 7); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(9) & load_store_daemon_CP_356_elements(197) & load_store_daemon_CP_356_elements(203) & load_store_daemon_CP_356_elements(206) & load_store_daemon_CP_356_elements(186) & load_store_daemon_CP_356_elements(189) & load_store_daemon_CP_356_elements(193);
      gj_load_store_daemon_cp_element_group_141 : generic_join generic map(name => joinName, number_of_predecessors => 7, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(141), clk => clk, reset => reset); --
    end block;
    -- CP-element group 142:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 142: predecessors 
    -- CP-element group 142: 	11 
    -- CP-element group 142: successors 
    -- CP-element group 142:  members (1) 
      -- CP-element group 142: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8288_sample_start__ps
      -- 
    load_store_daemon_CP_356_elements(142) <= load_store_daemon_CP_356_elements(11);
    -- CP-element group 143:  join  transition  bypass  pipeline-parent 
    -- CP-element group 143: predecessors 
    -- CP-element group 143: successors 
    -- CP-element group 143: 	12 
    -- CP-element group 143:  members (1) 
      -- CP-element group 143: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8288_sample_completed__ps
      -- 
    -- Element group load_store_daemon_CP_356_elements(143) is bound as output of CP function.
    -- CP-element group 144:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 144: predecessors 
    -- CP-element group 144: 	14 
    -- CP-element group 144: 	18 
    -- CP-element group 144: 	38 
    -- CP-element group 144: 	59 
    -- CP-element group 144: 	80 
    -- CP-element group 144: 	101 
    -- CP-element group 144: successors 
    -- CP-element group 144:  members (1) 
      -- CP-element group 144: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8288_update_start__ps
      -- 
    load_store_daemon_cp_element_group_144: block -- 
      constant place_capacities: IntegerArray(0 to 5) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1);
      constant place_markings: IntegerArray(0 to 5)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0);
      constant place_delays: IntegerArray(0 to 5) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0);
      constant joinName: string(1 to 38) := "load_store_daemon_cp_element_group_144"; 
      signal preds: BooleanArray(1 to 6); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(14) & load_store_daemon_CP_356_elements(18) & load_store_daemon_CP_356_elements(38) & load_store_daemon_CP_356_elements(59) & load_store_daemon_CP_356_elements(80) & load_store_daemon_CP_356_elements(101);
      gj_load_store_daemon_cp_element_group_144 : generic_join generic map(name => joinName, number_of_predecessors => 6, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(144), clk => clk, reset => reset); --
    end block;
    -- CP-element group 145:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 145: predecessors 
    -- CP-element group 145: successors 
    -- CP-element group 145: 	15 
    -- CP-element group 145: 	195 
    -- CP-element group 145: 	202 
    -- CP-element group 145: 	205 
    -- CP-element group 145: 	185 
    -- CP-element group 145: 	188 
    -- CP-element group 145: 	191 
    -- CP-element group 145:  members (2) 
      -- CP-element group 145: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8288_update_completed_
      -- CP-element group 145: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8288_update_completed__ps
      -- 
    -- Element group load_store_daemon_CP_356_elements(145) is bound as output of CP function.
    -- CP-element group 146:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 146: predecessors 
    -- CP-element group 146: 	7 
    -- CP-element group 146: successors 
    -- CP-element group 146:  members (1) 
      -- CP-element group 146: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8288_loopback_trigger
      -- 
    load_store_daemon_CP_356_elements(146) <= load_store_daemon_CP_356_elements(7);
    -- CP-element group 147:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 147: predecessors 
    -- CP-element group 147: successors 
    -- CP-element group 147:  members (2) 
      -- CP-element group 147: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8288_loopback_sample_req
      -- CP-element group 147: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8288_loopback_sample_req_ps
      -- 
    phi_stmt_8288_loopback_sample_req_660_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_8288_loopback_sample_req_660_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(147), ack => phi_stmt_8288_req_1); -- 
    -- Element group load_store_daemon_CP_356_elements(147) is bound as output of CP function.
    -- CP-element group 148:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 148: predecessors 
    -- CP-element group 148: 	8 
    -- CP-element group 148: successors 
    -- CP-element group 148:  members (1) 
      -- CP-element group 148: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8288_entry_trigger
      -- 
    load_store_daemon_CP_356_elements(148) <= load_store_daemon_CP_356_elements(8);
    -- CP-element group 149:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 149: predecessors 
    -- CP-element group 149: successors 
    -- CP-element group 149:  members (2) 
      -- CP-element group 149: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8288_entry_sample_req_ps
      -- CP-element group 149: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8288_entry_sample_req
      -- 
    phi_stmt_8288_entry_sample_req_663_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_8288_entry_sample_req_663_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(149), ack => phi_stmt_8288_req_0); -- 
    -- Element group load_store_daemon_CP_356_elements(149) is bound as output of CP function.
    -- CP-element group 150:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 150: predecessors 
    -- CP-element group 150: successors 
    -- CP-element group 150:  members (2) 
      -- CP-element group 150: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8288_phi_mux_ack
      -- CP-element group 150: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8288_phi_mux_ack_ps
      -- 
    phi_stmt_8288_phi_mux_ack_666_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 150_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_8288_ack_0, ack => load_store_daemon_CP_356_elements(150)); -- 
    -- CP-element group 151:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 151: predecessors 
    -- CP-element group 151: successors 
    -- CP-element group 151:  members (4) 
      -- CP-element group 151: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8290_sample_start__ps
      -- CP-element group 151: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8290_sample_completed__ps
      -- CP-element group 151: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8290_sample_start_
      -- CP-element group 151: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8290_sample_completed_
      -- 
    -- Element group load_store_daemon_CP_356_elements(151) is bound as output of CP function.
    -- CP-element group 152:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 152: predecessors 
    -- CP-element group 152: successors 
    -- CP-element group 152: 	154 
    -- CP-element group 152:  members (2) 
      -- CP-element group 152: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8290_update_start__ps
      -- CP-element group 152: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8290_update_start_
      -- 
    -- Element group load_store_daemon_CP_356_elements(152) is bound as output of CP function.
    -- CP-element group 153:  join  transition  bypass  pipeline-parent 
    -- CP-element group 153: predecessors 
    -- CP-element group 153: 	154 
    -- CP-element group 153: successors 
    -- CP-element group 153:  members (1) 
      -- CP-element group 153: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8290_update_completed__ps
      -- 
    load_store_daemon_CP_356_elements(153) <= load_store_daemon_CP_356_elements(154);
    -- CP-element group 154:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 154: predecessors 
    -- CP-element group 154: 	152 
    -- CP-element group 154: successors 
    -- CP-element group 154: 	153 
    -- CP-element group 154:  members (1) 
      -- CP-element group 154: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8290_update_completed_
      -- 
    -- Element group load_store_daemon_CP_356_elements(154) is a control-delay.
    cp_element_154_delay: control_delay_element  generic map(name => " 154_delay", delay_value => 1)  port map(req => load_store_daemon_CP_356_elements(152), ack => load_store_daemon_CP_356_elements(154), clk => clk, reset =>reset);
    -- CP-element group 155:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 155: predecessors 
    -- CP-element group 155: successors 
    -- CP-element group 155: 	157 
    -- CP-element group 155:  members (4) 
      -- CP-element group 155: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/R_next_CIRCULANT_8291_sample_start__ps
      -- CP-element group 155: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/R_next_CIRCULANT_8291_sample_start_
      -- CP-element group 155: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/R_next_CIRCULANT_8291_Sample/$entry
      -- CP-element group 155: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/R_next_CIRCULANT_8291_Sample/req
      -- 
    req_687_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_687_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(155), ack => next_CIRCULANT_9471_8291_buf_req_0); -- 
    -- Element group load_store_daemon_CP_356_elements(155) is bound as output of CP function.
    -- CP-element group 156:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 156: predecessors 
    -- CP-element group 156: successors 
    -- CP-element group 156: 	158 
    -- CP-element group 156:  members (4) 
      -- CP-element group 156: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/R_next_CIRCULANT_8291_update_start__ps
      -- CP-element group 156: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/R_next_CIRCULANT_8291_update_start_
      -- CP-element group 156: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/R_next_CIRCULANT_8291_Update/$entry
      -- CP-element group 156: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/R_next_CIRCULANT_8291_Update/req
      -- 
    req_692_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_692_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(156), ack => next_CIRCULANT_9471_8291_buf_req_1); -- 
    -- Element group load_store_daemon_CP_356_elements(156) is bound as output of CP function.
    -- CP-element group 157:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 157: predecessors 
    -- CP-element group 157: 	155 
    -- CP-element group 157: successors 
    -- CP-element group 157:  members (4) 
      -- CP-element group 157: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/R_next_CIRCULANT_8291_sample_completed__ps
      -- CP-element group 157: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/R_next_CIRCULANT_8291_sample_completed_
      -- CP-element group 157: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/R_next_CIRCULANT_8291_Sample/$exit
      -- CP-element group 157: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/R_next_CIRCULANT_8291_Sample/ack
      -- 
    ack_688_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 157_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_CIRCULANT_9471_8291_buf_ack_0, ack => load_store_daemon_CP_356_elements(157)); -- 
    -- CP-element group 158:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 158: predecessors 
    -- CP-element group 158: 	156 
    -- CP-element group 158: successors 
    -- CP-element group 158:  members (4) 
      -- CP-element group 158: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/R_next_CIRCULANT_8291_update_completed__ps
      -- CP-element group 158: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/R_next_CIRCULANT_8291_update_completed_
      -- CP-element group 158: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/R_next_CIRCULANT_8291_Update/$exit
      -- CP-element group 158: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/R_next_CIRCULANT_8291_Update/ack
      -- 
    ack_693_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 158_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_CIRCULANT_9471_8291_buf_ack_1, ack => load_store_daemon_CP_356_elements(158)); -- 
    -- CP-element group 159:  join  transition  bypass  pipeline-parent 
    -- CP-element group 159: predecessors 
    -- CP-element group 159: 	9 
    -- CP-element group 159: marked-predecessors 
    -- CP-element group 159: 	12 
    -- CP-element group 159: successors 
    -- CP-element group 159: 	11 
    -- CP-element group 159:  members (1) 
      -- CP-element group 159: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8292_sample_start_
      -- 
    load_store_daemon_cp_element_group_159: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 38) := "load_store_daemon_cp_element_group_159"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(9) & load_store_daemon_CP_356_elements(12);
      gj_load_store_daemon_cp_element_group_159 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(159), clk => clk, reset => reset); --
    end block;
    -- CP-element group 160:  join  transition  bypass  pipeline-parent 
    -- CP-element group 160: predecessors 
    -- CP-element group 160: 	9 
    -- CP-element group 160: marked-predecessors 
    -- CP-element group 160: 	197 
    -- CP-element group 160: 	203 
    -- CP-element group 160: 	206 
    -- CP-element group 160: 	193 
    -- CP-element group 160: successors 
    -- CP-element group 160: 	14 
    -- CP-element group 160:  members (1) 
      -- CP-element group 160: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8292_update_start_
      -- 
    load_store_daemon_cp_element_group_160: block -- 
      constant place_capacities: IntegerArray(0 to 4) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1);
      constant place_markings: IntegerArray(0 to 4)  := (0 => 0,1 => 1,2 => 1,3 => 1,4 => 1);
      constant place_delays: IntegerArray(0 to 4) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0);
      constant joinName: string(1 to 38) := "load_store_daemon_cp_element_group_160"; 
      signal preds: BooleanArray(1 to 5); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(9) & load_store_daemon_CP_356_elements(197) & load_store_daemon_CP_356_elements(203) & load_store_daemon_CP_356_elements(206) & load_store_daemon_CP_356_elements(193);
      gj_load_store_daemon_cp_element_group_160 : generic_join generic map(name => joinName, number_of_predecessors => 5, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(160), clk => clk, reset => reset); --
    end block;
    -- CP-element group 161:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 161: predecessors 
    -- CP-element group 161: 	11 
    -- CP-element group 161: successors 
    -- CP-element group 161:  members (1) 
      -- CP-element group 161: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8292_sample_start__ps
      -- 
    load_store_daemon_CP_356_elements(161) <= load_store_daemon_CP_356_elements(11);
    -- CP-element group 162:  join  transition  bypass  pipeline-parent 
    -- CP-element group 162: predecessors 
    -- CP-element group 162: successors 
    -- CP-element group 162: 	12 
    -- CP-element group 162:  members (1) 
      -- CP-element group 162: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8292_sample_completed__ps
      -- 
    -- Element group load_store_daemon_CP_356_elements(162) is bound as output of CP function.
    -- CP-element group 163:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 163: predecessors 
    -- CP-element group 163: 	14 
    -- CP-element group 163: 	18 
    -- CP-element group 163: 	38 
    -- CP-element group 163: 	59 
    -- CP-element group 163: 	80 
    -- CP-element group 163: 	101 
    -- CP-element group 163: successors 
    -- CP-element group 163:  members (1) 
      -- CP-element group 163: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8292_update_start__ps
      -- 
    load_store_daemon_cp_element_group_163: block -- 
      constant place_capacities: IntegerArray(0 to 5) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1);
      constant place_markings: IntegerArray(0 to 5)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0);
      constant place_delays: IntegerArray(0 to 5) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0);
      constant joinName: string(1 to 38) := "load_store_daemon_cp_element_group_163"; 
      signal preds: BooleanArray(1 to 6); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(14) & load_store_daemon_CP_356_elements(18) & load_store_daemon_CP_356_elements(38) & load_store_daemon_CP_356_elements(59) & load_store_daemon_CP_356_elements(80) & load_store_daemon_CP_356_elements(101);
      gj_load_store_daemon_cp_element_group_163 : generic_join generic map(name => joinName, number_of_predecessors => 6, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(163), clk => clk, reset => reset); --
    end block;
    -- CP-element group 164:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 164: predecessors 
    -- CP-element group 164: successors 
    -- CP-element group 164: 	15 
    -- CP-element group 164: 	195 
    -- CP-element group 164: 	202 
    -- CP-element group 164: 	205 
    -- CP-element group 164: 	191 
    -- CP-element group 164:  members (2) 
      -- CP-element group 164: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8292_update_completed_
      -- CP-element group 164: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8292_update_completed__ps
      -- 
    -- Element group load_store_daemon_CP_356_elements(164) is bound as output of CP function.
    -- CP-element group 165:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 165: predecessors 
    -- CP-element group 165: 	7 
    -- CP-element group 165: successors 
    -- CP-element group 165:  members (1) 
      -- CP-element group 165: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8292_loopback_trigger
      -- 
    load_store_daemon_CP_356_elements(165) <= load_store_daemon_CP_356_elements(7);
    -- CP-element group 166:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 166: predecessors 
    -- CP-element group 166: successors 
    -- CP-element group 166:  members (2) 
      -- CP-element group 166: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8292_loopback_sample_req
      -- CP-element group 166: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8292_loopback_sample_req_ps
      -- 
    phi_stmt_8292_loopback_sample_req_704_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_8292_loopback_sample_req_704_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(166), ack => phi_stmt_8292_req_1); -- 
    -- Element group load_store_daemon_CP_356_elements(166) is bound as output of CP function.
    -- CP-element group 167:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 167: predecessors 
    -- CP-element group 167: 	8 
    -- CP-element group 167: successors 
    -- CP-element group 167:  members (1) 
      -- CP-element group 167: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8292_entry_trigger
      -- 
    load_store_daemon_CP_356_elements(167) <= load_store_daemon_CP_356_elements(8);
    -- CP-element group 168:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 168: predecessors 
    -- CP-element group 168: successors 
    -- CP-element group 168:  members (2) 
      -- CP-element group 168: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8292_entry_sample_req
      -- CP-element group 168: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8292_entry_sample_req_ps
      -- 
    phi_stmt_8292_entry_sample_req_707_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_8292_entry_sample_req_707_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(168), ack => phi_stmt_8292_req_0); -- 
    -- Element group load_store_daemon_CP_356_elements(168) is bound as output of CP function.
    -- CP-element group 169:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 169: predecessors 
    -- CP-element group 169: successors 
    -- CP-element group 169:  members (2) 
      -- CP-element group 169: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8292_phi_mux_ack
      -- CP-element group 169: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8292_phi_mux_ack_ps
      -- 
    phi_stmt_8292_phi_mux_ack_710_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 169_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_8292_ack_0, ack => load_store_daemon_CP_356_elements(169)); -- 
    -- CP-element group 170:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 170: predecessors 
    -- CP-element group 170: successors 
    -- CP-element group 170:  members (4) 
      -- CP-element group 170: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8294_sample_start__ps
      -- CP-element group 170: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8294_sample_completed__ps
      -- CP-element group 170: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8294_sample_start_
      -- CP-element group 170: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8294_sample_completed_
      -- 
    -- Element group load_store_daemon_CP_356_elements(170) is bound as output of CP function.
    -- CP-element group 171:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 171: predecessors 
    -- CP-element group 171: successors 
    -- CP-element group 171: 	173 
    -- CP-element group 171:  members (2) 
      -- CP-element group 171: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8294_update_start__ps
      -- CP-element group 171: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8294_update_start_
      -- 
    -- Element group load_store_daemon_CP_356_elements(171) is bound as output of CP function.
    -- CP-element group 172:  join  transition  bypass  pipeline-parent 
    -- CP-element group 172: predecessors 
    -- CP-element group 172: 	173 
    -- CP-element group 172: successors 
    -- CP-element group 172:  members (1) 
      -- CP-element group 172: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8294_update_completed__ps
      -- 
    load_store_daemon_CP_356_elements(172) <= load_store_daemon_CP_356_elements(173);
    -- CP-element group 173:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 173: predecessors 
    -- CP-element group 173: 	171 
    -- CP-element group 173: successors 
    -- CP-element group 173: 	172 
    -- CP-element group 173:  members (1) 
      -- CP-element group 173: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/konst_8294_update_completed_
      -- 
    -- Element group load_store_daemon_CP_356_elements(173) is a control-delay.
    cp_element_173_delay: control_delay_element  generic map(name => " 173_delay", delay_value => 1)  port map(req => load_store_daemon_CP_356_elements(171), ack => load_store_daemon_CP_356_elements(173), clk => clk, reset =>reset);
    -- CP-element group 174:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 174: predecessors 
    -- CP-element group 174: successors 
    -- CP-element group 174: 	176 
    -- CP-element group 174:  members (1) 
      -- CP-element group 174: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_messy_operation_completed_8296_sample_start__ps
      -- 
    -- Element group load_store_daemon_CP_356_elements(174) is bound as output of CP function.
    -- CP-element group 175:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 175: predecessors 
    -- CP-element group 175: successors 
    -- CP-element group 175: 	177 
    -- CP-element group 175:  members (1) 
      -- CP-element group 175: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_messy_operation_completed_8296_update_start__ps
      -- 
    -- Element group load_store_daemon_CP_356_elements(175) is bound as output of CP function.
    -- CP-element group 176:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 176: predecessors 
    -- CP-element group 176: 	174 
    -- CP-element group 176: marked-predecessors 
    -- CP-element group 176: 	179 
    -- CP-element group 176: successors 
    -- CP-element group 176: 	178 
    -- CP-element group 176:  members (3) 
      -- CP-element group 176: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_messy_operation_completed_8296_sample_start_
      -- CP-element group 176: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_messy_operation_completed_8296_Sample/$entry
      -- CP-element group 176: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_messy_operation_completed_8296_Sample/rr
      -- 
    rr_731_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_731_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(176), ack => RPIPE_messy_operation_completed_8296_inst_req_0); -- 
    load_store_daemon_cp_element_group_176: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 38) := "load_store_daemon_cp_element_group_176"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(174) & load_store_daemon_CP_356_elements(179);
      gj_load_store_daemon_cp_element_group_176 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(176), clk => clk, reset => reset); --
    end block;
    -- CP-element group 177:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 177: predecessors 
    -- CP-element group 177: 	175 
    -- CP-element group 177: 	178 
    -- CP-element group 177: successors 
    -- CP-element group 177: 	179 
    -- CP-element group 177:  members (3) 
      -- CP-element group 177: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_messy_operation_completed_8296_update_start_
      -- CP-element group 177: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_messy_operation_completed_8296_Update/$entry
      -- CP-element group 177: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_messy_operation_completed_8296_Update/cr
      -- 
    cr_736_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_736_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(177), ack => RPIPE_messy_operation_completed_8296_inst_req_1); -- 
    load_store_daemon_cp_element_group_177: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 38) := "load_store_daemon_cp_element_group_177"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(175) & load_store_daemon_CP_356_elements(178);
      gj_load_store_daemon_cp_element_group_177 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(177), clk => clk, reset => reset); --
    end block;
    -- CP-element group 178:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 178: predecessors 
    -- CP-element group 178: 	176 
    -- CP-element group 178: successors 
    -- CP-element group 178: 	177 
    -- CP-element group 178:  members (4) 
      -- CP-element group 178: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_messy_operation_completed_8296_sample_completed__ps
      -- CP-element group 178: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_messy_operation_completed_8296_sample_completed_
      -- CP-element group 178: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_messy_operation_completed_8296_Sample/$exit
      -- CP-element group 178: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_messy_operation_completed_8296_Sample/ra
      -- 
    ra_732_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 178_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_messy_operation_completed_8296_inst_ack_0, ack => load_store_daemon_CP_356_elements(178)); -- 
    -- CP-element group 179:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 179: predecessors 
    -- CP-element group 179: 	177 
    -- CP-element group 179: successors 
    -- CP-element group 179: marked-successors 
    -- CP-element group 179: 	176 
    -- CP-element group 179:  members (4) 
      -- CP-element group 179: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_messy_operation_completed_8296_update_completed__ps
      -- CP-element group 179: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_messy_operation_completed_8296_update_completed_
      -- CP-element group 179: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_messy_operation_completed_8296_Update/$exit
      -- CP-element group 179: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_messy_operation_completed_8296_Update/ca
      -- 
    ca_737_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 179_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_messy_operation_completed_8296_inst_ack_1, ack => load_store_daemon_CP_356_elements(179)); -- 
    -- CP-element group 180:  join  transition  bypass  pipeline-parent 
    -- CP-element group 180: predecessors 
    -- CP-element group 180: 	9 
    -- CP-element group 180: marked-predecessors 
    -- CP-element group 180: 	203 
    -- CP-element group 180: 	206 
    -- CP-element group 180: 	193 
    -- CP-element group 180: successors 
    -- CP-element group 180: 	14 
    -- CP-element group 180:  members (1) 
      -- CP-element group 180: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8297_update_start_
      -- 
    load_store_daemon_cp_element_group_180: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 1,2 => 1,3 => 1);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 38) := "load_store_daemon_cp_element_group_180"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(9) & load_store_daemon_CP_356_elements(203) & load_store_daemon_CP_356_elements(206) & load_store_daemon_CP_356_elements(193);
      gj_load_store_daemon_cp_element_group_180 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(180), clk => clk, reset => reset); --
    end block;
    -- CP-element group 181:  transition  output  bypass  pipeline-parent 
    -- CP-element group 181: predecessors 
    -- CP-element group 181: 	11 
    -- CP-element group 181: successors 
    -- CP-element group 181: 	183 
    -- CP-element group 181:  members (3) 
      -- CP-element group 181: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_THREAD_ID_8299_sample_start_
      -- CP-element group 181: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_THREAD_ID_8299_Sample/$entry
      -- CP-element group 181: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_THREAD_ID_8299_Sample/req
      -- 
    req_750_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_750_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(181), ack => RPIPE_THREAD_ID_8299_wire_8299_buf_req_0); -- 
    load_store_daemon_CP_356_elements(181) <= load_store_daemon_CP_356_elements(11);
    -- CP-element group 182:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 182: predecessors 
    -- CP-element group 182: 	14 
    -- CP-element group 182: 	18 
    -- CP-element group 182: 	38 
    -- CP-element group 182: 	59 
    -- CP-element group 182: 	80 
    -- CP-element group 182: 	101 
    -- CP-element group 182: successors 
    -- CP-element group 182: 	184 
    -- CP-element group 182:  members (3) 
      -- CP-element group 182: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_THREAD_ID_8299_update_start_
      -- CP-element group 182: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_THREAD_ID_8299_Update/$entry
      -- CP-element group 182: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_THREAD_ID_8299_Update/req
      -- 
    req_755_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_755_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(182), ack => RPIPE_THREAD_ID_8299_wire_8299_buf_req_1); -- 
    load_store_daemon_cp_element_group_182: block -- 
      constant place_capacities: IntegerArray(0 to 5) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1);
      constant place_markings: IntegerArray(0 to 5)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0);
      constant place_delays: IntegerArray(0 to 5) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0);
      constant joinName: string(1 to 38) := "load_store_daemon_cp_element_group_182"; 
      signal preds: BooleanArray(1 to 6); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(14) & load_store_daemon_CP_356_elements(18) & load_store_daemon_CP_356_elements(38) & load_store_daemon_CP_356_elements(59) & load_store_daemon_CP_356_elements(80) & load_store_daemon_CP_356_elements(101);
      gj_load_store_daemon_cp_element_group_182 : generic_join generic map(name => joinName, number_of_predecessors => 6, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(182), clk => clk, reset => reset); --
    end block;
    -- CP-element group 183:  transition  input  bypass  pipeline-parent 
    -- CP-element group 183: predecessors 
    -- CP-element group 183: 	181 
    -- CP-element group 183: successors 
    -- CP-element group 183: 	12 
    -- CP-element group 183:  members (3) 
      -- CP-element group 183: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_THREAD_ID_8299_sample_completed_
      -- CP-element group 183: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_THREAD_ID_8299_Sample/$exit
      -- CP-element group 183: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_THREAD_ID_8299_Sample/ack
      -- 
    ack_751_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 183_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_THREAD_ID_8299_wire_8299_buf_ack_0, ack => load_store_daemon_CP_356_elements(183)); -- 
    -- CP-element group 184:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 184: predecessors 
    -- CP-element group 184: 	182 
    -- CP-element group 184: successors 
    -- CP-element group 184: 	15 
    -- CP-element group 184: 	202 
    -- CP-element group 184: 	205 
    -- CP-element group 184: 	191 
    -- CP-element group 184:  members (4) 
      -- CP-element group 184: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/phi_stmt_8297_update_completed_
      -- CP-element group 184: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_THREAD_ID_8299_update_completed_
      -- CP-element group 184: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_THREAD_ID_8299_Update/$exit
      -- CP-element group 184: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/RPIPE_THREAD_ID_8299_Update/ack
      -- 
    ack_756_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 184_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_THREAD_ID_8299_wire_8299_buf_ack_1, ack => load_store_daemon_CP_356_elements(184)); -- 
    -- CP-element group 185:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 185: predecessors 
    -- CP-element group 185: 	40 
    -- CP-element group 185: 	145 
    -- CP-element group 185: marked-predecessors 
    -- CP-element group 185: 	187 
    -- CP-element group 185: successors 
    -- CP-element group 185: 	186 
    -- CP-element group 185:  members (3) 
      -- CP-element group 185: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_8681_sample_start_
      -- CP-element group 185: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_8681_Sample/$entry
      -- CP-element group 185: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_8681_Sample/req
      -- 
    req_764_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_764_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(185), ack => WPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_8681_inst_req_0); -- 
    load_store_daemon_cp_element_group_185: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 38) := "load_store_daemon_cp_element_group_185"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(40) & load_store_daemon_CP_356_elements(145) & load_store_daemon_CP_356_elements(187);
      gj_load_store_daemon_cp_element_group_185 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(185), clk => clk, reset => reset); --
    end block;
    -- CP-element group 186:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 186: predecessors 
    -- CP-element group 186: 	185 
    -- CP-element group 186: successors 
    -- CP-element group 186: 	187 
    -- CP-element group 186: marked-successors 
    -- CP-element group 186: 	36 
    -- CP-element group 186: 	141 
    -- CP-element group 186:  members (6) 
      -- CP-element group 186: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_8681_sample_completed_
      -- CP-element group 186: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_8681_update_start_
      -- CP-element group 186: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_8681_Sample/$exit
      -- CP-element group 186: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_8681_Sample/ack
      -- CP-element group 186: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_8681_Update/$entry
      -- CP-element group 186: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_8681_Update/req
      -- 
    ack_765_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 186_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_8681_inst_ack_0, ack => load_store_daemon_CP_356_elements(186)); -- 
    req_769_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_769_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(186), ack => WPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_8681_inst_req_1); -- 
    -- CP-element group 187:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 187: predecessors 
    -- CP-element group 187: 	186 
    -- CP-element group 187: successors 
    -- CP-element group 187: 	209 
    -- CP-element group 187: marked-successors 
    -- CP-element group 187: 	185 
    -- CP-element group 187:  members (3) 
      -- CP-element group 187: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_8681_update_completed_
      -- CP-element group 187: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_8681_Update/$exit
      -- CP-element group 187: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_8681_Update/ack
      -- 
    ack_770_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 187_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_8681_inst_ack_1, ack => load_store_daemon_CP_356_elements(187)); -- 
    -- CP-element group 188:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 188: predecessors 
    -- CP-element group 188: 	82 
    -- CP-element group 188: 	145 
    -- CP-element group 188: marked-predecessors 
    -- CP-element group 188: 	190 
    -- CP-element group 188: successors 
    -- CP-element group 188: 	189 
    -- CP-element group 188:  members (3) 
      -- CP-element group 188: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_8762_sample_start_
      -- CP-element group 188: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_8762_Sample/$entry
      -- CP-element group 188: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_8762_Sample/req
      -- 
    req_778_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_778_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(188), ack => WPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_8762_inst_req_0); -- 
    load_store_daemon_cp_element_group_188: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 38) := "load_store_daemon_cp_element_group_188"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(82) & load_store_daemon_CP_356_elements(145) & load_store_daemon_CP_356_elements(190);
      gj_load_store_daemon_cp_element_group_188 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(188), clk => clk, reset => reset); --
    end block;
    -- CP-element group 189:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 189: predecessors 
    -- CP-element group 189: 	188 
    -- CP-element group 189: successors 
    -- CP-element group 189: 	190 
    -- CP-element group 189: marked-successors 
    -- CP-element group 189: 	78 
    -- CP-element group 189: 	141 
    -- CP-element group 189:  members (6) 
      -- CP-element group 189: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_8762_sample_completed_
      -- CP-element group 189: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_8762_update_start_
      -- CP-element group 189: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_8762_Sample/$exit
      -- CP-element group 189: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_8762_Sample/ack
      -- CP-element group 189: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_8762_Update/$entry
      -- CP-element group 189: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_8762_Update/req
      -- 
    ack_779_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 189_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_8762_inst_ack_0, ack => load_store_daemon_CP_356_elements(189)); -- 
    req_783_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_783_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(189), ack => WPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_8762_inst_req_1); -- 
    -- CP-element group 190:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 190: predecessors 
    -- CP-element group 190: 	189 
    -- CP-element group 190: successors 
    -- CP-element group 190: 	209 
    -- CP-element group 190: marked-successors 
    -- CP-element group 190: 	188 
    -- CP-element group 190:  members (3) 
      -- CP-element group 190: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_8762_update_completed_
      -- CP-element group 190: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_8762_Update/$exit
      -- CP-element group 190: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_8762_Update/ack
      -- 
    ack_784_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 190_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_8762_inst_ack_1, ack => load_store_daemon_CP_356_elements(190)); -- 
    -- CP-element group 191:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 191: predecessors 
    -- CP-element group 191: 	19 
    -- CP-element group 191: 	40 
    -- CP-element group 191: 	184 
    -- CP-element group 191: 	164 
    -- CP-element group 191: 	61 
    -- CP-element group 191: 	82 
    -- CP-element group 191: 	103 
    -- CP-element group 191: 	145 
    -- CP-element group 191: successors 
    -- CP-element group 191: 	193 
    -- CP-element group 191:  members (3) 
      -- CP-element group 191: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/call_stmt_9243_sample_start_
      -- CP-element group 191: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/call_stmt_9243_Sample/$entry
      -- CP-element group 191: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/call_stmt_9243_Sample/crr
      -- 
    crr_792_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " crr_792_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(191), ack => call_stmt_9243_call_req_0); -- 
    load_store_daemon_cp_element_group_191: block -- 
      constant place_capacities: IntegerArray(0 to 7) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1);
      constant place_markings: IntegerArray(0 to 7)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0);
      constant place_delays: IntegerArray(0 to 7) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0);
      constant joinName: string(1 to 38) := "load_store_daemon_cp_element_group_191"; 
      signal preds: BooleanArray(1 to 8); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(19) & load_store_daemon_CP_356_elements(40) & load_store_daemon_CP_356_elements(184) & load_store_daemon_CP_356_elements(164) & load_store_daemon_CP_356_elements(61) & load_store_daemon_CP_356_elements(82) & load_store_daemon_CP_356_elements(103) & load_store_daemon_CP_356_elements(145);
      gj_load_store_daemon_cp_element_group_191 : generic_join generic map(name => joinName, number_of_predecessors => 8, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(191), clk => clk, reset => reset); --
    end block;
    -- CP-element group 192:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 192: predecessors 
    -- CP-element group 192: marked-predecessors 
    -- CP-element group 192: 	200 
    -- CP-element group 192: successors 
    -- CP-element group 192: 	194 
    -- CP-element group 192:  members (3) 
      -- CP-element group 192: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/call_stmt_9243_update_start_
      -- CP-element group 192: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/call_stmt_9243_Update/$entry
      -- CP-element group 192: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/call_stmt_9243_Update/ccr
      -- 
    ccr_797_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " ccr_797_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(192), ack => call_stmt_9243_call_req_1); -- 
    load_store_daemon_cp_element_group_192: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 38) := "load_store_daemon_cp_element_group_192"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= load_store_daemon_CP_356_elements(200);
      gj_load_store_daemon_cp_element_group_192 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(192), clk => clk, reset => reset); --
    end block;
    -- CP-element group 193:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 193: predecessors 
    -- CP-element group 193: 	191 
    -- CP-element group 193: successors 
    -- CP-element group 193: marked-successors 
    -- CP-element group 193: 	17 
    -- CP-element group 193: 	36 
    -- CP-element group 193: 	160 
    -- CP-element group 193: 	180 
    -- CP-element group 193: 	57 
    -- CP-element group 193: 	78 
    -- CP-element group 193: 	99 
    -- CP-element group 193: 	141 
    -- CP-element group 193:  members (3) 
      -- CP-element group 193: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/call_stmt_9243_sample_completed_
      -- CP-element group 193: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/call_stmt_9243_Sample/$exit
      -- CP-element group 193: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/call_stmt_9243_Sample/cra
      -- 
    cra_793_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 193_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_9243_call_ack_0, ack => load_store_daemon_CP_356_elements(193)); -- 
    -- CP-element group 194:  transition  input  bypass  pipeline-parent 
    -- CP-element group 194: predecessors 
    -- CP-element group 194: 	192 
    -- CP-element group 194: successors 
    -- CP-element group 194: 	199 
    -- CP-element group 194:  members (3) 
      -- CP-element group 194: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/call_stmt_9243_update_completed_
      -- CP-element group 194: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/call_stmt_9243_Update/$exit
      -- CP-element group 194: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/call_stmt_9243_Update/cca
      -- 
    cca_798_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 194_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_9243_call_ack_1, ack => load_store_daemon_CP_356_elements(194)); -- 
    -- CP-element group 195:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 195: predecessors 
    -- CP-element group 195: 	19 
    -- CP-element group 195: 	40 
    -- CP-element group 195: 	164 
    -- CP-element group 195: 	61 
    -- CP-element group 195: 	103 
    -- CP-element group 195: 	145 
    -- CP-element group 195: successors 
    -- CP-element group 195: 	197 
    -- CP-element group 195:  members (3) 
      -- CP-element group 195: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/assign_stmt_9257_sample_start_
      -- CP-element group 195: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/assign_stmt_9257_Sample/$entry
      -- CP-element group 195: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/assign_stmt_9257_Sample/req
      -- 
    req_806_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_806_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(195), ack => W_run_messy_load_store_op_qualified_9527_delayed_3_0_9255_inst_req_0); -- 
    load_store_daemon_cp_element_group_195: block -- 
      constant place_capacities: IntegerArray(0 to 5) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1);
      constant place_markings: IntegerArray(0 to 5)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0);
      constant place_delays: IntegerArray(0 to 5) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0);
      constant joinName: string(1 to 38) := "load_store_daemon_cp_element_group_195"; 
      signal preds: BooleanArray(1 to 6); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(19) & load_store_daemon_CP_356_elements(40) & load_store_daemon_CP_356_elements(164) & load_store_daemon_CP_356_elements(61) & load_store_daemon_CP_356_elements(103) & load_store_daemon_CP_356_elements(145);
      gj_load_store_daemon_cp_element_group_195 : generic_join generic map(name => joinName, number_of_predecessors => 6, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(195), clk => clk, reset => reset); --
    end block;
    -- CP-element group 196:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 196: predecessors 
    -- CP-element group 196: marked-predecessors 
    -- CP-element group 196: 	200 
    -- CP-element group 196: successors 
    -- CP-element group 196: 	198 
    -- CP-element group 196:  members (3) 
      -- CP-element group 196: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/assign_stmt_9257_update_start_
      -- CP-element group 196: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/assign_stmt_9257_Update/$entry
      -- CP-element group 196: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/assign_stmt_9257_Update/req
      -- 
    req_811_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_811_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(196), ack => W_run_messy_load_store_op_qualified_9527_delayed_3_0_9255_inst_req_1); -- 
    load_store_daemon_cp_element_group_196: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 38) := "load_store_daemon_cp_element_group_196"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= load_store_daemon_CP_356_elements(200);
      gj_load_store_daemon_cp_element_group_196 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(196), clk => clk, reset => reset); --
    end block;
    -- CP-element group 197:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 197: predecessors 
    -- CP-element group 197: 	195 
    -- CP-element group 197: successors 
    -- CP-element group 197: marked-successors 
    -- CP-element group 197: 	17 
    -- CP-element group 197: 	36 
    -- CP-element group 197: 	160 
    -- CP-element group 197: 	57 
    -- CP-element group 197: 	99 
    -- CP-element group 197: 	141 
    -- CP-element group 197:  members (3) 
      -- CP-element group 197: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/assign_stmt_9257_sample_completed_
      -- CP-element group 197: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/assign_stmt_9257_Sample/$exit
      -- CP-element group 197: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/assign_stmt_9257_Sample/ack
      -- 
    ack_807_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 197_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_run_messy_load_store_op_qualified_9527_delayed_3_0_9255_inst_ack_0, ack => load_store_daemon_CP_356_elements(197)); -- 
    -- CP-element group 198:  transition  input  bypass  pipeline-parent 
    -- CP-element group 198: predecessors 
    -- CP-element group 198: 	196 
    -- CP-element group 198: successors 
    -- CP-element group 198: 	199 
    -- CP-element group 198:  members (3) 
      -- CP-element group 198: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/assign_stmt_9257_update_completed_
      -- CP-element group 198: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/assign_stmt_9257_Update/$exit
      -- CP-element group 198: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/assign_stmt_9257_Update/ack
      -- 
    ack_812_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 198_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_run_messy_load_store_op_qualified_9527_delayed_3_0_9255_inst_ack_1, ack => load_store_daemon_CP_356_elements(198)); -- 
    -- CP-element group 199:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 199: predecessors 
    -- CP-element group 199: 	194 
    -- CP-element group 199: 	198 
    -- CP-element group 199: marked-predecessors 
    -- CP-element group 199: 	201 
    -- CP-element group 199: successors 
    -- CP-element group 199: 	200 
    -- CP-element group 199:  members (3) 
      -- CP-element group 199: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_load_store_messy_to_router_pipe_9259_sample_start_
      -- CP-element group 199: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_load_store_messy_to_router_pipe_9259_Sample/$entry
      -- CP-element group 199: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_load_store_messy_to_router_pipe_9259_Sample/req
      -- 
    req_820_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_820_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(199), ack => WPIPE_load_store_messy_to_router_pipe_9259_inst_req_0); -- 
    load_store_daemon_cp_element_group_199: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 38) := "load_store_daemon_cp_element_group_199"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(194) & load_store_daemon_CP_356_elements(198) & load_store_daemon_CP_356_elements(201);
      gj_load_store_daemon_cp_element_group_199 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(199), clk => clk, reset => reset); --
    end block;
    -- CP-element group 200:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 200: predecessors 
    -- CP-element group 200: 	199 
    -- CP-element group 200: successors 
    -- CP-element group 200: 	201 
    -- CP-element group 200: marked-successors 
    -- CP-element group 200: 	196 
    -- CP-element group 200: 	192 
    -- CP-element group 200:  members (6) 
      -- CP-element group 200: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_load_store_messy_to_router_pipe_9259_sample_completed_
      -- CP-element group 200: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_load_store_messy_to_router_pipe_9259_update_start_
      -- CP-element group 200: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_load_store_messy_to_router_pipe_9259_Sample/$exit
      -- CP-element group 200: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_load_store_messy_to_router_pipe_9259_Sample/ack
      -- CP-element group 200: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_load_store_messy_to_router_pipe_9259_Update/$entry
      -- CP-element group 200: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_load_store_messy_to_router_pipe_9259_Update/req
      -- 
    ack_821_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 200_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_load_store_messy_to_router_pipe_9259_inst_ack_0, ack => load_store_daemon_CP_356_elements(200)); -- 
    req_825_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_825_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(200), ack => WPIPE_load_store_messy_to_router_pipe_9259_inst_req_1); -- 
    -- CP-element group 201:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 201: predecessors 
    -- CP-element group 201: 	200 
    -- CP-element group 201: successors 
    -- CP-element group 201: 	209 
    -- CP-element group 201: marked-successors 
    -- CP-element group 201: 	199 
    -- CP-element group 201:  members (3) 
      -- CP-element group 201: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_load_store_messy_to_router_pipe_9259_update_completed_
      -- CP-element group 201: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_load_store_messy_to_router_pipe_9259_Update/$exit
      -- CP-element group 201: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_load_store_messy_to_router_pipe_9259_Update/ack
      -- 
    ack_826_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 201_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_load_store_messy_to_router_pipe_9259_inst_ack_1, ack => load_store_daemon_CP_356_elements(201)); -- 
    -- CP-element group 202:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 202: predecessors 
    -- CP-element group 202: 	19 
    -- CP-element group 202: 	40 
    -- CP-element group 202: 	184 
    -- CP-element group 202: 	164 
    -- CP-element group 202: 	61 
    -- CP-element group 202: 	82 
    -- CP-element group 202: 	103 
    -- CP-element group 202: 	145 
    -- CP-element group 202: marked-predecessors 
    -- CP-element group 202: 	204 
    -- CP-element group 202: successors 
    -- CP-element group 202: 	203 
    -- CP-element group 202:  members (3) 
      -- CP-element group 202: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_NOBLOCK_CPU_to_DCACHE_command_9370_sample_start_
      -- CP-element group 202: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_NOBLOCK_CPU_to_DCACHE_command_9370_Sample/$entry
      -- CP-element group 202: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_NOBLOCK_CPU_to_DCACHE_command_9370_Sample/req
      -- 
    req_834_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_834_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(202), ack => WPIPE_NOBLOCK_CPU_to_DCACHE_command_9370_inst_req_0); -- 
    load_store_daemon_cp_element_group_202: block -- 
      constant place_capacities: IntegerArray(0 to 8) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1);
      constant place_markings: IntegerArray(0 to 8)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 1);
      constant place_delays: IntegerArray(0 to 8) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0);
      constant joinName: string(1 to 38) := "load_store_daemon_cp_element_group_202"; 
      signal preds: BooleanArray(1 to 9); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(19) & load_store_daemon_CP_356_elements(40) & load_store_daemon_CP_356_elements(184) & load_store_daemon_CP_356_elements(164) & load_store_daemon_CP_356_elements(61) & load_store_daemon_CP_356_elements(82) & load_store_daemon_CP_356_elements(103) & load_store_daemon_CP_356_elements(145) & load_store_daemon_CP_356_elements(204);
      gj_load_store_daemon_cp_element_group_202 : generic_join generic map(name => joinName, number_of_predecessors => 9, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(202), clk => clk, reset => reset); --
    end block;
    -- CP-element group 203:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 203: predecessors 
    -- CP-element group 203: 	202 
    -- CP-element group 203: successors 
    -- CP-element group 203: 	204 
    -- CP-element group 203: marked-successors 
    -- CP-element group 203: 	17 
    -- CP-element group 203: 	36 
    -- CP-element group 203: 	160 
    -- CP-element group 203: 	180 
    -- CP-element group 203: 	57 
    -- CP-element group 203: 	78 
    -- CP-element group 203: 	99 
    -- CP-element group 203: 	141 
    -- CP-element group 203:  members (6) 
      -- CP-element group 203: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_NOBLOCK_CPU_to_DCACHE_command_9370_sample_completed_
      -- CP-element group 203: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_NOBLOCK_CPU_to_DCACHE_command_9370_update_start_
      -- CP-element group 203: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_NOBLOCK_CPU_to_DCACHE_command_9370_Sample/$exit
      -- CP-element group 203: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_NOBLOCK_CPU_to_DCACHE_command_9370_Sample/ack
      -- CP-element group 203: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_NOBLOCK_CPU_to_DCACHE_command_9370_Update/$entry
      -- CP-element group 203: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_NOBLOCK_CPU_to_DCACHE_command_9370_Update/req
      -- 
    ack_835_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 203_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_NOBLOCK_CPU_to_DCACHE_command_9370_inst_ack_0, ack => load_store_daemon_CP_356_elements(203)); -- 
    req_839_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_839_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(203), ack => WPIPE_NOBLOCK_CPU_to_DCACHE_command_9370_inst_req_1); -- 
    -- CP-element group 204:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 204: predecessors 
    -- CP-element group 204: 	203 
    -- CP-element group 204: successors 
    -- CP-element group 204: 	209 
    -- CP-element group 204: marked-successors 
    -- CP-element group 204: 	202 
    -- CP-element group 204:  members (3) 
      -- CP-element group 204: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_NOBLOCK_CPU_to_DCACHE_command_9370_update_completed_
      -- CP-element group 204: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_NOBLOCK_CPU_to_DCACHE_command_9370_Update/$exit
      -- CP-element group 204: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_NOBLOCK_CPU_to_DCACHE_command_9370_Update/ack
      -- 
    ack_840_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 204_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_NOBLOCK_CPU_to_DCACHE_command_9370_inst_ack_1, ack => load_store_daemon_CP_356_elements(204)); -- 
    -- CP-element group 205:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 205: predecessors 
    -- CP-element group 205: 	19 
    -- CP-element group 205: 	40 
    -- CP-element group 205: 	184 
    -- CP-element group 205: 	164 
    -- CP-element group 205: 	61 
    -- CP-element group 205: 	82 
    -- CP-element group 205: 	103 
    -- CP-element group 205: 	145 
    -- CP-element group 205: marked-predecessors 
    -- CP-element group 205: 	207 
    -- CP-element group 205: successors 
    -- CP-element group 205: 	206 
    -- CP-element group 205:  members (3) 
      -- CP-element group 205: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_load_store_router_control_pipe_9436_sample_start_
      -- CP-element group 205: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_load_store_router_control_pipe_9436_Sample/$entry
      -- CP-element group 205: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_load_store_router_control_pipe_9436_Sample/req
      -- 
    req_848_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_848_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(205), ack => WPIPE_load_store_router_control_pipe_9436_inst_req_0); -- 
    load_store_daemon_cp_element_group_205: block -- 
      constant place_capacities: IntegerArray(0 to 8) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1);
      constant place_markings: IntegerArray(0 to 8)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 1);
      constant place_delays: IntegerArray(0 to 8) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0);
      constant joinName: string(1 to 38) := "load_store_daemon_cp_element_group_205"; 
      signal preds: BooleanArray(1 to 9); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(19) & load_store_daemon_CP_356_elements(40) & load_store_daemon_CP_356_elements(184) & load_store_daemon_CP_356_elements(164) & load_store_daemon_CP_356_elements(61) & load_store_daemon_CP_356_elements(82) & load_store_daemon_CP_356_elements(103) & load_store_daemon_CP_356_elements(145) & load_store_daemon_CP_356_elements(207);
      gj_load_store_daemon_cp_element_group_205 : generic_join generic map(name => joinName, number_of_predecessors => 9, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(205), clk => clk, reset => reset); --
    end block;
    -- CP-element group 206:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 206: predecessors 
    -- CP-element group 206: 	205 
    -- CP-element group 206: successors 
    -- CP-element group 206: 	207 
    -- CP-element group 206: marked-successors 
    -- CP-element group 206: 	17 
    -- CP-element group 206: 	36 
    -- CP-element group 206: 	160 
    -- CP-element group 206: 	180 
    -- CP-element group 206: 	57 
    -- CP-element group 206: 	78 
    -- CP-element group 206: 	99 
    -- CP-element group 206: 	141 
    -- CP-element group 206:  members (6) 
      -- CP-element group 206: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_load_store_router_control_pipe_9436_sample_completed_
      -- CP-element group 206: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_load_store_router_control_pipe_9436_update_start_
      -- CP-element group 206: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_load_store_router_control_pipe_9436_Sample/$exit
      -- CP-element group 206: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_load_store_router_control_pipe_9436_Sample/ack
      -- CP-element group 206: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_load_store_router_control_pipe_9436_Update/$entry
      -- CP-element group 206: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_load_store_router_control_pipe_9436_Update/req
      -- 
    ack_849_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 206_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_load_store_router_control_pipe_9436_inst_ack_0, ack => load_store_daemon_CP_356_elements(206)); -- 
    req_853_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_853_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => load_store_daemon_CP_356_elements(206), ack => WPIPE_load_store_router_control_pipe_9436_inst_req_1); -- 
    -- CP-element group 207:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 207: predecessors 
    -- CP-element group 207: 	206 
    -- CP-element group 207: successors 
    -- CP-element group 207: 	209 
    -- CP-element group 207: marked-successors 
    -- CP-element group 207: 	205 
    -- CP-element group 207:  members (3) 
      -- CP-element group 207: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_load_store_router_control_pipe_9436_update_completed_
      -- CP-element group 207: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_load_store_router_control_pipe_9436_Update/$exit
      -- CP-element group 207: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/WPIPE_load_store_router_control_pipe_9436_Update/ack
      -- 
    ack_854_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 207_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_load_store_router_control_pipe_9436_inst_ack_1, ack => load_store_daemon_CP_356_elements(207)); -- 
    -- CP-element group 208:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 208: predecessors 
    -- CP-element group 208: 	9 
    -- CP-element group 208: successors 
    -- CP-element group 208: 	10 
    -- CP-element group 208:  members (1) 
      -- CP-element group 208: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/loop_body_delay_to_condition_start
      -- 
    -- Element group load_store_daemon_CP_356_elements(208) is a control-delay.
    cp_element_208_delay: control_delay_element  generic map(name => " 208_delay", delay_value => 1)  port map(req => load_store_daemon_CP_356_elements(9), ack => load_store_daemon_CP_356_elements(208), clk => clk, reset =>reset);
    -- CP-element group 209:  join  transition  bypass  pipeline-parent 
    -- CP-element group 209: predecessors 
    -- CP-element group 209: 	12 
    -- CP-element group 209: 	201 
    -- CP-element group 209: 	204 
    -- CP-element group 209: 	207 
    -- CP-element group 209: 	187 
    -- CP-element group 209: 	190 
    -- CP-element group 209: successors 
    -- CP-element group 209: 	6 
    -- CP-element group 209:  members (1) 
      -- CP-element group 209: 	 branch_block_stmt_8256/do_while_stmt_8257/do_while_stmt_8257_loop_body/$exit
      -- 
    load_store_daemon_cp_element_group_209: block -- 
      constant place_capacities: IntegerArray(0 to 5) := (0 => 15,1 => 15,2 => 15,3 => 15,4 => 15,5 => 15);
      constant place_markings: IntegerArray(0 to 5)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0);
      constant place_delays: IntegerArray(0 to 5) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0);
      constant joinName: string(1 to 38) := "load_store_daemon_cp_element_group_209"; 
      signal preds: BooleanArray(1 to 6); -- 
    begin -- 
      preds <= load_store_daemon_CP_356_elements(12) & load_store_daemon_CP_356_elements(201) & load_store_daemon_CP_356_elements(204) & load_store_daemon_CP_356_elements(207) & load_store_daemon_CP_356_elements(187) & load_store_daemon_CP_356_elements(190);
      gj_load_store_daemon_cp_element_group_209 : generic_join generic map(name => joinName, number_of_predecessors => 6, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => load_store_daemon_CP_356_elements(209), clk => clk, reset => reset); --
    end block;
    -- CP-element group 210:  transition  input  bypass  pipeline-parent 
    -- CP-element group 210: predecessors 
    -- CP-element group 210: 	5 
    -- CP-element group 210: successors 
    -- CP-element group 210:  members (2) 
      -- CP-element group 210: 	 branch_block_stmt_8256/do_while_stmt_8257/loop_exit/$exit
      -- CP-element group 210: 	 branch_block_stmt_8256/do_while_stmt_8257/loop_exit/ack
      -- 
    ack_859_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 210_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_8257_branch_ack_0, ack => load_store_daemon_CP_356_elements(210)); -- 
    -- CP-element group 211:  transition  input  bypass  pipeline-parent 
    -- CP-element group 211: predecessors 
    -- CP-element group 211: 	5 
    -- CP-element group 211: successors 
    -- CP-element group 211:  members (2) 
      -- CP-element group 211: 	 branch_block_stmt_8256/do_while_stmt_8257/loop_taken/$exit
      -- CP-element group 211: 	 branch_block_stmt_8256/do_while_stmt_8257/loop_taken/ack
      -- 
    ack_863_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 211_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_8257_branch_ack_1, ack => load_store_daemon_CP_356_elements(211)); -- 
    -- CP-element group 212:  transition  bypass  pipeline-parent 
    -- CP-element group 212: predecessors 
    -- CP-element group 212: 	3 
    -- CP-element group 212: successors 
    -- CP-element group 212: 	1 
    -- CP-element group 212:  members (1) 
      -- CP-element group 212: 	 branch_block_stmt_8256/do_while_stmt_8257/$exit
      -- 
    load_store_daemon_CP_356_elements(212) <= load_store_daemon_CP_356_elements(3);
    load_store_daemon_do_while_stmt_8257_terminator_864: loop_terminator -- 
      generic map (name => " load_store_daemon_do_while_stmt_8257_terminator_864", max_iterations_in_flight =>15) 
      port map(loop_body_exit => load_store_daemon_CP_356_elements(6),loop_continue => load_store_daemon_CP_356_elements(211),loop_terminate => load_store_daemon_CP_356_elements(210),loop_back => load_store_daemon_CP_356_elements(4),loop_exit => load_store_daemon_CP_356_elements(3),clk => clk, reset => reset); -- 
    phi_stmt_8259_phi_seq_430_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= load_store_daemon_CP_356_elements(22);
      load_store_daemon_CP_356_elements(25)<= src_sample_reqs(0);
      src_sample_acks(0)  <= load_store_daemon_CP_356_elements(25);
      load_store_daemon_CP_356_elements(26)<= src_update_reqs(0);
      src_update_acks(0)  <= load_store_daemon_CP_356_elements(27);
      load_store_daemon_CP_356_elements(23) <= phi_mux_reqs(0);
      triggers(1)  <= load_store_daemon_CP_356_elements(20);
      load_store_daemon_CP_356_elements(29)<= src_sample_reqs(1);
      src_sample_acks(1)  <= load_store_daemon_CP_356_elements(33);
      load_store_daemon_CP_356_elements(30)<= src_update_reqs(1);
      src_update_acks(1)  <= load_store_daemon_CP_356_elements(34);
      load_store_daemon_CP_356_elements(21) <= phi_mux_reqs(1);
      phi_stmt_8259_phi_seq_430 : phi_sequencer_v2-- 
        generic map (place_capacity => 15, ntriggers => 2, name => "phi_stmt_8259_phi_seq_430") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => load_store_daemon_CP_356_elements(11), 
          phi_sample_ack => load_store_daemon_CP_356_elements(18), 
          phi_update_req => load_store_daemon_CP_356_elements(14), 
          phi_update_ack => load_store_daemon_CP_356_elements(19), 
          phi_mux_ack => load_store_daemon_CP_356_elements(24), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_8264_phi_seq_474_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= load_store_daemon_CP_356_elements(43);
      load_store_daemon_CP_356_elements(46)<= src_sample_reqs(0);
      src_sample_acks(0)  <= load_store_daemon_CP_356_elements(46);
      load_store_daemon_CP_356_elements(47)<= src_update_reqs(0);
      src_update_acks(0)  <= load_store_daemon_CP_356_elements(48);
      load_store_daemon_CP_356_elements(44) <= phi_mux_reqs(0);
      triggers(1)  <= load_store_daemon_CP_356_elements(41);
      load_store_daemon_CP_356_elements(50)<= src_sample_reqs(1);
      src_sample_acks(1)  <= load_store_daemon_CP_356_elements(54);
      load_store_daemon_CP_356_elements(51)<= src_update_reqs(1);
      src_update_acks(1)  <= load_store_daemon_CP_356_elements(55);
      load_store_daemon_CP_356_elements(42) <= phi_mux_reqs(1);
      phi_stmt_8264_phi_seq_474 : phi_sequencer_v2-- 
        generic map (place_capacity => 15, ntriggers => 2, name => "phi_stmt_8264_phi_seq_474") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => load_store_daemon_CP_356_elements(37), 
          phi_sample_ack => load_store_daemon_CP_356_elements(38), 
          phi_update_req => load_store_daemon_CP_356_elements(39), 
          phi_update_ack => load_store_daemon_CP_356_elements(40), 
          phi_mux_ack => load_store_daemon_CP_356_elements(45), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_8269_phi_seq_518_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= load_store_daemon_CP_356_elements(64);
      load_store_daemon_CP_356_elements(67)<= src_sample_reqs(0);
      src_sample_acks(0)  <= load_store_daemon_CP_356_elements(67);
      load_store_daemon_CP_356_elements(68)<= src_update_reqs(0);
      src_update_acks(0)  <= load_store_daemon_CP_356_elements(69);
      load_store_daemon_CP_356_elements(65) <= phi_mux_reqs(0);
      triggers(1)  <= load_store_daemon_CP_356_elements(62);
      load_store_daemon_CP_356_elements(71)<= src_sample_reqs(1);
      src_sample_acks(1)  <= load_store_daemon_CP_356_elements(75);
      load_store_daemon_CP_356_elements(72)<= src_update_reqs(1);
      src_update_acks(1)  <= load_store_daemon_CP_356_elements(76);
      load_store_daemon_CP_356_elements(63) <= phi_mux_reqs(1);
      phi_stmt_8269_phi_seq_518 : phi_sequencer_v2-- 
        generic map (place_capacity => 15, ntriggers => 2, name => "phi_stmt_8269_phi_seq_518") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => load_store_daemon_CP_356_elements(58), 
          phi_sample_ack => load_store_daemon_CP_356_elements(59), 
          phi_update_req => load_store_daemon_CP_356_elements(60), 
          phi_update_ack => load_store_daemon_CP_356_elements(61), 
          phi_mux_ack => load_store_daemon_CP_356_elements(66), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_8274_phi_seq_562_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= load_store_daemon_CP_356_elements(85);
      load_store_daemon_CP_356_elements(88)<= src_sample_reqs(0);
      src_sample_acks(0)  <= load_store_daemon_CP_356_elements(88);
      load_store_daemon_CP_356_elements(89)<= src_update_reqs(0);
      src_update_acks(0)  <= load_store_daemon_CP_356_elements(90);
      load_store_daemon_CP_356_elements(86) <= phi_mux_reqs(0);
      triggers(1)  <= load_store_daemon_CP_356_elements(83);
      load_store_daemon_CP_356_elements(92)<= src_sample_reqs(1);
      src_sample_acks(1)  <= load_store_daemon_CP_356_elements(96);
      load_store_daemon_CP_356_elements(93)<= src_update_reqs(1);
      src_update_acks(1)  <= load_store_daemon_CP_356_elements(97);
      load_store_daemon_CP_356_elements(84) <= phi_mux_reqs(1);
      phi_stmt_8274_phi_seq_562 : phi_sequencer_v2-- 
        generic map (place_capacity => 15, ntriggers => 2, name => "phi_stmt_8274_phi_seq_562") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => load_store_daemon_CP_356_elements(79), 
          phi_sample_ack => load_store_daemon_CP_356_elements(80), 
          phi_update_req => load_store_daemon_CP_356_elements(81), 
          phi_update_ack => load_store_daemon_CP_356_elements(82), 
          phi_mux_ack => load_store_daemon_CP_356_elements(87), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_8279_phi_seq_606_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= load_store_daemon_CP_356_elements(106);
      load_store_daemon_CP_356_elements(109)<= src_sample_reqs(0);
      src_sample_acks(0)  <= load_store_daemon_CP_356_elements(109);
      load_store_daemon_CP_356_elements(110)<= src_update_reqs(0);
      src_update_acks(0)  <= load_store_daemon_CP_356_elements(111);
      load_store_daemon_CP_356_elements(107) <= phi_mux_reqs(0);
      triggers(1)  <= load_store_daemon_CP_356_elements(104);
      load_store_daemon_CP_356_elements(113)<= src_sample_reqs(1);
      src_sample_acks(1)  <= load_store_daemon_CP_356_elements(117);
      load_store_daemon_CP_356_elements(114)<= src_update_reqs(1);
      src_update_acks(1)  <= load_store_daemon_CP_356_elements(118);
      load_store_daemon_CP_356_elements(105) <= phi_mux_reqs(1);
      phi_stmt_8279_phi_seq_606 : phi_sequencer_v2-- 
        generic map (place_capacity => 15, ntriggers => 2, name => "phi_stmt_8279_phi_seq_606") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => load_store_daemon_CP_356_elements(100), 
          phi_sample_ack => load_store_daemon_CP_356_elements(101), 
          phi_update_req => load_store_daemon_CP_356_elements(102), 
          phi_update_ack => load_store_daemon_CP_356_elements(103), 
          phi_mux_ack => load_store_daemon_CP_356_elements(108), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_8284_phi_seq_650_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= load_store_daemon_CP_356_elements(127);
      load_store_daemon_CP_356_elements(130)<= src_sample_reqs(0);
      src_sample_acks(0)  <= load_store_daemon_CP_356_elements(130);
      load_store_daemon_CP_356_elements(131)<= src_update_reqs(0);
      src_update_acks(0)  <= load_store_daemon_CP_356_elements(132);
      load_store_daemon_CP_356_elements(128) <= phi_mux_reqs(0);
      triggers(1)  <= load_store_daemon_CP_356_elements(125);
      load_store_daemon_CP_356_elements(134)<= src_sample_reqs(1);
      src_sample_acks(1)  <= load_store_daemon_CP_356_elements(138);
      load_store_daemon_CP_356_elements(135)<= src_update_reqs(1);
      src_update_acks(1)  <= load_store_daemon_CP_356_elements(139);
      load_store_daemon_CP_356_elements(126) <= phi_mux_reqs(1);
      phi_stmt_8284_phi_seq_650 : phi_sequencer_v2-- 
        generic map (place_capacity => 15, ntriggers => 2, name => "phi_stmt_8284_phi_seq_650") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => load_store_daemon_CP_356_elements(121), 
          phi_sample_ack => load_store_daemon_CP_356_elements(122), 
          phi_update_req => load_store_daemon_CP_356_elements(123), 
          phi_update_ack => load_store_daemon_CP_356_elements(124), 
          phi_mux_ack => load_store_daemon_CP_356_elements(129), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_8288_phi_seq_694_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= load_store_daemon_CP_356_elements(148);
      load_store_daemon_CP_356_elements(151)<= src_sample_reqs(0);
      src_sample_acks(0)  <= load_store_daemon_CP_356_elements(151);
      load_store_daemon_CP_356_elements(152)<= src_update_reqs(0);
      src_update_acks(0)  <= load_store_daemon_CP_356_elements(153);
      load_store_daemon_CP_356_elements(149) <= phi_mux_reqs(0);
      triggers(1)  <= load_store_daemon_CP_356_elements(146);
      load_store_daemon_CP_356_elements(155)<= src_sample_reqs(1);
      src_sample_acks(1)  <= load_store_daemon_CP_356_elements(157);
      load_store_daemon_CP_356_elements(156)<= src_update_reqs(1);
      src_update_acks(1)  <= load_store_daemon_CP_356_elements(158);
      load_store_daemon_CP_356_elements(147) <= phi_mux_reqs(1);
      phi_stmt_8288_phi_seq_694 : phi_sequencer_v2-- 
        generic map (place_capacity => 15, ntriggers => 2, name => "phi_stmt_8288_phi_seq_694") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => load_store_daemon_CP_356_elements(142), 
          phi_sample_ack => load_store_daemon_CP_356_elements(143), 
          phi_update_req => load_store_daemon_CP_356_elements(144), 
          phi_update_ack => load_store_daemon_CP_356_elements(145), 
          phi_mux_ack => load_store_daemon_CP_356_elements(150), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_8292_phi_seq_738_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= load_store_daemon_CP_356_elements(167);
      load_store_daemon_CP_356_elements(170)<= src_sample_reqs(0);
      src_sample_acks(0)  <= load_store_daemon_CP_356_elements(170);
      load_store_daemon_CP_356_elements(171)<= src_update_reqs(0);
      src_update_acks(0)  <= load_store_daemon_CP_356_elements(172);
      load_store_daemon_CP_356_elements(168) <= phi_mux_reqs(0);
      triggers(1)  <= load_store_daemon_CP_356_elements(165);
      load_store_daemon_CP_356_elements(174)<= src_sample_reqs(1);
      src_sample_acks(1)  <= load_store_daemon_CP_356_elements(178);
      load_store_daemon_CP_356_elements(175)<= src_update_reqs(1);
      src_update_acks(1)  <= load_store_daemon_CP_356_elements(179);
      load_store_daemon_CP_356_elements(166) <= phi_mux_reqs(1);
      phi_stmt_8292_phi_seq_738 : phi_sequencer_v2-- 
        generic map (place_capacity => 15, ntriggers => 2, name => "phi_stmt_8292_phi_seq_738") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => load_store_daemon_CP_356_elements(161), 
          phi_sample_ack => load_store_daemon_CP_356_elements(162), 
          phi_update_req => load_store_daemon_CP_356_elements(163), 
          phi_update_ack => load_store_daemon_CP_356_elements(164), 
          phi_mux_ack => load_store_daemon_CP_356_elements(169), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    entry_tmerge_381_block : block -- 
      signal preds : BooleanArray(0 to 1);
      begin -- 
        preds(0)  <= load_store_daemon_CP_356_elements(7);
        preds(1)  <= load_store_daemon_CP_356_elements(8);
        entry_tmerge_381 : transition_merge -- 
          generic map(name => " entry_tmerge_381")
          port map (preds => preds, symbol_out => load_store_daemon_CP_356_elements(9));
          -- 
    end block;
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_8580_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8582_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8834_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8912_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8919_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8923_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8924_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8928_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8930_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8936_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8941_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8942_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8945_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8948_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8949_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8955_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8958_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8962_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8968_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8974_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8982_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8984_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8991_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8998_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_9060_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_9067_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_9071_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_9076_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_9122_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_9215_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_9293_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_9339_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_9386_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u24_u1_8837_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u32_u1_8979_wire : std_logic_vector(0 downto 0);
    signal CIRCULANT_8288 : std_logic_vector(134 downto 0);
    signal CONCAT_u13_u16_9388_wire : std_logic_vector(15 downto 0);
    signal CONCAT_u16_u22_9400_wire : std_logic_vector(21 downto 0);
    signal CONCAT_u1_u23_9350_wire : std_logic_vector(22 downto 0);
    signal CONCAT_u1_u2_8354_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_8359_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_9247_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_9300_wire_constant : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_9343_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_9383_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_9391_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_9396_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_9403_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_9408_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u33_9419_wire : std_logic_vector(32 downto 0);
    signal CONCAT_u1_u3_9414_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u1_u5_9327_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u23_u39_9354_wire : std_logic_vector(38 downto 0);
    signal CONCAT_u2_u128_9466_wire : std_logic_vector(127 downto 0);
    signal CONCAT_u2_u34_9249_wire : std_logic_vector(33 downto 0);
    signal CONCAT_u2_u3_8356_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_8361_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_9387_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_9393_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_9398_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_9405_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_9410_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u6_9303_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u32_u64_9252_wire : std_logic_vector(63 downto 0);
    signal CONCAT_u33_u65_9421_wire : std_logic_vector(64 downto 0);
    signal CONCAT_u3_u4_9416_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u3_u6_9399_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u3_u6_9411_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u40_u104_9359_wire : std_logic_vector(103 downto 0);
    signal CONCAT_u4_u69_9422_wire : std_logic_vector(68 downto 0);
    signal CONCAT_u4_u6_9376_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u5_u6_9340_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u5_u7_9329_wire : std_logic_vector(6 downto 0);
    signal CONCAT_u6_u13_9380_wire : std_logic_vector(12 downto 0);
    signal CONCAT_u6_u75_9423_wire : std_logic_vector(74 downto 0);
    signal CONCAT_u6_u7_9332_wire : std_logic_vector(6 downto 0);
    signal CONCAT_u6_u7_9379_wire : std_logic_vector(6 downto 0);
    signal CONCAT_u6_u7_9469_wire : std_logic_vector(6 downto 0);
    signal CONCAT_u6_u8_9344_wire : std_logic_vector(7 downto 0);
    signal CONCAT_u7_u14_9333_wire : std_logic_vector(13 downto 0);
    signal CONCAT_u8_u16_9353_wire : std_logic_vector(15 downto 0);
    signal CONCAT_u8_u40_9357_wire : std_logic_vector(39 downto 0);
    signal EQ_u2_u1_8906_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_8911_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_8833_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_8844_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_8890_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_8899_wire : std_logic_vector(0 downto 0);
    signal MUX_8570_wire : std_logic_vector(0 downto 0);
    signal MUX_8695_wire : std_logic_vector(31 downto 0);
    signal NEQ_u18_u1_9162_wire : std_logic_vector(0 downto 0);
    signal NEQ_u18_u1_9169_wire : std_logic_vector(0 downto 0);
    signal NEQ_u1_u1_8981_wire : std_logic_vector(0 downto 0);
    signal NEQ_u2_u1_8973_wire : std_logic_vector(0 downto 0);
    signal NEQ_u3_u1_8967_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_8308_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_8577_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_8579_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_8918_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_8922_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_8927_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_8938_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_8940_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_8957_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_8960_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_8990_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_9058_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_9065_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_9069_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_9074_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_9098_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_9120_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_9155_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_9171_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_9315_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_9319_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_9325_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_9336_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_9338_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8869_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8871_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8879_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8881_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8907_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8975_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8983_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8995_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8997_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_9028_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_9035_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_9061_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_9063_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_9072_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_9077_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_9212_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_9214_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_9292_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_9316_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_9320_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_9430_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_9432_wire : std_logic_vector(0 downto 0);
    signal RPIPE_THREAD_ID_8299_wire : std_logic_vector(7 downto 0);
    signal RPIPE_THREAD_ID_8299_wire_8299_buffered : std_logic_vector(7 downto 0);
    signal RPIPE_debug_wp_0_9014_wire : std_logic_vector(31 downto 0);
    signal RPIPE_debug_wp_1_9017_wire : std_logic_vector(31 downto 0);
    signal RPIPE_debug_wp_2_9020_wire : std_logic_vector(31 downto 0);
    signal RPIPE_debug_wp_3_9023_wire : std_logic_vector(31 downto 0);
    signal RPIPE_messy_operation_completed_8296_wire : std_logic_vector(0 downto 0);
    signal RPIPE_noblock_teu_idispatch_to_loadstore_8287_wire : std_logic_vector(125 downto 0);
    signal RPIPE_teu_fpunit_register_file_to_loadstore_8278_wire : std_logic_vector(76 downto 0);
    signal RPIPE_teu_fpunit_trap_to_loadstore_8283_wire : std_logic_vector(12 downto 0);
    signal RPIPE_teu_iunit_register_file_to_loadstore_8268_wire : std_logic_vector(141 downto 0);
    signal RPIPE_teu_iunit_trap_to_loadstore_8273_wire : std_logic_vector(0 downto 0);
    signal RPIPE_teu_stream_corrector_to_loadstore_8263_wire : std_logic_vector(18 downto 0);
    signal R_DATA_TRANSFER_INSTR_8843_wire_constant : std_logic_vector(2 downto 0);
    signal R_MISC_INSTR_8832_wire_constant : std_logic_vector(2 downto 0);
    signal R_ONE_1_8682_wire_constant : std_logic_vector(0 downto 0);
    signal R_ONE_1_8763_wire_constant : std_logic_vector(0 downto 0);
    signal R_ONE_1_9348_wire_constant : std_logic_vector(0 downto 0);
    signal R_REQUEST_TYPE_NOP_9302_wire_constant : std_logic_vector(3 downto 0);
    signal R_TERMINATES_STREAM_8898_wire_constant : std_logic_vector(2 downto 0);
    signal R_TERMINATES_THREAD_8889_wire_constant : std_logic_vector(2 downto 0);
    signal R_WB_MISPREDICTED_STREAM_8910_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_NORMAL_8905_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_TRAPPED_9128_wire_constant : std_logic_vector(1 downto 0);
    signal R_ZERO_1_8569_wire_constant : std_logic_vector(0 downto 0);
    signal access_address_8697 : std_logic_vector(31 downto 0);
    signal annul_instr_8487 : std_logic_vector(0 downto 0);
    signal annul_this_8548 : std_logic_vector(0 downto 0);
    signal apply_debug_wp_9125 : std_logic_vector(0 downto 0);
    signal asi_id_8865 : std_logic_vector(7 downto 0);
    signal break_stream_9106 : std_logic_vector(0 downto 0);
    signal break_thread_9094 : std_logic_vector(0 downto 0);
    signal byte_8865 : std_logic_vector(0 downto 0);
    signal confirmed_dbg_wp_read_hit_9187 : std_logic_vector(0 downto 0);
    signal confirmed_dbg_wp_write_hit_9192 : std_logic_vector(0 downto 0);
    signal cp_8865 : std_logic_vector(0 downto 0);
    signal cpu_control_info_to_dcache_9346 : std_logic_vector(21 downto 0);
    signal cpu_id_2_8304 : std_logic_vector(1 downto 0);
    signal cpu_id_8297 : std_logic_vector(7 downto 0);
    signal cu1_to_ls_8467 : std_logic_vector(0 downto 0);
    signal dbg_wp_reg_id_9049 : std_logic_vector(1 downto 0);
    signal debug_bp_hit_8483 : std_logic_vector(0 downto 0);
    signal decode_trap_bit_8491 : std_logic_vector(0 downto 0);
    signal do_not_bypass_9322 : std_logic_vector(0 downto 0);
    signal do_not_bypass_from_dispatch_8391 : std_logic_vector(0 downto 0);
    signal double_word_8865 : std_logic_vector(0 downto 0);
    signal dti_8846 : std_logic_vector(0 downto 0);
    signal early_ls_trap_9000 : std_logic_vector(0 downto 0);
    signal forward_info_9434 : std_logic_vector(0 downto 0);
    signal fp_8865 : std_logic_vector(0 downto 0);
    signal fp_cp_sreg_8865 : std_logic_vector(0 downto 0);
    signal fp_q_8865 : std_logic_vector(0 downto 0);
    signal fp_type_8865 : std_logic_vector(0 downto 0);
    signal from_dispatch_8284 : std_logic_vector(125 downto 0);
    signal from_dispatch_d_8318 : std_logic_vector(125 downto 0);
    signal from_fu_reg_8274 : std_logic_vector(76 downto 0);
    signal from_fu_regs_qualified_8736 : std_logic_vector(76 downto 0);
    signal from_fu_trap_8279 : std_logic_vector(12 downto 0);
    signal from_fu_trap_qualified_8770 : std_logic_vector(12 downto 0);
    signal from_iu_reg_8264 : std_logic_vector(141 downto 0);
    signal from_iu_reg_qualified_8638 : std_logic_vector(141 downto 0);
    signal from_iu_trap_8269 : std_logic_vector(0 downto 0);
    signal from_sc_8259 : std_logic_vector(18 downto 0);
    signal from_sc_qualified_8532 : std_logic_vector(18 downto 0);
    signal fu1_to_ls_8459 : std_logic_vector(0 downto 0);
    signal fu1_to_ls_trap_8463 : std_logic_vector(0 downto 0);
    signal fu_data_h_8756 : std_logic_vector(31 downto 0);
    signal fu_data_l_8760 : std_logic_vector(31 downto 0);
    signal fu_regs_valid_8740 : std_logic_vector(0 downto 0);
    signal fu_slot_id_8752 : std_logic_vector(5 downto 0);
    signal fu_stream_id_8748 : std_logic_vector(1 downto 0);
    signal fu_thread_id_8744 : std_logic_vector(3 downto 0);
    signal fu_trap_or_error_8786 : std_logic_vector(0 downto 0);
    signal fu_trap_slot_id_8782 : std_logic_vector(5 downto 0);
    signal fu_trap_stream_id_8778 : std_logic_vector(1 downto 0);
    signal fu_trap_thread_id_8774 : std_logic_vector(3 downto 0);
    signal get_from_cu_8350 : std_logic_vector(0 downto 0);
    signal get_from_fu_reg_8342 : std_logic_vector(0 downto 0);
    signal get_from_fu_reg_d_8379 : std_logic_vector(0 downto 0);
    signal get_from_fu_trap_8346 : std_logic_vector(0 downto 0);
    signal get_from_fu_trap_d_8383 : std_logic_vector(0 downto 0);
    signal get_from_iu_reg_8334 : std_logic_vector(0 downto 0);
    signal get_from_iu_reg_d_8371 : std_logic_vector(0 downto 0);
    signal get_from_iu_trap_8338 : std_logic_vector(0 downto 0);
    signal get_from_iu_trap_d_8375 : std_logic_vector(0 downto 0);
    signal get_from_sc_8330 : std_logic_vector(0 downto 0);
    signal get_from_sc_d_8367 : std_logic_vector(0 downto 0);
    signal get_messy_completion_9221 : std_logic_vector(0 downto 0);
    signal get_vals_8363 : std_logic_vector(5 downto 0);
    signal get_vals_d_8322 : std_logic_vector(5 downto 0);
    signal half_word_8865 : std_logic_vector(0 downto 0);
    signal iclass_8419 : std_logic_vector(2 downto 0);
    signal ignore_instr_8584 : std_logic_vector(0 downto 0);
    signal illegal_instr_trap_8951 : std_logic_vector(0 downto 0);
    signal imm_flag_8427 : std_logic_vector(0 downto 0);
    signal imm_value_8689 : std_logic_vector(31 downto 0);
    signal instruction_may_be_run_9117 : std_logic_vector(0 downto 0);
    signal is_flush_8839 : std_logic_vector(0 downto 0);
    signal is_ldstub_8865 : std_logic_vector(0 downto 0);
    signal is_load_8865 : std_logic_vector(0 downto 0);
    signal is_load_to_debug_9031 : std_logic_vector(0 downto 0);
    signal is_store_8865 : std_logic_vector(0 downto 0);
    signal is_store_to_debug_9038 : std_logic_vector(0 downto 0);
    signal is_swap_8865 : std_logic_vector(0 downto 0);
    signal ispec_8423 : std_logic_vector(23 downto 0);
    signal iu1_to_ls_8451 : std_logic_vector(0 downto 0);
    signal iu1_to_ls_trap_8455 : std_logic_vector(0 downto 0);
    signal iu_S_8651 : std_logic_vector(0 downto 0);
    signal iu_data_h_8675 : std_logic_vector(31 downto 0);
    signal iu_data_l_8679 : std_logic_vector(31 downto 0);
    signal iu_regs_valid_8647 : std_logic_vector(0 downto 0);
    signal iu_rs1_val_8667 : std_logic_vector(31 downto 0);
    signal iu_rs2_val_8671 : std_logic_vector(31 downto 0);
    signal iu_slot_id_8663 : std_logic_vector(5 downto 0);
    signal iu_stream_id_8659 : std_logic_vector(1 downto 0);
    signal iu_thread_id_8655 : std_logic_vector(3 downto 0);
    signal iu_trap_or_error_8643 : std_logic_vector(0 downto 0);
    signal kill_thread_now_9103 : std_logic_vector(0 downto 0);
    signal konst_8261_wire_constant : std_logic_vector(18 downto 0);
    signal konst_8266_wire_constant : std_logic_vector(141 downto 0);
    signal konst_8271_wire_constant : std_logic_vector(0 downto 0);
    signal konst_8276_wire_constant : std_logic_vector(76 downto 0);
    signal konst_8281_wire_constant : std_logic_vector(12 downto 0);
    signal konst_8286_wire_constant : std_logic_vector(125 downto 0);
    signal konst_8290_wire_constant : std_logic_vector(134 downto 0);
    signal konst_8294_wire_constant : std_logic_vector(0 downto 0);
    signal konst_8530_wire_constant : std_logic_vector(18 downto 0);
    signal konst_8636_wire_constant : std_logic_vector(141 downto 0);
    signal konst_8734_wire_constant : std_logic_vector(76 downto 0);
    signal konst_8768_wire_constant : std_logic_vector(12 downto 0);
    signal konst_8836_wire_constant : std_logic_vector(23 downto 0);
    signal konst_8966_wire_constant : std_logic_vector(2 downto 0);
    signal konst_8972_wire_constant : std_logic_vector(1 downto 0);
    signal konst_8978_wire_constant : std_logic_vector(31 downto 0);
    signal konst_8980_wire_constant : std_logic_vector(0 downto 0);
    signal konst_9161_wire_constant : std_logic_vector(17 downto 0);
    signal konst_9168_wire_constant : std_logic_vector(17 downto 0);
    signal konst_9474_wire_constant : std_logic_vector(0 downto 0);
    signal lock_ok_8310 : std_logic_vector(0 downto 0);
    signal ls_router_control_info_9425 : std_logic_vector(96 downto 0);
    signal ls_state_8314 : std_logic_vector(1 downto 0);
    signal ls_to_cu2_8479 : std_logic_vector(0 downto 0);
    signal ls_to_fu2_8475 : std_logic_vector(0 downto 0);
    signal ls_to_iu2_8471 : std_logic_vector(0 downto 0);
    signal mae_trap_8431 : std_logic_vector(0 downto 0);
    signal mem_address_not_aligned_8986 : std_logic_vector(0 downto 0);
    signal messy_completed_8292 : std_logic_vector(0 downto 0);
    signal messy_data_access_error_9243 : std_logic_vector(0 downto 0);
    signal messy_data_access_exception_9243 : std_logic_vector(0 downto 0);
    signal messy_dout_h_9243 : std_logic_vector(31 downto 0);
    signal messy_dout_l_9243 : std_logic_vector(31 downto 0);
    signal messy_store_signature_9243 : std_logic_vector(31 downto 0);
    signal messy_to_ls_router_9254 : std_logic_vector(97 downto 0);
    signal mmu_fsr_8435 : std_logic_vector(17 downto 0);
    signal next_CIRCULANT_9471 : std_logic_vector(134 downto 0);
    signal next_CIRCULANT_9471_8291_buffered : std_logic_vector(134 downto 0);
    signal next_ls_state_9131 : std_logic_vector(1 downto 0);
    signal next_ls_state_raw_9117 : std_logic_vector(1 downto 0);
    signal next_saved_annul_from_sc_8573 : std_logic_vector(0 downto 0);
    signal non_zero_fsr_no_mae_9173 : std_logic_vector(0 downto 0);
    signal pc_8495 : std_logic_vector(31 downto 0);
    signal potential_dbg_wp_hit_9054 : std_logic_vector(0 downto 0);
    signal potential_dbg_wp_read_hit_9049 : std_logic_vector(0 downto 0);
    signal potential_dbg_wp_write_hit_9049 : std_logic_vector(0 downto 0);
    signal pre_ls_trap_8526 : std_logic_vector(0 downto 0);
    signal privileged_instr_trap_8932 : std_logic_vector(0 downto 0);
    signal rd_from_dispatch_8395 : std_logic_vector(4 downto 0);
    signal run_dti_9182 : std_logic_vector(0 downto 0);
    signal run_instruction_9158 : std_logic_vector(0 downto 0);
    signal run_messy_load_store_op_9207 : std_logic_vector(0 downto 0);
    signal run_messy_load_store_op_qualified_9218 : std_logic_vector(0 downto 0);
    signal run_messy_load_store_op_qualified_9527_delayed_3_0_9257 : std_logic_vector(0 downto 0);
    signal run_simple_load_store_op_9207 : std_logic_vector(0 downto 0);
    signal run_simple_load_store_op_qualified_9296 : std_logic_vector(0 downto 0);
    signal saved_annul_from_sc_8326 : std_logic_vector(0 downto 0);
    signal sc_annul_next_8564 : std_logic_vector(0 downto 0);
    signal sc_break_stream_8901 : std_logic_vector(0 downto 0);
    signal sc_break_thread_8892 : std_logic_vector(0 downto 0);
    signal sc_instr_class_8560 : std_logic_vector(2 downto 0);
    signal sc_slot_id_8544 : std_logic_vector(5 downto 0);
    signal sc_stream_head_8552 : std_logic_vector(0 downto 0);
    signal sc_stream_id_8540 : std_logic_vector(1 downto 0);
    signal sc_thread_head_8556 : std_logic_vector(0 downto 0);
    signal sc_thread_id_8536 : std_logic_vector(3 downto 0);
    signal sc_to_ls_8447 : std_logic_vector(0 downto 0);
    signal signed_type_8865 : std_logic_vector(0 downto 0);
    signal simm_13_8439 : std_logic_vector(12 downto 0);
    signal simple_dcache_address_9287 : std_logic_vector(31 downto 0);
    signal simple_dcache_asi_9287 : std_logic_vector(7 downto 0);
    signal simple_dcache_byte_mask_9287 : std_logic_vector(7 downto 0);
    signal simple_dcache_request_type_9287 : std_logic_vector(7 downto 0);
    signal simple_dcache_request_type_qualified_9311 : std_logic_vector(7 downto 0);
    signal simple_dcache_write_data_9287 : std_logic_vector(63 downto 0);
    signal simple_store_signature_9287 : std_logic_vector(31 downto 0);
    signal slice_8965_wire : std_logic_vector(2 downto 0);
    signal slice_8971_wire : std_logic_vector(1 downto 0);
    signal slot_id_8407 : std_logic_vector(5 downto 0);
    signal stream_head_8415 : std_logic_vector(0 downto 0);
    signal stream_id_8403 : std_logic_vector(1 downto 0);
    signal terminate_thread_9100 : std_logic_vector(0 downto 0);
    signal thread_head_8411 : std_logic_vector(0 downto 0);
    signal thread_id_8399 : std_logic_vector(3 downto 0);
    signal to_dcache_9361 : std_logic_vector(142 downto 0);
    signal trappable_instruction_8914 : std_logic_vector(0 downto 0);
    signal type_cast_8686_wire : std_logic_vector(12 downto 0);
    signal type_cast_8687_wire : std_logic_vector(31 downto 0);
    signal unsigned_type_8865 : std_logic_vector(0 downto 0);
    signal untrap_cache_9195 : std_logic_vector(0 downto 0);
    signal untrap_request_type_9305 : std_logic_vector(7 downto 0);
    signal update_mmu_fsr_9165 : std_logic_vector(0 downto 0);
    signal upstream_trap_9079 : std_logic_vector(0 downto 0);
    signal use_asi_8865 : std_logic_vector(0 downto 0);
    signal uses_ls_8443 : std_logic_vector(0 downto 0);
    signal valid_from_dispatch_8387 : std_logic_vector(0 downto 0);
    signal word_8865 : std_logic_vector(0 downto 0);
    signal wp_0_9015 : std_logic_vector(31 downto 0);
    signal wp_1_9018 : std_logic_vector(31 downto 0);
    signal wp_2_9021 : std_logic_vector(31 downto 0);
    signal wp_3_9024 : std_logic_vector(31 downto 0);
    signal write_data_h_8875 : std_logic_vector(31 downto 0);
    signal write_data_l_8885 : std_logic_vector(31 downto 0);
    -- 
  begin -- 
    CONCAT_u1_u2_9300_wire_constant <= "10";
    R_DATA_TRANSFER_INSTR_8843_wire_constant <= "001";
    R_MISC_INSTR_8832_wire_constant <= "100";
    R_ONE_1_8682_wire_constant <= "1";
    R_ONE_1_8763_wire_constant <= "1";
    R_ONE_1_9348_wire_constant <= "1";
    R_REQUEST_TYPE_NOP_9302_wire_constant <= "0111";
    R_TERMINATES_STREAM_8898_wire_constant <= "011";
    R_TERMINATES_THREAD_8889_wire_constant <= "111";
    R_WB_MISPREDICTED_STREAM_8910_wire_constant <= "10";
    R_WB_NORMAL_8905_wire_constant <= "01";
    R_WB_TRAPPED_9128_wire_constant <= "11";
    R_ZERO_1_8569_wire_constant <= "0";
    konst_8261_wire_constant <= "0000000000000000000";
    konst_8266_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    konst_8271_wire_constant <= "0";
    konst_8276_wire_constant <= "00000000000000000000000000000000000000000000000000000000000000000000000000000";
    konst_8281_wire_constant <= "0000000000000";
    konst_8286_wire_constant <= "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    konst_8290_wire_constant <= "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    konst_8294_wire_constant <= "0";
    konst_8530_wire_constant <= "0000000000000000000";
    konst_8636_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    konst_8734_wire_constant <= "00000000000000000000000000000000000000000000000000000000000000000000000000000";
    konst_8768_wire_constant <= "0000000000000";
    konst_8836_wire_constant <= "000000000000000000001101";
    konst_8966_wire_constant <= "000";
    konst_8972_wire_constant <= "00";
    konst_8978_wire_constant <= "00000000000000000000000000000000";
    konst_8980_wire_constant <= "0";
    konst_9161_wire_constant <= "000000000000000000";
    konst_9168_wire_constant <= "000000000000000000";
    konst_9474_wire_constant <= "1";
    phi_stmt_8259: Block -- phi operator 
      signal idata: std_logic_vector(37 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= konst_8261_wire_constant & RPIPE_teu_stream_corrector_to_loadstore_8263_wire;
      req <= phi_stmt_8259_req_0 & phi_stmt_8259_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_8259",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 19) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_8259_ack_0,
          idata => idata,
          odata => from_sc_8259,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_8259
    phi_stmt_8264: Block -- phi operator 
      signal idata: std_logic_vector(283 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= konst_8266_wire_constant & RPIPE_teu_iunit_register_file_to_loadstore_8268_wire;
      req <= phi_stmt_8264_req_0 & phi_stmt_8264_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_8264",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 142) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_8264_ack_0,
          idata => idata,
          odata => from_iu_reg_8264,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_8264
    phi_stmt_8269: Block -- phi operator 
      signal idata: std_logic_vector(1 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= konst_8271_wire_constant & RPIPE_teu_iunit_trap_to_loadstore_8273_wire;
      req <= phi_stmt_8269_req_0 & phi_stmt_8269_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_8269",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 1) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_8269_ack_0,
          idata => idata,
          odata => from_iu_trap_8269,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_8269
    phi_stmt_8274: Block -- phi operator 
      signal idata: std_logic_vector(153 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= konst_8276_wire_constant & RPIPE_teu_fpunit_register_file_to_loadstore_8278_wire;
      req <= phi_stmt_8274_req_0 & phi_stmt_8274_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_8274",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 77) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_8274_ack_0,
          idata => idata,
          odata => from_fu_reg_8274,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_8274
    phi_stmt_8279: Block -- phi operator 
      signal idata: std_logic_vector(25 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= konst_8281_wire_constant & RPIPE_teu_fpunit_trap_to_loadstore_8283_wire;
      req <= phi_stmt_8279_req_0 & phi_stmt_8279_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_8279",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 13) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_8279_ack_0,
          idata => idata,
          odata => from_fu_trap_8279,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_8279
    phi_stmt_8284: Block -- phi operator 
      signal idata: std_logic_vector(251 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= konst_8286_wire_constant & RPIPE_noblock_teu_idispatch_to_loadstore_8287_wire;
      req <= phi_stmt_8284_req_0 & phi_stmt_8284_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_8284",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 126) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_8284_ack_0,
          idata => idata,
          odata => from_dispatch_8284,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_8284
    phi_stmt_8288: Block -- phi operator 
      signal idata: std_logic_vector(269 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= konst_8290_wire_constant & next_CIRCULANT_9471_8291_buffered;
      req <= phi_stmt_8288_req_0 & phi_stmt_8288_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_8288",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 135) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_8288_ack_0,
          idata => idata,
          odata => CIRCULANT_8288,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_8288
    phi_stmt_8292: Block -- phi operator 
      signal idata: std_logic_vector(1 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= konst_8294_wire_constant & RPIPE_messy_operation_completed_8296_wire;
      req <= phi_stmt_8292_req_0 & phi_stmt_8292_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_8292",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 1) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_8292_ack_0,
          idata => idata,
          odata => messy_completed_8292,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_8292
    -- flow-through select operator MUX_8531_inst
    from_sc_qualified_8532 <= from_sc_8259 when (get_from_sc_d_8367(0) /=  '0') else konst_8530_wire_constant;
    -- flow-through select operator MUX_8570_inst
    MUX_8570_wire <= sc_annul_next_8564 when (get_from_sc_d_8367(0) /=  '0') else R_ZERO_1_8569_wire_constant;
    -- flow-through select operator MUX_8572_inst
    next_saved_annul_from_sc_8573 <= MUX_8570_wire when (valid_from_dispatch_8387(0) /=  '0') else saved_annul_from_sc_8326;
    -- flow-through select operator MUX_8637_inst
    from_iu_reg_qualified_8638 <= from_iu_reg_8264 when (get_from_iu_reg_d_8371(0) /=  '0') else konst_8636_wire_constant;
    -- flow-through select operator MUX_8695_inst
    MUX_8695_wire <= imm_value_8689 when (imm_flag_8427(0) /=  '0') else iu_rs2_val_8671;
    -- flow-through select operator MUX_8735_inst
    from_fu_regs_qualified_8736 <= from_fu_reg_8274 when (get_from_fu_reg_d_8379(0) /=  '0') else konst_8734_wire_constant;
    -- flow-through select operator MUX_8769_inst
    from_fu_trap_qualified_8770 <= from_fu_trap_8279 when (get_from_fu_trap_d_8383(0) /=  '0') else konst_8768_wire_constant;
    -- flow-through select operator MUX_8874_inst
    write_data_h_8875 <= fu_data_h_8756 when (OR_u1_u1_8871_wire(0) /=  '0') else iu_data_h_8675;
    -- flow-through select operator MUX_8884_inst
    write_data_l_8885 <= fu_data_l_8760 when (OR_u1_u1_8881_wire(0) /=  '0') else iu_data_l_8679;
    -- flow-through select operator MUX_9130_inst
    next_ls_state_9131 <= R_WB_TRAPPED_9128_wire_constant when (apply_debug_wp_9125(0) /=  '0') else next_ls_state_raw_9117;
    -- flow-through select operator MUX_9310_inst
    simple_dcache_request_type_qualified_9311 <= simple_dcache_request_type_9287 when (run_instruction_9158(0) /=  '0') else untrap_request_type_9305;
    -- flow-through slice operator slice_8303_inst
    cpu_id_2_8304 <= cpu_id_8297(1 downto 0);
    -- flow-through slice operator slice_8313_inst
    ls_state_8314 <= CIRCULANT_8288(134 downto 133);
    -- flow-through slice operator slice_8317_inst
    from_dispatch_d_8318 <= CIRCULANT_8288(132 downto 7);
    -- flow-through slice operator slice_8321_inst
    get_vals_d_8322 <= CIRCULANT_8288(6 downto 1);
    -- flow-through slice operator slice_8325_inst
    saved_annul_from_sc_8326 <= CIRCULANT_8288(0 downto 0);
    -- flow-through slice operator slice_8329_inst
    get_from_sc_8330 <= from_dispatch_8284(43 downto 43);
    -- flow-through slice operator slice_8333_inst
    get_from_iu_reg_8334 <= from_dispatch_8284(42 downto 42);
    -- flow-through slice operator slice_8337_inst
    get_from_iu_trap_8338 <= from_dispatch_8284(41 downto 41);
    -- flow-through slice operator slice_8341_inst
    get_from_fu_reg_8342 <= from_dispatch_8284(40 downto 40);
    -- flow-through slice operator slice_8345_inst
    get_from_fu_trap_8346 <= from_dispatch_8284(39 downto 39);
    -- flow-through slice operator slice_8349_inst
    get_from_cu_8350 <= from_dispatch_8284(38 downto 38);
    -- flow-through slice operator slice_8366_inst
    get_from_sc_d_8367 <= get_vals_d_8322(5 downto 5);
    -- flow-through slice operator slice_8370_inst
    get_from_iu_reg_d_8371 <= get_vals_d_8322(4 downto 4);
    -- flow-through slice operator slice_8374_inst
    get_from_iu_trap_d_8375 <= get_vals_d_8322(3 downto 3);
    -- flow-through slice operator slice_8378_inst
    get_from_fu_reg_d_8379 <= get_vals_d_8322(2 downto 2);
    -- flow-through slice operator slice_8382_inst
    get_from_fu_trap_d_8383 <= get_vals_d_8322(1 downto 1);
    -- flow-through slice operator slice_8386_inst
    valid_from_dispatch_8387 <= from_dispatch_d_8318(125 downto 125);
    -- flow-through slice operator slice_8390_inst
    do_not_bypass_from_dispatch_8391 <= from_dispatch_d_8318(124 downto 124);
    -- flow-through slice operator slice_8394_inst
    rd_from_dispatch_8395 <= from_dispatch_d_8318(123 downto 119);
    -- flow-through slice operator slice_8398_inst
    thread_id_8399 <= from_dispatch_d_8318(118 downto 115);
    -- flow-through slice operator slice_8402_inst
    stream_id_8403 <= from_dispatch_d_8318(114 downto 113);
    -- flow-through slice operator slice_8406_inst
    slot_id_8407 <= from_dispatch_d_8318(112 downto 107);
    -- flow-through slice operator slice_8410_inst
    thread_head_8411 <= from_dispatch_d_8318(106 downto 106);
    -- flow-through slice operator slice_8414_inst
    stream_head_8415 <= from_dispatch_d_8318(105 downto 105);
    -- flow-through slice operator slice_8418_inst
    iclass_8419 <= from_dispatch_d_8318(104 downto 102);
    -- flow-through slice operator slice_8422_inst
    ispec_8423 <= from_dispatch_d_8318(101 downto 78);
    -- flow-through slice operator slice_8426_inst
    imm_flag_8427 <= from_dispatch_d_8318(77 downto 77);
    -- flow-through slice operator slice_8430_inst
    mae_trap_8431 <= from_dispatch_d_8318(76 downto 76);
    -- flow-through slice operator slice_8434_inst
    mmu_fsr_8435 <= from_dispatch_d_8318(75 downto 58);
    -- flow-through slice operator slice_8438_inst
    simm_13_8439 <= from_dispatch_d_8318(57 downto 45);
    -- flow-through slice operator slice_8442_inst
    uses_ls_8443 <= from_dispatch_d_8318(44 downto 44);
    -- flow-through slice operator slice_8446_inst
    sc_to_ls_8447 <= from_dispatch_d_8318(43 downto 43);
    -- flow-through slice operator slice_8450_inst
    iu1_to_ls_8451 <= from_dispatch_d_8318(42 downto 42);
    -- flow-through slice operator slice_8454_inst
    iu1_to_ls_trap_8455 <= from_dispatch_d_8318(41 downto 41);
    -- flow-through slice operator slice_8458_inst
    fu1_to_ls_8459 <= from_dispatch_d_8318(40 downto 40);
    -- flow-through slice operator slice_8462_inst
    fu1_to_ls_trap_8463 <= from_dispatch_d_8318(39 downto 39);
    -- flow-through slice operator slice_8466_inst
    cu1_to_ls_8467 <= from_dispatch_d_8318(38 downto 38);
    -- flow-through slice operator slice_8470_inst
    ls_to_iu2_8471 <= from_dispatch_d_8318(37 downto 37);
    -- flow-through slice operator slice_8474_inst
    ls_to_fu2_8475 <= from_dispatch_d_8318(36 downto 36);
    -- flow-through slice operator slice_8478_inst
    ls_to_cu2_8479 <= from_dispatch_d_8318(35 downto 35);
    -- flow-through slice operator slice_8482_inst
    debug_bp_hit_8483 <= from_dispatch_d_8318(34 downto 34);
    -- flow-through slice operator slice_8486_inst
    annul_instr_8487 <= from_dispatch_d_8318(33 downto 33);
    -- flow-through slice operator slice_8490_inst
    decode_trap_bit_8491 <= from_dispatch_d_8318(32 downto 32);
    -- flow-through slice operator slice_8494_inst
    pc_8495 <= from_dispatch_d_8318(31 downto 0);
    -- flow-through slice operator slice_8535_inst
    sc_thread_id_8536 <= from_sc_qualified_8532(18 downto 15);
    -- flow-through slice operator slice_8539_inst
    sc_stream_id_8540 <= from_sc_qualified_8532(14 downto 13);
    -- flow-through slice operator slice_8543_inst
    sc_slot_id_8544 <= from_sc_qualified_8532(12 downto 7);
    -- flow-through slice operator slice_8547_inst
    annul_this_8548 <= from_sc_qualified_8532(6 downto 6);
    -- flow-through slice operator slice_8551_inst
    sc_stream_head_8552 <= from_sc_qualified_8532(5 downto 5);
    -- flow-through slice operator slice_8555_inst
    sc_thread_head_8556 <= from_sc_qualified_8532(4 downto 4);
    -- flow-through slice operator slice_8559_inst
    sc_instr_class_8560 <= from_sc_qualified_8532(3 downto 1);
    -- flow-through slice operator slice_8563_inst
    sc_annul_next_8564 <= from_sc_qualified_8532(0 downto 0);
    -- flow-through slice operator slice_8646_inst
    iu_regs_valid_8647 <= from_iu_reg_qualified_8638(141 downto 141);
    -- flow-through slice operator slice_8650_inst
    iu_S_8651 <= from_iu_reg_qualified_8638(140 downto 140);
    -- flow-through slice operator slice_8654_inst
    iu_thread_id_8655 <= from_iu_reg_qualified_8638(139 downto 136);
    -- flow-through slice operator slice_8658_inst
    iu_stream_id_8659 <= from_iu_reg_qualified_8638(135 downto 134);
    -- flow-through slice operator slice_8662_inst
    iu_slot_id_8663 <= from_iu_reg_qualified_8638(133 downto 128);
    -- flow-through slice operator slice_8666_inst
    iu_rs1_val_8667 <= from_iu_reg_qualified_8638(127 downto 96);
    -- flow-through slice operator slice_8670_inst
    iu_rs2_val_8671 <= from_iu_reg_qualified_8638(95 downto 64);
    -- flow-through slice operator slice_8674_inst
    iu_data_h_8675 <= from_iu_reg_qualified_8638(63 downto 32);
    -- flow-through slice operator slice_8678_inst
    iu_data_l_8679 <= from_iu_reg_qualified_8638(31 downto 0);
    -- flow-through slice operator slice_8739_inst
    fu_regs_valid_8740 <= from_fu_regs_qualified_8736(76 downto 76);
    -- flow-through slice operator slice_8743_inst
    fu_thread_id_8744 <= from_fu_regs_qualified_8736(75 downto 72);
    -- flow-through slice operator slice_8747_inst
    fu_stream_id_8748 <= from_fu_regs_qualified_8736(71 downto 70);
    -- flow-through slice operator slice_8751_inst
    fu_slot_id_8752 <= from_fu_regs_qualified_8736(69 downto 64);
    -- flow-through slice operator slice_8755_inst
    fu_data_h_8756 <= from_fu_regs_qualified_8736(63 downto 32);
    -- flow-through slice operator slice_8759_inst
    fu_data_l_8760 <= from_fu_regs_qualified_8736(31 downto 0);
    -- flow-through slice operator slice_8773_inst
    fu_trap_thread_id_8774 <= from_fu_trap_qualified_8770(12 downto 9);
    -- flow-through slice operator slice_8777_inst
    fu_trap_stream_id_8778 <= from_fu_trap_qualified_8770(8 downto 7);
    -- flow-through slice operator slice_8781_inst
    fu_trap_slot_id_8782 <= from_fu_trap_qualified_8770(6 downto 1);
    -- flow-through slice operator slice_8785_inst
    fu_trap_or_error_8786 <= from_fu_trap_qualified_8770(0 downto 0);
    -- flow-through slice operator slice_8965_inst
    slice_8965_wire <= access_address_8697(2 downto 0);
    -- flow-through slice operator slice_8971_inst
    slice_8971_wire <= access_address_8697(1 downto 0);
    RPIPE_THREAD_ID_8299_wire_8299_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= RPIPE_THREAD_ID_8299_wire_8299_buf_req_0;
      RPIPE_THREAD_ID_8299_wire_8299_buf_ack_0<= wack(0);
      rreq(0) <= RPIPE_THREAD_ID_8299_wire_8299_buf_req_1;
      RPIPE_THREAD_ID_8299_wire_8299_buf_ack_1<= rack(0);
      RPIPE_THREAD_ID_8299_wire_8299_buf : InterlockBuffer generic map ( -- 
        name => "RPIPE_THREAD_ID_8299_wire_8299_buf",
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
        write_data => RPIPE_THREAD_ID_8299_wire,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => RPIPE_THREAD_ID_8299_wire_8299_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    -- interlock W_break_stream_9104_inst
    process(sc_break_stream_8901) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := sc_break_stream_8901(0 downto 0);
      break_stream_9106 <= tmp_var; -- 
    end process;
    -- interlock W_get_messy_completion_9219_inst
    process(run_messy_load_store_op_qualified_9218) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := run_messy_load_store_op_qualified_9218(0 downto 0);
      get_messy_completion_9221 <= tmp_var; -- 
    end process;
    -- interlock W_kill_thread_now_9101_inst
    process(upstream_trap_9079) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := upstream_trap_9079(0 downto 0);
      kill_thread_now_9103 <= tmp_var; -- 
    end process;
    W_run_messy_load_store_op_qualified_9527_delayed_3_0_9255_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_run_messy_load_store_op_qualified_9527_delayed_3_0_9255_inst_req_0;
      W_run_messy_load_store_op_qualified_9527_delayed_3_0_9255_inst_ack_0<= wack(0);
      rreq(0) <= W_run_messy_load_store_op_qualified_9527_delayed_3_0_9255_inst_req_1;
      W_run_messy_load_store_op_qualified_9527_delayed_3_0_9255_inst_ack_1<= rack(0);
      W_run_messy_load_store_op_qualified_9527_delayed_3_0_9255_inst : InterlockBuffer generic map ( -- 
        name => "W_run_messy_load_store_op_qualified_9527_delayed_3_0_9255_inst",
        buffer_size => 3,
        flow_through =>  false ,
        cut_through =>  true ,
        in_data_width => 1,
        out_data_width => 1,
        bypass_flag =>  true 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => run_messy_load_store_op_qualified_9218,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => run_messy_load_store_op_qualified_9527_delayed_3_0_9257,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    -- interlock W_untrap_cache_9193_inst
    process(thread_head_8411) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := thread_head_8411(0 downto 0);
      untrap_cache_9195 <= tmp_var; -- 
    end process;
    -- interlock W_wp_0_9013_inst
    process(RPIPE_debug_wp_0_9014_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := RPIPE_debug_wp_0_9014_wire(31 downto 0);
      wp_0_9015 <= tmp_var; -- 
    end process;
    -- interlock W_wp_1_9016_inst
    process(RPIPE_debug_wp_1_9017_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := RPIPE_debug_wp_1_9017_wire(31 downto 0);
      wp_1_9018 <= tmp_var; -- 
    end process;
    -- interlock W_wp_2_9019_inst
    process(RPIPE_debug_wp_2_9020_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := RPIPE_debug_wp_2_9020_wire(31 downto 0);
      wp_2_9021 <= tmp_var; -- 
    end process;
    -- interlock W_wp_3_9022_inst
    process(RPIPE_debug_wp_3_9023_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := RPIPE_debug_wp_3_9023_wire(31 downto 0);
      wp_3_9024 <= tmp_var; -- 
    end process;
    next_CIRCULANT_9471_8291_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= next_CIRCULANT_9471_8291_buf_req_0;
      next_CIRCULANT_9471_8291_buf_ack_0<= wack(0);
      rreq(0) <= next_CIRCULANT_9471_8291_buf_req_1;
      next_CIRCULANT_9471_8291_buf_ack_1<= rack(0);
      next_CIRCULANT_9471_8291_buf : InterlockBuffer generic map ( -- 
        name => "next_CIRCULANT_9471_8291_buf",
        buffer_size => 2,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 135,
        out_data_width => 135,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => next_CIRCULANT_9471,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => next_CIRCULANT_9471_8291_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    -- interlock ssrc_phi_stmt_8297
    process(RPIPE_THREAD_ID_8299_wire_8299_buffered) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 7 downto 0) := RPIPE_THREAD_ID_8299_wire_8299_buffered(7 downto 0);
      cpu_id_8297 <= tmp_var; -- 
    end process;
    -- interlock type_cast_8686_inst
    process(simm_13_8439) -- 
      variable tmp_var : std_logic_vector(12 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 12 downto 0) := simm_13_8439(12 downto 0);
      type_cast_8686_wire <= tmp_var; -- 
    end process;
    -- interlock type_cast_8688_inst
    process(type_cast_8687_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := type_cast_8687_wire(31 downto 0);
      imm_value_8689 <= tmp_var; -- 
    end process;
    do_while_stmt_8257_branch: Block -- 
      -- branch-block
      signal condition_sig : std_logic_vector(0 downto 0);
      begin 
      condition_sig <= konst_9474_wire_constant;
      branch_instance: BranchBase -- 
        generic map( name => "do_while_stmt_8257_branch", condition_width => 1,  bypass_flag => true)
        port map( -- 
          condition => condition_sig,
          req => do_while_stmt_8257_branch_req_0,
          ack0 => do_while_stmt_8257_branch_ack_0,
          ack1 => do_while_stmt_8257_branch_ack_1,
          clk => clk,
          reset => reset); -- 
      --
    end Block; -- branch-block
    -- flow through binary operator ADD_u32_u32_8696_inst
    access_address_8697 <= std_logic_vector(unsigned(iu_rs1_val_8667) + unsigned(MUX_8695_wire));
    -- flow through binary operator AND_u1_u1_8580_inst
    AND_u1_u1_8580_wire <= (NOT_u1_u1_8577_wire and NOT_u1_u1_8579_wire);
    -- flow through binary operator AND_u1_u1_8582_inst
    AND_u1_u1_8582_wire <= (AND_u1_u1_8580_wire and saved_annul_from_sc_8326);
    -- flow through binary operator AND_u1_u1_8642_inst
    iu_trap_or_error_8643 <= (get_from_iu_trap_d_8375 and from_iu_trap_8269);
    -- flow through binary operator AND_u1_u1_8834_inst
    AND_u1_u1_8834_wire <= (uses_ls_8443 and EQ_u3_u1_8833_wire);
    -- flow through binary operator AND_u1_u1_8838_inst
    is_flush_8839 <= (AND_u1_u1_8834_wire and BITSEL_u24_u1_8837_wire);
    -- flow through binary operator AND_u1_u1_8845_inst
    dti_8846 <= (uses_ls_8443 and EQ_u3_u1_8844_wire);
    -- flow through binary operator AND_u1_u1_8891_inst
    sc_break_thread_8892 <= (sc_to_ls_8447 and EQ_u3_u1_8890_wire);
    -- flow through binary operator AND_u1_u1_8900_inst
    sc_break_stream_8901 <= (sc_to_ls_8447 and EQ_u3_u1_8899_wire);
    -- flow through binary operator AND_u1_u1_8912_inst
    AND_u1_u1_8912_wire <= (stream_head_8415 and EQ_u2_u1_8911_wire);
    -- flow through binary operator AND_u1_u1_8919_inst
    AND_u1_u1_8919_wire <= (uses_ls_8443 and NOT_u1_u1_8918_wire);
    -- flow through binary operator AND_u1_u1_8923_inst
    AND_u1_u1_8923_wire <= (trappable_instruction_8914 and NOT_u1_u1_8922_wire);
    -- flow through binary operator AND_u1_u1_8924_inst
    AND_u1_u1_8924_wire <= (AND_u1_u1_8919_wire and AND_u1_u1_8923_wire);
    -- flow through binary operator AND_u1_u1_8928_inst
    AND_u1_u1_8928_wire <= (dti_8846 and NOT_u1_u1_8927_wire);
    -- flow through binary operator AND_u1_u1_8930_inst
    AND_u1_u1_8930_wire <= (AND_u1_u1_8928_wire and use_asi_8865);
    -- flow through binary operator AND_u1_u1_8931_inst
    privileged_instr_trap_8932 <= (AND_u1_u1_8924_wire and AND_u1_u1_8930_wire);
    -- flow through binary operator AND_u1_u1_8936_inst
    AND_u1_u1_8936_wire <= (uses_ls_8443 and trappable_instruction_8914);
    -- flow through binary operator AND_u1_u1_8941_inst
    AND_u1_u1_8941_wire <= (NOT_u1_u1_8938_wire and NOT_u1_u1_8940_wire);
    -- flow through binary operator AND_u1_u1_8942_inst
    AND_u1_u1_8942_wire <= (AND_u1_u1_8936_wire and AND_u1_u1_8941_wire);
    -- flow through binary operator AND_u1_u1_8945_inst
    AND_u1_u1_8945_wire <= (dti_8846 and iu_S_8651);
    -- flow through binary operator AND_u1_u1_8948_inst
    AND_u1_u1_8948_wire <= (use_asi_8865 and imm_flag_8427);
    -- flow through binary operator AND_u1_u1_8949_inst
    AND_u1_u1_8949_wire <= (AND_u1_u1_8945_wire and AND_u1_u1_8948_wire);
    -- flow through binary operator AND_u1_u1_8950_inst
    illegal_instr_trap_8951 <= (AND_u1_u1_8942_wire and AND_u1_u1_8949_wire);
    -- flow through binary operator AND_u1_u1_8955_inst
    AND_u1_u1_8955_wire <= (uses_ls_8443 and trappable_instruction_8914);
    -- flow through binary operator AND_u1_u1_8958_inst
    AND_u1_u1_8958_wire <= (AND_u1_u1_8955_wire and NOT_u1_u1_8957_wire);
    -- flow through binary operator AND_u1_u1_8962_inst
    AND_u1_u1_8962_wire <= (NOT_u1_u1_8960_wire and dti_8846);
    -- flow through binary operator AND_u1_u1_8968_inst
    AND_u1_u1_8968_wire <= (double_word_8865 and NEQ_u3_u1_8967_wire);
    -- flow through binary operator AND_u1_u1_8974_inst
    AND_u1_u1_8974_wire <= (word_8865 and NEQ_u2_u1_8973_wire);
    -- flow through binary operator AND_u1_u1_8982_inst
    AND_u1_u1_8982_wire <= (half_word_8865 and NEQ_u1_u1_8981_wire);
    -- flow through binary operator AND_u1_u1_8984_inst
    AND_u1_u1_8984_wire <= (AND_u1_u1_8962_wire and OR_u1_u1_8983_wire);
    -- flow through binary operator AND_u1_u1_8985_inst
    mem_address_not_aligned_8986 <= (AND_u1_u1_8958_wire and AND_u1_u1_8984_wire);
    -- flow through binary operator AND_u1_u1_8991_inst
    AND_u1_u1_8991_wire <= (uses_ls_8443 and NOT_u1_u1_8990_wire);
    -- flow through binary operator AND_u1_u1_8998_inst
    AND_u1_u1_8998_wire <= (trappable_instruction_8914 and OR_u1_u1_8997_wire);
    -- flow through binary operator AND_u1_u1_8999_inst
    early_ls_trap_9000 <= (AND_u1_u1_8991_wire and AND_u1_u1_8998_wire);
    -- flow through binary operator AND_u1_u1_9060_inst
    AND_u1_u1_9060_wire <= (NOT_u1_u1_9058_wire and decode_trap_bit_8491);
    -- flow through binary operator AND_u1_u1_9067_inst
    AND_u1_u1_9067_wire <= (NOT_u1_u1_9065_wire and early_ls_trap_9000);
    -- flow through binary operator AND_u1_u1_9071_inst
    AND_u1_u1_9071_wire <= (NOT_u1_u1_9069_wire and iu_trap_or_error_8643);
    -- flow through binary operator AND_u1_u1_9076_inst
    AND_u1_u1_9076_wire <= (NOT_u1_u1_9074_wire and fu_trap_or_error_8786);
    -- flow through binary operator AND_u1_u1_9099_inst
    terminate_thread_9100 <= (break_thread_9094 and NOT_u1_u1_9098_wire);
    -- flow through binary operator AND_u1_u1_9122_inst
    AND_u1_u1_9122_wire <= (NOT_u1_u1_9120_wire and instruction_may_be_run_9117);
    -- flow through binary operator AND_u1_u1_9124_inst
    apply_debug_wp_9125 <= (AND_u1_u1_9122_wire and potential_dbg_wp_hit_9054);
    -- flow through binary operator AND_u1_u1_9157_inst
    run_instruction_9158 <= (NOT_u1_u1_9155_wire and instruction_may_be_run_9117);
    -- flow through binary operator AND_u1_u1_9164_inst
    update_mmu_fsr_9165 <= (NEQ_u18_u1_9162_wire and trappable_instruction_8914);
    -- flow through binary operator AND_u1_u1_9172_inst
    non_zero_fsr_no_mae_9173 <= (NEQ_u18_u1_9169_wire and NOT_u1_u1_9171_wire);
    -- flow through binary operator AND_u1_u1_9181_inst
    run_dti_9182 <= (run_instruction_9158 and dti_8846);
    -- flow through binary operator AND_u1_u1_9186_inst
    confirmed_dbg_wp_read_hit_9187 <= (apply_debug_wp_9125 and potential_dbg_wp_read_hit_9049);
    -- flow through binary operator AND_u1_u1_9191_inst
    confirmed_dbg_wp_write_hit_9192 <= (apply_debug_wp_9125 and potential_dbg_wp_write_hit_9049);
    -- flow through binary operator AND_u1_u1_9215_inst
    AND_u1_u1_9215_wire <= (lock_ok_8310 and OR_u1_u1_9214_wire);
    -- flow through binary operator AND_u1_u1_9217_inst
    run_messy_load_store_op_qualified_9218 <= (AND_u1_u1_9215_wire and run_messy_load_store_op_9207);
    -- flow through binary operator AND_u1_u1_9293_inst
    AND_u1_u1_9293_wire <= (lock_ok_8310 and OR_u1_u1_9292_wire);
    -- flow through binary operator AND_u1_u1_9295_inst
    run_simple_load_store_op_qualified_9296 <= (AND_u1_u1_9293_wire and run_simple_load_store_op_9207);
    -- flow through binary operator AND_u1_u1_9339_inst
    AND_u1_u1_9339_wire <= (NOT_u1_u1_9336_wire and NOT_u1_u1_9338_wire);
    -- flow through binary operator AND_u1_u1_9386_inst
    AND_u1_u1_9386_wire <= (valid_from_dispatch_8387 and uses_ls_8443);
    -- flow through binary operator AND_u1_u1_9433_inst
    forward_info_9434 <= (valid_from_dispatch_8387 and OR_u1_u1_9432_wire);
    -- flow through binary operator BITSEL_u24_u1_8837_inst
    process(ispec_8423) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(ispec_8423, konst_8836_wire_constant, tmp_var);
      BITSEL_u24_u1_8837_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u32_u1_8979_inst
    process(access_address_8697) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(access_address_8697, konst_8978_wire_constant, tmp_var);
      BITSEL_u32_u1_8979_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u128_u135_9470_inst
    process(CONCAT_u2_u128_9466_wire, CONCAT_u6_u7_9469_wire) -- 
      variable tmp_var : std_logic_vector(134 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u128_9466_wire, CONCAT_u6_u7_9469_wire, tmp_var);
      next_CIRCULANT_9471 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u13_u16_9388_inst
    process(CONCAT_u6_u13_9380_wire, CONCAT_u2_u3_9387_wire) -- 
      variable tmp_var : std_logic_vector(15 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u6_u13_9380_wire, CONCAT_u2_u3_9387_wire, tmp_var);
      CONCAT_u13_u16_9388_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u14_u22_9345_inst
    process(CONCAT_u7_u14_9333_wire, CONCAT_u6_u8_9344_wire) -- 
      variable tmp_var : std_logic_vector(21 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u7_u14_9333_wire, CONCAT_u6_u8_9344_wire, tmp_var);
      cpu_control_info_to_dcache_9346 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u16_u22_9400_inst
    process(CONCAT_u13_u16_9388_wire, CONCAT_u3_u6_9399_wire) -- 
      variable tmp_var : std_logic_vector(21 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u13_u16_9388_wire, CONCAT_u3_u6_9399_wire, tmp_var);
      CONCAT_u16_u22_9400_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u23_9350_inst
    process(R_ONE_1_9348_wire_constant, cpu_control_info_to_dcache_9346) -- 
      variable tmp_var : std_logic_vector(22 downto 0); -- 
    begin -- 
      ApConcat_proc(R_ONE_1_9348_wire_constant, cpu_control_info_to_dcache_9346, tmp_var);
      CONCAT_u1_u23_9350_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_8354_inst
    process(get_from_sc_8330, get_from_iu_reg_8334) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(get_from_sc_8330, get_from_iu_reg_8334, tmp_var);
      CONCAT_u1_u2_8354_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_8359_inst
    process(get_from_fu_reg_8342, get_from_fu_trap_8346) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(get_from_fu_reg_8342, get_from_fu_trap_8346, tmp_var);
      CONCAT_u1_u2_8359_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_9247_inst
    process(messy_data_access_exception_9243, messy_data_access_error_9243) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(messy_data_access_exception_9243, messy_data_access_error_9243, tmp_var);
      CONCAT_u1_u2_9247_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_9343_inst
    process(fp_8865, cp_8865) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(fp_8865, cp_8865, tmp_var);
      CONCAT_u1_u2_9343_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_9383_inst
    process(ls_to_fu2_8475, ls_to_cu2_8479) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(ls_to_fu2_8475, ls_to_cu2_8479, tmp_var);
      CONCAT_u1_u2_9383_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_9391_inst
    process(run_messy_load_store_op_qualified_9218, run_simple_load_store_op_qualified_9296) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(run_messy_load_store_op_qualified_9218, run_simple_load_store_op_qualified_9296, tmp_var);
      CONCAT_u1_u2_9391_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_9396_inst
    process(illegal_instr_trap_8951, mem_address_not_aligned_8986) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(illegal_instr_trap_8951, mem_address_not_aligned_8986, tmp_var);
      CONCAT_u1_u2_9396_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_9403_inst
    process(is_store_8865, signed_type_8865) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_store_8865, signed_type_8865, tmp_var);
      CONCAT_u1_u2_9403_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_9408_inst
    process(byte_8865, half_word_8865) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(byte_8865, half_word_8865, tmp_var);
      CONCAT_u1_u2_9408_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u33_9419_inst
    process(confirmed_dbg_wp_write_hit_9192, simple_store_signature_9287) -- 
      variable tmp_var : std_logic_vector(32 downto 0); -- 
    begin -- 
      ApConcat_proc(confirmed_dbg_wp_write_hit_9192, simple_store_signature_9287, tmp_var);
      CONCAT_u1_u33_9419_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u3_9414_inst
    process(double_word_8865, dbg_wp_reg_id_9049) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(double_word_8865, dbg_wp_reg_id_9049, tmp_var);
      CONCAT_u1_u3_9414_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u5_9327_inst
    process(NOT_u1_u1_9325_wire, thread_id_8399) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(NOT_u1_u1_9325_wire, thread_id_8399, tmp_var);
      CONCAT_u1_u5_9327_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u22_u97_9424_inst
    process(CONCAT_u16_u22_9400_wire, CONCAT_u6_u75_9423_wire) -- 
      variable tmp_var : std_logic_vector(96 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u16_u22_9400_wire, CONCAT_u6_u75_9423_wire, tmp_var);
      ls_router_control_info_9425 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u23_u39_9354_inst
    process(CONCAT_u1_u23_9350_wire, CONCAT_u8_u16_9353_wire) -- 
      variable tmp_var : std_logic_vector(38 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u23_9350_wire, CONCAT_u8_u16_9353_wire, tmp_var);
      CONCAT_u23_u39_9354_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u128_9466_inst
    process(next_ls_state_9131, from_dispatch_8284) -- 
      variable tmp_var : std_logic_vector(127 downto 0); -- 
    begin -- 
      ApConcat_proc(next_ls_state_9131, from_dispatch_8284, tmp_var);
      CONCAT_u2_u128_9466_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u34_9249_inst
    process(CONCAT_u1_u2_9247_wire, messy_store_signature_9243) -- 
      variable tmp_var : std_logic_vector(33 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_9247_wire, messy_store_signature_9243, tmp_var);
      CONCAT_u2_u34_9249_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_8356_inst
    process(CONCAT_u1_u2_8354_wire, get_from_iu_trap_8338) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_8354_wire, get_from_iu_trap_8338, tmp_var);
      CONCAT_u2_u3_8356_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_8361_inst
    process(CONCAT_u1_u2_8359_wire, get_from_cu_8350) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_8359_wire, get_from_cu_8350, tmp_var);
      CONCAT_u2_u3_8361_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_9387_inst
    process(CONCAT_u1_u2_9383_wire, AND_u1_u1_9386_wire) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_9383_wire, AND_u1_u1_9386_wire, tmp_var);
      CONCAT_u2_u3_9387_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_9393_inst
    process(CONCAT_u1_u2_9391_wire, privileged_instr_trap_8932) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_9391_wire, privileged_instr_trap_8932, tmp_var);
      CONCAT_u2_u3_9393_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_9398_inst
    process(CONCAT_u1_u2_9396_wire, is_load_8865) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_9396_wire, is_load_8865, tmp_var);
      CONCAT_u2_u3_9398_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_9405_inst
    process(CONCAT_u1_u2_9403_wire, unsigned_type_8865) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_9403_wire, unsigned_type_8865, tmp_var);
      CONCAT_u2_u3_9405_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_9410_inst
    process(CONCAT_u1_u2_9408_wire, word_8865) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_9408_wire, word_8865, tmp_var);
      CONCAT_u2_u3_9410_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u6_9303_inst
    process(cpu_id_2_8304) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(cpu_id_2_8304, R_REQUEST_TYPE_NOP_9302_wire_constant, tmp_var);
      CONCAT_u2_u6_9303_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u8_9304_inst
    process(CONCAT_u1_u2_9300_wire_constant, CONCAT_u2_u6_9303_wire) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_9300_wire_constant, CONCAT_u2_u6_9303_wire, tmp_var);
      untrap_request_type_9305 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u64_9252_inst
    process(messy_dout_h_9243, messy_dout_l_9243) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(messy_dout_h_9243, messy_dout_l_9243, tmp_var);
      CONCAT_u32_u64_9252_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u33_u65_9421_inst
    process(CONCAT_u1_u33_9419_wire, access_address_8697) -- 
      variable tmp_var : std_logic_vector(64 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u33_9419_wire, access_address_8697, tmp_var);
      CONCAT_u33_u65_9421_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u34_u98_9253_inst
    process(CONCAT_u2_u34_9249_wire, CONCAT_u32_u64_9252_wire) -- 
      variable tmp_var : std_logic_vector(97 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u34_9249_wire, CONCAT_u32_u64_9252_wire, tmp_var);
      messy_to_ls_router_9254 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u39_u143_9360_inst
    process(CONCAT_u23_u39_9354_wire, CONCAT_u40_u104_9359_wire) -- 
      variable tmp_var : std_logic_vector(142 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u23_u39_9354_wire, CONCAT_u40_u104_9359_wire, tmp_var);
      to_dcache_9361 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u4_9416_inst
    process(CONCAT_u1_u3_9414_wire, confirmed_dbg_wp_read_hit_9187) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u3_9414_wire, confirmed_dbg_wp_read_hit_9187, tmp_var);
      CONCAT_u3_u4_9416_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u6_8362_inst
    process(CONCAT_u2_u3_8356_wire, CONCAT_u2_u3_8361_wire) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_8356_wire, CONCAT_u2_u3_8361_wire, tmp_var);
      get_vals_8363 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u6_9399_inst
    process(CONCAT_u2_u3_9393_wire, CONCAT_u2_u3_9398_wire) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_9393_wire, CONCAT_u2_u3_9398_wire, tmp_var);
      CONCAT_u3_u6_9399_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u6_9411_inst
    process(CONCAT_u2_u3_9405_wire, CONCAT_u2_u3_9410_wire) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_9405_wire, CONCAT_u2_u3_9410_wire, tmp_var);
      CONCAT_u3_u6_9411_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u40_u104_9359_inst
    process(CONCAT_u8_u40_9357_wire, simple_dcache_write_data_9287) -- 
      variable tmp_var : std_logic_vector(103 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u8_u40_9357_wire, simple_dcache_write_data_9287, tmp_var);
      CONCAT_u40_u104_9359_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u69_9422_inst
    process(CONCAT_u3_u4_9416_wire, CONCAT_u33_u65_9421_wire) -- 
      variable tmp_var : std_logic_vector(68 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u3_u4_9416_wire, CONCAT_u33_u65_9421_wire, tmp_var);
      CONCAT_u4_u69_9422_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u6_9376_inst
    process(thread_id_8399, stream_id_8403) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(thread_id_8399, stream_id_8403, tmp_var);
      CONCAT_u4_u6_9376_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u6_9340_inst
    process(rd_from_dispatch_8395, AND_u1_u1_9339_wire) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(rd_from_dispatch_8395, AND_u1_u1_9339_wire, tmp_var);
      CONCAT_u5_u6_9340_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u7_9329_inst
    process(CONCAT_u1_u5_9327_wire, stream_id_8403) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u5_9327_wire, stream_id_8403, tmp_var);
      CONCAT_u5_u7_9329_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u13_9380_inst
    process(CONCAT_u4_u6_9376_wire, CONCAT_u6_u7_9379_wire) -- 
      variable tmp_var : std_logic_vector(12 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u6_9376_wire, CONCAT_u6_u7_9379_wire, tmp_var);
      CONCAT_u6_u13_9380_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u75_9423_inst
    process(CONCAT_u3_u6_9411_wire, CONCAT_u4_u69_9422_wire) -- 
      variable tmp_var : std_logic_vector(74 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u3_u6_9411_wire, CONCAT_u4_u69_9422_wire, tmp_var);
      CONCAT_u6_u75_9423_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u7_9332_inst
    process(slot_id_8407, signed_type_8865) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(slot_id_8407, signed_type_8865, tmp_var);
      CONCAT_u6_u7_9332_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u7_9379_inst
    process(slot_id_8407, ls_to_iu2_8471) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(slot_id_8407, ls_to_iu2_8471, tmp_var);
      CONCAT_u6_u7_9379_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u7_9469_inst
    process(get_vals_8363, next_saved_annul_from_sc_8573) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(get_vals_8363, next_saved_annul_from_sc_8573, tmp_var);
      CONCAT_u6_u7_9469_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u8_9344_inst
    process(CONCAT_u5_u6_9340_wire, CONCAT_u1_u2_9343_wire) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u5_u6_9340_wire, CONCAT_u1_u2_9343_wire, tmp_var);
      CONCAT_u6_u8_9344_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u7_u14_9333_inst
    process(CONCAT_u5_u7_9329_wire, CONCAT_u6_u7_9332_wire) -- 
      variable tmp_var : std_logic_vector(13 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u5_u7_9329_wire, CONCAT_u6_u7_9332_wire, tmp_var);
      CONCAT_u7_u14_9333_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u8_u16_9353_inst
    process(simple_dcache_request_type_qualified_9311, simple_dcache_asi_9287) -- 
      variable tmp_var : std_logic_vector(15 downto 0); -- 
    begin -- 
      ApConcat_proc(simple_dcache_request_type_qualified_9311, simple_dcache_asi_9287, tmp_var);
      CONCAT_u8_u16_9353_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u8_u40_9357_inst
    process(simple_dcache_byte_mask_9287, simple_dcache_address_9287) -- 
      variable tmp_var : std_logic_vector(39 downto 0); -- 
    begin -- 
      ApConcat_proc(simple_dcache_byte_mask_9287, simple_dcache_address_9287, tmp_var);
      CONCAT_u8_u40_9357_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_8906_inst
    process(ls_state_8314) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(ls_state_8314, R_WB_NORMAL_8905_wire_constant, tmp_var);
      EQ_u2_u1_8906_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_8911_inst
    process(ls_state_8314) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(ls_state_8314, R_WB_MISPREDICTED_STREAM_8910_wire_constant, tmp_var);
      EQ_u2_u1_8911_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_8833_inst
    process(iclass_8419) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(iclass_8419, R_MISC_INSTR_8832_wire_constant, tmp_var);
      EQ_u3_u1_8833_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_8844_inst
    process(iclass_8419) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(iclass_8419, R_DATA_TRANSFER_INSTR_8843_wire_constant, tmp_var);
      EQ_u3_u1_8844_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_8890_inst
    process(sc_instr_class_8560) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(sc_instr_class_8560, R_TERMINATES_THREAD_8889_wire_constant, tmp_var);
      EQ_u3_u1_8890_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_8899_inst
    process(sc_instr_class_8560) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(sc_instr_class_8560, R_TERMINATES_STREAM_8898_wire_constant, tmp_var);
      EQ_u3_u1_8899_wire <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u18_u1_9162_inst
    process(mmu_fsr_8435) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(mmu_fsr_8435, konst_9161_wire_constant, tmp_var);
      NEQ_u18_u1_9162_wire <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u18_u1_9169_inst
    process(mmu_fsr_8435) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(mmu_fsr_8435, konst_9168_wire_constant, tmp_var);
      NEQ_u18_u1_9169_wire <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u1_u1_8981_inst
    process(BITSEL_u32_u1_8979_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(BITSEL_u32_u1_8979_wire, konst_8980_wire_constant, tmp_var);
      NEQ_u1_u1_8981_wire <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u2_u1_8973_inst
    process(slice_8971_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(slice_8971_wire, konst_8972_wire_constant, tmp_var);
      NEQ_u2_u1_8973_wire <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u3_u1_8967_inst
    process(slice_8965_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(slice_8965_wire, konst_8966_wire_constant, tmp_var);
      NEQ_u3_u1_8967_wire <= tmp_var; --
    end process;
    -- unary operator NOT_u1_u1_8308_inst
    process(messy_completed_8292) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", messy_completed_8292, tmp_var);
      NOT_u1_u1_8308_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_8577_inst
    process(stream_head_8415) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", stream_head_8415, tmp_var);
      NOT_u1_u1_8577_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_8579_inst
    process(thread_head_8411) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", thread_head_8411, tmp_var);
      NOT_u1_u1_8579_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_8918_inst
    process(pre_ls_trap_8526) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", pre_ls_trap_8526, tmp_var);
      NOT_u1_u1_8918_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_8922_inst
    process(ignore_instr_8584) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ignore_instr_8584, tmp_var);
      NOT_u1_u1_8922_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_8927_inst
    process(iu_S_8651) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", iu_S_8651, tmp_var);
      NOT_u1_u1_8927_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_8938_inst
    process(pre_ls_trap_8526) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", pre_ls_trap_8526, tmp_var);
      NOT_u1_u1_8938_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_8940_inst
    process(ignore_instr_8584) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ignore_instr_8584, tmp_var);
      NOT_u1_u1_8940_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_8957_inst
    process(ignore_instr_8584) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ignore_instr_8584, tmp_var);
      NOT_u1_u1_8957_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_8960_inst
    process(pre_ls_trap_8526) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", pre_ls_trap_8526, tmp_var);
      NOT_u1_u1_8960_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_8990_inst
    process(ignore_instr_8584) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ignore_instr_8584, tmp_var);
      NOT_u1_u1_8990_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_9058_inst
    process(ignore_instr_8584) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ignore_instr_8584, tmp_var);
      NOT_u1_u1_9058_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_9065_inst
    process(ignore_instr_8584) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ignore_instr_8584, tmp_var);
      NOT_u1_u1_9065_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_9069_inst
    process(ignore_instr_8584) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ignore_instr_8584, tmp_var);
      NOT_u1_u1_9069_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_9074_inst
    process(ignore_instr_8584) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ignore_instr_8584, tmp_var);
      NOT_u1_u1_9074_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_9098_inst
    process(upstream_trap_9079) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", upstream_trap_9079, tmp_var);
      NOT_u1_u1_9098_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_9120_inst
    process(ignore_instr_8584) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ignore_instr_8584, tmp_var);
      NOT_u1_u1_9120_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_9155_inst
    process(ignore_instr_8584) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ignore_instr_8584, tmp_var);
      NOT_u1_u1_9155_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_9171_inst
    process(mae_trap_8431) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", mae_trap_8431, tmp_var);
      NOT_u1_u1_9171_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_9315_inst
    process(is_load_8865) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", is_load_8865, tmp_var);
      NOT_u1_u1_9315_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_9319_inst
    process(run_simple_load_store_op_9207) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", run_simple_load_store_op_9207, tmp_var);
      NOT_u1_u1_9319_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_9325_inst
    process(do_not_bypass_9322) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", do_not_bypass_9322, tmp_var);
      NOT_u1_u1_9325_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_9336_inst
    process(fp_8865) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", fp_8865, tmp_var);
      NOT_u1_u1_9336_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_9338_inst
    process(cp_8865) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", cp_8865, tmp_var);
      NOT_u1_u1_9338_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator OR_u1_u1_8309_inst
    lock_ok_8310 <= (messy_completed_8292 or NOT_u1_u1_8308_wire);
    -- flow through binary operator OR_u1_u1_8525_inst
    pre_ls_trap_8526 <= (decode_trap_bit_8491 or mae_trap_8431);
    -- flow through binary operator OR_u1_u1_8583_inst
    ignore_instr_8584 <= (annul_instr_8487 or AND_u1_u1_8582_wire);
    -- flow through binary operator OR_u1_u1_8869_inst
    OR_u1_u1_8869_wire <= (fp_8865 or fp_cp_sreg_8865);
    -- flow through binary operator OR_u1_u1_8871_inst
    OR_u1_u1_8871_wire <= (OR_u1_u1_8869_wire or fp_q_8865);
    -- flow through binary operator OR_u1_u1_8879_inst
    OR_u1_u1_8879_wire <= (fp_8865 or fp_cp_sreg_8865);
    -- flow through binary operator OR_u1_u1_8881_inst
    OR_u1_u1_8881_wire <= (OR_u1_u1_8879_wire or fp_q_8865);
    -- flow through binary operator OR_u1_u1_8907_inst
    OR_u1_u1_8907_wire <= (thread_head_8411 or EQ_u2_u1_8906_wire);
    -- flow through binary operator OR_u1_u1_8913_inst
    trappable_instruction_8914 <= (OR_u1_u1_8907_wire or AND_u1_u1_8912_wire);
    -- flow through binary operator OR_u1_u1_8975_inst
    OR_u1_u1_8975_wire <= (AND_u1_u1_8968_wire or AND_u1_u1_8974_wire);
    -- flow through binary operator OR_u1_u1_8983_inst
    OR_u1_u1_8983_wire <= (OR_u1_u1_8975_wire or AND_u1_u1_8982_wire);
    -- flow through binary operator OR_u1_u1_8995_inst
    OR_u1_u1_8995_wire <= (privileged_instr_trap_8932 or illegal_instr_trap_8951);
    -- flow through binary operator OR_u1_u1_8997_inst
    OR_u1_u1_8997_wire <= (OR_u1_u1_8995_wire or mem_address_not_aligned_8986);
    -- flow through binary operator OR_u1_u1_9028_inst
    OR_u1_u1_9028_wire <= (is_load_8865 or is_swap_8865);
    -- flow through binary operator OR_u1_u1_9030_inst
    is_load_to_debug_9031 <= (OR_u1_u1_9028_wire or is_ldstub_8865);
    -- flow through binary operator OR_u1_u1_9035_inst
    OR_u1_u1_9035_wire <= (is_store_8865 or is_swap_8865);
    -- flow through binary operator OR_u1_u1_9037_inst
    is_store_to_debug_9038 <= (OR_u1_u1_9035_wire or is_ldstub_8865);
    -- flow through binary operator OR_u1_u1_9053_inst
    potential_dbg_wp_hit_9054 <= (potential_dbg_wp_read_hit_9049 or potential_dbg_wp_write_hit_9049);
    -- flow through binary operator OR_u1_u1_9061_inst
    OR_u1_u1_9061_wire <= (mae_trap_8431 or AND_u1_u1_9060_wire);
    -- flow through binary operator OR_u1_u1_9063_inst
    OR_u1_u1_9063_wire <= (OR_u1_u1_9061_wire or debug_bp_hit_8483);
    -- flow through binary operator OR_u1_u1_9072_inst
    OR_u1_u1_9072_wire <= (AND_u1_u1_9067_wire or AND_u1_u1_9071_wire);
    -- flow through binary operator OR_u1_u1_9077_inst
    OR_u1_u1_9077_wire <= (OR_u1_u1_9072_wire or AND_u1_u1_9076_wire);
    -- flow through binary operator OR_u1_u1_9078_inst
    upstream_trap_9079 <= (OR_u1_u1_9063_wire or OR_u1_u1_9077_wire);
    -- flow through binary operator OR_u1_u1_9093_inst
    break_thread_9094 <= (sc_break_thread_8892 or upstream_trap_9079);
    -- flow through binary operator OR_u1_u1_9212_inst
    OR_u1_u1_9212_wire <= (run_instruction_9158 or update_mmu_fsr_9165);
    -- flow through binary operator OR_u1_u1_9214_inst
    OR_u1_u1_9214_wire <= (OR_u1_u1_9212_wire or untrap_cache_9195);
    -- flow through binary operator OR_u1_u1_9292_inst
    OR_u1_u1_9292_wire <= (run_instruction_9158 or untrap_cache_9195);
    -- flow through binary operator OR_u1_u1_9316_inst
    OR_u1_u1_9316_wire <= (do_not_bypass_from_dispatch_8391 or NOT_u1_u1_9315_wire);
    -- flow through binary operator OR_u1_u1_9320_inst
    OR_u1_u1_9320_wire <= (use_asi_8865 or NOT_u1_u1_9319_wire);
    -- flow through binary operator OR_u1_u1_9321_inst
    do_not_bypass_9322 <= (OR_u1_u1_9316_wire or OR_u1_u1_9320_wire);
    -- flow through binary operator OR_u1_u1_9430_inst
    OR_u1_u1_9430_wire <= (ls_to_iu2_8471 or ls_to_fu2_8475);
    -- flow through binary operator OR_u1_u1_9432_inst
    OR_u1_u1_9432_wire <= (OR_u1_u1_9430_wire or uses_ls_8443);
    -- unary operator type_cast_8687_inst
    process(type_cast_8686_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntToApIntSigned", type_cast_8686_wire, tmp_var);
      type_cast_8687_wire <= tmp_var; -- 
    end process;
    -- read from input-signal THREAD_ID
    RPIPE_THREAD_ID_8299_wire <= THREAD_ID;
    -- read from input-signal debug_wp_0
    RPIPE_debug_wp_0_9014_wire <= debug_wp_0;
    -- read from input-signal debug_wp_1
    RPIPE_debug_wp_1_9017_wire <= debug_wp_1;
    -- read from input-signal debug_wp_2
    RPIPE_debug_wp_2_9020_wire <= debug_wp_2;
    -- read from input-signal debug_wp_3
    RPIPE_debug_wp_3_9023_wire <= debug_wp_3;
    -- shared inport operator group (5) : RPIPE_messy_operation_completed_8296_inst 
    InportGroup_5: Block -- 
      signal data_out: std_logic_vector(0 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_messy_operation_completed_8296_inst_req_0;
      RPIPE_messy_operation_completed_8296_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_messy_operation_completed_8296_inst_req_1;
      RPIPE_messy_operation_completed_8296_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <= get_messy_completion_9221(0);
      RPIPE_messy_operation_completed_8296_wire <= data_out(0 downto 0);
      messy_operation_completed_read_5_gI: SplitGuardInterface generic map(name => "messy_operation_completed_read_5_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      messy_operation_completed_read_5: InputPortRevised -- 
        generic map ( name => "messy_operation_completed_read_5", data_width => 1,  num_reqs => 1,  output_buffering => outBUFs,   nonblocking_read_flag => False,  no_arbitration => false)
        port map (-- 
          sample_req => reqL , 
          sample_ack => ackL, 
          update_req => reqR, 
          update_ack => ackR, 
          data => data_out, 
          oreq => messy_operation_completed_pipe_read_req(0),
          oack => messy_operation_completed_pipe_read_ack(0),
          odata => messy_operation_completed_pipe_read_data(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 5
    -- shared inport operator group (6) : RPIPE_noblock_teu_idispatch_to_loadstore_8287_inst 
    InportGroup_6: Block -- 
      signal data_out: std_logic_vector(125 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_noblock_teu_idispatch_to_loadstore_8287_inst_req_0;
      RPIPE_noblock_teu_idispatch_to_loadstore_8287_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_noblock_teu_idispatch_to_loadstore_8287_inst_req_1;
      RPIPE_noblock_teu_idispatch_to_loadstore_8287_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      RPIPE_noblock_teu_idispatch_to_loadstore_8287_wire <= data_out(125 downto 0);
      noblock_teu_idispatch_to_loadstore_read_6_gI: SplitGuardInterface generic map(name => "noblock_teu_idispatch_to_loadstore_read_6_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      noblock_teu_idispatch_to_loadstore_read_6: InputPort_P2P -- 
        generic map ( name => "noblock_teu_idispatch_to_loadstore_read_6", data_width => 126,    bypass_flag => false,   	nonblocking_read_flag => true,  barrier_flag => false,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => noblock_teu_idispatch_to_loadstore_pipe_read_req(0),
          oack => noblock_teu_idispatch_to_loadstore_pipe_read_ack(0),
          odata => noblock_teu_idispatch_to_loadstore_pipe_read_data(125 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 6
    -- shared inport operator group (7) : RPIPE_teu_fpunit_register_file_to_loadstore_8278_inst 
    InportGroup_7: Block -- 
      signal data_out: std_logic_vector(76 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_teu_fpunit_register_file_to_loadstore_8278_inst_req_0;
      RPIPE_teu_fpunit_register_file_to_loadstore_8278_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_teu_fpunit_register_file_to_loadstore_8278_inst_req_1;
      RPIPE_teu_fpunit_register_file_to_loadstore_8278_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <= get_from_fu_reg_8342(0);
      RPIPE_teu_fpunit_register_file_to_loadstore_8278_wire <= data_out(76 downto 0);
      teu_fpunit_register_file_to_loadstore_read_7_gI: SplitGuardInterface generic map(name => "teu_fpunit_register_file_to_loadstore_read_7_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      teu_fpunit_register_file_to_loadstore_read_7: InputPort_P2P -- 
        generic map ( name => "teu_fpunit_register_file_to_loadstore_read_7", data_width => 77,    bypass_flag => false,   	nonblocking_read_flag => false,  barrier_flag => true,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => teu_fpunit_register_file_to_loadstore_pipe_read_req(0),
          oack => teu_fpunit_register_file_to_loadstore_pipe_read_ack(0),
          odata => teu_fpunit_register_file_to_loadstore_pipe_read_data(76 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 7
    -- shared inport operator group (8) : RPIPE_teu_fpunit_trap_to_loadstore_8283_inst 
    InportGroup_8: Block -- 
      signal data_out: std_logic_vector(12 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_teu_fpunit_trap_to_loadstore_8283_inst_req_0;
      RPIPE_teu_fpunit_trap_to_loadstore_8283_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_teu_fpunit_trap_to_loadstore_8283_inst_req_1;
      RPIPE_teu_fpunit_trap_to_loadstore_8283_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <= get_from_fu_trap_8346(0);
      RPIPE_teu_fpunit_trap_to_loadstore_8283_wire <= data_out(12 downto 0);
      teu_fpunit_trap_to_loadstore_read_8_gI: SplitGuardInterface generic map(name => "teu_fpunit_trap_to_loadstore_read_8_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      teu_fpunit_trap_to_loadstore_read_8: InputPort_P2P -- 
        generic map ( name => "teu_fpunit_trap_to_loadstore_read_8", data_width => 13,    bypass_flag => false,   	nonblocking_read_flag => false,  barrier_flag => true,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => teu_fpunit_trap_to_loadstore_pipe_read_req(0),
          oack => teu_fpunit_trap_to_loadstore_pipe_read_ack(0),
          odata => teu_fpunit_trap_to_loadstore_pipe_read_data(12 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 8
    -- shared inport operator group (9) : RPIPE_teu_iunit_register_file_to_loadstore_8268_inst 
    InportGroup_9: Block -- 
      signal data_out: std_logic_vector(141 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_teu_iunit_register_file_to_loadstore_8268_inst_req_0;
      RPIPE_teu_iunit_register_file_to_loadstore_8268_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_teu_iunit_register_file_to_loadstore_8268_inst_req_1;
      RPIPE_teu_iunit_register_file_to_loadstore_8268_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <= get_from_iu_reg_8334(0);
      RPIPE_teu_iunit_register_file_to_loadstore_8268_wire <= data_out(141 downto 0);
      teu_iunit_register_file_to_loadstore_read_9_gI: SplitGuardInterface generic map(name => "teu_iunit_register_file_to_loadstore_read_9_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      teu_iunit_register_file_to_loadstore_read_9: InputPort_P2P -- 
        generic map ( name => "teu_iunit_register_file_to_loadstore_read_9", data_width => 142,    bypass_flag => false,   	nonblocking_read_flag => false,  barrier_flag => true,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => teu_iunit_register_file_to_loadstore_pipe_read_req(0),
          oack => teu_iunit_register_file_to_loadstore_pipe_read_ack(0),
          odata => teu_iunit_register_file_to_loadstore_pipe_read_data(141 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 9
    -- shared inport operator group (10) : RPIPE_teu_iunit_trap_to_loadstore_8273_inst 
    InportGroup_10: Block -- 
      signal data_out: std_logic_vector(0 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_teu_iunit_trap_to_loadstore_8273_inst_req_0;
      RPIPE_teu_iunit_trap_to_loadstore_8273_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_teu_iunit_trap_to_loadstore_8273_inst_req_1;
      RPIPE_teu_iunit_trap_to_loadstore_8273_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <= get_from_iu_trap_8338(0);
      RPIPE_teu_iunit_trap_to_loadstore_8273_wire <= data_out(0 downto 0);
      teu_iunit_trap_to_loadstore_read_10_gI: SplitGuardInterface generic map(name => "teu_iunit_trap_to_loadstore_read_10_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      teu_iunit_trap_to_loadstore_read_10: InputPort_P2P -- 
        generic map ( name => "teu_iunit_trap_to_loadstore_read_10", data_width => 1,    bypass_flag => false,   	nonblocking_read_flag => false,  barrier_flag => true,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => teu_iunit_trap_to_loadstore_pipe_read_req(0),
          oack => teu_iunit_trap_to_loadstore_pipe_read_ack(0),
          odata => teu_iunit_trap_to_loadstore_pipe_read_data(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 10
    -- shared inport operator group (11) : RPIPE_teu_stream_corrector_to_loadstore_8263_inst 
    InportGroup_11: Block -- 
      signal data_out: std_logic_vector(18 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_teu_stream_corrector_to_loadstore_8263_inst_req_0;
      RPIPE_teu_stream_corrector_to_loadstore_8263_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_teu_stream_corrector_to_loadstore_8263_inst_req_1;
      RPIPE_teu_stream_corrector_to_loadstore_8263_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <= get_from_sc_8330(0);
      RPIPE_teu_stream_corrector_to_loadstore_8263_wire <= data_out(18 downto 0);
      teu_stream_corrector_to_loadstore_read_11_gI: SplitGuardInterface generic map(name => "teu_stream_corrector_to_loadstore_read_11_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      teu_stream_corrector_to_loadstore_read_11: InputPort_P2P -- 
        generic map ( name => "teu_stream_corrector_to_loadstore_read_11", data_width => 19,    bypass_flag => true,   	nonblocking_read_flag => false,  barrier_flag => true,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => teu_stream_corrector_to_loadstore_pipe_read_req(0),
          oack => teu_stream_corrector_to_loadstore_pipe_read_ack(0),
          odata => teu_stream_corrector_to_loadstore_pipe_read_data(18 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 11
    -- shared outport operator group (0) : WPIPE_NOBLOCK_CPU_to_DCACHE_command_9370_inst 
    OutportGroup_0: Block -- 
      signal data_in: std_logic_vector(142 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_NOBLOCK_CPU_to_DCACHE_command_9370_inst_req_0;
      WPIPE_NOBLOCK_CPU_to_DCACHE_command_9370_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_NOBLOCK_CPU_to_DCACHE_command_9370_inst_req_1;
      WPIPE_NOBLOCK_CPU_to_DCACHE_command_9370_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= run_simple_load_store_op_qualified_9296(0);
      data_in <= to_dcache_9361;
      NOBLOCK_CPU_to_DCACHE_command_write_0_gI: SplitGuardInterface generic map(name => "NOBLOCK_CPU_to_DCACHE_command_write_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      NOBLOCK_CPU_to_DCACHE_command_write_0: OutputPortRevised -- 
        generic map ( name => "NOBLOCK_CPU_to_DCACHE_command", data_width => 143, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => NOBLOCK_CPU_to_DCACHE_command_pipe_write_req(0),
          oack => NOBLOCK_CPU_to_DCACHE_command_pipe_write_ack(0),
          odata => NOBLOCK_CPU_to_DCACHE_command_pipe_write_data(142 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    -- shared outport operator group (1) : WPIPE_load_store_messy_to_router_pipe_9259_inst 
    OutportGroup_1: Block -- 
      signal data_in: std_logic_vector(97 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_load_store_messy_to_router_pipe_9259_inst_req_0;
      WPIPE_load_store_messy_to_router_pipe_9259_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_load_store_messy_to_router_pipe_9259_inst_req_1;
      WPIPE_load_store_messy_to_router_pipe_9259_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= run_messy_load_store_op_qualified_9527_delayed_3_0_9257(0);
      data_in <= messy_to_ls_router_9254;
      load_store_messy_to_router_pipe_write_1_gI: SplitGuardInterface generic map(name => "load_store_messy_to_router_pipe_write_1_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      load_store_messy_to_router_pipe_write_1: OutputPortRevised -- 
        generic map ( name => "load_store_messy_to_router_pipe", data_width => 98, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => load_store_messy_to_router_pipe_pipe_write_req(0),
          oack => load_store_messy_to_router_pipe_pipe_write_ack(0),
          odata => load_store_messy_to_router_pipe_pipe_write_data(97 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 1
    -- shared outport operator group (2) : WPIPE_load_store_router_control_pipe_9436_inst 
    OutportGroup_2: Block -- 
      signal data_in: std_logic_vector(96 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_load_store_router_control_pipe_9436_inst_req_0;
      WPIPE_load_store_router_control_pipe_9436_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_load_store_router_control_pipe_9436_inst_req_1;
      WPIPE_load_store_router_control_pipe_9436_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= forward_info_9434(0);
      data_in <= ls_router_control_info_9425;
      load_store_router_control_pipe_write_2_gI: SplitGuardInterface generic map(name => "load_store_router_control_pipe_write_2_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      load_store_router_control_pipe_write_2: OutputPortRevised -- 
        generic map ( name => "load_store_router_control_pipe", data_width => 97, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => load_store_router_control_pipe_pipe_write_req(0),
          oack => load_store_router_control_pipe_pipe_write_ack(0),
          odata => load_store_router_control_pipe_pipe_write_data(96 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 2
    -- shared outport operator group (3) : WPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_8762_inst 
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
      sample_req_unguarded(0) <= WPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_8762_inst_req_0;
      WPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_8762_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_8762_inst_req_1;
      WPIPE_noblock_teu_loadstore_to_fpunit_regfile_credit_return_8762_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= fu_regs_valid_8740(0);
      data_in <= R_ONE_1_8763_wire_constant;
      noblock_teu_loadstore_to_fpunit_regfile_credit_return_write_3_gI: SplitGuardInterface generic map(name => "noblock_teu_loadstore_to_fpunit_regfile_credit_return_write_3_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      noblock_teu_loadstore_to_fpunit_regfile_credit_return_write_3: OutputPortRevised -- 
        generic map ( name => "noblock_teu_loadstore_to_fpunit_regfile_credit_return", data_width => 1, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_req(0),
          oack => noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_ack(0),
          odata => noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_data(0 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 3
    -- shared outport operator group (4) : WPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_8681_inst 
    OutportGroup_4: Block -- 
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
      sample_req_unguarded(0) <= WPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_8681_inst_req_0;
      WPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_8681_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_8681_inst_req_1;
      WPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_8681_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= iu_regs_valid_8647(0);
      data_in <= R_ONE_1_8682_wire_constant;
      noblock_teu_loadstore_to_iunit_regfile_credit_return_write_4_gI: SplitGuardInterface generic map(name => "noblock_teu_loadstore_to_iunit_regfile_credit_return_write_4_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      noblock_teu_loadstore_to_iunit_regfile_credit_return_write_4: OutputPortRevised -- 
        generic map ( name => "noblock_teu_loadstore_to_iunit_regfile_credit_return", data_width => 1, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_req(0),
          oack => noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_ack(0),
          odata => noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_data(0 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 4
    volatile_operator_decode_dti_ispec_8129: decode_dti_ispec_Volatile port map(ispec => ispec_8423, is_load => is_load_8865, is_store => is_store_8865, is_atomic_ldstub => is_ldstub_8865, is_swap => is_swap_8865, S => signed_type_8865, U => unsigned_type_8865, FP => fp_type_8865, byte => byte_8865, half_word => half_word_8865, word => word_8865, double_word => double_word_8865, is_fp_access => fp_8865, is_cp_access => cp_8865, is_fp_cp_sr_access => fp_cp_sreg_8865, is_fp_cp_q_access => fp_q_8865, asi_bit => use_asi_8865, asi_id_8 => asi_id_8865); 
    volatile_operator_debug_calculate_debug_wp_hits_8199: debug_calculate_debug_wp_hits_Volatile port map(is_load => is_load_to_debug_9031, is_store => is_store_to_debug_9038, wp0_in => wp_0_9015, wp1_in => wp_1_9018, wp2_in => wp_2_9021, wp3_in => wp_3_9024, addr_from_iunit => access_address_8697, debug_wp_reg_id => dbg_wp_reg_id_9049, read_debug_wp_hit => potential_dbg_wp_read_hit_9049, write_debug_wp_hit => potential_dbg_wp_write_hit_9049); 
    volatile_operator_writeback_fsm_8219: writeback_fsm_Volatile port map(wb_state => ls_state_8314, valid_bit => valid_from_dispatch_8387, thread_head => thread_head_8411, stream_head => stream_head_8415, break_thread => break_thread_9094, terminate_thread => terminate_thread_9100, kill_thread_now => kill_thread_now_9103, break_stream => break_stream_9106, next_wb_state => next_ls_state_raw_9117, instr_can_execute => instruction_may_be_run_9117); 
    volatile_operator_classify_load_store_operation_8235: classify_load_store_operation_Volatile port map(untrap_cache => untrap_cache_9195, update_mmu_fsr => update_mmu_fsr_9165, is_load => is_load_8865, is_store => is_store_8865, is_swap => is_swap_8865, is_atomic_ld_st => is_ldstub_8865, run_flush => is_flush_8839, is_simple_load_store => run_simple_load_store_op_9207, is_messy_load_store => run_messy_load_store_op_9207); 
    -- shared call operator group (4) : call_stmt_9243_call 
    execute_messy_dti_call_group_4: Block -- 
      signal data_in: std_logic_vector(163 downto 0);
      signal data_out: std_logic_vector(97 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqL_unregulated, ackL_unregulated : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 3);
      -- 
    begin -- 
      reqL_unguarded(0) <= call_stmt_9243_call_req_0;
      call_stmt_9243_call_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= call_stmt_9243_call_req_1;
      call_stmt_9243_call_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <= run_messy_load_store_op_qualified_9218(0);
      reqL <= reqL_unregulated;
      ackL_unregulated <= ackL;
      execute_messy_dti_call_group_4_gI: SplitGuardInterface generic map(name => "execute_messy_dti_call_group_4_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
      data_in <= cpu_id_2_8304 & run_dti_9182 & untrap_cache_9195 & update_mmu_fsr_9165 & access_address_8697 & write_data_h_8875 & write_data_l_8885 & pc_8495 & mmu_fsr_8435 & is_swap_8865 & is_ldstub_8865 & signed_type_8865 & use_asi_8865 & asi_id_8865 & iu_S_8651;
      messy_dout_h_9243 <= data_out(97 downto 66);
      messy_dout_l_9243 <= data_out(65 downto 34);
      messy_data_access_exception_9243 <= data_out(33 downto 33);
      messy_data_access_error_9243 <= data_out(32 downto 32);
      messy_store_signature_9243 <= data_out(31 downto 0);
      CallReq: InputMuxWithBuffering -- 
        generic map (name => "InputMuxWithBuffering",
        iwidth => 164,
        owidth => 164,
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
          reqR => execute_messy_dti_call_reqs(0),
          ackR => execute_messy_dti_call_acks(0),
          dataR => execute_messy_dti_call_data(163 downto 0),
          tagR => execute_messy_dti_call_tag(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      CallComplete: OutputDemuxBaseWithBuffering -- 
        generic map ( -- 
          iwidth => 98,
          owidth => 98,
          detailed_buffering_per_output => outBUFs, 
          full_rate => true, 
          twidth => 1,
          name => "OutputDemuxBaseWithBuffering",
          nreqs => 1) -- 
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          dataR => data_out, 
          reqL => execute_messy_dti_return_acks(0), -- cross-over
          ackL => execute_messy_dti_return_reqs(0), -- cross-over
          dataL => execute_messy_dti_return_data(97 downto 0),
          tagL => execute_messy_dti_return_tag(0 downto 0),
          clk => clk,
          reset => reset -- 
        ); -- 
      -- 
    end Block; -- call group 4
    volatile_operator_prepare_simple_dcache_command_8248: prepare_simple_dcache_command_Volatile port map(cpu_id_2 => cpu_id_2_8304, untrap_cache => untrap_cache_9195, addr => access_address_8697, din_h => write_data_h_8875, din_l => write_data_l_8885, pc => pc_8495, is_load => is_load_8865, is_store => is_store_8865, signed_type => signed_type_8865, unsigned_type => unsigned_type_8865, fp_type => fp_type_8865, byte => byte_8865, half_word => half_word_8865, word => word_8865, double_word => double_word_8865, use_asi => use_asi_8865, asi => asi_id_8865, is_flush => is_flush_8839, S => iu_S_8651, dcache_request_type => simple_dcache_request_type_9287, dcache_asi => simple_dcache_asi_9287, dcache_byte_mask => simple_dcache_byte_mask_9287, dcache_address => simple_dcache_address_9287, dcache_write_data => simple_dcache_write_data_9287, store_signature => simple_store_signature_9287); 
    -- 
  end Block; -- data_path
  -- 
end load_store_daemon_arch;
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
library teu_loadstore;
use teu_loadstore.loadstore_global_package.all;
entity loadstore_router_core_Volatile is -- 
  port ( -- 
    control_info : in  std_logic_vector(96 downto 0);
    simple_info : in  std_logic_vector(71 downto 0);
    messy_info : in  std_logic_vector(97 downto 0);
    to_iu : out  std_logic_vector(0 downto 0);
    to_fu : out  std_logic_vector(0 downto 0);
    to_cu : out  std_logic_vector(0 downto 0);
    to_retire : out  std_logic_vector(0 downto 0);
    to_iu_fu_data : out  std_logic_vector(77 downto 0);
    to_cu_data : out  std_logic_vector(13 downto 0);
    data_to_iretire : out  std_logic_vector(53 downto 0)-- 
  );
  -- 
end entity loadstore_router_core_Volatile;
architecture loadstore_router_core_Volatile_arch of loadstore_router_core_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(267-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal control_info_buffer :  std_logic_vector(96 downto 0);
  signal simple_info_buffer :  std_logic_vector(71 downto 0);
  signal messy_info_buffer :  std_logic_vector(97 downto 0);
  -- output port buffer signals
  signal to_iu_buffer :  std_logic_vector(0 downto 0);
  signal to_fu_buffer :  std_logic_vector(0 downto 0);
  signal to_cu_buffer :  std_logic_vector(0 downto 0);
  signal to_retire_buffer :  std_logic_vector(0 downto 0);
  signal to_iu_fu_data_buffer :  std_logic_vector(77 downto 0);
  signal to_cu_data_buffer :  std_logic_vector(13 downto 0);
  signal data_to_iretire_buffer :  std_logic_vector(53 downto 0);
  -- volatile/operator module components. 
  component analyze_dcache_response_Volatile is -- 
    port ( -- 
      addr : in  std_logic_vector(31 downto 0);
      dcache_response : in  std_logic_vector(71 downto 0);
      is_load : in  std_logic_vector(0 downto 0);
      is_store : in  std_logic_vector(0 downto 0);
      signed_type : in  std_logic_vector(0 downto 0);
      unsigned_type : in  std_logic_vector(0 downto 0);
      byte : in  std_logic_vector(0 downto 0);
      half_word : in  std_logic_vector(0 downto 0);
      word : in  std_logic_vector(0 downto 0);
      double_word : in  std_logic_vector(0 downto 0);
      dout_h : out  std_logic_vector(31 downto 0);
      dout_l : out  std_logic_vector(31 downto 0);
      data_access_exception : out  std_logic_vector(0 downto 0);
      data_access_error : out  std_logic_vector(0 downto 0);
      dcache_hit : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  -- 
begin --  
  -- input handling ------------------------------------------------
  control_info_buffer <= control_info;
  simple_info_buffer <= simple_info;
  messy_info_buffer <= messy_info;
  -- output handling  -------------------------------------------------------
  to_iu <= to_iu_buffer;
  to_fu <= to_fu_buffer;
  to_cu <= to_cu_buffer;
  to_retire <= to_retire_buffer;
  to_iu_fu_data <= to_iu_fu_data_buffer;
  to_cu_data <= to_cu_data_buffer;
  data_to_iretire <= data_to_iretire_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_9626_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_9629_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_9635_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_9638_wire : std_logic_vector(0 downto 0);
    signal CONCAT_u13_u16_9771_wire : std_logic_vector(15 downto 0);
    signal CONCAT_u1_u2_9700_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_9768_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_9774_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_9779_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u33_9687_wire : std_logic_vector(32 downto 0);
    signal CONCAT_u2_u34_9781_wire : std_logic_vector(33 downto 0);
    signal CONCAT_u2_u3_9746_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_9770_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u4_9776_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u33_u65_9689_wire : std_logic_vector(64 downto 0);
    signal CONCAT_u3_u32_9749_wire : std_logic_vector(31 downto 0);
    signal CONCAT_u4_u38_9782_wire : std_logic_vector(37 downto 0);
    signal CONCAT_u4_u6_9680_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u4_u6_9695_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u4_u6_9761_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u6_u12_9697_wire : std_logic_vector(11 downto 0);
    signal CONCAT_u6_u13_9684_wire : std_logic_vector(12 downto 0);
    signal CONCAT_u6_u13_9765_wire : std_logic_vector(12 downto 0);
    signal CONCAT_u6_u7_9683_wire : std_logic_vector(6 downto 0);
    signal CONCAT_u6_u7_9764_wire : std_logic_vector(6 downto 0);
    signal MUX_9659_wire : std_logic_vector(31 downto 0);
    signal MUX_9663_wire : std_logic_vector(31 downto 0);
    signal MUX_9670_wire : std_logic_vector(31 downto 0);
    signal MUX_9674_wire : std_logic_vector(31 downto 0);
    signal MUX_9751_wire : std_logic_vector(31 downto 0);
    signal MUX_9755_wire : std_logic_vector(31 downto 0);
    signal NEQ_u3_u1_9644_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_9646_wire : std_logic_vector(0 downto 0);
    signal addr_9579 : std_logic_vector(31 downto 0);
    signal byte_9547 : std_logic_vector(0 downto 0);
    signal data_access_error_9640 : std_logic_vector(0 downto 0);
    signal data_access_exception_9631 : std_logic_vector(0 downto 0);
    signal dbg_wp_hit_9654 : std_logic_vector(0 downto 0);
    signal dbg_wp_read_hit_9567 : std_logic_vector(0 downto 0);
    signal dbg_wp_reg_id_9563 : std_logic_vector(1 downto 0);
    signal dbg_wp_write_hit_9571 : std_logic_vector(0 downto 0);
    signal double_word_9559 : std_logic_vector(0 downto 0);
    signal dout_h_9665 : std_logic_vector(31 downto 0);
    signal dout_l_9676 : std_logic_vector(31 downto 0);
    signal early_ls_traps_9527 : std_logic_vector(2 downto 0);
    signal half_word_9551 : std_logic_vector(0 downto 0);
    signal illegal_instr_trap_9736 : std_logic_vector(0 downto 0);
    signal is_load_9531 : std_logic_vector(0 downto 0);
    signal is_store_9535 : std_logic_vector(0 downto 0);
    signal konst_9643_wire_constant : std_logic_vector(2 downto 0);
    signal konst_9658_wire_constant : std_logic_vector(31 downto 0);
    signal konst_9662_wire_constant : std_logic_vector(31 downto 0);
    signal konst_9669_wire_constant : std_logic_vector(31 downto 0);
    signal konst_9673_wire_constant : std_logic_vector(31 downto 0);
    signal konst_9750_wire_constant : std_logic_vector(31 downto 0);
    signal konst_9754_wire_constant : std_logic_vector(31 downto 0);
    signal late_load_store_trap_9649 : std_logic_vector(0 downto 0);
    signal mem_address_not_aligned_trap_9740 : std_logic_vector(0 downto 0);
    signal messy_dout_h_9595 : std_logic_vector(31 downto 0);
    signal messy_dout_l_9599 : std_logic_vector(31 downto 0);
    signal messy_error_9587 : std_logic_vector(0 downto 0);
    signal messy_store_signature_9591 : std_logic_vector(31 downto 0);
    signal messy_trap_9583 : std_logic_vector(0 downto 0);
    signal privileged_instr_trap_9732 : std_logic_vector(0 downto 0);
    signal read_messy_9519 : std_logic_vector(0 downto 0);
    signal read_simple_9523 : std_logic_vector(0 downto 0);
    signal signed_type_9539 : std_logic_vector(0 downto 0);
    signal simple_data_access_error_9615 : std_logic_vector(0 downto 0);
    signal simple_data_access_exception_9615 : std_logic_vector(0 downto 0);
    signal simple_dcache_hit_9615 : std_logic_vector(0 downto 0);
    signal simple_dout_h_9615 : std_logic_vector(31 downto 0);
    signal simple_dout_l_9615 : std_logic_vector(31 downto 0);
    signal simple_store_signature_9575 : std_logic_vector(31 downto 0);
    signal slice_9744_wire : std_logic_vector(1 downto 0);
    signal slice_9748_wire : std_logic_vector(28 downto 0);
    signal slot_id_9499 : std_logic_vector(5 downto 0);
    signal store_signature_9757 : std_logic_vector(31 downto 0);
    signal stream_id_9495 : std_logic_vector(1 downto 0);
    signal thread_id_9491 : std_logic_vector(3 downto 0);
    signal unsigned_type_9543 : std_logic_vector(0 downto 0);
    signal word_9555 : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    konst_9643_wire_constant <= "000";
    konst_9658_wire_constant <= "00000000000000000000000000000000";
    konst_9662_wire_constant <= "00000000000000000000000000000000";
    konst_9669_wire_constant <= "00000000000000000000000000000000";
    konst_9673_wire_constant <= "00000000000000000000000000000000";
    konst_9750_wire_constant <= "00000000000000000000000000000000";
    konst_9754_wire_constant <= "00000000000000000000000000000000";
    -- flow-through select operator MUX_9659_inst
    MUX_9659_wire <= simple_dout_h_9615 when (read_simple_9523(0) /=  '0') else konst_9658_wire_constant;
    -- flow-through select operator MUX_9663_inst
    MUX_9663_wire <= messy_dout_h_9595 when (read_messy_9519(0) /=  '0') else konst_9662_wire_constant;
    -- flow-through select operator MUX_9670_inst
    MUX_9670_wire <= simple_dout_l_9615 when (read_simple_9523(0) /=  '0') else konst_9669_wire_constant;
    -- flow-through select operator MUX_9674_inst
    MUX_9674_wire <= messy_dout_l_9599 when (read_messy_9519(0) /=  '0') else konst_9673_wire_constant;
    -- flow-through select operator MUX_9751_inst
    MUX_9751_wire <= CONCAT_u3_u32_9749_wire when (read_simple_9523(0) /=  '0') else konst_9750_wire_constant;
    -- flow-through select operator MUX_9755_inst
    MUX_9755_wire <= messy_store_signature_9591 when (read_messy_9519(0) /=  '0') else konst_9754_wire_constant;
    -- flow-through slice operator slice_9490_inst
    thread_id_9491 <= control_info_buffer(96 downto 93);
    -- flow-through slice operator slice_9494_inst
    stream_id_9495 <= control_info_buffer(92 downto 91);
    -- flow-through slice operator slice_9498_inst
    slot_id_9499 <= control_info_buffer(90 downto 85);
    -- flow-through slice operator slice_9502_inst
    to_iu_buffer <= control_info_buffer(84 downto 84);
    -- flow-through slice operator slice_9506_inst
    to_fu_buffer <= control_info_buffer(83 downto 83);
    -- flow-through slice operator slice_9510_inst
    to_cu_buffer <= control_info_buffer(82 downto 82);
    -- flow-through slice operator slice_9514_inst
    to_retire_buffer <= control_info_buffer(81 downto 81);
    -- flow-through slice operator slice_9518_inst
    read_messy_9519 <= control_info_buffer(80 downto 80);
    -- flow-through slice operator slice_9522_inst
    read_simple_9523 <= control_info_buffer(79 downto 79);
    -- flow-through slice operator slice_9526_inst
    early_ls_traps_9527 <= control_info_buffer(78 downto 76);
    -- flow-through slice operator slice_9530_inst
    is_load_9531 <= control_info_buffer(75 downto 75);
    -- flow-through slice operator slice_9534_inst
    is_store_9535 <= control_info_buffer(74 downto 74);
    -- flow-through slice operator slice_9538_inst
    signed_type_9539 <= control_info_buffer(73 downto 73);
    -- flow-through slice operator slice_9542_inst
    unsigned_type_9543 <= control_info_buffer(72 downto 72);
    -- flow-through slice operator slice_9546_inst
    byte_9547 <= control_info_buffer(71 downto 71);
    -- flow-through slice operator slice_9550_inst
    half_word_9551 <= control_info_buffer(70 downto 70);
    -- flow-through slice operator slice_9554_inst
    word_9555 <= control_info_buffer(69 downto 69);
    -- flow-through slice operator slice_9558_inst
    double_word_9559 <= control_info_buffer(68 downto 68);
    -- flow-through slice operator slice_9562_inst
    dbg_wp_reg_id_9563 <= control_info_buffer(67 downto 66);
    -- flow-through slice operator slice_9566_inst
    dbg_wp_read_hit_9567 <= control_info_buffer(65 downto 65);
    -- flow-through slice operator slice_9570_inst
    dbg_wp_write_hit_9571 <= control_info_buffer(64 downto 64);
    -- flow-through slice operator slice_9574_inst
    simple_store_signature_9575 <= control_info_buffer(63 downto 32);
    -- flow-through slice operator slice_9578_inst
    addr_9579 <= control_info_buffer(31 downto 0);
    -- flow-through slice operator slice_9582_inst
    messy_trap_9583 <= messy_info_buffer(97 downto 97);
    -- flow-through slice operator slice_9586_inst
    messy_error_9587 <= messy_info_buffer(96 downto 96);
    -- flow-through slice operator slice_9590_inst
    messy_store_signature_9591 <= messy_info_buffer(95 downto 64);
    -- flow-through slice operator slice_9594_inst
    messy_dout_h_9595 <= messy_info_buffer(63 downto 32);
    -- flow-through slice operator slice_9598_inst
    messy_dout_l_9599 <= messy_info_buffer(31 downto 0);
    -- flow-through slice operator slice_9731_inst
    privileged_instr_trap_9732 <= early_ls_traps_9527(2 downto 2);
    -- flow-through slice operator slice_9735_inst
    illegal_instr_trap_9736 <= early_ls_traps_9527(1 downto 1);
    -- flow-through slice operator slice_9739_inst
    mem_address_not_aligned_trap_9740 <= early_ls_traps_9527(0 downto 0);
    -- flow-through slice operator slice_9744_inst
    slice_9744_wire <= simple_store_signature_9575(31 downto 30);
    -- flow-through slice operator slice_9748_inst
    slice_9748_wire <= simple_store_signature_9575(28 downto 0);
    -- flow through binary operator AND_u1_u1_9626_inst
    AND_u1_u1_9626_wire <= (read_simple_9523 and simple_data_access_exception_9615);
    -- flow through binary operator AND_u1_u1_9629_inst
    AND_u1_u1_9629_wire <= (read_messy_9519 and messy_trap_9583);
    -- flow through binary operator AND_u1_u1_9635_inst
    AND_u1_u1_9635_wire <= (read_simple_9523 and simple_data_access_error_9615);
    -- flow through binary operator AND_u1_u1_9638_inst
    AND_u1_u1_9638_wire <= (read_messy_9519 and messy_error_9587);
    -- flow through binary operator CONCAT_u12_u14_9701_inst
    process(CONCAT_u6_u12_9697_wire, CONCAT_u1_u2_9700_wire) -- 
      variable tmp_var : std_logic_vector(13 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u6_u12_9697_wire, CONCAT_u1_u2_9700_wire, tmp_var);
      to_cu_data_buffer <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u13_u16_9771_inst
    process(CONCAT_u6_u13_9765_wire, CONCAT_u2_u3_9770_wire) -- 
      variable tmp_var : std_logic_vector(15 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u6_u13_9765_wire, CONCAT_u2_u3_9770_wire, tmp_var);
      CONCAT_u13_u16_9771_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u13_u78_9690_inst
    process(CONCAT_u6_u13_9684_wire, CONCAT_u33_u65_9689_wire) -- 
      variable tmp_var : std_logic_vector(77 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u6_u13_9684_wire, CONCAT_u33_u65_9689_wire, tmp_var);
      to_iu_fu_data_buffer <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u16_u54_9783_inst
    process(CONCAT_u13_u16_9771_wire, CONCAT_u4_u38_9782_wire) -- 
      variable tmp_var : std_logic_vector(53 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u13_u16_9771_wire, CONCAT_u4_u38_9782_wire, tmp_var);
      data_to_iretire_buffer <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_9700_inst
    process(dbg_wp_hit_9654, late_load_store_trap_9649) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(dbg_wp_hit_9654, late_load_store_trap_9649, tmp_var);
      CONCAT_u1_u2_9700_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_9768_inst
    process(illegal_instr_trap_9736, privileged_instr_trap_9732) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(illegal_instr_trap_9736, privileged_instr_trap_9732, tmp_var);
      CONCAT_u1_u2_9768_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_9774_inst
    process(mem_address_not_aligned_trap_9740, data_access_error_9640) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(mem_address_not_aligned_trap_9740, data_access_error_9640, tmp_var);
      CONCAT_u1_u2_9774_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_9779_inst
    process(dbg_wp_read_hit_9567, dbg_wp_write_hit_9571) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(dbg_wp_read_hit_9567, dbg_wp_write_hit_9571, tmp_var);
      CONCAT_u1_u2_9779_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u33_9687_inst
    process(late_load_store_trap_9649, dout_h_9665) -- 
      variable tmp_var : std_logic_vector(32 downto 0); -- 
    begin -- 
      ApConcat_proc(late_load_store_trap_9649, dout_h_9665, tmp_var);
      CONCAT_u1_u33_9687_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u34_9781_inst
    process(CONCAT_u1_u2_9779_wire, store_signature_9757) -- 
      variable tmp_var : std_logic_vector(33 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_9779_wire, store_signature_9757, tmp_var);
      CONCAT_u2_u34_9781_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_9746_inst
    process(slice_9744_wire, simple_dcache_hit_9615) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(slice_9744_wire, simple_dcache_hit_9615, tmp_var);
      CONCAT_u2_u3_9746_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_9770_inst
    process(CONCAT_u1_u2_9768_wire, data_access_exception_9631) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_9768_wire, data_access_exception_9631, tmp_var);
      CONCAT_u2_u3_9770_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u4_9776_inst
    process(CONCAT_u1_u2_9774_wire, dbg_wp_reg_id_9563) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_9774_wire, dbg_wp_reg_id_9563, tmp_var);
      CONCAT_u2_u4_9776_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u33_u65_9689_inst
    process(CONCAT_u1_u33_9687_wire, dout_l_9676) -- 
      variable tmp_var : std_logic_vector(64 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u33_9687_wire, dout_l_9676, tmp_var);
      CONCAT_u33_u65_9689_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u32_9749_inst
    process(CONCAT_u2_u3_9746_wire, slice_9748_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_9746_wire, slice_9748_wire, tmp_var);
      CONCAT_u3_u32_9749_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u38_9782_inst
    process(CONCAT_u2_u4_9776_wire, CONCAT_u2_u34_9781_wire) -- 
      variable tmp_var : std_logic_vector(37 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u4_9776_wire, CONCAT_u2_u34_9781_wire, tmp_var);
      CONCAT_u4_u38_9782_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u6_9680_inst
    process(thread_id_9491, stream_id_9495) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(thread_id_9491, stream_id_9495, tmp_var);
      CONCAT_u4_u6_9680_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u6_9695_inst
    process(thread_id_9491, stream_id_9495) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(thread_id_9491, stream_id_9495, tmp_var);
      CONCAT_u4_u6_9695_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u6_9761_inst
    process(thread_id_9491, stream_id_9495) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(thread_id_9491, stream_id_9495, tmp_var);
      CONCAT_u4_u6_9761_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u12_9697_inst
    process(CONCAT_u4_u6_9695_wire, slot_id_9499) -- 
      variable tmp_var : std_logic_vector(11 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u6_9695_wire, slot_id_9499, tmp_var);
      CONCAT_u6_u12_9697_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u13_9684_inst
    process(CONCAT_u4_u6_9680_wire, CONCAT_u6_u7_9683_wire) -- 
      variable tmp_var : std_logic_vector(12 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u6_9680_wire, CONCAT_u6_u7_9683_wire, tmp_var);
      CONCAT_u6_u13_9684_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u13_9765_inst
    process(CONCAT_u4_u6_9761_wire, CONCAT_u6_u7_9764_wire) -- 
      variable tmp_var : std_logic_vector(12 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u6_9761_wire, CONCAT_u6_u7_9764_wire, tmp_var);
      CONCAT_u6_u13_9765_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u7_9683_inst
    process(slot_id_9499, dbg_wp_hit_9654) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(slot_id_9499, dbg_wp_hit_9654, tmp_var);
      CONCAT_u6_u7_9683_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u7_9764_inst
    process(slot_id_9499, late_load_store_trap_9649) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(slot_id_9499, late_load_store_trap_9649, tmp_var);
      CONCAT_u6_u7_9764_wire <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u3_u1_9644_inst
    process(early_ls_traps_9527) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(early_ls_traps_9527, konst_9643_wire_constant, tmp_var);
      NEQ_u3_u1_9644_wire <= tmp_var; --
    end process;
    -- flow through binary operator OR_u1_u1_9630_inst
    data_access_exception_9631 <= (AND_u1_u1_9626_wire or AND_u1_u1_9629_wire);
    -- flow through binary operator OR_u1_u1_9639_inst
    data_access_error_9640 <= (AND_u1_u1_9635_wire or AND_u1_u1_9638_wire);
    -- flow through binary operator OR_u1_u1_9646_inst
    OR_u1_u1_9646_wire <= (NEQ_u3_u1_9644_wire or data_access_exception_9631);
    -- flow through binary operator OR_u1_u1_9648_inst
    late_load_store_trap_9649 <= (OR_u1_u1_9646_wire or data_access_error_9640);
    -- flow through binary operator OR_u1_u1_9653_inst
    dbg_wp_hit_9654 <= (dbg_wp_read_hit_9567 or dbg_wp_write_hit_9571);
    -- flow through binary operator OR_u32_u32_9664_inst
    dout_h_9665 <= (MUX_9659_wire or MUX_9663_wire);
    -- flow through binary operator OR_u32_u32_9675_inst
    dout_l_9676 <= (MUX_9670_wire or MUX_9674_wire);
    -- flow through binary operator OR_u32_u32_9756_inst
    store_signature_9757 <= (MUX_9751_wire or MUX_9755_wire);
    volatile_operator_analyze_dcache_response_8445: analyze_dcache_response_Volatile port map(addr => addr_9579, dcache_response => simple_info_buffer, is_load => is_load_9531, is_store => is_store_9535, signed_type => signed_type_9539, unsigned_type => unsigned_type_9543, byte => byte_9547, half_word => half_word_9551, word => word_9555, double_word => double_word_9559, dout_h => simple_dout_h_9615, dout_l => simple_dout_l_9615, data_access_exception => simple_data_access_exception_9615, data_access_error => simple_data_access_error_9615, dcache_hit => simple_dcache_hit_9615); 
    -- 
  end Block; -- data_path
  -- 
end loadstore_router_core_Volatile_arch;
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
library teu_loadstore;
use teu_loadstore.loadstore_global_package.all;
entity prepare_simple_dcache_command_Volatile is -- 
  port ( -- 
    cpu_id_2 : in  std_logic_vector(1 downto 0);
    untrap_cache : in  std_logic_vector(0 downto 0);
    addr : in  std_logic_vector(31 downto 0);
    din_h : in  std_logic_vector(31 downto 0);
    din_l : in  std_logic_vector(31 downto 0);
    pc : in  std_logic_vector(31 downto 0);
    is_load : in  std_logic_vector(0 downto 0);
    is_store : in  std_logic_vector(0 downto 0);
    signed_type : in  std_logic_vector(0 downto 0);
    unsigned_type : in  std_logic_vector(0 downto 0);
    fp_type : in  std_logic_vector(0 downto 0);
    byte : in  std_logic_vector(0 downto 0);
    half_word : in  std_logic_vector(0 downto 0);
    word : in  std_logic_vector(0 downto 0);
    double_word : in  std_logic_vector(0 downto 0);
    use_asi : in  std_logic_vector(0 downto 0);
    asi : in  std_logic_vector(7 downto 0);
    is_flush : in  std_logic_vector(0 downto 0);
    S : in  std_logic_vector(0 downto 0);
    dcache_request_type : out  std_logic_vector(7 downto 0);
    dcache_asi : out  std_logic_vector(7 downto 0);
    dcache_byte_mask : out  std_logic_vector(7 downto 0);
    dcache_address : out  std_logic_vector(31 downto 0);
    dcache_write_data : out  std_logic_vector(63 downto 0);
    store_signature : out  std_logic_vector(31 downto 0)-- 
  );
  -- 
end entity prepare_simple_dcache_command_Volatile;
architecture prepare_simple_dcache_command_Volatile_arch of prepare_simple_dcache_command_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(151-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal cpu_id_2_buffer :  std_logic_vector(1 downto 0);
  signal untrap_cache_buffer :  std_logic_vector(0 downto 0);
  signal addr_buffer :  std_logic_vector(31 downto 0);
  signal din_h_buffer :  std_logic_vector(31 downto 0);
  signal din_l_buffer :  std_logic_vector(31 downto 0);
  signal pc_buffer :  std_logic_vector(31 downto 0);
  signal is_load_buffer :  std_logic_vector(0 downto 0);
  signal is_store_buffer :  std_logic_vector(0 downto 0);
  signal signed_type_buffer :  std_logic_vector(0 downto 0);
  signal unsigned_type_buffer :  std_logic_vector(0 downto 0);
  signal fp_type_buffer :  std_logic_vector(0 downto 0);
  signal byte_buffer :  std_logic_vector(0 downto 0);
  signal half_word_buffer :  std_logic_vector(0 downto 0);
  signal word_buffer :  std_logic_vector(0 downto 0);
  signal double_word_buffer :  std_logic_vector(0 downto 0);
  signal use_asi_buffer :  std_logic_vector(0 downto 0);
  signal asi_buffer :  std_logic_vector(7 downto 0);
  signal is_flush_buffer :  std_logic_vector(0 downto 0);
  signal S_buffer :  std_logic_vector(0 downto 0);
  -- output port buffer signals
  signal dcache_request_type_buffer :  std_logic_vector(7 downto 0);
  signal dcache_asi_buffer :  std_logic_vector(7 downto 0);
  signal dcache_byte_mask_buffer :  std_logic_vector(7 downto 0);
  signal dcache_address_buffer :  std_logic_vector(31 downto 0);
  signal dcache_write_data_buffer :  std_logic_vector(63 downto 0);
  signal store_signature_buffer :  std_logic_vector(31 downto 0);
  -- volatile/operator module components. 
  component signature_8_Volatile is -- 
    port ( -- 
      A : in  std_logic_vector(31 downto 0);
      AS : out  std_logic_vector(7 downto 0)-- 
    );
    -- 
  end component; 
  -- 
begin --  
  -- input handling ------------------------------------------------
  cpu_id_2_buffer <= cpu_id_2;
  untrap_cache_buffer <= untrap_cache;
  addr_buffer <= addr;
  din_h_buffer <= din_h;
  din_l_buffer <= din_l;
  pc_buffer <= pc;
  is_load_buffer <= is_load;
  is_store_buffer <= is_store;
  signed_type_buffer <= signed_type;
  unsigned_type_buffer <= unsigned_type;
  fp_type_buffer <= fp_type;
  byte_buffer <= byte;
  half_word_buffer <= half_word;
  word_buffer <= word;
  double_word_buffer <= double_word;
  use_asi_buffer <= use_asi;
  asi_buffer <= asi;
  is_flush_buffer <= is_flush;
  S_buffer <= S;
  -- output handling  -------------------------------------------------------
  dcache_request_type <= dcache_request_type_buffer;
  dcache_asi <= dcache_asi_buffer;
  dcache_byte_mask <= dcache_byte_mask_buffer;
  dcache_address <= dcache_address_buffer;
  dcache_write_data <= dcache_write_data_buffer;
  store_signature <= store_signature_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal BITSEL_u32_u1_7984_wire : std_logic_vector(0 downto 0);
    signal CONCAT_u16_u24_8242_wire : std_logic_vector(23 downto 0);
    signal CONCAT_u1_u2_7898_wire_constant : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_8006_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_8117_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_8231_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u6_8236_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u2_u6_7901_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u2_u6_8009_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u2_u6_8120_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u2_u8_8237_wire : std_logic_vector(7 downto 0);
    signal CONCAT_u32_u64_8103_wire : std_logic_vector(63 downto 0);
    signal CONCAT_u32_u64_8107_wire : std_logic_vector(63 downto 0);
    signal CONCAT_u32_u64_8110_wire : std_logic_vector(63 downto 0);
    signal CONCAT_u4_u8_7981_wire : std_logic_vector(7 downto 0);
    signal CONCAT_u4_u8_7987_wire : std_logic_vector(7 downto 0);
    signal CONCAT_u4_u8_7990_wire : std_logic_vector(7 downto 0);
    signal CONCAT_u8_u16_8240_wire : std_logic_vector(15 downto 0);
    signal CONCAT_u8_u32_8243_wire : std_logic_vector(31 downto 0);
    signal EQ_u2_u1_7915_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_7922_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_7930_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_7937_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_7947_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_7954_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_8019_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_8027_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_8036_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_8044_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_8055_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_8063_wire : std_logic_vector(0 downto 0);
    signal MUX_7919_wire : std_logic_vector(3 downto 0);
    signal MUX_7926_wire : std_logic_vector(3 downto 0);
    signal MUX_7934_wire : std_logic_vector(3 downto 0);
    signal MUX_7941_wire : std_logic_vector(3 downto 0);
    signal MUX_7951_wire : std_logic_vector(3 downto 0);
    signal MUX_7958_wire : std_logic_vector(3 downto 0);
    signal MUX_7965_wire : std_logic_vector(3 downto 0);
    signal MUX_7966_wire : std_logic_vector(3 downto 0);
    signal MUX_7967_wire : std_logic_vector(3 downto 0);
    signal MUX_7991_wire : std_logic_vector(7 downto 0);
    signal MUX_8000_wire : std_logic_vector(7 downto 0);
    signal MUX_8024_wire : std_logic_vector(31 downto 0);
    signal MUX_8032_wire : std_logic_vector(31 downto 0);
    signal MUX_8041_wire : std_logic_vector(31 downto 0);
    signal MUX_8047_wire : std_logic_vector(31 downto 0);
    signal MUX_8051_wire : std_logic_vector(31 downto 0);
    signal MUX_8060_wire : std_logic_vector(31 downto 0);
    signal MUX_8066_wire : std_logic_vector(31 downto 0);
    signal MUX_8069_wire : std_logic_vector(31 downto 0);
    signal MUX_8076_wire : std_logic_vector(31 downto 0);
    signal MUX_8087_wire : std_logic_vector(7 downto 0);
    signal MUX_8088_wire : std_logic_vector(7 downto 0);
    signal MUX_8111_wire : std_logic_vector(63 downto 0);
    signal MUX_8147_wire : std_logic_vector(1 downto 0);
    signal MUX_8166_wire : std_logic_vector(7 downto 0);
    signal MUX_8173_wire : std_logic_vector(7 downto 0);
    signal MUX_8177_wire : std_logic_vector(7 downto 0);
    signal MUX_8184_wire : std_logic_vector(31 downto 0);
    signal MUX_8188_wire : std_logic_vector(31 downto 0);
    signal MUX_8195_wire : std_logic_vector(63 downto 0);
    signal MUX_8199_wire : std_logic_vector(63 downto 0);
    signal NOT_u32_u32_7884_wire_constant : std_logic_vector(31 downto 0);
    signal NOT_u32_u32_8132_wire_constant : std_logic_vector(31 downto 0);
    signal NOT_u4_u4_7973_wire_constant : std_logic_vector(3 downto 0);
    signal OR_u1_u1_7962_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8073_wire : std_logic_vector(0 downto 0);
    signal OR_u32_u32_8033_wire : std_logic_vector(31 downto 0);
    signal OR_u32_u32_8048_wire : std_logic_vector(31 downto 0);
    signal OR_u32_u32_8049_wire : std_logic_vector(31 downto 0);
    signal OR_u32_u32_8067_wire : std_logic_vector(31 downto 0);
    signal OR_u32_u32_8070_wire : std_logic_vector(31 downto 0);
    signal OR_u4_u4_7927_wire : std_logic_vector(3 downto 0);
    signal OR_u4_u4_7942_wire : std_logic_vector(3 downto 0);
    signal OR_u4_u4_7943_wire : std_logic_vector(3 downto 0);
    signal OR_u4_u4_7959_wire : std_logic_vector(3 downto 0);
    signal R_ASI_FLUSH_I_D_CONTEXT_8081_wire_constant : std_logic_vector(7 downto 0);
    signal R_ASI_SUPERVISOR_DATA_7998_wire_constant : std_logic_vector(7 downto 0);
    signal R_ASI_SUPERVISOR_DATA_8085_wire_constant : std_logic_vector(7 downto 0);
    signal R_ASI_USER_DATA_7999_wire_constant : std_logic_vector(7 downto 0);
    signal R_ASI_USER_DATA_8086_wire_constant : std_logic_vector(7 downto 0);
    signal R_DTI_IS_LOAD_8143_wire_constant : std_logic_vector(1 downto 0);
    signal R_DTI_IS_LOAD_8152_wire_constant : std_logic_vector(1 downto 0);
    signal R_DTI_IS_NOP_8146_wire_constant : std_logic_vector(1 downto 0);
    signal R_DTI_IS_STORE_8145_wire_constant : std_logic_vector(1 downto 0);
    signal R_DTI_IS_STORE_8157_wire_constant : std_logic_vector(1 downto 0);
    signal R_REQUEST_TYPE_NOP_7900_wire_constant : std_logic_vector(3 downto 0);
    signal R_REQUEST_TYPE_READ_8008_wire_constant : std_logic_vector(3 downto 0);
    signal R_REQUEST_TYPE_WRITE_8119_wire_constant : std_logic_vector(3 downto 0);
    signal R_ZERO_1_8005_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_8116_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_32_8105_wire_constant : std_logic_vector(31 downto 0);
    signal R_ZERO_32_8109_wire_constant : std_logic_vector(31 downto 0);
    signal R_ZERO_4_7974_wire_constant : std_logic_vector(3 downto 0);
    signal R_ZERO_4_7985_wire_constant : std_logic_vector(3 downto 0);
    signal R_ZERO_4_7989_wire_constant : std_logic_vector(3 downto 0);
    signal SHL_u32_u32_8022_wire : std_logic_vector(31 downto 0);
    signal SHL_u32_u32_8030_wire : std_logic_vector(31 downto 0);
    signal SHL_u32_u32_8039_wire : std_logic_vector(31 downto 0);
    signal SHL_u32_u32_8058_wire : std_logic_vector(31 downto 0);
    signal a10_7907 : std_logic_vector(1 downto 0);
    signal addr_signature_8207 : std_logic_vector(7 downto 0);
    signal byte_mask_h_7976 : std_logic_vector(3 downto 0);
    signal byte_mask_l_7969 : std_logic_vector(3 downto 0);
    signal dcache_access_type_8149 : std_logic_vector(1 downto 0);
    signal dcache_is_load_8154 : std_logic_vector(0 downto 0);
    signal dcache_is_store_8159 : std_logic_vector(0 downto 0);
    signal dcache_wr_data_8113 : std_logic_vector(63 downto 0);
    signal din_h_signature_8218 : std_logic_vector(7 downto 0);
    signal din_l_signature_8221 : std_logic_vector(7 downto 0);
    signal dword_addr_7886 : std_logic_vector(31 downto 0);
    signal is_load_request_7889 : std_logic_vector(0 downto 0);
    signal is_store_request_7894 : std_logic_vector(0 downto 0);
    signal konst_7914_wire_constant : std_logic_vector(1 downto 0);
    signal konst_7918_wire_constant : std_logic_vector(3 downto 0);
    signal konst_7921_wire_constant : std_logic_vector(1 downto 0);
    signal konst_7925_wire_constant : std_logic_vector(3 downto 0);
    signal konst_7929_wire_constant : std_logic_vector(1 downto 0);
    signal konst_7933_wire_constant : std_logic_vector(3 downto 0);
    signal konst_7936_wire_constant : std_logic_vector(1 downto 0);
    signal konst_7940_wire_constant : std_logic_vector(3 downto 0);
    signal konst_7946_wire_constant : std_logic_vector(1 downto 0);
    signal konst_7950_wire_constant : std_logic_vector(3 downto 0);
    signal konst_7953_wire_constant : std_logic_vector(1 downto 0);
    signal konst_7957_wire_constant : std_logic_vector(3 downto 0);
    signal konst_7963_wire_constant : std_logic_vector(3 downto 0);
    signal konst_7964_wire_constant : std_logic_vector(3 downto 0);
    signal konst_7983_wire_constant : std_logic_vector(31 downto 0);
    signal konst_8018_wire_constant : std_logic_vector(1 downto 0);
    signal konst_8021_wire_constant : std_logic_vector(31 downto 0);
    signal konst_8023_wire_constant : std_logic_vector(31 downto 0);
    signal konst_8026_wire_constant : std_logic_vector(1 downto 0);
    signal konst_8029_wire_constant : std_logic_vector(31 downto 0);
    signal konst_8031_wire_constant : std_logic_vector(31 downto 0);
    signal konst_8035_wire_constant : std_logic_vector(1 downto 0);
    signal konst_8038_wire_constant : std_logic_vector(31 downto 0);
    signal konst_8040_wire_constant : std_logic_vector(31 downto 0);
    signal konst_8043_wire_constant : std_logic_vector(1 downto 0);
    signal konst_8046_wire_constant : std_logic_vector(31 downto 0);
    signal konst_8050_wire_constant : std_logic_vector(31 downto 0);
    signal konst_8054_wire_constant : std_logic_vector(1 downto 0);
    signal konst_8057_wire_constant : std_logic_vector(31 downto 0);
    signal konst_8059_wire_constant : std_logic_vector(31 downto 0);
    signal konst_8062_wire_constant : std_logic_vector(1 downto 0);
    signal konst_8065_wire_constant : std_logic_vector(31 downto 0);
    signal konst_8068_wire_constant : std_logic_vector(31 downto 0);
    signal konst_8075_wire_constant : std_logic_vector(31 downto 0);
    signal konst_8096_wire_constant : std_logic_vector(31 downto 0);
    signal konst_8137_wire_constant : std_logic_vector(63 downto 0);
    signal konst_8172_wire_constant : std_logic_vector(7 downto 0);
    signal konst_8176_wire_constant : std_logic_vector(7 downto 0);
    signal konst_8183_wire_constant : std_logic_vector(31 downto 0);
    signal konst_8187_wire_constant : std_logic_vector(31 downto 0);
    signal konst_8193_wire_constant : std_logic_vector(63 downto 0);
    signal konst_8194_wire_constant : std_logic_vector(63 downto 0);
    signal konst_8198_wire_constant : std_logic_vector(63 downto 0);
    signal konst_8244_wire_constant : std_logic_vector(31 downto 0);
    signal load_asi_8002 : std_logic_vector(7 downto 0);
    signal load_dword_addr_8014 : std_logic_vector(31 downto 0);
    signal load_request_type_8011 : std_logic_vector(7 downto 0);
    signal low_word_in_lower_half_8098 : std_logic_vector(0 downto 0);
    signal slice_8235_wire : std_logic_vector(4 downto 0);
    signal store_addr_8125 : std_logic_vector(31 downto 0);
    signal store_address_space_8090 : std_logic_vector(7 downto 0);
    signal store_asi_8128 : std_logic_vector(7 downto 0);
    signal store_dword_addr_8134 : std_logic_vector(31 downto 0);
    signal store_request_type_8122 : std_logic_vector(7 downto 0);
    signal store_was_issued_8204 : std_logic_vector(0 downto 0);
    signal store_word_l_8078 : std_logic_vector(31 downto 0);
    signal store_write_data_8140 : std_logic_vector(63 downto 0);
    signal type_cast_7911_wire_constant : std_logic_vector(3 downto 0);
    signal type_cast_7917_wire_constant : std_logic_vector(3 downto 0);
    signal type_cast_7924_wire_constant : std_logic_vector(3 downto 0);
    signal type_cast_7932_wire_constant : std_logic_vector(3 downto 0);
    signal type_cast_7939_wire_constant : std_logic_vector(3 downto 0);
    signal type_cast_7949_wire_constant : std_logic_vector(3 downto 0);
    signal type_cast_7956_wire_constant : std_logic_vector(3 downto 0);
    signal type_cast_8233_wire_constant : std_logic_vector(0 downto 0);
    signal untrap_request_type_7903 : std_logic_vector(7 downto 0);
    signal word_data_8093 : std_logic_vector(31 downto 0);
    signal wr_data_h_8211 : std_logic_vector(31 downto 0);
    signal wr_data_l_8215 : std_logic_vector(31 downto 0);
    signal wr_data_signature_8226 : std_logic_vector(7 downto 0);
    -- 
  begin -- 
    CONCAT_u1_u2_7898_wire_constant <= "10";
    NOT_u32_u32_7884_wire_constant <= "11111111111111111111111111111000";
    NOT_u32_u32_8132_wire_constant <= "11111111111111111111111111111000";
    NOT_u4_u4_7973_wire_constant <= "1111";
    R_ASI_FLUSH_I_D_CONTEXT_8081_wire_constant <= "00010011";
    R_ASI_SUPERVISOR_DATA_7998_wire_constant <= "00001011";
    R_ASI_SUPERVISOR_DATA_8085_wire_constant <= "00001011";
    R_ASI_USER_DATA_7999_wire_constant <= "00001010";
    R_ASI_USER_DATA_8086_wire_constant <= "00001010";
    R_DTI_IS_LOAD_8143_wire_constant <= "01";
    R_DTI_IS_LOAD_8152_wire_constant <= "01";
    R_DTI_IS_NOP_8146_wire_constant <= "00";
    R_DTI_IS_STORE_8145_wire_constant <= "10";
    R_DTI_IS_STORE_8157_wire_constant <= "10";
    R_REQUEST_TYPE_NOP_7900_wire_constant <= "0111";
    R_REQUEST_TYPE_READ_8008_wire_constant <= "0001";
    R_REQUEST_TYPE_WRITE_8119_wire_constant <= "0010";
    R_ZERO_1_8005_wire_constant <= "0";
    R_ZERO_1_8116_wire_constant <= "0";
    R_ZERO_32_8105_wire_constant <= "00000000000000000000000000000000";
    R_ZERO_32_8109_wire_constant <= "00000000000000000000000000000000";
    R_ZERO_4_7974_wire_constant <= "0000";
    R_ZERO_4_7985_wire_constant <= "0000";
    R_ZERO_4_7989_wire_constant <= "0000";
    konst_7914_wire_constant <= "00";
    konst_7918_wire_constant <= "0000";
    konst_7921_wire_constant <= "01";
    konst_7925_wire_constant <= "0000";
    konst_7929_wire_constant <= "10";
    konst_7933_wire_constant <= "0000";
    konst_7936_wire_constant <= "11";
    konst_7940_wire_constant <= "0000";
    konst_7946_wire_constant <= "00";
    konst_7950_wire_constant <= "0000";
    konst_7953_wire_constant <= "10";
    konst_7957_wire_constant <= "0000";
    konst_7963_wire_constant <= "1111";
    konst_7964_wire_constant <= "0000";
    konst_7983_wire_constant <= "00000000000000000000000000000010";
    konst_8018_wire_constant <= "00";
    konst_8021_wire_constant <= "00000000000000000000000000011000";
    konst_8023_wire_constant <= "00000000000000000000000000000000";
    konst_8026_wire_constant <= "01";
    konst_8029_wire_constant <= "00000000000000000000000000010000";
    konst_8031_wire_constant <= "00000000000000000000000000000000";
    konst_8035_wire_constant <= "10";
    konst_8038_wire_constant <= "00000000000000000000000000001000";
    konst_8040_wire_constant <= "00000000000000000000000000000000";
    konst_8043_wire_constant <= "11";
    konst_8046_wire_constant <= "00000000000000000000000000000000";
    konst_8050_wire_constant <= "00000000000000000000000000000000";
    konst_8054_wire_constant <= "00";
    konst_8057_wire_constant <= "00000000000000000000000000010000";
    konst_8059_wire_constant <= "00000000000000000000000000000000";
    konst_8062_wire_constant <= "10";
    konst_8065_wire_constant <= "00000000000000000000000000000000";
    konst_8068_wire_constant <= "00000000000000000000000000000000";
    konst_8075_wire_constant <= "00000000000000000000000000000000";
    konst_8096_wire_constant <= "00000000000000000000000000000010";
    konst_8137_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000000";
    konst_8172_wire_constant <= "00000000";
    konst_8176_wire_constant <= "00000000";
    konst_8183_wire_constant <= "00000000000000000000000000000000";
    konst_8187_wire_constant <= "00000000000000000000000000000000";
    konst_8193_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000000";
    konst_8194_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000000";
    konst_8198_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000000";
    konst_8244_wire_constant <= "00000000000000000000000000000000";
    type_cast_7911_wire_constant <= "0000";
    type_cast_7917_wire_constant <= "1000";
    type_cast_7924_wire_constant <= "0100";
    type_cast_7932_wire_constant <= "0010";
    type_cast_7939_wire_constant <= "0001";
    type_cast_7949_wire_constant <= "1100";
    type_cast_7956_wire_constant <= "0011";
    type_cast_8233_wire_constant <= "0";
    -- flow-through select operator MUX_7919_inst
    MUX_7919_wire <= type_cast_7917_wire_constant when (EQ_u2_u1_7915_wire(0) /=  '0') else konst_7918_wire_constant;
    -- flow-through select operator MUX_7926_inst
    MUX_7926_wire <= type_cast_7924_wire_constant when (EQ_u2_u1_7922_wire(0) /=  '0') else konst_7925_wire_constant;
    -- flow-through select operator MUX_7934_inst
    MUX_7934_wire <= type_cast_7932_wire_constant when (EQ_u2_u1_7930_wire(0) /=  '0') else konst_7933_wire_constant;
    -- flow-through select operator MUX_7941_inst
    MUX_7941_wire <= type_cast_7939_wire_constant when (EQ_u2_u1_7937_wire(0) /=  '0') else konst_7940_wire_constant;
    -- flow-through select operator MUX_7951_inst
    MUX_7951_wire <= type_cast_7949_wire_constant when (EQ_u2_u1_7947_wire(0) /=  '0') else konst_7950_wire_constant;
    -- flow-through select operator MUX_7958_inst
    MUX_7958_wire <= type_cast_7956_wire_constant when (EQ_u2_u1_7954_wire(0) /=  '0') else konst_7957_wire_constant;
    -- flow-through select operator MUX_7965_inst
    MUX_7965_wire <= konst_7963_wire_constant when (OR_u1_u1_7962_wire(0) /=  '0') else konst_7964_wire_constant;
    -- flow-through select operator MUX_7966_inst
    MUX_7966_wire <= OR_u4_u4_7959_wire when (half_word_buffer(0) /=  '0') else MUX_7965_wire;
    -- flow-through select operator MUX_7967_inst
    MUX_7967_wire <= OR_u4_u4_7943_wire when (byte_buffer(0) /=  '0') else MUX_7966_wire;
    -- flow-through select operator MUX_7968_inst
    byte_mask_l_7969 <= type_cast_7911_wire_constant when (is_flush_buffer(0) /=  '0') else MUX_7967_wire;
    -- flow-through select operator MUX_7975_inst
    byte_mask_h_7976 <= NOT_u4_u4_7973_wire_constant when (double_word_buffer(0) /=  '0') else R_ZERO_4_7974_wire_constant;
    -- flow-through select operator MUX_7991_inst
    MUX_7991_wire <= CONCAT_u4_u8_7987_wire when (BITSEL_u32_u1_7984_wire(0) /=  '0') else CONCAT_u4_u8_7990_wire;
    -- flow-through select operator MUX_7992_inst
    dcache_byte_mask_buffer <= CONCAT_u4_u8_7981_wire when (double_word_buffer(0) /=  '0') else MUX_7991_wire;
    -- flow-through select operator MUX_8000_inst
    MUX_8000_wire <= R_ASI_SUPERVISOR_DATA_7998_wire_constant when (S_buffer(0) /=  '0') else R_ASI_USER_DATA_7999_wire_constant;
    -- flow-through select operator MUX_8001_inst
    load_asi_8002 <= asi_buffer when (use_asi_buffer(0) /=  '0') else MUX_8000_wire;
    -- flow-through select operator MUX_8024_inst
    MUX_8024_wire <= SHL_u32_u32_8022_wire when (EQ_u2_u1_8019_wire(0) /=  '0') else konst_8023_wire_constant;
    -- flow-through select operator MUX_8032_inst
    MUX_8032_wire <= SHL_u32_u32_8030_wire when (EQ_u2_u1_8027_wire(0) /=  '0') else konst_8031_wire_constant;
    -- flow-through select operator MUX_8041_inst
    MUX_8041_wire <= SHL_u32_u32_8039_wire when (EQ_u2_u1_8036_wire(0) /=  '0') else konst_8040_wire_constant;
    -- flow-through select operator MUX_8047_inst
    MUX_8047_wire <= din_l_buffer when (EQ_u2_u1_8044_wire(0) /=  '0') else konst_8046_wire_constant;
    -- flow-through select operator MUX_8051_inst
    MUX_8051_wire <= OR_u32_u32_8049_wire when (byte_buffer(0) /=  '0') else konst_8050_wire_constant;
    -- flow-through select operator MUX_8060_inst
    MUX_8060_wire <= SHL_u32_u32_8058_wire when (EQ_u2_u1_8055_wire(0) /=  '0') else konst_8059_wire_constant;
    -- flow-through select operator MUX_8066_inst
    MUX_8066_wire <= din_l_buffer when (EQ_u2_u1_8063_wire(0) /=  '0') else konst_8065_wire_constant;
    -- flow-through select operator MUX_8069_inst
    MUX_8069_wire <= OR_u32_u32_8067_wire when (half_word_buffer(0) /=  '0') else konst_8068_wire_constant;
    -- flow-through select operator MUX_8076_inst
    MUX_8076_wire <= din_l_buffer when (OR_u1_u1_8073_wire(0) /=  '0') else konst_8075_wire_constant;
    -- flow-through select operator MUX_8087_inst
    MUX_8087_wire <= R_ASI_SUPERVISOR_DATA_8085_wire_constant when (S_buffer(0) /=  '0') else R_ASI_USER_DATA_8086_wire_constant;
    -- flow-through select operator MUX_8088_inst
    MUX_8088_wire <= asi_buffer when (use_asi_buffer(0) /=  '0') else MUX_8087_wire;
    -- flow-through select operator MUX_8089_inst
    store_address_space_8090 <= R_ASI_FLUSH_I_D_CONTEXT_8081_wire_constant when (is_flush_buffer(0) /=  '0') else MUX_8088_wire;
    -- flow-through select operator MUX_8111_inst
    MUX_8111_wire <= CONCAT_u32_u64_8107_wire when (low_word_in_lower_half_8098(0) /=  '0') else CONCAT_u32_u64_8110_wire;
    -- flow-through select operator MUX_8112_inst
    dcache_wr_data_8113 <= CONCAT_u32_u64_8103_wire when (double_word_buffer(0) /=  '0') else MUX_8111_wire;
    -- flow-through select operator MUX_8139_inst
    store_write_data_8140 <= konst_8137_wire_constant when (is_flush_buffer(0) /=  '0') else dcache_wr_data_8113;
    -- flow-through select operator MUX_8147_inst
    MUX_8147_wire <= R_DTI_IS_STORE_8145_wire_constant when (is_store_request_7894(0) /=  '0') else R_DTI_IS_NOP_8146_wire_constant;
    -- flow-through select operator MUX_8148_inst
    dcache_access_type_8149 <= R_DTI_IS_LOAD_8143_wire_constant when (is_load_request_7889(0) /=  '0') else MUX_8147_wire;
    -- flow-through select operator MUX_8166_inst
    MUX_8166_wire <= store_request_type_8122 when (dcache_is_store_8159(0) /=  '0') else untrap_request_type_7903;
    -- flow-through select operator MUX_8167_inst
    dcache_request_type_buffer <= load_request_type_8011 when (dcache_is_load_8154(0) /=  '0') else MUX_8166_wire;
    -- flow-through select operator MUX_8173_inst
    MUX_8173_wire <= load_asi_8002 when (dcache_is_load_8154(0) /=  '0') else konst_8172_wire_constant;
    -- flow-through select operator MUX_8177_inst
    MUX_8177_wire <= store_asi_8128 when (dcache_is_store_8159(0) /=  '0') else konst_8176_wire_constant;
    -- flow-through select operator MUX_8184_inst
    MUX_8184_wire <= load_dword_addr_8014 when (dcache_is_load_8154(0) /=  '0') else konst_8183_wire_constant;
    -- flow-through select operator MUX_8188_inst
    MUX_8188_wire <= store_dword_addr_8134 when (dcache_is_store_8159(0) /=  '0') else konst_8187_wire_constant;
    -- flow-through select operator MUX_8195_inst
    MUX_8195_wire <= konst_8193_wire_constant when (dcache_is_load_8154(0) /=  '0') else konst_8194_wire_constant;
    -- flow-through select operator MUX_8199_inst
    MUX_8199_wire <= store_write_data_8140 when (dcache_is_store_8159(0) /=  '0') else konst_8198_wire_constant;
    -- flow-through select operator MUX_8245_inst
    store_signature_buffer <= CONCAT_u8_u32_8243_wire when (store_was_issued_8204(0) /=  '0') else konst_8244_wire_constant;
    -- flow-through slice operator slice_7906_inst
    a10_7907 <= addr_buffer(1 downto 0);
    -- flow-through slice operator slice_8210_inst
    wr_data_h_8211 <= store_write_data_8140(63 downto 32);
    -- flow-through slice operator slice_8214_inst
    wr_data_l_8215 <= store_write_data_8140(31 downto 0);
    -- flow-through slice operator slice_8235_inst
    slice_8235_wire <= store_asi_8128(4 downto 0);
    -- interlock W_is_load_request_7887_inst
    process(is_load_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := is_load_buffer(0 downto 0);
      is_load_request_7889 <= tmp_var; -- 
    end process;
    -- interlock W_load_dword_addr_8012_inst
    process(dword_addr_7886) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := dword_addr_7886(31 downto 0);
      load_dword_addr_8014 <= tmp_var; -- 
    end process;
    -- interlock W_store_addr_8123_inst
    process(addr_buffer) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := addr_buffer(31 downto 0);
      store_addr_8125 <= tmp_var; -- 
    end process;
    -- interlock W_store_asi_8126_inst
    process(store_address_space_8090) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 7 downto 0) := store_address_space_8090(7 downto 0);
      store_asi_8128 <= tmp_var; -- 
    end process;
    -- interlock W_store_was_issued_8202_inst
    process(dcache_is_store_8159) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := dcache_is_store_8159(0 downto 0);
      store_was_issued_8204 <= tmp_var; -- 
    end process;
    -- interlock W_word_data_8091_inst
    process(store_word_l_8078) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := store_word_l_8078(31 downto 0);
      word_data_8093 <= tmp_var; -- 
    end process;
    -- flow through binary operator AND_u32_u32_7885_inst
    dword_addr_7886 <= (addr_buffer and NOT_u32_u32_7884_wire_constant);
    -- flow through binary operator AND_u32_u32_8133_inst
    store_dword_addr_8134 <= (store_addr_8125 and NOT_u32_u32_8132_wire_constant);
    -- flow through binary operator BITSEL_u32_u1_7984_inst
    process(addr_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(addr_buffer, konst_7983_wire_constant, tmp_var);
      BITSEL_u32_u1_7984_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u32_u1_8097_inst
    process(addr_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(addr_buffer, konst_8096_wire_constant, tmp_var);
      low_word_in_lower_half_8098 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u16_u24_8242_inst
    process(CONCAT_u8_u16_8240_wire, wr_data_signature_8226) -- 
      variable tmp_var : std_logic_vector(23 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u8_u16_8240_wire, wr_data_signature_8226, tmp_var);
      CONCAT_u16_u24_8242_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_8006_inst
    process(untrap_cache_buffer) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(untrap_cache_buffer, R_ZERO_1_8005_wire_constant, tmp_var);
      CONCAT_u1_u2_8006_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_8117_inst
    process(untrap_cache_buffer) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(untrap_cache_buffer, R_ZERO_1_8116_wire_constant, tmp_var);
      CONCAT_u1_u2_8117_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_8231_inst
    process(store_was_issued_8204, double_word_buffer) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(store_was_issued_8204, double_word_buffer, tmp_var);
      CONCAT_u1_u2_8231_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u6_8236_inst
    process(type_cast_8233_wire_constant, slice_8235_wire) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(type_cast_8233_wire_constant, slice_8235_wire, tmp_var);
      CONCAT_u1_u6_8236_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u6_7901_inst
    process(cpu_id_2_buffer) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(cpu_id_2_buffer, R_REQUEST_TYPE_NOP_7900_wire_constant, tmp_var);
      CONCAT_u2_u6_7901_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u6_8009_inst
    process(cpu_id_2_buffer) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(cpu_id_2_buffer, R_REQUEST_TYPE_READ_8008_wire_constant, tmp_var);
      CONCAT_u2_u6_8009_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u6_8120_inst
    process(cpu_id_2_buffer) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(cpu_id_2_buffer, R_REQUEST_TYPE_WRITE_8119_wire_constant, tmp_var);
      CONCAT_u2_u6_8120_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u8_7902_inst
    process(CONCAT_u1_u2_7898_wire_constant, CONCAT_u2_u6_7901_wire) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_7898_wire_constant, CONCAT_u2_u6_7901_wire, tmp_var);
      untrap_request_type_7903 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u8_8010_inst
    process(CONCAT_u1_u2_8006_wire, CONCAT_u2_u6_8009_wire) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_8006_wire, CONCAT_u2_u6_8009_wire, tmp_var);
      load_request_type_8011 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u8_8121_inst
    process(CONCAT_u1_u2_8117_wire, CONCAT_u2_u6_8120_wire) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_8117_wire, CONCAT_u2_u6_8120_wire, tmp_var);
      store_request_type_8122 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u8_8237_inst
    process(CONCAT_u1_u2_8231_wire, CONCAT_u1_u6_8236_wire) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_8231_wire, CONCAT_u1_u6_8236_wire, tmp_var);
      CONCAT_u2_u8_8237_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u64_8103_inst
    process(din_h_buffer, din_l_buffer) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(din_h_buffer, din_l_buffer, tmp_var);
      CONCAT_u32_u64_8103_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u64_8107_inst
    process(R_ZERO_32_8105_wire_constant, word_data_8093) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(R_ZERO_32_8105_wire_constant, word_data_8093, tmp_var);
      CONCAT_u32_u64_8107_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u64_8110_inst
    process(word_data_8093) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(word_data_8093, R_ZERO_32_8109_wire_constant, tmp_var);
      CONCAT_u32_u64_8110_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u8_7981_inst
    process(byte_mask_h_7976, byte_mask_l_7969) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(byte_mask_h_7976, byte_mask_l_7969, tmp_var);
      CONCAT_u4_u8_7981_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u8_7987_inst
    process(R_ZERO_4_7985_wire_constant, byte_mask_l_7969) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(R_ZERO_4_7985_wire_constant, byte_mask_l_7969, tmp_var);
      CONCAT_u4_u8_7987_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u8_7990_inst
    process(byte_mask_l_7969) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(byte_mask_l_7969, R_ZERO_4_7989_wire_constant, tmp_var);
      CONCAT_u4_u8_7990_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u8_u16_8240_inst
    process(dcache_byte_mask_buffer, addr_signature_8207) -- 
      variable tmp_var : std_logic_vector(15 downto 0); -- 
    begin -- 
      ApConcat_proc(dcache_byte_mask_buffer, addr_signature_8207, tmp_var);
      CONCAT_u8_u16_8240_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u8_u32_8243_inst
    process(CONCAT_u2_u8_8237_wire, CONCAT_u16_u24_8242_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u8_8237_wire, CONCAT_u16_u24_8242_wire, tmp_var);
      CONCAT_u8_u32_8243_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_7915_inst
    process(a10_7907) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(a10_7907, konst_7914_wire_constant, tmp_var);
      EQ_u2_u1_7915_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_7922_inst
    process(a10_7907) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(a10_7907, konst_7921_wire_constant, tmp_var);
      EQ_u2_u1_7922_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_7930_inst
    process(a10_7907) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(a10_7907, konst_7929_wire_constant, tmp_var);
      EQ_u2_u1_7930_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_7937_inst
    process(a10_7907) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(a10_7907, konst_7936_wire_constant, tmp_var);
      EQ_u2_u1_7937_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_7947_inst
    process(a10_7907) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(a10_7907, konst_7946_wire_constant, tmp_var);
      EQ_u2_u1_7947_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_7954_inst
    process(a10_7907) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(a10_7907, konst_7953_wire_constant, tmp_var);
      EQ_u2_u1_7954_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_8019_inst
    process(a10_7907) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(a10_7907, konst_8018_wire_constant, tmp_var);
      EQ_u2_u1_8019_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_8027_inst
    process(a10_7907) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(a10_7907, konst_8026_wire_constant, tmp_var);
      EQ_u2_u1_8027_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_8036_inst
    process(a10_7907) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(a10_7907, konst_8035_wire_constant, tmp_var);
      EQ_u2_u1_8036_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_8044_inst
    process(a10_7907) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(a10_7907, konst_8043_wire_constant, tmp_var);
      EQ_u2_u1_8044_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_8055_inst
    process(a10_7907) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(a10_7907, konst_8054_wire_constant, tmp_var);
      EQ_u2_u1_8055_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_8063_inst
    process(a10_7907) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(a10_7907, konst_8062_wire_constant, tmp_var);
      EQ_u2_u1_8063_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_8153_inst
    process(dcache_access_type_8149) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(dcache_access_type_8149, R_DTI_IS_LOAD_8152_wire_constant, tmp_var);
      dcache_is_load_8154 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_8158_inst
    process(dcache_access_type_8149) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(dcache_access_type_8149, R_DTI_IS_STORE_8157_wire_constant, tmp_var);
      dcache_is_store_8159 <= tmp_var; --
    end process;
    -- flow through binary operator OR_u1_u1_7893_inst
    is_store_request_7894 <= (is_flush_buffer or is_store_buffer);
    -- flow through binary operator OR_u1_u1_7962_inst
    OR_u1_u1_7962_wire <= (word_buffer or double_word_buffer);
    -- flow through binary operator OR_u1_u1_8073_inst
    OR_u1_u1_8073_wire <= (word_buffer or double_word_buffer);
    -- flow through binary operator OR_u32_u32_8033_inst
    OR_u32_u32_8033_wire <= (MUX_8024_wire or MUX_8032_wire);
    -- flow through binary operator OR_u32_u32_8048_inst
    OR_u32_u32_8048_wire <= (MUX_8041_wire or MUX_8047_wire);
    -- flow through binary operator OR_u32_u32_8049_inst
    OR_u32_u32_8049_wire <= (OR_u32_u32_8033_wire or OR_u32_u32_8048_wire);
    -- flow through binary operator OR_u32_u32_8067_inst
    OR_u32_u32_8067_wire <= (MUX_8060_wire or MUX_8066_wire);
    -- flow through binary operator OR_u32_u32_8070_inst
    OR_u32_u32_8070_wire <= (MUX_8051_wire or MUX_8069_wire);
    -- flow through binary operator OR_u32_u32_8077_inst
    store_word_l_8078 <= (OR_u32_u32_8070_wire or MUX_8076_wire);
    -- flow through binary operator OR_u32_u32_8189_inst
    dcache_address_buffer <= (MUX_8184_wire or MUX_8188_wire);
    -- flow through binary operator OR_u4_u4_7927_inst
    OR_u4_u4_7927_wire <= (MUX_7919_wire or MUX_7926_wire);
    -- flow through binary operator OR_u4_u4_7942_inst
    OR_u4_u4_7942_wire <= (MUX_7934_wire or MUX_7941_wire);
    -- flow through binary operator OR_u4_u4_7943_inst
    OR_u4_u4_7943_wire <= (OR_u4_u4_7927_wire or OR_u4_u4_7942_wire);
    -- flow through binary operator OR_u4_u4_7959_inst
    OR_u4_u4_7959_wire <= (MUX_7951_wire or MUX_7958_wire);
    -- flow through binary operator OR_u64_u64_8200_inst
    dcache_write_data_buffer <= (MUX_8195_wire or MUX_8199_wire);
    -- flow through binary operator OR_u8_u8_8178_inst
    dcache_asi_buffer <= (MUX_8173_wire or MUX_8177_wire);
    -- flow through binary operator SHL_u32_u32_8022_inst
    process(din_l_buffer) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApIntSHL_proc(din_l_buffer, konst_8021_wire_constant, tmp_var);
      SHL_u32_u32_8022_wire <= tmp_var; --
    end process;
    -- flow through binary operator SHL_u32_u32_8030_inst
    process(din_l_buffer) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApIntSHL_proc(din_l_buffer, konst_8029_wire_constant, tmp_var);
      SHL_u32_u32_8030_wire <= tmp_var; --
    end process;
    -- flow through binary operator SHL_u32_u32_8039_inst
    process(din_l_buffer) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApIntSHL_proc(din_l_buffer, konst_8038_wire_constant, tmp_var);
      SHL_u32_u32_8039_wire <= tmp_var; --
    end process;
    -- flow through binary operator SHL_u32_u32_8058_inst
    process(din_l_buffer) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApIntSHL_proc(din_l_buffer, konst_8057_wire_constant, tmp_var);
      SHL_u32_u32_8058_wire <= tmp_var; --
    end process;
    -- flow through binary operator XOR_u8_u8_8225_inst
    wr_data_signature_8226 <= (din_h_signature_8218 xor din_l_signature_8221);
    volatile_operator_signature_8_7075: signature_8_Volatile port map(A => store_addr_8125, AS => addr_signature_8207); 
    volatile_operator_signature_8_7078: signature_8_Volatile port map(A => wr_data_h_8211, AS => din_h_signature_8218); 
    volatile_operator_signature_8_7079: signature_8_Volatile port map(A => wr_data_l_8215, AS => din_l_signature_8221); 
    -- 
  end Block; -- data_path
  -- 
end prepare_simple_dcache_command_Volatile_arch;
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
library teu_loadstore;
use teu_loadstore.loadstore_global_package.all;
entity signature_8_Volatile is -- 
  port ( -- 
    A : in  std_logic_vector(31 downto 0);
    AS : out  std_logic_vector(7 downto 0)-- 
  );
  -- 
end entity signature_8_Volatile;
architecture signature_8_Volatile_arch of signature_8_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(32-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal A_buffer :  std_logic_vector(31 downto 0);
  -- output port buffer signals
  signal AS_buffer :  std_logic_vector(7 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  A_buffer <= A;
  -- output handling  -------------------------------------------------------
  AS <= AS_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal XOR_u8_u8_6996_wire : std_logic_vector(7 downto 0);
    signal XOR_u8_u8_7001_wire : std_logic_vector(7 downto 0);
    signal slice_6993_wire : std_logic_vector(7 downto 0);
    signal slice_6995_wire : std_logic_vector(7 downto 0);
    signal slice_6998_wire : std_logic_vector(7 downto 0);
    signal slice_7000_wire : std_logic_vector(7 downto 0);
    -- 
  begin -- 
    -- flow-through slice operator slice_6993_inst
    slice_6993_wire <= A_buffer(7 downto 0);
    -- flow-through slice operator slice_6995_inst
    slice_6995_wire <= A_buffer(15 downto 8);
    -- flow-through slice operator slice_6998_inst
    slice_6998_wire <= A_buffer(23 downto 16);
    -- flow-through slice operator slice_7000_inst
    slice_7000_wire <= A_buffer(31 downto 24);
    -- flow through binary operator XOR_u8_u8_6996_inst
    XOR_u8_u8_6996_wire <= (slice_6993_wire xor slice_6995_wire);
    -- flow through binary operator XOR_u8_u8_7001_inst
    XOR_u8_u8_7001_wire <= (slice_6998_wire xor slice_7000_wire);
    -- flow through binary operator XOR_u8_u8_7002_inst
    AS_buffer <= (XOR_u8_u8_6996_wire xor XOR_u8_u8_7001_wire);
    -- 
  end Block; -- data_path
  -- 
end signature_8_Volatile_arch;
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
library teu_loadstore;
use teu_loadstore.loadstore_global_package.all;
entity writeback_fsm_Volatile is -- 
  port ( -- 
    wb_state : in  std_logic_vector(1 downto 0);
    valid_bit : in  std_logic_vector(0 downto 0);
    thread_head : in  std_logic_vector(0 downto 0);
    stream_head : in  std_logic_vector(0 downto 0);
    break_thread : in  std_logic_vector(0 downto 0);
    terminate_thread : in  std_logic_vector(0 downto 0);
    kill_thread_now : in  std_logic_vector(0 downto 0);
    break_stream : in  std_logic_vector(0 downto 0);
    next_wb_state : out  std_logic_vector(1 downto 0);
    instr_can_execute : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity writeback_fsm_Volatile;
architecture writeback_fsm_Volatile_arch of writeback_fsm_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(9-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal wb_state_buffer :  std_logic_vector(1 downto 0);
  signal valid_bit_buffer :  std_logic_vector(0 downto 0);
  signal thread_head_buffer :  std_logic_vector(0 downto 0);
  signal stream_head_buffer :  std_logic_vector(0 downto 0);
  signal break_thread_buffer :  std_logic_vector(0 downto 0);
  signal terminate_thread_buffer :  std_logic_vector(0 downto 0);
  signal kill_thread_now_buffer :  std_logic_vector(0 downto 0);
  signal break_stream_buffer :  std_logic_vector(0 downto 0);
  -- output port buffer signals
  signal next_wb_state_buffer :  std_logic_vector(1 downto 0);
  signal instr_can_execute_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  wb_state_buffer <= wb_state;
  valid_bit_buffer <= valid_bit;
  thread_head_buffer <= thread_head;
  stream_head_buffer <= stream_head;
  break_thread_buffer <= break_thread;
  terminate_thread_buffer <= terminate_thread;
  kill_thread_now_buffer <= kill_thread_now;
  break_stream_buffer <= break_stream;
  -- output handling  -------------------------------------------------------
  next_wb_state <= next_wb_state_buffer;
  instr_can_execute <= instr_can_execute_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_7741_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_7745_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_7764_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_7768_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_7808_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_7822_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_7702_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_7718_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_7735_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_7758_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_7786_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_7795_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_7805_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_7819_wire : std_logic_vector(0 downto 0);
    signal MUX_7711_wire : std_logic_vector(1 downto 0);
    signal MUX_7712_wire : std_logic_vector(1 downto 0);
    signal MUX_7713_wire : std_logic_vector(1 downto 0);
    signal MUX_7715_wire : std_logic_vector(1 downto 0);
    signal MUX_7727_wire : std_logic_vector(1 downto 0);
    signal MUX_7728_wire : std_logic_vector(1 downto 0);
    signal MUX_7729_wire : std_logic_vector(1 downto 0);
    signal MUX_7731_wire : std_logic_vector(1 downto 0);
    signal MUX_7750_wire : std_logic_vector(1 downto 0);
    signal MUX_7751_wire : std_logic_vector(1 downto 0);
    signal MUX_7752_wire : std_logic_vector(1 downto 0);
    signal MUX_7753_wire : std_logic_vector(1 downto 0);
    signal MUX_7755_wire : std_logic_vector(1 downto 0);
    signal MUX_7773_wire : std_logic_vector(1 downto 0);
    signal MUX_7774_wire : std_logic_vector(1 downto 0);
    signal MUX_7775_wire : std_logic_vector(1 downto 0);
    signal MUX_7776_wire : std_logic_vector(1 downto 0);
    signal MUX_7778_wire : std_logic_vector(1 downto 0);
    signal MUX_7790_wire : std_logic_vector(0 downto 0);
    signal MUX_7792_wire : std_logic_vector(0 downto 0);
    signal MUX_7799_wire : std_logic_vector(0 downto 0);
    signal MUX_7801_wire : std_logic_vector(0 downto 0);
    signal MUX_7813_wire : std_logic_vector(0 downto 0);
    signal MUX_7814_wire : std_logic_vector(0 downto 0);
    signal MUX_7816_wire : std_logic_vector(0 downto 0);
    signal MUX_7827_wire : std_logic_vector(0 downto 0);
    signal MUX_7828_wire : std_logic_vector(0 downto 0);
    signal MUX_7830_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_7704_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_7720_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_7737_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_7760_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_7802_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_7831_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_7832_wire : std_logic_vector(0 downto 0);
    signal OR_u2_u2_7732_wire : std_logic_vector(1 downto 0);
    signal OR_u2_u2_7779_wire : std_logic_vector(1 downto 0);
    signal R_ONE_1_7789_wire_constant : std_logic_vector(0 downto 0);
    signal R_ONE_1_7798_wire_constant : std_logic_vector(0 downto 0);
    signal R_ONE_1_7811_wire_constant : std_logic_vector(0 downto 0);
    signal R_ONE_1_7825_wire_constant : std_logic_vector(0 downto 0);
    signal R_WB_MISPREDICTED_STREAM_7709_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_MISPREDICTED_STREAM_7725_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_MISPREDICTED_STREAM_7734_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_MISPREDICTED_STREAM_7738_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_MISPREDICTED_STREAM_7746_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_MISPREDICTED_STREAM_7749_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_MISPREDICTED_STREAM_7769_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_MISPREDICTED_STREAM_7804_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_NORMAL_7710_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_NORMAL_7717_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_NORMAL_7721_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_NORMAL_7726_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_NORMAL_7748_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_NORMAL_7771_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_NORMAL_7794_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_RESET_7701_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_RESET_7705_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_RESET_7785_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_TRAPPED_7707_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_TRAPPED_7723_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_TRAPPED_7742_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_TRAPPED_7757_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_TRAPPED_7761_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_TRAPPED_7765_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_TRAPPED_7772_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_TRAPPED_7818_wire_constant : std_logic_vector(1 downto 0);
    signal R_ZERO_1_7788_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_7797_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_7809_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_7812_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_7823_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_7826_wire_constant : std_logic_vector(0 downto 0);
    signal konst_7714_wire_constant : std_logic_vector(1 downto 0);
    signal konst_7730_wire_constant : std_logic_vector(1 downto 0);
    signal konst_7754_wire_constant : std_logic_vector(1 downto 0);
    signal konst_7777_wire_constant : std_logic_vector(1 downto 0);
    signal konst_7791_wire_constant : std_logic_vector(0 downto 0);
    signal konst_7800_wire_constant : std_logic_vector(0 downto 0);
    signal konst_7815_wire_constant : std_logic_vector(0 downto 0);
    signal konst_7829_wire_constant : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    R_ONE_1_7789_wire_constant <= "1";
    R_ONE_1_7798_wire_constant <= "1";
    R_ONE_1_7811_wire_constant <= "1";
    R_ONE_1_7825_wire_constant <= "1";
    R_WB_MISPREDICTED_STREAM_7709_wire_constant <= "10";
    R_WB_MISPREDICTED_STREAM_7725_wire_constant <= "10";
    R_WB_MISPREDICTED_STREAM_7734_wire_constant <= "10";
    R_WB_MISPREDICTED_STREAM_7738_wire_constant <= "10";
    R_WB_MISPREDICTED_STREAM_7746_wire_constant <= "10";
    R_WB_MISPREDICTED_STREAM_7749_wire_constant <= "10";
    R_WB_MISPREDICTED_STREAM_7769_wire_constant <= "10";
    R_WB_MISPREDICTED_STREAM_7804_wire_constant <= "10";
    R_WB_NORMAL_7710_wire_constant <= "01";
    R_WB_NORMAL_7717_wire_constant <= "01";
    R_WB_NORMAL_7721_wire_constant <= "01";
    R_WB_NORMAL_7726_wire_constant <= "01";
    R_WB_NORMAL_7748_wire_constant <= "01";
    R_WB_NORMAL_7771_wire_constant <= "01";
    R_WB_NORMAL_7794_wire_constant <= "01";
    R_WB_RESET_7701_wire_constant <= "00";
    R_WB_RESET_7705_wire_constant <= "00";
    R_WB_RESET_7785_wire_constant <= "00";
    R_WB_TRAPPED_7707_wire_constant <= "11";
    R_WB_TRAPPED_7723_wire_constant <= "11";
    R_WB_TRAPPED_7742_wire_constant <= "11";
    R_WB_TRAPPED_7757_wire_constant <= "11";
    R_WB_TRAPPED_7761_wire_constant <= "11";
    R_WB_TRAPPED_7765_wire_constant <= "11";
    R_WB_TRAPPED_7772_wire_constant <= "11";
    R_WB_TRAPPED_7818_wire_constant <= "11";
    R_ZERO_1_7788_wire_constant <= "0";
    R_ZERO_1_7797_wire_constant <= "0";
    R_ZERO_1_7809_wire_constant <= "0";
    R_ZERO_1_7812_wire_constant <= "0";
    R_ZERO_1_7823_wire_constant <= "0";
    R_ZERO_1_7826_wire_constant <= "0";
    konst_7714_wire_constant <= "00";
    konst_7730_wire_constant <= "00";
    konst_7754_wire_constant <= "00";
    konst_7777_wire_constant <= "00";
    konst_7791_wire_constant <= "0";
    konst_7800_wire_constant <= "0";
    konst_7815_wire_constant <= "0";
    konst_7829_wire_constant <= "0";
    -- flow-through select operator MUX_7711_inst
    MUX_7711_wire <= R_WB_MISPREDICTED_STREAM_7709_wire_constant when (break_stream_buffer(0) /=  '0') else R_WB_NORMAL_7710_wire_constant;
    -- flow-through select operator MUX_7712_inst
    MUX_7712_wire <= R_WB_TRAPPED_7707_wire_constant when (break_thread_buffer(0) /=  '0') else MUX_7711_wire;
    -- flow-through select operator MUX_7713_inst
    MUX_7713_wire <= R_WB_RESET_7705_wire_constant when (NOT_u1_u1_7704_wire(0) /=  '0') else MUX_7712_wire;
    -- flow-through select operator MUX_7715_inst
    MUX_7715_wire <= MUX_7713_wire when (EQ_u2_u1_7702_wire(0) /=  '0') else konst_7714_wire_constant;
    -- flow-through select operator MUX_7727_inst
    MUX_7727_wire <= R_WB_MISPREDICTED_STREAM_7725_wire_constant when (break_stream_buffer(0) /=  '0') else R_WB_NORMAL_7726_wire_constant;
    -- flow-through select operator MUX_7728_inst
    MUX_7728_wire <= R_WB_TRAPPED_7723_wire_constant when (break_thread_buffer(0) /=  '0') else MUX_7727_wire;
    -- flow-through select operator MUX_7729_inst
    MUX_7729_wire <= R_WB_NORMAL_7721_wire_constant when (NOT_u1_u1_7720_wire(0) /=  '0') else MUX_7728_wire;
    -- flow-through select operator MUX_7731_inst
    MUX_7731_wire <= MUX_7729_wire when (EQ_u2_u1_7718_wire(0) /=  '0') else konst_7730_wire_constant;
    -- flow-through select operator MUX_7750_inst
    MUX_7750_wire <= R_WB_NORMAL_7748_wire_constant when (stream_head_buffer(0) /=  '0') else R_WB_MISPREDICTED_STREAM_7749_wire_constant;
    -- flow-through select operator MUX_7751_inst
    MUX_7751_wire <= R_WB_MISPREDICTED_STREAM_7746_wire_constant when (AND_u1_u1_7745_wire(0) /=  '0') else MUX_7750_wire;
    -- flow-through select operator MUX_7752_inst
    MUX_7752_wire <= R_WB_TRAPPED_7742_wire_constant when (AND_u1_u1_7741_wire(0) /=  '0') else MUX_7751_wire;
    -- flow-through select operator MUX_7753_inst
    MUX_7753_wire <= R_WB_MISPREDICTED_STREAM_7738_wire_constant when (NOT_u1_u1_7737_wire(0) /=  '0') else MUX_7752_wire;
    -- flow-through select operator MUX_7755_inst
    MUX_7755_wire <= MUX_7753_wire when (EQ_u2_u1_7735_wire(0) /=  '0') else konst_7754_wire_constant;
    -- flow-through select operator MUX_7773_inst
    MUX_7773_wire <= R_WB_NORMAL_7771_wire_constant when (thread_head_buffer(0) /=  '0') else R_WB_TRAPPED_7772_wire_constant;
    -- flow-through select operator MUX_7774_inst
    MUX_7774_wire <= R_WB_MISPREDICTED_STREAM_7769_wire_constant when (AND_u1_u1_7768_wire(0) /=  '0') else MUX_7773_wire;
    -- flow-through select operator MUX_7775_inst
    MUX_7775_wire <= R_WB_TRAPPED_7765_wire_constant when (AND_u1_u1_7764_wire(0) /=  '0') else MUX_7774_wire;
    -- flow-through select operator MUX_7776_inst
    MUX_7776_wire <= R_WB_TRAPPED_7761_wire_constant when (NOT_u1_u1_7760_wire(0) /=  '0') else MUX_7775_wire;
    -- flow-through select operator MUX_7778_inst
    MUX_7778_wire <= MUX_7776_wire when (EQ_u2_u1_7758_wire(0) /=  '0') else konst_7777_wire_constant;
    -- flow-through select operator MUX_7790_inst
    MUX_7790_wire <= R_ZERO_1_7788_wire_constant when (kill_thread_now_buffer(0) /=  '0') else R_ONE_1_7789_wire_constant;
    -- flow-through select operator MUX_7792_inst
    MUX_7792_wire <= MUX_7790_wire when (EQ_u2_u1_7786_wire(0) /=  '0') else konst_7791_wire_constant;
    -- flow-through select operator MUX_7799_inst
    MUX_7799_wire <= R_ZERO_1_7797_wire_constant when (kill_thread_now_buffer(0) /=  '0') else R_ONE_1_7798_wire_constant;
    -- flow-through select operator MUX_7801_inst
    MUX_7801_wire <= MUX_7799_wire when (EQ_u2_u1_7795_wire(0) /=  '0') else konst_7800_wire_constant;
    -- flow-through select operator MUX_7813_inst
    MUX_7813_wire <= R_ONE_1_7811_wire_constant when (stream_head_buffer(0) /=  '0') else R_ZERO_1_7812_wire_constant;
    -- flow-through select operator MUX_7814_inst
    MUX_7814_wire <= R_ZERO_1_7809_wire_constant when (AND_u1_u1_7808_wire(0) /=  '0') else MUX_7813_wire;
    -- flow-through select operator MUX_7816_inst
    MUX_7816_wire <= MUX_7814_wire when (EQ_u2_u1_7805_wire(0) /=  '0') else konst_7815_wire_constant;
    -- flow-through select operator MUX_7827_inst
    MUX_7827_wire <= R_ONE_1_7825_wire_constant when (thread_head_buffer(0) /=  '0') else R_ZERO_1_7826_wire_constant;
    -- flow-through select operator MUX_7828_inst
    MUX_7828_wire <= R_ZERO_1_7823_wire_constant when (AND_u1_u1_7822_wire(0) /=  '0') else MUX_7827_wire;
    -- flow-through select operator MUX_7830_inst
    MUX_7830_wire <= MUX_7828_wire when (EQ_u2_u1_7819_wire(0) /=  '0') else konst_7829_wire_constant;
    -- flow through binary operator AND_u1_u1_7741_inst
    AND_u1_u1_7741_wire <= (stream_head_buffer and break_thread_buffer);
    -- flow through binary operator AND_u1_u1_7745_inst
    AND_u1_u1_7745_wire <= (stream_head_buffer and break_stream_buffer);
    -- flow through binary operator AND_u1_u1_7764_inst
    AND_u1_u1_7764_wire <= (thread_head_buffer and break_thread_buffer);
    -- flow through binary operator AND_u1_u1_7768_inst
    AND_u1_u1_7768_wire <= (thread_head_buffer and break_stream_buffer);
    -- flow through binary operator AND_u1_u1_7808_inst
    AND_u1_u1_7808_wire <= (stream_head_buffer and kill_thread_now_buffer);
    -- flow through binary operator AND_u1_u1_7822_inst
    AND_u1_u1_7822_wire <= (thread_head_buffer and kill_thread_now_buffer);
    -- flow through binary operator AND_u1_u1_7833_inst
    instr_can_execute_buffer <= (valid_bit_buffer and OR_u1_u1_7832_wire);
    -- flow through binary operator EQ_u2_u1_7702_inst
    process(wb_state_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wb_state_buffer, R_WB_RESET_7701_wire_constant, tmp_var);
      EQ_u2_u1_7702_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_7718_inst
    process(wb_state_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wb_state_buffer, R_WB_NORMAL_7717_wire_constant, tmp_var);
      EQ_u2_u1_7718_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_7735_inst
    process(wb_state_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wb_state_buffer, R_WB_MISPREDICTED_STREAM_7734_wire_constant, tmp_var);
      EQ_u2_u1_7735_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_7758_inst
    process(wb_state_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wb_state_buffer, R_WB_TRAPPED_7757_wire_constant, tmp_var);
      EQ_u2_u1_7758_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_7786_inst
    process(wb_state_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wb_state_buffer, R_WB_RESET_7785_wire_constant, tmp_var);
      EQ_u2_u1_7786_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_7795_inst
    process(wb_state_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wb_state_buffer, R_WB_NORMAL_7794_wire_constant, tmp_var);
      EQ_u2_u1_7795_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_7805_inst
    process(wb_state_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wb_state_buffer, R_WB_MISPREDICTED_STREAM_7804_wire_constant, tmp_var);
      EQ_u2_u1_7805_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_7819_inst
    process(wb_state_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wb_state_buffer, R_WB_TRAPPED_7818_wire_constant, tmp_var);
      EQ_u2_u1_7819_wire <= tmp_var; --
    end process;
    -- unary operator NOT_u1_u1_7704_inst
    process(valid_bit_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", valid_bit_buffer, tmp_var);
      NOT_u1_u1_7704_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_7720_inst
    process(valid_bit_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", valid_bit_buffer, tmp_var);
      NOT_u1_u1_7720_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_7737_inst
    process(valid_bit_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", valid_bit_buffer, tmp_var);
      NOT_u1_u1_7737_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_7760_inst
    process(valid_bit_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", valid_bit_buffer, tmp_var);
      NOT_u1_u1_7760_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator OR_u1_u1_7802_inst
    OR_u1_u1_7802_wire <= (MUX_7792_wire or MUX_7801_wire);
    -- flow through binary operator OR_u1_u1_7831_inst
    OR_u1_u1_7831_wire <= (MUX_7816_wire or MUX_7830_wire);
    -- flow through binary operator OR_u1_u1_7832_inst
    OR_u1_u1_7832_wire <= (OR_u1_u1_7802_wire or OR_u1_u1_7831_wire);
    -- flow through binary operator OR_u2_u2_7732_inst
    OR_u2_u2_7732_wire <= (MUX_7715_wire or MUX_7731_wire);
    -- flow through binary operator OR_u2_u2_7779_inst
    OR_u2_u2_7779_wire <= (MUX_7755_wire or MUX_7778_wire);
    -- flow through binary operator OR_u2_u2_7780_inst
    next_wb_state_buffer <= (OR_u2_u2_7732_wire or OR_u2_u2_7779_wire);
    -- 
  end Block; -- data_path
  -- 
end writeback_fsm_Volatile_arch;
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
library teu_loadstore;
use teu_loadstore.loadstore_global_package.all;
entity loadstore is  -- system 
  port (-- 
    clk : in std_logic;
    reset : in std_logic;
    BROADCAST_INIT_PC: in std_logic_vector(31 downto 0);
    DCACHE_to_CPU_response_pipe_write_data: in std_logic_vector(71 downto 0);
    DCACHE_to_CPU_response_pipe_write_req : in std_logic_vector(0 downto 0);
    DCACHE_to_CPU_response_pipe_write_ack : out std_logic_vector(0 downto 0);
    DCACHE_to_CPU_slow_response_pipe_write_data: in std_logic_vector(71 downto 0);
    DCACHE_to_CPU_slow_response_pipe_write_req : in std_logic_vector(0 downto 0);
    DCACHE_to_CPU_slow_response_pipe_write_ack : out std_logic_vector(0 downto 0);
    NOBLOCK_CPU_to_DCACHE_command_pipe_read_data: out std_logic_vector(142 downto 0);
    NOBLOCK_CPU_to_DCACHE_command_pipe_read_req : in std_logic_vector(0 downto 0);
    NOBLOCK_CPU_to_DCACHE_command_pipe_read_ack : out std_logic_vector(0 downto 0);
    NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_data: out std_logic_vector(120 downto 0);
    NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_req : in std_logic_vector(0 downto 0);
    NOBLOCK_CPU_to_DCACHE_slow_command_pipe_read_ack : out std_logic_vector(0 downto 0);
    THREAD_ID: in std_logic_vector(7 downto 0);
    ccu_to_teu_load_store_command_pipe_write_data: in std_logic_vector(72 downto 0);
    ccu_to_teu_load_store_command_pipe_write_req : in std_logic_vector(0 downto 0);
    ccu_to_teu_load_store_command_pipe_write_ack : out std_logic_vector(0 downto 0);
    debug_wp_0: in std_logic_vector(31 downto 0);
    debug_wp_1: in std_logic_vector(31 downto 0);
    debug_wp_2: in std_logic_vector(31 downto 0);
    debug_wp_3: in std_logic_vector(31 downto 0);
    noblock_teu_idispatch_to_loadstore_pipe_write_data: in std_logic_vector(125 downto 0);
    noblock_teu_idispatch_to_loadstore_pipe_write_req : in std_logic_vector(0 downto 0);
    noblock_teu_idispatch_to_loadstore_pipe_write_ack : out std_logic_vector(0 downto 0);
    noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_data: out std_logic_vector(0 downto 0);
    noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_req : in std_logic_vector(0 downto 0);
    noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_ack : out std_logic_vector(0 downto 0);
    noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_data: out std_logic_vector(0 downto 0);
    noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_req : in std_logic_vector(0 downto 0);
    noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_ack : out std_logic_vector(0 downto 0);
    teu_fpunit_register_file_to_loadstore_pipe_write_data: in std_logic_vector(76 downto 0);
    teu_fpunit_register_file_to_loadstore_pipe_write_req : in std_logic_vector(0 downto 0);
    teu_fpunit_register_file_to_loadstore_pipe_write_ack : out std_logic_vector(0 downto 0);
    teu_fpunit_trap_to_loadstore_pipe_write_data: in std_logic_vector(12 downto 0);
    teu_fpunit_trap_to_loadstore_pipe_write_req : in std_logic_vector(0 downto 0);
    teu_fpunit_trap_to_loadstore_pipe_write_ack : out std_logic_vector(0 downto 0);
    teu_iunit_register_file_to_loadstore_pipe_write_data: in std_logic_vector(141 downto 0);
    teu_iunit_register_file_to_loadstore_pipe_write_req : in std_logic_vector(0 downto 0);
    teu_iunit_register_file_to_loadstore_pipe_write_ack : out std_logic_vector(0 downto 0);
    teu_iunit_trap_to_loadstore_pipe_write_data: in std_logic_vector(0 downto 0);
    teu_iunit_trap_to_loadstore_pipe_write_req : in std_logic_vector(0 downto 0);
    teu_iunit_trap_to_loadstore_pipe_write_ack : out std_logic_vector(0 downto 0);
    teu_loadstore_to_fpunit_pipe_read_data: out std_logic_vector(77 downto 0);
    teu_loadstore_to_fpunit_pipe_read_req : in std_logic_vector(0 downto 0);
    teu_loadstore_to_fpunit_pipe_read_ack : out std_logic_vector(0 downto 0);
    teu_loadstore_to_iretire_pipe_read_data: out std_logic_vector(53 downto 0);
    teu_loadstore_to_iretire_pipe_read_req : in std_logic_vector(0 downto 0);
    teu_loadstore_to_iretire_pipe_read_ack : out std_logic_vector(0 downto 0);
    teu_loadstore_to_iunit_pipe_read_data: out std_logic_vector(77 downto 0);
    teu_loadstore_to_iunit_pipe_read_req : in std_logic_vector(0 downto 0);
    teu_loadstore_to_iunit_pipe_read_ack : out std_logic_vector(0 downto 0);
    teu_stream_corrector_to_loadstore_pipe_write_data: in std_logic_vector(18 downto 0);
    teu_stream_corrector_to_loadstore_pipe_write_req : in std_logic_vector(0 downto 0);
    teu_stream_corrector_to_loadstore_pipe_write_ack : out std_logic_vector(0 downto 0);
    teu_to_ccu_load_store_response_pipe_read_data: out std_logic_vector(32 downto 0);
    teu_to_ccu_load_store_response_pipe_read_req : in std_logic_vector(0 downto 0);
    teu_to_ccu_load_store_response_pipe_read_ack : out std_logic_vector(0 downto 0)); -- 
  -- 
end entity; 
architecture loadstore_arch  of loadstore is -- system-architecture 
  -- interface signals to connect to memory space memory_space_1
  -- declarations related to module analyze_dcache_response
  -- declarations related to module ccu_service_daemon
  component ccu_service_daemon is -- 
    generic (tag_length : integer); 
    port ( -- 
      ccu_to_teu_load_store_command_pipe_read_req : out  std_logic_vector(0 downto 0);
      ccu_to_teu_load_store_command_pipe_read_ack : in   std_logic_vector(0 downto 0);
      ccu_to_teu_load_store_command_pipe_read_data : in   std_logic_vector(72 downto 0);
      teu_to_ccu_load_store_response_pipe_write_req : out  std_logic_vector(0 downto 0);
      teu_to_ccu_load_store_response_pipe_write_ack : in   std_logic_vector(0 downto 0);
      teu_to_ccu_load_store_response_pipe_write_data : out  std_logic_vector(32 downto 0);
      dcache_access_call_reqs : out  std_logic_vector(0 downto 0);
      dcache_access_call_acks : in   std_logic_vector(0 downto 0);
      dcache_access_call_data : out  std_logic_vector(119 downto 0);
      dcache_access_call_tag  :  out  std_logic_vector(1 downto 0);
      dcache_access_return_reqs : out  std_logic_vector(0 downto 0);
      dcache_access_return_acks : in   std_logic_vector(0 downto 0);
      dcache_access_return_data : in   std_logic_vector(71 downto 0);
      dcache_access_return_tag :  in   std_logic_vector(1 downto 0);
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
  -- argument signals for module ccu_service_daemon
  signal ccu_service_daemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal ccu_service_daemon_tag_out   : std_logic_vector(1 downto 0);
  signal ccu_service_daemon_start_req : std_logic;
  signal ccu_service_daemon_start_ack : std_logic;
  signal ccu_service_daemon_fin_req   : std_logic;
  signal ccu_service_daemon_fin_ack : std_logic;
  -- declarations related to module classify_load_store_operation
  -- declarations related to module dcache_access
  component dcache_access is -- 
    generic (tag_length : integer); 
    port ( -- 
      req_type : in  std_logic_vector(7 downto 0);
      asi : in  std_logic_vector(7 downto 0);
      byte_mask : in  std_logic_vector(7 downto 0);
      addr : in  std_logic_vector(31 downto 0);
      write_data : in  std_logic_vector(63 downto 0);
      dcache_read_response : out  std_logic_vector(71 downto 0);
      DCACHE_to_CPU_slow_response_pipe_read_req : out  std_logic_vector(0 downto 0);
      DCACHE_to_CPU_slow_response_pipe_read_ack : in   std_logic_vector(0 downto 0);
      DCACHE_to_CPU_slow_response_pipe_read_data : in   std_logic_vector(71 downto 0);
      NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_req : out  std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_ack : in   std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_data : out  std_logic_vector(120 downto 0);
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
  -- argument signals for module dcache_access
  signal dcache_access_req_type :  std_logic_vector(7 downto 0);
  signal dcache_access_asi :  std_logic_vector(7 downto 0);
  signal dcache_access_byte_mask :  std_logic_vector(7 downto 0);
  signal dcache_access_addr :  std_logic_vector(31 downto 0);
  signal dcache_access_write_data :  std_logic_vector(63 downto 0);
  signal dcache_access_dcache_read_response :  std_logic_vector(71 downto 0);
  signal dcache_access_in_args    : std_logic_vector(119 downto 0);
  signal dcache_access_out_args   : std_logic_vector(71 downto 0);
  signal dcache_access_tag_in    : std_logic_vector(3 downto 0) := (others => '0');
  signal dcache_access_tag_out   : std_logic_vector(3 downto 0);
  signal dcache_access_start_req : std_logic;
  signal dcache_access_start_ack : std_logic;
  signal dcache_access_fin_req   : std_logic;
  signal dcache_access_fin_ack : std_logic;
  -- caller side aggregated signals for module dcache_access
  signal dcache_access_call_reqs: std_logic_vector(1 downto 0);
  signal dcache_access_call_acks: std_logic_vector(1 downto 0);
  signal dcache_access_return_reqs: std_logic_vector(1 downto 0);
  signal dcache_access_return_acks: std_logic_vector(1 downto 0);
  signal dcache_access_call_data: std_logic_vector(239 downto 0);
  signal dcache_access_call_tag: std_logic_vector(3 downto 0);
  signal dcache_access_return_data: std_logic_vector(143 downto 0);
  signal dcache_access_return_tag: std_logic_vector(3 downto 0);
  -- declarations related to module debug_calculate_debug_wp_hits
  -- declarations related to module decode_dti_ispec
  -- declarations related to module decode_routing_control_info
  -- declarations related to module execute_messy_dti
  component execute_messy_dti is -- 
    generic (tag_length : integer); 
    port ( -- 
      cpu_id_2 : in  std_logic_vector(1 downto 0);
      run_dti : in  std_logic_vector(0 downto 0);
      untrap_cache : in  std_logic_vector(0 downto 0);
      update_mmu_fsr : in  std_logic_vector(0 downto 0);
      addr : in  std_logic_vector(31 downto 0);
      din_h : in  std_logic_vector(31 downto 0);
      din_l : in  std_logic_vector(31 downto 0);
      pc : in  std_logic_vector(31 downto 0);
      mmu_fsr : in  std_logic_vector(17 downto 0);
      is_swap : in  std_logic_vector(0 downto 0);
      is_atomic_ld_st : in  std_logic_vector(0 downto 0);
      signed_type : in  std_logic_vector(0 downto 0);
      use_asi : in  std_logic_vector(0 downto 0);
      asi : in  std_logic_vector(7 downto 0);
      S : in  std_logic_vector(0 downto 0);
      dout_h : out  std_logic_vector(31 downto 0);
      dout_l : out  std_logic_vector(31 downto 0);
      data_access_exception : out  std_logic_vector(0 downto 0);
      data_access_error : out  std_logic_vector(0 downto 0);
      store_signature : out  std_logic_vector(31 downto 0);
      BROADCAST_INIT_PC : in std_logic_vector(31 downto 0);
      messy_operation_completed_pipe_write_req : out  std_logic_vector(0 downto 0);
      messy_operation_completed_pipe_write_ack : in   std_logic_vector(0 downto 0);
      messy_operation_completed_pipe_write_data : out  std_logic_vector(0 downto 0);
      dcache_access_call_reqs : out  std_logic_vector(0 downto 0);
      dcache_access_call_acks : in   std_logic_vector(0 downto 0);
      dcache_access_call_data : out  std_logic_vector(119 downto 0);
      dcache_access_call_tag  :  out  std_logic_vector(1 downto 0);
      dcache_access_return_reqs : out  std_logic_vector(0 downto 0);
      dcache_access_return_acks : in   std_logic_vector(0 downto 0);
      dcache_access_return_data : in   std_logic_vector(71 downto 0);
      dcache_access_return_tag :  in   std_logic_vector(1 downto 0);
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
  -- argument signals for module execute_messy_dti
  signal execute_messy_dti_cpu_id_2 :  std_logic_vector(1 downto 0);
  signal execute_messy_dti_run_dti :  std_logic_vector(0 downto 0);
  signal execute_messy_dti_untrap_cache :  std_logic_vector(0 downto 0);
  signal execute_messy_dti_update_mmu_fsr :  std_logic_vector(0 downto 0);
  signal execute_messy_dti_addr :  std_logic_vector(31 downto 0);
  signal execute_messy_dti_din_h :  std_logic_vector(31 downto 0);
  signal execute_messy_dti_din_l :  std_logic_vector(31 downto 0);
  signal execute_messy_dti_pc :  std_logic_vector(31 downto 0);
  signal execute_messy_dti_mmu_fsr :  std_logic_vector(17 downto 0);
  signal execute_messy_dti_is_swap :  std_logic_vector(0 downto 0);
  signal execute_messy_dti_is_atomic_ld_st :  std_logic_vector(0 downto 0);
  signal execute_messy_dti_signed_type :  std_logic_vector(0 downto 0);
  signal execute_messy_dti_use_asi :  std_logic_vector(0 downto 0);
  signal execute_messy_dti_asi :  std_logic_vector(7 downto 0);
  signal execute_messy_dti_S :  std_logic_vector(0 downto 0);
  signal execute_messy_dti_dout_h :  std_logic_vector(31 downto 0);
  signal execute_messy_dti_dout_l :  std_logic_vector(31 downto 0);
  signal execute_messy_dti_data_access_exception :  std_logic_vector(0 downto 0);
  signal execute_messy_dti_data_access_error :  std_logic_vector(0 downto 0);
  signal execute_messy_dti_store_signature :  std_logic_vector(31 downto 0);
  signal execute_messy_dti_in_args    : std_logic_vector(163 downto 0);
  signal execute_messy_dti_out_args   : std_logic_vector(97 downto 0);
  signal execute_messy_dti_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal execute_messy_dti_tag_out   : std_logic_vector(1 downto 0);
  signal execute_messy_dti_start_req : std_logic;
  signal execute_messy_dti_start_ack : std_logic;
  signal execute_messy_dti_fin_req   : std_logic;
  signal execute_messy_dti_fin_ack : std_logic;
  -- caller side aggregated signals for module execute_messy_dti
  signal execute_messy_dti_call_reqs: std_logic_vector(0 downto 0);
  signal execute_messy_dti_call_acks: std_logic_vector(0 downto 0);
  signal execute_messy_dti_return_reqs: std_logic_vector(0 downto 0);
  signal execute_messy_dti_return_acks: std_logic_vector(0 downto 0);
  signal execute_messy_dti_call_data: std_logic_vector(163 downto 0);
  signal execute_messy_dti_call_tag: std_logic_vector(0 downto 0);
  signal execute_messy_dti_return_data: std_logic_vector(97 downto 0);
  signal execute_messy_dti_return_tag: std_logic_vector(0 downto 0);
  -- declarations related to module load_store_daemon
  component load_store_daemon is -- 
    generic (tag_length : integer); 
    port ( -- 
      messy_operation_completed_pipe_read_req : out  std_logic_vector(0 downto 0);
      messy_operation_completed_pipe_read_ack : in   std_logic_vector(0 downto 0);
      messy_operation_completed_pipe_read_data : in   std_logic_vector(0 downto 0);
      noblock_teu_idispatch_to_loadstore_pipe_read_req : out  std_logic_vector(0 downto 0);
      noblock_teu_idispatch_to_loadstore_pipe_read_ack : in   std_logic_vector(0 downto 0);
      noblock_teu_idispatch_to_loadstore_pipe_read_data : in   std_logic_vector(125 downto 0);
      teu_fpunit_register_file_to_loadstore_pipe_read_req : out  std_logic_vector(0 downto 0);
      teu_fpunit_register_file_to_loadstore_pipe_read_ack : in   std_logic_vector(0 downto 0);
      teu_fpunit_register_file_to_loadstore_pipe_read_data : in   std_logic_vector(76 downto 0);
      teu_fpunit_trap_to_loadstore_pipe_read_req : out  std_logic_vector(0 downto 0);
      teu_fpunit_trap_to_loadstore_pipe_read_ack : in   std_logic_vector(0 downto 0);
      teu_fpunit_trap_to_loadstore_pipe_read_data : in   std_logic_vector(12 downto 0);
      teu_iunit_register_file_to_loadstore_pipe_read_req : out  std_logic_vector(0 downto 0);
      teu_iunit_register_file_to_loadstore_pipe_read_ack : in   std_logic_vector(0 downto 0);
      teu_iunit_register_file_to_loadstore_pipe_read_data : in   std_logic_vector(141 downto 0);
      teu_iunit_trap_to_loadstore_pipe_read_req : out  std_logic_vector(0 downto 0);
      teu_iunit_trap_to_loadstore_pipe_read_ack : in   std_logic_vector(0 downto 0);
      teu_iunit_trap_to_loadstore_pipe_read_data : in   std_logic_vector(0 downto 0);
      teu_stream_corrector_to_loadstore_pipe_read_req : out  std_logic_vector(0 downto 0);
      teu_stream_corrector_to_loadstore_pipe_read_ack : in   std_logic_vector(0 downto 0);
      teu_stream_corrector_to_loadstore_pipe_read_data : in   std_logic_vector(18 downto 0);
      THREAD_ID : in std_logic_vector(7 downto 0);
      debug_wp_0 : in std_logic_vector(31 downto 0);
      debug_wp_1 : in std_logic_vector(31 downto 0);
      debug_wp_2 : in std_logic_vector(31 downto 0);
      debug_wp_3 : in std_logic_vector(31 downto 0);
      NOBLOCK_CPU_to_DCACHE_command_pipe_write_req : out  std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_DCACHE_command_pipe_write_ack : in   std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_DCACHE_command_pipe_write_data : out  std_logic_vector(142 downto 0);
      load_store_messy_to_router_pipe_pipe_write_req : out  std_logic_vector(0 downto 0);
      load_store_messy_to_router_pipe_pipe_write_ack : in   std_logic_vector(0 downto 0);
      load_store_messy_to_router_pipe_pipe_write_data : out  std_logic_vector(97 downto 0);
      load_store_router_control_pipe_pipe_write_req : out  std_logic_vector(0 downto 0);
      load_store_router_control_pipe_pipe_write_ack : in   std_logic_vector(0 downto 0);
      load_store_router_control_pipe_pipe_write_data : out  std_logic_vector(96 downto 0);
      noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_req : out  std_logic_vector(0 downto 0);
      noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_ack : in   std_logic_vector(0 downto 0);
      noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_data : out  std_logic_vector(0 downto 0);
      noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_req : out  std_logic_vector(0 downto 0);
      noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_ack : in   std_logic_vector(0 downto 0);
      noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_data : out  std_logic_vector(0 downto 0);
      execute_messy_dti_call_reqs : out  std_logic_vector(0 downto 0);
      execute_messy_dti_call_acks : in   std_logic_vector(0 downto 0);
      execute_messy_dti_call_data : out  std_logic_vector(163 downto 0);
      execute_messy_dti_call_tag  :  out  std_logic_vector(0 downto 0);
      execute_messy_dti_return_reqs : out  std_logic_vector(0 downto 0);
      execute_messy_dti_return_acks : in   std_logic_vector(0 downto 0);
      execute_messy_dti_return_data : in   std_logic_vector(97 downto 0);
      execute_messy_dti_return_tag :  in   std_logic_vector(0 downto 0);
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
  -- argument signals for module load_store_daemon
  signal load_store_daemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal load_store_daemon_tag_out   : std_logic_vector(1 downto 0);
  signal load_store_daemon_start_req : std_logic;
  signal load_store_daemon_start_ack : std_logic;
  signal load_store_daemon_fin_req   : std_logic;
  signal load_store_daemon_fin_ack : std_logic;
  -- declarations related to module load_store_router_daemon
  -- argument signals for module load_store_router_daemon
  signal load_store_router_daemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal load_store_router_daemon_tag_out   : std_logic_vector(1 downto 0);
  signal load_store_router_daemon_start_req : std_logic;
  signal load_store_router_daemon_start_ack : std_logic;
  signal load_store_router_daemon_fin_req   : std_logic;
  signal load_store_router_daemon_fin_ack : std_logic;
  -- declarations related to module loadstore_router_core
  -- declarations related to module prepare_simple_dcache_command
  -- declarations related to module signature_8
  -- declarations related to module writeback_fsm
  -- aggregate signals for read from pipe DCACHE_to_CPU_response
  signal DCACHE_to_CPU_response_pipe_read_data: std_logic_vector(71 downto 0);
  signal DCACHE_to_CPU_response_pipe_read_req: std_logic_vector(0 downto 0);
  signal DCACHE_to_CPU_response_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe DCACHE_to_CPU_slow_response
  signal DCACHE_to_CPU_slow_response_pipe_read_data: std_logic_vector(71 downto 0);
  signal DCACHE_to_CPU_slow_response_pipe_read_req: std_logic_vector(0 downto 0);
  signal DCACHE_to_CPU_slow_response_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe NOBLOCK_CPU_to_DCACHE_command
  signal NOBLOCK_CPU_to_DCACHE_command_pipe_write_data: std_logic_vector(142 downto 0);
  signal NOBLOCK_CPU_to_DCACHE_command_pipe_write_req: std_logic_vector(0 downto 0);
  signal NOBLOCK_CPU_to_DCACHE_command_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe NOBLOCK_CPU_to_DCACHE_slow_command
  signal NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_data: std_logic_vector(120 downto 0);
  signal NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_req: std_logic_vector(0 downto 0);
  signal NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe ccu_to_teu_load_store_command
  signal ccu_to_teu_load_store_command_pipe_read_data: std_logic_vector(72 downto 0);
  signal ccu_to_teu_load_store_command_pipe_read_req: std_logic_vector(0 downto 0);
  signal ccu_to_teu_load_store_command_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe load_store_messy_to_router_pipe
  signal load_store_messy_to_router_pipe_pipe_write_data: std_logic_vector(97 downto 0);
  signal load_store_messy_to_router_pipe_pipe_write_req: std_logic_vector(0 downto 0);
  signal load_store_messy_to_router_pipe_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe load_store_messy_to_router_pipe
  signal load_store_messy_to_router_pipe_pipe_read_data: std_logic_vector(97 downto 0);
  signal load_store_messy_to_router_pipe_pipe_read_req: std_logic_vector(0 downto 0);
  signal load_store_messy_to_router_pipe_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe load_store_router_control_pipe
  signal load_store_router_control_pipe_pipe_write_data: std_logic_vector(96 downto 0);
  signal load_store_router_control_pipe_pipe_write_req: std_logic_vector(0 downto 0);
  signal load_store_router_control_pipe_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe load_store_router_control_pipe
  signal load_store_router_control_pipe_pipe_read_data: std_logic_vector(96 downto 0);
  signal load_store_router_control_pipe_pipe_read_req: std_logic_vector(0 downto 0);
  signal load_store_router_control_pipe_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe messy_operation_completed
  signal messy_operation_completed_pipe_write_data: std_logic_vector(0 downto 0);
  signal messy_operation_completed_pipe_write_req: std_logic_vector(0 downto 0);
  signal messy_operation_completed_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe messy_operation_completed
  signal messy_operation_completed_pipe_read_data: std_logic_vector(0 downto 0);
  signal messy_operation_completed_pipe_read_req: std_logic_vector(0 downto 0);
  signal messy_operation_completed_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe noblock_teu_idispatch_to_loadstore
  signal noblock_teu_idispatch_to_loadstore_pipe_read_data: std_logic_vector(125 downto 0);
  signal noblock_teu_idispatch_to_loadstore_pipe_read_req: std_logic_vector(0 downto 0);
  signal noblock_teu_idispatch_to_loadstore_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe noblock_teu_loadstore_to_fpunit_regfile_credit_return
  signal noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_data: std_logic_vector(0 downto 0);
  signal noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_req: std_logic_vector(0 downto 0);
  signal noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe noblock_teu_loadstore_to_iunit_regfile_credit_return
  signal noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_data: std_logic_vector(0 downto 0);
  signal noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_req: std_logic_vector(0 downto 0);
  signal noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe teu_fpunit_register_file_to_loadstore
  signal teu_fpunit_register_file_to_loadstore_pipe_read_data: std_logic_vector(76 downto 0);
  signal teu_fpunit_register_file_to_loadstore_pipe_read_req: std_logic_vector(0 downto 0);
  signal teu_fpunit_register_file_to_loadstore_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe teu_fpunit_trap_to_loadstore
  signal teu_fpunit_trap_to_loadstore_pipe_read_data: std_logic_vector(12 downto 0);
  signal teu_fpunit_trap_to_loadstore_pipe_read_req: std_logic_vector(0 downto 0);
  signal teu_fpunit_trap_to_loadstore_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe teu_iunit_register_file_to_loadstore
  signal teu_iunit_register_file_to_loadstore_pipe_read_data: std_logic_vector(141 downto 0);
  signal teu_iunit_register_file_to_loadstore_pipe_read_req: std_logic_vector(0 downto 0);
  signal teu_iunit_register_file_to_loadstore_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe teu_iunit_trap_to_loadstore
  signal teu_iunit_trap_to_loadstore_pipe_read_data: std_logic_vector(0 downto 0);
  signal teu_iunit_trap_to_loadstore_pipe_read_req: std_logic_vector(0 downto 0);
  signal teu_iunit_trap_to_loadstore_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe teu_loadstore_to_fpunit
  signal teu_loadstore_to_fpunit_pipe_write_data: std_logic_vector(77 downto 0);
  signal teu_loadstore_to_fpunit_pipe_write_req: std_logic_vector(0 downto 0);
  signal teu_loadstore_to_fpunit_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe teu_loadstore_to_iretire
  signal teu_loadstore_to_iretire_pipe_write_data: std_logic_vector(53 downto 0);
  signal teu_loadstore_to_iretire_pipe_write_req: std_logic_vector(0 downto 0);
  signal teu_loadstore_to_iretire_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe teu_loadstore_to_iunit
  signal teu_loadstore_to_iunit_pipe_write_data: std_logic_vector(77 downto 0);
  signal teu_loadstore_to_iunit_pipe_write_req: std_logic_vector(0 downto 0);
  signal teu_loadstore_to_iunit_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe teu_stream_corrector_to_loadstore
  signal teu_stream_corrector_to_loadstore_pipe_read_data: std_logic_vector(18 downto 0);
  signal teu_stream_corrector_to_loadstore_pipe_read_req: std_logic_vector(0 downto 0);
  signal teu_stream_corrector_to_loadstore_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe teu_to_ccu_load_store_response
  signal teu_to_ccu_load_store_response_pipe_write_data: std_logic_vector(32 downto 0);
  signal teu_to_ccu_load_store_response_pipe_write_req: std_logic_vector(0 downto 0);
  signal teu_to_ccu_load_store_response_pipe_write_ack: std_logic_vector(0 downto 0);
  -- gated clock signal declarations.
  -- 
begin -- 
  -- module ccu_service_daemon
  ccu_service_daemon_instance:ccu_service_daemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => ccu_service_daemon_start_req,
      start_ack => ccu_service_daemon_start_ack,
      fin_req => ccu_service_daemon_fin_req,
      fin_ack => ccu_service_daemon_fin_ack,
      clk => clk,
      reset => reset,
      ccu_to_teu_load_store_command_pipe_read_req => ccu_to_teu_load_store_command_pipe_read_req(0 downto 0),
      ccu_to_teu_load_store_command_pipe_read_ack => ccu_to_teu_load_store_command_pipe_read_ack(0 downto 0),
      ccu_to_teu_load_store_command_pipe_read_data => ccu_to_teu_load_store_command_pipe_read_data(72 downto 0),
      teu_to_ccu_load_store_response_pipe_write_req => teu_to_ccu_load_store_response_pipe_write_req(0 downto 0),
      teu_to_ccu_load_store_response_pipe_write_ack => teu_to_ccu_load_store_response_pipe_write_ack(0 downto 0),
      teu_to_ccu_load_store_response_pipe_write_data => teu_to_ccu_load_store_response_pipe_write_data(32 downto 0),
      dcache_access_call_reqs => dcache_access_call_reqs(1 downto 1),
      dcache_access_call_acks => dcache_access_call_acks(1 downto 1),
      dcache_access_call_data => dcache_access_call_data(239 downto 120),
      dcache_access_call_tag => dcache_access_call_tag(3 downto 2),
      dcache_access_return_reqs => dcache_access_return_reqs(1 downto 1),
      dcache_access_return_acks => dcache_access_return_acks(1 downto 1),
      dcache_access_return_data => dcache_access_return_data(143 downto 72),
      dcache_access_return_tag => dcache_access_return_tag(3 downto 2),
      tag_in => ccu_service_daemon_tag_in,
      tag_out => ccu_service_daemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  ccu_service_daemon_tag_in <= (others => '0');
  ccu_service_daemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => ccu_service_daemon_start_req, start_ack => ccu_service_daemon_start_ack,  fin_req => ccu_service_daemon_fin_req,  fin_ack => ccu_service_daemon_fin_ack);
  -- module dcache_access
  dcache_access_req_type <= dcache_access_in_args(119 downto 112);
  dcache_access_asi <= dcache_access_in_args(111 downto 104);
  dcache_access_byte_mask <= dcache_access_in_args(103 downto 96);
  dcache_access_addr <= dcache_access_in_args(95 downto 64);
  dcache_access_write_data <= dcache_access_in_args(63 downto 0);
  dcache_access_out_args <= dcache_access_dcache_read_response ;
  -- call arbiter for module dcache_access
  dcache_access_arbiter: SplitCallArbiter -- 
    generic map( --
      name => "SplitCallArbiter", num_reqs => 2,
      call_data_width => 120,
      return_data_width => 72,
      callee_tag_length => 2,
      caller_tag_length => 2--
    )
    port map(-- 
      call_reqs => dcache_access_call_reqs,
      call_acks => dcache_access_call_acks,
      return_reqs => dcache_access_return_reqs,
      return_acks => dcache_access_return_acks,
      call_data  => dcache_access_call_data,
      call_tag  => dcache_access_call_tag,
      return_tag  => dcache_access_return_tag,
      call_mtag => dcache_access_tag_in,
      return_mtag => dcache_access_tag_out,
      return_data =>dcache_access_return_data,
      call_mreq => dcache_access_start_req,
      call_mack => dcache_access_start_ack,
      return_mreq => dcache_access_fin_req,
      return_mack => dcache_access_fin_ack,
      call_mdata => dcache_access_in_args,
      return_mdata => dcache_access_out_args,
      clk => clk, 
      reset => reset --
    ); --
  dcache_access_instance:dcache_access-- 
    generic map(tag_length => 4)
    port map(-- 
      req_type => dcache_access_req_type,
      asi => dcache_access_asi,
      byte_mask => dcache_access_byte_mask,
      addr => dcache_access_addr,
      write_data => dcache_access_write_data,
      dcache_read_response => dcache_access_dcache_read_response,
      start_req => dcache_access_start_req,
      start_ack => dcache_access_start_ack,
      fin_req => dcache_access_fin_req,
      fin_ack => dcache_access_fin_ack,
      clk => clk,
      reset => reset,
      DCACHE_to_CPU_slow_response_pipe_read_req => DCACHE_to_CPU_slow_response_pipe_read_req(0 downto 0),
      DCACHE_to_CPU_slow_response_pipe_read_ack => DCACHE_to_CPU_slow_response_pipe_read_ack(0 downto 0),
      DCACHE_to_CPU_slow_response_pipe_read_data => DCACHE_to_CPU_slow_response_pipe_read_data(71 downto 0),
      NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_req => NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_req(0 downto 0),
      NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_ack => NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_ack(0 downto 0),
      NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_data => NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_data(120 downto 0),
      tag_in => dcache_access_tag_in,
      tag_out => dcache_access_tag_out-- 
    ); -- 
  -- module execute_messy_dti
  execute_messy_dti_cpu_id_2 <= execute_messy_dti_in_args(163 downto 162);
  execute_messy_dti_run_dti <= execute_messy_dti_in_args(161 downto 161);
  execute_messy_dti_untrap_cache <= execute_messy_dti_in_args(160 downto 160);
  execute_messy_dti_update_mmu_fsr <= execute_messy_dti_in_args(159 downto 159);
  execute_messy_dti_addr <= execute_messy_dti_in_args(158 downto 127);
  execute_messy_dti_din_h <= execute_messy_dti_in_args(126 downto 95);
  execute_messy_dti_din_l <= execute_messy_dti_in_args(94 downto 63);
  execute_messy_dti_pc <= execute_messy_dti_in_args(62 downto 31);
  execute_messy_dti_mmu_fsr <= execute_messy_dti_in_args(30 downto 13);
  execute_messy_dti_is_swap <= execute_messy_dti_in_args(12 downto 12);
  execute_messy_dti_is_atomic_ld_st <= execute_messy_dti_in_args(11 downto 11);
  execute_messy_dti_signed_type <= execute_messy_dti_in_args(10 downto 10);
  execute_messy_dti_use_asi <= execute_messy_dti_in_args(9 downto 9);
  execute_messy_dti_asi <= execute_messy_dti_in_args(8 downto 1);
  execute_messy_dti_S <= execute_messy_dti_in_args(0 downto 0);
  execute_messy_dti_out_args <= execute_messy_dti_dout_h & execute_messy_dti_dout_l & execute_messy_dti_data_access_exception & execute_messy_dti_data_access_error & execute_messy_dti_store_signature ;
  -- call arbiter for module execute_messy_dti
  execute_messy_dti_arbiter: SplitCallArbiter -- 
    generic map( --
      name => "SplitCallArbiter", num_reqs => 1,
      call_data_width => 164,
      return_data_width => 98,
      callee_tag_length => 1,
      caller_tag_length => 1--
    )
    port map(-- 
      call_reqs => execute_messy_dti_call_reqs,
      call_acks => execute_messy_dti_call_acks,
      return_reqs => execute_messy_dti_return_reqs,
      return_acks => execute_messy_dti_return_acks,
      call_data  => execute_messy_dti_call_data,
      call_tag  => execute_messy_dti_call_tag,
      return_tag  => execute_messy_dti_return_tag,
      call_mtag => execute_messy_dti_tag_in,
      return_mtag => execute_messy_dti_tag_out,
      return_data =>execute_messy_dti_return_data,
      call_mreq => execute_messy_dti_start_req,
      call_mack => execute_messy_dti_start_ack,
      return_mreq => execute_messy_dti_fin_req,
      return_mack => execute_messy_dti_fin_ack,
      call_mdata => execute_messy_dti_in_args,
      return_mdata => execute_messy_dti_out_args,
      clk => clk, 
      reset => reset --
    ); --
  execute_messy_dti_instance:execute_messy_dti-- 
    generic map(tag_length => 2)
    port map(-- 
      cpu_id_2 => execute_messy_dti_cpu_id_2,
      run_dti => execute_messy_dti_run_dti,
      untrap_cache => execute_messy_dti_untrap_cache,
      update_mmu_fsr => execute_messy_dti_update_mmu_fsr,
      addr => execute_messy_dti_addr,
      din_h => execute_messy_dti_din_h,
      din_l => execute_messy_dti_din_l,
      pc => execute_messy_dti_pc,
      mmu_fsr => execute_messy_dti_mmu_fsr,
      is_swap => execute_messy_dti_is_swap,
      is_atomic_ld_st => execute_messy_dti_is_atomic_ld_st,
      signed_type => execute_messy_dti_signed_type,
      use_asi => execute_messy_dti_use_asi,
      asi => execute_messy_dti_asi,
      S => execute_messy_dti_S,
      dout_h => execute_messy_dti_dout_h,
      dout_l => execute_messy_dti_dout_l,
      data_access_exception => execute_messy_dti_data_access_exception,
      data_access_error => execute_messy_dti_data_access_error,
      store_signature => execute_messy_dti_store_signature,
      start_req => execute_messy_dti_start_req,
      start_ack => execute_messy_dti_start_ack,
      fin_req => execute_messy_dti_fin_req,
      fin_ack => execute_messy_dti_fin_ack,
      clk => clk,
      reset => reset,
      BROADCAST_INIT_PC => BROADCAST_INIT_PC,
      messy_operation_completed_pipe_write_req => messy_operation_completed_pipe_write_req(0 downto 0),
      messy_operation_completed_pipe_write_ack => messy_operation_completed_pipe_write_ack(0 downto 0),
      messy_operation_completed_pipe_write_data => messy_operation_completed_pipe_write_data(0 downto 0),
      dcache_access_call_reqs => dcache_access_call_reqs(0 downto 0),
      dcache_access_call_acks => dcache_access_call_acks(0 downto 0),
      dcache_access_call_data => dcache_access_call_data(119 downto 0),
      dcache_access_call_tag => dcache_access_call_tag(1 downto 0),
      dcache_access_return_reqs => dcache_access_return_reqs(0 downto 0),
      dcache_access_return_acks => dcache_access_return_acks(0 downto 0),
      dcache_access_return_data => dcache_access_return_data(71 downto 0),
      dcache_access_return_tag => dcache_access_return_tag(1 downto 0),
      tag_in => execute_messy_dti_tag_in,
      tag_out => execute_messy_dti_tag_out-- 
    ); -- 
  -- module load_store_daemon
  load_store_daemon_instance:load_store_daemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => load_store_daemon_start_req,
      start_ack => load_store_daemon_start_ack,
      fin_req => load_store_daemon_fin_req,
      fin_ack => load_store_daemon_fin_ack,
      clk => clk,
      reset => reset,
      THREAD_ID => THREAD_ID,
      debug_wp_0 => debug_wp_0,
      debug_wp_1 => debug_wp_1,
      debug_wp_2 => debug_wp_2,
      debug_wp_3 => debug_wp_3,
      messy_operation_completed_pipe_read_req => messy_operation_completed_pipe_read_req(0 downto 0),
      messy_operation_completed_pipe_read_ack => messy_operation_completed_pipe_read_ack(0 downto 0),
      messy_operation_completed_pipe_read_data => messy_operation_completed_pipe_read_data(0 downto 0),
      noblock_teu_idispatch_to_loadstore_pipe_read_req => noblock_teu_idispatch_to_loadstore_pipe_read_req(0 downto 0),
      noblock_teu_idispatch_to_loadstore_pipe_read_ack => noblock_teu_idispatch_to_loadstore_pipe_read_ack(0 downto 0),
      noblock_teu_idispatch_to_loadstore_pipe_read_data => noblock_teu_idispatch_to_loadstore_pipe_read_data(125 downto 0),
      teu_fpunit_register_file_to_loadstore_pipe_read_req => teu_fpunit_register_file_to_loadstore_pipe_read_req(0 downto 0),
      teu_fpunit_register_file_to_loadstore_pipe_read_ack => teu_fpunit_register_file_to_loadstore_pipe_read_ack(0 downto 0),
      teu_fpunit_register_file_to_loadstore_pipe_read_data => teu_fpunit_register_file_to_loadstore_pipe_read_data(76 downto 0),
      teu_fpunit_trap_to_loadstore_pipe_read_req => teu_fpunit_trap_to_loadstore_pipe_read_req(0 downto 0),
      teu_fpunit_trap_to_loadstore_pipe_read_ack => teu_fpunit_trap_to_loadstore_pipe_read_ack(0 downto 0),
      teu_fpunit_trap_to_loadstore_pipe_read_data => teu_fpunit_trap_to_loadstore_pipe_read_data(12 downto 0),
      teu_iunit_register_file_to_loadstore_pipe_read_req => teu_iunit_register_file_to_loadstore_pipe_read_req(0 downto 0),
      teu_iunit_register_file_to_loadstore_pipe_read_ack => teu_iunit_register_file_to_loadstore_pipe_read_ack(0 downto 0),
      teu_iunit_register_file_to_loadstore_pipe_read_data => teu_iunit_register_file_to_loadstore_pipe_read_data(141 downto 0),
      teu_iunit_trap_to_loadstore_pipe_read_req => teu_iunit_trap_to_loadstore_pipe_read_req(0 downto 0),
      teu_iunit_trap_to_loadstore_pipe_read_ack => teu_iunit_trap_to_loadstore_pipe_read_ack(0 downto 0),
      teu_iunit_trap_to_loadstore_pipe_read_data => teu_iunit_trap_to_loadstore_pipe_read_data(0 downto 0),
      teu_stream_corrector_to_loadstore_pipe_read_req => teu_stream_corrector_to_loadstore_pipe_read_req(0 downto 0),
      teu_stream_corrector_to_loadstore_pipe_read_ack => teu_stream_corrector_to_loadstore_pipe_read_ack(0 downto 0),
      teu_stream_corrector_to_loadstore_pipe_read_data => teu_stream_corrector_to_loadstore_pipe_read_data(18 downto 0),
      NOBLOCK_CPU_to_DCACHE_command_pipe_write_req => NOBLOCK_CPU_to_DCACHE_command_pipe_write_req(0 downto 0),
      NOBLOCK_CPU_to_DCACHE_command_pipe_write_ack => NOBLOCK_CPU_to_DCACHE_command_pipe_write_ack(0 downto 0),
      NOBLOCK_CPU_to_DCACHE_command_pipe_write_data => NOBLOCK_CPU_to_DCACHE_command_pipe_write_data(142 downto 0),
      load_store_messy_to_router_pipe_pipe_write_req => load_store_messy_to_router_pipe_pipe_write_req(0 downto 0),
      load_store_messy_to_router_pipe_pipe_write_ack => load_store_messy_to_router_pipe_pipe_write_ack(0 downto 0),
      load_store_messy_to_router_pipe_pipe_write_data => load_store_messy_to_router_pipe_pipe_write_data(97 downto 0),
      load_store_router_control_pipe_pipe_write_req => load_store_router_control_pipe_pipe_write_req(0 downto 0),
      load_store_router_control_pipe_pipe_write_ack => load_store_router_control_pipe_pipe_write_ack(0 downto 0),
      load_store_router_control_pipe_pipe_write_data => load_store_router_control_pipe_pipe_write_data(96 downto 0),
      noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_req => noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_req(0 downto 0),
      noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_ack => noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_ack(0 downto 0),
      noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_data => noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_data(0 downto 0),
      noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_req => noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_req(0 downto 0),
      noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_ack => noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_ack(0 downto 0),
      noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_data => noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_data(0 downto 0),
      execute_messy_dti_call_reqs => execute_messy_dti_call_reqs(0 downto 0),
      execute_messy_dti_call_acks => execute_messy_dti_call_acks(0 downto 0),
      execute_messy_dti_call_data => execute_messy_dti_call_data(163 downto 0),
      execute_messy_dti_call_tag => execute_messy_dti_call_tag(0 downto 0),
      execute_messy_dti_return_reqs => execute_messy_dti_return_reqs(0 downto 0),
      execute_messy_dti_return_acks => execute_messy_dti_return_acks(0 downto 0),
      execute_messy_dti_return_data => execute_messy_dti_return_data(97 downto 0),
      execute_messy_dti_return_tag => execute_messy_dti_return_tag(0 downto 0),
      tag_in => load_store_daemon_tag_in,
      tag_out => load_store_daemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  load_store_daemon_tag_in <= (others => '0');
  load_store_daemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => load_store_daemon_start_req, start_ack => load_store_daemon_start_ack,  fin_req => load_store_daemon_fin_req,  fin_ack => load_store_daemon_fin_ack);
  -- module load_store_router_daemon
  load_store_router_daemon_instance:load_store_router_daemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => load_store_router_daemon_start_req,
      start_ack => load_store_router_daemon_start_ack,
      fin_req => load_store_router_daemon_fin_req,
      fin_ack => load_store_router_daemon_fin_ack,
      clk => clk,
      reset => reset,
      DCACHE_to_CPU_response_pipe_read_req => DCACHE_to_CPU_response_pipe_read_req(0 downto 0),
      DCACHE_to_CPU_response_pipe_read_ack => DCACHE_to_CPU_response_pipe_read_ack(0 downto 0),
      DCACHE_to_CPU_response_pipe_read_data => DCACHE_to_CPU_response_pipe_read_data(71 downto 0),
      load_store_messy_to_router_pipe_pipe_read_req => load_store_messy_to_router_pipe_pipe_read_req(0 downto 0),
      load_store_messy_to_router_pipe_pipe_read_ack => load_store_messy_to_router_pipe_pipe_read_ack(0 downto 0),
      load_store_messy_to_router_pipe_pipe_read_data => load_store_messy_to_router_pipe_pipe_read_data(97 downto 0),
      load_store_router_control_pipe_pipe_read_req => load_store_router_control_pipe_pipe_read_req(0 downto 0),
      load_store_router_control_pipe_pipe_read_ack => load_store_router_control_pipe_pipe_read_ack(0 downto 0),
      load_store_router_control_pipe_pipe_read_data => load_store_router_control_pipe_pipe_read_data(96 downto 0),
      teu_loadstore_to_fpunit_pipe_write_req => teu_loadstore_to_fpunit_pipe_write_req(0 downto 0),
      teu_loadstore_to_fpunit_pipe_write_ack => teu_loadstore_to_fpunit_pipe_write_ack(0 downto 0),
      teu_loadstore_to_fpunit_pipe_write_data => teu_loadstore_to_fpunit_pipe_write_data(77 downto 0),
      teu_loadstore_to_iretire_pipe_write_req => teu_loadstore_to_iretire_pipe_write_req(0 downto 0),
      teu_loadstore_to_iretire_pipe_write_ack => teu_loadstore_to_iretire_pipe_write_ack(0 downto 0),
      teu_loadstore_to_iretire_pipe_write_data => teu_loadstore_to_iretire_pipe_write_data(53 downto 0),
      teu_loadstore_to_iunit_pipe_write_req => teu_loadstore_to_iunit_pipe_write_req(0 downto 0),
      teu_loadstore_to_iunit_pipe_write_ack => teu_loadstore_to_iunit_pipe_write_ack(0 downto 0),
      teu_loadstore_to_iunit_pipe_write_data => teu_loadstore_to_iunit_pipe_write_data(77 downto 0),
      tag_in => load_store_router_daemon_tag_in,
      tag_out => load_store_router_daemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  load_store_router_daemon_tag_in <= (others => '0');
  load_store_router_daemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => load_store_router_daemon_start_req, start_ack => load_store_router_daemon_start_ack,  fin_req => load_store_router_daemon_fin_req,  fin_ack => load_store_router_daemon_fin_ack);
  -- input signal-pipe BROADCAST_INIT_PC accessed directly. 
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
  -- input signal-pipe THREAD_ID accessed directly. 
  ccu_to_teu_load_store_command_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe ccu_to_teu_load_store_command",
      num_reads => 1,
      num_writes => 1,
      data_width => 73,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => ccu_to_teu_load_store_command_pipe_read_req,
      read_ack => ccu_to_teu_load_store_command_pipe_read_ack,
      read_data => ccu_to_teu_load_store_command_pipe_read_data,
      write_req => ccu_to_teu_load_store_command_pipe_write_req,
      write_ack => ccu_to_teu_load_store_command_pipe_write_ack,
      write_data => ccu_to_teu_load_store_command_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- input signal-pipe debug_wp_0 accessed directly. 
  -- input signal-pipe debug_wp_1 accessed directly. 
  -- input signal-pipe debug_wp_2 accessed directly. 
  -- input signal-pipe debug_wp_3 accessed directly. 
  load_store_messy_to_router_pipe_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe load_store_messy_to_router_pipe",
      num_reads => 1,
      num_writes => 1,
      data_width => 98,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => load_store_messy_to_router_pipe_pipe_read_req,
      read_ack => load_store_messy_to_router_pipe_pipe_read_ack,
      read_data => load_store_messy_to_router_pipe_pipe_read_data,
      write_req => load_store_messy_to_router_pipe_pipe_write_req,
      write_ack => load_store_messy_to_router_pipe_pipe_write_ack,
      write_data => load_store_messy_to_router_pipe_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  load_store_router_control_pipe_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe load_store_router_control_pipe",
      num_reads => 1,
      num_writes => 1,
      data_width => 97,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => load_store_router_control_pipe_pipe_read_req,
      read_ack => load_store_router_control_pipe_pipe_read_ack,
      read_data => load_store_router_control_pipe_pipe_read_data,
      write_req => load_store_router_control_pipe_pipe_write_req,
      write_ack => load_store_router_control_pipe_pipe_write_ack,
      write_data => load_store_router_control_pipe_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  messy_operation_completed_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe messy_operation_completed",
      num_reads => 1,
      num_writes => 1,
      data_width => 1,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 1 --
    )
    port map( -- 
      read_req => messy_operation_completed_pipe_read_req,
      read_ack => messy_operation_completed_pipe_read_ack,
      read_data => messy_operation_completed_pipe_read_data,
      write_req => messy_operation_completed_pipe_write_req,
      write_ack => messy_operation_completed_pipe_write_ack,
      write_data => messy_operation_completed_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  noblock_teu_idispatch_to_loadstore_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe noblock_teu_idispatch_to_loadstore",
      num_reads => 1,
      num_writes => 1,
      data_width => 126,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => noblock_teu_idispatch_to_loadstore_pipe_read_req,
      read_ack => noblock_teu_idispatch_to_loadstore_pipe_read_ack,
      read_data => noblock_teu_idispatch_to_loadstore_pipe_read_data,
      write_req => noblock_teu_idispatch_to_loadstore_pipe_write_req,
      write_ack => noblock_teu_idispatch_to_loadstore_pipe_write_ack,
      write_data => noblock_teu_idispatch_to_loadstore_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  noblock_teu_loadstore_to_fpunit_regfile_credit_return_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe noblock_teu_loadstore_to_fpunit_regfile_credit_return",
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
      read_req => noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_req,
      read_ack => noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_ack,
      read_data => noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_read_data,
      write_req => noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_req,
      write_ack => noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_ack,
      write_data => noblock_teu_loadstore_to_fpunit_regfile_credit_return_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  noblock_teu_loadstore_to_iunit_regfile_credit_return_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe noblock_teu_loadstore_to_iunit_regfile_credit_return",
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
      read_req => noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_req,
      read_ack => noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_ack,
      read_data => noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_data,
      write_req => noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_req,
      write_ack => noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_ack,
      write_data => noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  teu_fpunit_register_file_to_loadstore_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe teu_fpunit_register_file_to_loadstore",
      num_reads => 1,
      num_writes => 1,
      data_width => 77,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_fpunit_register_file_to_loadstore_pipe_read_req,
      read_ack => teu_fpunit_register_file_to_loadstore_pipe_read_ack,
      read_data => teu_fpunit_register_file_to_loadstore_pipe_read_data,
      write_req => teu_fpunit_register_file_to_loadstore_pipe_write_req,
      write_ack => teu_fpunit_register_file_to_loadstore_pipe_write_ack,
      write_data => teu_fpunit_register_file_to_loadstore_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  teu_fpunit_trap_to_loadstore_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe teu_fpunit_trap_to_loadstore",
      num_reads => 1,
      num_writes => 1,
      data_width => 13,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_fpunit_trap_to_loadstore_pipe_read_req,
      read_ack => teu_fpunit_trap_to_loadstore_pipe_read_ack,
      read_data => teu_fpunit_trap_to_loadstore_pipe_read_data,
      write_req => teu_fpunit_trap_to_loadstore_pipe_write_req,
      write_ack => teu_fpunit_trap_to_loadstore_pipe_write_ack,
      write_data => teu_fpunit_trap_to_loadstore_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  teu_iunit_register_file_to_loadstore_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe teu_iunit_register_file_to_loadstore",
      num_reads => 1,
      num_writes => 1,
      data_width => 142,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_iunit_register_file_to_loadstore_pipe_read_req,
      read_ack => teu_iunit_register_file_to_loadstore_pipe_read_ack,
      read_data => teu_iunit_register_file_to_loadstore_pipe_read_data,
      write_req => teu_iunit_register_file_to_loadstore_pipe_write_req,
      write_ack => teu_iunit_register_file_to_loadstore_pipe_write_ack,
      write_data => teu_iunit_register_file_to_loadstore_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  teu_iunit_trap_to_loadstore_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe teu_iunit_trap_to_loadstore",
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
      read_req => teu_iunit_trap_to_loadstore_pipe_read_req,
      read_ack => teu_iunit_trap_to_loadstore_pipe_read_ack,
      read_data => teu_iunit_trap_to_loadstore_pipe_read_data,
      write_req => teu_iunit_trap_to_loadstore_pipe_write_req,
      write_ack => teu_iunit_trap_to_loadstore_pipe_write_ack,
      write_data => teu_iunit_trap_to_loadstore_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  teu_loadstore_to_fpunit_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe teu_loadstore_to_fpunit",
      num_reads => 1,
      num_writes => 1,
      data_width => 78,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_loadstore_to_fpunit_pipe_read_req,
      read_ack => teu_loadstore_to_fpunit_pipe_read_ack,
      read_data => teu_loadstore_to_fpunit_pipe_read_data,
      write_req => teu_loadstore_to_fpunit_pipe_write_req,
      write_ack => teu_loadstore_to_fpunit_pipe_write_ack,
      write_data => teu_loadstore_to_fpunit_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  teu_loadstore_to_iretire_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe teu_loadstore_to_iretire",
      num_reads => 1,
      num_writes => 1,
      data_width => 54,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_loadstore_to_iretire_pipe_read_req,
      read_ack => teu_loadstore_to_iretire_pipe_read_ack,
      read_data => teu_loadstore_to_iretire_pipe_read_data,
      write_req => teu_loadstore_to_iretire_pipe_write_req,
      write_ack => teu_loadstore_to_iretire_pipe_write_ack,
      write_data => teu_loadstore_to_iretire_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  teu_loadstore_to_iunit_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe teu_loadstore_to_iunit",
      num_reads => 1,
      num_writes => 1,
      data_width => 78,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => true,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_loadstore_to_iunit_pipe_read_req,
      read_ack => teu_loadstore_to_iunit_pipe_read_ack,
      read_data => teu_loadstore_to_iunit_pipe_read_data,
      write_req => teu_loadstore_to_iunit_pipe_write_req,
      write_ack => teu_loadstore_to_iunit_pipe_write_ack,
      write_data => teu_loadstore_to_iunit_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  teu_stream_corrector_to_loadstore_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe teu_stream_corrector_to_loadstore",
      num_reads => 1,
      num_writes => 1,
      data_width => 19,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => true,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_stream_corrector_to_loadstore_pipe_read_req,
      read_ack => teu_stream_corrector_to_loadstore_pipe_read_ack,
      read_data => teu_stream_corrector_to_loadstore_pipe_read_data,
      write_req => teu_stream_corrector_to_loadstore_pipe_write_req,
      write_ack => teu_stream_corrector_to_loadstore_pipe_write_ack,
      write_data => teu_stream_corrector_to_loadstore_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  teu_to_ccu_load_store_response_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe teu_to_ccu_load_store_response",
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
      read_req => teu_to_ccu_load_store_response_pipe_read_req,
      read_ack => teu_to_ccu_load_store_response_pipe_read_ack,
      read_data => teu_to_ccu_load_store_response_pipe_read_data,
      write_req => teu_to_ccu_load_store_response_pipe_write_req,
      write_ack => teu_to_ccu_load_store_response_pipe_write_ack,
      write_data => teu_to_ccu_load_store_response_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- gated clock generators 
  -- 
end loadstore_arch;
