-- VHDL global package produced by vc2vhdl from virtual circuit (vc) description 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
package stream_corrector_global_package is -- 
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
  constant IN_LIVE_STREAM_ANNULLED : std_logic_vector(2 downto 0) := "001";
  constant IN_LIVE_STREAM_NOT_ANNULLED : std_logic_vector(2 downto 0) := "000";
  constant KILL_STREAM_MASK : std_logic_vector(7 downto 0) := "10000000";
  constant KILL_THREAD_MASK : std_logic_vector(7 downto 0) := "10000000";
  constant LIVE_STREAM : std_logic_vector(1 downto 0) := "00";
  constant LOGGER_ACTIVE_MASK : std_logic_vector(7 downto 0) := "00001000";
  constant MACHINE_ERROR : std_logic_vector(7 downto 0) := "00000011";
  constant MAE_TRAP_BIT_VEC : std_logic_vector(31 downto 0) := "00000000000000000000000000000100";
  constant MAE_TRAP_INDEX : std_logic_vector(31 downto 0) := "00000000000000000000000000000010";
  constant MEM_ADDRESS_NOT_ALIGNED_TRAP_BIT_VEC : std_logic_vector(31 downto 0) := "00000000000000100000000000000000";
  constant MEM_ADDRESS_NOT_ALIGNED_TRAP_INDEX : std_logic_vector(31 downto 0) := "00000000000000000000000000010000";
  constant MISC_INSTR : std_logic_vector(2 downto 0) := "100";
  constant MISPREDICTED_STREAM : std_logic_vector(1 downto 0) := "01";
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
  constant SC_NORMAL : std_logic_vector(1 downto 0) := "00";
  constant SC_STREAM_DEAD : std_logic_vector(1 downto 0) := "01";
  constant SC_THREAD_DEAD : std_logic_vector(1 downto 0) := "10";
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
  constant TRAPPED_STREAM : std_logic_vector(1 downto 0) := "10";
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
  component stream_corrector is -- 
    port (-- 
      clk : in std_logic;
      reset : in std_logic;
      ccu_to_teu_debug_command_pipe_write_data: in std_logic_vector(7 downto 0);
      ccu_to_teu_debug_command_pipe_write_req : in std_logic_vector(0 downto 0);
      ccu_to_teu_debug_command_pipe_write_ack : out std_logic_vector(0 downto 0);
      debug_bp_0: out std_logic_vector(31 downto 0);
      debug_bp_1: out std_logic_vector(31 downto 0);
      debug_bp_2: out std_logic_vector(31 downto 0);
      debug_bp_3: out std_logic_vector(31 downto 0);
      debug_dbg_interrupt: out std_logic_vector(0 downto 0);
      debug_wp_0: out std_logic_vector(31 downto 0);
      debug_wp_1: out std_logic_vector(31 downto 0);
      debug_wp_2: out std_logic_vector(31 downto 0);
      debug_wp_3: out std_logic_vector(31 downto 0);
      noblock_teu_ifetch_branch_predictor_update_pipe_read_data: out std_logic_vector(62 downto 0);
      noblock_teu_ifetch_branch_predictor_update_pipe_read_req : in std_logic_vector(0 downto 0);
      noblock_teu_ifetch_branch_predictor_update_pipe_read_ack : out std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_data: out std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_req : in std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_ack : out std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_idispatch_pipe_read_data: out std_logic_vector(147 downto 0);
      noblock_teu_stream_corrector_to_idispatch_pipe_read_req : in std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_idispatch_pipe_read_ack : out std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_iretire_pipe_read_data: out std_logic_vector(153 downto 0);
      noblock_teu_stream_corrector_to_iretire_pipe_read_req : in std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_iretire_pipe_read_ack : out std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_data: out std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_req : in std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_ack : out std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_data: out std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_req : in std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_ack : out std_logic_vector(0 downto 0);
      teu_debug_to_ccu_response_pipe_read_data: out std_logic_vector(0 downto 0);
      teu_debug_to_ccu_response_pipe_read_req : in std_logic_vector(0 downto 0);
      teu_debug_to_ccu_response_pipe_read_ack : out std_logic_vector(0 downto 0);
      teu_fpunit_cc_to_stream_corrector_pipe_write_data: in std_logic_vector(14 downto 0);
      teu_fpunit_cc_to_stream_corrector_pipe_write_req : in std_logic_vector(0 downto 0);
      teu_fpunit_cc_to_stream_corrector_pipe_write_ack : out std_logic_vector(0 downto 0);
      teu_idispatch_to_stream_corrector_pipe_write_data: in std_logic_vector(204 downto 0);
      teu_idispatch_to_stream_corrector_pipe_write_req : in std_logic_vector(0 downto 0);
      teu_idispatch_to_stream_corrector_pipe_write_ack : out std_logic_vector(0 downto 0);
      teu_iunit_cc_to_stream_corrector_pipe_write_data: in std_logic_vector(16 downto 0);
      teu_iunit_cc_to_stream_corrector_pipe_write_req : in std_logic_vector(0 downto 0);
      teu_iunit_cc_to_stream_corrector_pipe_write_ack : out std_logic_vector(0 downto 0);
      teu_iunit_rs1_to_stream_corrector_pipe_write_data: in std_logic_vector(31 downto 0);
      teu_iunit_rs1_to_stream_corrector_pipe_write_req : in std_logic_vector(0 downto 0);
      teu_iunit_rs1_to_stream_corrector_pipe_write_ack : out std_logic_vector(0 downto 0);
      teu_iunit_to_stream_corrector_pipe_write_data: in std_logic_vector(89 downto 0);
      teu_iunit_to_stream_corrector_pipe_write_req : in std_logic_vector(0 downto 0);
      teu_iunit_to_stream_corrector_pipe_write_ack : out std_logic_vector(0 downto 0);
      teu_ras_access_pipe_pipe_read_data: out std_logic_vector(32 downto 0);
      teu_ras_access_pipe_pipe_read_req : in std_logic_vector(0 downto 0);
      teu_ras_access_pipe_pipe_read_ack : out std_logic_vector(0 downto 0);
      teu_stream_corrector_annul_status: out std_logic_vector(15 downto 0);
      teu_stream_corrector_to_fpunit_pipe_read_data: out std_logic_vector(17 downto 0);
      teu_stream_corrector_to_fpunit_pipe_read_req : in std_logic_vector(0 downto 0);
      teu_stream_corrector_to_fpunit_pipe_read_ack : out std_logic_vector(0 downto 0);
      teu_stream_corrector_to_iunit_pipe_read_data: out std_logic_vector(17 downto 0);
      teu_stream_corrector_to_iunit_pipe_read_req : in std_logic_vector(0 downto 0);
      teu_stream_corrector_to_iunit_pipe_read_ack : out std_logic_vector(0 downto 0);
      teu_stream_corrector_to_loadstore_pipe_read_data: out std_logic_vector(18 downto 0);
      teu_stream_corrector_to_loadstore_pipe_read_req : in std_logic_vector(0 downto 0);
      teu_stream_corrector_to_loadstore_pipe_read_ack : out std_logic_vector(0 downto 0)); -- 
    -- 
  end component;
  -- 
end package stream_corrector_global_package;
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
library teu_stream_corrector;
use teu_stream_corrector.stream_corrector_global_package.all;
entity calculate_ifetch_related_stuff_Volatile is -- 
  port ( -- 
    valid_from_sc : in  std_logic_vector(0 downto 0);
    npc_mispredict : in  std_logic_vector(0 downto 0);
    nnpc_mispredict : in  std_logic_vector(0 downto 0);
    last_nnpc_mispredict : in  std_logic_vector(0 downto 0);
    flush_like_instruction : in  std_logic_vector(0 downto 0);
    thread_id : in  std_logic_vector(3 downto 0);
    stream_id : in  std_logic_vector(1 downto 0);
    slot_id : in  std_logic_vector(5 downto 0);
    sc_instr_class : in  std_logic_vector(2 downto 0);
    last_pc : in  std_logic_vector(31 downto 0);
    pc : in  std_logic_vector(31 downto 0);
    corrected_npc : in  std_logic_vector(31 downto 0);
    nnpc : in  std_logic_vector(31 downto 0);
    psr_val : in  std_logic_vector(31 downto 0);
    is_cti : in  std_logic_vector(0 downto 0);
    last_was_cti : in  std_logic_vector(0 downto 0);
    annul_next : in  std_logic_vector(0 downto 0);
    annul_instr : in  std_logic_vector(0 downto 0);
    write_psr : in  std_logic_vector(0 downto 0);
    is_flush : in  std_logic_vector(0 downto 0);
    send_to_ifetch : out  std_logic_vector(0 downto 0);
    to_ifetch : out  std_logic_vector(147 downto 0);
    ask_iretire_to_signal_idispatch : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity calculate_ifetch_related_stuff_Volatile;
architecture calculate_ifetch_related_stuff_Volatile_arch of calculate_ifetch_related_stuff_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(186-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal valid_from_sc_buffer :  std_logic_vector(0 downto 0);
  signal npc_mispredict_buffer :  std_logic_vector(0 downto 0);
  signal nnpc_mispredict_buffer :  std_logic_vector(0 downto 0);
  signal last_nnpc_mispredict_buffer :  std_logic_vector(0 downto 0);
  signal flush_like_instruction_buffer :  std_logic_vector(0 downto 0);
  signal thread_id_buffer :  std_logic_vector(3 downto 0);
  signal stream_id_buffer :  std_logic_vector(1 downto 0);
  signal slot_id_buffer :  std_logic_vector(5 downto 0);
  signal sc_instr_class_buffer :  std_logic_vector(2 downto 0);
  signal last_pc_buffer :  std_logic_vector(31 downto 0);
  signal pc_buffer :  std_logic_vector(31 downto 0);
  signal corrected_npc_buffer :  std_logic_vector(31 downto 0);
  signal nnpc_buffer :  std_logic_vector(31 downto 0);
  signal psr_val_buffer :  std_logic_vector(31 downto 0);
  signal is_cti_buffer :  std_logic_vector(0 downto 0);
  signal last_was_cti_buffer :  std_logic_vector(0 downto 0);
  signal annul_next_buffer :  std_logic_vector(0 downto 0);
  signal annul_instr_buffer :  std_logic_vector(0 downto 0);
  signal write_psr_buffer :  std_logic_vector(0 downto 0);
  signal is_flush_buffer :  std_logic_vector(0 downto 0);
  -- output port buffer signals
  signal send_to_ifetch_buffer :  std_logic_vector(0 downto 0);
  signal to_ifetch_buffer :  std_logic_vector(147 downto 0);
  signal ask_iretire_to_signal_idispatch_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  valid_from_sc_buffer <= valid_from_sc;
  npc_mispredict_buffer <= npc_mispredict;
  nnpc_mispredict_buffer <= nnpc_mispredict;
  last_nnpc_mispredict_buffer <= last_nnpc_mispredict;
  flush_like_instruction_buffer <= flush_like_instruction;
  thread_id_buffer <= thread_id;
  stream_id_buffer <= stream_id;
  slot_id_buffer <= slot_id;
  sc_instr_class_buffer <= sc_instr_class;
  last_pc_buffer <= last_pc;
  pc_buffer <= pc;
  corrected_npc_buffer <= corrected_npc;
  nnpc_buffer <= nnpc;
  psr_val_buffer <= psr_val;
  is_cti_buffer <= is_cti;
  last_was_cti_buffer <= last_was_cti;
  annul_next_buffer <= annul_next;
  annul_instr_buffer <= annul_instr;
  write_psr_buffer <= write_psr;
  is_flush_buffer <= is_flush;
  -- output handling  -------------------------------------------------------
  send_to_ifetch <= send_to_ifetch_buffer;
  to_ifetch <= to_ifetch_buffer;
  ask_iretire_to_signal_idispatch <= ask_iretire_to_signal_idispatch_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal ADD_u32_u32_1380_wire : std_logic_vector(31 downto 0);
    signal AND_u1_u1_1352_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1358_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1409_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1421_wire : std_logic_vector(0 downto 0);
    signal CONCAT_u13_u17_1451_wire : std_logic_vector(16 downto 0);
    signal CONCAT_u1_u2_1446_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_1449_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_1454_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u33_1457_wire : std_logic_vector(32 downto 0);
    signal CONCAT_u1_u5_1439_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u2_u35_1458_wire : std_logic_vector(34 downto 0);
    signal CONCAT_u2_u4_1450_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u2_u8_1442_wire : std_logic_vector(7 downto 0);
    signal CONCAT_u32_u64_1461_wire : std_logic_vector(63 downto 0);
    signal CONCAT_u35_u131_1464_wire : std_logic_vector(130 downto 0);
    signal CONCAT_u5_u13_1443_wire : std_logic_vector(12 downto 0);
    signal CONCAT_u64_u96_1463_wire : std_logic_vector(95 downto 0);
    signal MUX_1369_wire : std_logic_vector(31 downto 0);
    signal MUX_1382_wire : std_logic_vector(31 downto 0);
    signal MUX_1393_wire : std_logic_vector(31 downto 0);
    signal MUX_1433_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1354_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1405_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1357_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1364_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1375_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1388_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1407_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1411_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1414_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1415_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1428_wire : std_logic_vector(0 downto 0);
    signal R_ONE_1_1437_wire_constant : std_logic_vector(0 downto 0);
    signal R_TERMINATES_STREAM_1338_wire_constant : std_logic_vector(2 downto 0);
    signal R_TERMINATES_THREAD_1343_wire_constant : std_logic_vector(2 downto 0);
    signal annul_to_ifetch_1401 : std_logic_vector(0 downto 0);
    signal kill_thread_1348 : std_logic_vector(0 downto 0);
    signal konst_1379_wire_constant : std_logic_vector(31 downto 0);
    signal last_pc_to_ifetch_1395 : std_logic_vector(31 downto 0);
    signal last_was_cti_to_ifetch_1435 : std_logic_vector(0 downto 0);
    signal npc_to_ifetch_1384 : std_logic_vector(31 downto 0);
    signal only_update_flush_or_psr_1360 : std_logic_vector(0 downto 0);
    signal pc_to_ifetch_1371 : std_logic_vector(31 downto 0);
    signal sc_instr_terminates_stream_1340 : std_logic_vector(0 downto 0);
    signal sc_instr_terminates_thread_1345 : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    R_ONE_1_1437_wire_constant <= "1";
    R_TERMINATES_STREAM_1338_wire_constant <= "011";
    R_TERMINATES_THREAD_1343_wire_constant <= "111";
    konst_1379_wire_constant <= "00000000000000000000000000000100";
    -- flow-through select operator MUX_1369_inst
    MUX_1369_wire <= nnpc_buffer when (nnpc_mispredict_buffer(0) /=  '0') else pc_buffer;
    -- flow-through select operator MUX_1370_inst
    pc_to_ifetch_1371 <= corrected_npc_buffer when (OR_u1_u1_1364_wire(0) /=  '0') else MUX_1369_wire;
    -- flow-through select operator MUX_1382_inst
    MUX_1382_wire <= ADD_u32_u32_1380_wire when (nnpc_mispredict_buffer(0) /=  '0') else corrected_npc_buffer;
    -- flow-through select operator MUX_1383_inst
    npc_to_ifetch_1384 <= nnpc_buffer when (OR_u1_u1_1375_wire(0) /=  '0') else MUX_1382_wire;
    -- flow-through select operator MUX_1393_inst
    MUX_1393_wire <= pc_buffer when (nnpc_mispredict_buffer(0) /=  '0') else last_pc_buffer;
    -- flow-through select operator MUX_1394_inst
    last_pc_to_ifetch_1395 <= last_pc_buffer when (OR_u1_u1_1388_wire(0) /=  '0') else MUX_1393_wire;
    -- flow-through select operator MUX_1400_inst
    annul_to_ifetch_1401 <= annul_next_buffer when (sc_instr_terminates_stream_1340(0) /=  '0') else annul_instr_buffer;
    -- flow-through select operator MUX_1433_inst
    MUX_1433_wire <= is_cti_buffer when (nnpc_mispredict_buffer(0) /=  '0') else last_was_cti_buffer;
    -- flow-through select operator MUX_1434_inst
    last_was_cti_to_ifetch_1435 <= last_was_cti_buffer when (OR_u1_u1_1428_wire(0) /=  '0') else MUX_1433_wire;
    -- interlock W_kill_thread_1346_inst
    process(sc_instr_terminates_thread_1345) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := sc_instr_terminates_thread_1345(0 downto 0);
      kill_thread_1348 <= tmp_var; -- 
    end process;
    -- flow through binary operator ADD_u32_u32_1380_inst
    ADD_u32_u32_1380_wire <= std_logic_vector(unsigned(nnpc_buffer) + unsigned(konst_1379_wire_constant));
    -- flow through binary operator AND_u1_u1_1352_inst
    AND_u1_u1_1352_wire <= (last_nnpc_mispredict_buffer and last_was_cti_buffer);
    -- flow through binary operator AND_u1_u1_1358_inst
    AND_u1_u1_1358_wire <= (NOT_u1_u1_1354_wire and OR_u1_u1_1357_wire);
    -- flow through binary operator AND_u1_u1_1359_inst
    only_update_flush_or_psr_1360 <= (AND_u1_u1_1352_wire and AND_u1_u1_1358_wire);
    -- flow through binary operator AND_u1_u1_1409_inst
    AND_u1_u1_1409_wire <= (OR_u1_u1_1407_wire and sc_instr_terminates_stream_1340);
    -- flow through binary operator AND_u1_u1_1416_inst
    send_to_ifetch_buffer <= (valid_from_sc_buffer and OR_u1_u1_1415_wire);
    -- flow through binary operator AND_u1_u1_1421_inst
    AND_u1_u1_1421_wire <= (send_to_ifetch_buffer and sc_instr_terminates_stream_1340);
    -- flow through binary operator AND_u1_u1_1423_inst
    ask_iretire_to_signal_idispatch_buffer <= (AND_u1_u1_1421_wire and flush_like_instruction_buffer);
    -- flow through binary operator CONCAT_u13_u17_1451_inst
    process(CONCAT_u5_u13_1443_wire, CONCAT_u2_u4_1450_wire) -- 
      variable tmp_var : std_logic_vector(16 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u5_u13_1443_wire, CONCAT_u2_u4_1450_wire, tmp_var);
      CONCAT_u13_u17_1451_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u17_u148_1465_inst
    process(CONCAT_u13_u17_1451_wire, CONCAT_u35_u131_1464_wire) -- 
      variable tmp_var : std_logic_vector(147 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u13_u17_1451_wire, CONCAT_u35_u131_1464_wire, tmp_var);
      to_ifetch_buffer <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_1446_inst
    process(ask_iretire_to_signal_idispatch_buffer, only_update_flush_or_psr_1360) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(ask_iretire_to_signal_idispatch_buffer, only_update_flush_or_psr_1360, tmp_var);
      CONCAT_u1_u2_1446_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_1449_inst
    process(annul_to_ifetch_1401, flush_like_instruction_buffer) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(annul_to_ifetch_1401, flush_like_instruction_buffer, tmp_var);
      CONCAT_u1_u2_1449_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_1454_inst
    process(last_was_cti_to_ifetch_1435, write_psr_buffer) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(last_was_cti_to_ifetch_1435, write_psr_buffer, tmp_var);
      CONCAT_u1_u2_1454_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u33_1457_inst
    process(kill_thread_1348, pc_to_ifetch_1371) -- 
      variable tmp_var : std_logic_vector(32 downto 0); -- 
    begin -- 
      ApConcat_proc(kill_thread_1348, pc_to_ifetch_1371, tmp_var);
      CONCAT_u1_u33_1457_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u5_1439_inst
    process(R_ONE_1_1437_wire_constant, thread_id_buffer) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(R_ONE_1_1437_wire_constant, thread_id_buffer, tmp_var);
      CONCAT_u1_u5_1439_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u35_1458_inst
    process(CONCAT_u1_u2_1454_wire, CONCAT_u1_u33_1457_wire) -- 
      variable tmp_var : std_logic_vector(34 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_1454_wire, CONCAT_u1_u33_1457_wire, tmp_var);
      CONCAT_u2_u35_1458_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u4_1450_inst
    process(CONCAT_u1_u2_1446_wire, CONCAT_u1_u2_1449_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_1446_wire, CONCAT_u1_u2_1449_wire, tmp_var);
      CONCAT_u2_u4_1450_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u8_1442_inst
    process(stream_id_buffer, slot_id_buffer) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(stream_id_buffer, slot_id_buffer, tmp_var);
      CONCAT_u2_u8_1442_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u64_1461_inst
    process(npc_to_ifetch_1384, psr_val_buffer) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(npc_to_ifetch_1384, psr_val_buffer, tmp_var);
      CONCAT_u32_u64_1461_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u35_u131_1464_inst
    process(CONCAT_u2_u35_1458_wire, CONCAT_u64_u96_1463_wire) -- 
      variable tmp_var : std_logic_vector(130 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u35_1458_wire, CONCAT_u64_u96_1463_wire, tmp_var);
      CONCAT_u35_u131_1464_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u13_1443_inst
    process(CONCAT_u1_u5_1439_wire, CONCAT_u2_u8_1442_wire) -- 
      variable tmp_var : std_logic_vector(12 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u5_1439_wire, CONCAT_u2_u8_1442_wire, tmp_var);
      CONCAT_u5_u13_1443_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u64_u96_1463_inst
    process(CONCAT_u32_u64_1461_wire, last_pc_to_ifetch_1395) -- 
      variable tmp_var : std_logic_vector(95 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u32_u64_1461_wire, last_pc_to_ifetch_1395, tmp_var);
      CONCAT_u64_u96_1463_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_1339_inst
    process(sc_instr_class_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(sc_instr_class_buffer, R_TERMINATES_STREAM_1338_wire_constant, tmp_var);
      sc_instr_terminates_stream_1340 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_1344_inst
    process(sc_instr_class_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(sc_instr_class_buffer, R_TERMINATES_THREAD_1343_wire_constant, tmp_var);
      sc_instr_terminates_thread_1345 <= tmp_var; --
    end process;
    -- unary operator NOT_u1_u1_1354_inst
    process(kill_thread_1348) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", kill_thread_1348, tmp_var);
      NOT_u1_u1_1354_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_1405_inst
    process(last_nnpc_mispredict_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", last_nnpc_mispredict_buffer, tmp_var);
      NOT_u1_u1_1405_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator OR_u1_u1_1357_inst
    OR_u1_u1_1357_wire <= (write_psr_buffer or is_flush_buffer);
    -- flow through binary operator OR_u1_u1_1364_inst
    OR_u1_u1_1364_wire <= (sc_instr_terminates_stream_1340 or sc_instr_terminates_thread_1345);
    -- flow through binary operator OR_u1_u1_1375_inst
    OR_u1_u1_1375_wire <= (sc_instr_terminates_stream_1340 or sc_instr_terminates_thread_1345);
    -- flow through binary operator OR_u1_u1_1388_inst
    OR_u1_u1_1388_wire <= (sc_instr_terminates_stream_1340 or sc_instr_terminates_thread_1345);
    -- flow through binary operator OR_u1_u1_1407_inst
    OR_u1_u1_1407_wire <= (NOT_u1_u1_1405_wire or flush_like_instruction_buffer);
    -- flow through binary operator OR_u1_u1_1411_inst
    OR_u1_u1_1411_wire <= (AND_u1_u1_1409_wire or sc_instr_terminates_thread_1345);
    -- flow through binary operator OR_u1_u1_1414_inst
    OR_u1_u1_1414_wire <= (nnpc_mispredict_buffer or only_update_flush_or_psr_1360);
    -- flow through binary operator OR_u1_u1_1415_inst
    OR_u1_u1_1415_wire <= (OR_u1_u1_1411_wire or OR_u1_u1_1414_wire);
    -- flow through binary operator OR_u1_u1_1428_inst
    OR_u1_u1_1428_wire <= (sc_instr_terminates_stream_1340 or sc_instr_terminates_thread_1345);
    -- 
  end Block; -- data_path
  -- 
end calculate_ifetch_related_stuff_Volatile_arch;
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
library teu_stream_corrector;
use teu_stream_corrector.stream_corrector_global_package.all;
entity debug_unit_ccu_daemon is -- 
  generic (tag_length : integer); 
  port ( -- 
    debug_bp_0_pipe_write_req : out  std_logic_vector(0 downto 0);
    debug_bp_0_pipe_write_ack : in   std_logic_vector(0 downto 0);
    debug_bp_0_pipe_write_data : out  std_logic_vector(31 downto 0);
    debug_bp_1_pipe_write_req : out  std_logic_vector(0 downto 0);
    debug_bp_1_pipe_write_ack : in   std_logic_vector(0 downto 0);
    debug_bp_1_pipe_write_data : out  std_logic_vector(31 downto 0);
    debug_bp_2_pipe_write_req : out  std_logic_vector(0 downto 0);
    debug_bp_2_pipe_write_ack : in   std_logic_vector(0 downto 0);
    debug_bp_2_pipe_write_data : out  std_logic_vector(31 downto 0);
    debug_bp_3_pipe_write_req : out  std_logic_vector(0 downto 0);
    debug_bp_3_pipe_write_ack : in   std_logic_vector(0 downto 0);
    debug_bp_3_pipe_write_data : out  std_logic_vector(31 downto 0);
    debug_dbg_interrupt_pipe_write_req : out  std_logic_vector(0 downto 0);
    debug_dbg_interrupt_pipe_write_ack : in   std_logic_vector(0 downto 0);
    debug_dbg_interrupt_pipe_write_data : out  std_logic_vector(0 downto 0);
    debug_wp_0_pipe_write_req : out  std_logic_vector(0 downto 0);
    debug_wp_0_pipe_write_ack : in   std_logic_vector(0 downto 0);
    debug_wp_0_pipe_write_data : out  std_logic_vector(31 downto 0);
    debug_wp_1_pipe_write_req : out  std_logic_vector(0 downto 0);
    debug_wp_1_pipe_write_ack : in   std_logic_vector(0 downto 0);
    debug_wp_1_pipe_write_data : out  std_logic_vector(31 downto 0);
    debug_wp_2_pipe_write_req : out  std_logic_vector(0 downto 0);
    debug_wp_2_pipe_write_ack : in   std_logic_vector(0 downto 0);
    debug_wp_2_pipe_write_data : out  std_logic_vector(31 downto 0);
    debug_wp_3_pipe_write_req : out  std_logic_vector(0 downto 0);
    debug_wp_3_pipe_write_ack : in   std_logic_vector(0 downto 0);
    debug_wp_3_pipe_write_data : out  std_logic_vector(31 downto 0);
    teu_debug_to_ccu_response_pipe_write_req : out  std_logic_vector(0 downto 0);
    teu_debug_to_ccu_response_pipe_write_ack : in   std_logic_vector(0 downto 0);
    teu_debug_to_ccu_response_pipe_write_data : out  std_logic_vector(0 downto 0);
    get_debug_command_from_ccu_call_reqs : out  std_logic_vector(0 downto 0);
    get_debug_command_from_ccu_call_acks : in   std_logic_vector(0 downto 0);
    get_debug_command_from_ccu_call_tag  :  out  std_logic_vector(0 downto 0);
    get_debug_command_from_ccu_return_reqs : out  std_logic_vector(0 downto 0);
    get_debug_command_from_ccu_return_acks : in   std_logic_vector(0 downto 0);
    get_debug_command_from_ccu_return_data : in   std_logic_vector(39 downto 0);
    get_debug_command_from_ccu_return_tag :  in   std_logic_vector(0 downto 0);
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
end entity debug_unit_ccu_daemon;
architecture debug_unit_ccu_daemon_arch of debug_unit_ccu_daemon is -- 
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
  signal debug_unit_ccu_daemon_CP_99_start: Boolean;
  signal debug_unit_ccu_daemon_CP_99_symbol: Boolean;
  -- volatile/operator module components. 
  component get_debug_command_from_ccu is -- 
    generic (tag_length : integer); 
    port ( -- 
      debug_cmd : out  std_logic_vector(7 downto 0);
      debug_data : out  std_logic_vector(31 downto 0);
      ccu_to_teu_debug_command_pipe_read_req : out  std_logic_vector(0 downto 0);
      ccu_to_teu_debug_command_pipe_read_ack : in   std_logic_vector(0 downto 0);
      ccu_to_teu_debug_command_pipe_read_data : in   std_logic_vector(7 downto 0);
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
  signal EQ_u2_u1_1654_inst_ack_0 : boolean;
  signal WPIPE_debug_bp_2_1749_inst_req_1 : boolean;
  signal AND_u1_u1_1687_inst_req_1 : boolean;
  signal AND_u1_u1_1702_inst_ack_1 : boolean;
  signal CONCAT_u31_u32_1746_inst_ack_0 : boolean;
  signal WPIPE_debug_bp_1_1740_inst_req_1 : boolean;
  signal EQ_u2_u1_1649_inst_req_1 : boolean;
  signal W_next_prev_intr_1638_inst_ack_1 : boolean;
  signal CONCAT_u31_u32_1764_inst_req_0 : boolean;
  signal EQ_u2_u1_1649_inst_ack_1 : boolean;
  signal WPIPE_debug_bp_1_1740_inst_ack_1 : boolean;
  signal WPIPE_debug_bp_2_1749_inst_ack_1 : boolean;
  signal WPIPE_debug_bp_1_1740_inst_req_0 : boolean;
  signal AND_u1_u1_1717_inst_req_0 : boolean;
  signal AND_u1_u1_1702_inst_req_1 : boolean;
  signal CONCAT_u30_u32_1771_inst_ack_0 : boolean;
  signal CONCAT_u31_u32_1755_inst_req_1 : boolean;
  signal CONCAT_u31_u32_1755_inst_ack_0 : boolean;
  signal WPIPE_debug_wp_0_1767_inst_ack_0 : boolean;
  signal AND_u1_u1_1722_inst_req_1 : boolean;
  signal AND_u1_u1_1717_inst_ack_0 : boolean;
  signal WPIPE_debug_bp_1_1740_inst_ack_0 : boolean;
  signal EQ_u2_u1_1649_inst_req_0 : boolean;
  signal CONCAT_u30_u32_1771_inst_req_0 : boolean;
  signal EQ_u2_u1_1654_inst_req_1 : boolean;
  signal CONCAT_u31_u32_1764_inst_ack_0 : boolean;
  signal WPIPE_debug_bp_3_1758_inst_req_0 : boolean;
  signal WPIPE_debug_wp_0_1767_inst_req_1 : boolean;
  signal CONCAT_u31_u32_1764_inst_ack_1 : boolean;
  signal EQ_u2_u1_1649_inst_ack_0 : boolean;
  signal EQ_u2_u1_1654_inst_req_0 : boolean;
  signal WPIPE_debug_bp_3_1758_inst_ack_0 : boolean;
  signal CONCAT_u31_u32_1746_inst_req_1 : boolean;
  signal WPIPE_debug_bp_3_1758_inst_ack_1 : boolean;
  signal MUX_1728_inst_ack_1 : boolean;
  signal AND_u1_u1_1687_inst_ack_1 : boolean;
  signal AND_u1_u1_1692_inst_ack_1 : boolean;
  signal AND_u1_u1_1702_inst_ack_0 : boolean;
  signal CONCAT_u31_u32_1755_inst_req_0 : boolean;
  signal WPIPE_debug_dbg_interrupt_1632_inst_ack_0 : boolean;
  signal OR_u1_u1_1674_inst_ack_1 : boolean;
  signal CONCAT_u30_u32_1778_inst_ack_0 : boolean;
  signal AND_u1_u1_1722_inst_ack_0 : boolean;
  signal AND_u1_u1_1722_inst_req_0 : boolean;
  signal CONCAT_u30_u32_1778_inst_req_1 : boolean;
  signal CONCAT_u30_u32_1778_inst_ack_1 : boolean;
  signal WPIPE_debug_bp_2_1749_inst_ack_0 : boolean;
  signal CONCAT_u30_u32_1771_inst_req_1 : boolean;
  signal MUX_1728_inst_req_1 : boolean;
  signal AND_u1_u1_1702_inst_req_0 : boolean;
  signal CONCAT_u30_u32_1771_inst_ack_1 : boolean;
  signal WPIPE_debug_dbg_interrupt_1632_inst_req_0 : boolean;
  signal EQ_u2_u1_1644_inst_ack_1 : boolean;
  signal CONCAT_u31_u32_1764_inst_req_1 : boolean;
  signal W_next_prev_intr_1638_inst_req_1 : boolean;
  signal CONCAT_u31_u32_1755_inst_ack_1 : boolean;
  signal WPIPE_debug_wp_0_1767_inst_ack_1 : boolean;
  signal CONCAT_u31_u32_1746_inst_ack_1 : boolean;
  signal WPIPE_debug_bp_3_1758_inst_req_1 : boolean;
  signal WPIPE_debug_wp_1_1774_inst_req_0 : boolean;
  signal AND_u1_u1_1697_inst_req_1 : boolean;
  signal WPIPE_debug_wp_0_1767_inst_req_0 : boolean;
  signal WPIPE_debug_bp_2_1749_inst_req_0 : boolean;
  signal AND_u1_u1_1697_inst_ack_1 : boolean;
  signal CONCAT_u30_u32_1778_inst_req_0 : boolean;
  signal WPIPE_debug_wp_1_1774_inst_ack_0 : boolean;
  signal WPIPE_debug_wp_1_1774_inst_req_1 : boolean;
  signal WPIPE_debug_wp_1_1774_inst_ack_1 : boolean;
  signal OR_u1_u1_1674_inst_req_1 : boolean;
  signal CONCAT_u31_u32_1746_inst_req_0 : boolean;
  signal CONCAT_u30_u32_1785_inst_req_1 : boolean;
  signal CONCAT_u30_u32_1785_inst_req_0 : boolean;
  signal CONCAT_u30_u32_1785_inst_ack_0 : boolean;
  signal CONCAT_u30_u32_1785_inst_ack_1 : boolean;
  signal AND_u1_u1_1712_inst_ack_1 : boolean;
  signal WPIPE_debug_dbg_interrupt_1632_inst_req_1 : boolean;
  signal EQ_u2_u1_1644_inst_req_1 : boolean;
  signal WPIPE_debug_bp_0_1731_inst_ack_1 : boolean;
  signal WPIPE_debug_bp_0_1539_inst_req_0 : boolean;
  signal WPIPE_debug_bp_0_1539_inst_ack_0 : boolean;
  signal AND_u1_u1_1697_inst_ack_0 : boolean;
  signal WPIPE_debug_bp_0_1731_inst_req_1 : boolean;
  signal WPIPE_debug_bp_0_1539_inst_req_1 : boolean;
  signal AND_u1_u1_1692_inst_req_1 : boolean;
  signal WPIPE_debug_bp_0_1539_inst_ack_1 : boolean;
  signal WPIPE_debug_bp_1_1542_inst_req_0 : boolean;
  signal WPIPE_debug_bp_1_1542_inst_ack_0 : boolean;
  signal WPIPE_debug_bp_1_1542_inst_req_1 : boolean;
  signal WPIPE_debug_bp_1_1542_inst_ack_1 : boolean;
  signal MUX_1728_inst_ack_0 : boolean;
  signal CONCAT_u31_u32_1737_inst_ack_1 : boolean;
  signal AND_u1_u1_1712_inst_req_1 : boolean;
  signal OR_u1_u1_1674_inst_ack_0 : boolean;
  signal WPIPE_debug_bp_2_1545_inst_req_0 : boolean;
  signal WPIPE_debug_bp_2_1545_inst_ack_0 : boolean;
  signal WPIPE_debug_bp_2_1545_inst_req_1 : boolean;
  signal WPIPE_debug_bp_2_1545_inst_ack_1 : boolean;
  signal MUX_1728_inst_req_0 : boolean;
  signal OR_u1_u1_1674_inst_req_0 : boolean;
  signal WPIPE_debug_bp_0_1731_inst_ack_0 : boolean;
  signal WPIPE_debug_bp_3_1548_inst_req_0 : boolean;
  signal AND_u1_u1_1692_inst_ack_0 : boolean;
  signal WPIPE_debug_bp_3_1548_inst_ack_0 : boolean;
  signal EQ_u2_u1_1644_inst_ack_0 : boolean;
  signal WPIPE_debug_bp_0_1731_inst_req_0 : boolean;
  signal WPIPE_debug_bp_3_1548_inst_req_1 : boolean;
  signal WPIPE_debug_bp_3_1548_inst_ack_1 : boolean;
  signal CONCAT_u31_u32_1737_inst_req_1 : boolean;
  signal WPIPE_debug_wp_0_1551_inst_req_0 : boolean;
  signal AND_u1_u1_1692_inst_req_0 : boolean;
  signal WPIPE_debug_wp_0_1551_inst_ack_0 : boolean;
  signal EQ_u2_u1_1644_inst_req_0 : boolean;
  signal WPIPE_debug_wp_0_1551_inst_req_1 : boolean;
  signal WPIPE_debug_wp_0_1551_inst_ack_1 : boolean;
  signal AND_u1_u1_1722_inst_ack_1 : boolean;
  signal WPIPE_debug_wp_1_1554_inst_req_0 : boolean;
  signal WPIPE_debug_wp_1_1554_inst_ack_0 : boolean;
  signal WPIPE_debug_wp_1_1554_inst_req_1 : boolean;
  signal WPIPE_debug_wp_1_1554_inst_ack_1 : boolean;
  signal AND_u1_u1_1712_inst_ack_0 : boolean;
  signal WPIPE_debug_wp_2_1557_inst_req_0 : boolean;
  signal WPIPE_debug_wp_2_1557_inst_ack_0 : boolean;
  signal WPIPE_debug_wp_2_1557_inst_req_1 : boolean;
  signal WPIPE_debug_wp_2_1557_inst_ack_1 : boolean;
  signal OR_u1_u1_1669_inst_ack_1 : boolean;
  signal OR_u1_u1_1669_inst_req_1 : boolean;
  signal WPIPE_debug_wp_3_1560_inst_req_0 : boolean;
  signal WPIPE_debug_wp_3_1560_inst_ack_0 : boolean;
  signal WPIPE_debug_wp_3_1560_inst_req_1 : boolean;
  signal WPIPE_debug_wp_3_1560_inst_ack_1 : boolean;
  signal OR_u1_u1_1669_inst_ack_0 : boolean;
  signal WPIPE_debug_dbg_interrupt_1563_inst_req_0 : boolean;
  signal WPIPE_debug_dbg_interrupt_1563_inst_ack_0 : boolean;
  signal WPIPE_debug_dbg_interrupt_1563_inst_req_1 : boolean;
  signal WPIPE_debug_dbg_interrupt_1563_inst_ack_1 : boolean;
  signal CONCAT_u31_u32_1737_inst_ack_0 : boolean;
  signal AND_u1_u1_1712_inst_req_0 : boolean;
  signal W_next_prev_intr_1638_inst_ack_0 : boolean;
  signal OR_u1_u1_1669_inst_req_0 : boolean;
  signal WPIPE_debug_dbg_interrupt_1632_inst_ack_1 : boolean;
  signal W_next_prev_intr_1638_inst_req_0 : boolean;
  signal call_stmt_1575_call_req_0 : boolean;
  signal call_stmt_1575_call_ack_0 : boolean;
  signal call_stmt_1575_call_req_1 : boolean;
  signal call_stmt_1575_call_ack_1 : boolean;
  signal CONCAT_u31_u32_1737_inst_req_0 : boolean;
  signal slice_1578_inst_req_0 : boolean;
  signal slice_1578_inst_ack_0 : boolean;
  signal slice_1578_inst_req_1 : boolean;
  signal slice_1578_inst_ack_1 : boolean;
  signal AND_u1_u1_1687_inst_ack_0 : boolean;
  signal OR_u1_u1_1664_inst_ack_1 : boolean;
  signal slice_1582_inst_req_0 : boolean;
  signal OR_u1_u1_1664_inst_req_1 : boolean;
  signal slice_1582_inst_ack_0 : boolean;
  signal slice_1582_inst_req_1 : boolean;
  signal slice_1582_inst_ack_1 : boolean;
  signal AND_u1_u1_1707_inst_ack_1 : boolean;
  signal AND_u1_u1_1707_inst_req_1 : boolean;
  signal AND_u1_u1_1636_inst_req_1 : boolean;
  signal slice_1586_inst_req_0 : boolean;
  signal OR_u1_u1_1664_inst_ack_0 : boolean;
  signal slice_1586_inst_ack_0 : boolean;
  signal slice_1586_inst_req_1 : boolean;
  signal OR_u1_u1_1664_inst_req_0 : boolean;
  signal slice_1586_inst_ack_1 : boolean;
  signal AND_u1_u1_1687_inst_req_0 : boolean;
  signal AND_u1_u1_1636_inst_ack_1 : boolean;
  signal AND_u1_u1_1707_inst_ack_0 : boolean;
  signal EQ_u3_u1_1591_inst_req_0 : boolean;
  signal EQ_u3_u1_1591_inst_ack_0 : boolean;
  signal AND_u1_u1_1707_inst_req_0 : boolean;
  signal EQ_u3_u1_1591_inst_req_1 : boolean;
  signal EQ_u3_u1_1591_inst_ack_1 : boolean;
  signal EQ_u3_u1_1596_inst_req_0 : boolean;
  signal EQ_u3_u1_1596_inst_ack_0 : boolean;
  signal EQ_u3_u1_1596_inst_req_1 : boolean;
  signal EQ_u3_u1_1596_inst_ack_1 : boolean;
  signal EQ_u2_u1_1659_inst_ack_1 : boolean;
  signal EQ_u3_u1_1601_inst_req_0 : boolean;
  signal EQ_u2_u1_1659_inst_req_1 : boolean;
  signal EQ_u3_u1_1601_inst_ack_0 : boolean;
  signal EQ_u3_u1_1601_inst_req_1 : boolean;
  signal EQ_u3_u1_1601_inst_ack_1 : boolean;
  signal EQ_u3_u1_1606_inst_req_0 : boolean;
  signal EQ_u2_u1_1659_inst_ack_0 : boolean;
  signal EQ_u3_u1_1606_inst_ack_0 : boolean;
  signal EQ_u3_u1_1606_inst_req_1 : boolean;
  signal EQ_u2_u1_1659_inst_req_0 : boolean;
  signal EQ_u3_u1_1606_inst_ack_1 : boolean;
  signal AND_u1_u1_1717_inst_ack_1 : boolean;
  signal EQ_u3_u1_1611_inst_req_0 : boolean;
  signal EQ_u3_u1_1611_inst_ack_0 : boolean;
  signal EQ_u3_u1_1611_inst_req_1 : boolean;
  signal EQ_u3_u1_1611_inst_ack_1 : boolean;
  signal AND_u1_u1_1717_inst_req_1 : boolean;
  signal AND_u1_u1_1697_inst_req_0 : boolean;
  signal OR_u1_u1_1622_inst_req_0 : boolean;
  signal OR_u1_u1_1622_inst_ack_0 : boolean;
  signal OR_u1_u1_1622_inst_req_1 : boolean;
  signal EQ_u2_u1_1654_inst_ack_1 : boolean;
  signal OR_u1_u1_1622_inst_ack_1 : boolean;
  signal AND_u1_u1_1636_inst_req_0 : boolean;
  signal AND_u1_u1_1636_inst_ack_0 : boolean;
  signal WPIPE_debug_wp_2_1781_inst_req_0 : boolean;
  signal WPIPE_debug_wp_2_1781_inst_ack_0 : boolean;
  signal WPIPE_debug_wp_2_1781_inst_req_1 : boolean;
  signal WPIPE_debug_wp_2_1781_inst_ack_1 : boolean;
  signal CONCAT_u30_u32_1792_inst_req_0 : boolean;
  signal CONCAT_u30_u32_1792_inst_ack_0 : boolean;
  signal CONCAT_u30_u32_1792_inst_req_1 : boolean;
  signal CONCAT_u30_u32_1792_inst_ack_1 : boolean;
  signal WPIPE_debug_wp_3_1788_inst_req_0 : boolean;
  signal WPIPE_debug_wp_3_1788_inst_ack_0 : boolean;
  signal WPIPE_debug_wp_3_1788_inst_req_1 : boolean;
  signal WPIPE_debug_wp_3_1788_inst_ack_1 : boolean;
  signal WPIPE_teu_debug_to_ccu_response_1794_inst_req_0 : boolean;
  signal WPIPE_teu_debug_to_ccu_response_1794_inst_ack_0 : boolean;
  signal WPIPE_teu_debug_to_ccu_response_1794_inst_req_1 : boolean;
  signal WPIPE_teu_debug_to_ccu_response_1794_inst_ack_1 : boolean;
  signal phi_stmt_1568_req_1 : boolean;
  signal next_prev_intr_1640_1570_buf_req_0 : boolean;
  signal next_prev_intr_1640_1570_buf_ack_0 : boolean;
  signal next_prev_intr_1640_1570_buf_req_1 : boolean;
  signal next_prev_intr_1640_1570_buf_ack_1 : boolean;
  signal phi_stmt_1568_req_0 : boolean;
  signal phi_stmt_1568_ack_0 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "debug_unit_ccu_daemon_input_buffer", -- 
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
  debug_unit_ccu_daemon_CP_99_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "debug_unit_ccu_daemon_out_buffer", -- 
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
    preds <= debug_unit_ccu_daemon_CP_99_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
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
    preds <= debug_unit_ccu_daemon_CP_99_start & tag_ilock_write_ack_symbol;
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
    preds <= debug_unit_ccu_daemon_CP_99_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  debug_unit_ccu_daemon_CP_99: Block -- control-path 
    signal debug_unit_ccu_daemon_CP_99_elements: BooleanArray(148 downto 0);
    -- 
  begin -- 
    debug_unit_ccu_daemon_CP_99_elements(0) <= debug_unit_ccu_daemon_CP_99_start;
    debug_unit_ccu_daemon_CP_99_symbol <= debug_unit_ccu_daemon_CP_99_elements(20);
    -- CP-element group 0:  fork  transition  output  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	1 
    -- CP-element group 0: 	3 
    -- CP-element group 0: 	5 
    -- CP-element group 0: 	7 
    -- CP-element group 0: 	9 
    -- CP-element group 0: 	11 
    -- CP-element group 0: 	13 
    -- CP-element group 0: 	15 
    -- CP-element group 0: 	17 
    -- CP-element group 0:  members (29) 
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 assign_stmt_1541_to_assign_stmt_1565/$entry
      -- CP-element group 0: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_0_1539_sample_start_
      -- CP-element group 0: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_0_1539_Sample/$entry
      -- CP-element group 0: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_0_1539_Sample/req
      -- CP-element group 0: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_1_1542_sample_start_
      -- CP-element group 0: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_1_1542_Sample/$entry
      -- CP-element group 0: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_1_1542_Sample/req
      -- CP-element group 0: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_2_1545_sample_start_
      -- CP-element group 0: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_2_1545_Sample/$entry
      -- CP-element group 0: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_2_1545_Sample/req
      -- CP-element group 0: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_3_1548_sample_start_
      -- CP-element group 0: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_3_1548_Sample/$entry
      -- CP-element group 0: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_3_1548_Sample/req
      -- CP-element group 0: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_0_1551_sample_start_
      -- CP-element group 0: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_0_1551_Sample/$entry
      -- CP-element group 0: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_0_1551_Sample/req
      -- CP-element group 0: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_1_1554_sample_start_
      -- CP-element group 0: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_1_1554_Sample/$entry
      -- CP-element group 0: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_1_1554_Sample/req
      -- CP-element group 0: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_2_1557_sample_start_
      -- CP-element group 0: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_2_1557_Sample/$entry
      -- CP-element group 0: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_2_1557_Sample/req
      -- CP-element group 0: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_3_1560_sample_start_
      -- CP-element group 0: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_3_1560_Sample/$entry
      -- CP-element group 0: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_3_1560_Sample/req
      -- CP-element group 0: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_dbg_interrupt_1563_sample_start_
      -- CP-element group 0: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_dbg_interrupt_1563_Sample/$entry
      -- CP-element group 0: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_dbg_interrupt_1563_Sample/req
      -- 
    req_112_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_112_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(0), ack => WPIPE_debug_bp_0_1539_inst_req_0); -- 
    req_126_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_126_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(0), ack => WPIPE_debug_bp_1_1542_inst_req_0); -- 
    req_140_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_140_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(0), ack => WPIPE_debug_bp_2_1545_inst_req_0); -- 
    req_154_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_154_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(0), ack => WPIPE_debug_bp_3_1548_inst_req_0); -- 
    req_168_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_168_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(0), ack => WPIPE_debug_wp_0_1551_inst_req_0); -- 
    req_182_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_182_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(0), ack => WPIPE_debug_wp_1_1554_inst_req_0); -- 
    req_196_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_196_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(0), ack => WPIPE_debug_wp_2_1557_inst_req_0); -- 
    req_210_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_210_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(0), ack => WPIPE_debug_wp_3_1560_inst_req_0); -- 
    req_224_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_224_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(0), ack => WPIPE_debug_dbg_interrupt_1563_inst_req_0); -- 
    -- CP-element group 1:  transition  input  output  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	0 
    -- CP-element group 1: successors 
    -- CP-element group 1: 	2 
    -- CP-element group 1:  members (6) 
      -- CP-element group 1: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_0_1539_sample_completed_
      -- CP-element group 1: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_0_1539_update_start_
      -- CP-element group 1: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_0_1539_Sample/$exit
      -- CP-element group 1: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_0_1539_Sample/ack
      -- CP-element group 1: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_0_1539_Update/$entry
      -- CP-element group 1: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_0_1539_Update/req
      -- 
    ack_113_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 1_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_debug_bp_0_1539_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(1)); -- 
    req_117_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_117_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(1), ack => WPIPE_debug_bp_0_1539_inst_req_1); -- 
    -- CP-element group 2:  transition  input  bypass 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	1 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	19 
    -- CP-element group 2:  members (3) 
      -- CP-element group 2: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_0_1539_update_completed_
      -- CP-element group 2: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_0_1539_Update/$exit
      -- CP-element group 2: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_0_1539_Update/ack
      -- 
    ack_118_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 2_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_debug_bp_0_1539_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(2)); -- 
    -- CP-element group 3:  transition  input  output  bypass 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: 	0 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	4 
    -- CP-element group 3:  members (6) 
      -- CP-element group 3: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_1_1542_sample_completed_
      -- CP-element group 3: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_1_1542_update_start_
      -- CP-element group 3: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_1_1542_Sample/$exit
      -- CP-element group 3: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_1_1542_Sample/ack
      -- CP-element group 3: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_1_1542_Update/$entry
      -- CP-element group 3: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_1_1542_Update/req
      -- 
    ack_127_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 3_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_debug_bp_1_1542_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(3)); -- 
    req_131_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_131_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(3), ack => WPIPE_debug_bp_1_1542_inst_req_1); -- 
    -- CP-element group 4:  transition  input  bypass 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: 	3 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	19 
    -- CP-element group 4:  members (3) 
      -- CP-element group 4: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_1_1542_update_completed_
      -- CP-element group 4: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_1_1542_Update/$exit
      -- CP-element group 4: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_1_1542_Update/ack
      -- 
    ack_132_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 4_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_debug_bp_1_1542_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(4)); -- 
    -- CP-element group 5:  transition  input  output  bypass 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	0 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	6 
    -- CP-element group 5:  members (6) 
      -- CP-element group 5: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_2_1545_sample_completed_
      -- CP-element group 5: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_2_1545_update_start_
      -- CP-element group 5: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_2_1545_Sample/$exit
      -- CP-element group 5: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_2_1545_Sample/ack
      -- CP-element group 5: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_2_1545_Update/$entry
      -- CP-element group 5: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_2_1545_Update/req
      -- 
    ack_141_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 5_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_debug_bp_2_1545_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(5)); -- 
    req_145_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_145_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(5), ack => WPIPE_debug_bp_2_1545_inst_req_1); -- 
    -- CP-element group 6:  transition  input  bypass 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	5 
    -- CP-element group 6: successors 
    -- CP-element group 6: 	19 
    -- CP-element group 6:  members (3) 
      -- CP-element group 6: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_2_1545_update_completed_
      -- CP-element group 6: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_2_1545_Update/$exit
      -- CP-element group 6: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_2_1545_Update/ack
      -- 
    ack_146_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 6_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_debug_bp_2_1545_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(6)); -- 
    -- CP-element group 7:  transition  input  output  bypass 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	0 
    -- CP-element group 7: successors 
    -- CP-element group 7: 	8 
    -- CP-element group 7:  members (6) 
      -- CP-element group 7: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_3_1548_sample_completed_
      -- CP-element group 7: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_3_1548_update_start_
      -- CP-element group 7: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_3_1548_Sample/$exit
      -- CP-element group 7: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_3_1548_Sample/ack
      -- CP-element group 7: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_3_1548_Update/$entry
      -- CP-element group 7: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_3_1548_Update/req
      -- 
    ack_155_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 7_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_debug_bp_3_1548_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(7)); -- 
    req_159_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_159_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(7), ack => WPIPE_debug_bp_3_1548_inst_req_1); -- 
    -- CP-element group 8:  transition  input  bypass 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	7 
    -- CP-element group 8: successors 
    -- CP-element group 8: 	19 
    -- CP-element group 8:  members (3) 
      -- CP-element group 8: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_3_1548_update_completed_
      -- CP-element group 8: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_3_1548_Update/$exit
      -- CP-element group 8: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_bp_3_1548_Update/ack
      -- 
    ack_160_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 8_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_debug_bp_3_1548_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(8)); -- 
    -- CP-element group 9:  transition  input  output  bypass 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: 	0 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	10 
    -- CP-element group 9:  members (6) 
      -- CP-element group 9: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_0_1551_sample_completed_
      -- CP-element group 9: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_0_1551_update_start_
      -- CP-element group 9: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_0_1551_Sample/$exit
      -- CP-element group 9: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_0_1551_Sample/ack
      -- CP-element group 9: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_0_1551_Update/$entry
      -- CP-element group 9: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_0_1551_Update/req
      -- 
    ack_169_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 9_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_debug_wp_0_1551_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(9)); -- 
    req_173_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_173_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(9), ack => WPIPE_debug_wp_0_1551_inst_req_1); -- 
    -- CP-element group 10:  transition  input  bypass 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	9 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	19 
    -- CP-element group 10:  members (3) 
      -- CP-element group 10: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_0_1551_update_completed_
      -- CP-element group 10: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_0_1551_Update/$exit
      -- CP-element group 10: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_0_1551_Update/ack
      -- 
    ack_174_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 10_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_debug_wp_0_1551_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(10)); -- 
    -- CP-element group 11:  transition  input  output  bypass 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	0 
    -- CP-element group 11: successors 
    -- CP-element group 11: 	12 
    -- CP-element group 11:  members (6) 
      -- CP-element group 11: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_1_1554_sample_completed_
      -- CP-element group 11: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_1_1554_update_start_
      -- CP-element group 11: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_1_1554_Sample/$exit
      -- CP-element group 11: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_1_1554_Sample/ack
      -- CP-element group 11: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_1_1554_Update/$entry
      -- CP-element group 11: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_1_1554_Update/req
      -- 
    ack_183_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 11_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_debug_wp_1_1554_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(11)); -- 
    req_187_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_187_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(11), ack => WPIPE_debug_wp_1_1554_inst_req_1); -- 
    -- CP-element group 12:  transition  input  bypass 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	11 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	19 
    -- CP-element group 12:  members (3) 
      -- CP-element group 12: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_1_1554_update_completed_
      -- CP-element group 12: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_1_1554_Update/$exit
      -- CP-element group 12: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_1_1554_Update/ack
      -- 
    ack_188_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 12_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_debug_wp_1_1554_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(12)); -- 
    -- CP-element group 13:  transition  input  output  bypass 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: 	0 
    -- CP-element group 13: successors 
    -- CP-element group 13: 	14 
    -- CP-element group 13:  members (6) 
      -- CP-element group 13: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_2_1557_sample_completed_
      -- CP-element group 13: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_2_1557_update_start_
      -- CP-element group 13: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_2_1557_Sample/$exit
      -- CP-element group 13: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_2_1557_Sample/ack
      -- CP-element group 13: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_2_1557_Update/$entry
      -- CP-element group 13: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_2_1557_Update/req
      -- 
    ack_197_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 13_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_debug_wp_2_1557_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(13)); -- 
    req_201_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_201_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(13), ack => WPIPE_debug_wp_2_1557_inst_req_1); -- 
    -- CP-element group 14:  transition  input  bypass 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: 	13 
    -- CP-element group 14: successors 
    -- CP-element group 14: 	19 
    -- CP-element group 14:  members (3) 
      -- CP-element group 14: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_2_1557_update_completed_
      -- CP-element group 14: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_2_1557_Update/$exit
      -- CP-element group 14: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_2_1557_Update/ack
      -- 
    ack_202_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 14_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_debug_wp_2_1557_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(14)); -- 
    -- CP-element group 15:  transition  input  output  bypass 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: 	0 
    -- CP-element group 15: successors 
    -- CP-element group 15: 	16 
    -- CP-element group 15:  members (6) 
      -- CP-element group 15: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_3_1560_sample_completed_
      -- CP-element group 15: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_3_1560_update_start_
      -- CP-element group 15: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_3_1560_Sample/$exit
      -- CP-element group 15: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_3_1560_Sample/ack
      -- CP-element group 15: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_3_1560_Update/$entry
      -- CP-element group 15: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_3_1560_Update/req
      -- 
    ack_211_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 15_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_debug_wp_3_1560_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(15)); -- 
    req_215_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_215_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(15), ack => WPIPE_debug_wp_3_1560_inst_req_1); -- 
    -- CP-element group 16:  transition  input  bypass 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: 	15 
    -- CP-element group 16: successors 
    -- CP-element group 16: 	19 
    -- CP-element group 16:  members (3) 
      -- CP-element group 16: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_3_1560_update_completed_
      -- CP-element group 16: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_3_1560_Update/$exit
      -- CP-element group 16: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_wp_3_1560_Update/ack
      -- 
    ack_216_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 16_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_debug_wp_3_1560_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(16)); -- 
    -- CP-element group 17:  transition  input  output  bypass 
    -- CP-element group 17: predecessors 
    -- CP-element group 17: 	0 
    -- CP-element group 17: successors 
    -- CP-element group 17: 	18 
    -- CP-element group 17:  members (6) 
      -- CP-element group 17: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_dbg_interrupt_1563_sample_completed_
      -- CP-element group 17: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_dbg_interrupt_1563_update_start_
      -- CP-element group 17: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_dbg_interrupt_1563_Sample/$exit
      -- CP-element group 17: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_dbg_interrupt_1563_Sample/ack
      -- CP-element group 17: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_dbg_interrupt_1563_Update/$entry
      -- CP-element group 17: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_dbg_interrupt_1563_Update/req
      -- 
    ack_225_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 17_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_debug_dbg_interrupt_1563_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(17)); -- 
    req_229_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_229_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(17), ack => WPIPE_debug_dbg_interrupt_1563_inst_req_1); -- 
    -- CP-element group 18:  transition  input  bypass 
    -- CP-element group 18: predecessors 
    -- CP-element group 18: 	17 
    -- CP-element group 18: successors 
    -- CP-element group 18: 	19 
    -- CP-element group 18:  members (3) 
      -- CP-element group 18: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_dbg_interrupt_1563_update_completed_
      -- CP-element group 18: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_dbg_interrupt_1563_Update/$exit
      -- CP-element group 18: 	 assign_stmt_1541_to_assign_stmt_1565/WPIPE_debug_dbg_interrupt_1563_Update/ack
      -- 
    ack_230_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 18_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_debug_dbg_interrupt_1563_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(18)); -- 
    -- CP-element group 19:  branch  join  transition  place  bypass 
    -- CP-element group 19: predecessors 
    -- CP-element group 19: 	2 
    -- CP-element group 19: 	4 
    -- CP-element group 19: 	6 
    -- CP-element group 19: 	8 
    -- CP-element group 19: 	10 
    -- CP-element group 19: 	12 
    -- CP-element group 19: 	14 
    -- CP-element group 19: 	16 
    -- CP-element group 19: 	18 
    -- CP-element group 19: successors 
    -- CP-element group 19: 	143 
    -- CP-element group 19:  members (8) 
      -- CP-element group 19: 	 assign_stmt_1541_to_assign_stmt_1565/$exit
      -- CP-element group 19: 	 branch_block_stmt_1566/$entry
      -- CP-element group 19: 	 branch_block_stmt_1566/branch_block_stmt_1566__entry__
      -- CP-element group 19: 	 branch_block_stmt_1566/merge_stmt_1567__entry__
      -- CP-element group 19: 	 branch_block_stmt_1566/merge_stmt_1567_dead_link/$entry
      -- CP-element group 19: 	 branch_block_stmt_1566/merge_stmt_1567__entry___PhiReq/$entry
      -- CP-element group 19: 	 branch_block_stmt_1566/merge_stmt_1567__entry___PhiReq/phi_stmt_1568/$entry
      -- CP-element group 19: 	 branch_block_stmt_1566/merge_stmt_1567__entry___PhiReq/phi_stmt_1568/phi_stmt_1568_sources/$entry
      -- 
    debug_unit_ccu_daemon_cp_element_group_19: block -- 
      constant place_capacities: IntegerArray(0 to 8) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1);
      constant place_markings: IntegerArray(0 to 8)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0);
      constant place_delays: IntegerArray(0 to 8) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0);
      constant joinName: string(1 to 41) := "debug_unit_ccu_daemon_cp_element_group_19"; 
      signal preds: BooleanArray(1 to 9); -- 
    begin -- 
      preds <= debug_unit_ccu_daemon_CP_99_elements(2) & debug_unit_ccu_daemon_CP_99_elements(4) & debug_unit_ccu_daemon_CP_99_elements(6) & debug_unit_ccu_daemon_CP_99_elements(8) & debug_unit_ccu_daemon_CP_99_elements(10) & debug_unit_ccu_daemon_CP_99_elements(12) & debug_unit_ccu_daemon_CP_99_elements(14) & debug_unit_ccu_daemon_CP_99_elements(16) & debug_unit_ccu_daemon_CP_99_elements(18);
      gj_debug_unit_ccu_daemon_cp_element_group_19 : generic_join generic map(name => joinName, number_of_predecessors => 9, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => debug_unit_ccu_daemon_CP_99_elements(19), clk => clk, reset => reset); --
    end block;
    -- CP-element group 20:  transition  place  bypass 
    -- CP-element group 20: predecessors 
    -- CP-element group 20: successors 
    -- CP-element group 20:  members (3) 
      -- CP-element group 20: 	 $exit
      -- CP-element group 20: 	 branch_block_stmt_1566/$exit
      -- CP-element group 20: 	 branch_block_stmt_1566/branch_block_stmt_1566__exit__
      -- 
    debug_unit_ccu_daemon_CP_99_elements(20) <= false; 
    -- CP-element group 21:  transition  input  bypass 
    -- CP-element group 21: predecessors 
    -- CP-element group 21: 	148 
    -- CP-element group 21: successors 
    -- CP-element group 21:  members (3) 
      -- CP-element group 21: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/call_stmt_1575_sample_completed_
      -- CP-element group 21: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/call_stmt_1575_Sample/$exit
      -- CP-element group 21: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/call_stmt_1575_Sample/cra
      -- 
    cra_252_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 21_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_1575_call_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(21)); -- 
    -- CP-element group 22:  fork  transition  input  output  bypass 
    -- CP-element group 22: predecessors 
    -- CP-element group 22: 	148 
    -- CP-element group 22: successors 
    -- CP-element group 22: 	89 
    -- CP-element group 22: 	23 
    -- CP-element group 22: 	25 
    -- CP-element group 22: 	27 
    -- CP-element group 22:  members (12) 
      -- CP-element group 22: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/call_stmt_1575_update_completed_
      -- CP-element group 22: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/call_stmt_1575_Update/$exit
      -- CP-element group 22: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/call_stmt_1575_Update/cca
      -- CP-element group 22: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/slice_1578_sample_start_
      -- CP-element group 22: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/slice_1578_Sample/$entry
      -- CP-element group 22: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/slice_1578_Sample/rr
      -- CP-element group 22: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/slice_1582_sample_start_
      -- CP-element group 22: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/slice_1582_Sample/$entry
      -- CP-element group 22: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/slice_1582_Sample/rr
      -- CP-element group 22: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/slice_1586_sample_start_
      -- CP-element group 22: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/slice_1586_Sample/$entry
      -- CP-element group 22: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/slice_1586_Sample/rr
      -- 
    cca_257_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 22_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_1575_call_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(22)); -- 
    rr_265_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_265_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(22), ack => slice_1578_inst_req_0); -- 
    rr_279_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_279_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(22), ack => slice_1582_inst_req_0); -- 
    rr_293_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_293_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(22), ack => slice_1586_inst_req_0); -- 
    -- CP-element group 23:  transition  input  bypass 
    -- CP-element group 23: predecessors 
    -- CP-element group 23: 	22 
    -- CP-element group 23: successors 
    -- CP-element group 23:  members (3) 
      -- CP-element group 23: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/slice_1578_sample_completed_
      -- CP-element group 23: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/slice_1578_Sample/$exit
      -- CP-element group 23: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/slice_1578_Sample/ra
      -- 
    ra_266_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 23_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => slice_1578_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(23)); -- 
    -- CP-element group 24:  fork  transition  input  output  bypass 
    -- CP-element group 24: predecessors 
    -- CP-element group 24: 	148 
    -- CP-element group 24: successors 
    -- CP-element group 24: 	37 
    -- CP-element group 24: 	35 
    -- CP-element group 24: 	29 
    -- CP-element group 24: 	31 
    -- CP-element group 24: 	33 
    -- CP-element group 24:  members (18) 
      -- CP-element group 24: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/slice_1578_update_completed_
      -- CP-element group 24: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/slice_1578_Update/$exit
      -- CP-element group 24: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/slice_1578_Update/ca
      -- CP-element group 24: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1591_sample_start_
      -- CP-element group 24: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1591_Sample/$entry
      -- CP-element group 24: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1591_Sample/rr
      -- CP-element group 24: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1596_sample_start_
      -- CP-element group 24: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1596_Sample/$entry
      -- CP-element group 24: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1596_Sample/rr
      -- CP-element group 24: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1601_sample_start_
      -- CP-element group 24: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1601_Sample/$entry
      -- CP-element group 24: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1601_Sample/rr
      -- CP-element group 24: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1606_sample_start_
      -- CP-element group 24: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1606_Sample/$entry
      -- CP-element group 24: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1606_Sample/rr
      -- CP-element group 24: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1611_sample_start_
      -- CP-element group 24: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1611_Sample/$entry
      -- CP-element group 24: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1611_Sample/rr
      -- 
    ca_271_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 24_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => slice_1578_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(24)); -- 
    rr_349_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_349_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(24), ack => EQ_u3_u1_1606_inst_req_0); -- 
    rr_363_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_363_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(24), ack => EQ_u3_u1_1611_inst_req_0); -- 
    rr_307_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_307_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(24), ack => EQ_u3_u1_1591_inst_req_0); -- 
    rr_321_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_321_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(24), ack => EQ_u3_u1_1596_inst_req_0); -- 
    rr_335_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_335_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(24), ack => EQ_u3_u1_1601_inst_req_0); -- 
    -- CP-element group 25:  transition  input  bypass 
    -- CP-element group 25: predecessors 
    -- CP-element group 25: 	22 
    -- CP-element group 25: successors 
    -- CP-element group 25:  members (3) 
      -- CP-element group 25: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/slice_1582_sample_completed_
      -- CP-element group 25: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/slice_1582_Sample/$exit
      -- CP-element group 25: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/slice_1582_Sample/ra
      -- 
    ra_280_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 25_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => slice_1582_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(25)); -- 
    -- CP-element group 26:  fork  transition  input  bypass 
    -- CP-element group 26: predecessors 
    -- CP-element group 26: 	148 
    -- CP-element group 26: successors 
    -- CP-element group 26: 	128 
    -- CP-element group 26: 	134 
    -- CP-element group 26: 	122 
    -- CP-element group 26: 	116 
    -- CP-element group 26:  members (3) 
      -- CP-element group 26: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/slice_1582_update_completed_
      -- CP-element group 26: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/slice_1582_Update/$exit
      -- CP-element group 26: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/slice_1582_Update/ca
      -- 
    ca_285_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 26_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => slice_1582_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(26)); -- 
    -- CP-element group 27:  transition  input  bypass 
    -- CP-element group 27: predecessors 
    -- CP-element group 27: 	22 
    -- CP-element group 27: successors 
    -- CP-element group 27:  members (3) 
      -- CP-element group 27: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/slice_1586_sample_completed_
      -- CP-element group 27: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/slice_1586_Sample/$exit
      -- CP-element group 27: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/slice_1586_Sample/ra
      -- 
    ra_294_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 27_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => slice_1586_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(27)); -- 
    -- CP-element group 28:  fork  transition  input  output  bypass 
    -- CP-element group 28: predecessors 
    -- CP-element group 28: 	148 
    -- CP-element group 28: successors 
    -- CP-element group 28: 	54 
    -- CP-element group 28: 	50 
    -- CP-element group 28: 	52 
    -- CP-element group 28: 	48 
    -- CP-element group 28:  members (15) 
      -- CP-element group 28: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1649_Sample/rr
      -- CP-element group 28: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1654_Sample/rr
      -- CP-element group 28: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1654_sample_start_
      -- CP-element group 28: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1649_sample_start_
      -- CP-element group 28: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1644_sample_start_
      -- CP-element group 28: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1654_Sample/$entry
      -- CP-element group 28: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1649_Sample/$entry
      -- CP-element group 28: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1644_Sample/rr
      -- CP-element group 28: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1644_Sample/$entry
      -- CP-element group 28: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/slice_1586_update_completed_
      -- CP-element group 28: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/slice_1586_Update/$exit
      -- CP-element group 28: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/slice_1586_Update/ca
      -- CP-element group 28: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1659_Sample/rr
      -- CP-element group 28: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1659_Sample/$entry
      -- CP-element group 28: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1659_sample_start_
      -- 
    ca_299_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 28_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => slice_1586_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(28)); -- 
    rr_447_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_447_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(28), ack => EQ_u2_u1_1649_inst_req_0); -- 
    rr_433_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_433_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(28), ack => EQ_u2_u1_1644_inst_req_0); -- 
    rr_475_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_475_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(28), ack => EQ_u2_u1_1659_inst_req_0); -- 
    rr_461_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_461_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(28), ack => EQ_u2_u1_1654_inst_req_0); -- 
    -- CP-element group 29:  transition  input  bypass 
    -- CP-element group 29: predecessors 
    -- CP-element group 29: 	24 
    -- CP-element group 29: successors 
    -- CP-element group 29:  members (3) 
      -- CP-element group 29: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1591_sample_completed_
      -- CP-element group 29: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1591_Sample/$exit
      -- CP-element group 29: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1591_Sample/ra
      -- 
    ra_308_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 29_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => EQ_u3_u1_1591_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(29)); -- 
    -- CP-element group 30:  fork  transition  input  output  bypass 
    -- CP-element group 30: predecessors 
    -- CP-element group 30: 	148 
    -- CP-element group 30: successors 
    -- CP-element group 30: 	39 
    -- CP-element group 30: 	42 
    -- CP-element group 30: 	46 
    -- CP-element group 30:  members (9) 
      -- CP-element group 30: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/assign_stmt_1640_sample_start_
      -- CP-element group 30: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/assign_stmt_1640_Sample/$entry
      -- CP-element group 30: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/assign_stmt_1640_Sample/req
      -- CP-element group 30: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1591_update_completed_
      -- CP-element group 30: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1591_Update/$exit
      -- CP-element group 30: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1591_Update/ca
      -- CP-element group 30: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1636_sample_start_
      -- CP-element group 30: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1636_Sample/$entry
      -- CP-element group 30: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1636_Sample/rr
      -- 
    ca_313_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 30_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => EQ_u3_u1_1591_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(30)); -- 
    rr_391_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_391_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(30), ack => AND_u1_u1_1636_inst_req_0); -- 
    req_419_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_419_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(30), ack => W_next_prev_intr_1638_inst_req_0); -- 
    -- CP-element group 31:  transition  input  bypass 
    -- CP-element group 31: predecessors 
    -- CP-element group 31: 	24 
    -- CP-element group 31: successors 
    -- CP-element group 31:  members (3) 
      -- CP-element group 31: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1596_sample_completed_
      -- CP-element group 31: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1596_Sample/$exit
      -- CP-element group 31: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1596_Sample/ra
      -- 
    ra_322_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 31_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => EQ_u3_u1_1596_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(31)); -- 
    -- CP-element group 32:  fork  transition  input  bypass 
    -- CP-element group 32: predecessors 
    -- CP-element group 32: 	148 
    -- CP-element group 32: successors 
    -- CP-element group 32: 	39 
    -- CP-element group 32: 	56 
    -- CP-element group 32:  members (3) 
      -- CP-element group 32: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1596_update_completed_
      -- CP-element group 32: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1596_Update/$exit
      -- CP-element group 32: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1596_Update/ca
      -- 
    ca_327_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 32_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => EQ_u3_u1_1596_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(32)); -- 
    -- CP-element group 33:  transition  input  bypass 
    -- CP-element group 33: predecessors 
    -- CP-element group 33: 	24 
    -- CP-element group 33: successors 
    -- CP-element group 33:  members (3) 
      -- CP-element group 33: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1601_sample_completed_
      -- CP-element group 33: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1601_Sample/$exit
      -- CP-element group 33: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1601_Sample/ra
      -- 
    ra_336_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 33_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => EQ_u3_u1_1601_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(33)); -- 
    -- CP-element group 34:  fork  transition  input  bypass 
    -- CP-element group 34: predecessors 
    -- CP-element group 34: 	148 
    -- CP-element group 34: successors 
    -- CP-element group 34: 	39 
    -- CP-element group 34: 	59 
    -- CP-element group 34:  members (3) 
      -- CP-element group 34: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1601_update_completed_
      -- CP-element group 34: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1601_Update/$exit
      -- CP-element group 34: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1601_Update/ca
      -- 
    ca_341_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 34_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => EQ_u3_u1_1601_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(34)); -- 
    -- CP-element group 35:  transition  input  bypass 
    -- CP-element group 35: predecessors 
    -- CP-element group 35: 	24 
    -- CP-element group 35: successors 
    -- CP-element group 35:  members (3) 
      -- CP-element group 35: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1606_sample_completed_
      -- CP-element group 35: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1606_Sample/$exit
      -- CP-element group 35: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1606_Sample/ra
      -- 
    ra_350_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 35_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => EQ_u3_u1_1606_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(35)); -- 
    -- CP-element group 36:  fork  transition  input  bypass 
    -- CP-element group 36: predecessors 
    -- CP-element group 36: 	148 
    -- CP-element group 36: successors 
    -- CP-element group 36: 	39 
    -- CP-element group 36: 	62 
    -- CP-element group 36: 	56 
    -- CP-element group 36:  members (3) 
      -- CP-element group 36: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1606_update_completed_
      -- CP-element group 36: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1606_Update/$exit
      -- CP-element group 36: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1606_Update/ca
      -- 
    ca_355_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 36_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => EQ_u3_u1_1606_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(36)); -- 
    -- CP-element group 37:  transition  input  bypass 
    -- CP-element group 37: predecessors 
    -- CP-element group 37: 	24 
    -- CP-element group 37: successors 
    -- CP-element group 37:  members (3) 
      -- CP-element group 37: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1611_sample_completed_
      -- CP-element group 37: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1611_Sample/$exit
      -- CP-element group 37: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1611_Sample/ra
      -- 
    ra_364_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 37_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => EQ_u3_u1_1611_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(37)); -- 
    -- CP-element group 38:  fork  transition  input  bypass 
    -- CP-element group 38: predecessors 
    -- CP-element group 38: 	148 
    -- CP-element group 38: successors 
    -- CP-element group 38: 	39 
    -- CP-element group 38: 	62 
    -- CP-element group 38: 	59 
    -- CP-element group 38:  members (3) 
      -- CP-element group 38: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1611_update_completed_
      -- CP-element group 38: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1611_Update/$exit
      -- CP-element group 38: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1611_Update/ca
      -- 
    ca_369_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 38_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => EQ_u3_u1_1611_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(38)); -- 
    -- CP-element group 39:  join  transition  output  bypass 
    -- CP-element group 39: predecessors 
    -- CP-element group 39: 	38 
    -- CP-element group 39: 	36 
    -- CP-element group 39: 	34 
    -- CP-element group 39: 	30 
    -- CP-element group 39: 	32 
    -- CP-element group 39: successors 
    -- CP-element group 39: 	40 
    -- CP-element group 39:  members (3) 
      -- CP-element group 39: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1622_sample_start_
      -- CP-element group 39: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1622_Sample/$entry
      -- CP-element group 39: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1622_Sample/rr
      -- 
    rr_377_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_377_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(39), ack => OR_u1_u1_1622_inst_req_0); -- 
    debug_unit_ccu_daemon_cp_element_group_39: block -- 
      constant place_capacities: IntegerArray(0 to 4) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1);
      constant place_markings: IntegerArray(0 to 4)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0);
      constant place_delays: IntegerArray(0 to 4) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0);
      constant joinName: string(1 to 41) := "debug_unit_ccu_daemon_cp_element_group_39"; 
      signal preds: BooleanArray(1 to 5); -- 
    begin -- 
      preds <= debug_unit_ccu_daemon_CP_99_elements(38) & debug_unit_ccu_daemon_CP_99_elements(36) & debug_unit_ccu_daemon_CP_99_elements(34) & debug_unit_ccu_daemon_CP_99_elements(30) & debug_unit_ccu_daemon_CP_99_elements(32);
      gj_debug_unit_ccu_daemon_cp_element_group_39 : generic_join generic map(name => joinName, number_of_predecessors => 5, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => debug_unit_ccu_daemon_CP_99_elements(39), clk => clk, reset => reset); --
    end block;
    -- CP-element group 40:  transition  input  bypass 
    -- CP-element group 40: predecessors 
    -- CP-element group 40: 	39 
    -- CP-element group 40: successors 
    -- CP-element group 40:  members (3) 
      -- CP-element group 40: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1622_sample_completed_
      -- CP-element group 40: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1622_Sample/$exit
      -- CP-element group 40: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1622_Sample/ra
      -- 
    ra_378_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 40_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => OR_u1_u1_1622_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(40)); -- 
    -- CP-element group 41:  transition  input  bypass 
    -- CP-element group 41: predecessors 
    -- CP-element group 41: 	148 
    -- CP-element group 41: successors 
    -- CP-element group 41: 	142 
    -- CP-element group 41:  members (3) 
      -- CP-element group 41: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1622_update_completed_
      -- CP-element group 41: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1622_Update/$exit
      -- CP-element group 41: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1622_Update/ca
      -- 
    ca_383_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 41_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => OR_u1_u1_1622_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(41)); -- 
    -- CP-element group 42:  transition  input  bypass 
    -- CP-element group 42: predecessors 
    -- CP-element group 42: 	30 
    -- CP-element group 42: successors 
    -- CP-element group 42:  members (3) 
      -- CP-element group 42: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1636_sample_completed_
      -- CP-element group 42: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1636_Sample/$exit
      -- CP-element group 42: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1636_Sample/ra
      -- 
    ra_392_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 42_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => AND_u1_u1_1636_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(42)); -- 
    -- CP-element group 43:  transition  input  output  bypass 
    -- CP-element group 43: predecessors 
    -- CP-element group 43: 	148 
    -- CP-element group 43: successors 
    -- CP-element group 43: 	44 
    -- CP-element group 43:  members (6) 
      -- CP-element group 43: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_dbg_interrupt_1632_Sample/req
      -- CP-element group 43: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_dbg_interrupt_1632_Sample/$entry
      -- CP-element group 43: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1636_Update/$exit
      -- CP-element group 43: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1636_Update/ca
      -- CP-element group 43: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_dbg_interrupt_1632_sample_start_
      -- CP-element group 43: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1636_update_completed_
      -- 
    ca_397_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 43_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => AND_u1_u1_1636_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(43)); -- 
    req_405_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_405_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(43), ack => WPIPE_debug_dbg_interrupt_1632_inst_req_0); -- 
    -- CP-element group 44:  transition  input  output  bypass 
    -- CP-element group 44: predecessors 
    -- CP-element group 44: 	43 
    -- CP-element group 44: successors 
    -- CP-element group 44: 	45 
    -- CP-element group 44:  members (6) 
      -- CP-element group 44: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_dbg_interrupt_1632_Sample/$exit
      -- CP-element group 44: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_dbg_interrupt_1632_Update/$entry
      -- CP-element group 44: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_dbg_interrupt_1632_Sample/ack
      -- CP-element group 44: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_dbg_interrupt_1632_Update/req
      -- CP-element group 44: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_dbg_interrupt_1632_sample_completed_
      -- CP-element group 44: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_dbg_interrupt_1632_update_start_
      -- 
    ack_406_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 44_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_debug_dbg_interrupt_1632_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(44)); -- 
    req_410_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_410_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(44), ack => WPIPE_debug_dbg_interrupt_1632_inst_req_1); -- 
    -- CP-element group 45:  transition  input  bypass 
    -- CP-element group 45: predecessors 
    -- CP-element group 45: 	44 
    -- CP-element group 45: successors 
    -- CP-element group 45: 	142 
    -- CP-element group 45:  members (3) 
      -- CP-element group 45: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_dbg_interrupt_1632_Update/$exit
      -- CP-element group 45: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_dbg_interrupt_1632_Update/ack
      -- CP-element group 45: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_dbg_interrupt_1632_update_completed_
      -- 
    ack_411_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 45_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_debug_dbg_interrupt_1632_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(45)); -- 
    -- CP-element group 46:  transition  input  bypass 
    -- CP-element group 46: predecessors 
    -- CP-element group 46: 	30 
    -- CP-element group 46: successors 
    -- CP-element group 46:  members (3) 
      -- CP-element group 46: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/assign_stmt_1640_sample_completed_
      -- CP-element group 46: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/assign_stmt_1640_Sample/$exit
      -- CP-element group 46: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/assign_stmt_1640_Sample/ack
      -- 
    ack_420_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 46_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_next_prev_intr_1638_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(46)); -- 
    -- CP-element group 47:  transition  input  bypass 
    -- CP-element group 47: predecessors 
    -- CP-element group 47: 	148 
    -- CP-element group 47: successors 
    -- CP-element group 47: 	142 
    -- CP-element group 47:  members (3) 
      -- CP-element group 47: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/assign_stmt_1640_Update/ack
      -- CP-element group 47: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/assign_stmt_1640_update_completed_
      -- CP-element group 47: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/assign_stmt_1640_Update/$exit
      -- 
    ack_425_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 47_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_next_prev_intr_1638_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(47)); -- 
    -- CP-element group 48:  transition  input  bypass 
    -- CP-element group 48: predecessors 
    -- CP-element group 48: 	28 
    -- CP-element group 48: successors 
    -- CP-element group 48:  members (3) 
      -- CP-element group 48: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1644_sample_completed_
      -- CP-element group 48: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1644_Sample/ra
      -- CP-element group 48: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1644_Sample/$exit
      -- 
    ra_434_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 48_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => EQ_u2_u1_1644_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(48)); -- 
    -- CP-element group 49:  fork  transition  input  bypass 
    -- CP-element group 49: predecessors 
    -- CP-element group 49: 	148 
    -- CP-element group 49: successors 
    -- CP-element group 49: 	65 
    -- CP-element group 49: 	77 
    -- CP-element group 49:  members (3) 
      -- CP-element group 49: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1644_Update/ca
      -- CP-element group 49: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1644_Update/$exit
      -- CP-element group 49: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1644_update_completed_
      -- 
    ca_439_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 49_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => EQ_u2_u1_1644_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(49)); -- 
    -- CP-element group 50:  transition  input  bypass 
    -- CP-element group 50: predecessors 
    -- CP-element group 50: 	28 
    -- CP-element group 50: successors 
    -- CP-element group 50:  members (3) 
      -- CP-element group 50: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1649_Sample/ra
      -- CP-element group 50: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1649_Sample/$exit
      -- CP-element group 50: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1649_sample_completed_
      -- 
    ra_448_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 50_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => EQ_u2_u1_1649_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(50)); -- 
    -- CP-element group 51:  fork  transition  input  bypass 
    -- CP-element group 51: predecessors 
    -- CP-element group 51: 	148 
    -- CP-element group 51: successors 
    -- CP-element group 51: 	68 
    -- CP-element group 51: 	80 
    -- CP-element group 51:  members (3) 
      -- CP-element group 51: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1649_Update/$exit
      -- CP-element group 51: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1649_Update/ca
      -- CP-element group 51: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1649_update_completed_
      -- 
    ca_453_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 51_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => EQ_u2_u1_1649_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(51)); -- 
    -- CP-element group 52:  transition  input  bypass 
    -- CP-element group 52: predecessors 
    -- CP-element group 52: 	28 
    -- CP-element group 52: successors 
    -- CP-element group 52:  members (3) 
      -- CP-element group 52: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1654_Sample/ra
      -- CP-element group 52: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1654_sample_completed_
      -- CP-element group 52: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1654_Sample/$exit
      -- 
    ra_462_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 52_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => EQ_u2_u1_1654_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(52)); -- 
    -- CP-element group 53:  fork  transition  input  bypass 
    -- CP-element group 53: predecessors 
    -- CP-element group 53: 	148 
    -- CP-element group 53: successors 
    -- CP-element group 53: 	71 
    -- CP-element group 53: 	83 
    -- CP-element group 53:  members (3) 
      -- CP-element group 53: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1654_Update/$exit
      -- CP-element group 53: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1654_update_completed_
      -- CP-element group 53: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1654_Update/ca
      -- 
    ca_467_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 53_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => EQ_u2_u1_1654_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(53)); -- 
    -- CP-element group 54:  transition  input  bypass 
    -- CP-element group 54: predecessors 
    -- CP-element group 54: 	28 
    -- CP-element group 54: successors 
    -- CP-element group 54:  members (3) 
      -- CP-element group 54: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1659_Sample/ra
      -- CP-element group 54: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1659_Sample/$exit
      -- CP-element group 54: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1659_sample_completed_
      -- 
    ra_476_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 54_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => EQ_u2_u1_1659_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(54)); -- 
    -- CP-element group 55:  fork  transition  input  bypass 
    -- CP-element group 55: predecessors 
    -- CP-element group 55: 	148 
    -- CP-element group 55: successors 
    -- CP-element group 55: 	74 
    -- CP-element group 55: 	86 
    -- CP-element group 55:  members (3) 
      -- CP-element group 55: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1659_Update/ca
      -- CP-element group 55: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1659_Update/$exit
      -- CP-element group 55: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1659_update_completed_
      -- 
    ca_481_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 55_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => EQ_u2_u1_1659_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(55)); -- 
    -- CP-element group 56:  join  transition  output  bypass 
    -- CP-element group 56: predecessors 
    -- CP-element group 56: 	36 
    -- CP-element group 56: 	32 
    -- CP-element group 56: successors 
    -- CP-element group 56: 	57 
    -- CP-element group 56:  members (3) 
      -- CP-element group 56: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1664_Sample/rr
      -- CP-element group 56: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1664_Sample/$entry
      -- CP-element group 56: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1664_sample_start_
      -- 
    rr_489_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_489_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(56), ack => OR_u1_u1_1664_inst_req_0); -- 
    debug_unit_ccu_daemon_cp_element_group_56: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 41) := "debug_unit_ccu_daemon_cp_element_group_56"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= debug_unit_ccu_daemon_CP_99_elements(36) & debug_unit_ccu_daemon_CP_99_elements(32);
      gj_debug_unit_ccu_daemon_cp_element_group_56 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => debug_unit_ccu_daemon_CP_99_elements(56), clk => clk, reset => reset); --
    end block;
    -- CP-element group 57:  transition  input  bypass 
    -- CP-element group 57: predecessors 
    -- CP-element group 57: 	56 
    -- CP-element group 57: successors 
    -- CP-element group 57:  members (3) 
      -- CP-element group 57: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1664_Sample/ra
      -- CP-element group 57: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1664_Sample/$exit
      -- CP-element group 57: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1664_sample_completed_
      -- 
    ra_490_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 57_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => OR_u1_u1_1664_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(57)); -- 
    -- CP-element group 58:  fork  transition  input  bypass 
    -- CP-element group 58: predecessors 
    -- CP-element group 58: 	148 
    -- CP-element group 58: successors 
    -- CP-element group 58: 	65 
    -- CP-element group 58: 	74 
    -- CP-element group 58: 	71 
    -- CP-element group 58: 	68 
    -- CP-element group 58:  members (3) 
      -- CP-element group 58: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1664_Update/ca
      -- CP-element group 58: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1664_Update/$exit
      -- CP-element group 58: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1664_update_completed_
      -- 
    ca_495_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 58_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => OR_u1_u1_1664_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(58)); -- 
    -- CP-element group 59:  join  transition  output  bypass 
    -- CP-element group 59: predecessors 
    -- CP-element group 59: 	38 
    -- CP-element group 59: 	34 
    -- CP-element group 59: successors 
    -- CP-element group 59: 	60 
    -- CP-element group 59:  members (3) 
      -- CP-element group 59: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1669_Sample/rr
      -- CP-element group 59: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1669_Sample/$entry
      -- CP-element group 59: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1669_sample_start_
      -- 
    rr_503_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_503_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(59), ack => OR_u1_u1_1669_inst_req_0); -- 
    debug_unit_ccu_daemon_cp_element_group_59: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 41) := "debug_unit_ccu_daemon_cp_element_group_59"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= debug_unit_ccu_daemon_CP_99_elements(38) & debug_unit_ccu_daemon_CP_99_elements(34);
      gj_debug_unit_ccu_daemon_cp_element_group_59 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => debug_unit_ccu_daemon_CP_99_elements(59), clk => clk, reset => reset); --
    end block;
    -- CP-element group 60:  transition  input  bypass 
    -- CP-element group 60: predecessors 
    -- CP-element group 60: 	59 
    -- CP-element group 60: successors 
    -- CP-element group 60:  members (3) 
      -- CP-element group 60: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1669_Sample/ra
      -- CP-element group 60: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1669_Sample/$exit
      -- CP-element group 60: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1669_sample_completed_
      -- 
    ra_504_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 60_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => OR_u1_u1_1669_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(60)); -- 
    -- CP-element group 61:  fork  transition  input  bypass 
    -- CP-element group 61: predecessors 
    -- CP-element group 61: 	148 
    -- CP-element group 61: successors 
    -- CP-element group 61: 	77 
    -- CP-element group 61: 	80 
    -- CP-element group 61: 	83 
    -- CP-element group 61: 	86 
    -- CP-element group 61:  members (3) 
      -- CP-element group 61: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1669_Update/ca
      -- CP-element group 61: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1669_Update/$exit
      -- CP-element group 61: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1669_update_completed_
      -- 
    ca_509_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 61_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => OR_u1_u1_1669_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(61)); -- 
    -- CP-element group 62:  join  transition  output  bypass 
    -- CP-element group 62: predecessors 
    -- CP-element group 62: 	38 
    -- CP-element group 62: 	36 
    -- CP-element group 62: successors 
    -- CP-element group 62: 	63 
    -- CP-element group 62:  members (3) 
      -- CP-element group 62: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1674_Sample/rr
      -- CP-element group 62: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1674_Sample/$entry
      -- CP-element group 62: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1674_sample_start_
      -- 
    rr_517_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_517_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(62), ack => OR_u1_u1_1674_inst_req_0); -- 
    debug_unit_ccu_daemon_cp_element_group_62: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 41) := "debug_unit_ccu_daemon_cp_element_group_62"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= debug_unit_ccu_daemon_CP_99_elements(38) & debug_unit_ccu_daemon_CP_99_elements(36);
      gj_debug_unit_ccu_daemon_cp_element_group_62 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => debug_unit_ccu_daemon_CP_99_elements(62), clk => clk, reset => reset); --
    end block;
    -- CP-element group 63:  transition  input  bypass 
    -- CP-element group 63: predecessors 
    -- CP-element group 63: 	62 
    -- CP-element group 63: successors 
    -- CP-element group 63:  members (3) 
      -- CP-element group 63: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1674_Sample/ra
      -- CP-element group 63: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1674_Sample/$exit
      -- CP-element group 63: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1674_sample_completed_
      -- 
    ra_518_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 63_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => OR_u1_u1_1674_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(63)); -- 
    -- CP-element group 64:  fork  transition  input  bypass 
    -- CP-element group 64: predecessors 
    -- CP-element group 64: 	148 
    -- CP-element group 64: successors 
    -- CP-element group 64: 	89 
    -- CP-element group 64: 	92 
    -- CP-element group 64: 	98 
    -- CP-element group 64: 	104 
    -- CP-element group 64: 	110 
    -- CP-element group 64:  members (3) 
      -- CP-element group 64: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1674_Update/ca
      -- CP-element group 64: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1674_Update/$exit
      -- CP-element group 64: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1674_update_completed_
      -- 
    ca_523_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 64_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => OR_u1_u1_1674_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(64)); -- 
    -- CP-element group 65:  join  transition  output  bypass 
    -- CP-element group 65: predecessors 
    -- CP-element group 65: 	49 
    -- CP-element group 65: 	58 
    -- CP-element group 65: successors 
    -- CP-element group 65: 	66 
    -- CP-element group 65:  members (3) 
      -- CP-element group 65: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1687_sample_start_
      -- CP-element group 65: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1687_Sample/rr
      -- CP-element group 65: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1687_Sample/$entry
      -- 
    rr_531_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_531_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(65), ack => AND_u1_u1_1687_inst_req_0); -- 
    debug_unit_ccu_daemon_cp_element_group_65: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 41) := "debug_unit_ccu_daemon_cp_element_group_65"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= debug_unit_ccu_daemon_CP_99_elements(49) & debug_unit_ccu_daemon_CP_99_elements(58);
      gj_debug_unit_ccu_daemon_cp_element_group_65 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => debug_unit_ccu_daemon_CP_99_elements(65), clk => clk, reset => reset); --
    end block;
    -- CP-element group 66:  transition  input  bypass 
    -- CP-element group 66: predecessors 
    -- CP-element group 66: 	65 
    -- CP-element group 66: successors 
    -- CP-element group 66:  members (3) 
      -- CP-element group 66: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1687_sample_completed_
      -- CP-element group 66: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1687_Sample/ra
      -- CP-element group 66: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1687_Sample/$exit
      -- 
    ra_532_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 66_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => AND_u1_u1_1687_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(66)); -- 
    -- CP-element group 67:  fork  transition  input  bypass 
    -- CP-element group 67: predecessors 
    -- CP-element group 67: 	148 
    -- CP-element group 67: successors 
    -- CP-element group 67: 	92 
    -- CP-element group 67: 	95 
    -- CP-element group 67:  members (3) 
      -- CP-element group 67: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1687_update_completed_
      -- CP-element group 67: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1687_Update/ca
      -- CP-element group 67: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1687_Update/$exit
      -- 
    ca_537_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 67_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => AND_u1_u1_1687_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(67)); -- 
    -- CP-element group 68:  join  transition  output  bypass 
    -- CP-element group 68: predecessors 
    -- CP-element group 68: 	51 
    -- CP-element group 68: 	58 
    -- CP-element group 68: successors 
    -- CP-element group 68: 	69 
    -- CP-element group 68:  members (3) 
      -- CP-element group 68: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1692_Sample/rr
      -- CP-element group 68: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1692_Sample/$entry
      -- CP-element group 68: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1692_sample_start_
      -- 
    rr_545_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_545_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(68), ack => AND_u1_u1_1692_inst_req_0); -- 
    debug_unit_ccu_daemon_cp_element_group_68: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 41) := "debug_unit_ccu_daemon_cp_element_group_68"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= debug_unit_ccu_daemon_CP_99_elements(51) & debug_unit_ccu_daemon_CP_99_elements(58);
      gj_debug_unit_ccu_daemon_cp_element_group_68 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => debug_unit_ccu_daemon_CP_99_elements(68), clk => clk, reset => reset); --
    end block;
    -- CP-element group 69:  transition  input  bypass 
    -- CP-element group 69: predecessors 
    -- CP-element group 69: 	68 
    -- CP-element group 69: successors 
    -- CP-element group 69:  members (3) 
      -- CP-element group 69: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1692_Sample/ra
      -- CP-element group 69: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1692_Sample/$exit
      -- CP-element group 69: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1692_sample_completed_
      -- 
    ra_546_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 69_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => AND_u1_u1_1692_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(69)); -- 
    -- CP-element group 70:  fork  transition  input  bypass 
    -- CP-element group 70: predecessors 
    -- CP-element group 70: 	148 
    -- CP-element group 70: successors 
    -- CP-element group 70: 	98 
    -- CP-element group 70: 	101 
    -- CP-element group 70:  members (3) 
      -- CP-element group 70: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1692_Update/ca
      -- CP-element group 70: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1692_Update/$exit
      -- CP-element group 70: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1692_update_completed_
      -- 
    ca_551_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 70_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => AND_u1_u1_1692_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(70)); -- 
    -- CP-element group 71:  join  transition  output  bypass 
    -- CP-element group 71: predecessors 
    -- CP-element group 71: 	53 
    -- CP-element group 71: 	58 
    -- CP-element group 71: successors 
    -- CP-element group 71: 	72 
    -- CP-element group 71:  members (3) 
      -- CP-element group 71: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1697_sample_start_
      -- CP-element group 71: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1697_Sample/$entry
      -- CP-element group 71: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1697_Sample/rr
      -- 
    rr_559_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_559_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(71), ack => AND_u1_u1_1697_inst_req_0); -- 
    debug_unit_ccu_daemon_cp_element_group_71: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 41) := "debug_unit_ccu_daemon_cp_element_group_71"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= debug_unit_ccu_daemon_CP_99_elements(53) & debug_unit_ccu_daemon_CP_99_elements(58);
      gj_debug_unit_ccu_daemon_cp_element_group_71 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => debug_unit_ccu_daemon_CP_99_elements(71), clk => clk, reset => reset); --
    end block;
    -- CP-element group 72:  transition  input  bypass 
    -- CP-element group 72: predecessors 
    -- CP-element group 72: 	71 
    -- CP-element group 72: successors 
    -- CP-element group 72:  members (3) 
      -- CP-element group 72: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1697_sample_completed_
      -- CP-element group 72: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1697_Sample/$exit
      -- CP-element group 72: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1697_Sample/ra
      -- 
    ra_560_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 72_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => AND_u1_u1_1697_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(72)); -- 
    -- CP-element group 73:  fork  transition  input  bypass 
    -- CP-element group 73: predecessors 
    -- CP-element group 73: 	148 
    -- CP-element group 73: successors 
    -- CP-element group 73: 	104 
    -- CP-element group 73: 	107 
    -- CP-element group 73:  members (3) 
      -- CP-element group 73: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1697_update_completed_
      -- CP-element group 73: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1697_Update/$exit
      -- CP-element group 73: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1697_Update/ca
      -- 
    ca_565_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 73_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => AND_u1_u1_1697_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(73)); -- 
    -- CP-element group 74:  join  transition  output  bypass 
    -- CP-element group 74: predecessors 
    -- CP-element group 74: 	55 
    -- CP-element group 74: 	58 
    -- CP-element group 74: successors 
    -- CP-element group 74: 	75 
    -- CP-element group 74:  members (3) 
      -- CP-element group 74: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1702_Sample/$entry
      -- CP-element group 74: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1702_Sample/rr
      -- CP-element group 74: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1702_sample_start_
      -- 
    rr_573_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_573_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(74), ack => AND_u1_u1_1702_inst_req_0); -- 
    debug_unit_ccu_daemon_cp_element_group_74: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 41) := "debug_unit_ccu_daemon_cp_element_group_74"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= debug_unit_ccu_daemon_CP_99_elements(55) & debug_unit_ccu_daemon_CP_99_elements(58);
      gj_debug_unit_ccu_daemon_cp_element_group_74 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => debug_unit_ccu_daemon_CP_99_elements(74), clk => clk, reset => reset); --
    end block;
    -- CP-element group 75:  transition  input  bypass 
    -- CP-element group 75: predecessors 
    -- CP-element group 75: 	74 
    -- CP-element group 75: successors 
    -- CP-element group 75:  members (3) 
      -- CP-element group 75: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1702_Sample/$exit
      -- CP-element group 75: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1702_Sample/ra
      -- CP-element group 75: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1702_sample_completed_
      -- 
    ra_574_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 75_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => AND_u1_u1_1702_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(75)); -- 
    -- CP-element group 76:  fork  transition  input  bypass 
    -- CP-element group 76: predecessors 
    -- CP-element group 76: 	148 
    -- CP-element group 76: successors 
    -- CP-element group 76: 	110 
    -- CP-element group 76: 	113 
    -- CP-element group 76:  members (3) 
      -- CP-element group 76: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1702_Update/ca
      -- CP-element group 76: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1702_Update/$exit
      -- CP-element group 76: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1702_update_completed_
      -- 
    ca_579_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 76_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => AND_u1_u1_1702_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(76)); -- 
    -- CP-element group 77:  join  transition  output  bypass 
    -- CP-element group 77: predecessors 
    -- CP-element group 77: 	49 
    -- CP-element group 77: 	61 
    -- CP-element group 77: successors 
    -- CP-element group 77: 	78 
    -- CP-element group 77:  members (3) 
      -- CP-element group 77: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1707_Sample/rr
      -- CP-element group 77: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1707_Sample/$entry
      -- CP-element group 77: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1707_sample_start_
      -- 
    rr_587_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_587_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(77), ack => AND_u1_u1_1707_inst_req_0); -- 
    debug_unit_ccu_daemon_cp_element_group_77: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 41) := "debug_unit_ccu_daemon_cp_element_group_77"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= debug_unit_ccu_daemon_CP_99_elements(49) & debug_unit_ccu_daemon_CP_99_elements(61);
      gj_debug_unit_ccu_daemon_cp_element_group_77 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => debug_unit_ccu_daemon_CP_99_elements(77), clk => clk, reset => reset); --
    end block;
    -- CP-element group 78:  transition  input  bypass 
    -- CP-element group 78: predecessors 
    -- CP-element group 78: 	77 
    -- CP-element group 78: successors 
    -- CP-element group 78:  members (3) 
      -- CP-element group 78: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1707_Sample/ra
      -- CP-element group 78: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1707_Sample/$exit
      -- CP-element group 78: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1707_sample_completed_
      -- 
    ra_588_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 78_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => AND_u1_u1_1707_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(78)); -- 
    -- CP-element group 79:  fork  transition  input  bypass 
    -- CP-element group 79: predecessors 
    -- CP-element group 79: 	148 
    -- CP-element group 79: successors 
    -- CP-element group 79: 	116 
    -- CP-element group 79: 	119 
    -- CP-element group 79:  members (3) 
      -- CP-element group 79: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1707_Update/ca
      -- CP-element group 79: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1707_Update/$exit
      -- CP-element group 79: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1707_update_completed_
      -- 
    ca_593_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 79_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => AND_u1_u1_1707_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(79)); -- 
    -- CP-element group 80:  join  transition  output  bypass 
    -- CP-element group 80: predecessors 
    -- CP-element group 80: 	51 
    -- CP-element group 80: 	61 
    -- CP-element group 80: successors 
    -- CP-element group 80: 	81 
    -- CP-element group 80:  members (3) 
      -- CP-element group 80: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1712_Sample/$entry
      -- CP-element group 80: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1712_Sample/rr
      -- CP-element group 80: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1712_sample_start_
      -- 
    rr_601_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_601_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(80), ack => AND_u1_u1_1712_inst_req_0); -- 
    debug_unit_ccu_daemon_cp_element_group_80: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 41) := "debug_unit_ccu_daemon_cp_element_group_80"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= debug_unit_ccu_daemon_CP_99_elements(51) & debug_unit_ccu_daemon_CP_99_elements(61);
      gj_debug_unit_ccu_daemon_cp_element_group_80 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => debug_unit_ccu_daemon_CP_99_elements(80), clk => clk, reset => reset); --
    end block;
    -- CP-element group 81:  transition  input  bypass 
    -- CP-element group 81: predecessors 
    -- CP-element group 81: 	80 
    -- CP-element group 81: successors 
    -- CP-element group 81:  members (3) 
      -- CP-element group 81: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1712_sample_completed_
      -- CP-element group 81: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1712_Sample/ra
      -- CP-element group 81: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1712_Sample/$exit
      -- 
    ra_602_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 81_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => AND_u1_u1_1712_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(81)); -- 
    -- CP-element group 82:  fork  transition  input  bypass 
    -- CP-element group 82: predecessors 
    -- CP-element group 82: 	148 
    -- CP-element group 82: successors 
    -- CP-element group 82: 	122 
    -- CP-element group 82: 	125 
    -- CP-element group 82:  members (3) 
      -- CP-element group 82: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1712_update_completed_
      -- CP-element group 82: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1712_Update/ca
      -- CP-element group 82: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1712_Update/$exit
      -- 
    ca_607_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 82_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => AND_u1_u1_1712_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(82)); -- 
    -- CP-element group 83:  join  transition  output  bypass 
    -- CP-element group 83: predecessors 
    -- CP-element group 83: 	53 
    -- CP-element group 83: 	61 
    -- CP-element group 83: successors 
    -- CP-element group 83: 	84 
    -- CP-element group 83:  members (3) 
      -- CP-element group 83: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1717_Sample/$entry
      -- CP-element group 83: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1717_Sample/rr
      -- CP-element group 83: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1717_sample_start_
      -- 
    rr_615_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_615_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(83), ack => AND_u1_u1_1717_inst_req_0); -- 
    debug_unit_ccu_daemon_cp_element_group_83: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 41) := "debug_unit_ccu_daemon_cp_element_group_83"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= debug_unit_ccu_daemon_CP_99_elements(53) & debug_unit_ccu_daemon_CP_99_elements(61);
      gj_debug_unit_ccu_daemon_cp_element_group_83 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => debug_unit_ccu_daemon_CP_99_elements(83), clk => clk, reset => reset); --
    end block;
    -- CP-element group 84:  transition  input  bypass 
    -- CP-element group 84: predecessors 
    -- CP-element group 84: 	83 
    -- CP-element group 84: successors 
    -- CP-element group 84:  members (3) 
      -- CP-element group 84: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1717_Sample/$exit
      -- CP-element group 84: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1717_Sample/ra
      -- CP-element group 84: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1717_sample_completed_
      -- 
    ra_616_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 84_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => AND_u1_u1_1717_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(84)); -- 
    -- CP-element group 85:  fork  transition  input  bypass 
    -- CP-element group 85: predecessors 
    -- CP-element group 85: 	148 
    -- CP-element group 85: successors 
    -- CP-element group 85: 	128 
    -- CP-element group 85: 	131 
    -- CP-element group 85:  members (3) 
      -- CP-element group 85: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1717_update_completed_
      -- CP-element group 85: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1717_Update/ca
      -- CP-element group 85: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1717_Update/$exit
      -- 
    ca_621_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 85_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => AND_u1_u1_1717_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(85)); -- 
    -- CP-element group 86:  join  transition  output  bypass 
    -- CP-element group 86: predecessors 
    -- CP-element group 86: 	55 
    -- CP-element group 86: 	61 
    -- CP-element group 86: successors 
    -- CP-element group 86: 	87 
    -- CP-element group 86:  members (3) 
      -- CP-element group 86: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1722_Sample/rr
      -- CP-element group 86: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1722_Sample/$entry
      -- CP-element group 86: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1722_sample_start_
      -- 
    rr_629_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_629_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(86), ack => AND_u1_u1_1722_inst_req_0); -- 
    debug_unit_ccu_daemon_cp_element_group_86: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 41) := "debug_unit_ccu_daemon_cp_element_group_86"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= debug_unit_ccu_daemon_CP_99_elements(55) & debug_unit_ccu_daemon_CP_99_elements(61);
      gj_debug_unit_ccu_daemon_cp_element_group_86 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => debug_unit_ccu_daemon_CP_99_elements(86), clk => clk, reset => reset); --
    end block;
    -- CP-element group 87:  transition  input  bypass 
    -- CP-element group 87: predecessors 
    -- CP-element group 87: 	86 
    -- CP-element group 87: successors 
    -- CP-element group 87:  members (3) 
      -- CP-element group 87: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1722_Sample/ra
      -- CP-element group 87: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1722_Sample/$exit
      -- CP-element group 87: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1722_sample_completed_
      -- 
    ra_630_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 87_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => AND_u1_u1_1722_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(87)); -- 
    -- CP-element group 88:  fork  transition  input  bypass 
    -- CP-element group 88: predecessors 
    -- CP-element group 88: 	148 
    -- CP-element group 88: successors 
    -- CP-element group 88: 	134 
    -- CP-element group 88: 	137 
    -- CP-element group 88:  members (3) 
      -- CP-element group 88: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1722_Update/$exit
      -- CP-element group 88: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1722_Update/ca
      -- CP-element group 88: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1722_update_completed_
      -- 
    ca_635_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 88_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => AND_u1_u1_1722_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(88)); -- 
    -- CP-element group 89:  join  transition  output  bypass 
    -- CP-element group 89: predecessors 
    -- CP-element group 89: 	64 
    -- CP-element group 89: 	22 
    -- CP-element group 89: successors 
    -- CP-element group 89: 	90 
    -- CP-element group 89:  members (3) 
      -- CP-element group 89: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/MUX_1728_sample_start_
      -- CP-element group 89: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/MUX_1728_start/req
      -- CP-element group 89: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/MUX_1728_start/$entry
      -- 
    req_643_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_643_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(89), ack => MUX_1728_inst_req_0); -- 
    debug_unit_ccu_daemon_cp_element_group_89: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 41) := "debug_unit_ccu_daemon_cp_element_group_89"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= debug_unit_ccu_daemon_CP_99_elements(64) & debug_unit_ccu_daemon_CP_99_elements(22);
      gj_debug_unit_ccu_daemon_cp_element_group_89 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => debug_unit_ccu_daemon_CP_99_elements(89), clk => clk, reset => reset); --
    end block;
    -- CP-element group 90:  transition  input  bypass 
    -- CP-element group 90: predecessors 
    -- CP-element group 90: 	89 
    -- CP-element group 90: successors 
    -- CP-element group 90:  members (3) 
      -- CP-element group 90: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/MUX_1728_sample_completed_
      -- CP-element group 90: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/MUX_1728_start/ack
      -- CP-element group 90: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/MUX_1728_start/$exit
      -- 
    ack_644_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 90_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => MUX_1728_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(90)); -- 
    -- CP-element group 91:  fork  transition  input  bypass 
    -- CP-element group 91: predecessors 
    -- CP-element group 91: 	148 
    -- CP-element group 91: successors 
    -- CP-element group 91: 	128 
    -- CP-element group 91: 	134 
    -- CP-element group 91: 	122 
    -- CP-element group 91: 	92 
    -- CP-element group 91: 	98 
    -- CP-element group 91: 	104 
    -- CP-element group 91: 	110 
    -- CP-element group 91: 	116 
    -- CP-element group 91:  members (3) 
      -- CP-element group 91: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/MUX_1728_complete/ack
      -- CP-element group 91: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/MUX_1728_complete/$exit
      -- CP-element group 91: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/MUX_1728_update_completed_
      -- 
    ack_649_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 91_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => MUX_1728_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(91)); -- 
    -- CP-element group 92:  join  transition  output  bypass 
    -- CP-element group 92: predecessors 
    -- CP-element group 92: 	64 
    -- CP-element group 92: 	67 
    -- CP-element group 92: 	91 
    -- CP-element group 92: successors 
    -- CP-element group 92: 	93 
    -- CP-element group 92:  members (3) 
      -- CP-element group 92: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1737_sample_start_
      -- CP-element group 92: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1737_Sample/rr
      -- CP-element group 92: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1737_Sample/$entry
      -- 
    rr_657_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_657_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(92), ack => CONCAT_u31_u32_1737_inst_req_0); -- 
    debug_unit_ccu_daemon_cp_element_group_92: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 41) := "debug_unit_ccu_daemon_cp_element_group_92"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= debug_unit_ccu_daemon_CP_99_elements(64) & debug_unit_ccu_daemon_CP_99_elements(67) & debug_unit_ccu_daemon_CP_99_elements(91);
      gj_debug_unit_ccu_daemon_cp_element_group_92 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => debug_unit_ccu_daemon_CP_99_elements(92), clk => clk, reset => reset); --
    end block;
    -- CP-element group 93:  transition  input  bypass 
    -- CP-element group 93: predecessors 
    -- CP-element group 93: 	92 
    -- CP-element group 93: successors 
    -- CP-element group 93:  members (3) 
      -- CP-element group 93: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1737_sample_completed_
      -- CP-element group 93: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1737_Sample/ra
      -- CP-element group 93: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1737_Sample/$exit
      -- 
    ra_658_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 93_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => CONCAT_u31_u32_1737_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(93)); -- 
    -- CP-element group 94:  transition  input  bypass 
    -- CP-element group 94: predecessors 
    -- CP-element group 94: 	148 
    -- CP-element group 94: successors 
    -- CP-element group 94: 	95 
    -- CP-element group 94:  members (3) 
      -- CP-element group 94: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1737_Update/ca
      -- CP-element group 94: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1737_Update/$exit
      -- CP-element group 94: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1737_update_completed_
      -- 
    ca_663_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 94_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => CONCAT_u31_u32_1737_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(94)); -- 
    -- CP-element group 95:  join  transition  output  bypass 
    -- CP-element group 95: predecessors 
    -- CP-element group 95: 	67 
    -- CP-element group 95: 	94 
    -- CP-element group 95: successors 
    -- CP-element group 95: 	96 
    -- CP-element group 95:  members (3) 
      -- CP-element group 95: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_0_1731_Sample/req
      -- CP-element group 95: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_0_1731_Sample/$entry
      -- CP-element group 95: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_0_1731_sample_start_
      -- 
    req_671_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_671_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(95), ack => WPIPE_debug_bp_0_1731_inst_req_0); -- 
    debug_unit_ccu_daemon_cp_element_group_95: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 41) := "debug_unit_ccu_daemon_cp_element_group_95"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= debug_unit_ccu_daemon_CP_99_elements(67) & debug_unit_ccu_daemon_CP_99_elements(94);
      gj_debug_unit_ccu_daemon_cp_element_group_95 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => debug_unit_ccu_daemon_CP_99_elements(95), clk => clk, reset => reset); --
    end block;
    -- CP-element group 96:  transition  input  output  bypass 
    -- CP-element group 96: predecessors 
    -- CP-element group 96: 	95 
    -- CP-element group 96: successors 
    -- CP-element group 96: 	97 
    -- CP-element group 96:  members (6) 
      -- CP-element group 96: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_0_1731_Update/req
      -- CP-element group 96: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_0_1731_Update/$entry
      -- CP-element group 96: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_0_1731_Sample/ack
      -- CP-element group 96: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_0_1731_Sample/$exit
      -- CP-element group 96: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_0_1731_update_start_
      -- CP-element group 96: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_0_1731_sample_completed_
      -- 
    ack_672_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 96_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_debug_bp_0_1731_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(96)); -- 
    req_676_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_676_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(96), ack => WPIPE_debug_bp_0_1731_inst_req_1); -- 
    -- CP-element group 97:  transition  input  bypass 
    -- CP-element group 97: predecessors 
    -- CP-element group 97: 	96 
    -- CP-element group 97: successors 
    -- CP-element group 97: 	142 
    -- CP-element group 97:  members (3) 
      -- CP-element group 97: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_0_1731_Update/ack
      -- CP-element group 97: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_0_1731_Update/$exit
      -- CP-element group 97: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_0_1731_update_completed_
      -- 
    ack_677_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 97_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_debug_bp_0_1731_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(97)); -- 
    -- CP-element group 98:  join  transition  output  bypass 
    -- CP-element group 98: predecessors 
    -- CP-element group 98: 	64 
    -- CP-element group 98: 	70 
    -- CP-element group 98: 	91 
    -- CP-element group 98: successors 
    -- CP-element group 98: 	99 
    -- CP-element group 98:  members (3) 
      -- CP-element group 98: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1746_sample_start_
      -- CP-element group 98: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1746_Sample/$entry
      -- CP-element group 98: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1746_Sample/rr
      -- 
    rr_685_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_685_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(98), ack => CONCAT_u31_u32_1746_inst_req_0); -- 
    debug_unit_ccu_daemon_cp_element_group_98: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 41) := "debug_unit_ccu_daemon_cp_element_group_98"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= debug_unit_ccu_daemon_CP_99_elements(64) & debug_unit_ccu_daemon_CP_99_elements(70) & debug_unit_ccu_daemon_CP_99_elements(91);
      gj_debug_unit_ccu_daemon_cp_element_group_98 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => debug_unit_ccu_daemon_CP_99_elements(98), clk => clk, reset => reset); --
    end block;
    -- CP-element group 99:  transition  input  bypass 
    -- CP-element group 99: predecessors 
    -- CP-element group 99: 	98 
    -- CP-element group 99: successors 
    -- CP-element group 99:  members (3) 
      -- CP-element group 99: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1746_Sample/ra
      -- CP-element group 99: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1746_Sample/$exit
      -- CP-element group 99: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1746_sample_completed_
      -- 
    ra_686_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 99_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => CONCAT_u31_u32_1746_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(99)); -- 
    -- CP-element group 100:  transition  input  bypass 
    -- CP-element group 100: predecessors 
    -- CP-element group 100: 	148 
    -- CP-element group 100: successors 
    -- CP-element group 100: 	101 
    -- CP-element group 100:  members (3) 
      -- CP-element group 100: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1746_Update/$exit
      -- CP-element group 100: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1746_update_completed_
      -- CP-element group 100: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1746_Update/ca
      -- 
    ca_691_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 100_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => CONCAT_u31_u32_1746_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(100)); -- 
    -- CP-element group 101:  join  transition  output  bypass 
    -- CP-element group 101: predecessors 
    -- CP-element group 101: 	70 
    -- CP-element group 101: 	100 
    -- CP-element group 101: successors 
    -- CP-element group 101: 	102 
    -- CP-element group 101:  members (3) 
      -- CP-element group 101: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_1_1740_Sample/req
      -- CP-element group 101: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_1_1740_Sample/$entry
      -- CP-element group 101: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_1_1740_sample_start_
      -- 
    req_699_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_699_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(101), ack => WPIPE_debug_bp_1_1740_inst_req_0); -- 
    debug_unit_ccu_daemon_cp_element_group_101: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 42) := "debug_unit_ccu_daemon_cp_element_group_101"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= debug_unit_ccu_daemon_CP_99_elements(70) & debug_unit_ccu_daemon_CP_99_elements(100);
      gj_debug_unit_ccu_daemon_cp_element_group_101 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => debug_unit_ccu_daemon_CP_99_elements(101), clk => clk, reset => reset); --
    end block;
    -- CP-element group 102:  transition  input  output  bypass 
    -- CP-element group 102: predecessors 
    -- CP-element group 102: 	101 
    -- CP-element group 102: successors 
    -- CP-element group 102: 	103 
    -- CP-element group 102:  members (6) 
      -- CP-element group 102: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_1_1740_Update/$entry
      -- CP-element group 102: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_1_1740_Update/req
      -- CP-element group 102: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_1_1740_Sample/$exit
      -- CP-element group 102: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_1_1740_Sample/ack
      -- CP-element group 102: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_1_1740_update_start_
      -- CP-element group 102: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_1_1740_sample_completed_
      -- 
    ack_700_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 102_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_debug_bp_1_1740_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(102)); -- 
    req_704_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_704_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(102), ack => WPIPE_debug_bp_1_1740_inst_req_1); -- 
    -- CP-element group 103:  transition  input  bypass 
    -- CP-element group 103: predecessors 
    -- CP-element group 103: 	102 
    -- CP-element group 103: successors 
    -- CP-element group 103: 	142 
    -- CP-element group 103:  members (3) 
      -- CP-element group 103: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_1_1740_Update/$exit
      -- CP-element group 103: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_1_1740_Update/ack
      -- CP-element group 103: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_1_1740_update_completed_
      -- 
    ack_705_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 103_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_debug_bp_1_1740_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(103)); -- 
    -- CP-element group 104:  join  transition  output  bypass 
    -- CP-element group 104: predecessors 
    -- CP-element group 104: 	64 
    -- CP-element group 104: 	73 
    -- CP-element group 104: 	91 
    -- CP-element group 104: successors 
    -- CP-element group 104: 	105 
    -- CP-element group 104:  members (3) 
      -- CP-element group 104: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1755_sample_start_
      -- CP-element group 104: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1755_Sample/rr
      -- CP-element group 104: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1755_Sample/$entry
      -- 
    rr_713_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_713_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(104), ack => CONCAT_u31_u32_1755_inst_req_0); -- 
    debug_unit_ccu_daemon_cp_element_group_104: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 42) := "debug_unit_ccu_daemon_cp_element_group_104"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= debug_unit_ccu_daemon_CP_99_elements(64) & debug_unit_ccu_daemon_CP_99_elements(73) & debug_unit_ccu_daemon_CP_99_elements(91);
      gj_debug_unit_ccu_daemon_cp_element_group_104 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => debug_unit_ccu_daemon_CP_99_elements(104), clk => clk, reset => reset); --
    end block;
    -- CP-element group 105:  transition  input  bypass 
    -- CP-element group 105: predecessors 
    -- CP-element group 105: 	104 
    -- CP-element group 105: successors 
    -- CP-element group 105:  members (3) 
      -- CP-element group 105: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1755_sample_completed_
      -- CP-element group 105: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1755_Sample/ra
      -- CP-element group 105: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1755_Sample/$exit
      -- 
    ra_714_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 105_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => CONCAT_u31_u32_1755_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(105)); -- 
    -- CP-element group 106:  transition  input  bypass 
    -- CP-element group 106: predecessors 
    -- CP-element group 106: 	148 
    -- CP-element group 106: successors 
    -- CP-element group 106: 	107 
    -- CP-element group 106:  members (3) 
      -- CP-element group 106: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1755_update_completed_
      -- CP-element group 106: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1755_Update/$exit
      -- CP-element group 106: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1755_Update/ca
      -- 
    ca_719_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 106_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => CONCAT_u31_u32_1755_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(106)); -- 
    -- CP-element group 107:  join  transition  output  bypass 
    -- CP-element group 107: predecessors 
    -- CP-element group 107: 	73 
    -- CP-element group 107: 	106 
    -- CP-element group 107: successors 
    -- CP-element group 107: 	108 
    -- CP-element group 107:  members (3) 
      -- CP-element group 107: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_2_1749_sample_start_
      -- CP-element group 107: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_2_1749_Sample/$entry
      -- CP-element group 107: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_2_1749_Sample/req
      -- 
    req_727_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_727_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(107), ack => WPIPE_debug_bp_2_1749_inst_req_0); -- 
    debug_unit_ccu_daemon_cp_element_group_107: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 42) := "debug_unit_ccu_daemon_cp_element_group_107"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= debug_unit_ccu_daemon_CP_99_elements(73) & debug_unit_ccu_daemon_CP_99_elements(106);
      gj_debug_unit_ccu_daemon_cp_element_group_107 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => debug_unit_ccu_daemon_CP_99_elements(107), clk => clk, reset => reset); --
    end block;
    -- CP-element group 108:  transition  input  output  bypass 
    -- CP-element group 108: predecessors 
    -- CP-element group 108: 	107 
    -- CP-element group 108: successors 
    -- CP-element group 108: 	109 
    -- CP-element group 108:  members (6) 
      -- CP-element group 108: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_2_1749_Update/req
      -- CP-element group 108: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_2_1749_Update/$entry
      -- CP-element group 108: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_2_1749_sample_completed_
      -- CP-element group 108: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_2_1749_update_start_
      -- CP-element group 108: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_2_1749_Sample/ack
      -- CP-element group 108: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_2_1749_Sample/$exit
      -- 
    ack_728_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 108_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_debug_bp_2_1749_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(108)); -- 
    req_732_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_732_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(108), ack => WPIPE_debug_bp_2_1749_inst_req_1); -- 
    -- CP-element group 109:  transition  input  bypass 
    -- CP-element group 109: predecessors 
    -- CP-element group 109: 	108 
    -- CP-element group 109: successors 
    -- CP-element group 109: 	142 
    -- CP-element group 109:  members (3) 
      -- CP-element group 109: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_2_1749_Update/ack
      -- CP-element group 109: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_2_1749_Update/$exit
      -- CP-element group 109: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_2_1749_update_completed_
      -- 
    ack_733_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 109_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_debug_bp_2_1749_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(109)); -- 
    -- CP-element group 110:  join  transition  output  bypass 
    -- CP-element group 110: predecessors 
    -- CP-element group 110: 	64 
    -- CP-element group 110: 	76 
    -- CP-element group 110: 	91 
    -- CP-element group 110: successors 
    -- CP-element group 110: 	111 
    -- CP-element group 110:  members (3) 
      -- CP-element group 110: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1764_Sample/$entry
      -- CP-element group 110: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1764_Sample/rr
      -- CP-element group 110: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1764_sample_start_
      -- 
    rr_741_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_741_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(110), ack => CONCAT_u31_u32_1764_inst_req_0); -- 
    debug_unit_ccu_daemon_cp_element_group_110: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 42) := "debug_unit_ccu_daemon_cp_element_group_110"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= debug_unit_ccu_daemon_CP_99_elements(64) & debug_unit_ccu_daemon_CP_99_elements(76) & debug_unit_ccu_daemon_CP_99_elements(91);
      gj_debug_unit_ccu_daemon_cp_element_group_110 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => debug_unit_ccu_daemon_CP_99_elements(110), clk => clk, reset => reset); --
    end block;
    -- CP-element group 111:  transition  input  bypass 
    -- CP-element group 111: predecessors 
    -- CP-element group 111: 	110 
    -- CP-element group 111: successors 
    -- CP-element group 111:  members (3) 
      -- CP-element group 111: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1764_Sample/$exit
      -- CP-element group 111: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1764_sample_completed_
      -- CP-element group 111: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1764_Sample/ra
      -- 
    ra_742_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 111_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => CONCAT_u31_u32_1764_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(111)); -- 
    -- CP-element group 112:  transition  input  bypass 
    -- CP-element group 112: predecessors 
    -- CP-element group 112: 	148 
    -- CP-element group 112: successors 
    -- CP-element group 112: 	113 
    -- CP-element group 112:  members (3) 
      -- CP-element group 112: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1764_Update/$exit
      -- CP-element group 112: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1764_Update/ca
      -- CP-element group 112: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1764_update_completed_
      -- 
    ca_747_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 112_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => CONCAT_u31_u32_1764_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(112)); -- 
    -- CP-element group 113:  join  transition  output  bypass 
    -- CP-element group 113: predecessors 
    -- CP-element group 113: 	76 
    -- CP-element group 113: 	112 
    -- CP-element group 113: successors 
    -- CP-element group 113: 	114 
    -- CP-element group 113:  members (3) 
      -- CP-element group 113: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_3_1758_Sample/$entry
      -- CP-element group 113: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_3_1758_Sample/req
      -- CP-element group 113: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_3_1758_sample_start_
      -- 
    req_755_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_755_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(113), ack => WPIPE_debug_bp_3_1758_inst_req_0); -- 
    debug_unit_ccu_daemon_cp_element_group_113: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 42) := "debug_unit_ccu_daemon_cp_element_group_113"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= debug_unit_ccu_daemon_CP_99_elements(76) & debug_unit_ccu_daemon_CP_99_elements(112);
      gj_debug_unit_ccu_daemon_cp_element_group_113 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => debug_unit_ccu_daemon_CP_99_elements(113), clk => clk, reset => reset); --
    end block;
    -- CP-element group 114:  transition  input  output  bypass 
    -- CP-element group 114: predecessors 
    -- CP-element group 114: 	113 
    -- CP-element group 114: successors 
    -- CP-element group 114: 	115 
    -- CP-element group 114:  members (6) 
      -- CP-element group 114: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_3_1758_Sample/$exit
      -- CP-element group 114: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_3_1758_Sample/ack
      -- CP-element group 114: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_3_1758_update_start_
      -- CP-element group 114: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_3_1758_sample_completed_
      -- CP-element group 114: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_3_1758_Update/$entry
      -- CP-element group 114: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_3_1758_Update/req
      -- 
    ack_756_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 114_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_debug_bp_3_1758_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(114)); -- 
    req_760_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_760_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(114), ack => WPIPE_debug_bp_3_1758_inst_req_1); -- 
    -- CP-element group 115:  transition  input  bypass 
    -- CP-element group 115: predecessors 
    -- CP-element group 115: 	114 
    -- CP-element group 115: successors 
    -- CP-element group 115: 	142 
    -- CP-element group 115:  members (3) 
      -- CP-element group 115: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_3_1758_update_completed_
      -- CP-element group 115: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_3_1758_Update/ack
      -- CP-element group 115: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_bp_3_1758_Update/$exit
      -- 
    ack_761_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 115_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_debug_bp_3_1758_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(115)); -- 
    -- CP-element group 116:  join  transition  output  bypass 
    -- CP-element group 116: predecessors 
    -- CP-element group 116: 	79 
    -- CP-element group 116: 	91 
    -- CP-element group 116: 	26 
    -- CP-element group 116: successors 
    -- CP-element group 116: 	117 
    -- CP-element group 116:  members (3) 
      -- CP-element group 116: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1771_Sample/$entry
      -- CP-element group 116: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1771_Sample/rr
      -- CP-element group 116: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1771_sample_start_
      -- 
    rr_769_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_769_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(116), ack => CONCAT_u30_u32_1771_inst_req_0); -- 
    debug_unit_ccu_daemon_cp_element_group_116: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 42) := "debug_unit_ccu_daemon_cp_element_group_116"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= debug_unit_ccu_daemon_CP_99_elements(79) & debug_unit_ccu_daemon_CP_99_elements(91) & debug_unit_ccu_daemon_CP_99_elements(26);
      gj_debug_unit_ccu_daemon_cp_element_group_116 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => debug_unit_ccu_daemon_CP_99_elements(116), clk => clk, reset => reset); --
    end block;
    -- CP-element group 117:  transition  input  bypass 
    -- CP-element group 117: predecessors 
    -- CP-element group 117: 	116 
    -- CP-element group 117: successors 
    -- CP-element group 117:  members (3) 
      -- CP-element group 117: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1771_Sample/$exit
      -- CP-element group 117: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1771_Sample/ra
      -- CP-element group 117: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1771_sample_completed_
      -- 
    ra_770_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 117_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => CONCAT_u30_u32_1771_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(117)); -- 
    -- CP-element group 118:  transition  input  bypass 
    -- CP-element group 118: predecessors 
    -- CP-element group 118: 	148 
    -- CP-element group 118: successors 
    -- CP-element group 118: 	119 
    -- CP-element group 118:  members (3) 
      -- CP-element group 118: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1771_Update/$exit
      -- CP-element group 118: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1771_Update/ca
      -- CP-element group 118: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1771_update_completed_
      -- 
    ca_775_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 118_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => CONCAT_u30_u32_1771_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(118)); -- 
    -- CP-element group 119:  join  transition  output  bypass 
    -- CP-element group 119: predecessors 
    -- CP-element group 119: 	79 
    -- CP-element group 119: 	118 
    -- CP-element group 119: successors 
    -- CP-element group 119: 	120 
    -- CP-element group 119:  members (3) 
      -- CP-element group 119: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_0_1767_sample_start_
      -- CP-element group 119: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_0_1767_Sample/$entry
      -- CP-element group 119: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_0_1767_Sample/req
      -- 
    req_783_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_783_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(119), ack => WPIPE_debug_wp_0_1767_inst_req_0); -- 
    debug_unit_ccu_daemon_cp_element_group_119: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 42) := "debug_unit_ccu_daemon_cp_element_group_119"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= debug_unit_ccu_daemon_CP_99_elements(79) & debug_unit_ccu_daemon_CP_99_elements(118);
      gj_debug_unit_ccu_daemon_cp_element_group_119 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => debug_unit_ccu_daemon_CP_99_elements(119), clk => clk, reset => reset); --
    end block;
    -- CP-element group 120:  transition  input  output  bypass 
    -- CP-element group 120: predecessors 
    -- CP-element group 120: 	119 
    -- CP-element group 120: successors 
    -- CP-element group 120: 	121 
    -- CP-element group 120:  members (6) 
      -- CP-element group 120: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_0_1767_Update/$entry
      -- CP-element group 120: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_0_1767_Sample/ack
      -- CP-element group 120: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_0_1767_sample_completed_
      -- CP-element group 120: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_0_1767_update_start_
      -- CP-element group 120: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_0_1767_Update/req
      -- CP-element group 120: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_0_1767_Sample/$exit
      -- 
    ack_784_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 120_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_debug_wp_0_1767_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(120)); -- 
    req_788_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_788_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(120), ack => WPIPE_debug_wp_0_1767_inst_req_1); -- 
    -- CP-element group 121:  transition  input  bypass 
    -- CP-element group 121: predecessors 
    -- CP-element group 121: 	120 
    -- CP-element group 121: successors 
    -- CP-element group 121: 	142 
    -- CP-element group 121:  members (3) 
      -- CP-element group 121: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_0_1767_Update/$exit
      -- CP-element group 121: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_0_1767_update_completed_
      -- CP-element group 121: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_0_1767_Update/ack
      -- 
    ack_789_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 121_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_debug_wp_0_1767_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(121)); -- 
    -- CP-element group 122:  join  transition  output  bypass 
    -- CP-element group 122: predecessors 
    -- CP-element group 122: 	82 
    -- CP-element group 122: 	91 
    -- CP-element group 122: 	26 
    -- CP-element group 122: successors 
    -- CP-element group 122: 	123 
    -- CP-element group 122:  members (3) 
      -- CP-element group 122: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1778_sample_start_
      -- CP-element group 122: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1778_Sample/$entry
      -- CP-element group 122: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1778_Sample/rr
      -- 
    rr_797_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_797_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(122), ack => CONCAT_u30_u32_1778_inst_req_0); -- 
    debug_unit_ccu_daemon_cp_element_group_122: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 42) := "debug_unit_ccu_daemon_cp_element_group_122"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= debug_unit_ccu_daemon_CP_99_elements(82) & debug_unit_ccu_daemon_CP_99_elements(91) & debug_unit_ccu_daemon_CP_99_elements(26);
      gj_debug_unit_ccu_daemon_cp_element_group_122 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => debug_unit_ccu_daemon_CP_99_elements(122), clk => clk, reset => reset); --
    end block;
    -- CP-element group 123:  transition  input  bypass 
    -- CP-element group 123: predecessors 
    -- CP-element group 123: 	122 
    -- CP-element group 123: successors 
    -- CP-element group 123:  members (3) 
      -- CP-element group 123: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1778_sample_completed_
      -- CP-element group 123: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1778_Sample/ra
      -- CP-element group 123: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1778_Sample/$exit
      -- 
    ra_798_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 123_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => CONCAT_u30_u32_1778_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(123)); -- 
    -- CP-element group 124:  transition  input  bypass 
    -- CP-element group 124: predecessors 
    -- CP-element group 124: 	148 
    -- CP-element group 124: successors 
    -- CP-element group 124: 	125 
    -- CP-element group 124:  members (3) 
      -- CP-element group 124: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1778_update_completed_
      -- CP-element group 124: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1778_Update/ca
      -- CP-element group 124: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1778_Update/$exit
      -- 
    ca_803_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 124_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => CONCAT_u30_u32_1778_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(124)); -- 
    -- CP-element group 125:  join  transition  output  bypass 
    -- CP-element group 125: predecessors 
    -- CP-element group 125: 	82 
    -- CP-element group 125: 	124 
    -- CP-element group 125: successors 
    -- CP-element group 125: 	126 
    -- CP-element group 125:  members (3) 
      -- CP-element group 125: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_1_1774_Sample/$entry
      -- CP-element group 125: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_1_1774_sample_start_
      -- CP-element group 125: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_1_1774_Sample/req
      -- 
    req_811_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_811_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(125), ack => WPIPE_debug_wp_1_1774_inst_req_0); -- 
    debug_unit_ccu_daemon_cp_element_group_125: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 42) := "debug_unit_ccu_daemon_cp_element_group_125"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= debug_unit_ccu_daemon_CP_99_elements(82) & debug_unit_ccu_daemon_CP_99_elements(124);
      gj_debug_unit_ccu_daemon_cp_element_group_125 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => debug_unit_ccu_daemon_CP_99_elements(125), clk => clk, reset => reset); --
    end block;
    -- CP-element group 126:  transition  input  output  bypass 
    -- CP-element group 126: predecessors 
    -- CP-element group 126: 	125 
    -- CP-element group 126: successors 
    -- CP-element group 126: 	127 
    -- CP-element group 126:  members (6) 
      -- CP-element group 126: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_1_1774_update_start_
      -- CP-element group 126: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_1_1774_sample_completed_
      -- CP-element group 126: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_1_1774_Update/$entry
      -- CP-element group 126: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_1_1774_Sample/ack
      -- CP-element group 126: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_1_1774_Update/req
      -- CP-element group 126: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_1_1774_Sample/$exit
      -- 
    ack_812_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 126_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_debug_wp_1_1774_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(126)); -- 
    req_816_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_816_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(126), ack => WPIPE_debug_wp_1_1774_inst_req_1); -- 
    -- CP-element group 127:  transition  input  bypass 
    -- CP-element group 127: predecessors 
    -- CP-element group 127: 	126 
    -- CP-element group 127: successors 
    -- CP-element group 127: 	142 
    -- CP-element group 127:  members (3) 
      -- CP-element group 127: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_1_1774_update_completed_
      -- CP-element group 127: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_1_1774_Update/ack
      -- CP-element group 127: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_1_1774_Update/$exit
      -- 
    ack_817_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 127_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_debug_wp_1_1774_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(127)); -- 
    -- CP-element group 128:  join  transition  output  bypass 
    -- CP-element group 128: predecessors 
    -- CP-element group 128: 	85 
    -- CP-element group 128: 	91 
    -- CP-element group 128: 	26 
    -- CP-element group 128: successors 
    -- CP-element group 128: 	129 
    -- CP-element group 128:  members (3) 
      -- CP-element group 128: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1785_sample_start_
      -- CP-element group 128: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1785_Sample/rr
      -- CP-element group 128: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1785_Sample/$entry
      -- 
    rr_825_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_825_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(128), ack => CONCAT_u30_u32_1785_inst_req_0); -- 
    debug_unit_ccu_daemon_cp_element_group_128: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 42) := "debug_unit_ccu_daemon_cp_element_group_128"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= debug_unit_ccu_daemon_CP_99_elements(85) & debug_unit_ccu_daemon_CP_99_elements(91) & debug_unit_ccu_daemon_CP_99_elements(26);
      gj_debug_unit_ccu_daemon_cp_element_group_128 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => debug_unit_ccu_daemon_CP_99_elements(128), clk => clk, reset => reset); --
    end block;
    -- CP-element group 129:  transition  input  bypass 
    -- CP-element group 129: predecessors 
    -- CP-element group 129: 	128 
    -- CP-element group 129: successors 
    -- CP-element group 129:  members (3) 
      -- CP-element group 129: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1785_sample_completed_
      -- CP-element group 129: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1785_Sample/ra
      -- CP-element group 129: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1785_Sample/$exit
      -- 
    ra_826_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 129_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => CONCAT_u30_u32_1785_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(129)); -- 
    -- CP-element group 130:  transition  input  bypass 
    -- CP-element group 130: predecessors 
    -- CP-element group 130: 	148 
    -- CP-element group 130: successors 
    -- CP-element group 130: 	131 
    -- CP-element group 130:  members (3) 
      -- CP-element group 130: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1785_update_completed_
      -- CP-element group 130: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1785_Update/$exit
      -- CP-element group 130: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1785_Update/ca
      -- 
    ca_831_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 130_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => CONCAT_u30_u32_1785_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(130)); -- 
    -- CP-element group 131:  join  transition  output  bypass 
    -- CP-element group 131: predecessors 
    -- CP-element group 131: 	130 
    -- CP-element group 131: 	85 
    -- CP-element group 131: successors 
    -- CP-element group 131: 	132 
    -- CP-element group 131:  members (3) 
      -- CP-element group 131: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_2_1781_sample_start_
      -- CP-element group 131: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_2_1781_Sample/$entry
      -- CP-element group 131: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_2_1781_Sample/req
      -- 
    req_839_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_839_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(131), ack => WPIPE_debug_wp_2_1781_inst_req_0); -- 
    debug_unit_ccu_daemon_cp_element_group_131: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 42) := "debug_unit_ccu_daemon_cp_element_group_131"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= debug_unit_ccu_daemon_CP_99_elements(130) & debug_unit_ccu_daemon_CP_99_elements(85);
      gj_debug_unit_ccu_daemon_cp_element_group_131 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => debug_unit_ccu_daemon_CP_99_elements(131), clk => clk, reset => reset); --
    end block;
    -- CP-element group 132:  transition  input  output  bypass 
    -- CP-element group 132: predecessors 
    -- CP-element group 132: 	131 
    -- CP-element group 132: successors 
    -- CP-element group 132: 	133 
    -- CP-element group 132:  members (6) 
      -- CP-element group 132: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_2_1781_Update/$entry
      -- CP-element group 132: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_2_1781_sample_completed_
      -- CP-element group 132: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_2_1781_update_start_
      -- CP-element group 132: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_2_1781_Sample/$exit
      -- CP-element group 132: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_2_1781_Sample/ack
      -- CP-element group 132: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_2_1781_Update/req
      -- 
    ack_840_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 132_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_debug_wp_2_1781_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(132)); -- 
    req_844_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_844_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(132), ack => WPIPE_debug_wp_2_1781_inst_req_1); -- 
    -- CP-element group 133:  transition  input  bypass 
    -- CP-element group 133: predecessors 
    -- CP-element group 133: 	132 
    -- CP-element group 133: successors 
    -- CP-element group 133: 	142 
    -- CP-element group 133:  members (3) 
      -- CP-element group 133: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_2_1781_Update/$exit
      -- CP-element group 133: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_2_1781_update_completed_
      -- CP-element group 133: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_2_1781_Update/ack
      -- 
    ack_845_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 133_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_debug_wp_2_1781_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(133)); -- 
    -- CP-element group 134:  join  transition  output  bypass 
    -- CP-element group 134: predecessors 
    -- CP-element group 134: 	88 
    -- CP-element group 134: 	91 
    -- CP-element group 134: 	26 
    -- CP-element group 134: successors 
    -- CP-element group 134: 	135 
    -- CP-element group 134:  members (3) 
      -- CP-element group 134: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1792_sample_start_
      -- CP-element group 134: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1792_Sample/$entry
      -- CP-element group 134: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1792_Sample/rr
      -- 
    rr_853_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_853_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(134), ack => CONCAT_u30_u32_1792_inst_req_0); -- 
    debug_unit_ccu_daemon_cp_element_group_134: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 42) := "debug_unit_ccu_daemon_cp_element_group_134"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= debug_unit_ccu_daemon_CP_99_elements(88) & debug_unit_ccu_daemon_CP_99_elements(91) & debug_unit_ccu_daemon_CP_99_elements(26);
      gj_debug_unit_ccu_daemon_cp_element_group_134 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => debug_unit_ccu_daemon_CP_99_elements(134), clk => clk, reset => reset); --
    end block;
    -- CP-element group 135:  transition  input  bypass 
    -- CP-element group 135: predecessors 
    -- CP-element group 135: 	134 
    -- CP-element group 135: successors 
    -- CP-element group 135:  members (3) 
      -- CP-element group 135: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1792_sample_completed_
      -- CP-element group 135: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1792_Sample/$exit
      -- CP-element group 135: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1792_Sample/ra
      -- 
    ra_854_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 135_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => CONCAT_u30_u32_1792_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(135)); -- 
    -- CP-element group 136:  transition  input  bypass 
    -- CP-element group 136: predecessors 
    -- CP-element group 136: 	148 
    -- CP-element group 136: successors 
    -- CP-element group 136: 	137 
    -- CP-element group 136:  members (3) 
      -- CP-element group 136: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1792_update_completed_
      -- CP-element group 136: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1792_Update/$exit
      -- CP-element group 136: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1792_Update/ca
      -- 
    ca_859_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 136_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => CONCAT_u30_u32_1792_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(136)); -- 
    -- CP-element group 137:  join  transition  output  bypass 
    -- CP-element group 137: predecessors 
    -- CP-element group 137: 	136 
    -- CP-element group 137: 	88 
    -- CP-element group 137: successors 
    -- CP-element group 137: 	138 
    -- CP-element group 137:  members (3) 
      -- CP-element group 137: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_3_1788_sample_start_
      -- CP-element group 137: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_3_1788_Sample/$entry
      -- CP-element group 137: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_3_1788_Sample/req
      -- 
    req_867_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_867_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(137), ack => WPIPE_debug_wp_3_1788_inst_req_0); -- 
    debug_unit_ccu_daemon_cp_element_group_137: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 42) := "debug_unit_ccu_daemon_cp_element_group_137"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= debug_unit_ccu_daemon_CP_99_elements(136) & debug_unit_ccu_daemon_CP_99_elements(88);
      gj_debug_unit_ccu_daemon_cp_element_group_137 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => debug_unit_ccu_daemon_CP_99_elements(137), clk => clk, reset => reset); --
    end block;
    -- CP-element group 138:  transition  input  output  bypass 
    -- CP-element group 138: predecessors 
    -- CP-element group 138: 	137 
    -- CP-element group 138: successors 
    -- CP-element group 138: 	139 
    -- CP-element group 138:  members (6) 
      -- CP-element group 138: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_3_1788_sample_completed_
      -- CP-element group 138: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_3_1788_update_start_
      -- CP-element group 138: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_3_1788_Sample/$exit
      -- CP-element group 138: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_3_1788_Sample/ack
      -- CP-element group 138: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_3_1788_Update/$entry
      -- CP-element group 138: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_3_1788_Update/req
      -- 
    ack_868_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 138_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_debug_wp_3_1788_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(138)); -- 
    req_872_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_872_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(138), ack => WPIPE_debug_wp_3_1788_inst_req_1); -- 
    -- CP-element group 139:  transition  input  bypass 
    -- CP-element group 139: predecessors 
    -- CP-element group 139: 	138 
    -- CP-element group 139: successors 
    -- CP-element group 139: 	142 
    -- CP-element group 139:  members (3) 
      -- CP-element group 139: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_3_1788_update_completed_
      -- CP-element group 139: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_3_1788_Update/$exit
      -- CP-element group 139: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_debug_wp_3_1788_Update/ack
      -- 
    ack_873_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 139_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_debug_wp_3_1788_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(139)); -- 
    -- CP-element group 140:  transition  input  output  bypass 
    -- CP-element group 140: predecessors 
    -- CP-element group 140: 	148 
    -- CP-element group 140: successors 
    -- CP-element group 140: 	141 
    -- CP-element group 140:  members (6) 
      -- CP-element group 140: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_teu_debug_to_ccu_response_1794_sample_completed_
      -- CP-element group 140: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_teu_debug_to_ccu_response_1794_update_start_
      -- CP-element group 140: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_teu_debug_to_ccu_response_1794_Sample/$exit
      -- CP-element group 140: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_teu_debug_to_ccu_response_1794_Sample/ack
      -- CP-element group 140: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_teu_debug_to_ccu_response_1794_Update/$entry
      -- CP-element group 140: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_teu_debug_to_ccu_response_1794_Update/req
      -- 
    ack_882_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 140_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_debug_to_ccu_response_1794_inst_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(140)); -- 
    req_886_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_886_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(140), ack => WPIPE_teu_debug_to_ccu_response_1794_inst_req_1); -- 
    -- CP-element group 141:  transition  input  bypass 
    -- CP-element group 141: predecessors 
    -- CP-element group 141: 	140 
    -- CP-element group 141: successors 
    -- CP-element group 141: 	142 
    -- CP-element group 141:  members (3) 
      -- CP-element group 141: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_teu_debug_to_ccu_response_1794_update_completed_
      -- CP-element group 141: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_teu_debug_to_ccu_response_1794_Update/$exit
      -- CP-element group 141: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_teu_debug_to_ccu_response_1794_Update/ack
      -- 
    ack_887_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 141_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_debug_to_ccu_response_1794_inst_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(141)); -- 
    -- CP-element group 142:  join  fork  transition  place  output  bypass 
    -- CP-element group 142: predecessors 
    -- CP-element group 142: 	127 
    -- CP-element group 142: 	133 
    -- CP-element group 142: 	139 
    -- CP-element group 142: 	141 
    -- CP-element group 142: 	45 
    -- CP-element group 142: 	47 
    -- CP-element group 142: 	41 
    -- CP-element group 142: 	121 
    -- CP-element group 142: 	97 
    -- CP-element group 142: 	103 
    -- CP-element group 142: 	109 
    -- CP-element group 142: 	115 
    -- CP-element group 142: successors 
    -- CP-element group 142: 	144 
    -- CP-element group 142: 	145 
    -- CP-element group 142:  members (11) 
      -- CP-element group 142: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796__exit__
      -- CP-element group 142: 	 branch_block_stmt_1566/loopback
      -- CP-element group 142: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/$exit
      -- CP-element group 142: 	 branch_block_stmt_1566/loopback_PhiReq/$entry
      -- CP-element group 142: 	 branch_block_stmt_1566/loopback_PhiReq/phi_stmt_1568/$entry
      -- CP-element group 142: 	 branch_block_stmt_1566/loopback_PhiReq/phi_stmt_1568/phi_stmt_1568_sources/$entry
      -- CP-element group 142: 	 branch_block_stmt_1566/loopback_PhiReq/phi_stmt_1568/phi_stmt_1568_sources/Interlock/$entry
      -- CP-element group 142: 	 branch_block_stmt_1566/loopback_PhiReq/phi_stmt_1568/phi_stmt_1568_sources/Interlock/Sample/$entry
      -- CP-element group 142: 	 branch_block_stmt_1566/loopback_PhiReq/phi_stmt_1568/phi_stmt_1568_sources/Interlock/Sample/req
      -- CP-element group 142: 	 branch_block_stmt_1566/loopback_PhiReq/phi_stmt_1568/phi_stmt_1568_sources/Interlock/Update/$entry
      -- CP-element group 142: 	 branch_block_stmt_1566/loopback_PhiReq/phi_stmt_1568/phi_stmt_1568_sources/Interlock/Update/req
      -- 
    req_918_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_918_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(142), ack => next_prev_intr_1640_1570_buf_req_0); -- 
    req_923_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_923_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(142), ack => next_prev_intr_1640_1570_buf_req_1); -- 
    debug_unit_ccu_daemon_cp_element_group_142: block -- 
      constant place_capacities: IntegerArray(0 to 11) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1,10 => 1,11 => 1);
      constant place_markings: IntegerArray(0 to 11)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0,11 => 0);
      constant place_delays: IntegerArray(0 to 11) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0,11 => 0);
      constant joinName: string(1 to 42) := "debug_unit_ccu_daemon_cp_element_group_142"; 
      signal preds: BooleanArray(1 to 12); -- 
    begin -- 
      preds <= debug_unit_ccu_daemon_CP_99_elements(127) & debug_unit_ccu_daemon_CP_99_elements(133) & debug_unit_ccu_daemon_CP_99_elements(139) & debug_unit_ccu_daemon_CP_99_elements(141) & debug_unit_ccu_daemon_CP_99_elements(45) & debug_unit_ccu_daemon_CP_99_elements(47) & debug_unit_ccu_daemon_CP_99_elements(41) & debug_unit_ccu_daemon_CP_99_elements(121) & debug_unit_ccu_daemon_CP_99_elements(97) & debug_unit_ccu_daemon_CP_99_elements(103) & debug_unit_ccu_daemon_CP_99_elements(109) & debug_unit_ccu_daemon_CP_99_elements(115);
      gj_debug_unit_ccu_daemon_cp_element_group_142 : generic_join generic map(name => joinName, number_of_predecessors => 12, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => debug_unit_ccu_daemon_CP_99_elements(142), clk => clk, reset => reset); --
    end block;
    -- CP-element group 143:  transition  output  delay-element  bypass 
    -- CP-element group 143: predecessors 
    -- CP-element group 143: 	19 
    -- CP-element group 143: successors 
    -- CP-element group 143: 	147 
    -- CP-element group 143:  members (5) 
      -- CP-element group 143: 	 branch_block_stmt_1566/merge_stmt_1567__entry___PhiReq/$exit
      -- CP-element group 143: 	 branch_block_stmt_1566/merge_stmt_1567__entry___PhiReq/phi_stmt_1568/$exit
      -- CP-element group 143: 	 branch_block_stmt_1566/merge_stmt_1567__entry___PhiReq/phi_stmt_1568/phi_stmt_1568_sources/$exit
      -- CP-element group 143: 	 branch_block_stmt_1566/merge_stmt_1567__entry___PhiReq/phi_stmt_1568/phi_stmt_1568_sources/R_ZERO_1_1571_konst_delay_trans
      -- CP-element group 143: 	 branch_block_stmt_1566/merge_stmt_1567__entry___PhiReq/phi_stmt_1568/phi_stmt_1568_req
      -- 
    phi_stmt_1568_req_902_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_1568_req_902_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(143), ack => phi_stmt_1568_req_1); -- 
    -- Element group debug_unit_ccu_daemon_CP_99_elements(143) is a control-delay.
    cp_element_143_delay: control_delay_element  generic map(name => " 143_delay", delay_value => 1)  port map(req => debug_unit_ccu_daemon_CP_99_elements(19), ack => debug_unit_ccu_daemon_CP_99_elements(143), clk => clk, reset =>reset);
    -- CP-element group 144:  transition  input  bypass 
    -- CP-element group 144: predecessors 
    -- CP-element group 144: 	142 
    -- CP-element group 144: successors 
    -- CP-element group 144: 	146 
    -- CP-element group 144:  members (2) 
      -- CP-element group 144: 	 branch_block_stmt_1566/loopback_PhiReq/phi_stmt_1568/phi_stmt_1568_sources/Interlock/Sample/$exit
      -- CP-element group 144: 	 branch_block_stmt_1566/loopback_PhiReq/phi_stmt_1568/phi_stmt_1568_sources/Interlock/Sample/ack
      -- 
    ack_919_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 144_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_prev_intr_1640_1570_buf_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(144)); -- 
    -- CP-element group 145:  transition  input  bypass 
    -- CP-element group 145: predecessors 
    -- CP-element group 145: 	142 
    -- CP-element group 145: successors 
    -- CP-element group 145: 	146 
    -- CP-element group 145:  members (2) 
      -- CP-element group 145: 	 branch_block_stmt_1566/loopback_PhiReq/phi_stmt_1568/phi_stmt_1568_sources/Interlock/Update/$exit
      -- CP-element group 145: 	 branch_block_stmt_1566/loopback_PhiReq/phi_stmt_1568/phi_stmt_1568_sources/Interlock/Update/ack
      -- 
    ack_924_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 145_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_prev_intr_1640_1570_buf_ack_1, ack => debug_unit_ccu_daemon_CP_99_elements(145)); -- 
    -- CP-element group 146:  join  transition  output  bypass 
    -- CP-element group 146: predecessors 
    -- CP-element group 146: 	144 
    -- CP-element group 146: 	145 
    -- CP-element group 146: successors 
    -- CP-element group 146: 	147 
    -- CP-element group 146:  members (5) 
      -- CP-element group 146: 	 branch_block_stmt_1566/loopback_PhiReq/$exit
      -- CP-element group 146: 	 branch_block_stmt_1566/loopback_PhiReq/phi_stmt_1568/$exit
      -- CP-element group 146: 	 branch_block_stmt_1566/loopback_PhiReq/phi_stmt_1568/phi_stmt_1568_sources/$exit
      -- CP-element group 146: 	 branch_block_stmt_1566/loopback_PhiReq/phi_stmt_1568/phi_stmt_1568_sources/Interlock/$exit
      -- CP-element group 146: 	 branch_block_stmt_1566/loopback_PhiReq/phi_stmt_1568/phi_stmt_1568_req
      -- 
    phi_stmt_1568_req_925_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_1568_req_925_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(146), ack => phi_stmt_1568_req_0); -- 
    debug_unit_ccu_daemon_cp_element_group_146: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 42) := "debug_unit_ccu_daemon_cp_element_group_146"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= debug_unit_ccu_daemon_CP_99_elements(144) & debug_unit_ccu_daemon_CP_99_elements(145);
      gj_debug_unit_ccu_daemon_cp_element_group_146 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => debug_unit_ccu_daemon_CP_99_elements(146), clk => clk, reset => reset); --
    end block;
    -- CP-element group 147:  merge  transition  place  bypass 
    -- CP-element group 147: predecessors 
    -- CP-element group 147: 	143 
    -- CP-element group 147: 	146 
    -- CP-element group 147: successors 
    -- CP-element group 147: 	148 
    -- CP-element group 147:  members (2) 
      -- CP-element group 147: 	 branch_block_stmt_1566/merge_stmt_1567_PhiReqMerge
      -- CP-element group 147: 	 branch_block_stmt_1566/merge_stmt_1567_PhiAck/$entry
      -- 
    debug_unit_ccu_daemon_CP_99_elements(147) <= OrReduce(debug_unit_ccu_daemon_CP_99_elements(143) & debug_unit_ccu_daemon_CP_99_elements(146));
    -- CP-element group 148:  merge  fork  transition  place  input  output  bypass 
    -- CP-element group 148: predecessors 
    -- CP-element group 148: 	147 
    -- CP-element group 148: successors 
    -- CP-element group 148: 	82 
    -- CP-element group 148: 	130 
    -- CP-element group 148: 	136 
    -- CP-element group 148: 	140 
    -- CP-element group 148: 	49 
    -- CP-element group 148: 	64 
    -- CP-element group 148: 	67 
    -- CP-element group 148: 	70 
    -- CP-element group 148: 	76 
    -- CP-element group 148: 	51 
    -- CP-element group 148: 	53 
    -- CP-element group 148: 	38 
    -- CP-element group 148: 	47 
    -- CP-element group 148: 	43 
    -- CP-element group 148: 	36 
    -- CP-element group 148: 	55 
    -- CP-element group 148: 	41 
    -- CP-element group 148: 	73 
    -- CP-element group 148: 	34 
    -- CP-element group 148: 	61 
    -- CP-element group 148: 	58 
    -- CP-element group 148: 	79 
    -- CP-element group 148: 	124 
    -- CP-element group 148: 	85 
    -- CP-element group 148: 	88 
    -- CP-element group 148: 	91 
    -- CP-element group 148: 	94 
    -- CP-element group 148: 	100 
    -- CP-element group 148: 	106 
    -- CP-element group 148: 	112 
    -- CP-element group 148: 	118 
    -- CP-element group 148: 	21 
    -- CP-element group 148: 	22 
    -- CP-element group 148: 	24 
    -- CP-element group 148: 	26 
    -- CP-element group 148: 	28 
    -- CP-element group 148: 	30 
    -- CP-element group 148: 	32 
    -- CP-element group 148:  members (119) 
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1649_Update/$entry
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/MUX_1728_update_start_
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/assign_stmt_1640_update_start_
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1697_update_start_
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1687_Update/cr
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1649_Update/cr
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1755_Update/$entry
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1746_Update/$entry
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1764_Update/$entry
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1702_Update/cr
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1755_Update/cr
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1722_Update/cr
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1687_update_start_
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1755_update_start_
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1654_Update/cr
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1778_update_start_
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1697_Update/$entry
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1785_update_start_
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1764_update_start_
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1746_Update/cr
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1737_update_start_
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1654_Update/$entry
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1702_Update/$entry
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1717_update_start_
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/assign_stmt_1640_Update/$entry
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/MUX_1728_complete/$entry
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1712_update_start_
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1778_Update/cr
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1722_Update/$entry
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1649_update_start_
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1771_Update/$entry
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1771_Update/cr
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/MUX_1728_complete/req
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1764_Update/cr
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/assign_stmt_1640_Update/req
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1746_update_start_
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1697_Update/cr
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1771_update_start_
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1654_update_start_
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1778_Update/$entry
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1717_Update/$entry
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1674_Update/cr
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1785_Update/cr
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1785_Update/$entry
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1644_Update/cr
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1692_Update/cr
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1674_Update/$entry
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1712_Update/cr
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1692_Update/$entry
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1644_Update/$entry
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1737_Update/cr
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1712_Update/$entry
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u31_u32_1737_Update/$entry
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1674_update_start_
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1669_Update/cr
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1669_Update/$entry
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1644_update_start_
      -- CP-element group 148: 	 branch_block_stmt_1566/merge_stmt_1567__exit__
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796__entry__
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/$entry
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/call_stmt_1575_sample_start_
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/call_stmt_1575_update_start_
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1687_Update/$entry
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/call_stmt_1575_Sample/$entry
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/call_stmt_1575_Sample/crr
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/call_stmt_1575_Update/$entry
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/call_stmt_1575_Update/ccr
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1722_update_start_
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1669_update_start_
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/slice_1578_update_start_
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/slice_1578_Update/$entry
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/slice_1578_Update/cr
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1702_update_start_
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/slice_1582_update_start_
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1664_Update/cr
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1692_update_start_
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/slice_1582_Update/$entry
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/slice_1582_Update/cr
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1664_Update/$entry
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/slice_1586_update_start_
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1707_Update/cr
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1636_Update/cr
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/slice_1586_Update/$entry
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/slice_1586_Update/cr
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1707_Update/$entry
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1591_update_start_
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1591_Update/$entry
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1591_Update/cr
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1664_update_start_
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1596_update_start_
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1596_Update/$entry
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1596_Update/cr
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1601_update_start_
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1659_Update/cr
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1601_Update/$entry
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1601_Update/cr
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1659_Update/$entry
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1606_update_start_
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1707_update_start_
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1606_Update/$entry
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1606_Update/cr
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1611_update_start_
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1611_Update/$entry
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u3_u1_1611_Update/cr
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1717_Update/cr
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/EQ_u2_u1_1659_update_start_
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1622_update_start_
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1622_Update/$entry
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/OR_u1_u1_1622_Update/cr
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1636_Update/$entry
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/AND_u1_u1_1636_update_start_
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1792_update_start_
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1792_Update/$entry
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/CONCAT_u30_u32_1792_Update/cr
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_teu_debug_to_ccu_response_1794_sample_start_
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_teu_debug_to_ccu_response_1794_Sample/$entry
      -- CP-element group 148: 	 branch_block_stmt_1566/call_stmt_1575_to_assign_stmt_1796/WPIPE_teu_debug_to_ccu_response_1794_Sample/req
      -- CP-element group 148: 	 branch_block_stmt_1566/merge_stmt_1567_PhiAck/$exit
      -- CP-element group 148: 	 branch_block_stmt_1566/merge_stmt_1567_PhiAck/phi_stmt_1568_ack
      -- 
    phi_stmt_1568_ack_930_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 148_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_1568_ack_0, ack => debug_unit_ccu_daemon_CP_99_elements(148)); -- 
    cr_536_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_536_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(148), ack => AND_u1_u1_1687_inst_req_1); -- 
    cr_452_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_452_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(148), ack => EQ_u2_u1_1649_inst_req_1); -- 
    cr_578_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_578_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(148), ack => AND_u1_u1_1702_inst_req_1); -- 
    cr_718_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_718_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(148), ack => CONCAT_u31_u32_1755_inst_req_1); -- 
    cr_634_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_634_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(148), ack => AND_u1_u1_1722_inst_req_1); -- 
    cr_466_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_466_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(148), ack => EQ_u2_u1_1654_inst_req_1); -- 
    cr_690_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_690_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(148), ack => CONCAT_u31_u32_1746_inst_req_1); -- 
    cr_802_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_802_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(148), ack => CONCAT_u30_u32_1778_inst_req_1); -- 
    cr_774_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_774_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(148), ack => CONCAT_u30_u32_1771_inst_req_1); -- 
    req_648_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_648_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(148), ack => MUX_1728_inst_req_1); -- 
    cr_746_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_746_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(148), ack => CONCAT_u31_u32_1764_inst_req_1); -- 
    req_424_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_424_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(148), ack => W_next_prev_intr_1638_inst_req_1); -- 
    cr_564_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_564_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(148), ack => AND_u1_u1_1697_inst_req_1); -- 
    cr_522_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_522_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(148), ack => OR_u1_u1_1674_inst_req_1); -- 
    cr_830_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_830_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(148), ack => CONCAT_u30_u32_1785_inst_req_1); -- 
    cr_438_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_438_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(148), ack => EQ_u2_u1_1644_inst_req_1); -- 
    cr_550_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_550_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(148), ack => AND_u1_u1_1692_inst_req_1); -- 
    cr_606_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_606_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(148), ack => AND_u1_u1_1712_inst_req_1); -- 
    cr_662_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_662_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(148), ack => CONCAT_u31_u32_1737_inst_req_1); -- 
    cr_508_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_508_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(148), ack => OR_u1_u1_1669_inst_req_1); -- 
    crr_251_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " crr_251_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(148), ack => call_stmt_1575_call_req_0); -- 
    ccr_256_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " ccr_256_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(148), ack => call_stmt_1575_call_req_1); -- 
    cr_270_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_270_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(148), ack => slice_1578_inst_req_1); -- 
    cr_494_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_494_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(148), ack => OR_u1_u1_1664_inst_req_1); -- 
    cr_284_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_284_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(148), ack => slice_1582_inst_req_1); -- 
    cr_592_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_592_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(148), ack => AND_u1_u1_1707_inst_req_1); -- 
    cr_396_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_396_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(148), ack => AND_u1_u1_1636_inst_req_1); -- 
    cr_298_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_298_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(148), ack => slice_1586_inst_req_1); -- 
    cr_312_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_312_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(148), ack => EQ_u3_u1_1591_inst_req_1); -- 
    cr_326_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_326_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(148), ack => EQ_u3_u1_1596_inst_req_1); -- 
    cr_480_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_480_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(148), ack => EQ_u2_u1_1659_inst_req_1); -- 
    cr_340_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_340_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(148), ack => EQ_u3_u1_1601_inst_req_1); -- 
    cr_354_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_354_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(148), ack => EQ_u3_u1_1606_inst_req_1); -- 
    cr_368_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_368_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(148), ack => EQ_u3_u1_1611_inst_req_1); -- 
    cr_620_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_620_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(148), ack => AND_u1_u1_1717_inst_req_1); -- 
    cr_382_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_382_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(148), ack => OR_u1_u1_1622_inst_req_1); -- 
    cr_858_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_858_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(148), ack => CONCAT_u30_u32_1792_inst_req_1); -- 
    req_881_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_881_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => debug_unit_ccu_daemon_CP_99_elements(148), ack => WPIPE_teu_debug_to_ccu_response_1794_inst_req_0); -- 
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_1636_wire : std_logic_vector(0 downto 0);
    signal CONCAT_u30_u31_1735_wire : std_logic_vector(30 downto 0);
    signal CONCAT_u30_u31_1744_wire : std_logic_vector(30 downto 0);
    signal CONCAT_u30_u31_1753_wire : std_logic_vector(30 downto 0);
    signal CONCAT_u30_u31_1762_wire : std_logic_vector(30 downto 0);
    signal CONCAT_u30_u32_1771_wire : std_logic_vector(31 downto 0);
    signal CONCAT_u30_u32_1778_wire : std_logic_vector(31 downto 0);
    signal CONCAT_u30_u32_1785_wire : std_logic_vector(31 downto 0);
    signal CONCAT_u30_u32_1792_wire : std_logic_vector(31 downto 0);
    signal CONCAT_u31_u32_1737_wire : std_logic_vector(31 downto 0);
    signal CONCAT_u31_u32_1746_wire : std_logic_vector(31 downto 0);
    signal CONCAT_u31_u32_1755_wire : std_logic_vector(31 downto 0);
    signal CONCAT_u31_u32_1764_wire : std_logic_vector(31 downto 0);
    signal NOT_u1_u1_1635_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1616_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1618_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1621_wire : std_logic_vector(0 downto 0);
    signal R_CCU_TEU_CLEAR_BP_1595_wire_constant : std_logic_vector(2 downto 0);
    signal R_CCU_TEU_CLEAR_WP_1600_wire_constant : std_logic_vector(2 downto 0);
    signal R_CCU_TEU_INTR_1590_wire_constant : std_logic_vector(2 downto 0);
    signal R_CCU_TEU_SET_BP_1605_wire_constant : std_logic_vector(2 downto 0);
    signal R_CCU_TEU_SET_WP_1610_wire_constant : std_logic_vector(2 downto 0);
    signal R_ONE_2_1648_wire_constant : std_logic_vector(1 downto 0);
    signal R_THREE_2_1658_wire_constant : std_logic_vector(1 downto 0);
    signal R_TWO_2_1653_wire_constant : std_logic_vector(1 downto 0);
    signal R_ZERO_1_1571_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_1734_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_1743_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_1752_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_1761_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_1795_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_2_1643_wire_constant : std_logic_vector(1 downto 0);
    signal R_ZERO_32_1727_wire_constant : std_logic_vector(31 downto 0);
    signal clr_bp_1597 : std_logic_vector(0 downto 0);
    signal clr_wp_1602 : std_logic_vector(0 downto 0);
    signal cmd_success_1623 : std_logic_vector(0 downto 0);
    signal debug_command_1575 : std_logic_vector(7 downto 0);
    signal debug_data_1575 : std_logic_vector(31 downto 0);
    signal intr_hit_1592 : std_logic_vector(0 downto 0);
    signal konst_1540_wire_constant : std_logic_vector(31 downto 0);
    signal konst_1543_wire_constant : std_logic_vector(31 downto 0);
    signal konst_1546_wire_constant : std_logic_vector(31 downto 0);
    signal konst_1549_wire_constant : std_logic_vector(31 downto 0);
    signal konst_1552_wire_constant : std_logic_vector(31 downto 0);
    signal konst_1555_wire_constant : std_logic_vector(31 downto 0);
    signal konst_1558_wire_constant : std_logic_vector(31 downto 0);
    signal konst_1561_wire_constant : std_logic_vector(31 downto 0);
    signal konst_1564_wire_constant : std_logic_vector(0 downto 0);
    signal next_prev_intr_1640 : std_logic_vector(0 downto 0);
    signal next_prev_intr_1640_1570_buffered : std_logic_vector(0 downto 0);
    signal opcode_1579 : std_logic_vector(2 downto 0);
    signal prev_intr_1568 : std_logic_vector(0 downto 0);
    signal reg0_1645 : std_logic_vector(0 downto 0);
    signal reg1_1650 : std_logic_vector(0 downto 0);
    signal reg2_1655 : std_logic_vector(0 downto 0);
    signal reg3_1660 : std_logic_vector(0 downto 0);
    signal reg_id_1587 : std_logic_vector(1 downto 0);
    signal reg_type_1583 : std_logic_vector(1 downto 0);
    signal set_bp_1607 : std_logic_vector(0 downto 0);
    signal set_reg_1675 : std_logic_vector(0 downto 0);
    signal set_wp_1612 : std_logic_vector(0 downto 0);
    signal slice_1733_wire : std_logic_vector(29 downto 0);
    signal slice_1742_wire : std_logic_vector(29 downto 0);
    signal slice_1751_wire : std_logic_vector(29 downto 0);
    signal slice_1760_wire : std_logic_vector(29 downto 0);
    signal slice_1769_wire : std_logic_vector(29 downto 0);
    signal slice_1776_wire : std_logic_vector(29 downto 0);
    signal slice_1783_wire : std_logic_vector(29 downto 0);
    signal slice_1790_wire : std_logic_vector(29 downto 0);
    signal update_bp0_1688 : std_logic_vector(0 downto 0);
    signal update_bp1_1693 : std_logic_vector(0 downto 0);
    signal update_bp2_1698 : std_logic_vector(0 downto 0);
    signal update_bp3_1703 : std_logic_vector(0 downto 0);
    signal update_bp_1665 : std_logic_vector(0 downto 0);
    signal update_reg_value_1729 : std_logic_vector(31 downto 0);
    signal update_wp0_1708 : std_logic_vector(0 downto 0);
    signal update_wp1_1713 : std_logic_vector(0 downto 0);
    signal update_wp2_1718 : std_logic_vector(0 downto 0);
    signal update_wp3_1723 : std_logic_vector(0 downto 0);
    signal update_wp_1670 : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    R_CCU_TEU_CLEAR_BP_1595_wire_constant <= "010";
    R_CCU_TEU_CLEAR_WP_1600_wire_constant <= "100";
    R_CCU_TEU_INTR_1590_wire_constant <= "101";
    R_CCU_TEU_SET_BP_1605_wire_constant <= "001";
    R_CCU_TEU_SET_WP_1610_wire_constant <= "011";
    R_ONE_2_1648_wire_constant <= "01";
    R_THREE_2_1658_wire_constant <= "11";
    R_TWO_2_1653_wire_constant <= "10";
    R_ZERO_1_1571_wire_constant <= "0";
    R_ZERO_1_1734_wire_constant <= "0";
    R_ZERO_1_1743_wire_constant <= "0";
    R_ZERO_1_1752_wire_constant <= "0";
    R_ZERO_1_1761_wire_constant <= "0";
    R_ZERO_1_1795_wire_constant <= "0";
    R_ZERO_2_1643_wire_constant <= "00";
    R_ZERO_32_1727_wire_constant <= "00000000000000000000000000000000";
    konst_1540_wire_constant <= "00000000000000000000000000000000";
    konst_1543_wire_constant <= "00000000000000000000000000000000";
    konst_1546_wire_constant <= "00000000000000000000000000000000";
    konst_1549_wire_constant <= "00000000000000000000000000000000";
    konst_1552_wire_constant <= "00000000000000000000000000000000";
    konst_1555_wire_constant <= "00000000000000000000000000000000";
    konst_1558_wire_constant <= "00000000000000000000000000000000";
    konst_1561_wire_constant <= "00000000000000000000000000000000";
    konst_1564_wire_constant <= "0";
    phi_stmt_1568: Block -- phi operator 
      signal idata: std_logic_vector(1 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= next_prev_intr_1640_1570_buffered & R_ZERO_1_1571_wire_constant;
      req <= phi_stmt_1568_req_0 & phi_stmt_1568_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_1568",
          num_reqs => 2,
          bypass_flag => false,
          data_width => 1) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_1568_ack_0,
          idata => idata,
          odata => prev_intr_1568,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_1568
    MUX_1728_inst_block : block -- 
      signal sample_req, sample_ack, update_req, update_ack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      sample_req(0) <= MUX_1728_inst_req_0;
      MUX_1728_inst_ack_0<= sample_ack(0);
      update_req(0) <= MUX_1728_inst_req_1;
      MUX_1728_inst_ack_1<= update_ack(0);
      MUX_1728_inst: SelectSplitProtocol generic map(name => "MUX_1728_inst", data_width => 32, buffering => 1, flow_through => false, full_rate => false) -- 
        port map( x => debug_data_1575, y => R_ZERO_32_1727_wire_constant, sel => set_reg_1675, z => update_reg_value_1729, sample_req => sample_req(0), sample_ack => sample_ack(0), update_req => update_req(0), update_ack => update_ack(0), clk => clk, reset => reset); -- 
      -- 
    end block;
    slice_1578_inst_block : block -- 
      signal sample_req, sample_ack, update_req, update_ack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      sample_req(0) <= slice_1578_inst_req_0;
      slice_1578_inst_ack_0<= sample_ack(0);
      update_req(0) <= slice_1578_inst_req_1;
      slice_1578_inst_ack_1<= update_ack(0);
      slice_1578_inst: SliceSplitProtocol generic map(name => "slice_1578_inst", in_data_width => 8, high_index => 6, low_index => 4, buffering => 1, flow_through => false,  full_rate => false) -- 
        port map( din => debug_command_1575, dout => opcode_1579, sample_req => sample_req(0) , sample_ack => sample_ack(0) , update_req => update_req(0) , update_ack => update_ack(0) , clk => clk, reset => reset); -- 
      -- 
    end block;
    slice_1582_inst_block : block -- 
      signal sample_req, sample_ack, update_req, update_ack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      sample_req(0) <= slice_1582_inst_req_0;
      slice_1582_inst_ack_0<= sample_ack(0);
      update_req(0) <= slice_1582_inst_req_1;
      slice_1582_inst_ack_1<= update_ack(0);
      slice_1582_inst: SliceSplitProtocol generic map(name => "slice_1582_inst", in_data_width => 8, high_index => 3, low_index => 2, buffering => 1, flow_through => false,  full_rate => false) -- 
        port map( din => debug_command_1575, dout => reg_type_1583, sample_req => sample_req(0) , sample_ack => sample_ack(0) , update_req => update_req(0) , update_ack => update_ack(0) , clk => clk, reset => reset); -- 
      -- 
    end block;
    slice_1586_inst_block : block -- 
      signal sample_req, sample_ack, update_req, update_ack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      sample_req(0) <= slice_1586_inst_req_0;
      slice_1586_inst_ack_0<= sample_ack(0);
      update_req(0) <= slice_1586_inst_req_1;
      slice_1586_inst_ack_1<= update_ack(0);
      slice_1586_inst: SliceSplitProtocol generic map(name => "slice_1586_inst", in_data_width => 8, high_index => 1, low_index => 0, buffering => 1, flow_through => false,  full_rate => false) -- 
        port map( din => debug_command_1575, dout => reg_id_1587, sample_req => sample_req(0) , sample_ack => sample_ack(0) , update_req => update_req(0) , update_ack => update_ack(0) , clk => clk, reset => reset); -- 
      -- 
    end block;
    -- flow-through slice operator slice_1733_inst
    slice_1733_wire <= update_reg_value_1729(31 downto 2);
    -- flow-through slice operator slice_1742_inst
    slice_1742_wire <= update_reg_value_1729(31 downto 2);
    -- flow-through slice operator slice_1751_inst
    slice_1751_wire <= update_reg_value_1729(31 downto 2);
    -- flow-through slice operator slice_1760_inst
    slice_1760_wire <= update_reg_value_1729(31 downto 2);
    -- flow-through slice operator slice_1769_inst
    slice_1769_wire <= update_reg_value_1729(31 downto 2);
    -- flow-through slice operator slice_1776_inst
    slice_1776_wire <= update_reg_value_1729(31 downto 2);
    -- flow-through slice operator slice_1783_inst
    slice_1783_wire <= update_reg_value_1729(31 downto 2);
    -- flow-through slice operator slice_1790_inst
    slice_1790_wire <= update_reg_value_1729(31 downto 2);
    W_next_prev_intr_1638_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_next_prev_intr_1638_inst_req_0;
      W_next_prev_intr_1638_inst_ack_0<= wack(0);
      rreq(0) <= W_next_prev_intr_1638_inst_req_1;
      W_next_prev_intr_1638_inst_ack_1<= rack(0);
      W_next_prev_intr_1638_inst : InterlockBuffer generic map ( -- 
        name => "W_next_prev_intr_1638_inst",
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
        write_data => intr_hit_1592,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => next_prev_intr_1640,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    next_prev_intr_1640_1570_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= next_prev_intr_1640_1570_buf_req_0;
      next_prev_intr_1640_1570_buf_ack_0<= wack(0);
      rreq(0) <= next_prev_intr_1640_1570_buf_req_1;
      next_prev_intr_1640_1570_buf_ack_1<= rack(0);
      next_prev_intr_1640_1570_buf : InterlockBuffer generic map ( -- 
        name => "next_prev_intr_1640_1570_buf",
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
        write_data => next_prev_intr_1640,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => next_prev_intr_1640_1570_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    -- shared split operator group (0) : AND_u1_u1_1636_inst 
    ApIntAnd_group_0: Block -- 
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
      data_in <= intr_hit_1592 & NOT_u1_u1_1635_wire;
      AND_u1_u1_1636_wire <= data_out(0 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= AND_u1_u1_1636_inst_req_0;
      AND_u1_u1_1636_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= AND_u1_u1_1636_inst_req_1;
      AND_u1_u1_1636_inst_ack_1 <= ackR_unguarded(0);
      ApIntAnd_group_0_gI: SplitGuardInterface generic map(name => "ApIntAnd_group_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
          name => "ApIntAnd_group_0",
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
    end Block; -- split operator group 0
    -- shared split operator group (1) : AND_u1_u1_1687_inst 
    ApIntAnd_group_1: Block -- 
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
      data_in <= update_bp_1665 & reg0_1645;
      update_bp0_1688 <= data_out(0 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= AND_u1_u1_1687_inst_req_0;
      AND_u1_u1_1687_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= AND_u1_u1_1687_inst_req_1;
      AND_u1_u1_1687_inst_ack_1 <= ackR_unguarded(0);
      ApIntAnd_group_1_gI: SplitGuardInterface generic map(name => "ApIntAnd_group_1_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
          name => "ApIntAnd_group_1",
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
    end Block; -- split operator group 1
    -- shared split operator group (2) : AND_u1_u1_1692_inst 
    ApIntAnd_group_2: Block -- 
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
      data_in <= update_bp_1665 & reg1_1650;
      update_bp1_1693 <= data_out(0 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= AND_u1_u1_1692_inst_req_0;
      AND_u1_u1_1692_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= AND_u1_u1_1692_inst_req_1;
      AND_u1_u1_1692_inst_ack_1 <= ackR_unguarded(0);
      ApIntAnd_group_2_gI: SplitGuardInterface generic map(name => "ApIntAnd_group_2_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
          name => "ApIntAnd_group_2",
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
    end Block; -- split operator group 2
    -- shared split operator group (3) : AND_u1_u1_1697_inst 
    ApIntAnd_group_3: Block -- 
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
      data_in <= update_bp_1665 & reg2_1655;
      update_bp2_1698 <= data_out(0 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= AND_u1_u1_1697_inst_req_0;
      AND_u1_u1_1697_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= AND_u1_u1_1697_inst_req_1;
      AND_u1_u1_1697_inst_ack_1 <= ackR_unguarded(0);
      ApIntAnd_group_3_gI: SplitGuardInterface generic map(name => "ApIntAnd_group_3_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
          name => "ApIntAnd_group_3",
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
    end Block; -- split operator group 3
    -- shared split operator group (4) : AND_u1_u1_1702_inst 
    ApIntAnd_group_4: Block -- 
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
      data_in <= update_bp_1665 & reg3_1660;
      update_bp3_1703 <= data_out(0 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= AND_u1_u1_1702_inst_req_0;
      AND_u1_u1_1702_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= AND_u1_u1_1702_inst_req_1;
      AND_u1_u1_1702_inst_ack_1 <= ackR_unguarded(0);
      ApIntAnd_group_4_gI: SplitGuardInterface generic map(name => "ApIntAnd_group_4_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
          name => "ApIntAnd_group_4",
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
    end Block; -- split operator group 4
    -- shared split operator group (5) : AND_u1_u1_1707_inst 
    ApIntAnd_group_5: Block -- 
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
      data_in <= update_wp_1670 & reg0_1645;
      update_wp0_1708 <= data_out(0 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= AND_u1_u1_1707_inst_req_0;
      AND_u1_u1_1707_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= AND_u1_u1_1707_inst_req_1;
      AND_u1_u1_1707_inst_ack_1 <= ackR_unguarded(0);
      ApIntAnd_group_5_gI: SplitGuardInterface generic map(name => "ApIntAnd_group_5_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
          name => "ApIntAnd_group_5",
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
    end Block; -- split operator group 5
    -- shared split operator group (6) : AND_u1_u1_1712_inst 
    ApIntAnd_group_6: Block -- 
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
      data_in <= update_wp_1670 & reg1_1650;
      update_wp1_1713 <= data_out(0 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= AND_u1_u1_1712_inst_req_0;
      AND_u1_u1_1712_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= AND_u1_u1_1712_inst_req_1;
      AND_u1_u1_1712_inst_ack_1 <= ackR_unguarded(0);
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
    end Block; -- split operator group 6
    -- shared split operator group (7) : AND_u1_u1_1717_inst 
    ApIntAnd_group_7: Block -- 
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
      data_in <= update_wp_1670 & reg2_1655;
      update_wp2_1718 <= data_out(0 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= AND_u1_u1_1717_inst_req_0;
      AND_u1_u1_1717_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= AND_u1_u1_1717_inst_req_1;
      AND_u1_u1_1717_inst_ack_1 <= ackR_unguarded(0);
      ApIntAnd_group_7_gI: SplitGuardInterface generic map(name => "ApIntAnd_group_7_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
          name => "ApIntAnd_group_7",
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
    end Block; -- split operator group 7
    -- shared split operator group (8) : AND_u1_u1_1722_inst 
    ApIntAnd_group_8: Block -- 
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
      data_in <= update_wp_1670 & reg3_1660;
      update_wp3_1723 <= data_out(0 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= AND_u1_u1_1722_inst_req_0;
      AND_u1_u1_1722_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= AND_u1_u1_1722_inst_req_1;
      AND_u1_u1_1722_inst_ack_1 <= ackR_unguarded(0);
      ApIntAnd_group_8_gI: SplitGuardInterface generic map(name => "ApIntAnd_group_8_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
          name => "ApIntAnd_group_8",
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
    end Block; -- split operator group 8
    -- flow through binary operator CONCAT_u30_u31_1735_inst
    process(slice_1733_wire) -- 
      variable tmp_var : std_logic_vector(30 downto 0); -- 
    begin -- 
      ApConcat_proc(slice_1733_wire, R_ZERO_1_1734_wire_constant, tmp_var);
      CONCAT_u30_u31_1735_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u30_u31_1744_inst
    process(slice_1742_wire) -- 
      variable tmp_var : std_logic_vector(30 downto 0); -- 
    begin -- 
      ApConcat_proc(slice_1742_wire, R_ZERO_1_1743_wire_constant, tmp_var);
      CONCAT_u30_u31_1744_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u30_u31_1753_inst
    process(slice_1751_wire) -- 
      variable tmp_var : std_logic_vector(30 downto 0); -- 
    begin -- 
      ApConcat_proc(slice_1751_wire, R_ZERO_1_1752_wire_constant, tmp_var);
      CONCAT_u30_u31_1753_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u30_u31_1762_inst
    process(slice_1760_wire) -- 
      variable tmp_var : std_logic_vector(30 downto 0); -- 
    begin -- 
      ApConcat_proc(slice_1760_wire, R_ZERO_1_1761_wire_constant, tmp_var);
      CONCAT_u30_u31_1762_wire <= tmp_var; --
    end process;
    -- shared split operator group (13) : CONCAT_u30_u32_1771_inst 
    ApConcat_group_13: Block -- 
      signal data_in: std_logic_vector(31 downto 0);
      signal data_out: std_logic_vector(31 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      data_in <= slice_1769_wire & reg_type_1583;
      CONCAT_u30_u32_1771_wire <= data_out(31 downto 0);
      guard_vector(0)  <= update_wp0_1708(0);
      reqL_unguarded(0) <= CONCAT_u30_u32_1771_inst_req_0;
      CONCAT_u30_u32_1771_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= CONCAT_u30_u32_1771_inst_req_1;
      CONCAT_u30_u32_1771_inst_ack_1 <= ackR_unguarded(0);
      ApConcat_group_13_gI: SplitGuardInterface generic map(name => "ApConcat_group_13_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
          name => "ApConcat_group_13",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 30,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 2, 
          num_inputs    => 2,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 32,
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
    end Block; -- split operator group 13
    -- shared split operator group (14) : CONCAT_u30_u32_1778_inst 
    ApConcat_group_14: Block -- 
      signal data_in: std_logic_vector(31 downto 0);
      signal data_out: std_logic_vector(31 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      data_in <= slice_1776_wire & reg_type_1583;
      CONCAT_u30_u32_1778_wire <= data_out(31 downto 0);
      guard_vector(0)  <= update_wp1_1713(0);
      reqL_unguarded(0) <= CONCAT_u30_u32_1778_inst_req_0;
      CONCAT_u30_u32_1778_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= CONCAT_u30_u32_1778_inst_req_1;
      CONCAT_u30_u32_1778_inst_ack_1 <= ackR_unguarded(0);
      ApConcat_group_14_gI: SplitGuardInterface generic map(name => "ApConcat_group_14_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
          name => "ApConcat_group_14",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 30,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 2, 
          num_inputs    => 2,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 32,
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
    end Block; -- split operator group 14
    -- shared split operator group (15) : CONCAT_u30_u32_1785_inst 
    ApConcat_group_15: Block -- 
      signal data_in: std_logic_vector(31 downto 0);
      signal data_out: std_logic_vector(31 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      data_in <= slice_1783_wire & reg_type_1583;
      CONCAT_u30_u32_1785_wire <= data_out(31 downto 0);
      guard_vector(0)  <= update_wp2_1718(0);
      reqL_unguarded(0) <= CONCAT_u30_u32_1785_inst_req_0;
      CONCAT_u30_u32_1785_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= CONCAT_u30_u32_1785_inst_req_1;
      CONCAT_u30_u32_1785_inst_ack_1 <= ackR_unguarded(0);
      ApConcat_group_15_gI: SplitGuardInterface generic map(name => "ApConcat_group_15_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
          name => "ApConcat_group_15",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 30,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 2, 
          num_inputs    => 2,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 32,
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
    end Block; -- split operator group 15
    -- shared split operator group (16) : CONCAT_u30_u32_1792_inst 
    ApConcat_group_16: Block -- 
      signal data_in: std_logic_vector(31 downto 0);
      signal data_out: std_logic_vector(31 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      data_in <= slice_1790_wire & reg_type_1583;
      CONCAT_u30_u32_1792_wire <= data_out(31 downto 0);
      guard_vector(0)  <= update_wp3_1723(0);
      reqL_unguarded(0) <= CONCAT_u30_u32_1792_inst_req_0;
      CONCAT_u30_u32_1792_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= CONCAT_u30_u32_1792_inst_req_1;
      CONCAT_u30_u32_1792_inst_ack_1 <= ackR_unguarded(0);
      ApConcat_group_16_gI: SplitGuardInterface generic map(name => "ApConcat_group_16_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
          name => "ApConcat_group_16",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 30,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 2, 
          num_inputs    => 2,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 32,
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
    end Block; -- split operator group 16
    -- shared split operator group (17) : CONCAT_u31_u32_1737_inst 
    ApConcat_group_17: Block -- 
      signal data_in: std_logic_vector(31 downto 0);
      signal data_out: std_logic_vector(31 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      data_in <= CONCAT_u30_u31_1735_wire & set_reg_1675;
      CONCAT_u31_u32_1737_wire <= data_out(31 downto 0);
      guard_vector(0)  <= update_bp0_1688(0);
      reqL_unguarded(0) <= CONCAT_u31_u32_1737_inst_req_0;
      CONCAT_u31_u32_1737_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= CONCAT_u31_u32_1737_inst_req_1;
      CONCAT_u31_u32_1737_inst_ack_1 <= ackR_unguarded(0);
      ApConcat_group_17_gI: SplitGuardInterface generic map(name => "ApConcat_group_17_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
          name => "ApConcat_group_17",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 31,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 1, 
          num_inputs    => 2,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 32,
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
    end Block; -- split operator group 17
    -- shared split operator group (18) : CONCAT_u31_u32_1746_inst 
    ApConcat_group_18: Block -- 
      signal data_in: std_logic_vector(31 downto 0);
      signal data_out: std_logic_vector(31 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      data_in <= CONCAT_u30_u31_1744_wire & set_reg_1675;
      CONCAT_u31_u32_1746_wire <= data_out(31 downto 0);
      guard_vector(0)  <= update_bp1_1693(0);
      reqL_unguarded(0) <= CONCAT_u31_u32_1746_inst_req_0;
      CONCAT_u31_u32_1746_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= CONCAT_u31_u32_1746_inst_req_1;
      CONCAT_u31_u32_1746_inst_ack_1 <= ackR_unguarded(0);
      ApConcat_group_18_gI: SplitGuardInterface generic map(name => "ApConcat_group_18_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
          name => "ApConcat_group_18",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 31,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 1, 
          num_inputs    => 2,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 32,
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
    end Block; -- split operator group 18
    -- shared split operator group (19) : CONCAT_u31_u32_1755_inst 
    ApConcat_group_19: Block -- 
      signal data_in: std_logic_vector(31 downto 0);
      signal data_out: std_logic_vector(31 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      data_in <= CONCAT_u30_u31_1753_wire & set_reg_1675;
      CONCAT_u31_u32_1755_wire <= data_out(31 downto 0);
      guard_vector(0)  <= update_bp2_1698(0);
      reqL_unguarded(0) <= CONCAT_u31_u32_1755_inst_req_0;
      CONCAT_u31_u32_1755_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= CONCAT_u31_u32_1755_inst_req_1;
      CONCAT_u31_u32_1755_inst_ack_1 <= ackR_unguarded(0);
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
          iwidth_1  => 31,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 1, 
          num_inputs    => 2,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 32,
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
    end Block; -- split operator group 19
    -- shared split operator group (20) : CONCAT_u31_u32_1764_inst 
    ApConcat_group_20: Block -- 
      signal data_in: std_logic_vector(31 downto 0);
      signal data_out: std_logic_vector(31 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      data_in <= CONCAT_u30_u31_1762_wire & set_reg_1675;
      CONCAT_u31_u32_1764_wire <= data_out(31 downto 0);
      guard_vector(0)  <= update_bp3_1703(0);
      reqL_unguarded(0) <= CONCAT_u31_u32_1764_inst_req_0;
      CONCAT_u31_u32_1764_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= CONCAT_u31_u32_1764_inst_req_1;
      CONCAT_u31_u32_1764_inst_ack_1 <= ackR_unguarded(0);
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
          iwidth_1  => 31,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 1, 
          num_inputs    => 2,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 32,
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
    end Block; -- split operator group 20
    -- shared split operator group (21) : EQ_u2_u1_1644_inst 
    ApIntEq_group_21: Block -- 
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
      data_in <= reg_id_1587;
      reg0_1645 <= data_out(0 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= EQ_u2_u1_1644_inst_req_0;
      EQ_u2_u1_1644_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= EQ_u2_u1_1644_inst_req_1;
      EQ_u2_u1_1644_inst_ack_1 <= ackR_unguarded(0);
      ApIntEq_group_21_gI: SplitGuardInterface generic map(name => "ApIntEq_group_21_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
          operator_id => "ApIntEq",
          name => "ApIntEq_group_21",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 2,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 0, 
          num_inputs    => 1,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 1,
          constant_operand => "00",
          constant_width => 2,
          buffering  => 1,
          flow_through => false,
          full_rate  => false,
          use_constant  => true
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
    end Block; -- split operator group 21
    -- shared split operator group (22) : EQ_u2_u1_1649_inst 
    ApIntEq_group_22: Block -- 
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
      data_in <= reg_id_1587;
      reg1_1650 <= data_out(0 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= EQ_u2_u1_1649_inst_req_0;
      EQ_u2_u1_1649_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= EQ_u2_u1_1649_inst_req_1;
      EQ_u2_u1_1649_inst_ack_1 <= ackR_unguarded(0);
      ApIntEq_group_22_gI: SplitGuardInterface generic map(name => "ApIntEq_group_22_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
          operator_id => "ApIntEq",
          name => "ApIntEq_group_22",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 2,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 0, 
          num_inputs    => 1,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 1,
          constant_operand => "01",
          constant_width => 2,
          buffering  => 1,
          flow_through => false,
          full_rate  => false,
          use_constant  => true
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
    end Block; -- split operator group 22
    -- shared split operator group (23) : EQ_u2_u1_1654_inst 
    ApIntEq_group_23: Block -- 
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
      data_in <= reg_id_1587;
      reg2_1655 <= data_out(0 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= EQ_u2_u1_1654_inst_req_0;
      EQ_u2_u1_1654_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= EQ_u2_u1_1654_inst_req_1;
      EQ_u2_u1_1654_inst_ack_1 <= ackR_unguarded(0);
      ApIntEq_group_23_gI: SplitGuardInterface generic map(name => "ApIntEq_group_23_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
          operator_id => "ApIntEq",
          name => "ApIntEq_group_23",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 2,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 0, 
          num_inputs    => 1,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 1,
          constant_operand => "10",
          constant_width => 2,
          buffering  => 1,
          flow_through => false,
          full_rate  => false,
          use_constant  => true
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
    end Block; -- split operator group 23
    -- shared split operator group (24) : EQ_u2_u1_1659_inst 
    ApIntEq_group_24: Block -- 
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
      data_in <= reg_id_1587;
      reg3_1660 <= data_out(0 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= EQ_u2_u1_1659_inst_req_0;
      EQ_u2_u1_1659_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= EQ_u2_u1_1659_inst_req_1;
      EQ_u2_u1_1659_inst_ack_1 <= ackR_unguarded(0);
      ApIntEq_group_24_gI: SplitGuardInterface generic map(name => "ApIntEq_group_24_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
          operator_id => "ApIntEq",
          name => "ApIntEq_group_24",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 2,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 0, 
          num_inputs    => 1,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 1,
          constant_operand => "11",
          constant_width => 2,
          buffering  => 1,
          flow_through => false,
          full_rate  => false,
          use_constant  => true
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
    end Block; -- split operator group 24
    -- shared split operator group (25) : EQ_u3_u1_1591_inst 
    ApIntEq_group_25: Block -- 
      signal data_in: std_logic_vector(2 downto 0);
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
      data_in <= opcode_1579;
      intr_hit_1592 <= data_out(0 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= EQ_u3_u1_1591_inst_req_0;
      EQ_u3_u1_1591_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= EQ_u3_u1_1591_inst_req_1;
      EQ_u3_u1_1591_inst_ack_1 <= ackR_unguarded(0);
      ApIntEq_group_25_gI: SplitGuardInterface generic map(name => "ApIntEq_group_25_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
          operator_id => "ApIntEq",
          name => "ApIntEq_group_25",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 3,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 0, 
          num_inputs    => 1,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 1,
          constant_operand => "101",
          constant_width => 3,
          buffering  => 1,
          flow_through => false,
          full_rate  => false,
          use_constant  => true
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
    end Block; -- split operator group 25
    -- shared split operator group (26) : EQ_u3_u1_1596_inst 
    ApIntEq_group_26: Block -- 
      signal data_in: std_logic_vector(2 downto 0);
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
      data_in <= opcode_1579;
      clr_bp_1597 <= data_out(0 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= EQ_u3_u1_1596_inst_req_0;
      EQ_u3_u1_1596_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= EQ_u3_u1_1596_inst_req_1;
      EQ_u3_u1_1596_inst_ack_1 <= ackR_unguarded(0);
      ApIntEq_group_26_gI: SplitGuardInterface generic map(name => "ApIntEq_group_26_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
          operator_id => "ApIntEq",
          name => "ApIntEq_group_26",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 3,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 0, 
          num_inputs    => 1,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 1,
          constant_operand => "010",
          constant_width => 3,
          buffering  => 1,
          flow_through => false,
          full_rate  => false,
          use_constant  => true
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
    end Block; -- split operator group 26
    -- shared split operator group (27) : EQ_u3_u1_1601_inst 
    ApIntEq_group_27: Block -- 
      signal data_in: std_logic_vector(2 downto 0);
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
      data_in <= opcode_1579;
      clr_wp_1602 <= data_out(0 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= EQ_u3_u1_1601_inst_req_0;
      EQ_u3_u1_1601_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= EQ_u3_u1_1601_inst_req_1;
      EQ_u3_u1_1601_inst_ack_1 <= ackR_unguarded(0);
      ApIntEq_group_27_gI: SplitGuardInterface generic map(name => "ApIntEq_group_27_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
          operator_id => "ApIntEq",
          name => "ApIntEq_group_27",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 3,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 0, 
          num_inputs    => 1,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 1,
          constant_operand => "100",
          constant_width => 3,
          buffering  => 1,
          flow_through => false,
          full_rate  => false,
          use_constant  => true
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
    end Block; -- split operator group 27
    -- shared split operator group (28) : EQ_u3_u1_1606_inst 
    ApIntEq_group_28: Block -- 
      signal data_in: std_logic_vector(2 downto 0);
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
      data_in <= opcode_1579;
      set_bp_1607 <= data_out(0 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= EQ_u3_u1_1606_inst_req_0;
      EQ_u3_u1_1606_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= EQ_u3_u1_1606_inst_req_1;
      EQ_u3_u1_1606_inst_ack_1 <= ackR_unguarded(0);
      ApIntEq_group_28_gI: SplitGuardInterface generic map(name => "ApIntEq_group_28_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
          operator_id => "ApIntEq",
          name => "ApIntEq_group_28",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 3,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 0, 
          num_inputs    => 1,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 1,
          constant_operand => "001",
          constant_width => 3,
          buffering  => 1,
          flow_through => false,
          full_rate  => false,
          use_constant  => true
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
    end Block; -- split operator group 28
    -- shared split operator group (29) : EQ_u3_u1_1611_inst 
    ApIntEq_group_29: Block -- 
      signal data_in: std_logic_vector(2 downto 0);
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
      data_in <= opcode_1579;
      set_wp_1612 <= data_out(0 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= EQ_u3_u1_1611_inst_req_0;
      EQ_u3_u1_1611_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= EQ_u3_u1_1611_inst_req_1;
      EQ_u3_u1_1611_inst_ack_1 <= ackR_unguarded(0);
      ApIntEq_group_29_gI: SplitGuardInterface generic map(name => "ApIntEq_group_29_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
          operator_id => "ApIntEq",
          name => "ApIntEq_group_29",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 3,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 0, 
          num_inputs    => 1,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 1,
          constant_operand => "011",
          constant_width => 3,
          buffering  => 1,
          flow_through => false,
          full_rate  => false,
          use_constant  => true
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
    end Block; -- split operator group 29
    -- unary operator NOT_u1_u1_1635_inst
    process(prev_intr_1568) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", prev_intr_1568, tmp_var);
      NOT_u1_u1_1635_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator OR_u1_u1_1616_inst
    OR_u1_u1_1616_wire <= (intr_hit_1592 or clr_bp_1597);
    -- flow through binary operator OR_u1_u1_1618_inst
    OR_u1_u1_1618_wire <= (OR_u1_u1_1616_wire or clr_wp_1602);
    -- flow through binary operator OR_u1_u1_1621_inst
    OR_u1_u1_1621_wire <= (set_bp_1607 or set_wp_1612);
    -- shared split operator group (34) : OR_u1_u1_1622_inst 
    ApIntOr_group_34: Block -- 
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
      data_in <= OR_u1_u1_1618_wire & OR_u1_u1_1621_wire;
      cmd_success_1623 <= data_out(0 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= OR_u1_u1_1622_inst_req_0;
      OR_u1_u1_1622_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= OR_u1_u1_1622_inst_req_1;
      OR_u1_u1_1622_inst_ack_1 <= ackR_unguarded(0);
      ApIntOr_group_34_gI: SplitGuardInterface generic map(name => "ApIntOr_group_34_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
          name => "ApIntOr_group_34",
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
    end Block; -- split operator group 34
    -- shared split operator group (35) : OR_u1_u1_1664_inst 
    ApIntOr_group_35: Block -- 
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
      data_in <= set_bp_1607 & clr_bp_1597;
      update_bp_1665 <= data_out(0 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= OR_u1_u1_1664_inst_req_0;
      OR_u1_u1_1664_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= OR_u1_u1_1664_inst_req_1;
      OR_u1_u1_1664_inst_ack_1 <= ackR_unguarded(0);
      ApIntOr_group_35_gI: SplitGuardInterface generic map(name => "ApIntOr_group_35_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
          name => "ApIntOr_group_35",
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
    end Block; -- split operator group 35
    -- shared split operator group (36) : OR_u1_u1_1669_inst 
    ApIntOr_group_36: Block -- 
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
      data_in <= set_wp_1612 & clr_wp_1602;
      update_wp_1670 <= data_out(0 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= OR_u1_u1_1669_inst_req_0;
      OR_u1_u1_1669_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= OR_u1_u1_1669_inst_req_1;
      OR_u1_u1_1669_inst_ack_1 <= ackR_unguarded(0);
      ApIntOr_group_36_gI: SplitGuardInterface generic map(name => "ApIntOr_group_36_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
          name => "ApIntOr_group_36",
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
    end Block; -- split operator group 36
    -- shared split operator group (37) : OR_u1_u1_1674_inst 
    ApIntOr_group_37: Block -- 
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
      data_in <= set_bp_1607 & set_wp_1612;
      set_reg_1675 <= data_out(0 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= OR_u1_u1_1674_inst_req_0;
      OR_u1_u1_1674_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= OR_u1_u1_1674_inst_req_1;
      OR_u1_u1_1674_inst_ack_1 <= ackR_unguarded(0);
      ApIntOr_group_37_gI: SplitGuardInterface generic map(name => "ApIntOr_group_37_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
          name => "ApIntOr_group_37",
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
    end Block; -- split operator group 37
    -- shared outport operator group (0) : WPIPE_debug_bp_0_1539_inst WPIPE_debug_bp_0_1731_inst 
    OutportGroup_0: Block -- 
      signal data_in: std_logic_vector(63 downto 0);
      signal sample_req, sample_ack : BooleanArray( 1 downto 0);
      signal update_req, update_ack : BooleanArray( 1 downto 0);
      signal sample_req_unguarded, sample_ack_unguarded : BooleanArray( 1 downto 0);
      signal update_req_unguarded, update_ack_unguarded : BooleanArray( 1 downto 0);
      signal guard_vector : std_logic_vector( 1 downto 0);
      constant inBUFs : IntegerArray(1 downto 0) := (1 => 0, 0 => 0);
      constant guardFlags : BooleanArray(1 downto 0) := (0 => true, 1 => false);
      constant guardBuffering: IntegerArray(1 downto 0)  := (0 => 2, 1 => 2);
      -- 
    begin -- 
      sample_req_unguarded(1) <= WPIPE_debug_bp_0_1539_inst_req_0;
      sample_req_unguarded(0) <= WPIPE_debug_bp_0_1731_inst_req_0;
      WPIPE_debug_bp_0_1539_inst_ack_0 <= sample_ack_unguarded(1);
      WPIPE_debug_bp_0_1731_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(1) <= WPIPE_debug_bp_0_1539_inst_req_1;
      update_req_unguarded(0) <= WPIPE_debug_bp_0_1731_inst_req_1;
      WPIPE_debug_bp_0_1539_inst_ack_1 <= update_ack_unguarded(1);
      WPIPE_debug_bp_0_1731_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= update_bp0_1688(0);
      guard_vector(1)  <=  '1';
      data_in <= konst_1540_wire_constant & CONCAT_u31_u32_1737_wire;
      debug_bp_0_write_0_gI: SplitGuardInterface generic map(name => "debug_bp_0_write_0_gI", nreqs => 2, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      debug_bp_0_write_0: OutputPortRevised -- 
        generic map ( name => "debug_bp_0", data_width => 32, num_reqs => 2, input_buffering => inBUFs, full_rate => false,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => debug_bp_0_pipe_write_req(0),
          oack => debug_bp_0_pipe_write_ack(0),
          odata => debug_bp_0_pipe_write_data(31 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    -- shared outport operator group (1) : WPIPE_debug_bp_1_1542_inst WPIPE_debug_bp_1_1740_inst 
    OutportGroup_1: Block -- 
      signal data_in: std_logic_vector(63 downto 0);
      signal sample_req, sample_ack : BooleanArray( 1 downto 0);
      signal update_req, update_ack : BooleanArray( 1 downto 0);
      signal sample_req_unguarded, sample_ack_unguarded : BooleanArray( 1 downto 0);
      signal update_req_unguarded, update_ack_unguarded : BooleanArray( 1 downto 0);
      signal guard_vector : std_logic_vector( 1 downto 0);
      constant inBUFs : IntegerArray(1 downto 0) := (1 => 0, 0 => 0);
      constant guardFlags : BooleanArray(1 downto 0) := (0 => true, 1 => false);
      constant guardBuffering: IntegerArray(1 downto 0)  := (0 => 2, 1 => 2);
      -- 
    begin -- 
      sample_req_unguarded(1) <= WPIPE_debug_bp_1_1542_inst_req_0;
      sample_req_unguarded(0) <= WPIPE_debug_bp_1_1740_inst_req_0;
      WPIPE_debug_bp_1_1542_inst_ack_0 <= sample_ack_unguarded(1);
      WPIPE_debug_bp_1_1740_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(1) <= WPIPE_debug_bp_1_1542_inst_req_1;
      update_req_unguarded(0) <= WPIPE_debug_bp_1_1740_inst_req_1;
      WPIPE_debug_bp_1_1542_inst_ack_1 <= update_ack_unguarded(1);
      WPIPE_debug_bp_1_1740_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= update_bp1_1693(0);
      guard_vector(1)  <=  '1';
      data_in <= konst_1543_wire_constant & CONCAT_u31_u32_1746_wire;
      debug_bp_1_write_1_gI: SplitGuardInterface generic map(name => "debug_bp_1_write_1_gI", nreqs => 2, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      debug_bp_1_write_1: OutputPortRevised -- 
        generic map ( name => "debug_bp_1", data_width => 32, num_reqs => 2, input_buffering => inBUFs, full_rate => false,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => debug_bp_1_pipe_write_req(0),
          oack => debug_bp_1_pipe_write_ack(0),
          odata => debug_bp_1_pipe_write_data(31 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 1
    -- shared outport operator group (2) : WPIPE_debug_bp_2_1545_inst WPIPE_debug_bp_2_1749_inst 
    OutportGroup_2: Block -- 
      signal data_in: std_logic_vector(63 downto 0);
      signal sample_req, sample_ack : BooleanArray( 1 downto 0);
      signal update_req, update_ack : BooleanArray( 1 downto 0);
      signal sample_req_unguarded, sample_ack_unguarded : BooleanArray( 1 downto 0);
      signal update_req_unguarded, update_ack_unguarded : BooleanArray( 1 downto 0);
      signal guard_vector : std_logic_vector( 1 downto 0);
      constant inBUFs : IntegerArray(1 downto 0) := (1 => 0, 0 => 0);
      constant guardFlags : BooleanArray(1 downto 0) := (0 => true, 1 => false);
      constant guardBuffering: IntegerArray(1 downto 0)  := (0 => 2, 1 => 2);
      -- 
    begin -- 
      sample_req_unguarded(1) <= WPIPE_debug_bp_2_1545_inst_req_0;
      sample_req_unguarded(0) <= WPIPE_debug_bp_2_1749_inst_req_0;
      WPIPE_debug_bp_2_1545_inst_ack_0 <= sample_ack_unguarded(1);
      WPIPE_debug_bp_2_1749_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(1) <= WPIPE_debug_bp_2_1545_inst_req_1;
      update_req_unguarded(0) <= WPIPE_debug_bp_2_1749_inst_req_1;
      WPIPE_debug_bp_2_1545_inst_ack_1 <= update_ack_unguarded(1);
      WPIPE_debug_bp_2_1749_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= update_bp2_1698(0);
      guard_vector(1)  <=  '1';
      data_in <= konst_1546_wire_constant & CONCAT_u31_u32_1755_wire;
      debug_bp_2_write_2_gI: SplitGuardInterface generic map(name => "debug_bp_2_write_2_gI", nreqs => 2, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      debug_bp_2_write_2: OutputPortRevised -- 
        generic map ( name => "debug_bp_2", data_width => 32, num_reqs => 2, input_buffering => inBUFs, full_rate => false,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => debug_bp_2_pipe_write_req(0),
          oack => debug_bp_2_pipe_write_ack(0),
          odata => debug_bp_2_pipe_write_data(31 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 2
    -- shared outport operator group (3) : WPIPE_debug_bp_3_1548_inst WPIPE_debug_bp_3_1758_inst 
    OutportGroup_3: Block -- 
      signal data_in: std_logic_vector(63 downto 0);
      signal sample_req, sample_ack : BooleanArray( 1 downto 0);
      signal update_req, update_ack : BooleanArray( 1 downto 0);
      signal sample_req_unguarded, sample_ack_unguarded : BooleanArray( 1 downto 0);
      signal update_req_unguarded, update_ack_unguarded : BooleanArray( 1 downto 0);
      signal guard_vector : std_logic_vector( 1 downto 0);
      constant inBUFs : IntegerArray(1 downto 0) := (1 => 0, 0 => 0);
      constant guardFlags : BooleanArray(1 downto 0) := (0 => true, 1 => false);
      constant guardBuffering: IntegerArray(1 downto 0)  := (0 => 2, 1 => 2);
      -- 
    begin -- 
      sample_req_unguarded(1) <= WPIPE_debug_bp_3_1548_inst_req_0;
      sample_req_unguarded(0) <= WPIPE_debug_bp_3_1758_inst_req_0;
      WPIPE_debug_bp_3_1548_inst_ack_0 <= sample_ack_unguarded(1);
      WPIPE_debug_bp_3_1758_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(1) <= WPIPE_debug_bp_3_1548_inst_req_1;
      update_req_unguarded(0) <= WPIPE_debug_bp_3_1758_inst_req_1;
      WPIPE_debug_bp_3_1548_inst_ack_1 <= update_ack_unguarded(1);
      WPIPE_debug_bp_3_1758_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= update_bp3_1703(0);
      guard_vector(1)  <=  '1';
      data_in <= konst_1549_wire_constant & CONCAT_u31_u32_1764_wire;
      debug_bp_3_write_3_gI: SplitGuardInterface generic map(name => "debug_bp_3_write_3_gI", nreqs => 2, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      debug_bp_3_write_3: OutputPortRevised -- 
        generic map ( name => "debug_bp_3", data_width => 32, num_reqs => 2, input_buffering => inBUFs, full_rate => false,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => debug_bp_3_pipe_write_req(0),
          oack => debug_bp_3_pipe_write_ack(0),
          odata => debug_bp_3_pipe_write_data(31 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 3
    -- shared outport operator group (4) : WPIPE_debug_dbg_interrupt_1563_inst WPIPE_debug_dbg_interrupt_1632_inst 
    OutportGroup_4: Block -- 
      signal data_in: std_logic_vector(1 downto 0);
      signal sample_req, sample_ack : BooleanArray( 1 downto 0);
      signal update_req, update_ack : BooleanArray( 1 downto 0);
      signal sample_req_unguarded, sample_ack_unguarded : BooleanArray( 1 downto 0);
      signal update_req_unguarded, update_ack_unguarded : BooleanArray( 1 downto 0);
      signal guard_vector : std_logic_vector( 1 downto 0);
      constant inBUFs : IntegerArray(1 downto 0) := (1 => 0, 0 => 0);
      constant guardFlags : BooleanArray(1 downto 0) := (0 => false, 1 => false);
      constant guardBuffering: IntegerArray(1 downto 0)  := (0 => 2, 1 => 2);
      -- 
    begin -- 
      sample_req_unguarded(1) <= WPIPE_debug_dbg_interrupt_1563_inst_req_0;
      sample_req_unguarded(0) <= WPIPE_debug_dbg_interrupt_1632_inst_req_0;
      WPIPE_debug_dbg_interrupt_1563_inst_ack_0 <= sample_ack_unguarded(1);
      WPIPE_debug_dbg_interrupt_1632_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(1) <= WPIPE_debug_dbg_interrupt_1563_inst_req_1;
      update_req_unguarded(0) <= WPIPE_debug_dbg_interrupt_1632_inst_req_1;
      WPIPE_debug_dbg_interrupt_1563_inst_ack_1 <= update_ack_unguarded(1);
      WPIPE_debug_dbg_interrupt_1632_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      guard_vector(1)  <=  '1';
      data_in <= konst_1564_wire_constant & AND_u1_u1_1636_wire;
      debug_dbg_interrupt_write_4_gI: SplitGuardInterface generic map(name => "debug_dbg_interrupt_write_4_gI", nreqs => 2, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      debug_dbg_interrupt_write_4: OutputPortRevised -- 
        generic map ( name => "debug_dbg_interrupt", data_width => 1, num_reqs => 2, input_buffering => inBUFs, full_rate => false,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => debug_dbg_interrupt_pipe_write_req(0),
          oack => debug_dbg_interrupt_pipe_write_ack(0),
          odata => debug_dbg_interrupt_pipe_write_data(0 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 4
    -- shared outport operator group (5) : WPIPE_debug_wp_0_1551_inst WPIPE_debug_wp_0_1767_inst 
    OutportGroup_5: Block -- 
      signal data_in: std_logic_vector(63 downto 0);
      signal sample_req, sample_ack : BooleanArray( 1 downto 0);
      signal update_req, update_ack : BooleanArray( 1 downto 0);
      signal sample_req_unguarded, sample_ack_unguarded : BooleanArray( 1 downto 0);
      signal update_req_unguarded, update_ack_unguarded : BooleanArray( 1 downto 0);
      signal guard_vector : std_logic_vector( 1 downto 0);
      constant inBUFs : IntegerArray(1 downto 0) := (1 => 0, 0 => 0);
      constant guardFlags : BooleanArray(1 downto 0) := (0 => true, 1 => false);
      constant guardBuffering: IntegerArray(1 downto 0)  := (0 => 2, 1 => 2);
      -- 
    begin -- 
      sample_req_unguarded(1) <= WPIPE_debug_wp_0_1551_inst_req_0;
      sample_req_unguarded(0) <= WPIPE_debug_wp_0_1767_inst_req_0;
      WPIPE_debug_wp_0_1551_inst_ack_0 <= sample_ack_unguarded(1);
      WPIPE_debug_wp_0_1767_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(1) <= WPIPE_debug_wp_0_1551_inst_req_1;
      update_req_unguarded(0) <= WPIPE_debug_wp_0_1767_inst_req_1;
      WPIPE_debug_wp_0_1551_inst_ack_1 <= update_ack_unguarded(1);
      WPIPE_debug_wp_0_1767_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= update_wp0_1708(0);
      guard_vector(1)  <=  '1';
      data_in <= konst_1552_wire_constant & CONCAT_u30_u32_1771_wire;
      debug_wp_0_write_5_gI: SplitGuardInterface generic map(name => "debug_wp_0_write_5_gI", nreqs => 2, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      debug_wp_0_write_5: OutputPortRevised -- 
        generic map ( name => "debug_wp_0", data_width => 32, num_reqs => 2, input_buffering => inBUFs, full_rate => false,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => debug_wp_0_pipe_write_req(0),
          oack => debug_wp_0_pipe_write_ack(0),
          odata => debug_wp_0_pipe_write_data(31 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 5
    -- shared outport operator group (6) : WPIPE_debug_wp_1_1554_inst WPIPE_debug_wp_1_1774_inst 
    OutportGroup_6: Block -- 
      signal data_in: std_logic_vector(63 downto 0);
      signal sample_req, sample_ack : BooleanArray( 1 downto 0);
      signal update_req, update_ack : BooleanArray( 1 downto 0);
      signal sample_req_unguarded, sample_ack_unguarded : BooleanArray( 1 downto 0);
      signal update_req_unguarded, update_ack_unguarded : BooleanArray( 1 downto 0);
      signal guard_vector : std_logic_vector( 1 downto 0);
      constant inBUFs : IntegerArray(1 downto 0) := (1 => 0, 0 => 0);
      constant guardFlags : BooleanArray(1 downto 0) := (0 => true, 1 => false);
      constant guardBuffering: IntegerArray(1 downto 0)  := (0 => 2, 1 => 2);
      -- 
    begin -- 
      sample_req_unguarded(1) <= WPIPE_debug_wp_1_1554_inst_req_0;
      sample_req_unguarded(0) <= WPIPE_debug_wp_1_1774_inst_req_0;
      WPIPE_debug_wp_1_1554_inst_ack_0 <= sample_ack_unguarded(1);
      WPIPE_debug_wp_1_1774_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(1) <= WPIPE_debug_wp_1_1554_inst_req_1;
      update_req_unguarded(0) <= WPIPE_debug_wp_1_1774_inst_req_1;
      WPIPE_debug_wp_1_1554_inst_ack_1 <= update_ack_unguarded(1);
      WPIPE_debug_wp_1_1774_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= update_wp1_1713(0);
      guard_vector(1)  <=  '1';
      data_in <= konst_1555_wire_constant & CONCAT_u30_u32_1778_wire;
      debug_wp_1_write_6_gI: SplitGuardInterface generic map(name => "debug_wp_1_write_6_gI", nreqs => 2, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      debug_wp_1_write_6: OutputPortRevised -- 
        generic map ( name => "debug_wp_1", data_width => 32, num_reqs => 2, input_buffering => inBUFs, full_rate => false,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => debug_wp_1_pipe_write_req(0),
          oack => debug_wp_1_pipe_write_ack(0),
          odata => debug_wp_1_pipe_write_data(31 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 6
    -- shared outport operator group (7) : WPIPE_debug_wp_2_1557_inst WPIPE_debug_wp_2_1781_inst 
    OutportGroup_7: Block -- 
      signal data_in: std_logic_vector(63 downto 0);
      signal sample_req, sample_ack : BooleanArray( 1 downto 0);
      signal update_req, update_ack : BooleanArray( 1 downto 0);
      signal sample_req_unguarded, sample_ack_unguarded : BooleanArray( 1 downto 0);
      signal update_req_unguarded, update_ack_unguarded : BooleanArray( 1 downto 0);
      signal guard_vector : std_logic_vector( 1 downto 0);
      constant inBUFs : IntegerArray(1 downto 0) := (1 => 0, 0 => 0);
      constant guardFlags : BooleanArray(1 downto 0) := (0 => true, 1 => false);
      constant guardBuffering: IntegerArray(1 downto 0)  := (0 => 2, 1 => 2);
      -- 
    begin -- 
      sample_req_unguarded(1) <= WPIPE_debug_wp_2_1557_inst_req_0;
      sample_req_unguarded(0) <= WPIPE_debug_wp_2_1781_inst_req_0;
      WPIPE_debug_wp_2_1557_inst_ack_0 <= sample_ack_unguarded(1);
      WPIPE_debug_wp_2_1781_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(1) <= WPIPE_debug_wp_2_1557_inst_req_1;
      update_req_unguarded(0) <= WPIPE_debug_wp_2_1781_inst_req_1;
      WPIPE_debug_wp_2_1557_inst_ack_1 <= update_ack_unguarded(1);
      WPIPE_debug_wp_2_1781_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= update_wp2_1718(0);
      guard_vector(1)  <=  '1';
      data_in <= konst_1558_wire_constant & CONCAT_u30_u32_1785_wire;
      debug_wp_2_write_7_gI: SplitGuardInterface generic map(name => "debug_wp_2_write_7_gI", nreqs => 2, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      debug_wp_2_write_7: OutputPortRevised -- 
        generic map ( name => "debug_wp_2", data_width => 32, num_reqs => 2, input_buffering => inBUFs, full_rate => false,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => debug_wp_2_pipe_write_req(0),
          oack => debug_wp_2_pipe_write_ack(0),
          odata => debug_wp_2_pipe_write_data(31 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 7
    -- shared outport operator group (8) : WPIPE_debug_wp_3_1560_inst WPIPE_debug_wp_3_1788_inst 
    OutportGroup_8: Block -- 
      signal data_in: std_logic_vector(63 downto 0);
      signal sample_req, sample_ack : BooleanArray( 1 downto 0);
      signal update_req, update_ack : BooleanArray( 1 downto 0);
      signal sample_req_unguarded, sample_ack_unguarded : BooleanArray( 1 downto 0);
      signal update_req_unguarded, update_ack_unguarded : BooleanArray( 1 downto 0);
      signal guard_vector : std_logic_vector( 1 downto 0);
      constant inBUFs : IntegerArray(1 downto 0) := (1 => 0, 0 => 0);
      constant guardFlags : BooleanArray(1 downto 0) := (0 => true, 1 => false);
      constant guardBuffering: IntegerArray(1 downto 0)  := (0 => 2, 1 => 2);
      -- 
    begin -- 
      sample_req_unguarded(1) <= WPIPE_debug_wp_3_1560_inst_req_0;
      sample_req_unguarded(0) <= WPIPE_debug_wp_3_1788_inst_req_0;
      WPIPE_debug_wp_3_1560_inst_ack_0 <= sample_ack_unguarded(1);
      WPIPE_debug_wp_3_1788_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(1) <= WPIPE_debug_wp_3_1560_inst_req_1;
      update_req_unguarded(0) <= WPIPE_debug_wp_3_1788_inst_req_1;
      WPIPE_debug_wp_3_1560_inst_ack_1 <= update_ack_unguarded(1);
      WPIPE_debug_wp_3_1788_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= update_wp3_1723(0);
      guard_vector(1)  <=  '1';
      data_in <= konst_1561_wire_constant & CONCAT_u30_u32_1792_wire;
      debug_wp_3_write_8_gI: SplitGuardInterface generic map(name => "debug_wp_3_write_8_gI", nreqs => 2, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      debug_wp_3_write_8: OutputPortRevised -- 
        generic map ( name => "debug_wp_3", data_width => 32, num_reqs => 2, input_buffering => inBUFs, full_rate => false,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => debug_wp_3_pipe_write_req(0),
          oack => debug_wp_3_pipe_write_ack(0),
          odata => debug_wp_3_pipe_write_data(31 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 8
    -- shared outport operator group (9) : WPIPE_teu_debug_to_ccu_response_1794_inst 
    OutportGroup_9: Block -- 
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
      sample_req_unguarded(0) <= WPIPE_teu_debug_to_ccu_response_1794_inst_req_0;
      WPIPE_teu_debug_to_ccu_response_1794_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_teu_debug_to_ccu_response_1794_inst_req_1;
      WPIPE_teu_debug_to_ccu_response_1794_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= R_ZERO_1_1795_wire_constant;
      teu_debug_to_ccu_response_write_9_gI: SplitGuardInterface generic map(name => "teu_debug_to_ccu_response_write_9_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      teu_debug_to_ccu_response_write_9: OutputPortRevised -- 
        generic map ( name => "teu_debug_to_ccu_response", data_width => 1, num_reqs => 1, input_buffering => inBUFs, full_rate => false,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => teu_debug_to_ccu_response_pipe_write_req(0),
          oack => teu_debug_to_ccu_response_pipe_write_ack(0),
          odata => teu_debug_to_ccu_response_pipe_write_data(0 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 9
    -- shared call operator group (0) : call_stmt_1575_call 
    get_debug_command_from_ccu_call_group_0: Block -- 
      signal data_out: std_logic_vector(39 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqL_unregulated, ackL_unregulated : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= call_stmt_1575_call_req_0;
      call_stmt_1575_call_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= call_stmt_1575_call_req_1;
      call_stmt_1575_call_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      reqL <= reqL_unregulated;
      ackL_unregulated <= ackL;
      get_debug_command_from_ccu_call_group_0_gI: SplitGuardInterface generic map(name => "get_debug_command_from_ccu_call_group_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
      debug_command_1575 <= data_out(39 downto 32);
      debug_data_1575 <= data_out(31 downto 0);
      CallReq: InputMuxBaseNoData -- 
        generic map (name => "InputMuxBaseNoData",
        twidth => 1,
        nreqs => 1,
        no_arbitration => false)
        port map ( -- 
          reqL => reqL , 
          ackL => ackL , 
          reqR => get_debug_command_from_ccu_call_reqs(0),
          ackR => get_debug_command_from_ccu_call_acks(0),
          tagR => get_debug_command_from_ccu_call_tag(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      CallComplete: OutputDemuxBaseWithBuffering -- 
        generic map ( -- 
          iwidth => 40,
          owidth => 40,
          detailed_buffering_per_output => outBUFs, 
          full_rate => false, 
          twidth => 1,
          name => "OutputDemuxBaseWithBuffering",
          nreqs => 1) -- 
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          dataR => data_out, 
          reqL => get_debug_command_from_ccu_return_acks(0), -- cross-over
          ackL => get_debug_command_from_ccu_return_reqs(0), -- cross-over
          dataL => get_debug_command_from_ccu_return_data(39 downto 0),
          tagL => get_debug_command_from_ccu_return_tag(0 downto 0),
          clk => clk,
          reset => reset -- 
        ); -- 
      -- 
    end Block; -- call group 0
    -- 
  end Block; -- data_path
  -- 
end debug_unit_ccu_daemon_arch;
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
library teu_stream_corrector;
use teu_stream_corrector.stream_corrector_global_package.all;
entity decode_stream_corrector_info_Volatile is -- 
  port ( -- 
    sc_info : in  std_logic_vector(5 downto 0);
    iu_cti : out  std_logic_vector(0 downto 0);
    fp_cti : out  std_logic_vector(0 downto 0);
    cp_cti : out  std_logic_vector(0 downto 0);
    iu_flush : out  std_logic_vector(0 downto 0);
    iu_write_psr : out  std_logic_vector(0 downto 0);
    iu_mmu_ctrl_write : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity decode_stream_corrector_info_Volatile;
architecture decode_stream_corrector_info_Volatile_arch of decode_stream_corrector_info_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(6-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal sc_info_buffer :  std_logic_vector(5 downto 0);
  -- output port buffer signals
  signal iu_cti_buffer :  std_logic_vector(0 downto 0);
  signal fp_cti_buffer :  std_logic_vector(0 downto 0);
  signal cp_cti_buffer :  std_logic_vector(0 downto 0);
  signal iu_flush_buffer :  std_logic_vector(0 downto 0);
  signal iu_write_psr_buffer :  std_logic_vector(0 downto 0);
  signal iu_mmu_ctrl_write_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  sc_info_buffer <= sc_info;
  -- output handling  -------------------------------------------------------
  iu_cti <= iu_cti_buffer;
  fp_cti <= fp_cti_buffer;
  cp_cti <= cp_cti_buffer;
  iu_flush <= iu_flush_buffer;
  iu_write_psr <= iu_write_psr_buffer;
  iu_mmu_ctrl_write <= iu_mmu_ctrl_write_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    -- 
  begin -- 
    -- flow-through slice operator slice_4150_inst
    iu_cti_buffer <= sc_info_buffer(5 downto 5);
    -- flow-through slice operator slice_4154_inst
    fp_cti_buffer <= sc_info_buffer(4 downto 4);
    -- flow-through slice operator slice_4158_inst
    cp_cti_buffer <= sc_info_buffer(3 downto 3);
    -- flow-through slice operator slice_4162_inst
    iu_flush_buffer <= sc_info_buffer(2 downto 2);
    -- flow-through slice operator slice_4166_inst
    iu_write_psr_buffer <= sc_info_buffer(1 downto 1);
    -- flow-through slice operator slice_4170_inst
    iu_mmu_ctrl_write_buffer <= sc_info_buffer(0 downto 0);
    -- 
  end Block; -- data_path
  -- 
end decode_stream_corrector_info_Volatile_arch;
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
library teu_stream_corrector;
use teu_stream_corrector.stream_corrector_global_package.all;
entity decode_thread_control_word_Volatile is -- 
  port ( -- 
    ctrl_word : in  std_logic_vector(21 downto 0);
    sc_instr_class : out  std_logic_vector(2 downto 0);
    debug_mode : out  std_logic_vector(0 downto 0);
    logger_active : out  std_logic_vector(0 downto 0);
    proc_ilvl : out  std_logic_vector(3 downto 0);
    enable_traps : out  std_logic_vector(0 downto 0);
    single_step_mode : out  std_logic_vector(0 downto 0);
    ignore_break_points : out  std_logic_vector(0 downto 0);
    S : out  std_logic_vector(0 downto 0);
    imm_bit : out  std_logic_vector(0 downto 0);
    is_write_psr : out  std_logic_vector(0 downto 0);
    is_mmu_ctrl_write : out  std_logic_vector(0 downto 0);
    is_flush : out  std_logic_vector(0 downto 0);
    is_cti : out  std_logic_vector(0 downto 0);
    mis_predict : out  std_logic_vector(0 downto 0);
    trap_bit : out  std_logic_vector(0 downto 0);
    stream_head : out  std_logic_vector(0 downto 0);
    thread_head : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity decode_thread_control_word_Volatile;
architecture decode_thread_control_word_Volatile_arch of decode_thread_control_word_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(22-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal ctrl_word_buffer :  std_logic_vector(21 downto 0);
  -- output port buffer signals
  signal sc_instr_class_buffer :  std_logic_vector(2 downto 0);
  signal debug_mode_buffer :  std_logic_vector(0 downto 0);
  signal logger_active_buffer :  std_logic_vector(0 downto 0);
  signal proc_ilvl_buffer :  std_logic_vector(3 downto 0);
  signal enable_traps_buffer :  std_logic_vector(0 downto 0);
  signal single_step_mode_buffer :  std_logic_vector(0 downto 0);
  signal ignore_break_points_buffer :  std_logic_vector(0 downto 0);
  signal S_buffer :  std_logic_vector(0 downto 0);
  signal imm_bit_buffer :  std_logic_vector(0 downto 0);
  signal is_write_psr_buffer :  std_logic_vector(0 downto 0);
  signal is_mmu_ctrl_write_buffer :  std_logic_vector(0 downto 0);
  signal is_flush_buffer :  std_logic_vector(0 downto 0);
  signal is_cti_buffer :  std_logic_vector(0 downto 0);
  signal mis_predict_buffer :  std_logic_vector(0 downto 0);
  signal trap_bit_buffer :  std_logic_vector(0 downto 0);
  signal stream_head_buffer :  std_logic_vector(0 downto 0);
  signal thread_head_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  ctrl_word_buffer <= ctrl_word;
  -- output handling  -------------------------------------------------------
  sc_instr_class <= sc_instr_class_buffer;
  debug_mode <= debug_mode_buffer;
  logger_active <= logger_active_buffer;
  proc_ilvl <= proc_ilvl_buffer;
  enable_traps <= enable_traps_buffer;
  single_step_mode <= single_step_mode_buffer;
  ignore_break_points <= ignore_break_points_buffer;
  S <= S_buffer;
  imm_bit <= imm_bit_buffer;
  is_write_psr <= is_write_psr_buffer;
  is_mmu_ctrl_write <= is_mmu_ctrl_write_buffer;
  is_flush <= is_flush_buffer;
  is_cti <= is_cti_buffer;
  mis_predict <= mis_predict_buffer;
  trap_bit <= trap_bit_buffer;
  stream_head <= stream_head_buffer;
  thread_head <= thread_head_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    -- 
  begin -- 
    -- flow-through slice operator slice_4194_inst
    sc_instr_class_buffer <= ctrl_word_buffer(21 downto 19);
    -- flow-through slice operator slice_4198_inst
    debug_mode_buffer <= ctrl_word_buffer(18 downto 18);
    -- flow-through slice operator slice_4202_inst
    logger_active_buffer <= ctrl_word_buffer(17 downto 17);
    -- flow-through slice operator slice_4206_inst
    proc_ilvl_buffer <= ctrl_word_buffer(16 downto 13);
    -- flow-through slice operator slice_4210_inst
    enable_traps_buffer <= ctrl_word_buffer(12 downto 12);
    -- flow-through slice operator slice_4214_inst
    single_step_mode_buffer <= ctrl_word_buffer(11 downto 11);
    -- flow-through slice operator slice_4218_inst
    ignore_break_points_buffer <= ctrl_word_buffer(10 downto 10);
    -- flow-through slice operator slice_4222_inst
    S_buffer <= ctrl_word_buffer(9 downto 9);
    -- flow-through slice operator slice_4226_inst
    imm_bit_buffer <= ctrl_word_buffer(8 downto 8);
    -- flow-through slice operator slice_4230_inst
    is_write_psr_buffer <= ctrl_word_buffer(7 downto 7);
    -- flow-through slice operator slice_4234_inst
    is_mmu_ctrl_write_buffer <= ctrl_word_buffer(6 downto 6);
    -- flow-through slice operator slice_4238_inst
    is_flush_buffer <= ctrl_word_buffer(5 downto 5);
    -- flow-through slice operator slice_4242_inst
    is_cti_buffer <= ctrl_word_buffer(4 downto 4);
    -- flow-through slice operator slice_4246_inst
    mis_predict_buffer <= ctrl_word_buffer(3 downto 3);
    -- flow-through slice operator slice_4250_inst
    trap_bit_buffer <= ctrl_word_buffer(2 downto 2);
    -- flow-through slice operator slice_4254_inst
    stream_head_buffer <= ctrl_word_buffer(1 downto 1);
    -- flow-through slice operator slice_4258_inst
    thread_head_buffer <= ctrl_word_buffer(0 downto 0);
    -- 
  end Block; -- data_path
  -- 
end decode_thread_control_word_Volatile_arch;
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
library teu_stream_corrector;
use teu_stream_corrector.stream_corrector_global_package.all;
entity exec_bicc_generic_Volatile is -- 
  port ( -- 
    br_annul_flag : in  std_logic_vector(0 downto 0);
    br_cond : in  std_logic_vector(3 downto 0);
    ccodes : in  std_logic_vector(3 downto 0);
    br_taken : out  std_logic_vector(0 downto 0);
    annul_next : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity exec_bicc_generic_Volatile;
architecture exec_bicc_generic_Volatile_arch of exec_bicc_generic_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(9-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal br_annul_flag_buffer :  std_logic_vector(0 downto 0);
  signal br_cond_buffer :  std_logic_vector(3 downto 0);
  signal ccodes_buffer :  std_logic_vector(3 downto 0);
  -- output port buffer signals
  signal br_taken_buffer :  std_logic_vector(0 downto 0);
  signal annul_next_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  br_annul_flag_buffer <= br_annul_flag;
  br_cond_buffer <= br_cond;
  ccodes_buffer <= ccodes;
  -- output handling  -------------------------------------------------------
  br_taken <= br_taken_buffer;
  annul_next <= annul_next_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_4687_wire : std_logic_vector(0 downto 0);
    signal C_4541 : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4545_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4551_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4558_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4565_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4573_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4584_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4595_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4604_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4615_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4624_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4633_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4640_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4648_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4655_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4662_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4669_wire : std_logic_vector(0 downto 0);
    signal MUX_4548_wire : std_logic_vector(0 downto 0);
    signal MUX_4554_wire : std_logic_vector(0 downto 0);
    signal MUX_4562_wire : std_logic_vector(0 downto 0);
    signal MUX_4568_wire : std_logic_vector(0 downto 0);
    signal MUX_4581_wire : std_logic_vector(0 downto 0);
    signal MUX_4591_wire : std_logic_vector(0 downto 0);
    signal MUX_4601_wire : std_logic_vector(0 downto 0);
    signal MUX_4609_wire : std_logic_vector(0 downto 0);
    signal MUX_4621_wire : std_logic_vector(0 downto 0);
    signal MUX_4629_wire : std_logic_vector(0 downto 0);
    signal MUX_4637_wire : std_logic_vector(0 downto 0);
    signal MUX_4643_wire : std_logic_vector(0 downto 0);
    signal MUX_4652_wire : std_logic_vector(0 downto 0);
    signal MUX_4658_wire : std_logic_vector(0 downto 0);
    signal MUX_4666_wire : std_logic_vector(0 downto 0);
    signal MUX_4672_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_4560_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_4579_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_4599_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_4619_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_4635_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_4650_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_4664_wire : std_logic_vector(0 downto 0);
    signal N_4526 : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4555_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4569_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4570_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4578_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4589_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4592_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4610_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4611_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4612_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4618_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4627_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4630_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4644_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4645_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4659_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4673_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4674_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4675_wire : std_logic_vector(0 downto 0);
    signal R_ONE_1_4546_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_4552_wire_constant : std_logic_vector(0 downto 0);
    signal V_4536 : std_logic_vector(0 downto 0);
    signal XOR_u1_u1_4577_wire : std_logic_vector(0 downto 0);
    signal XOR_u1_u1_4588_wire : std_logic_vector(0 downto 0);
    signal XOR_u1_u1_4598_wire : std_logic_vector(0 downto 0);
    signal XOR_u1_u1_4607_wire : std_logic_vector(0 downto 0);
    signal Z_4531 : std_logic_vector(0 downto 0);
    signal branch_always_4682 : std_logic_vector(0 downto 0);
    signal konst_4524_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4529_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4534_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4539_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4544_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4547_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4550_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4553_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4557_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4561_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4564_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4567_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4572_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4580_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4583_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4590_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4594_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4600_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4603_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4608_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4614_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4620_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4623_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4628_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4632_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4636_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4639_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4642_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4647_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4651_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4654_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4657_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4661_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4665_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4668_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4671_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4680_wire_constant : std_logic_vector(3 downto 0);
    -- 
  begin -- 
    R_ONE_1_4546_wire_constant <= "1";
    R_ZERO_1_4552_wire_constant <= "0";
    konst_4524_wire_constant <= "0011";
    konst_4529_wire_constant <= "0010";
    konst_4534_wire_constant <= "0001";
    konst_4539_wire_constant <= "0000";
    konst_4544_wire_constant <= "1000";
    konst_4547_wire_constant <= "0";
    konst_4550_wire_constant <= "0000";
    konst_4553_wire_constant <= "0";
    konst_4557_wire_constant <= "1001";
    konst_4561_wire_constant <= "0";
    konst_4564_wire_constant <= "0001";
    konst_4567_wire_constant <= "0";
    konst_4572_wire_constant <= "1010";
    konst_4580_wire_constant <= "0";
    konst_4583_wire_constant <= "0010";
    konst_4590_wire_constant <= "0";
    konst_4594_wire_constant <= "1011";
    konst_4600_wire_constant <= "0";
    konst_4603_wire_constant <= "0011";
    konst_4608_wire_constant <= "0";
    konst_4614_wire_constant <= "1100";
    konst_4620_wire_constant <= "0";
    konst_4623_wire_constant <= "0100";
    konst_4628_wire_constant <= "0";
    konst_4632_wire_constant <= "1101";
    konst_4636_wire_constant <= "0";
    konst_4639_wire_constant <= "0101";
    konst_4642_wire_constant <= "0";
    konst_4647_wire_constant <= "1110";
    konst_4651_wire_constant <= "0";
    konst_4654_wire_constant <= "0110";
    konst_4657_wire_constant <= "0";
    konst_4661_wire_constant <= "1111";
    konst_4665_wire_constant <= "0";
    konst_4668_wire_constant <= "0111";
    konst_4671_wire_constant <= "0";
    konst_4680_wire_constant <= "1000";
    -- flow-through select operator MUX_4548_inst
    MUX_4548_wire <= R_ONE_1_4546_wire_constant when (EQ_u4_u1_4545_wire(0) /=  '0') else konst_4547_wire_constant;
    -- flow-through select operator MUX_4554_inst
    MUX_4554_wire <= R_ZERO_1_4552_wire_constant when (EQ_u4_u1_4551_wire(0) /=  '0') else konst_4553_wire_constant;
    -- flow-through select operator MUX_4562_inst
    MUX_4562_wire <= NOT_u1_u1_4560_wire when (EQ_u4_u1_4558_wire(0) /=  '0') else konst_4561_wire_constant;
    -- flow-through select operator MUX_4568_inst
    MUX_4568_wire <= Z_4531 when (EQ_u4_u1_4565_wire(0) /=  '0') else konst_4567_wire_constant;
    -- flow-through select operator MUX_4581_inst
    MUX_4581_wire <= NOT_u1_u1_4579_wire when (EQ_u4_u1_4573_wire(0) /=  '0') else konst_4580_wire_constant;
    -- flow-through select operator MUX_4591_inst
    MUX_4591_wire <= OR_u1_u1_4589_wire when (EQ_u4_u1_4584_wire(0) /=  '0') else konst_4590_wire_constant;
    -- flow-through select operator MUX_4601_inst
    MUX_4601_wire <= NOT_u1_u1_4599_wire when (EQ_u4_u1_4595_wire(0) /=  '0') else konst_4600_wire_constant;
    -- flow-through select operator MUX_4609_inst
    MUX_4609_wire <= XOR_u1_u1_4607_wire when (EQ_u4_u1_4604_wire(0) /=  '0') else konst_4608_wire_constant;
    -- flow-through select operator MUX_4621_inst
    MUX_4621_wire <= NOT_u1_u1_4619_wire when (EQ_u4_u1_4615_wire(0) /=  '0') else konst_4620_wire_constant;
    -- flow-through select operator MUX_4629_inst
    MUX_4629_wire <= OR_u1_u1_4627_wire when (EQ_u4_u1_4624_wire(0) /=  '0') else konst_4628_wire_constant;
    -- flow-through select operator MUX_4637_inst
    MUX_4637_wire <= NOT_u1_u1_4635_wire when (EQ_u4_u1_4633_wire(0) /=  '0') else konst_4636_wire_constant;
    -- flow-through select operator MUX_4643_inst
    MUX_4643_wire <= C_4541 when (EQ_u4_u1_4640_wire(0) /=  '0') else konst_4642_wire_constant;
    -- flow-through select operator MUX_4652_inst
    MUX_4652_wire <= NOT_u1_u1_4650_wire when (EQ_u4_u1_4648_wire(0) /=  '0') else konst_4651_wire_constant;
    -- flow-through select operator MUX_4658_inst
    MUX_4658_wire <= N_4526 when (EQ_u4_u1_4655_wire(0) /=  '0') else konst_4657_wire_constant;
    -- flow-through select operator MUX_4666_inst
    MUX_4666_wire <= NOT_u1_u1_4664_wire when (EQ_u4_u1_4662_wire(0) /=  '0') else konst_4665_wire_constant;
    -- flow-through select operator MUX_4672_inst
    MUX_4672_wire <= V_4536 when (EQ_u4_u1_4669_wire(0) /=  '0') else konst_4671_wire_constant;
    -- flow-through select operator MUX_4689_inst
    annul_next_buffer <= AND_u1_u1_4687_wire when (br_taken_buffer(0) /=  '0') else br_annul_flag_buffer;
    -- flow through binary operator AND_u1_u1_4687_inst
    AND_u1_u1_4687_wire <= (branch_always_4682 and br_annul_flag_buffer);
    -- flow through binary operator BITSEL_u4_u1_4525_inst
    process(ccodes_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(ccodes_buffer, konst_4524_wire_constant, tmp_var);
      N_4526 <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u4_u1_4530_inst
    process(ccodes_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(ccodes_buffer, konst_4529_wire_constant, tmp_var);
      Z_4531 <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u4_u1_4535_inst
    process(ccodes_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(ccodes_buffer, konst_4534_wire_constant, tmp_var);
      V_4536 <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u4_u1_4540_inst
    process(ccodes_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(ccodes_buffer, konst_4539_wire_constant, tmp_var);
      C_4541 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4545_inst
    process(br_cond_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(br_cond_buffer, konst_4544_wire_constant, tmp_var);
      EQ_u4_u1_4545_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4551_inst
    process(br_cond_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(br_cond_buffer, konst_4550_wire_constant, tmp_var);
      EQ_u4_u1_4551_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4558_inst
    process(br_cond_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(br_cond_buffer, konst_4557_wire_constant, tmp_var);
      EQ_u4_u1_4558_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4565_inst
    process(br_cond_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(br_cond_buffer, konst_4564_wire_constant, tmp_var);
      EQ_u4_u1_4565_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4573_inst
    process(br_cond_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(br_cond_buffer, konst_4572_wire_constant, tmp_var);
      EQ_u4_u1_4573_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4584_inst
    process(br_cond_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(br_cond_buffer, konst_4583_wire_constant, tmp_var);
      EQ_u4_u1_4584_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4595_inst
    process(br_cond_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(br_cond_buffer, konst_4594_wire_constant, tmp_var);
      EQ_u4_u1_4595_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4604_inst
    process(br_cond_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(br_cond_buffer, konst_4603_wire_constant, tmp_var);
      EQ_u4_u1_4604_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4615_inst
    process(br_cond_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(br_cond_buffer, konst_4614_wire_constant, tmp_var);
      EQ_u4_u1_4615_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4624_inst
    process(br_cond_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(br_cond_buffer, konst_4623_wire_constant, tmp_var);
      EQ_u4_u1_4624_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4633_inst
    process(br_cond_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(br_cond_buffer, konst_4632_wire_constant, tmp_var);
      EQ_u4_u1_4633_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4640_inst
    process(br_cond_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(br_cond_buffer, konst_4639_wire_constant, tmp_var);
      EQ_u4_u1_4640_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4648_inst
    process(br_cond_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(br_cond_buffer, konst_4647_wire_constant, tmp_var);
      EQ_u4_u1_4648_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4655_inst
    process(br_cond_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(br_cond_buffer, konst_4654_wire_constant, tmp_var);
      EQ_u4_u1_4655_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4662_inst
    process(br_cond_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(br_cond_buffer, konst_4661_wire_constant, tmp_var);
      EQ_u4_u1_4662_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4669_inst
    process(br_cond_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(br_cond_buffer, konst_4668_wire_constant, tmp_var);
      EQ_u4_u1_4669_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4681_inst
    process(br_cond_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(br_cond_buffer, konst_4680_wire_constant, tmp_var);
      branch_always_4682 <= tmp_var; --
    end process;
    -- unary operator NOT_u1_u1_4560_inst
    process(Z_4531) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", Z_4531, tmp_var);
      NOT_u1_u1_4560_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_4579_inst
    process(OR_u1_u1_4578_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", OR_u1_u1_4578_wire, tmp_var);
      NOT_u1_u1_4579_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_4599_inst
    process(XOR_u1_u1_4598_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", XOR_u1_u1_4598_wire, tmp_var);
      NOT_u1_u1_4599_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_4619_inst
    process(OR_u1_u1_4618_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", OR_u1_u1_4618_wire, tmp_var);
      NOT_u1_u1_4619_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_4635_inst
    process(C_4541) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", C_4541, tmp_var);
      NOT_u1_u1_4635_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_4650_inst
    process(N_4526) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", N_4526, tmp_var);
      NOT_u1_u1_4650_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_4664_inst
    process(V_4536) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", V_4536, tmp_var);
      NOT_u1_u1_4664_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator OR_u1_u1_4555_inst
    OR_u1_u1_4555_wire <= (MUX_4548_wire or MUX_4554_wire);
    -- flow through binary operator OR_u1_u1_4569_inst
    OR_u1_u1_4569_wire <= (MUX_4562_wire or MUX_4568_wire);
    -- flow through binary operator OR_u1_u1_4570_inst
    OR_u1_u1_4570_wire <= (OR_u1_u1_4555_wire or OR_u1_u1_4569_wire);
    -- flow through binary operator OR_u1_u1_4578_inst
    OR_u1_u1_4578_wire <= (Z_4531 or XOR_u1_u1_4577_wire);
    -- flow through binary operator OR_u1_u1_4589_inst
    OR_u1_u1_4589_wire <= (Z_4531 or XOR_u1_u1_4588_wire);
    -- flow through binary operator OR_u1_u1_4592_inst
    OR_u1_u1_4592_wire <= (MUX_4581_wire or MUX_4591_wire);
    -- flow through binary operator OR_u1_u1_4610_inst
    OR_u1_u1_4610_wire <= (MUX_4601_wire or MUX_4609_wire);
    -- flow through binary operator OR_u1_u1_4611_inst
    OR_u1_u1_4611_wire <= (OR_u1_u1_4592_wire or OR_u1_u1_4610_wire);
    -- flow through binary operator OR_u1_u1_4612_inst
    OR_u1_u1_4612_wire <= (OR_u1_u1_4570_wire or OR_u1_u1_4611_wire);
    -- flow through binary operator OR_u1_u1_4618_inst
    OR_u1_u1_4618_wire <= (C_4541 or Z_4531);
    -- flow through binary operator OR_u1_u1_4627_inst
    OR_u1_u1_4627_wire <= (C_4541 or Z_4531);
    -- flow through binary operator OR_u1_u1_4630_inst
    OR_u1_u1_4630_wire <= (MUX_4621_wire or MUX_4629_wire);
    -- flow through binary operator OR_u1_u1_4644_inst
    OR_u1_u1_4644_wire <= (MUX_4637_wire or MUX_4643_wire);
    -- flow through binary operator OR_u1_u1_4645_inst
    OR_u1_u1_4645_wire <= (OR_u1_u1_4630_wire or OR_u1_u1_4644_wire);
    -- flow through binary operator OR_u1_u1_4659_inst
    OR_u1_u1_4659_wire <= (MUX_4652_wire or MUX_4658_wire);
    -- flow through binary operator OR_u1_u1_4673_inst
    OR_u1_u1_4673_wire <= (MUX_4666_wire or MUX_4672_wire);
    -- flow through binary operator OR_u1_u1_4674_inst
    OR_u1_u1_4674_wire <= (OR_u1_u1_4659_wire or OR_u1_u1_4673_wire);
    -- flow through binary operator OR_u1_u1_4675_inst
    OR_u1_u1_4675_wire <= (OR_u1_u1_4645_wire or OR_u1_u1_4674_wire);
    -- flow through binary operator OR_u1_u1_4676_inst
    br_taken_buffer <= (OR_u1_u1_4612_wire or OR_u1_u1_4675_wire);
    -- flow through binary operator XOR_u1_u1_4577_inst
    XOR_u1_u1_4577_wire <= (N_4526 xor V_4536);
    -- flow through binary operator XOR_u1_u1_4588_inst
    XOR_u1_u1_4588_wire <= (N_4526 xor V_4536);
    -- flow through binary operator XOR_u1_u1_4598_inst
    XOR_u1_u1_4598_wire <= (N_4526 xor V_4536);
    -- flow through binary operator XOR_u1_u1_4607_inst
    XOR_u1_u1_4607_wire <= (N_4526 xor V_4536);
    -- 
  end Block; -- data_path
  -- 
end exec_bicc_generic_Volatile_arch;
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
library teu_stream_corrector;
use teu_stream_corrector.stream_corrector_global_package.all;
entity exec_fbfcc_generic_Volatile is -- 
  port ( -- 
    br_cond : in  std_logic_vector(3 downto 0);
    fcc : in  std_logic_vector(1 downto 0);
    annul_flag : in  std_logic_vector(0 downto 0);
    br_taken : out  std_logic_vector(0 downto 0);
    annul_next : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity exec_fbfcc_generic_Volatile;
architecture exec_fbfcc_generic_Volatile_arch of exec_fbfcc_generic_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(7-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal br_cond_buffer :  std_logic_vector(3 downto 0);
  signal fcc_buffer :  std_logic_vector(1 downto 0);
  signal annul_flag_buffer :  std_logic_vector(0 downto 0);
  -- output port buffer signals
  signal br_taken_buffer :  std_logic_vector(0 downto 0);
  signal annul_next_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  br_cond_buffer <= br_cond;
  fcc_buffer <= fcc;
  annul_flag_buffer <= annul_flag;
  -- output handling  -------------------------------------------------------
  br_taken <= br_taken_buffer;
  annul_next <= annul_next_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_4856_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4721_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4727_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4734_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4740_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4748_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4756_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4763_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4771_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4782_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4789_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4796_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4804_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4814_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4821_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4830_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_4837_wire : std_logic_vector(0 downto 0);
    signal E_4702 : std_logic_vector(0 downto 0);
    signal G_4712 : std_logic_vector(0 downto 0);
    signal L_4707 : std_logic_vector(0 downto 0);
    signal MUX_4724_wire : std_logic_vector(0 downto 0);
    signal MUX_4730_wire : std_logic_vector(0 downto 0);
    signal MUX_4737_wire : std_logic_vector(0 downto 0);
    signal MUX_4743_wire : std_logic_vector(0 downto 0);
    signal MUX_4753_wire : std_logic_vector(0 downto 0);
    signal MUX_4759_wire : std_logic_vector(0 downto 0);
    signal MUX_4768_wire : std_logic_vector(0 downto 0);
    signal MUX_4776_wire : std_logic_vector(0 downto 0);
    signal MUX_4786_wire : std_logic_vector(0 downto 0);
    signal MUX_4792_wire : std_logic_vector(0 downto 0);
    signal MUX_4801_wire : std_logic_vector(0 downto 0);
    signal MUX_4809_wire : std_logic_vector(0 downto 0);
    signal MUX_4818_wire : std_logic_vector(0 downto 0);
    signal MUX_4826_wire : std_logic_vector(0 downto 0);
    signal MUX_4834_wire : std_logic_vector(0 downto 0);
    signal MUX_4841_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_4784_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_4816_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_4832_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_4839_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4731_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4744_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4745_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4751_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4760_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4766_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4774_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4777_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4778_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4779_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4793_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4799_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4807_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4810_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4811_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4824_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4827_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4842_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4843_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4844_wire : std_logic_vector(0 downto 0);
    signal R_ONE_1_4722_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_4728_wire_constant : std_logic_vector(0 downto 0);
    signal U_4717 : std_logic_vector(0 downto 0);
    signal br_taken_raw_4846 : std_logic_vector(0 downto 0);
    signal branch_always_4851 : std_logic_vector(0 downto 0);
    signal konst_4700_wire_constant : std_logic_vector(1 downto 0);
    signal konst_4705_wire_constant : std_logic_vector(1 downto 0);
    signal konst_4710_wire_constant : std_logic_vector(1 downto 0);
    signal konst_4715_wire_constant : std_logic_vector(1 downto 0);
    signal konst_4720_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4723_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4726_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4729_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4733_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4736_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4739_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4742_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4747_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4752_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4755_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4758_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4762_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4767_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4770_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4775_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4781_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4785_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4788_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4791_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4795_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4800_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4803_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4808_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4813_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4817_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4820_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4825_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4829_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4833_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4836_wire_constant : std_logic_vector(3 downto 0);
    signal konst_4840_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4849_wire_constant : std_logic_vector(3 downto 0);
    -- 
  begin -- 
    R_ONE_1_4722_wire_constant <= "1";
    R_ZERO_1_4728_wire_constant <= "0";
    konst_4700_wire_constant <= "00";
    konst_4705_wire_constant <= "01";
    konst_4710_wire_constant <= "10";
    konst_4715_wire_constant <= "11";
    konst_4720_wire_constant <= "1000";
    konst_4723_wire_constant <= "0";
    konst_4726_wire_constant <= "0000";
    konst_4729_wire_constant <= "0";
    konst_4733_wire_constant <= "0111";
    konst_4736_wire_constant <= "0";
    konst_4739_wire_constant <= "0110";
    konst_4742_wire_constant <= "0";
    konst_4747_wire_constant <= "0101";
    konst_4752_wire_constant <= "0";
    konst_4755_wire_constant <= "0100";
    konst_4758_wire_constant <= "0";
    konst_4762_wire_constant <= "0011";
    konst_4767_wire_constant <= "0";
    konst_4770_wire_constant <= "0010";
    konst_4775_wire_constant <= "0";
    konst_4781_wire_constant <= "0001";
    konst_4785_wire_constant <= "0";
    konst_4788_wire_constant <= "1001";
    konst_4791_wire_constant <= "0";
    konst_4795_wire_constant <= "1010";
    konst_4800_wire_constant <= "0";
    konst_4803_wire_constant <= "1011";
    konst_4808_wire_constant <= "0";
    konst_4813_wire_constant <= "1100";
    konst_4817_wire_constant <= "0";
    konst_4820_wire_constant <= "1101";
    konst_4825_wire_constant <= "0";
    konst_4829_wire_constant <= "1110";
    konst_4833_wire_constant <= "0";
    konst_4836_wire_constant <= "1111";
    konst_4840_wire_constant <= "0";
    konst_4849_wire_constant <= "1000";
    -- flow-through select operator MUX_4724_inst
    MUX_4724_wire <= R_ONE_1_4722_wire_constant when (EQ_u4_u1_4721_wire(0) /=  '0') else konst_4723_wire_constant;
    -- flow-through select operator MUX_4730_inst
    MUX_4730_wire <= R_ZERO_1_4728_wire_constant when (EQ_u4_u1_4727_wire(0) /=  '0') else konst_4729_wire_constant;
    -- flow-through select operator MUX_4737_inst
    MUX_4737_wire <= U_4717 when (EQ_u4_u1_4734_wire(0) /=  '0') else konst_4736_wire_constant;
    -- flow-through select operator MUX_4743_inst
    MUX_4743_wire <= G_4712 when (EQ_u4_u1_4740_wire(0) /=  '0') else konst_4742_wire_constant;
    -- flow-through select operator MUX_4753_inst
    MUX_4753_wire <= OR_u1_u1_4751_wire when (EQ_u4_u1_4748_wire(0) /=  '0') else konst_4752_wire_constant;
    -- flow-through select operator MUX_4759_inst
    MUX_4759_wire <= L_4707 when (EQ_u4_u1_4756_wire(0) /=  '0') else konst_4758_wire_constant;
    -- flow-through select operator MUX_4768_inst
    MUX_4768_wire <= OR_u1_u1_4766_wire when (EQ_u4_u1_4763_wire(0) /=  '0') else konst_4767_wire_constant;
    -- flow-through select operator MUX_4776_inst
    MUX_4776_wire <= OR_u1_u1_4774_wire when (EQ_u4_u1_4771_wire(0) /=  '0') else konst_4775_wire_constant;
    -- flow-through select operator MUX_4786_inst
    MUX_4786_wire <= NOT_u1_u1_4784_wire when (EQ_u4_u1_4782_wire(0) /=  '0') else konst_4785_wire_constant;
    -- flow-through select operator MUX_4792_inst
    MUX_4792_wire <= E_4702 when (EQ_u4_u1_4789_wire(0) /=  '0') else konst_4791_wire_constant;
    -- flow-through select operator MUX_4801_inst
    MUX_4801_wire <= OR_u1_u1_4799_wire when (EQ_u4_u1_4796_wire(0) /=  '0') else konst_4800_wire_constant;
    -- flow-through select operator MUX_4809_inst
    MUX_4809_wire <= OR_u1_u1_4807_wire when (EQ_u4_u1_4804_wire(0) /=  '0') else konst_4808_wire_constant;
    -- flow-through select operator MUX_4818_inst
    MUX_4818_wire <= NOT_u1_u1_4816_wire when (EQ_u4_u1_4814_wire(0) /=  '0') else konst_4817_wire_constant;
    -- flow-through select operator MUX_4826_inst
    MUX_4826_wire <= OR_u1_u1_4824_wire when (EQ_u4_u1_4821_wire(0) /=  '0') else konst_4825_wire_constant;
    -- flow-through select operator MUX_4834_inst
    MUX_4834_wire <= NOT_u1_u1_4832_wire when (EQ_u4_u1_4830_wire(0) /=  '0') else konst_4833_wire_constant;
    -- flow-through select operator MUX_4841_inst
    MUX_4841_wire <= NOT_u1_u1_4839_wire when (EQ_u4_u1_4837_wire(0) /=  '0') else konst_4840_wire_constant;
    -- flow-through select operator MUX_4858_inst
    annul_next_buffer <= AND_u1_u1_4856_wire when (br_taken_raw_4846(0) /=  '0') else annul_flag_buffer;
    -- interlock W_br_taken_4860_inst
    process(br_taken_raw_4846) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := br_taken_raw_4846(0 downto 0);
      br_taken_buffer <= tmp_var; -- 
    end process;
    -- flow through binary operator AND_u1_u1_4856_inst
    AND_u1_u1_4856_wire <= (branch_always_4851 and annul_flag_buffer);
    -- flow through binary operator EQ_u2_u1_4701_inst
    process(fcc_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(fcc_buffer, konst_4700_wire_constant, tmp_var);
      E_4702 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_4706_inst
    process(fcc_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(fcc_buffer, konst_4705_wire_constant, tmp_var);
      L_4707 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_4711_inst
    process(fcc_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(fcc_buffer, konst_4710_wire_constant, tmp_var);
      G_4712 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_4716_inst
    process(fcc_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(fcc_buffer, konst_4715_wire_constant, tmp_var);
      U_4717 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4721_inst
    process(br_cond_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(br_cond_buffer, konst_4720_wire_constant, tmp_var);
      EQ_u4_u1_4721_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4727_inst
    process(br_cond_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(br_cond_buffer, konst_4726_wire_constant, tmp_var);
      EQ_u4_u1_4727_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4734_inst
    process(br_cond_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(br_cond_buffer, konst_4733_wire_constant, tmp_var);
      EQ_u4_u1_4734_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4740_inst
    process(br_cond_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(br_cond_buffer, konst_4739_wire_constant, tmp_var);
      EQ_u4_u1_4740_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4748_inst
    process(br_cond_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(br_cond_buffer, konst_4747_wire_constant, tmp_var);
      EQ_u4_u1_4748_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4756_inst
    process(br_cond_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(br_cond_buffer, konst_4755_wire_constant, tmp_var);
      EQ_u4_u1_4756_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4763_inst
    process(br_cond_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(br_cond_buffer, konst_4762_wire_constant, tmp_var);
      EQ_u4_u1_4763_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4771_inst
    process(br_cond_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(br_cond_buffer, konst_4770_wire_constant, tmp_var);
      EQ_u4_u1_4771_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4782_inst
    process(br_cond_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(br_cond_buffer, konst_4781_wire_constant, tmp_var);
      EQ_u4_u1_4782_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4789_inst
    process(br_cond_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(br_cond_buffer, konst_4788_wire_constant, tmp_var);
      EQ_u4_u1_4789_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4796_inst
    process(br_cond_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(br_cond_buffer, konst_4795_wire_constant, tmp_var);
      EQ_u4_u1_4796_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4804_inst
    process(br_cond_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(br_cond_buffer, konst_4803_wire_constant, tmp_var);
      EQ_u4_u1_4804_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4814_inst
    process(br_cond_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(br_cond_buffer, konst_4813_wire_constant, tmp_var);
      EQ_u4_u1_4814_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4821_inst
    process(br_cond_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(br_cond_buffer, konst_4820_wire_constant, tmp_var);
      EQ_u4_u1_4821_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4830_inst
    process(br_cond_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(br_cond_buffer, konst_4829_wire_constant, tmp_var);
      EQ_u4_u1_4830_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4837_inst
    process(br_cond_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(br_cond_buffer, konst_4836_wire_constant, tmp_var);
      EQ_u4_u1_4837_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_4850_inst
    process(br_cond_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(br_cond_buffer, konst_4849_wire_constant, tmp_var);
      branch_always_4851 <= tmp_var; --
    end process;
    -- unary operator NOT_u1_u1_4784_inst
    process(E_4702) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", E_4702, tmp_var);
      NOT_u1_u1_4784_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_4816_inst
    process(L_4707) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", L_4707, tmp_var);
      NOT_u1_u1_4816_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_4832_inst
    process(G_4712) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", G_4712, tmp_var);
      NOT_u1_u1_4832_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_4839_inst
    process(U_4717) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", U_4717, tmp_var);
      NOT_u1_u1_4839_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator OR_u1_u1_4731_inst
    OR_u1_u1_4731_wire <= (MUX_4724_wire or MUX_4730_wire);
    -- flow through binary operator OR_u1_u1_4744_inst
    OR_u1_u1_4744_wire <= (MUX_4737_wire or MUX_4743_wire);
    -- flow through binary operator OR_u1_u1_4745_inst
    OR_u1_u1_4745_wire <= (OR_u1_u1_4731_wire or OR_u1_u1_4744_wire);
    -- flow through binary operator OR_u1_u1_4751_inst
    OR_u1_u1_4751_wire <= (G_4712 or U_4717);
    -- flow through binary operator OR_u1_u1_4760_inst
    OR_u1_u1_4760_wire <= (MUX_4753_wire or MUX_4759_wire);
    -- flow through binary operator OR_u1_u1_4766_inst
    OR_u1_u1_4766_wire <= (L_4707 or U_4717);
    -- flow through binary operator OR_u1_u1_4774_inst
    OR_u1_u1_4774_wire <= (L_4707 or G_4712);
    -- flow through binary operator OR_u1_u1_4777_inst
    OR_u1_u1_4777_wire <= (MUX_4768_wire or MUX_4776_wire);
    -- flow through binary operator OR_u1_u1_4778_inst
    OR_u1_u1_4778_wire <= (OR_u1_u1_4760_wire or OR_u1_u1_4777_wire);
    -- flow through binary operator OR_u1_u1_4779_inst
    OR_u1_u1_4779_wire <= (OR_u1_u1_4745_wire or OR_u1_u1_4778_wire);
    -- flow through binary operator OR_u1_u1_4793_inst
    OR_u1_u1_4793_wire <= (MUX_4786_wire or MUX_4792_wire);
    -- flow through binary operator OR_u1_u1_4799_inst
    OR_u1_u1_4799_wire <= (E_4702 or U_4717);
    -- flow through binary operator OR_u1_u1_4807_inst
    OR_u1_u1_4807_wire <= (G_4712 or E_4702);
    -- flow through binary operator OR_u1_u1_4810_inst
    OR_u1_u1_4810_wire <= (MUX_4801_wire or MUX_4809_wire);
    -- flow through binary operator OR_u1_u1_4811_inst
    OR_u1_u1_4811_wire <= (OR_u1_u1_4793_wire or OR_u1_u1_4810_wire);
    -- flow through binary operator OR_u1_u1_4824_inst
    OR_u1_u1_4824_wire <= (L_4707 or E_4702);
    -- flow through binary operator OR_u1_u1_4827_inst
    OR_u1_u1_4827_wire <= (MUX_4818_wire or MUX_4826_wire);
    -- flow through binary operator OR_u1_u1_4842_inst
    OR_u1_u1_4842_wire <= (MUX_4834_wire or MUX_4841_wire);
    -- flow through binary operator OR_u1_u1_4843_inst
    OR_u1_u1_4843_wire <= (OR_u1_u1_4827_wire or OR_u1_u1_4842_wire);
    -- flow through binary operator OR_u1_u1_4844_inst
    OR_u1_u1_4844_wire <= (OR_u1_u1_4811_wire or OR_u1_u1_4843_wire);
    -- flow through binary operator OR_u1_u1_4845_inst
    br_taken_raw_4846 <= (OR_u1_u1_4779_wire or OR_u1_u1_4844_wire);
    -- 
  end Block; -- data_path
  -- 
end exec_fbfcc_generic_Volatile_arch;
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
library teu_stream_corrector;
use teu_stream_corrector.stream_corrector_global_package.all;
entity get_debug_command_from_ccu is -- 
  generic (tag_length : integer); 
  port ( -- 
    debug_cmd : out  std_logic_vector(7 downto 0);
    debug_data : out  std_logic_vector(31 downto 0);
    ccu_to_teu_debug_command_pipe_read_req : out  std_logic_vector(0 downto 0);
    ccu_to_teu_debug_command_pipe_read_ack : in   std_logic_vector(0 downto 0);
    ccu_to_teu_debug_command_pipe_read_data : in   std_logic_vector(7 downto 0);
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
end entity get_debug_command_from_ccu;
architecture get_debug_command_from_ccu_arch of get_debug_command_from_ccu is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector((tag_length + 0)-1 downto 0);
  signal default_zero_sig: std_logic;
  signal in_buffer_write_req: std_logic;
  signal in_buffer_write_ack: std_logic;
  signal in_buffer_unload_req_symbol: Boolean;
  signal in_buffer_unload_ack_symbol: Boolean;
  signal out_buffer_data_in, out_buffer_data_out: std_logic_vector((tag_length + 40)-1 downto 0);
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
  signal debug_cmd_buffer :  std_logic_vector(7 downto 0);
  signal debug_cmd_update_enable: Boolean;
  signal debug_data_buffer :  std_logic_vector(31 downto 0);
  signal debug_data_update_enable: Boolean;
  signal get_debug_command_from_ccu_CP_9_start: Boolean;
  signal get_debug_command_from_ccu_CP_9_symbol: Boolean;
  -- volatile/operator module components. 
  -- links between control-path and data-path
  signal RPIPE_ccu_to_teu_debug_command_1523_inst_req_1 : boolean;
  signal RPIPE_ccu_to_teu_debug_command_1523_inst_ack_1 : boolean;
  signal RPIPE_ccu_to_teu_debug_command_1511_inst_req_0 : boolean;
  signal RPIPE_ccu_to_teu_debug_command_1511_inst_ack_0 : boolean;
  signal RPIPE_ccu_to_teu_debug_command_1502_inst_ack_1 : boolean;
  signal RPIPE_ccu_to_teu_debug_command_1502_inst_req_1 : boolean;
  signal RPIPE_ccu_to_teu_debug_command_1502_inst_req_0 : boolean;
  signal RPIPE_ccu_to_teu_debug_command_1502_inst_ack_0 : boolean;
  signal RPIPE_ccu_to_teu_debug_command_1523_inst_req_0 : boolean;
  signal RPIPE_ccu_to_teu_debug_command_1523_inst_ack_0 : boolean;
  signal MUX_1535_inst_ack_1 : boolean;
  signal RPIPE_ccu_to_teu_debug_command_1519_inst_req_1 : boolean;
  signal RPIPE_ccu_to_teu_debug_command_1519_inst_ack_1 : boolean;
  signal MUX_1535_inst_req_1 : boolean;
  signal RPIPE_ccu_to_teu_debug_command_1519_inst_req_0 : boolean;
  signal RPIPE_ccu_to_teu_debug_command_1519_inst_ack_0 : boolean;
  signal RPIPE_ccu_to_teu_debug_command_1515_inst_ack_1 : boolean;
  signal RPIPE_ccu_to_teu_debug_command_1515_inst_req_1 : boolean;
  signal MUX_1535_inst_ack_0 : boolean;
  signal MUX_1535_inst_req_0 : boolean;
  signal RPIPE_ccu_to_teu_debug_command_1515_inst_req_0 : boolean;
  signal RPIPE_ccu_to_teu_debug_command_1515_inst_ack_0 : boolean;
  signal RPIPE_ccu_to_teu_debug_command_1511_inst_ack_1 : boolean;
  signal RPIPE_ccu_to_teu_debug_command_1511_inst_req_1 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "get_debug_command_from_ccu_input_buffer", -- 
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
  get_debug_command_from_ccu_CP_9_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "get_debug_command_from_ccu_out_buffer", -- 
      buffer_size => 1,
      full_rate => false,
      data_width => tag_length + 40) --
    port map(write_req => out_buffer_write_req_symbol, -- 
      write_ack => out_buffer_write_ack_symbol, 
      write_data => out_buffer_data_in,
      read_req => out_buffer_read_req, 
      read_ack => out_buffer_read_ack, 
      read_data => out_buffer_data_out,
      clk => clk, reset => reset); -- 
  out_buffer_data_in(7 downto 0) <= debug_cmd_buffer;
  debug_cmd <= out_buffer_data_out(7 downto 0);
  out_buffer_data_in(39 downto 8) <= debug_data_buffer;
  debug_data <= out_buffer_data_out(39 downto 8);
  out_buffer_data_in(tag_length + 39 downto 40) <= tag_ilock_out;
  tag_out <= out_buffer_data_out(tag_length + 39 downto 40);
  out_buffer_write_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
    constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 0);
    constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 1,2 => 0);
    constant joinName: string(1 to 32) := "out_buffer_write_req_symbol_join"; 
    signal preds: BooleanArray(1 to 3); -- 
  begin -- 
    preds <= get_debug_command_from_ccu_CP_9_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
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
    preds <= get_debug_command_from_ccu_CP_9_start & tag_ilock_write_ack_symbol;
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
    preds <= get_debug_command_from_ccu_CP_9_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  get_debug_command_from_ccu_CP_9: Block -- control-path 
    signal get_debug_command_from_ccu_CP_9_elements: BooleanArray(12 downto 0);
    -- 
  begin -- 
    get_debug_command_from_ccu_CP_9_elements(0) <= get_debug_command_from_ccu_CP_9_start;
    get_debug_command_from_ccu_CP_9_symbol <= get_debug_command_from_ccu_CP_9_elements(12);
    -- CP-element group 0:  fork  transition  output  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	1 
    -- CP-element group 0: 	12 
    -- CP-element group 0:  members (8) 
      -- CP-element group 0: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1502_Sample/rr
      -- CP-element group 0: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1502_Sample/$entry
      -- CP-element group 0: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1502_sample_start_
      -- CP-element group 0: 	 assign_stmt_1503_to_assign_stmt_1536/$entry
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 assign_stmt_1503_to_assign_stmt_1536/MUX_1535_complete/req
      -- CP-element group 0: 	 assign_stmt_1503_to_assign_stmt_1536/MUX_1535_complete/$entry
      -- CP-element group 0: 	 assign_stmt_1503_to_assign_stmt_1536/MUX_1535_update_start_
      -- 
    rr_22_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_22_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => get_debug_command_from_ccu_CP_9_elements(0), ack => RPIPE_ccu_to_teu_debug_command_1502_inst_req_0); -- 
    req_97_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_97_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => get_debug_command_from_ccu_CP_9_elements(0), ack => MUX_1535_inst_req_1); -- 
    -- CP-element group 1:  transition  input  output  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	0 
    -- CP-element group 1: successors 
    -- CP-element group 1: 	2 
    -- CP-element group 1:  members (6) 
      -- CP-element group 1: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1502_Update/cr
      -- CP-element group 1: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1502_Update/$entry
      -- CP-element group 1: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1502_Sample/ra
      -- CP-element group 1: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1502_Sample/$exit
      -- CP-element group 1: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1502_update_start_
      -- CP-element group 1: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1502_sample_completed_
      -- 
    ra_23_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 1_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ccu_to_teu_debug_command_1502_inst_ack_0, ack => get_debug_command_from_ccu_CP_9_elements(1)); -- 
    cr_27_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_27_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => get_debug_command_from_ccu_CP_9_elements(1), ack => RPIPE_ccu_to_teu_debug_command_1502_inst_req_1); -- 
    -- CP-element group 2:  transition  input  output  bypass 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	1 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	3 
    -- CP-element group 2:  members (6) 
      -- CP-element group 2: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1511_Sample/rr
      -- CP-element group 2: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1511_Sample/$entry
      -- CP-element group 2: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1511_sample_start_
      -- CP-element group 2: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1502_Update/ca
      -- CP-element group 2: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1502_Update/$exit
      -- CP-element group 2: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1502_update_completed_
      -- 
    ca_28_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 2_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ccu_to_teu_debug_command_1502_inst_ack_1, ack => get_debug_command_from_ccu_CP_9_elements(2)); -- 
    rr_36_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_36_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => get_debug_command_from_ccu_CP_9_elements(2), ack => RPIPE_ccu_to_teu_debug_command_1511_inst_req_0); -- 
    -- CP-element group 3:  transition  input  output  bypass 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: 	2 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	4 
    -- CP-element group 3:  members (6) 
      -- CP-element group 3: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1511_Sample/ra
      -- CP-element group 3: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1511_Sample/$exit
      -- CP-element group 3: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1511_update_start_
      -- CP-element group 3: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1511_sample_completed_
      -- CP-element group 3: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1511_Update/$entry
      -- CP-element group 3: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1511_Update/cr
      -- 
    ra_37_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 3_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ccu_to_teu_debug_command_1511_inst_ack_0, ack => get_debug_command_from_ccu_CP_9_elements(3)); -- 
    cr_41_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_41_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => get_debug_command_from_ccu_CP_9_elements(3), ack => RPIPE_ccu_to_teu_debug_command_1511_inst_req_1); -- 
    -- CP-element group 4:  transition  input  output  bypass 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: 	3 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	5 
    -- CP-element group 4:  members (6) 
      -- CP-element group 4: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1511_update_completed_
      -- CP-element group 4: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1511_Update/$exit
      -- CP-element group 4: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1515_Sample/rr
      -- CP-element group 4: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1515_Sample/$entry
      -- CP-element group 4: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1515_sample_start_
      -- CP-element group 4: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1511_Update/ca
      -- 
    ca_42_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 4_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ccu_to_teu_debug_command_1511_inst_ack_1, ack => get_debug_command_from_ccu_CP_9_elements(4)); -- 
    rr_50_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_50_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => get_debug_command_from_ccu_CP_9_elements(4), ack => RPIPE_ccu_to_teu_debug_command_1515_inst_req_0); -- 
    -- CP-element group 5:  transition  input  output  bypass 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	4 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	6 
    -- CP-element group 5:  members (6) 
      -- CP-element group 5: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1515_Update/cr
      -- CP-element group 5: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1515_Update/$entry
      -- CP-element group 5: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1515_Sample/ra
      -- CP-element group 5: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1515_Sample/$exit
      -- CP-element group 5: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1515_update_start_
      -- CP-element group 5: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1515_sample_completed_
      -- 
    ra_51_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 5_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ccu_to_teu_debug_command_1515_inst_ack_0, ack => get_debug_command_from_ccu_CP_9_elements(5)); -- 
    cr_55_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_55_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => get_debug_command_from_ccu_CP_9_elements(5), ack => RPIPE_ccu_to_teu_debug_command_1515_inst_req_1); -- 
    -- CP-element group 6:  transition  input  output  bypass 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	5 
    -- CP-element group 6: successors 
    -- CP-element group 6: 	7 
    -- CP-element group 6:  members (6) 
      -- CP-element group 6: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1519_Sample/rr
      -- CP-element group 6: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1519_Sample/$entry
      -- CP-element group 6: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1519_sample_start_
      -- CP-element group 6: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1515_Update/ca
      -- CP-element group 6: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1515_Update/$exit
      -- CP-element group 6: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1515_update_completed_
      -- 
    ca_56_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 6_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ccu_to_teu_debug_command_1515_inst_ack_1, ack => get_debug_command_from_ccu_CP_9_elements(6)); -- 
    rr_64_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_64_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => get_debug_command_from_ccu_CP_9_elements(6), ack => RPIPE_ccu_to_teu_debug_command_1519_inst_req_0); -- 
    -- CP-element group 7:  transition  input  output  bypass 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	6 
    -- CP-element group 7: successors 
    -- CP-element group 7: 	8 
    -- CP-element group 7:  members (6) 
      -- CP-element group 7: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1519_Update/cr
      -- CP-element group 7: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1519_Update/$entry
      -- CP-element group 7: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1519_Sample/ra
      -- CP-element group 7: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1519_Sample/$exit
      -- CP-element group 7: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1519_update_start_
      -- CP-element group 7: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1519_sample_completed_
      -- 
    ra_65_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 7_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ccu_to_teu_debug_command_1519_inst_ack_0, ack => get_debug_command_from_ccu_CP_9_elements(7)); -- 
    cr_69_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_69_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => get_debug_command_from_ccu_CP_9_elements(7), ack => RPIPE_ccu_to_teu_debug_command_1519_inst_req_1); -- 
    -- CP-element group 8:  transition  input  output  bypass 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	7 
    -- CP-element group 8: successors 
    -- CP-element group 8: 	9 
    -- CP-element group 8:  members (6) 
      -- CP-element group 8: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1523_Sample/rr
      -- CP-element group 8: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1523_Sample/$entry
      -- CP-element group 8: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1523_sample_start_
      -- CP-element group 8: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1519_Update/ca
      -- CP-element group 8: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1519_Update/$exit
      -- CP-element group 8: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1519_update_completed_
      -- 
    ca_70_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 8_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ccu_to_teu_debug_command_1519_inst_ack_1, ack => get_debug_command_from_ccu_CP_9_elements(8)); -- 
    rr_78_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_78_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => get_debug_command_from_ccu_CP_9_elements(8), ack => RPIPE_ccu_to_teu_debug_command_1523_inst_req_0); -- 
    -- CP-element group 9:  transition  input  output  bypass 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: 	8 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	10 
    -- CP-element group 9:  members (6) 
      -- CP-element group 9: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1523_Update/cr
      -- CP-element group 9: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1523_Update/$entry
      -- CP-element group 9: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1523_Sample/ra
      -- CP-element group 9: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1523_Sample/$exit
      -- CP-element group 9: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1523_update_start_
      -- CP-element group 9: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1523_sample_completed_
      -- 
    ra_79_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 9_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ccu_to_teu_debug_command_1523_inst_ack_0, ack => get_debug_command_from_ccu_CP_9_elements(9)); -- 
    cr_83_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_83_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => get_debug_command_from_ccu_CP_9_elements(9), ack => RPIPE_ccu_to_teu_debug_command_1523_inst_req_1); -- 
    -- CP-element group 10:  transition  input  output  bypass 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	9 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	11 
    -- CP-element group 10:  members (6) 
      -- CP-element group 10: 	 assign_stmt_1503_to_assign_stmt_1536/MUX_1535_sample_start_
      -- CP-element group 10: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1523_Update/ca
      -- CP-element group 10: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1523_Update/$exit
      -- CP-element group 10: 	 assign_stmt_1503_to_assign_stmt_1536/RPIPE_ccu_to_teu_debug_command_1523_update_completed_
      -- CP-element group 10: 	 assign_stmt_1503_to_assign_stmt_1536/MUX_1535_start/req
      -- CP-element group 10: 	 assign_stmt_1503_to_assign_stmt_1536/MUX_1535_start/$entry
      -- 
    ca_84_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 10_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ccu_to_teu_debug_command_1523_inst_ack_1, ack => get_debug_command_from_ccu_CP_9_elements(10)); -- 
    req_92_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_92_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => get_debug_command_from_ccu_CP_9_elements(10), ack => MUX_1535_inst_req_0); -- 
    -- CP-element group 11:  transition  input  bypass 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	10 
    -- CP-element group 11: successors 
    -- CP-element group 11:  members (3) 
      -- CP-element group 11: 	 assign_stmt_1503_to_assign_stmt_1536/MUX_1535_sample_completed_
      -- CP-element group 11: 	 assign_stmt_1503_to_assign_stmt_1536/MUX_1535_start/ack
      -- CP-element group 11: 	 assign_stmt_1503_to_assign_stmt_1536/MUX_1535_start/$exit
      -- 
    ack_93_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 11_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => MUX_1535_inst_ack_0, ack => get_debug_command_from_ccu_CP_9_elements(11)); -- 
    -- CP-element group 12:  transition  input  bypass 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	0 
    -- CP-element group 12: successors 
    -- CP-element group 12:  members (5) 
      -- CP-element group 12: 	 assign_stmt_1503_to_assign_stmt_1536/MUX_1535_update_completed_
      -- CP-element group 12: 	 assign_stmt_1503_to_assign_stmt_1536/$exit
      -- CP-element group 12: 	 $exit
      -- CP-element group 12: 	 assign_stmt_1503_to_assign_stmt_1536/MUX_1535_complete/ack
      -- CP-element group 12: 	 assign_stmt_1503_to_assign_stmt_1536/MUX_1535_complete/$exit
      -- 
    ack_98_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 12_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => MUX_1535_inst_ack_1, ack => get_debug_command_from_ccu_CP_9_elements(12)); -- 
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal CONCAT_u16_u32_1533_wire : std_logic_vector(31 downto 0);
    signal CONCAT_u8_u16_1529_wire : std_logic_vector(15 downto 0);
    signal CONCAT_u8_u16_1532_wire : std_logic_vector(15 downto 0);
    signal data0_1524 : std_logic_vector(7 downto 0);
    signal data1_1520 : std_logic_vector(7 downto 0);
    signal data2_1516 : std_logic_vector(7 downto 0);
    signal data3_1512 : std_logic_vector(7 downto 0);
    signal get_data_1508 : std_logic_vector(0 downto 0);
    signal konst_1506_wire_constant : std_logic_vector(7 downto 0);
    signal konst_1534_wire_constant : std_logic_vector(31 downto 0);
    -- 
  begin -- 
    konst_1506_wire_constant <= "00000111";
    konst_1534_wire_constant <= "00000000000000000000000000000000";
    MUX_1535_inst_block : block -- 
      signal sample_req, sample_ack, update_req, update_ack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      sample_req(0) <= MUX_1535_inst_req_0;
      MUX_1535_inst_ack_0<= sample_ack(0);
      update_req(0) <= MUX_1535_inst_req_1;
      MUX_1535_inst_ack_1<= update_ack(0);
      MUX_1535_inst: SelectSplitProtocol generic map(name => "MUX_1535_inst", data_width => 32, buffering => 1, flow_through => false, full_rate => false) -- 
        port map( x => CONCAT_u16_u32_1533_wire, y => konst_1534_wire_constant, sel => get_data_1508, z => debug_data_buffer, sample_req => sample_req(0), sample_ack => sample_ack(0), update_req => update_req(0), update_ack => update_ack(0), clk => clk, reset => reset); -- 
      -- 
    end block;
    -- flow through binary operator BITSEL_u8_u1_1507_inst
    process(debug_cmd_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(debug_cmd_buffer, konst_1506_wire_constant, tmp_var);
      get_data_1508 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u16_u32_1533_inst
    process(CONCAT_u8_u16_1529_wire, CONCAT_u8_u16_1532_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u8_u16_1529_wire, CONCAT_u8_u16_1532_wire, tmp_var);
      CONCAT_u16_u32_1533_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u8_u16_1529_inst
    process(data3_1512, data2_1516) -- 
      variable tmp_var : std_logic_vector(15 downto 0); -- 
    begin -- 
      ApConcat_proc(data3_1512, data2_1516, tmp_var);
      CONCAT_u8_u16_1529_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u8_u16_1532_inst
    process(data1_1520, data0_1524) -- 
      variable tmp_var : std_logic_vector(15 downto 0); -- 
    begin -- 
      ApConcat_proc(data1_1520, data0_1524, tmp_var);
      CONCAT_u8_u16_1532_wire <= tmp_var; --
    end process;
    -- shared inport operator group (0) : RPIPE_ccu_to_teu_debug_command_1511_inst RPIPE_ccu_to_teu_debug_command_1523_inst RPIPE_ccu_to_teu_debug_command_1519_inst RPIPE_ccu_to_teu_debug_command_1515_inst RPIPE_ccu_to_teu_debug_command_1502_inst 
    InportGroup_0: Block -- 
      signal data_out: std_logic_vector(39 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 4 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 4 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 4 downto 0);
      signal guard_vector : std_logic_vector( 4 downto 0);
      constant outBUFs : IntegerArray(4 downto 0) := (4 => 1, 3 => 1, 2 => 1, 1 => 1, 0 => 1);
      constant guardFlags : BooleanArray(4 downto 0) := (0 => false, 1 => true, 2 => true, 3 => true, 4 => true);
      constant guardBuffering: IntegerArray(4 downto 0)  := (0 => 2, 1 => 2, 2 => 2, 3 => 2, 4 => 2);
      -- 
    begin -- 
      reqL_unguarded(4) <= RPIPE_ccu_to_teu_debug_command_1511_inst_req_0;
      reqL_unguarded(3) <= RPIPE_ccu_to_teu_debug_command_1523_inst_req_0;
      reqL_unguarded(2) <= RPIPE_ccu_to_teu_debug_command_1519_inst_req_0;
      reqL_unguarded(1) <= RPIPE_ccu_to_teu_debug_command_1515_inst_req_0;
      reqL_unguarded(0) <= RPIPE_ccu_to_teu_debug_command_1502_inst_req_0;
      RPIPE_ccu_to_teu_debug_command_1511_inst_ack_0 <= ackL_unguarded(4);
      RPIPE_ccu_to_teu_debug_command_1523_inst_ack_0 <= ackL_unguarded(3);
      RPIPE_ccu_to_teu_debug_command_1519_inst_ack_0 <= ackL_unguarded(2);
      RPIPE_ccu_to_teu_debug_command_1515_inst_ack_0 <= ackL_unguarded(1);
      RPIPE_ccu_to_teu_debug_command_1502_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(4) <= RPIPE_ccu_to_teu_debug_command_1511_inst_req_1;
      reqR_unguarded(3) <= RPIPE_ccu_to_teu_debug_command_1523_inst_req_1;
      reqR_unguarded(2) <= RPIPE_ccu_to_teu_debug_command_1519_inst_req_1;
      reqR_unguarded(1) <= RPIPE_ccu_to_teu_debug_command_1515_inst_req_1;
      reqR_unguarded(0) <= RPIPE_ccu_to_teu_debug_command_1502_inst_req_1;
      RPIPE_ccu_to_teu_debug_command_1511_inst_ack_1 <= ackR_unguarded(4);
      RPIPE_ccu_to_teu_debug_command_1523_inst_ack_1 <= ackR_unguarded(3);
      RPIPE_ccu_to_teu_debug_command_1519_inst_ack_1 <= ackR_unguarded(2);
      RPIPE_ccu_to_teu_debug_command_1515_inst_ack_1 <= ackR_unguarded(1);
      RPIPE_ccu_to_teu_debug_command_1502_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      guard_vector(1)  <= get_data_1508(0);
      guard_vector(2)  <= get_data_1508(0);
      guard_vector(3)  <= get_data_1508(0);
      guard_vector(4)  <= get_data_1508(0);
      data3_1512 <= data_out(39 downto 32);
      data0_1524 <= data_out(31 downto 24);
      data1_1520 <= data_out(23 downto 16);
      data2_1516 <= data_out(15 downto 8);
      debug_cmd_buffer <= data_out(7 downto 0);
      ccu_to_teu_debug_command_read_0_gI: SplitGuardInterface generic map(name => "ccu_to_teu_debug_command_read_0_gI", nreqs => 5, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      ccu_to_teu_debug_command_read_0: InputPortRevised -- 
        generic map ( name => "ccu_to_teu_debug_command_read_0", data_width => 8,  num_reqs => 5,  output_buffering => outBUFs,   nonblocking_read_flag => False,  no_arbitration => false)
        port map (-- 
          sample_req => reqL , 
          sample_ack => ackL, 
          update_req => reqR, 
          update_ack => ackR, 
          data => data_out, 
          oreq => ccu_to_teu_debug_command_pipe_read_req(0),
          oack => ccu_to_teu_debug_command_pipe_read_ack(0),
          odata => ccu_to_teu_debug_command_pipe_read_data(7 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 0
    -- 
  end Block; -- data_path
  -- 
end get_debug_command_from_ccu_arch;
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
library teu_stream_corrector;
use teu_stream_corrector.stream_corrector_global_package.all;
entity stream_corrector_daemon is -- 
  generic (tag_length : integer); 
  port ( -- 
    noblock_stream_corrector_in_args_pipe_read_req : out  std_logic_vector(0 downto 0);
    noblock_stream_corrector_in_args_pipe_read_ack : in   std_logic_vector(0 downto 0);
    noblock_stream_corrector_in_args_pipe_read_data : in   std_logic_vector(359 downto 0);
    stream_corrector_ret_hit_log : in std_logic_vector(31 downto 0);
    stream_corrector_ret_miss_log : in std_logic_vector(31 downto 0);
    teu_ras_access_pipe_pipe_write_req : out  std_logic_vector(0 downto 0);
    teu_ras_access_pipe_pipe_write_ack : in   std_logic_vector(0 downto 0);
    teu_ras_access_pipe_pipe_write_data : out  std_logic_vector(32 downto 0);
    teu_stream_corrector_annul_status_pipe_write_req : out  std_logic_vector(0 downto 0);
    teu_stream_corrector_annul_status_pipe_write_ack : in   std_logic_vector(0 downto 0);
    teu_stream_corrector_annul_status_pipe_write_data : out  std_logic_vector(15 downto 0);
    teu_stream_corrector_to_fpunit_pipe_write_req : out  std_logic_vector(0 downto 0);
    teu_stream_corrector_to_fpunit_pipe_write_ack : in   std_logic_vector(0 downto 0);
    teu_stream_corrector_to_fpunit_pipe_write_data : out  std_logic_vector(17 downto 0);
    noblock_teu_ifetch_branch_predictor_update_pipe_write_req : out  std_logic_vector(0 downto 0);
    noblock_teu_ifetch_branch_predictor_update_pipe_write_ack : in   std_logic_vector(0 downto 0);
    noblock_teu_ifetch_branch_predictor_update_pipe_write_data : out  std_logic_vector(62 downto 0);
    noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_req : out  std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_ack : in   std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_data : out  std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_idispatch_pipe_write_req : out  std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_idispatch_pipe_write_ack : in   std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_idispatch_pipe_write_data : out  std_logic_vector(147 downto 0);
    noblock_teu_stream_corrector_to_iretire_pipe_write_req : out  std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_iretire_pipe_write_ack : in   std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_iretire_pipe_write_data : out  std_logic_vector(153 downto 0);
    noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_req : out  std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_ack : in   std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_data : out  std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_req : out  std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_ack : in   std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_data : out  std_logic_vector(0 downto 0);
    stream_corrector_ret_hit_log_pipe_write_req : out  std_logic_vector(0 downto 0);
    stream_corrector_ret_hit_log_pipe_write_ack : in   std_logic_vector(0 downto 0);
    stream_corrector_ret_hit_log_pipe_write_data : out  std_logic_vector(31 downto 0);
    stream_corrector_ret_miss_log_pipe_write_req : out  std_logic_vector(0 downto 0);
    stream_corrector_ret_miss_log_pipe_write_ack : in   std_logic_vector(0 downto 0);
    stream_corrector_ret_miss_log_pipe_write_data : out  std_logic_vector(31 downto 0);
    teu_stream_corrector_to_iunit_pipe_write_req : out  std_logic_vector(0 downto 0);
    teu_stream_corrector_to_iunit_pipe_write_ack : in   std_logic_vector(0 downto 0);
    teu_stream_corrector_to_iunit_pipe_write_data : out  std_logic_vector(17 downto 0);
    teu_stream_corrector_to_loadstore_pipe_write_req : out  std_logic_vector(0 downto 0);
    teu_stream_corrector_to_loadstore_pipe_write_ack : in   std_logic_vector(0 downto 0);
    teu_stream_corrector_to_loadstore_pipe_write_data : out  std_logic_vector(18 downto 0);
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
end entity stream_corrector_daemon;
architecture stream_corrector_daemon_arch of stream_corrector_daemon is -- 
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
  signal stream_corrector_daemon_CP_1127_start: Boolean;
  signal stream_corrector_daemon_CP_1127_symbol: Boolean;
  -- volatile/operator module components. 
  component calculate_ifetch_related_stuff_Volatile is -- 
    port ( -- 
      valid_from_sc : in  std_logic_vector(0 downto 0);
      npc_mispredict : in  std_logic_vector(0 downto 0);
      nnpc_mispredict : in  std_logic_vector(0 downto 0);
      last_nnpc_mispredict : in  std_logic_vector(0 downto 0);
      flush_like_instruction : in  std_logic_vector(0 downto 0);
      thread_id : in  std_logic_vector(3 downto 0);
      stream_id : in  std_logic_vector(1 downto 0);
      slot_id : in  std_logic_vector(5 downto 0);
      sc_instr_class : in  std_logic_vector(2 downto 0);
      last_pc : in  std_logic_vector(31 downto 0);
      pc : in  std_logic_vector(31 downto 0);
      corrected_npc : in  std_logic_vector(31 downto 0);
      nnpc : in  std_logic_vector(31 downto 0);
      psr_val : in  std_logic_vector(31 downto 0);
      is_cti : in  std_logic_vector(0 downto 0);
      last_was_cti : in  std_logic_vector(0 downto 0);
      annul_next : in  std_logic_vector(0 downto 0);
      annul_instr : in  std_logic_vector(0 downto 0);
      write_psr : in  std_logic_vector(0 downto 0);
      is_flush : in  std_logic_vector(0 downto 0);
      send_to_ifetch : out  std_logic_vector(0 downto 0);
      to_ifetch : out  std_logic_vector(147 downto 0);
      ask_iretire_to_signal_idispatch : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  component decode_stream_corrector_info_Volatile is -- 
    port ( -- 
      sc_info : in  std_logic_vector(5 downto 0);
      iu_cti : out  std_logic_vector(0 downto 0);
      fp_cti : out  std_logic_vector(0 downto 0);
      cp_cti : out  std_logic_vector(0 downto 0);
      iu_flush : out  std_logic_vector(0 downto 0);
      iu_write_psr : out  std_logic_vector(0 downto 0);
      iu_mmu_ctrl_write : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  component decode_thread_control_word_Volatile is -- 
    port ( -- 
      ctrl_word : in  std_logic_vector(21 downto 0);
      sc_instr_class : out  std_logic_vector(2 downto 0);
      debug_mode : out  std_logic_vector(0 downto 0);
      logger_active : out  std_logic_vector(0 downto 0);
      proc_ilvl : out  std_logic_vector(3 downto 0);
      enable_traps : out  std_logic_vector(0 downto 0);
      single_step_mode : out  std_logic_vector(0 downto 0);
      ignore_break_points : out  std_logic_vector(0 downto 0);
      S : out  std_logic_vector(0 downto 0);
      imm_bit : out  std_logic_vector(0 downto 0);
      is_write_psr : out  std_logic_vector(0 downto 0);
      is_mmu_ctrl_write : out  std_logic_vector(0 downto 0);
      is_flush : out  std_logic_vector(0 downto 0);
      is_cti : out  std_logic_vector(0 downto 0);
      mis_predict : out  std_logic_vector(0 downto 0);
      trap_bit : out  std_logic_vector(0 downto 0);
      stream_head : out  std_logic_vector(0 downto 0);
      thread_head : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  component exec_bicc_generic_Volatile is -- 
    port ( -- 
      br_annul_flag : in  std_logic_vector(0 downto 0);
      br_cond : in  std_logic_vector(3 downto 0);
      ccodes : in  std_logic_vector(3 downto 0);
      br_taken : out  std_logic_vector(0 downto 0);
      annul_next : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  component exec_fbfcc_generic_Volatile is -- 
    port ( -- 
      br_cond : in  std_logic_vector(3 downto 0);
      fcc : in  std_logic_vector(1 downto 0);
      annul_flag : in  std_logic_vector(0 downto 0);
      br_taken : out  std_logic_vector(0 downto 0);
      annul_next : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  -- links between control-path and data-path
  signal do_while_stmt_4945_branch_req_0 : boolean;
  signal phi_stmt_4947_req_1 : boolean;
  signal phi_stmt_4947_req_0 : boolean;
  signal phi_stmt_4947_ack_0 : boolean;
  signal RPIPE_noblock_stream_corrector_in_args_4950_inst_req_0 : boolean;
  signal RPIPE_noblock_stream_corrector_in_args_4950_inst_ack_0 : boolean;
  signal RPIPE_noblock_stream_corrector_in_args_4950_inst_req_1 : boolean;
  signal RPIPE_noblock_stream_corrector_in_args_4950_inst_ack_1 : boolean;
  signal phi_stmt_4951_req_1 : boolean;
  signal phi_stmt_4951_req_0 : boolean;
  signal phi_stmt_4951_ack_0 : boolean;
  signal next_CIRCULANT_6504_4954_buf_req_0 : boolean;
  signal next_CIRCULANT_6504_4954_buf_ack_0 : boolean;
  signal next_CIRCULANT_6504_4954_buf_req_1 : boolean;
  signal next_CIRCULANT_6504_4954_buf_ack_1 : boolean;
  signal WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_5327_inst_req_0 : boolean;
  signal WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_5327_inst_ack_0 : boolean;
  signal WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_5327_inst_req_1 : boolean;
  signal WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_5327_inst_ack_1 : boolean;
  signal WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_5359_inst_req_0 : boolean;
  signal WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_5359_inst_ack_0 : boolean;
  signal WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_5359_inst_req_1 : boolean;
  signal WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_5359_inst_ack_1 : boolean;
  signal WPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_5388_inst_req_0 : boolean;
  signal WPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_5388_inst_ack_0 : boolean;
  signal WPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_5388_inst_req_1 : boolean;
  signal WPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_5388_inst_ack_1 : boolean;
  signal WPIPE_teu_stream_corrector_to_iunit_6159_inst_req_0 : boolean;
  signal WPIPE_teu_stream_corrector_to_iunit_6159_inst_ack_0 : boolean;
  signal WPIPE_teu_stream_corrector_to_iunit_6159_inst_req_1 : boolean;
  signal WPIPE_teu_stream_corrector_to_iunit_6159_inst_ack_1 : boolean;
  signal WPIPE_teu_stream_corrector_to_fpunit_6174_inst_req_0 : boolean;
  signal WPIPE_teu_stream_corrector_to_fpunit_6174_inst_ack_0 : boolean;
  signal WPIPE_teu_stream_corrector_to_fpunit_6174_inst_req_1 : boolean;
  signal WPIPE_teu_stream_corrector_to_fpunit_6174_inst_ack_1 : boolean;
  signal WPIPE_noblock_teu_stream_corrector_to_idispatch_6262_inst_req_0 : boolean;
  signal WPIPE_noblock_teu_stream_corrector_to_idispatch_6262_inst_ack_0 : boolean;
  signal WPIPE_noblock_teu_stream_corrector_to_idispatch_6262_inst_req_1 : boolean;
  signal WPIPE_noblock_teu_stream_corrector_to_idispatch_6262_inst_ack_1 : boolean;
  signal WPIPE_noblock_teu_ifetch_branch_predictor_update_6288_inst_req_0 : boolean;
  signal WPIPE_noblock_teu_ifetch_branch_predictor_update_6288_inst_ack_0 : boolean;
  signal WPIPE_noblock_teu_ifetch_branch_predictor_update_6288_inst_req_1 : boolean;
  signal WPIPE_noblock_teu_ifetch_branch_predictor_update_6288_inst_ack_1 : boolean;
  signal WPIPE_teu_ras_access_pipe_6319_inst_req_0 : boolean;
  signal WPIPE_teu_ras_access_pipe_6319_inst_ack_0 : boolean;
  signal WPIPE_teu_ras_access_pipe_6319_inst_req_1 : boolean;
  signal WPIPE_teu_ras_access_pipe_6319_inst_ack_1 : boolean;
  signal WPIPE_stream_corrector_ret_hit_log_6331_inst_req_0 : boolean;
  signal WPIPE_stream_corrector_ret_hit_log_6331_inst_ack_0 : boolean;
  signal WPIPE_stream_corrector_ret_hit_log_6331_inst_req_1 : boolean;
  signal WPIPE_stream_corrector_ret_hit_log_6331_inst_ack_1 : boolean;
  signal WPIPE_stream_corrector_ret_miss_log_6342_inst_req_0 : boolean;
  signal WPIPE_stream_corrector_ret_miss_log_6342_inst_ack_0 : boolean;
  signal WPIPE_stream_corrector_ret_miss_log_6342_inst_req_1 : boolean;
  signal WPIPE_stream_corrector_ret_miss_log_6342_inst_ack_1 : boolean;
  signal WPIPE_noblock_teu_stream_corrector_to_iretire_6454_inst_req_0 : boolean;
  signal WPIPE_noblock_teu_stream_corrector_to_iretire_6454_inst_ack_0 : boolean;
  signal WPIPE_noblock_teu_stream_corrector_to_iretire_6454_inst_req_1 : boolean;
  signal WPIPE_noblock_teu_stream_corrector_to_iretire_6454_inst_ack_1 : boolean;
  signal WPIPE_teu_stream_corrector_to_loadstore_6521_inst_req_0 : boolean;
  signal WPIPE_teu_stream_corrector_to_loadstore_6521_inst_ack_0 : boolean;
  signal WPIPE_teu_stream_corrector_to_loadstore_6521_inst_req_1 : boolean;
  signal WPIPE_teu_stream_corrector_to_loadstore_6521_inst_ack_1 : boolean;
  signal WPIPE_teu_stream_corrector_annul_status_6546_inst_req_0 : boolean;
  signal WPIPE_teu_stream_corrector_annul_status_6546_inst_ack_0 : boolean;
  signal WPIPE_teu_stream_corrector_annul_status_6546_inst_req_1 : boolean;
  signal WPIPE_teu_stream_corrector_annul_status_6546_inst_ack_1 : boolean;
  signal do_while_stmt_4945_branch_ack_0 : boolean;
  signal do_while_stmt_4945_branch_ack_1 : boolean;
  signal W_s0_6553_inst_req_0 : boolean;
  signal W_s0_6553_inst_ack_0 : boolean;
  signal W_s0_6553_inst_req_1 : boolean;
  signal W_s0_6553_inst_ack_1 : boolean;
  signal W_s1_6556_inst_req_0 : boolean;
  signal W_s1_6556_inst_ack_0 : boolean;
  signal W_s1_6556_inst_req_1 : boolean;
  signal W_s1_6556_inst_ack_1 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "stream_corrector_daemon_input_buffer", -- 
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
  stream_corrector_daemon_CP_1127_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "stream_corrector_daemon_out_buffer", -- 
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
    preds <= stream_corrector_daemon_CP_1127_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
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
    preds <= stream_corrector_daemon_CP_1127_start & tag_ilock_write_ack_symbol;
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
    preds <= stream_corrector_daemon_CP_1127_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  stream_corrector_daemon_CP_1127: Block -- control-path 
    signal stream_corrector_daemon_CP_1127_elements: BooleanArray(102 downto 0);
    -- 
  begin -- 
    stream_corrector_daemon_CP_1127_elements(0) <= stream_corrector_daemon_CP_1127_start;
    stream_corrector_daemon_CP_1127_symbol <= stream_corrector_daemon_CP_1127_elements(102);
    -- CP-element group 0:  transition  place  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	2 
    -- CP-element group 0:  members (4) 
      -- CP-element group 0: 	 branch_block_stmt_4944/branch_block_stmt_4944__entry__
      -- CP-element group 0: 	 branch_block_stmt_4944/do_while_stmt_4945__entry__
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 branch_block_stmt_4944/$entry
      -- 
    -- CP-element group 1:  fork  transition  place  output  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	97 
    -- CP-element group 1: successors 
    -- CP-element group 1: 	98 
    -- CP-element group 1: 	99 
    -- CP-element group 1: 	100 
    -- CP-element group 1: 	101 
    -- CP-element group 1:  members (16) 
      -- CP-element group 1: 	 branch_block_stmt_4944/do_while_stmt_4945__exit__
      -- CP-element group 1: 	 branch_block_stmt_4944/branch_block_stmt_4944__exit__
      -- CP-element group 1: 	 branch_block_stmt_4944/$exit
      -- CP-element group 1: 	 assign_stmt_6555_to_assign_stmt_6558/$entry
      -- CP-element group 1: 	 assign_stmt_6555_to_assign_stmt_6558/assign_stmt_6555_sample_start_
      -- CP-element group 1: 	 assign_stmt_6555_to_assign_stmt_6558/assign_stmt_6555_update_start_
      -- CP-element group 1: 	 assign_stmt_6555_to_assign_stmt_6558/assign_stmt_6555_Sample/$entry
      -- CP-element group 1: 	 assign_stmt_6555_to_assign_stmt_6558/assign_stmt_6555_Sample/req
      -- CP-element group 1: 	 assign_stmt_6555_to_assign_stmt_6558/assign_stmt_6555_Update/$entry
      -- CP-element group 1: 	 assign_stmt_6555_to_assign_stmt_6558/assign_stmt_6555_Update/req
      -- CP-element group 1: 	 assign_stmt_6555_to_assign_stmt_6558/assign_stmt_6558_sample_start_
      -- CP-element group 1: 	 assign_stmt_6555_to_assign_stmt_6558/assign_stmt_6558_update_start_
      -- CP-element group 1: 	 assign_stmt_6555_to_assign_stmt_6558/assign_stmt_6558_Sample/$entry
      -- CP-element group 1: 	 assign_stmt_6555_to_assign_stmt_6558/assign_stmt_6558_Sample/req
      -- CP-element group 1: 	 assign_stmt_6555_to_assign_stmt_6558/assign_stmt_6558_Update/$entry
      -- CP-element group 1: 	 assign_stmt_6555_to_assign_stmt_6558/assign_stmt_6558_Update/req
      -- 
    req_1448_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1448_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => stream_corrector_daemon_CP_1127_elements(1), ack => W_s0_6553_inst_req_0); -- 
    req_1453_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1453_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => stream_corrector_daemon_CP_1127_elements(1), ack => W_s0_6553_inst_req_1); -- 
    req_1462_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1462_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => stream_corrector_daemon_CP_1127_elements(1), ack => W_s1_6556_inst_req_0); -- 
    req_1467_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1467_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => stream_corrector_daemon_CP_1127_elements(1), ack => W_s1_6556_inst_req_1); -- 
    stream_corrector_daemon_CP_1127_elements(1) <= stream_corrector_daemon_CP_1127_elements(97);
    -- CP-element group 2:  transition  place  bypass  pipeline-parent 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	0 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	8 
    -- CP-element group 2:  members (2) 
      -- CP-element group 2: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945__entry__
      -- CP-element group 2: 	 branch_block_stmt_4944/do_while_stmt_4945/$entry
      -- 
    stream_corrector_daemon_CP_1127_elements(2) <= stream_corrector_daemon_CP_1127_elements(0);
    -- CP-element group 3:  merge  place  bypass  pipeline-parent 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	97 
    -- CP-element group 3:  members (1) 
      -- CP-element group 3: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945__exit__
      -- 
    -- Element group stream_corrector_daemon_CP_1127_elements(3) is bound as output of CP function.
    -- CP-element group 4:  merge  place  bypass  pipeline-parent 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	7 
    -- CP-element group 4:  members (1) 
      -- CP-element group 4: 	 branch_block_stmt_4944/do_while_stmt_4945/loop_back
      -- 
    -- Element group stream_corrector_daemon_CP_1127_elements(4) is bound as output of CP function.
    -- CP-element group 5:  branch  transition  place  bypass  pipeline-parent 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	10 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	95 
    -- CP-element group 5: 	96 
    -- CP-element group 5:  members (3) 
      -- CP-element group 5: 	 branch_block_stmt_4944/do_while_stmt_4945/condition_done
      -- CP-element group 5: 	 branch_block_stmt_4944/do_while_stmt_4945/loop_exit/$entry
      -- CP-element group 5: 	 branch_block_stmt_4944/do_while_stmt_4945/loop_taken/$entry
      -- 
    stream_corrector_daemon_CP_1127_elements(5) <= stream_corrector_daemon_CP_1127_elements(10);
    -- CP-element group 6:  branch  place  bypass  pipeline-parent 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	94 
    -- CP-element group 6: successors 
    -- CP-element group 6:  members (1) 
      -- CP-element group 6: 	 branch_block_stmt_4944/do_while_stmt_4945/loop_body_done
      -- 
    stream_corrector_daemon_CP_1127_elements(6) <= stream_corrector_daemon_CP_1127_elements(94);
    -- CP-element group 7:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	4 
    -- CP-element group 7: successors 
    -- CP-element group 7: 	20 
    -- CP-element group 7: 	41 
    -- CP-element group 7:  members (1) 
      -- CP-element group 7: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/back_edge_to_loop_body
      -- 
    stream_corrector_daemon_CP_1127_elements(7) <= stream_corrector_daemon_CP_1127_elements(4);
    -- CP-element group 8:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	2 
    -- CP-element group 8: successors 
    -- CP-element group 8: 	22 
    -- CP-element group 8: 	43 
    -- CP-element group 8:  members (1) 
      -- CP-element group 8: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/first_time_through_loop_body
      -- 
    stream_corrector_daemon_CP_1127_elements(8) <= stream_corrector_daemon_CP_1127_elements(2);
    -- CP-element group 9:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	16 
    -- CP-element group 9: 	17 
    -- CP-element group 9: 	35 
    -- CP-element group 9: 	36 
    -- CP-element group 9: 	93 
    -- CP-element group 9:  members (2) 
      -- CP-element group 9: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/$entry
      -- CP-element group 9: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/loop_body_start
      -- 
    -- Element group stream_corrector_daemon_CP_1127_elements(9) is bound as output of CP function.
    -- CP-element group 10:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	13 
    -- CP-element group 10: 	15 
    -- CP-element group 10: 	93 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	5 
    -- CP-element group 10:  members (1) 
      -- CP-element group 10: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/condition_evaluated
      -- 
    condition_evaluated_1151_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " condition_evaluated_1151_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => stream_corrector_daemon_CP_1127_elements(10), ack => do_while_stmt_4945_branch_req_0); -- 
    stream_corrector_daemon_cp_element_group_10: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 43) := "stream_corrector_daemon_cp_element_group_10"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= stream_corrector_daemon_CP_1127_elements(13) & stream_corrector_daemon_CP_1127_elements(15) & stream_corrector_daemon_CP_1127_elements(93);
      gj_stream_corrector_daemon_cp_element_group_10 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => stream_corrector_daemon_CP_1127_elements(10), clk => clk, reset => reset); --
    end block;
    -- CP-element group 11:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	16 
    -- CP-element group 11: 	35 
    -- CP-element group 11: marked-predecessors 
    -- CP-element group 11: 	15 
    -- CP-element group 11: successors 
    -- CP-element group 11: 	37 
    -- CP-element group 11:  members (2) 
      -- CP-element group 11: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/aggregated_phi_sample_req
      -- CP-element group 11: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/phi_stmt_4947_sample_start__ps
      -- 
    stream_corrector_daemon_cp_element_group_11: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 43) := "stream_corrector_daemon_cp_element_group_11"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= stream_corrector_daemon_CP_1127_elements(16) & stream_corrector_daemon_CP_1127_elements(35) & stream_corrector_daemon_CP_1127_elements(15);
      gj_stream_corrector_daemon_cp_element_group_11 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => stream_corrector_daemon_CP_1127_elements(11), clk => clk, reset => reset); --
    end block;
    -- CP-element group 12:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	18 
    -- CP-element group 12: 	38 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	13 
    -- CP-element group 12: 	94 
    -- CP-element group 12: marked-successors 
    -- CP-element group 12: 	16 
    -- CP-element group 12: 	35 
    -- CP-element group 12:  members (3) 
      -- CP-element group 12: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/aggregated_phi_sample_ack
      -- CP-element group 12: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/phi_stmt_4947_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/phi_stmt_4951_sample_completed_
      -- 
    stream_corrector_daemon_cp_element_group_12: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 43) := "stream_corrector_daemon_cp_element_group_12"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= stream_corrector_daemon_CP_1127_elements(18) & stream_corrector_daemon_CP_1127_elements(38);
      gj_stream_corrector_daemon_cp_element_group_12 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => stream_corrector_daemon_CP_1127_elements(12), clk => clk, reset => reset); --
    end block;
    -- CP-element group 13:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: 	12 
    -- CP-element group 13: successors 
    -- CP-element group 13: 	10 
    -- CP-element group 13:  members (1) 
      -- CP-element group 13: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/aggregated_phi_sample_ack_d
      -- 
    -- Element group stream_corrector_daemon_CP_1127_elements(13) is a control-delay.
    cp_element_13_delay: control_delay_element  generic map(name => " 13_delay", delay_value => 1)  port map(req => stream_corrector_daemon_CP_1127_elements(12), ack => stream_corrector_daemon_CP_1127_elements(13), clk => clk, reset =>reset);
    -- CP-element group 14:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: 	17 
    -- CP-element group 14: 	36 
    -- CP-element group 14: successors 
    -- CP-element group 14: 	39 
    -- CP-element group 14:  members (2) 
      -- CP-element group 14: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/aggregated_phi_update_req
      -- CP-element group 14: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/phi_stmt_4947_update_start__ps
      -- 
    stream_corrector_daemon_cp_element_group_14: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 43) := "stream_corrector_daemon_cp_element_group_14"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= stream_corrector_daemon_CP_1127_elements(17) & stream_corrector_daemon_CP_1127_elements(36);
      gj_stream_corrector_daemon_cp_element_group_14 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => stream_corrector_daemon_CP_1127_elements(14), clk => clk, reset => reset); --
    end block;
    -- CP-element group 15:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: 	19 
    -- CP-element group 15: 	40 
    -- CP-element group 15: successors 
    -- CP-element group 15: 	10 
    -- CP-element group 15: marked-successors 
    -- CP-element group 15: 	11 
    -- CP-element group 15:  members (1) 
      -- CP-element group 15: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/aggregated_phi_update_ack
      -- 
    stream_corrector_daemon_cp_element_group_15: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 43) := "stream_corrector_daemon_cp_element_group_15"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= stream_corrector_daemon_CP_1127_elements(19) & stream_corrector_daemon_CP_1127_elements(40);
      gj_stream_corrector_daemon_cp_element_group_15 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => stream_corrector_daemon_CP_1127_elements(15), clk => clk, reset => reset); --
    end block;
    -- CP-element group 16:  join  transition  bypass  pipeline-parent 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: 	9 
    -- CP-element group 16: marked-predecessors 
    -- CP-element group 16: 	12 
    -- CP-element group 16: successors 
    -- CP-element group 16: 	11 
    -- CP-element group 16:  members (1) 
      -- CP-element group 16: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/phi_stmt_4947_sample_start_
      -- 
    stream_corrector_daemon_cp_element_group_16: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 43) := "stream_corrector_daemon_cp_element_group_16"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= stream_corrector_daemon_CP_1127_elements(9) & stream_corrector_daemon_CP_1127_elements(12);
      gj_stream_corrector_daemon_cp_element_group_16 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => stream_corrector_daemon_CP_1127_elements(16), clk => clk, reset => reset); --
    end block;
    -- CP-element group 17:  join  transition  bypass  pipeline-parent 
    -- CP-element group 17: predecessors 
    -- CP-element group 17: 	9 
    -- CP-element group 17: marked-predecessors 
    -- CP-element group 17: 	55 
    -- CP-element group 17: 	58 
    -- CP-element group 17: 	61 
    -- CP-element group 17: 	64 
    -- CP-element group 17: 	67 
    -- CP-element group 17: 	70 
    -- CP-element group 17: 	73 
    -- CP-element group 17: 	76 
    -- CP-element group 17: 	79 
    -- CP-element group 17: 	82 
    -- CP-element group 17: 	85 
    -- CP-element group 17: 	88 
    -- CP-element group 17: 	91 
    -- CP-element group 17: successors 
    -- CP-element group 17: 	14 
    -- CP-element group 17:  members (1) 
      -- CP-element group 17: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/phi_stmt_4947_update_start_
      -- 
    stream_corrector_daemon_cp_element_group_17: block -- 
      constant place_capacities: IntegerArray(0 to 13) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1,10 => 1,11 => 1,12 => 1,13 => 1);
      constant place_markings: IntegerArray(0 to 13)  := (0 => 0,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1,10 => 1,11 => 1,12 => 1,13 => 1);
      constant place_delays: IntegerArray(0 to 13) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0,11 => 0,12 => 0,13 => 0);
      constant joinName: string(1 to 43) := "stream_corrector_daemon_cp_element_group_17"; 
      signal preds: BooleanArray(1 to 14); -- 
    begin -- 
      preds <= stream_corrector_daemon_CP_1127_elements(9) & stream_corrector_daemon_CP_1127_elements(55) & stream_corrector_daemon_CP_1127_elements(58) & stream_corrector_daemon_CP_1127_elements(61) & stream_corrector_daemon_CP_1127_elements(64) & stream_corrector_daemon_CP_1127_elements(67) & stream_corrector_daemon_CP_1127_elements(70) & stream_corrector_daemon_CP_1127_elements(73) & stream_corrector_daemon_CP_1127_elements(76) & stream_corrector_daemon_CP_1127_elements(79) & stream_corrector_daemon_CP_1127_elements(82) & stream_corrector_daemon_CP_1127_elements(85) & stream_corrector_daemon_CP_1127_elements(88) & stream_corrector_daemon_CP_1127_elements(91);
      gj_stream_corrector_daemon_cp_element_group_17 : generic_join generic map(name => joinName, number_of_predecessors => 14, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => stream_corrector_daemon_CP_1127_elements(17), clk => clk, reset => reset); --
    end block;
    -- CP-element group 18:  join  transition  bypass  pipeline-parent 
    -- CP-element group 18: predecessors 
    -- CP-element group 18: successors 
    -- CP-element group 18: 	12 
    -- CP-element group 18:  members (1) 
      -- CP-element group 18: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/phi_stmt_4947_sample_completed__ps
      -- 
    -- Element group stream_corrector_daemon_CP_1127_elements(18) is bound as output of CP function.
    -- CP-element group 19:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 19: predecessors 
    -- CP-element group 19: successors 
    -- CP-element group 19: 	15 
    -- CP-element group 19: 	54 
    -- CP-element group 19: 	57 
    -- CP-element group 19: 	60 
    -- CP-element group 19: 	63 
    -- CP-element group 19: 	66 
    -- CP-element group 19: 	69 
    -- CP-element group 19: 	72 
    -- CP-element group 19: 	75 
    -- CP-element group 19: 	78 
    -- CP-element group 19: 	81 
    -- CP-element group 19: 	84 
    -- CP-element group 19: 	87 
    -- CP-element group 19: 	90 
    -- CP-element group 19:  members (2) 
      -- CP-element group 19: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/phi_stmt_4947_update_completed_
      -- CP-element group 19: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/phi_stmt_4947_update_completed__ps
      -- 
    -- Element group stream_corrector_daemon_CP_1127_elements(19) is bound as output of CP function.
    -- CP-element group 20:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 20: predecessors 
    -- CP-element group 20: 	7 
    -- CP-element group 20: successors 
    -- CP-element group 20:  members (1) 
      -- CP-element group 20: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/phi_stmt_4947_loopback_trigger
      -- 
    stream_corrector_daemon_CP_1127_elements(20) <= stream_corrector_daemon_CP_1127_elements(7);
    -- CP-element group 21:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 21: predecessors 
    -- CP-element group 21: successors 
    -- CP-element group 21:  members (2) 
      -- CP-element group 21: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/phi_stmt_4947_loopback_sample_req
      -- CP-element group 21: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/phi_stmt_4947_loopback_sample_req_ps
      -- 
    phi_stmt_4947_loopback_sample_req_1167_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_4947_loopback_sample_req_1167_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => stream_corrector_daemon_CP_1127_elements(21), ack => phi_stmt_4947_req_1); -- 
    -- Element group stream_corrector_daemon_CP_1127_elements(21) is bound as output of CP function.
    -- CP-element group 22:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 22: predecessors 
    -- CP-element group 22: 	8 
    -- CP-element group 22: successors 
    -- CP-element group 22:  members (1) 
      -- CP-element group 22: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/phi_stmt_4947_entry_trigger
      -- 
    stream_corrector_daemon_CP_1127_elements(22) <= stream_corrector_daemon_CP_1127_elements(8);
    -- CP-element group 23:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 23: predecessors 
    -- CP-element group 23: successors 
    -- CP-element group 23:  members (2) 
      -- CP-element group 23: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/phi_stmt_4947_entry_sample_req
      -- CP-element group 23: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/phi_stmt_4947_entry_sample_req_ps
      -- 
    phi_stmt_4947_entry_sample_req_1170_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_4947_entry_sample_req_1170_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => stream_corrector_daemon_CP_1127_elements(23), ack => phi_stmt_4947_req_0); -- 
    -- Element group stream_corrector_daemon_CP_1127_elements(23) is bound as output of CP function.
    -- CP-element group 24:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 24: predecessors 
    -- CP-element group 24: successors 
    -- CP-element group 24:  members (2) 
      -- CP-element group 24: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/phi_stmt_4947_phi_mux_ack
      -- CP-element group 24: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/phi_stmt_4947_phi_mux_ack_ps
      -- 
    phi_stmt_4947_phi_mux_ack_1173_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 24_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_4947_ack_0, ack => stream_corrector_daemon_CP_1127_elements(24)); -- 
    -- CP-element group 25:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 25: predecessors 
    -- CP-element group 25: successors 
    -- CP-element group 25:  members (4) 
      -- CP-element group 25: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/konst_4949_sample_start__ps
      -- CP-element group 25: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/konst_4949_sample_completed__ps
      -- CP-element group 25: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/konst_4949_sample_start_
      -- CP-element group 25: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/konst_4949_sample_completed_
      -- 
    -- Element group stream_corrector_daemon_CP_1127_elements(25) is bound as output of CP function.
    -- CP-element group 26:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 26: predecessors 
    -- CP-element group 26: successors 
    -- CP-element group 26: 	28 
    -- CP-element group 26:  members (2) 
      -- CP-element group 26: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/konst_4949_update_start__ps
      -- CP-element group 26: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/konst_4949_update_start_
      -- 
    -- Element group stream_corrector_daemon_CP_1127_elements(26) is bound as output of CP function.
    -- CP-element group 27:  join  transition  bypass  pipeline-parent 
    -- CP-element group 27: predecessors 
    -- CP-element group 27: 	28 
    -- CP-element group 27: successors 
    -- CP-element group 27:  members (1) 
      -- CP-element group 27: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/konst_4949_update_completed__ps
      -- 
    stream_corrector_daemon_CP_1127_elements(27) <= stream_corrector_daemon_CP_1127_elements(28);
    -- CP-element group 28:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 28: predecessors 
    -- CP-element group 28: 	26 
    -- CP-element group 28: successors 
    -- CP-element group 28: 	27 
    -- CP-element group 28:  members (1) 
      -- CP-element group 28: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/konst_4949_update_completed_
      -- 
    -- Element group stream_corrector_daemon_CP_1127_elements(28) is a control-delay.
    cp_element_28_delay: control_delay_element  generic map(name => " 28_delay", delay_value => 1)  port map(req => stream_corrector_daemon_CP_1127_elements(26), ack => stream_corrector_daemon_CP_1127_elements(28), clk => clk, reset =>reset);
    -- CP-element group 29:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 29: predecessors 
    -- CP-element group 29: successors 
    -- CP-element group 29: 	31 
    -- CP-element group 29:  members (1) 
      -- CP-element group 29: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/RPIPE_noblock_stream_corrector_in_args_4950_sample_start__ps
      -- 
    -- Element group stream_corrector_daemon_CP_1127_elements(29) is bound as output of CP function.
    -- CP-element group 30:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 30: predecessors 
    -- CP-element group 30: successors 
    -- CP-element group 30: 	32 
    -- CP-element group 30:  members (1) 
      -- CP-element group 30: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/RPIPE_noblock_stream_corrector_in_args_4950_update_start__ps
      -- 
    -- Element group stream_corrector_daemon_CP_1127_elements(30) is bound as output of CP function.
    -- CP-element group 31:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 31: predecessors 
    -- CP-element group 31: 	29 
    -- CP-element group 31: marked-predecessors 
    -- CP-element group 31: 	34 
    -- CP-element group 31: successors 
    -- CP-element group 31: 	33 
    -- CP-element group 31:  members (3) 
      -- CP-element group 31: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/RPIPE_noblock_stream_corrector_in_args_4950_sample_start_
      -- CP-element group 31: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/RPIPE_noblock_stream_corrector_in_args_4950_Sample/$entry
      -- CP-element group 31: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/RPIPE_noblock_stream_corrector_in_args_4950_Sample/rr
      -- 
    rr_1194_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_1194_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => stream_corrector_daemon_CP_1127_elements(31), ack => RPIPE_noblock_stream_corrector_in_args_4950_inst_req_0); -- 
    stream_corrector_daemon_cp_element_group_31: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 43) := "stream_corrector_daemon_cp_element_group_31"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= stream_corrector_daemon_CP_1127_elements(29) & stream_corrector_daemon_CP_1127_elements(34);
      gj_stream_corrector_daemon_cp_element_group_31 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => stream_corrector_daemon_CP_1127_elements(31), clk => clk, reset => reset); --
    end block;
    -- CP-element group 32:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 32: predecessors 
    -- CP-element group 32: 	30 
    -- CP-element group 32: 	33 
    -- CP-element group 32: successors 
    -- CP-element group 32: 	34 
    -- CP-element group 32:  members (3) 
      -- CP-element group 32: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/RPIPE_noblock_stream_corrector_in_args_4950_update_start_
      -- CP-element group 32: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/RPIPE_noblock_stream_corrector_in_args_4950_Update/$entry
      -- CP-element group 32: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/RPIPE_noblock_stream_corrector_in_args_4950_Update/cr
      -- 
    cr_1199_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_1199_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => stream_corrector_daemon_CP_1127_elements(32), ack => RPIPE_noblock_stream_corrector_in_args_4950_inst_req_1); -- 
    stream_corrector_daemon_cp_element_group_32: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 43) := "stream_corrector_daemon_cp_element_group_32"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= stream_corrector_daemon_CP_1127_elements(30) & stream_corrector_daemon_CP_1127_elements(33);
      gj_stream_corrector_daemon_cp_element_group_32 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => stream_corrector_daemon_CP_1127_elements(32), clk => clk, reset => reset); --
    end block;
    -- CP-element group 33:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 33: predecessors 
    -- CP-element group 33: 	31 
    -- CP-element group 33: successors 
    -- CP-element group 33: 	32 
    -- CP-element group 33:  members (4) 
      -- CP-element group 33: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/RPIPE_noblock_stream_corrector_in_args_4950_sample_completed__ps
      -- CP-element group 33: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/RPIPE_noblock_stream_corrector_in_args_4950_sample_completed_
      -- CP-element group 33: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/RPIPE_noblock_stream_corrector_in_args_4950_Sample/$exit
      -- CP-element group 33: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/RPIPE_noblock_stream_corrector_in_args_4950_Sample/ra
      -- 
    ra_1195_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 33_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_stream_corrector_in_args_4950_inst_ack_0, ack => stream_corrector_daemon_CP_1127_elements(33)); -- 
    -- CP-element group 34:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 34: predecessors 
    -- CP-element group 34: 	32 
    -- CP-element group 34: successors 
    -- CP-element group 34: marked-successors 
    -- CP-element group 34: 	31 
    -- CP-element group 34:  members (4) 
      -- CP-element group 34: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/RPIPE_noblock_stream_corrector_in_args_4950_update_completed__ps
      -- CP-element group 34: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/RPIPE_noblock_stream_corrector_in_args_4950_update_completed_
      -- CP-element group 34: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/RPIPE_noblock_stream_corrector_in_args_4950_Update/$exit
      -- CP-element group 34: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/RPIPE_noblock_stream_corrector_in_args_4950_Update/ca
      -- 
    ca_1200_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 34_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_stream_corrector_in_args_4950_inst_ack_1, ack => stream_corrector_daemon_CP_1127_elements(34)); -- 
    -- CP-element group 35:  join  transition  bypass  pipeline-parent 
    -- CP-element group 35: predecessors 
    -- CP-element group 35: 	9 
    -- CP-element group 35: marked-predecessors 
    -- CP-element group 35: 	12 
    -- CP-element group 35: successors 
    -- CP-element group 35: 	11 
    -- CP-element group 35:  members (1) 
      -- CP-element group 35: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/phi_stmt_4951_sample_start_
      -- 
    stream_corrector_daemon_cp_element_group_35: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 43) := "stream_corrector_daemon_cp_element_group_35"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= stream_corrector_daemon_CP_1127_elements(9) & stream_corrector_daemon_CP_1127_elements(12);
      gj_stream_corrector_daemon_cp_element_group_35 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => stream_corrector_daemon_CP_1127_elements(35), clk => clk, reset => reset); --
    end block;
    -- CP-element group 36:  join  transition  bypass  pipeline-parent 
    -- CP-element group 36: predecessors 
    -- CP-element group 36: 	9 
    -- CP-element group 36: marked-predecessors 
    -- CP-element group 36: 	64 
    -- CP-element group 36: 	67 
    -- CP-element group 36: 	70 
    -- CP-element group 36: 	73 
    -- CP-element group 36: 	76 
    -- CP-element group 36: 	79 
    -- CP-element group 36: 	82 
    -- CP-element group 36: 	85 
    -- CP-element group 36: 	88 
    -- CP-element group 36: 	91 
    -- CP-element group 36: successors 
    -- CP-element group 36: 	14 
    -- CP-element group 36:  members (1) 
      -- CP-element group 36: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/phi_stmt_4951_update_start_
      -- 
    stream_corrector_daemon_cp_element_group_36: block -- 
      constant place_capacities: IntegerArray(0 to 10) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1,10 => 1);
      constant place_markings: IntegerArray(0 to 10)  := (0 => 0,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1,10 => 1);
      constant place_delays: IntegerArray(0 to 10) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0);
      constant joinName: string(1 to 43) := "stream_corrector_daemon_cp_element_group_36"; 
      signal preds: BooleanArray(1 to 11); -- 
    begin -- 
      preds <= stream_corrector_daemon_CP_1127_elements(9) & stream_corrector_daemon_CP_1127_elements(64) & stream_corrector_daemon_CP_1127_elements(67) & stream_corrector_daemon_CP_1127_elements(70) & stream_corrector_daemon_CP_1127_elements(73) & stream_corrector_daemon_CP_1127_elements(76) & stream_corrector_daemon_CP_1127_elements(79) & stream_corrector_daemon_CP_1127_elements(82) & stream_corrector_daemon_CP_1127_elements(85) & stream_corrector_daemon_CP_1127_elements(88) & stream_corrector_daemon_CP_1127_elements(91);
      gj_stream_corrector_daemon_cp_element_group_36 : generic_join generic map(name => joinName, number_of_predecessors => 11, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => stream_corrector_daemon_CP_1127_elements(36), clk => clk, reset => reset); --
    end block;
    -- CP-element group 37:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 37: predecessors 
    -- CP-element group 37: 	11 
    -- CP-element group 37: successors 
    -- CP-element group 37:  members (1) 
      -- CP-element group 37: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/phi_stmt_4951_sample_start__ps
      -- 
    stream_corrector_daemon_CP_1127_elements(37) <= stream_corrector_daemon_CP_1127_elements(11);
    -- CP-element group 38:  join  transition  bypass  pipeline-parent 
    -- CP-element group 38: predecessors 
    -- CP-element group 38: successors 
    -- CP-element group 38: 	12 
    -- CP-element group 38:  members (1) 
      -- CP-element group 38: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/phi_stmt_4951_sample_completed__ps
      -- 
    -- Element group stream_corrector_daemon_CP_1127_elements(38) is bound as output of CP function.
    -- CP-element group 39:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 39: predecessors 
    -- CP-element group 39: 	14 
    -- CP-element group 39: successors 
    -- CP-element group 39:  members (1) 
      -- CP-element group 39: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/phi_stmt_4951_update_start__ps
      -- 
    stream_corrector_daemon_CP_1127_elements(39) <= stream_corrector_daemon_CP_1127_elements(14);
    -- CP-element group 40:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 40: predecessors 
    -- CP-element group 40: successors 
    -- CP-element group 40: 	15 
    -- CP-element group 40: 	63 
    -- CP-element group 40: 	66 
    -- CP-element group 40: 	69 
    -- CP-element group 40: 	72 
    -- CP-element group 40: 	75 
    -- CP-element group 40: 	78 
    -- CP-element group 40: 	81 
    -- CP-element group 40: 	84 
    -- CP-element group 40: 	87 
    -- CP-element group 40: 	90 
    -- CP-element group 40:  members (2) 
      -- CP-element group 40: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/phi_stmt_4951_update_completed_
      -- CP-element group 40: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/phi_stmt_4951_update_completed__ps
      -- 
    -- Element group stream_corrector_daemon_CP_1127_elements(40) is bound as output of CP function.
    -- CP-element group 41:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 41: predecessors 
    -- CP-element group 41: 	7 
    -- CP-element group 41: successors 
    -- CP-element group 41:  members (1) 
      -- CP-element group 41: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/phi_stmt_4951_loopback_trigger
      -- 
    stream_corrector_daemon_CP_1127_elements(41) <= stream_corrector_daemon_CP_1127_elements(7);
    -- CP-element group 42:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 42: predecessors 
    -- CP-element group 42: successors 
    -- CP-element group 42:  members (2) 
      -- CP-element group 42: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/phi_stmt_4951_loopback_sample_req
      -- CP-element group 42: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/phi_stmt_4951_loopback_sample_req_ps
      -- 
    phi_stmt_4951_loopback_sample_req_1211_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_4951_loopback_sample_req_1211_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => stream_corrector_daemon_CP_1127_elements(42), ack => phi_stmt_4951_req_1); -- 
    -- Element group stream_corrector_daemon_CP_1127_elements(42) is bound as output of CP function.
    -- CP-element group 43:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 43: predecessors 
    -- CP-element group 43: 	8 
    -- CP-element group 43: successors 
    -- CP-element group 43:  members (1) 
      -- CP-element group 43: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/phi_stmt_4951_entry_trigger
      -- 
    stream_corrector_daemon_CP_1127_elements(43) <= stream_corrector_daemon_CP_1127_elements(8);
    -- CP-element group 44:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 44: predecessors 
    -- CP-element group 44: successors 
    -- CP-element group 44:  members (2) 
      -- CP-element group 44: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/phi_stmt_4951_entry_sample_req
      -- CP-element group 44: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/phi_stmt_4951_entry_sample_req_ps
      -- 
    phi_stmt_4951_entry_sample_req_1214_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_4951_entry_sample_req_1214_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => stream_corrector_daemon_CP_1127_elements(44), ack => phi_stmt_4951_req_0); -- 
    -- Element group stream_corrector_daemon_CP_1127_elements(44) is bound as output of CP function.
    -- CP-element group 45:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 45: predecessors 
    -- CP-element group 45: successors 
    -- CP-element group 45:  members (2) 
      -- CP-element group 45: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/phi_stmt_4951_phi_mux_ack
      -- CP-element group 45: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/phi_stmt_4951_phi_mux_ack_ps
      -- 
    phi_stmt_4951_phi_mux_ack_1217_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 45_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_4951_ack_0, ack => stream_corrector_daemon_CP_1127_elements(45)); -- 
    -- CP-element group 46:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 46: predecessors 
    -- CP-element group 46: successors 
    -- CP-element group 46:  members (4) 
      -- CP-element group 46: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/konst_4953_sample_start__ps
      -- CP-element group 46: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/konst_4953_sample_completed__ps
      -- CP-element group 46: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/konst_4953_sample_start_
      -- CP-element group 46: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/konst_4953_sample_completed_
      -- 
    -- Element group stream_corrector_daemon_CP_1127_elements(46) is bound as output of CP function.
    -- CP-element group 47:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 47: predecessors 
    -- CP-element group 47: successors 
    -- CP-element group 47: 	49 
    -- CP-element group 47:  members (2) 
      -- CP-element group 47: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/konst_4953_update_start__ps
      -- CP-element group 47: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/konst_4953_update_start_
      -- 
    -- Element group stream_corrector_daemon_CP_1127_elements(47) is bound as output of CP function.
    -- CP-element group 48:  join  transition  bypass  pipeline-parent 
    -- CP-element group 48: predecessors 
    -- CP-element group 48: 	49 
    -- CP-element group 48: successors 
    -- CP-element group 48:  members (1) 
      -- CP-element group 48: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/konst_4953_update_completed__ps
      -- 
    stream_corrector_daemon_CP_1127_elements(48) <= stream_corrector_daemon_CP_1127_elements(49);
    -- CP-element group 49:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 49: predecessors 
    -- CP-element group 49: 	47 
    -- CP-element group 49: successors 
    -- CP-element group 49: 	48 
    -- CP-element group 49:  members (1) 
      -- CP-element group 49: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/konst_4953_update_completed_
      -- 
    -- Element group stream_corrector_daemon_CP_1127_elements(49) is a control-delay.
    cp_element_49_delay: control_delay_element  generic map(name => " 49_delay", delay_value => 1)  port map(req => stream_corrector_daemon_CP_1127_elements(47), ack => stream_corrector_daemon_CP_1127_elements(49), clk => clk, reset =>reset);
    -- CP-element group 50:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 50: predecessors 
    -- CP-element group 50: successors 
    -- CP-element group 50: 	52 
    -- CP-element group 50:  members (4) 
      -- CP-element group 50: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/R_next_CIRCULANT_4954_sample_start__ps
      -- CP-element group 50: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/R_next_CIRCULANT_4954_sample_start_
      -- CP-element group 50: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/R_next_CIRCULANT_4954_Sample/$entry
      -- CP-element group 50: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/R_next_CIRCULANT_4954_Sample/req
      -- 
    req_1238_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1238_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => stream_corrector_daemon_CP_1127_elements(50), ack => next_CIRCULANT_6504_4954_buf_req_0); -- 
    -- Element group stream_corrector_daemon_CP_1127_elements(50) is bound as output of CP function.
    -- CP-element group 51:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 51: predecessors 
    -- CP-element group 51: successors 
    -- CP-element group 51: 	53 
    -- CP-element group 51:  members (4) 
      -- CP-element group 51: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/R_next_CIRCULANT_4954_update_start__ps
      -- CP-element group 51: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/R_next_CIRCULANT_4954_update_start_
      -- CP-element group 51: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/R_next_CIRCULANT_4954_Update/$entry
      -- CP-element group 51: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/R_next_CIRCULANT_4954_Update/req
      -- 
    req_1243_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1243_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => stream_corrector_daemon_CP_1127_elements(51), ack => next_CIRCULANT_6504_4954_buf_req_1); -- 
    -- Element group stream_corrector_daemon_CP_1127_elements(51) is bound as output of CP function.
    -- CP-element group 52:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 52: predecessors 
    -- CP-element group 52: 	50 
    -- CP-element group 52: successors 
    -- CP-element group 52:  members (4) 
      -- CP-element group 52: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/R_next_CIRCULANT_4954_sample_completed__ps
      -- CP-element group 52: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/R_next_CIRCULANT_4954_sample_completed_
      -- CP-element group 52: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/R_next_CIRCULANT_4954_Sample/$exit
      -- CP-element group 52: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/R_next_CIRCULANT_4954_Sample/ack
      -- 
    ack_1239_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 52_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_CIRCULANT_6504_4954_buf_ack_0, ack => stream_corrector_daemon_CP_1127_elements(52)); -- 
    -- CP-element group 53:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 53: predecessors 
    -- CP-element group 53: 	51 
    -- CP-element group 53: successors 
    -- CP-element group 53:  members (4) 
      -- CP-element group 53: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/R_next_CIRCULANT_4954_update_completed__ps
      -- CP-element group 53: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/R_next_CIRCULANT_4954_update_completed_
      -- CP-element group 53: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/R_next_CIRCULANT_4954_Update/$exit
      -- CP-element group 53: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/R_next_CIRCULANT_4954_Update/ack
      -- 
    ack_1244_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 53_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_CIRCULANT_6504_4954_buf_ack_1, ack => stream_corrector_daemon_CP_1127_elements(53)); -- 
    -- CP-element group 54:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 54: predecessors 
    -- CP-element group 54: 	19 
    -- CP-element group 54: marked-predecessors 
    -- CP-element group 54: 	56 
    -- CP-element group 54: successors 
    -- CP-element group 54: 	55 
    -- CP-element group 54:  members (3) 
      -- CP-element group 54: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_5327_sample_start_
      -- CP-element group 54: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_5327_Sample/$entry
      -- CP-element group 54: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_5327_Sample/req
      -- 
    req_1253_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1253_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => stream_corrector_daemon_CP_1127_elements(54), ack => WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_5327_inst_req_0); -- 
    stream_corrector_daemon_cp_element_group_54: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 43) := "stream_corrector_daemon_cp_element_group_54"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= stream_corrector_daemon_CP_1127_elements(19) & stream_corrector_daemon_CP_1127_elements(56);
      gj_stream_corrector_daemon_cp_element_group_54 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => stream_corrector_daemon_CP_1127_elements(54), clk => clk, reset => reset); --
    end block;
    -- CP-element group 55:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 55: predecessors 
    -- CP-element group 55: 	54 
    -- CP-element group 55: successors 
    -- CP-element group 55: 	56 
    -- CP-element group 55: marked-successors 
    -- CP-element group 55: 	17 
    -- CP-element group 55:  members (6) 
      -- CP-element group 55: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_5327_sample_completed_
      -- CP-element group 55: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_5327_update_start_
      -- CP-element group 55: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_5327_Sample/$exit
      -- CP-element group 55: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_5327_Sample/ack
      -- CP-element group 55: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_5327_Update/$entry
      -- CP-element group 55: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_5327_Update/req
      -- 
    ack_1254_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 55_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_5327_inst_ack_0, ack => stream_corrector_daemon_CP_1127_elements(55)); -- 
    req_1258_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1258_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => stream_corrector_daemon_CP_1127_elements(55), ack => WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_5327_inst_req_1); -- 
    -- CP-element group 56:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 56: predecessors 
    -- CP-element group 56: 	55 
    -- CP-element group 56: successors 
    -- CP-element group 56: 	94 
    -- CP-element group 56: marked-successors 
    -- CP-element group 56: 	54 
    -- CP-element group 56:  members (3) 
      -- CP-element group 56: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_5327_update_completed_
      -- CP-element group 56: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_5327_Update/$exit
      -- CP-element group 56: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_5327_Update/ack
      -- 
    ack_1259_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 56_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_5327_inst_ack_1, ack => stream_corrector_daemon_CP_1127_elements(56)); -- 
    -- CP-element group 57:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 57: predecessors 
    -- CP-element group 57: 	19 
    -- CP-element group 57: marked-predecessors 
    -- CP-element group 57: 	59 
    -- CP-element group 57: successors 
    -- CP-element group 57: 	58 
    -- CP-element group 57:  members (3) 
      -- CP-element group 57: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_5359_sample_start_
      -- CP-element group 57: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_5359_Sample/$entry
      -- CP-element group 57: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_5359_Sample/req
      -- 
    req_1267_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1267_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => stream_corrector_daemon_CP_1127_elements(57), ack => WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_5359_inst_req_0); -- 
    stream_corrector_daemon_cp_element_group_57: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 43) := "stream_corrector_daemon_cp_element_group_57"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= stream_corrector_daemon_CP_1127_elements(19) & stream_corrector_daemon_CP_1127_elements(59);
      gj_stream_corrector_daemon_cp_element_group_57 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => stream_corrector_daemon_CP_1127_elements(57), clk => clk, reset => reset); --
    end block;
    -- CP-element group 58:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 58: predecessors 
    -- CP-element group 58: 	57 
    -- CP-element group 58: successors 
    -- CP-element group 58: 	59 
    -- CP-element group 58: marked-successors 
    -- CP-element group 58: 	17 
    -- CP-element group 58:  members (6) 
      -- CP-element group 58: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_5359_sample_completed_
      -- CP-element group 58: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_5359_update_start_
      -- CP-element group 58: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_5359_Sample/$exit
      -- CP-element group 58: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_5359_Sample/ack
      -- CP-element group 58: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_5359_Update/$entry
      -- CP-element group 58: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_5359_Update/req
      -- 
    ack_1268_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 58_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_5359_inst_ack_0, ack => stream_corrector_daemon_CP_1127_elements(58)); -- 
    req_1272_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1272_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => stream_corrector_daemon_CP_1127_elements(58), ack => WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_5359_inst_req_1); -- 
    -- CP-element group 59:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 59: predecessors 
    -- CP-element group 59: 	58 
    -- CP-element group 59: successors 
    -- CP-element group 59: 	94 
    -- CP-element group 59: marked-successors 
    -- CP-element group 59: 	57 
    -- CP-element group 59:  members (3) 
      -- CP-element group 59: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_5359_update_completed_
      -- CP-element group 59: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_5359_Update/$exit
      -- CP-element group 59: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_5359_Update/ack
      -- 
    ack_1273_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 59_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_5359_inst_ack_1, ack => stream_corrector_daemon_CP_1127_elements(59)); -- 
    -- CP-element group 60:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 60: predecessors 
    -- CP-element group 60: 	19 
    -- CP-element group 60: marked-predecessors 
    -- CP-element group 60: 	62 
    -- CP-element group 60: successors 
    -- CP-element group 60: 	61 
    -- CP-element group 60:  members (3) 
      -- CP-element group 60: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_5388_sample_start_
      -- CP-element group 60: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_5388_Sample/$entry
      -- CP-element group 60: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_5388_Sample/req
      -- 
    req_1281_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1281_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => stream_corrector_daemon_CP_1127_elements(60), ack => WPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_5388_inst_req_0); -- 
    stream_corrector_daemon_cp_element_group_60: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 43) := "stream_corrector_daemon_cp_element_group_60"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= stream_corrector_daemon_CP_1127_elements(19) & stream_corrector_daemon_CP_1127_elements(62);
      gj_stream_corrector_daemon_cp_element_group_60 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => stream_corrector_daemon_CP_1127_elements(60), clk => clk, reset => reset); --
    end block;
    -- CP-element group 61:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 61: predecessors 
    -- CP-element group 61: 	60 
    -- CP-element group 61: successors 
    -- CP-element group 61: 	62 
    -- CP-element group 61: marked-successors 
    -- CP-element group 61: 	17 
    -- CP-element group 61:  members (6) 
      -- CP-element group 61: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_5388_sample_completed_
      -- CP-element group 61: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_5388_update_start_
      -- CP-element group 61: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_5388_Sample/$exit
      -- CP-element group 61: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_5388_Sample/ack
      -- CP-element group 61: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_5388_Update/$entry
      -- CP-element group 61: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_5388_Update/req
      -- 
    ack_1282_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 61_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_5388_inst_ack_0, ack => stream_corrector_daemon_CP_1127_elements(61)); -- 
    req_1286_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1286_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => stream_corrector_daemon_CP_1127_elements(61), ack => WPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_5388_inst_req_1); -- 
    -- CP-element group 62:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 62: predecessors 
    -- CP-element group 62: 	61 
    -- CP-element group 62: successors 
    -- CP-element group 62: 	94 
    -- CP-element group 62: marked-successors 
    -- CP-element group 62: 	60 
    -- CP-element group 62:  members (3) 
      -- CP-element group 62: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_5388_update_completed_
      -- CP-element group 62: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_5388_Update/$exit
      -- CP-element group 62: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_5388_Update/ack
      -- 
    ack_1287_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 62_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_5388_inst_ack_1, ack => stream_corrector_daemon_CP_1127_elements(62)); -- 
    -- CP-element group 63:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 63: predecessors 
    -- CP-element group 63: 	19 
    -- CP-element group 63: 	40 
    -- CP-element group 63: marked-predecessors 
    -- CP-element group 63: 	65 
    -- CP-element group 63: successors 
    -- CP-element group 63: 	64 
    -- CP-element group 63:  members (3) 
      -- CP-element group 63: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_to_iunit_6159_sample_start_
      -- CP-element group 63: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_to_iunit_6159_Sample/$entry
      -- CP-element group 63: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_to_iunit_6159_Sample/req
      -- 
    req_1295_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1295_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => stream_corrector_daemon_CP_1127_elements(63), ack => WPIPE_teu_stream_corrector_to_iunit_6159_inst_req_0); -- 
    stream_corrector_daemon_cp_element_group_63: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 43) := "stream_corrector_daemon_cp_element_group_63"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= stream_corrector_daemon_CP_1127_elements(19) & stream_corrector_daemon_CP_1127_elements(40) & stream_corrector_daemon_CP_1127_elements(65);
      gj_stream_corrector_daemon_cp_element_group_63 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => stream_corrector_daemon_CP_1127_elements(63), clk => clk, reset => reset); --
    end block;
    -- CP-element group 64:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 64: predecessors 
    -- CP-element group 64: 	63 
    -- CP-element group 64: successors 
    -- CP-element group 64: 	65 
    -- CP-element group 64: marked-successors 
    -- CP-element group 64: 	17 
    -- CP-element group 64: 	36 
    -- CP-element group 64:  members (6) 
      -- CP-element group 64: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_to_iunit_6159_sample_completed_
      -- CP-element group 64: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_to_iunit_6159_update_start_
      -- CP-element group 64: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_to_iunit_6159_Sample/$exit
      -- CP-element group 64: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_to_iunit_6159_Sample/ack
      -- CP-element group 64: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_to_iunit_6159_Update/$entry
      -- CP-element group 64: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_to_iunit_6159_Update/req
      -- 
    ack_1296_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 64_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_stream_corrector_to_iunit_6159_inst_ack_0, ack => stream_corrector_daemon_CP_1127_elements(64)); -- 
    req_1300_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1300_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => stream_corrector_daemon_CP_1127_elements(64), ack => WPIPE_teu_stream_corrector_to_iunit_6159_inst_req_1); -- 
    -- CP-element group 65:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 65: predecessors 
    -- CP-element group 65: 	64 
    -- CP-element group 65: successors 
    -- CP-element group 65: 	94 
    -- CP-element group 65: marked-successors 
    -- CP-element group 65: 	63 
    -- CP-element group 65:  members (3) 
      -- CP-element group 65: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_to_iunit_6159_update_completed_
      -- CP-element group 65: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_to_iunit_6159_Update/$exit
      -- CP-element group 65: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_to_iunit_6159_Update/ack
      -- 
    ack_1301_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 65_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_stream_corrector_to_iunit_6159_inst_ack_1, ack => stream_corrector_daemon_CP_1127_elements(65)); -- 
    -- CP-element group 66:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 66: predecessors 
    -- CP-element group 66: 	19 
    -- CP-element group 66: 	40 
    -- CP-element group 66: marked-predecessors 
    -- CP-element group 66: 	68 
    -- CP-element group 66: successors 
    -- CP-element group 66: 	67 
    -- CP-element group 66:  members (3) 
      -- CP-element group 66: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_to_fpunit_6174_sample_start_
      -- CP-element group 66: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_to_fpunit_6174_Sample/$entry
      -- CP-element group 66: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_to_fpunit_6174_Sample/req
      -- 
    req_1309_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1309_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => stream_corrector_daemon_CP_1127_elements(66), ack => WPIPE_teu_stream_corrector_to_fpunit_6174_inst_req_0); -- 
    stream_corrector_daemon_cp_element_group_66: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 43) := "stream_corrector_daemon_cp_element_group_66"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= stream_corrector_daemon_CP_1127_elements(19) & stream_corrector_daemon_CP_1127_elements(40) & stream_corrector_daemon_CP_1127_elements(68);
      gj_stream_corrector_daemon_cp_element_group_66 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => stream_corrector_daemon_CP_1127_elements(66), clk => clk, reset => reset); --
    end block;
    -- CP-element group 67:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 67: predecessors 
    -- CP-element group 67: 	66 
    -- CP-element group 67: successors 
    -- CP-element group 67: 	68 
    -- CP-element group 67: marked-successors 
    -- CP-element group 67: 	17 
    -- CP-element group 67: 	36 
    -- CP-element group 67:  members (6) 
      -- CP-element group 67: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_to_fpunit_6174_sample_completed_
      -- CP-element group 67: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_to_fpunit_6174_update_start_
      -- CP-element group 67: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_to_fpunit_6174_Sample/$exit
      -- CP-element group 67: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_to_fpunit_6174_Sample/ack
      -- CP-element group 67: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_to_fpunit_6174_Update/$entry
      -- CP-element group 67: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_to_fpunit_6174_Update/req
      -- 
    ack_1310_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 67_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_stream_corrector_to_fpunit_6174_inst_ack_0, ack => stream_corrector_daemon_CP_1127_elements(67)); -- 
    req_1314_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1314_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => stream_corrector_daemon_CP_1127_elements(67), ack => WPIPE_teu_stream_corrector_to_fpunit_6174_inst_req_1); -- 
    -- CP-element group 68:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 68: predecessors 
    -- CP-element group 68: 	67 
    -- CP-element group 68: successors 
    -- CP-element group 68: 	94 
    -- CP-element group 68: marked-successors 
    -- CP-element group 68: 	66 
    -- CP-element group 68:  members (3) 
      -- CP-element group 68: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_to_fpunit_6174_update_completed_
      -- CP-element group 68: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_to_fpunit_6174_Update/$exit
      -- CP-element group 68: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_to_fpunit_6174_Update/ack
      -- 
    ack_1315_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 68_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_stream_corrector_to_fpunit_6174_inst_ack_1, ack => stream_corrector_daemon_CP_1127_elements(68)); -- 
    -- CP-element group 69:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 69: predecessors 
    -- CP-element group 69: 	19 
    -- CP-element group 69: 	40 
    -- CP-element group 69: marked-predecessors 
    -- CP-element group 69: 	71 
    -- CP-element group 69: successors 
    -- CP-element group 69: 	70 
    -- CP-element group 69:  members (3) 
      -- CP-element group 69: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_idispatch_6262_sample_start_
      -- CP-element group 69: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_idispatch_6262_Sample/$entry
      -- CP-element group 69: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_idispatch_6262_Sample/req
      -- 
    req_1323_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1323_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => stream_corrector_daemon_CP_1127_elements(69), ack => WPIPE_noblock_teu_stream_corrector_to_idispatch_6262_inst_req_0); -- 
    stream_corrector_daemon_cp_element_group_69: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 43) := "stream_corrector_daemon_cp_element_group_69"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= stream_corrector_daemon_CP_1127_elements(19) & stream_corrector_daemon_CP_1127_elements(40) & stream_corrector_daemon_CP_1127_elements(71);
      gj_stream_corrector_daemon_cp_element_group_69 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => stream_corrector_daemon_CP_1127_elements(69), clk => clk, reset => reset); --
    end block;
    -- CP-element group 70:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 70: predecessors 
    -- CP-element group 70: 	69 
    -- CP-element group 70: successors 
    -- CP-element group 70: 	71 
    -- CP-element group 70: marked-successors 
    -- CP-element group 70: 	17 
    -- CP-element group 70: 	36 
    -- CP-element group 70:  members (6) 
      -- CP-element group 70: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_idispatch_6262_sample_completed_
      -- CP-element group 70: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_idispatch_6262_update_start_
      -- CP-element group 70: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_idispatch_6262_Sample/$exit
      -- CP-element group 70: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_idispatch_6262_Sample/ack
      -- CP-element group 70: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_idispatch_6262_Update/$entry
      -- CP-element group 70: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_idispatch_6262_Update/req
      -- 
    ack_1324_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 70_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_teu_stream_corrector_to_idispatch_6262_inst_ack_0, ack => stream_corrector_daemon_CP_1127_elements(70)); -- 
    req_1328_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1328_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => stream_corrector_daemon_CP_1127_elements(70), ack => WPIPE_noblock_teu_stream_corrector_to_idispatch_6262_inst_req_1); -- 
    -- CP-element group 71:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 71: predecessors 
    -- CP-element group 71: 	70 
    -- CP-element group 71: successors 
    -- CP-element group 71: 	94 
    -- CP-element group 71: marked-successors 
    -- CP-element group 71: 	69 
    -- CP-element group 71:  members (3) 
      -- CP-element group 71: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_idispatch_6262_update_completed_
      -- CP-element group 71: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_idispatch_6262_Update/$exit
      -- CP-element group 71: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_idispatch_6262_Update/ack
      -- 
    ack_1329_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 71_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_teu_stream_corrector_to_idispatch_6262_inst_ack_1, ack => stream_corrector_daemon_CP_1127_elements(71)); -- 
    -- CP-element group 72:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 72: predecessors 
    -- CP-element group 72: 	19 
    -- CP-element group 72: 	40 
    -- CP-element group 72: marked-predecessors 
    -- CP-element group 72: 	74 
    -- CP-element group 72: successors 
    -- CP-element group 72: 	73 
    -- CP-element group 72:  members (3) 
      -- CP-element group 72: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_ifetch_branch_predictor_update_6288_sample_start_
      -- CP-element group 72: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_ifetch_branch_predictor_update_6288_Sample/$entry
      -- CP-element group 72: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_ifetch_branch_predictor_update_6288_Sample/req
      -- 
    req_1337_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1337_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => stream_corrector_daemon_CP_1127_elements(72), ack => WPIPE_noblock_teu_ifetch_branch_predictor_update_6288_inst_req_0); -- 
    stream_corrector_daemon_cp_element_group_72: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 43) := "stream_corrector_daemon_cp_element_group_72"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= stream_corrector_daemon_CP_1127_elements(19) & stream_corrector_daemon_CP_1127_elements(40) & stream_corrector_daemon_CP_1127_elements(74);
      gj_stream_corrector_daemon_cp_element_group_72 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => stream_corrector_daemon_CP_1127_elements(72), clk => clk, reset => reset); --
    end block;
    -- CP-element group 73:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 73: predecessors 
    -- CP-element group 73: 	72 
    -- CP-element group 73: successors 
    -- CP-element group 73: 	74 
    -- CP-element group 73: marked-successors 
    -- CP-element group 73: 	17 
    -- CP-element group 73: 	36 
    -- CP-element group 73:  members (6) 
      -- CP-element group 73: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_ifetch_branch_predictor_update_6288_sample_completed_
      -- CP-element group 73: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_ifetch_branch_predictor_update_6288_update_start_
      -- CP-element group 73: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_ifetch_branch_predictor_update_6288_Sample/$exit
      -- CP-element group 73: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_ifetch_branch_predictor_update_6288_Sample/ack
      -- CP-element group 73: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_ifetch_branch_predictor_update_6288_Update/$entry
      -- CP-element group 73: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_ifetch_branch_predictor_update_6288_Update/req
      -- 
    ack_1338_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 73_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_teu_ifetch_branch_predictor_update_6288_inst_ack_0, ack => stream_corrector_daemon_CP_1127_elements(73)); -- 
    req_1342_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1342_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => stream_corrector_daemon_CP_1127_elements(73), ack => WPIPE_noblock_teu_ifetch_branch_predictor_update_6288_inst_req_1); -- 
    -- CP-element group 74:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 74: predecessors 
    -- CP-element group 74: 	73 
    -- CP-element group 74: successors 
    -- CP-element group 74: 	94 
    -- CP-element group 74: marked-successors 
    -- CP-element group 74: 	72 
    -- CP-element group 74:  members (3) 
      -- CP-element group 74: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_ifetch_branch_predictor_update_6288_update_completed_
      -- CP-element group 74: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_ifetch_branch_predictor_update_6288_Update/$exit
      -- CP-element group 74: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_ifetch_branch_predictor_update_6288_Update/ack
      -- 
    ack_1343_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 74_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_teu_ifetch_branch_predictor_update_6288_inst_ack_1, ack => stream_corrector_daemon_CP_1127_elements(74)); -- 
    -- CP-element group 75:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 75: predecessors 
    -- CP-element group 75: 	19 
    -- CP-element group 75: 	40 
    -- CP-element group 75: marked-predecessors 
    -- CP-element group 75: 	77 
    -- CP-element group 75: successors 
    -- CP-element group 75: 	76 
    -- CP-element group 75:  members (3) 
      -- CP-element group 75: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_ras_access_pipe_6319_sample_start_
      -- CP-element group 75: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_ras_access_pipe_6319_Sample/$entry
      -- CP-element group 75: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_ras_access_pipe_6319_Sample/req
      -- 
    req_1351_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1351_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => stream_corrector_daemon_CP_1127_elements(75), ack => WPIPE_teu_ras_access_pipe_6319_inst_req_0); -- 
    stream_corrector_daemon_cp_element_group_75: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 43) := "stream_corrector_daemon_cp_element_group_75"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= stream_corrector_daemon_CP_1127_elements(19) & stream_corrector_daemon_CP_1127_elements(40) & stream_corrector_daemon_CP_1127_elements(77);
      gj_stream_corrector_daemon_cp_element_group_75 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => stream_corrector_daemon_CP_1127_elements(75), clk => clk, reset => reset); --
    end block;
    -- CP-element group 76:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 76: predecessors 
    -- CP-element group 76: 	75 
    -- CP-element group 76: successors 
    -- CP-element group 76: 	77 
    -- CP-element group 76: marked-successors 
    -- CP-element group 76: 	17 
    -- CP-element group 76: 	36 
    -- CP-element group 76:  members (6) 
      -- CP-element group 76: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_ras_access_pipe_6319_sample_completed_
      -- CP-element group 76: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_ras_access_pipe_6319_update_start_
      -- CP-element group 76: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_ras_access_pipe_6319_Sample/$exit
      -- CP-element group 76: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_ras_access_pipe_6319_Sample/ack
      -- CP-element group 76: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_ras_access_pipe_6319_Update/$entry
      -- CP-element group 76: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_ras_access_pipe_6319_Update/req
      -- 
    ack_1352_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 76_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_ras_access_pipe_6319_inst_ack_0, ack => stream_corrector_daemon_CP_1127_elements(76)); -- 
    req_1356_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1356_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => stream_corrector_daemon_CP_1127_elements(76), ack => WPIPE_teu_ras_access_pipe_6319_inst_req_1); -- 
    -- CP-element group 77:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 77: predecessors 
    -- CP-element group 77: 	76 
    -- CP-element group 77: successors 
    -- CP-element group 77: 	94 
    -- CP-element group 77: marked-successors 
    -- CP-element group 77: 	75 
    -- CP-element group 77:  members (3) 
      -- CP-element group 77: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_ras_access_pipe_6319_update_completed_
      -- CP-element group 77: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_ras_access_pipe_6319_Update/$exit
      -- CP-element group 77: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_ras_access_pipe_6319_Update/ack
      -- 
    ack_1357_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 77_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_ras_access_pipe_6319_inst_ack_1, ack => stream_corrector_daemon_CP_1127_elements(77)); -- 
    -- CP-element group 78:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 78: predecessors 
    -- CP-element group 78: 	19 
    -- CP-element group 78: 	40 
    -- CP-element group 78: marked-predecessors 
    -- CP-element group 78: 	80 
    -- CP-element group 78: successors 
    -- CP-element group 78: 	79 
    -- CP-element group 78:  members (3) 
      -- CP-element group 78: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_stream_corrector_ret_hit_log_6331_sample_start_
      -- CP-element group 78: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_stream_corrector_ret_hit_log_6331_Sample/$entry
      -- CP-element group 78: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_stream_corrector_ret_hit_log_6331_Sample/req
      -- 
    req_1365_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1365_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => stream_corrector_daemon_CP_1127_elements(78), ack => WPIPE_stream_corrector_ret_hit_log_6331_inst_req_0); -- 
    stream_corrector_daemon_cp_element_group_78: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 43) := "stream_corrector_daemon_cp_element_group_78"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= stream_corrector_daemon_CP_1127_elements(19) & stream_corrector_daemon_CP_1127_elements(40) & stream_corrector_daemon_CP_1127_elements(80);
      gj_stream_corrector_daemon_cp_element_group_78 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => stream_corrector_daemon_CP_1127_elements(78), clk => clk, reset => reset); --
    end block;
    -- CP-element group 79:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 79: predecessors 
    -- CP-element group 79: 	78 
    -- CP-element group 79: successors 
    -- CP-element group 79: 	80 
    -- CP-element group 79: marked-successors 
    -- CP-element group 79: 	17 
    -- CP-element group 79: 	36 
    -- CP-element group 79:  members (6) 
      -- CP-element group 79: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_stream_corrector_ret_hit_log_6331_sample_completed_
      -- CP-element group 79: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_stream_corrector_ret_hit_log_6331_update_start_
      -- CP-element group 79: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_stream_corrector_ret_hit_log_6331_Sample/$exit
      -- CP-element group 79: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_stream_corrector_ret_hit_log_6331_Sample/ack
      -- CP-element group 79: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_stream_corrector_ret_hit_log_6331_Update/$entry
      -- CP-element group 79: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_stream_corrector_ret_hit_log_6331_Update/req
      -- 
    ack_1366_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 79_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_stream_corrector_ret_hit_log_6331_inst_ack_0, ack => stream_corrector_daemon_CP_1127_elements(79)); -- 
    req_1370_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1370_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => stream_corrector_daemon_CP_1127_elements(79), ack => WPIPE_stream_corrector_ret_hit_log_6331_inst_req_1); -- 
    -- CP-element group 80:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 80: predecessors 
    -- CP-element group 80: 	79 
    -- CP-element group 80: successors 
    -- CP-element group 80: 	94 
    -- CP-element group 80: marked-successors 
    -- CP-element group 80: 	78 
    -- CP-element group 80:  members (3) 
      -- CP-element group 80: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_stream_corrector_ret_hit_log_6331_update_completed_
      -- CP-element group 80: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_stream_corrector_ret_hit_log_6331_Update/$exit
      -- CP-element group 80: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_stream_corrector_ret_hit_log_6331_Update/ack
      -- 
    ack_1371_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 80_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_stream_corrector_ret_hit_log_6331_inst_ack_1, ack => stream_corrector_daemon_CP_1127_elements(80)); -- 
    -- CP-element group 81:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 81: predecessors 
    -- CP-element group 81: 	19 
    -- CP-element group 81: 	40 
    -- CP-element group 81: marked-predecessors 
    -- CP-element group 81: 	83 
    -- CP-element group 81: successors 
    -- CP-element group 81: 	82 
    -- CP-element group 81:  members (3) 
      -- CP-element group 81: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_stream_corrector_ret_miss_log_6342_sample_start_
      -- CP-element group 81: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_stream_corrector_ret_miss_log_6342_Sample/$entry
      -- CP-element group 81: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_stream_corrector_ret_miss_log_6342_Sample/req
      -- 
    req_1379_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1379_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => stream_corrector_daemon_CP_1127_elements(81), ack => WPIPE_stream_corrector_ret_miss_log_6342_inst_req_0); -- 
    stream_corrector_daemon_cp_element_group_81: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 43) := "stream_corrector_daemon_cp_element_group_81"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= stream_corrector_daemon_CP_1127_elements(19) & stream_corrector_daemon_CP_1127_elements(40) & stream_corrector_daemon_CP_1127_elements(83);
      gj_stream_corrector_daemon_cp_element_group_81 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => stream_corrector_daemon_CP_1127_elements(81), clk => clk, reset => reset); --
    end block;
    -- CP-element group 82:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 82: predecessors 
    -- CP-element group 82: 	81 
    -- CP-element group 82: successors 
    -- CP-element group 82: 	83 
    -- CP-element group 82: marked-successors 
    -- CP-element group 82: 	17 
    -- CP-element group 82: 	36 
    -- CP-element group 82:  members (6) 
      -- CP-element group 82: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_stream_corrector_ret_miss_log_6342_sample_completed_
      -- CP-element group 82: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_stream_corrector_ret_miss_log_6342_update_start_
      -- CP-element group 82: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_stream_corrector_ret_miss_log_6342_Sample/$exit
      -- CP-element group 82: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_stream_corrector_ret_miss_log_6342_Sample/ack
      -- CP-element group 82: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_stream_corrector_ret_miss_log_6342_Update/$entry
      -- CP-element group 82: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_stream_corrector_ret_miss_log_6342_Update/req
      -- 
    ack_1380_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 82_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_stream_corrector_ret_miss_log_6342_inst_ack_0, ack => stream_corrector_daemon_CP_1127_elements(82)); -- 
    req_1384_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1384_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => stream_corrector_daemon_CP_1127_elements(82), ack => WPIPE_stream_corrector_ret_miss_log_6342_inst_req_1); -- 
    -- CP-element group 83:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 83: predecessors 
    -- CP-element group 83: 	82 
    -- CP-element group 83: successors 
    -- CP-element group 83: 	94 
    -- CP-element group 83: marked-successors 
    -- CP-element group 83: 	81 
    -- CP-element group 83:  members (3) 
      -- CP-element group 83: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_stream_corrector_ret_miss_log_6342_update_completed_
      -- CP-element group 83: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_stream_corrector_ret_miss_log_6342_Update/$exit
      -- CP-element group 83: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_stream_corrector_ret_miss_log_6342_Update/ack
      -- 
    ack_1385_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 83_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_stream_corrector_ret_miss_log_6342_inst_ack_1, ack => stream_corrector_daemon_CP_1127_elements(83)); -- 
    -- CP-element group 84:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 84: predecessors 
    -- CP-element group 84: 	19 
    -- CP-element group 84: 	40 
    -- CP-element group 84: marked-predecessors 
    -- CP-element group 84: 	86 
    -- CP-element group 84: successors 
    -- CP-element group 84: 	85 
    -- CP-element group 84:  members (3) 
      -- CP-element group 84: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_iretire_6454_sample_start_
      -- CP-element group 84: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_iretire_6454_Sample/$entry
      -- CP-element group 84: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_iretire_6454_Sample/req
      -- 
    req_1393_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1393_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => stream_corrector_daemon_CP_1127_elements(84), ack => WPIPE_noblock_teu_stream_corrector_to_iretire_6454_inst_req_0); -- 
    stream_corrector_daemon_cp_element_group_84: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 43) := "stream_corrector_daemon_cp_element_group_84"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= stream_corrector_daemon_CP_1127_elements(19) & stream_corrector_daemon_CP_1127_elements(40) & stream_corrector_daemon_CP_1127_elements(86);
      gj_stream_corrector_daemon_cp_element_group_84 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => stream_corrector_daemon_CP_1127_elements(84), clk => clk, reset => reset); --
    end block;
    -- CP-element group 85:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 85: predecessors 
    -- CP-element group 85: 	84 
    -- CP-element group 85: successors 
    -- CP-element group 85: 	86 
    -- CP-element group 85: marked-successors 
    -- CP-element group 85: 	17 
    -- CP-element group 85: 	36 
    -- CP-element group 85:  members (6) 
      -- CP-element group 85: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_iretire_6454_sample_completed_
      -- CP-element group 85: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_iretire_6454_update_start_
      -- CP-element group 85: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_iretire_6454_Sample/$exit
      -- CP-element group 85: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_iretire_6454_Sample/ack
      -- CP-element group 85: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_iretire_6454_Update/$entry
      -- CP-element group 85: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_iretire_6454_Update/req
      -- 
    ack_1394_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 85_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_teu_stream_corrector_to_iretire_6454_inst_ack_0, ack => stream_corrector_daemon_CP_1127_elements(85)); -- 
    req_1398_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1398_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => stream_corrector_daemon_CP_1127_elements(85), ack => WPIPE_noblock_teu_stream_corrector_to_iretire_6454_inst_req_1); -- 
    -- CP-element group 86:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 86: predecessors 
    -- CP-element group 86: 	85 
    -- CP-element group 86: successors 
    -- CP-element group 86: 	94 
    -- CP-element group 86: marked-successors 
    -- CP-element group 86: 	84 
    -- CP-element group 86:  members (3) 
      -- CP-element group 86: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_iretire_6454_update_completed_
      -- CP-element group 86: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_iretire_6454_Update/$exit
      -- CP-element group 86: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_noblock_teu_stream_corrector_to_iretire_6454_Update/ack
      -- 
    ack_1399_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 86_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_teu_stream_corrector_to_iretire_6454_inst_ack_1, ack => stream_corrector_daemon_CP_1127_elements(86)); -- 
    -- CP-element group 87:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 87: predecessors 
    -- CP-element group 87: 	19 
    -- CP-element group 87: 	40 
    -- CP-element group 87: marked-predecessors 
    -- CP-element group 87: 	89 
    -- CP-element group 87: successors 
    -- CP-element group 87: 	88 
    -- CP-element group 87:  members (3) 
      -- CP-element group 87: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_to_loadstore_6521_sample_start_
      -- CP-element group 87: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_to_loadstore_6521_Sample/$entry
      -- CP-element group 87: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_to_loadstore_6521_Sample/req
      -- 
    req_1407_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1407_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => stream_corrector_daemon_CP_1127_elements(87), ack => WPIPE_teu_stream_corrector_to_loadstore_6521_inst_req_0); -- 
    stream_corrector_daemon_cp_element_group_87: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 43) := "stream_corrector_daemon_cp_element_group_87"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= stream_corrector_daemon_CP_1127_elements(19) & stream_corrector_daemon_CP_1127_elements(40) & stream_corrector_daemon_CP_1127_elements(89);
      gj_stream_corrector_daemon_cp_element_group_87 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => stream_corrector_daemon_CP_1127_elements(87), clk => clk, reset => reset); --
    end block;
    -- CP-element group 88:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 88: predecessors 
    -- CP-element group 88: 	87 
    -- CP-element group 88: successors 
    -- CP-element group 88: 	89 
    -- CP-element group 88: marked-successors 
    -- CP-element group 88: 	17 
    -- CP-element group 88: 	36 
    -- CP-element group 88:  members (6) 
      -- CP-element group 88: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_to_loadstore_6521_sample_completed_
      -- CP-element group 88: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_to_loadstore_6521_update_start_
      -- CP-element group 88: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_to_loadstore_6521_Sample/$exit
      -- CP-element group 88: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_to_loadstore_6521_Sample/ack
      -- CP-element group 88: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_to_loadstore_6521_Update/$entry
      -- CP-element group 88: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_to_loadstore_6521_Update/req
      -- 
    ack_1408_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 88_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_stream_corrector_to_loadstore_6521_inst_ack_0, ack => stream_corrector_daemon_CP_1127_elements(88)); -- 
    req_1412_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1412_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => stream_corrector_daemon_CP_1127_elements(88), ack => WPIPE_teu_stream_corrector_to_loadstore_6521_inst_req_1); -- 
    -- CP-element group 89:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 89: predecessors 
    -- CP-element group 89: 	88 
    -- CP-element group 89: successors 
    -- CP-element group 89: 	94 
    -- CP-element group 89: marked-successors 
    -- CP-element group 89: 	87 
    -- CP-element group 89:  members (3) 
      -- CP-element group 89: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_to_loadstore_6521_update_completed_
      -- CP-element group 89: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_to_loadstore_6521_Update/$exit
      -- CP-element group 89: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_to_loadstore_6521_Update/ack
      -- 
    ack_1413_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 89_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_stream_corrector_to_loadstore_6521_inst_ack_1, ack => stream_corrector_daemon_CP_1127_elements(89)); -- 
    -- CP-element group 90:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 90: predecessors 
    -- CP-element group 90: 	19 
    -- CP-element group 90: 	40 
    -- CP-element group 90: marked-predecessors 
    -- CP-element group 90: 	92 
    -- CP-element group 90: successors 
    -- CP-element group 90: 	91 
    -- CP-element group 90:  members (3) 
      -- CP-element group 90: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_annul_status_6546_sample_start_
      -- CP-element group 90: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_annul_status_6546_Sample/$entry
      -- CP-element group 90: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_annul_status_6546_Sample/req
      -- 
    req_1421_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1421_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => stream_corrector_daemon_CP_1127_elements(90), ack => WPIPE_teu_stream_corrector_annul_status_6546_inst_req_0); -- 
    stream_corrector_daemon_cp_element_group_90: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 43) := "stream_corrector_daemon_cp_element_group_90"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= stream_corrector_daemon_CP_1127_elements(19) & stream_corrector_daemon_CP_1127_elements(40) & stream_corrector_daemon_CP_1127_elements(92);
      gj_stream_corrector_daemon_cp_element_group_90 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => stream_corrector_daemon_CP_1127_elements(90), clk => clk, reset => reset); --
    end block;
    -- CP-element group 91:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 91: predecessors 
    -- CP-element group 91: 	90 
    -- CP-element group 91: successors 
    -- CP-element group 91: 	92 
    -- CP-element group 91: marked-successors 
    -- CP-element group 91: 	17 
    -- CP-element group 91: 	36 
    -- CP-element group 91:  members (6) 
      -- CP-element group 91: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_annul_status_6546_sample_completed_
      -- CP-element group 91: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_annul_status_6546_update_start_
      -- CP-element group 91: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_annul_status_6546_Sample/$exit
      -- CP-element group 91: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_annul_status_6546_Sample/ack
      -- CP-element group 91: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_annul_status_6546_Update/$entry
      -- CP-element group 91: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_annul_status_6546_Update/req
      -- 
    ack_1422_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 91_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_stream_corrector_annul_status_6546_inst_ack_0, ack => stream_corrector_daemon_CP_1127_elements(91)); -- 
    req_1426_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1426_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => stream_corrector_daemon_CP_1127_elements(91), ack => WPIPE_teu_stream_corrector_annul_status_6546_inst_req_1); -- 
    -- CP-element group 92:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 92: predecessors 
    -- CP-element group 92: 	91 
    -- CP-element group 92: successors 
    -- CP-element group 92: 	94 
    -- CP-element group 92: marked-successors 
    -- CP-element group 92: 	90 
    -- CP-element group 92:  members (3) 
      -- CP-element group 92: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_annul_status_6546_update_completed_
      -- CP-element group 92: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_annul_status_6546_Update/$exit
      -- CP-element group 92: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/WPIPE_teu_stream_corrector_annul_status_6546_Update/ack
      -- 
    ack_1427_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 92_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_stream_corrector_annul_status_6546_inst_ack_1, ack => stream_corrector_daemon_CP_1127_elements(92)); -- 
    -- CP-element group 93:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 93: predecessors 
    -- CP-element group 93: 	9 
    -- CP-element group 93: successors 
    -- CP-element group 93: 	10 
    -- CP-element group 93:  members (1) 
      -- CP-element group 93: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/loop_body_delay_to_condition_start
      -- 
    -- Element group stream_corrector_daemon_CP_1127_elements(93) is a control-delay.
    cp_element_93_delay: control_delay_element  generic map(name => " 93_delay", delay_value => 1)  port map(req => stream_corrector_daemon_CP_1127_elements(9), ack => stream_corrector_daemon_CP_1127_elements(93), clk => clk, reset =>reset);
    -- CP-element group 94:  join  transition  bypass  pipeline-parent 
    -- CP-element group 94: predecessors 
    -- CP-element group 94: 	12 
    -- CP-element group 94: 	56 
    -- CP-element group 94: 	59 
    -- CP-element group 94: 	62 
    -- CP-element group 94: 	65 
    -- CP-element group 94: 	68 
    -- CP-element group 94: 	71 
    -- CP-element group 94: 	74 
    -- CP-element group 94: 	77 
    -- CP-element group 94: 	80 
    -- CP-element group 94: 	83 
    -- CP-element group 94: 	86 
    -- CP-element group 94: 	89 
    -- CP-element group 94: 	92 
    -- CP-element group 94: successors 
    -- CP-element group 94: 	6 
    -- CP-element group 94:  members (1) 
      -- CP-element group 94: 	 branch_block_stmt_4944/do_while_stmt_4945/do_while_stmt_4945_loop_body/$exit
      -- 
    stream_corrector_daemon_cp_element_group_94: block -- 
      constant place_capacities: IntegerArray(0 to 13) := (0 => 7,1 => 7,2 => 7,3 => 7,4 => 7,5 => 7,6 => 7,7 => 7,8 => 7,9 => 7,10 => 7,11 => 7,12 => 7,13 => 7);
      constant place_markings: IntegerArray(0 to 13)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0,11 => 0,12 => 0,13 => 0);
      constant place_delays: IntegerArray(0 to 13) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0,11 => 0,12 => 0,13 => 0);
      constant joinName: string(1 to 43) := "stream_corrector_daemon_cp_element_group_94"; 
      signal preds: BooleanArray(1 to 14); -- 
    begin -- 
      preds <= stream_corrector_daemon_CP_1127_elements(12) & stream_corrector_daemon_CP_1127_elements(56) & stream_corrector_daemon_CP_1127_elements(59) & stream_corrector_daemon_CP_1127_elements(62) & stream_corrector_daemon_CP_1127_elements(65) & stream_corrector_daemon_CP_1127_elements(68) & stream_corrector_daemon_CP_1127_elements(71) & stream_corrector_daemon_CP_1127_elements(74) & stream_corrector_daemon_CP_1127_elements(77) & stream_corrector_daemon_CP_1127_elements(80) & stream_corrector_daemon_CP_1127_elements(83) & stream_corrector_daemon_CP_1127_elements(86) & stream_corrector_daemon_CP_1127_elements(89) & stream_corrector_daemon_CP_1127_elements(92);
      gj_stream_corrector_daemon_cp_element_group_94 : generic_join generic map(name => joinName, number_of_predecessors => 14, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => stream_corrector_daemon_CP_1127_elements(94), clk => clk, reset => reset); --
    end block;
    -- CP-element group 95:  transition  input  bypass  pipeline-parent 
    -- CP-element group 95: predecessors 
    -- CP-element group 95: 	5 
    -- CP-element group 95: successors 
    -- CP-element group 95:  members (2) 
      -- CP-element group 95: 	 branch_block_stmt_4944/do_while_stmt_4945/loop_exit/$exit
      -- CP-element group 95: 	 branch_block_stmt_4944/do_while_stmt_4945/loop_exit/ack
      -- 
    ack_1432_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 95_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_4945_branch_ack_0, ack => stream_corrector_daemon_CP_1127_elements(95)); -- 
    -- CP-element group 96:  transition  input  bypass  pipeline-parent 
    -- CP-element group 96: predecessors 
    -- CP-element group 96: 	5 
    -- CP-element group 96: successors 
    -- CP-element group 96:  members (2) 
      -- CP-element group 96: 	 branch_block_stmt_4944/do_while_stmt_4945/loop_taken/$exit
      -- CP-element group 96: 	 branch_block_stmt_4944/do_while_stmt_4945/loop_taken/ack
      -- 
    ack_1436_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 96_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_4945_branch_ack_1, ack => stream_corrector_daemon_CP_1127_elements(96)); -- 
    -- CP-element group 97:  transition  bypass  pipeline-parent 
    -- CP-element group 97: predecessors 
    -- CP-element group 97: 	3 
    -- CP-element group 97: successors 
    -- CP-element group 97: 	1 
    -- CP-element group 97:  members (1) 
      -- CP-element group 97: 	 branch_block_stmt_4944/do_while_stmt_4945/$exit
      -- 
    stream_corrector_daemon_CP_1127_elements(97) <= stream_corrector_daemon_CP_1127_elements(3);
    -- CP-element group 98:  transition  input  bypass 
    -- CP-element group 98: predecessors 
    -- CP-element group 98: 	1 
    -- CP-element group 98: successors 
    -- CP-element group 98:  members (3) 
      -- CP-element group 98: 	 assign_stmt_6555_to_assign_stmt_6558/assign_stmt_6555_sample_completed_
      -- CP-element group 98: 	 assign_stmt_6555_to_assign_stmt_6558/assign_stmt_6555_Sample/$exit
      -- CP-element group 98: 	 assign_stmt_6555_to_assign_stmt_6558/assign_stmt_6555_Sample/ack
      -- 
    ack_1449_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 98_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_s0_6553_inst_ack_0, ack => stream_corrector_daemon_CP_1127_elements(98)); -- 
    -- CP-element group 99:  transition  input  bypass 
    -- CP-element group 99: predecessors 
    -- CP-element group 99: 	1 
    -- CP-element group 99: successors 
    -- CP-element group 99: 	102 
    -- CP-element group 99:  members (3) 
      -- CP-element group 99: 	 assign_stmt_6555_to_assign_stmt_6558/assign_stmt_6555_update_completed_
      -- CP-element group 99: 	 assign_stmt_6555_to_assign_stmt_6558/assign_stmt_6555_Update/$exit
      -- CP-element group 99: 	 assign_stmt_6555_to_assign_stmt_6558/assign_stmt_6555_Update/ack
      -- 
    ack_1454_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 99_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_s0_6553_inst_ack_1, ack => stream_corrector_daemon_CP_1127_elements(99)); -- 
    -- CP-element group 100:  transition  input  bypass 
    -- CP-element group 100: predecessors 
    -- CP-element group 100: 	1 
    -- CP-element group 100: successors 
    -- CP-element group 100:  members (3) 
      -- CP-element group 100: 	 assign_stmt_6555_to_assign_stmt_6558/assign_stmt_6558_sample_completed_
      -- CP-element group 100: 	 assign_stmt_6555_to_assign_stmt_6558/assign_stmt_6558_Sample/$exit
      -- CP-element group 100: 	 assign_stmt_6555_to_assign_stmt_6558/assign_stmt_6558_Sample/ack
      -- 
    ack_1463_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 100_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_s1_6556_inst_ack_0, ack => stream_corrector_daemon_CP_1127_elements(100)); -- 
    -- CP-element group 101:  transition  input  bypass 
    -- CP-element group 101: predecessors 
    -- CP-element group 101: 	1 
    -- CP-element group 101: successors 
    -- CP-element group 101: 	102 
    -- CP-element group 101:  members (3) 
      -- CP-element group 101: 	 assign_stmt_6555_to_assign_stmt_6558/assign_stmt_6558_update_completed_
      -- CP-element group 101: 	 assign_stmt_6555_to_assign_stmt_6558/assign_stmt_6558_Update/$exit
      -- CP-element group 101: 	 assign_stmt_6555_to_assign_stmt_6558/assign_stmt_6558_Update/ack
      -- 
    ack_1468_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 101_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_s1_6556_inst_ack_1, ack => stream_corrector_daemon_CP_1127_elements(101)); -- 
    -- CP-element group 102:  join  transition  bypass 
    -- CP-element group 102: predecessors 
    -- CP-element group 102: 	99 
    -- CP-element group 102: 	101 
    -- CP-element group 102: successors 
    -- CP-element group 102:  members (2) 
      -- CP-element group 102: 	 $exit
      -- CP-element group 102: 	 assign_stmt_6555_to_assign_stmt_6558/$exit
      -- 
    stream_corrector_daemon_cp_element_group_102: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 44) := "stream_corrector_daemon_cp_element_group_102"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= stream_corrector_daemon_CP_1127_elements(99) & stream_corrector_daemon_CP_1127_elements(101);
      gj_stream_corrector_daemon_cp_element_group_102 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => stream_corrector_daemon_CP_1127_elements(102), clk => clk, reset => reset); --
    end block;
    stream_corrector_daemon_do_while_stmt_4945_terminator_1437: loop_terminator -- 
      generic map (name => " stream_corrector_daemon_do_while_stmt_4945_terminator_1437", max_iterations_in_flight =>7) 
      port map(loop_body_exit => stream_corrector_daemon_CP_1127_elements(6),loop_continue => stream_corrector_daemon_CP_1127_elements(96),loop_terminate => stream_corrector_daemon_CP_1127_elements(95),loop_back => stream_corrector_daemon_CP_1127_elements(4),loop_exit => stream_corrector_daemon_CP_1127_elements(3),clk => clk, reset => reset); -- 
    phi_stmt_4947_phi_seq_1201_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= stream_corrector_daemon_CP_1127_elements(22);
      stream_corrector_daemon_CP_1127_elements(25)<= src_sample_reqs(0);
      src_sample_acks(0)  <= stream_corrector_daemon_CP_1127_elements(25);
      stream_corrector_daemon_CP_1127_elements(26)<= src_update_reqs(0);
      src_update_acks(0)  <= stream_corrector_daemon_CP_1127_elements(27);
      stream_corrector_daemon_CP_1127_elements(23) <= phi_mux_reqs(0);
      triggers(1)  <= stream_corrector_daemon_CP_1127_elements(20);
      stream_corrector_daemon_CP_1127_elements(29)<= src_sample_reqs(1);
      src_sample_acks(1)  <= stream_corrector_daemon_CP_1127_elements(33);
      stream_corrector_daemon_CP_1127_elements(30)<= src_update_reqs(1);
      src_update_acks(1)  <= stream_corrector_daemon_CP_1127_elements(34);
      stream_corrector_daemon_CP_1127_elements(21) <= phi_mux_reqs(1);
      phi_stmt_4947_phi_seq_1201 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_4947_phi_seq_1201") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => stream_corrector_daemon_CP_1127_elements(11), 
          phi_sample_ack => stream_corrector_daemon_CP_1127_elements(18), 
          phi_update_req => stream_corrector_daemon_CP_1127_elements(14), 
          phi_update_ack => stream_corrector_daemon_CP_1127_elements(19), 
          phi_mux_ack => stream_corrector_daemon_CP_1127_elements(24), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_4951_phi_seq_1245_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= stream_corrector_daemon_CP_1127_elements(43);
      stream_corrector_daemon_CP_1127_elements(46)<= src_sample_reqs(0);
      src_sample_acks(0)  <= stream_corrector_daemon_CP_1127_elements(46);
      stream_corrector_daemon_CP_1127_elements(47)<= src_update_reqs(0);
      src_update_acks(0)  <= stream_corrector_daemon_CP_1127_elements(48);
      stream_corrector_daemon_CP_1127_elements(44) <= phi_mux_reqs(0);
      triggers(1)  <= stream_corrector_daemon_CP_1127_elements(41);
      stream_corrector_daemon_CP_1127_elements(50)<= src_sample_reqs(1);
      src_sample_acks(1)  <= stream_corrector_daemon_CP_1127_elements(52);
      stream_corrector_daemon_CP_1127_elements(51)<= src_update_reqs(1);
      src_update_acks(1)  <= stream_corrector_daemon_CP_1127_elements(53);
      stream_corrector_daemon_CP_1127_elements(42) <= phi_mux_reqs(1);
      phi_stmt_4951_phi_seq_1245 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_4951_phi_seq_1245") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => stream_corrector_daemon_CP_1127_elements(37), 
          phi_sample_ack => stream_corrector_daemon_CP_1127_elements(38), 
          phi_update_req => stream_corrector_daemon_CP_1127_elements(39), 
          phi_update_ack => stream_corrector_daemon_CP_1127_elements(40), 
          phi_mux_ack => stream_corrector_daemon_CP_1127_elements(45), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    entry_tmerge_1152_block : block -- 
      signal preds : BooleanArray(0 to 1);
      begin -- 
        preds(0)  <= stream_corrector_daemon_CP_1127_elements(7);
        preds(1)  <= stream_corrector_daemon_CP_1127_elements(8);
        entry_tmerge_1152 : transition_merge -- 
          generic map(name => " entry_tmerge_1152")
          port map (preds => preds, symbol_out => stream_corrector_daemon_CP_1127_elements(9));
          -- 
    end block;
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal ADD_u30_u30_6314_wire : std_logic_vector(29 downto 0);
    signal AND_u1_u1_5228_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5514_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5522_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5527_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5547_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5549_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5557_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5559_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5562_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5573_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5577_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5579_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5584_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5586_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5589_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5603_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5606_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5612_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5620_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5626_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5628_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5637_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5643_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5654_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5657_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5658_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5663_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5666_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5689_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5696_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5704_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5706_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5734_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5738_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5764_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5771_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5776_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5777_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5785_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5795_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5801_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5803_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5810_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5813_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5814_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5827_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5831_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5832_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5837_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5841_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5842_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5866_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5870_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5871_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5895_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5899_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5900_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5974_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5978_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5998_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_6002_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_6047_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_6051_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_6055_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_6075_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_6079_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_6083_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_6231_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_6325_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_6337_wire : std_logic_vector(0 downto 0);
    signal CIRCULANT_4951 : std_logic_vector(140 downto 0);
    signal CONCAT_u10_u14_6197_wire : std_logic_vector(13 downto 0);
    signal CONCAT_u15_u23_6429_wire : std_logic_vector(22 downto 0);
    signal CONCAT_u1_u2_6136_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_6192_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_6195_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_6200_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_6203_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_6207_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_6210_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_6276_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_6309_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_6422_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_6437_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_6481_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_6484_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_6488_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_6533_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_6536_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u31_6315_wire : std_logic_vector(30 downto 0);
    signal CONCAT_u1_u3_6233_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u1_u5_6411_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u1_u5_6427_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u1_u5_6432_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u1_u5_6443_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u27_u30_6440_wire : std_logic_vector(29 downto 0);
    signal CONCAT_u2_u3_6278_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_6424_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_6439_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_6490_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u4_6196_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u2_u4_6204_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u2_u4_6211_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u2_u4_6485_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u2_u4_6537_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u2_u5_6138_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u2_u6_6494_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u30_u131_6450_wire : std_logic_vector(130 downto 0);
    signal CONCAT_u30_u60_6283_wire : std_logic_vector(59 downto 0);
    signal CONCAT_u32_u64_6448_wire : std_logic_vector(63 downto 0);
    signal CONCAT_u32_u64_6499_wire : std_logic_vector(63 downto 0);
    signal CONCAT_u37_u101_6449_wire : std_logic_vector(100 downto 0);
    signal CONCAT_u38_u134_6502_wire : std_logic_vector(133 downto 0);
    signal CONCAT_u3_u4_6183_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u3_u8_6428_wire : std_logic_vector(7 downto 0);
    signal CONCAT_u4_u5_6185_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u4_u5_6188_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u4_u6_6129_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u4_u6_6540_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u4_u7_6491_wire : std_logic_vector(6 downto 0);
    signal CONCAT_u4_u8_6212_wire : std_logic_vector(7 downto 0);
    signal CONCAT_u5_u10_6189_wire : std_logic_vector(9 downto 0);
    signal CONCAT_u5_u27_6434_wire : std_logic_vector(26 downto 0);
    signal CONCAT_u5_u37_6445_wire : std_logic_vector(36 downto 0);
    signal CONCAT_u5_u7_6413_wire : std_logic_vector(6 downto 0);
    signal CONCAT_u64_u96_6501_wire : std_logic_vector(95 downto 0);
    signal CONCAT_u6_u12_6542_wire : std_logic_vector(11 downto 0);
    signal CONCAT_u6_u13_6133_wire : std_logic_vector(12 downto 0);
    signal CONCAT_u6_u38_6496_wire : std_logic_vector(37 downto 0);
    signal CONCAT_u6_u7_6132_wire : std_logic_vector(6 downto 0);
    signal CONCAT_u6_u7_6416_wire : std_logic_vector(6 downto 0);
    signal CONCAT_u7_u15_6419_wire : std_logic_vector(14 downto 0);
    signal CONCAT_u7_u8_6418_wire : std_logic_vector(7 downto 0);
    signal EQ_u2_u1_5517_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_5521_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_5615_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_5619_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_5625_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_5790_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_5793_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_5799_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_5952_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_5968_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_5992_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_6026_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_6044_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_6072_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_5914_wire : std_logic_vector(0 downto 0);
    signal MUX_5536_wire : std_logic_vector(31 downto 0);
    signal MUX_5544_wire : std_logic_vector(31 downto 0);
    signal MUX_5552_wire : std_logic_vector(31 downto 0);
    signal MUX_5566_wire : std_logic_vector(31 downto 0);
    signal MUX_5692_wire : std_logic_vector(0 downto 0);
    signal MUX_5699_wire : std_logic_vector(0 downto 0);
    signal MUX_5709_wire : std_logic_vector(0 downto 0);
    signal MUX_5847_wire : std_logic_vector(0 downto 0);
    signal MUX_5848_wire : std_logic_vector(0 downto 0);
    signal MUX_5849_wire : std_logic_vector(0 downto 0);
    signal MUX_5858_wire : std_logic_vector(0 downto 0);
    signal MUX_5876_wire : std_logic_vector(3 downto 0);
    signal MUX_5877_wire : std_logic_vector(3 downto 0);
    signal MUX_5887_wire : std_logic_vector(3 downto 0);
    signal MUX_5905_wire : std_logic_vector(0 downto 0);
    signal MUX_5906_wire : std_logic_vector(0 downto 0);
    signal MUX_5961_wire : std_logic_vector(1 downto 0);
    signal MUX_5962_wire : std_logic_vector(1 downto 0);
    signal MUX_5963_wire : std_logic_vector(1 downto 0);
    signal MUX_5965_wire : std_logic_vector(1 downto 0);
    signal MUX_5983_wire : std_logic_vector(1 downto 0);
    signal MUX_5984_wire : std_logic_vector(1 downto 0);
    signal MUX_5985_wire : std_logic_vector(1 downto 0);
    signal MUX_5986_wire : std_logic_vector(1 downto 0);
    signal MUX_5988_wire : std_logic_vector(1 downto 0);
    signal MUX_6007_wire : std_logic_vector(1 downto 0);
    signal MUX_6008_wire : std_logic_vector(1 downto 0);
    signal MUX_6009_wire : std_logic_vector(1 downto 0);
    signal MUX_6010_wire : std_logic_vector(1 downto 0);
    signal MUX_6012_wire : std_logic_vector(1 downto 0);
    signal MUX_6036_wire : std_logic_vector(2 downto 0);
    signal MUX_6037_wire : std_logic_vector(2 downto 0);
    signal MUX_6038_wire : std_logic_vector(2 downto 0);
    signal MUX_6039_wire : std_logic_vector(2 downto 0);
    signal MUX_6041_wire : std_logic_vector(2 downto 0);
    signal MUX_6061_wire : std_logic_vector(2 downto 0);
    signal MUX_6063_wire : std_logic_vector(2 downto 0);
    signal MUX_6064_wire : std_logic_vector(2 downto 0);
    signal MUX_6065_wire : std_logic_vector(2 downto 0);
    signal MUX_6066_wire : std_logic_vector(2 downto 0);
    signal MUX_6068_wire : std_logic_vector(2 downto 0);
    signal MUX_6089_wire : std_logic_vector(2 downto 0);
    signal MUX_6091_wire : std_logic_vector(2 downto 0);
    signal MUX_6092_wire : std_logic_vector(2 downto 0);
    signal MUX_6093_wire : std_logic_vector(2 downto 0);
    signal MUX_6094_wire : std_logic_vector(2 downto 0);
    signal MUX_6096_wire : std_logic_vector(2 downto 0);
    signal NEQ_u2_u1_5653_wire : std_logic_vector(0 downto 0);
    signal NEQ_u32_u1_5526_wire : std_logic_vector(0 downto 0);
    signal NEQ_u32_u1_5611_wire : std_logic_vector(0 downto 0);
    signal NEQ_u32_u1_5642_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5227_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5254_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5513_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5555_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5572_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5582_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5605_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5608_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5636_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5639_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5660_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5662_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5665_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5687_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5694_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5702_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5733_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5762_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5768_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5770_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5784_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5787_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5809_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5825_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5830_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5835_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5840_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5864_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5869_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5893_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5898_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5954_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5970_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5994_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_6230_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_6327_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5230_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5340_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5523_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5563_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5580_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5590_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5591_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5621_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5627_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5700_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5739_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5765_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5766_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5775_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5778_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5796_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5802_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5918_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5942_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5945_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5946_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_6301_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_6303_wire : std_logic_vector(0 downto 0);
    signal OR_u2_u2_5989_wire : std_logic_vector(1 downto 0);
    signal OR_u32_u32_5553_wire : std_logic_vector(31 downto 0);
    signal OR_u3_u3_6069_wire : std_logic_vector(2 downto 0);
    signal RPIPE_noblock_stream_corrector_in_args_4950_wire : std_logic_vector(359 downto 0);
    signal RPIPE_stream_corrector_ret_hit_log_6554_wire : std_logic_vector(31 downto 0);
    signal RPIPE_stream_corrector_ret_miss_log_6557_wire : std_logic_vector(31 downto 0);
    signal R_CONTINUES_MISPREDICTED_STREAM_6062_wire_constant : std_logic_vector(2 downto 0);
    signal R_CONTINUES_TRAPPED_STREAM_6090_wire_constant : std_logic_vector(2 downto 0);
    signal R_IN_LIVE_STREAM_ANNULLED_6034_wire_constant : std_logic_vector(2 downto 0);
    signal R_IN_LIVE_STREAM_ANNULLED_6059_wire_constant : std_logic_vector(2 downto 0);
    signal R_IN_LIVE_STREAM_ANNULLED_6087_wire_constant : std_logic_vector(2 downto 0);
    signal R_IN_LIVE_STREAM_NOT_ANNULLED_6035_wire_constant : std_logic_vector(2 downto 0);
    signal R_IN_LIVE_STREAM_NOT_ANNULLED_6060_wire_constant : std_logic_vector(2 downto 0);
    signal R_IN_LIVE_STREAM_NOT_ANNULLED_6088_wire_constant : std_logic_vector(2 downto 0);
    signal R_ONE_1_5328_wire_constant : std_logic_vector(0 downto 0);
    signal R_ONE_1_5360_wire_constant : std_logic_vector(0 downto 0);
    signal R_ONE_1_5389_wire_constant : std_logic_vector(0 downto 0);
    signal R_ONE_1_5833_wire_constant : std_logic_vector(0 downto 0);
    signal R_ONE_1_6409_wire_constant : std_logic_vector(0 downto 0);
    signal R_SC_NORMAL_5516_wire_constant : std_logic_vector(1 downto 0);
    signal R_SC_NORMAL_5614_wire_constant : std_logic_vector(1 downto 0);
    signal R_SC_NORMAL_5789_wire_constant : std_logic_vector(1 downto 0);
    signal R_SC_NORMAL_5951_wire_constant : std_logic_vector(1 downto 0);
    signal R_SC_NORMAL_5955_wire_constant : std_logic_vector(1 downto 0);
    signal R_SC_NORMAL_5960_wire_constant : std_logic_vector(1 downto 0);
    signal R_SC_NORMAL_5981_wire_constant : std_logic_vector(1 downto 0);
    signal R_SC_NORMAL_6005_wire_constant : std_logic_vector(1 downto 0);
    signal R_SC_NORMAL_6025_wire_constant : std_logic_vector(1 downto 0);
    signal R_SC_STREAM_DEAD_5520_wire_constant : std_logic_vector(1 downto 0);
    signal R_SC_STREAM_DEAD_5618_wire_constant : std_logic_vector(1 downto 0);
    signal R_SC_STREAM_DEAD_5798_wire_constant : std_logic_vector(1 downto 0);
    signal R_SC_STREAM_DEAD_5959_wire_constant : std_logic_vector(1 downto 0);
    signal R_SC_STREAM_DEAD_5967_wire_constant : std_logic_vector(1 downto 0);
    signal R_SC_STREAM_DEAD_5971_wire_constant : std_logic_vector(1 downto 0);
    signal R_SC_STREAM_DEAD_5979_wire_constant : std_logic_vector(1 downto 0);
    signal R_SC_STREAM_DEAD_5982_wire_constant : std_logic_vector(1 downto 0);
    signal R_SC_STREAM_DEAD_6003_wire_constant : std_logic_vector(1 downto 0);
    signal R_SC_STREAM_DEAD_6043_wire_constant : std_logic_vector(1 downto 0);
    signal R_SC_THREAD_DEAD_5624_wire_constant : std_logic_vector(1 downto 0);
    signal R_SC_THREAD_DEAD_5652_wire_constant : std_logic_vector(1 downto 0);
    signal R_SC_THREAD_DEAD_5792_wire_constant : std_logic_vector(1 downto 0);
    signal R_SC_THREAD_DEAD_5957_wire_constant : std_logic_vector(1 downto 0);
    signal R_SC_THREAD_DEAD_5975_wire_constant : std_logic_vector(1 downto 0);
    signal R_SC_THREAD_DEAD_5991_wire_constant : std_logic_vector(1 downto 0);
    signal R_SC_THREAD_DEAD_5995_wire_constant : std_logic_vector(1 downto 0);
    signal R_SC_THREAD_DEAD_5999_wire_constant : std_logic_vector(1 downto 0);
    signal R_SC_THREAD_DEAD_6006_wire_constant : std_logic_vector(1 downto 0);
    signal R_SC_THREAD_DEAD_6071_wire_constant : std_logic_vector(1 downto 0);
    signal R_TERMINATES_STREAM_6030_wire_constant : std_logic_vector(2 downto 0);
    signal R_TERMINATES_STREAM_6032_wire_constant : std_logic_vector(2 downto 0);
    signal R_TERMINATES_STREAM_6052_wire_constant : std_logic_vector(2 downto 0);
    signal R_TERMINATES_STREAM_6056_wire_constant : std_logic_vector(2 downto 0);
    signal R_TERMINATES_STREAM_6080_wire_constant : std_logic_vector(2 downto 0);
    signal R_TERMINATES_STREAM_6084_wire_constant : std_logic_vector(2 downto 0);
    signal R_TERMINATES_THREAD_6028_wire_constant : std_logic_vector(2 downto 0);
    signal R_TERMINATES_THREAD_6048_wire_constant : std_logic_vector(2 downto 0);
    signal R_TERMINATES_THREAD_6076_wire_constant : std_logic_vector(2 downto 0);
    signal R_ZERO_1_5843_wire_constant : std_logic_vector(0 downto 0);
    signal S_from_dispatch_5209 : std_logic_vector(0 downto 0);
    signal UGT_u4_u1_5917_wire : std_logic_vector(0 downto 0);
    signal annul_instr_5232 : std_logic_vector(0 downto 0);
    signal annul_next_to_load_store_6509 : std_logic_vector(0 downto 0);
    signal annul_status_6544 : std_logic_vector(15 downto 0);
    signal ask_iretire_to_signal_idispatch_6260 : std_logic_vector(0 downto 0);
    signal bicc_fbfcc_annul_flag_5109 : std_logic_vector(0 downto 0);
    signal bicc_fbfcc_cond_5113 : std_logic_vector(3 downto 0);
    signal bp_hit_5507 : std_logic_vector(0 downto 0);
    signal br_taken_5593 : std_logic_vector(0 downto 0);
    signal branch_target_npc_5185 : std_logic_vector(31 downto 0);
    signal common_to_downstream_6140 : std_logic_vector(17 downto 0);
    signal computed_annul_next_5711 : std_logic_vector(0 downto 0);
    signal computed_next_info_valid_6347 : std_logic_vector(0 downto 0);
    signal computed_next_npc_5599 : std_logic_vector(31 downto 0);
    signal cp_cti_5240 : std_logic_vector(0 downto 0);
    signal ctrl_word_to_iretire_6214 : std_logic_vector(21 downto 0);
    signal cu1_to_sc_5153 : std_logic_vector(0 downto 0);
    signal cu2_to_retire_5125 : std_logic_vector(0 downto 0);
    signal dbg_bp_hit_5085 : std_logic_vector(0 downto 0);
    signal dbg_bp_id_5081 : std_logic_vector(1 downto 0);
    signal dbg_info_6236 : std_logic_vector(3 downto 0);
    signal dbg_intr_5089 : std_logic_vector(0 downto 0);
    signal debug_mode_5209 : std_logic_vector(0 downto 0);
    signal dispatch_annul_instr_5069 : std_logic_vector(0 downto 0);
    signal dispatch_trap_bit_5209 : std_logic_vector(0 downto 0);
    signal dispatch_traps_5073 : std_logic_vector(3 downto 0);
    signal enable_interrupts_for_this_instruction_5851 : std_logic_vector(0 downto 0);
    signal enable_interrupts_from_dispatch_5209 : std_logic_vector(0 downto 0);
    signal exception_flag_5780 : std_logic_vector(0 downto 0);
    signal fetch_error_5065 : std_logic_vector(0 downto 0);
    signal flush_like_instruction_5729 : std_logic_vector(0 downto 0);
    signal fp_annul_next_in_sc_5396 : std_logic_vector(0 downto 0);
    signal fp_br_taken_in_sc_5396 : std_logic_vector(0 downto 0);
    signal fp_cti_5240 : std_logic_vector(0 downto 0);
    signal fp_rfile_cc_5386 : std_logic_vector(1 downto 0);
    signal fp_rfile_slot_id_5382 : std_logic_vector(5 downto 0);
    signal fp_rfile_stream_id_5378 : std_logic_vector(1 downto 0);
    signal fp_rfile_tid_5374 : std_logic_vector(3 downto 0);
    signal fp_rfile_valid_5370 : std_logic_vector(0 downto 0);
    signal from_dispatch_4963 : std_logic_vector(204 downto 0);
    signal from_fp_rfile_qualified_4979 : std_logic_vector(14 downto 0);
    signal from_iu_qualified_4975 : std_logic_vector(89 downto 0);
    signal from_iu_rfile_cc_qualified_4967 : std_logic_vector(16 downto 0);
    signal from_iu_rfile_rs1_qualified_4971 : std_logic_vector(31 downto 0);
    signal fu1_to_sc_5149 : std_logic_vector(0 downto 0);
    signal fu2_to_retire_5121 : std_logic_vector(0 downto 0);
    signal icache_hit_5209 : std_logic_vector(0 downto 0);
    signal icache_was_accessed_5217 : std_logic_vector(0 downto 0);
    signal ignore_break_points_5209 : std_logic_vector(0 downto 0);
    signal ilvl_5093 : std_logic_vector(3 downto 0);
    signal imm_bit_5209 : std_logic_vector(0 downto 0);
    signal in_args_4947 : std_logic_vector(359 downto 0);
    signal instruction_can_execute_5805 : std_logic_vector(0 downto 0);
    signal interrupt_flag_5920 : std_logic_vector(0 downto 0);
    signal is_bicc_5101 : std_logic_vector(0 downto 0);
    signal is_call_5097 : std_logic_vector(0 downto 0);
    signal is_cti_5209 : std_logic_vector(0 downto 0);
    signal is_fbfcc_5105 : std_logic_vector(0 downto 0);
    signal is_flush_5209 : std_logic_vector(0 downto 0);
    signal is_iu_rett_5245 : std_logic_vector(0 downto 0);
    signal is_mmu_ctrl_write_5209 : std_logic_vector(0 downto 0);
    signal is_ret_or_retl_5141 : std_logic_vector(0 downto 0);
    signal is_rett_5213 : std_logic_vector(0 downto 0);
    signal is_write_psr_5209 : std_logic_vector(0 downto 0);
    signal is_write_psr_instr_5257 : std_logic_vector(0 downto 0);
    signal is_write_psr_or_rett_5222 : std_logic_vector(0 downto 0);
    signal iu1_to_sc_5145 : std_logic_vector(0 downto 0);
    signal iu2_to_retire_5117 : std_logic_vector(0 downto 0);
    signal iu_S_5447 : std_logic_vector(0 downto 0);
    signal iu_alu_result_5467 : std_logic_vector(31 downto 0);
    signal iu_annul_next_in_sc_5335 : std_logic_vector(0 downto 0);
    signal iu_bicc_br_taken_in_sc_5335 : std_logic_vector(0 downto 0);
    signal iu_br_taken_5451 : std_logic_vector(0 downto 0);
    signal iu_br_taken_in_sc_5342 : std_logic_vector(0 downto 0);
    signal iu_can_modify_psr_S_5240 : std_logic_vector(0 downto 0);
    signal iu_computed_next_annul_5455 : std_logic_vector(0 downto 0);
    signal iu_cti_5240 : std_logic_vector(0 downto 0);
    signal iu_disable_interrupts_5431 : std_logic_vector(0 downto 0);
    signal iu_enable_interrupts_5427 : std_logic_vector(0 downto 0);
    signal iu_flush_5240 : std_logic_vector(0 downto 0);
    signal iu_ignore_5423 : std_logic_vector(0 downto 0);
    signal iu_machine_error_5459 : std_logic_vector(0 downto 0);
    signal iu_mmu_ctrl_write_5240 : std_logic_vector(0 downto 0);
    signal iu_proc_ilvl_5439 : std_logic_vector(3 downto 0);
    signal iu_psr_val_5471 : std_logic_vector(31 downto 0);
    signal iu_rfile_cc_5325 : std_logic_vector(3 downto 0);
    signal iu_rfile_slot_id_5321 : std_logic_vector(5 downto 0);
    signal iu_rfile_stream_id_5317 : std_logic_vector(1 downto 0);
    signal iu_rfile_tid_5313 : std_logic_vector(3 downto 0);
    signal iu_rfile_valid_5309 : std_logic_vector(0 downto 0);
    signal iu_set_S_5443 : std_logic_vector(0 downto 0);
    signal iu_set_proc_ilvl_5435 : std_logic_vector(0 downto 0);
    signal iu_slot_id_5419 : std_logic_vector(5 downto 0);
    signal iu_stream_id_5415 : std_logic_vector(1 downto 0);
    signal iu_tid_5411 : std_logic_vector(3 downto 0);
    signal iu_trap_5463 : std_logic_vector(0 downto 0);
    signal jmpl_rett_icache_5209 : std_logic_vector(2 downto 0);
    signal konst_4949_wire_constant : std_logic_vector(359 downto 0);
    signal konst_4953_wire_constant : std_logic_vector(140 downto 0);
    signal konst_5188_wire_constant : std_logic_vector(3 downto 0);
    signal konst_5364_wire_constant : std_logic_vector(31 downto 0);
    signal konst_5537_wire_constant : std_logic_vector(31 downto 0);
    signal konst_5543_wire_constant : std_logic_vector(31 downto 0);
    signal konst_5551_wire_constant : std_logic_vector(31 downto 0);
    signal konst_5565_wire_constant : std_logic_vector(31 downto 0);
    signal konst_5691_wire_constant : std_logic_vector(0 downto 0);
    signal konst_5698_wire_constant : std_logic_vector(0 downto 0);
    signal konst_5708_wire_constant : std_logic_vector(0 downto 0);
    signal konst_5913_wire_constant : std_logic_vector(3 downto 0);
    signal konst_5964_wire_constant : std_logic_vector(1 downto 0);
    signal konst_5987_wire_constant : std_logic_vector(1 downto 0);
    signal konst_6011_wire_constant : std_logic_vector(1 downto 0);
    signal konst_6040_wire_constant : std_logic_vector(2 downto 0);
    signal konst_6067_wire_constant : std_logic_vector(2 downto 0);
    signal konst_6095_wire_constant : std_logic_vector(2 downto 0);
    signal konst_6313_wire_constant : std_logic_vector(29 downto 0);
    signal konst_6551_wire_constant : std_logic_vector(0 downto 0);
    signal last_computed_annul_next_4999 : std_logic_vector(0 downto 0);
    signal last_computed_next_npc_5019 : std_logic_vector(31 downto 0);
    signal last_computed_values_valid_4991 : std_logic_vector(0 downto 0);
    signal last_nnpc_mispredict_flag_4995 : std_logic_vector(0 downto 0);
    signal last_pc_5027 : std_logic_vector(31 downto 0);
    signal last_seen_npc_5023 : std_logic_vector(31 downto 0);
    signal last_was_cti_4987 : std_logic_vector(0 downto 0);
    signal last_was_rett_4983 : std_logic_vector(0 downto 0);
    signal log_retl_hit_6329 : std_logic_vector(0 downto 0);
    signal log_retl_miss_6340 : std_logic_vector(0 downto 0);
    signal logger_active_5209 : std_logic_vector(0 downto 0);
    signal ls_to_retire_5129 : std_logic_vector(0 downto 0);
    signal mae_trap_5190 : std_logic_vector(0 downto 0);
    signal mispredict_screwup_5668 : std_logic_vector(0 downto 0);
    signal next_CIRCULANT_6504 : std_logic_vector(140 downto 0);
    signal next_CIRCULANT_6504_4954_buffered : std_logic_vector(140 downto 0);
    signal next_branch_npc_5568 : std_logic_vector(31 downto 0);
    signal next_last_computed_annul_next_6377 : std_logic_vector(0 downto 0);
    signal next_last_computed_next_npc_6371 : std_logic_vector(31 downto 0);
    signal next_last_computed_values_valid_6380 : std_logic_vector(0 downto 0);
    signal next_last_nnpc_mispredict_flag_6392 : std_logic_vector(0 downto 0);
    signal next_last_pc_6353 : std_logic_vector(31 downto 0);
    signal next_last_seen_npc_6386 : std_logic_vector(31 downto 0);
    signal next_last_was_cti_6359 : std_logic_vector(0 downto 0);
    signal next_last_was_rett_6365 : std_logic_vector(0 downto 0);
    signal next_nonbranch_npc_5539 : std_logic_vector(31 downto 0);
    signal next_sc_S_5909 : std_logic_vector(0 downto 0);
    signal next_sc_enable_interrupts_5860 : std_logic_vector(0 downto 0);
    signal next_sc_proc_ilvl_5889 : std_logic_vector(3 downto 0);
    signal next_sc_psr_5818 : std_logic_vector(31 downto 0);
    signal next_sc_state_6014 : std_logic_vector(1 downto 0);
    signal nnpc_5181 : std_logic_vector(31 downto 0);
    signal nnpc_mispredict_flag_5630 : std_logic_vector(0 downto 0);
    signal nnpc_to_retire_6226 : std_logic_vector(31 downto 0);
    signal npc_5177 : std_logic_vector(31 downto 0);
    signal npc_mispredict_flag_5529 : std_logic_vector(0 downto 0);
    signal npc_to_retire_6223 : std_logic_vector(31 downto 0);
    signal pc_5173 : std_logic_vector(31 downto 0);
    signal pc_screwup_5645 : std_logic_vector(0 downto 0);
    signal pc_to_retire_6217 : std_logic_vector(31 downto 0);
    signal proc_ilvl_for_this_instruction_5880 : std_logic_vector(3 downto 0);
    signal proc_ilvl_from_dispatch_5209 : std_logic_vector(3 downto 0);
    signal psr_val_to_ifetch_5821 : std_logic_vector(31 downto 0);
    signal retl_branch_address_5366 : std_logic_vector(31 downto 0);
    signal retl_is_valid_5357 : std_logic_vector(0 downto 0);
    signal s0_6555 : std_logic_vector(31 downto 0);
    signal s1_6558 : std_logic_vector(31 downto 0);
    signal sc_S_5007 : std_logic_vector(0 downto 0);
    signal sc_enable_interrupts_5003 : std_logic_vector(0 downto 0);
    signal sc_info_5061 : std_logic_vector(5 downto 0);
    signal sc_instr_class_6098 : std_logic_vector(2 downto 0);
    signal sc_proc_ilvl_5015 : std_logic_vector(3 downto 0);
    signal sc_psr_5031 : std_logic_vector(31 downto 0);
    signal sc_state_5011 : std_logic_vector(1 downto 0);
    signal sc_to_cu2_5165 : std_logic_vector(0 downto 0);
    signal sc_to_fu2_5161 : std_logic_vector(0 downto 0);
    signal sc_to_iu2_5157 : std_logic_vector(0 downto 0);
    signal sc_to_ls_5169 : std_logic_vector(0 downto 0);
    signal send_to_fu2_6169 : std_logic_vector(0 downto 0);
    signal send_to_ifetch_6260 : std_logic_vector(0 downto 0);
    signal send_to_iu2_6154 : std_logic_vector(0 downto 0);
    signal send_to_ls_6519 : std_logic_vector(0 downto 0);
    signal single_step_mode_5209 : std_logic_vector(0 downto 0);
    signal slice_6280_wire : std_logic_vector(29 downto 0);
    signal slice_6282_wire : std_logic_vector(29 downto 0);
    signal slice_6312_wire : std_logic_vector(29 downto 0);
    signal slot_id_5057 : std_logic_vector(5 downto 0);
    signal stream_head_5209 : std_logic_vector(0 downto 0);
    signal stream_id_5053 : std_logic_vector(1 downto 0);
    signal stream_terminating_instr_5741 : std_logic_vector(0 downto 0);
    signal terminate_stream_5746 : std_logic_vector(0 downto 0);
    signal terminate_thread_5948 : std_logic_vector(0 downto 0);
    signal thread_control_word_5077 : std_logic_vector(21 downto 0);
    signal thread_head_5209 : std_logic_vector(0 downto 0);
    signal thread_id_5049 : std_logic_vector(3 downto 0);
    signal to_branch_predictor_6286 : std_logic_vector(62 downto 0);
    signal to_fu_6172 : std_logic_vector(17 downto 0);
    signal to_ifetch_6260 : std_logic_vector(147 downto 0);
    signal to_iretire_6452 : std_logic_vector(153 downto 0);
    signal to_iu_6157 : std_logic_vector(17 downto 0);
    signal to_ls_6514 : std_logic_vector(18 downto 0);
    signal to_ras_6317 : std_logic_vector(32 downto 0);
    signal type_cast_6274_wire_constant : std_logic_vector(0 downto 0);
    signal update_annul_status_6529 : std_logic_vector(0 downto 0);
    signal update_branch_predictor_6271 : std_logic_vector(0 downto 0);
    signal update_ras_6305 : std_logic_vector(0 downto 0);
    signal uses_fp_cc_for_branching_5137 : std_logic_vector(0 downto 0);
    signal uses_iu_cc_for_branching_5133 : std_logic_vector(0 downto 0);
    signal valid_from_dispatch_4959 : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    R_CONTINUES_MISPREDICTED_STREAM_6062_wire_constant <= "100";
    R_CONTINUES_TRAPPED_STREAM_6090_wire_constant <= "110";
    R_IN_LIVE_STREAM_ANNULLED_6034_wire_constant <= "001";
    R_IN_LIVE_STREAM_ANNULLED_6059_wire_constant <= "001";
    R_IN_LIVE_STREAM_ANNULLED_6087_wire_constant <= "001";
    R_IN_LIVE_STREAM_NOT_ANNULLED_6035_wire_constant <= "000";
    R_IN_LIVE_STREAM_NOT_ANNULLED_6060_wire_constant <= "000";
    R_IN_LIVE_STREAM_NOT_ANNULLED_6088_wire_constant <= "000";
    R_ONE_1_5328_wire_constant <= "1";
    R_ONE_1_5360_wire_constant <= "1";
    R_ONE_1_5389_wire_constant <= "1";
    R_ONE_1_5833_wire_constant <= "1";
    R_ONE_1_6409_wire_constant <= "1";
    R_SC_NORMAL_5516_wire_constant <= "00";
    R_SC_NORMAL_5614_wire_constant <= "00";
    R_SC_NORMAL_5789_wire_constant <= "00";
    R_SC_NORMAL_5951_wire_constant <= "00";
    R_SC_NORMAL_5955_wire_constant <= "00";
    R_SC_NORMAL_5960_wire_constant <= "00";
    R_SC_NORMAL_5981_wire_constant <= "00";
    R_SC_NORMAL_6005_wire_constant <= "00";
    R_SC_NORMAL_6025_wire_constant <= "00";
    R_SC_STREAM_DEAD_5520_wire_constant <= "01";
    R_SC_STREAM_DEAD_5618_wire_constant <= "01";
    R_SC_STREAM_DEAD_5798_wire_constant <= "01";
    R_SC_STREAM_DEAD_5959_wire_constant <= "01";
    R_SC_STREAM_DEAD_5967_wire_constant <= "01";
    R_SC_STREAM_DEAD_5971_wire_constant <= "01";
    R_SC_STREAM_DEAD_5979_wire_constant <= "01";
    R_SC_STREAM_DEAD_5982_wire_constant <= "01";
    R_SC_STREAM_DEAD_6003_wire_constant <= "01";
    R_SC_STREAM_DEAD_6043_wire_constant <= "01";
    R_SC_THREAD_DEAD_5624_wire_constant <= "10";
    R_SC_THREAD_DEAD_5652_wire_constant <= "10";
    R_SC_THREAD_DEAD_5792_wire_constant <= "10";
    R_SC_THREAD_DEAD_5957_wire_constant <= "10";
    R_SC_THREAD_DEAD_5975_wire_constant <= "10";
    R_SC_THREAD_DEAD_5991_wire_constant <= "10";
    R_SC_THREAD_DEAD_5995_wire_constant <= "10";
    R_SC_THREAD_DEAD_5999_wire_constant <= "10";
    R_SC_THREAD_DEAD_6006_wire_constant <= "10";
    R_SC_THREAD_DEAD_6071_wire_constant <= "10";
    R_TERMINATES_STREAM_6030_wire_constant <= "011";
    R_TERMINATES_STREAM_6032_wire_constant <= "011";
    R_TERMINATES_STREAM_6052_wire_constant <= "011";
    R_TERMINATES_STREAM_6056_wire_constant <= "011";
    R_TERMINATES_STREAM_6080_wire_constant <= "011";
    R_TERMINATES_STREAM_6084_wire_constant <= "011";
    R_TERMINATES_THREAD_6028_wire_constant <= "111";
    R_TERMINATES_THREAD_6048_wire_constant <= "111";
    R_TERMINATES_THREAD_6076_wire_constant <= "111";
    R_ZERO_1_5843_wire_constant <= "0";
    konst_4949_wire_constant <= "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    konst_4953_wire_constant <= "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    konst_5188_wire_constant <= "0011";
    konst_5364_wire_constant <= "00000000000000000000000000001000";
    konst_5537_wire_constant <= "00000000000000000000000000000100";
    konst_5543_wire_constant <= "00000000000000000000000000000000";
    konst_5551_wire_constant <= "00000000000000000000000000000000";
    konst_5565_wire_constant <= "00000000000000000000000000000000";
    konst_5691_wire_constant <= "0";
    konst_5698_wire_constant <= "0";
    konst_5708_wire_constant <= "0";
    konst_5913_wire_constant <= "1111";
    konst_5964_wire_constant <= "00";
    konst_5987_wire_constant <= "00";
    konst_6011_wire_constant <= "00";
    konst_6040_wire_constant <= "000";
    konst_6067_wire_constant <= "000";
    konst_6095_wire_constant <= "000";
    konst_6313_wire_constant <= "000000000000000000000000000010";
    konst_6551_wire_constant <= "1";
    type_cast_6274_wire_constant <= "1";
    phi_stmt_4947: Block -- phi operator 
      signal idata: std_logic_vector(719 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= konst_4949_wire_constant & RPIPE_noblock_stream_corrector_in_args_4950_wire;
      req <= phi_stmt_4947_req_0 & phi_stmt_4947_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_4947",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 360) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_4947_ack_0,
          idata => idata,
          odata => in_args_4947,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_4947
    phi_stmt_4951: Block -- phi operator 
      signal idata: std_logic_vector(281 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= konst_4953_wire_constant & next_CIRCULANT_6504_4954_buffered;
      req <= phi_stmt_4951_req_0 & phi_stmt_4951_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_4951",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 141) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_4951_ack_0,
          idata => idata,
          odata => CIRCULANT_4951,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_4951
    -- flow-through select operator MUX_5536_inst
    MUX_5536_wire <= last_computed_next_npc_5019 when (npc_mispredict_flag_5529(0) /=  '0') else npc_5177;
    -- flow-through select operator MUX_5544_inst
    MUX_5544_wire <= retl_branch_address_5366 when (retl_is_valid_5357(0) /=  '0') else konst_5543_wire_constant;
    -- flow-through select operator MUX_5552_inst
    MUX_5552_wire <= iu_alu_result_5467 when (AND_u1_u1_5549_wire(0) /=  '0') else konst_5551_wire_constant;
    -- flow-through select operator MUX_5566_inst
    MUX_5566_wire <= branch_target_npc_5185 when (OR_u1_u1_5563_wire(0) /=  '0') else konst_5565_wire_constant;
    -- flow-through select operator MUX_5598_inst
    computed_next_npc_5599 <= next_branch_npc_5568 when (br_taken_5593(0) /=  '0') else next_nonbranch_npc_5539;
    -- flow-through select operator MUX_5692_inst
    MUX_5692_wire <= iu_annul_next_in_sc_5335 when (AND_u1_u1_5689_wire(0) /=  '0') else konst_5691_wire_constant;
    -- flow-through select operator MUX_5699_inst
    MUX_5699_wire <= fp_annul_next_in_sc_5396 when (AND_u1_u1_5696_wire(0) /=  '0') else konst_5698_wire_constant;
    -- flow-through select operator MUX_5709_inst
    MUX_5709_wire <= iu_computed_next_annul_5455 when (AND_u1_u1_5706_wire(0) /=  '0') else konst_5708_wire_constant;
    -- flow-through select operator MUX_5817_inst
    next_sc_psr_5818 <= iu_psr_val_5471 when (AND_u1_u1_5814_wire(0) /=  '0') else sc_psr_5031;
    -- flow-through select operator MUX_5847_inst
    MUX_5847_wire <= enable_interrupts_from_dispatch_5209 when (thread_head_5209(0) /=  '0') else sc_enable_interrupts_5003;
    -- flow-through select operator MUX_5848_inst
    MUX_5848_wire <= R_ZERO_1_5843_wire_constant when (AND_u1_u1_5842_wire(0) /=  '0') else MUX_5847_wire;
    -- flow-through select operator MUX_5849_inst
    MUX_5849_wire <= R_ONE_1_5833_wire_constant when (AND_u1_u1_5832_wire(0) /=  '0') else MUX_5848_wire;
    -- flow-through select operator MUX_5858_inst
    MUX_5858_wire <= enable_interrupts_from_dispatch_5209 when (thread_head_5209(0) /=  '0') else sc_enable_interrupts_5003;
    -- flow-through select operator MUX_5859_inst
    next_sc_enable_interrupts_5860 <= enable_interrupts_for_this_instruction_5851 when (instruction_can_execute_5805(0) /=  '0') else MUX_5858_wire;
    -- flow-through select operator MUX_5876_inst
    MUX_5876_wire <= proc_ilvl_from_dispatch_5209 when (thread_head_5209(0) /=  '0') else sc_proc_ilvl_5015;
    -- flow-through select operator MUX_5877_inst
    MUX_5877_wire <= iu_proc_ilvl_5439 when (AND_u1_u1_5871_wire(0) /=  '0') else MUX_5876_wire;
    -- flow-through select operator MUX_5879_inst
    proc_ilvl_for_this_instruction_5880 <= MUX_5877_wire when (instruction_can_execute_5805(0) /=  '0') else sc_proc_ilvl_5015;
    -- flow-through select operator MUX_5887_inst
    MUX_5887_wire <= proc_ilvl_from_dispatch_5209 when (thread_head_5209(0) /=  '0') else sc_proc_ilvl_5015;
    -- flow-through select operator MUX_5888_inst
    next_sc_proc_ilvl_5889 <= proc_ilvl_for_this_instruction_5880 when (instruction_can_execute_5805(0) /=  '0') else MUX_5887_wire;
    -- flow-through select operator MUX_5905_inst
    MUX_5905_wire <= S_from_dispatch_5209 when (thread_head_5209(0) /=  '0') else sc_S_5007;
    -- flow-through select operator MUX_5906_inst
    MUX_5906_wire <= iu_S_5447 when (AND_u1_u1_5900_wire(0) /=  '0') else MUX_5905_wire;
    -- flow-through select operator MUX_5908_inst
    next_sc_S_5909 <= MUX_5906_wire when (instruction_can_execute_5805(0) /=  '0') else sc_S_5007;
    -- flow-through select operator MUX_5961_inst
    MUX_5961_wire <= R_SC_STREAM_DEAD_5959_wire_constant when (terminate_stream_5746(0) /=  '0') else R_SC_NORMAL_5960_wire_constant;
    -- flow-through select operator MUX_5962_inst
    MUX_5962_wire <= R_SC_THREAD_DEAD_5957_wire_constant when (terminate_thread_5948(0) /=  '0') else MUX_5961_wire;
    -- flow-through select operator MUX_5963_inst
    MUX_5963_wire <= R_SC_NORMAL_5955_wire_constant when (NOT_u1_u1_5954_wire(0) /=  '0') else MUX_5962_wire;
    -- flow-through select operator MUX_5965_inst
    MUX_5965_wire <= MUX_5963_wire when (EQ_u2_u1_5952_wire(0) /=  '0') else konst_5964_wire_constant;
    -- flow-through select operator MUX_5983_inst
    MUX_5983_wire <= R_SC_NORMAL_5981_wire_constant when (stream_head_5209(0) /=  '0') else R_SC_STREAM_DEAD_5982_wire_constant;
    -- flow-through select operator MUX_5984_inst
    MUX_5984_wire <= R_SC_STREAM_DEAD_5979_wire_constant when (AND_u1_u1_5978_wire(0) /=  '0') else MUX_5983_wire;
    -- flow-through select operator MUX_5985_inst
    MUX_5985_wire <= R_SC_THREAD_DEAD_5975_wire_constant when (AND_u1_u1_5974_wire(0) /=  '0') else MUX_5984_wire;
    -- flow-through select operator MUX_5986_inst
    MUX_5986_wire <= R_SC_STREAM_DEAD_5971_wire_constant when (NOT_u1_u1_5970_wire(0) /=  '0') else MUX_5985_wire;
    -- flow-through select operator MUX_5988_inst
    MUX_5988_wire <= MUX_5986_wire when (EQ_u2_u1_5968_wire(0) /=  '0') else konst_5987_wire_constant;
    -- flow-through select operator MUX_6007_inst
    MUX_6007_wire <= R_SC_NORMAL_6005_wire_constant when (thread_head_5209(0) /=  '0') else R_SC_THREAD_DEAD_6006_wire_constant;
    -- flow-through select operator MUX_6008_inst
    MUX_6008_wire <= R_SC_STREAM_DEAD_6003_wire_constant when (AND_u1_u1_6002_wire(0) /=  '0') else MUX_6007_wire;
    -- flow-through select operator MUX_6009_inst
    MUX_6009_wire <= R_SC_THREAD_DEAD_5999_wire_constant when (AND_u1_u1_5998_wire(0) /=  '0') else MUX_6008_wire;
    -- flow-through select operator MUX_6010_inst
    MUX_6010_wire <= R_SC_THREAD_DEAD_5995_wire_constant when (NOT_u1_u1_5994_wire(0) /=  '0') else MUX_6009_wire;
    -- flow-through select operator MUX_6012_inst
    MUX_6012_wire <= MUX_6010_wire when (EQ_u2_u1_5992_wire(0) /=  '0') else konst_6011_wire_constant;
    -- flow-through select operator MUX_6036_inst
    MUX_6036_wire <= R_IN_LIVE_STREAM_ANNULLED_6034_wire_constant when (annul_instr_5232(0) /=  '0') else R_IN_LIVE_STREAM_NOT_ANNULLED_6035_wire_constant;
    -- flow-through select operator MUX_6037_inst
    MUX_6037_wire <= R_TERMINATES_STREAM_6032_wire_constant when (stream_terminating_instr_5741(0) /=  '0') else MUX_6036_wire;
    -- flow-through select operator MUX_6038_inst
    MUX_6038_wire <= R_TERMINATES_STREAM_6030_wire_constant when (npc_mispredict_flag_5529(0) /=  '0') else MUX_6037_wire;
    -- flow-through select operator MUX_6039_inst
    MUX_6039_wire <= R_TERMINATES_THREAD_6028_wire_constant when (terminate_thread_5948(0) /=  '0') else MUX_6038_wire;
    -- flow-through select operator MUX_6041_inst
    MUX_6041_wire <= MUX_6039_wire when (EQ_u2_u1_6026_wire(0) /=  '0') else konst_6040_wire_constant;
    -- flow-through select operator MUX_6061_inst
    MUX_6061_wire <= R_IN_LIVE_STREAM_ANNULLED_6059_wire_constant when (annul_instr_5232(0) /=  '0') else R_IN_LIVE_STREAM_NOT_ANNULLED_6060_wire_constant;
    -- flow-through select operator MUX_6063_inst
    MUX_6063_wire <= MUX_6061_wire when (stream_head_5209(0) /=  '0') else R_CONTINUES_MISPREDICTED_STREAM_6062_wire_constant;
    -- flow-through select operator MUX_6064_inst
    MUX_6064_wire <= R_TERMINATES_STREAM_6056_wire_constant when (AND_u1_u1_6055_wire(0) /=  '0') else MUX_6063_wire;
    -- flow-through select operator MUX_6065_inst
    MUX_6065_wire <= R_TERMINATES_STREAM_6052_wire_constant when (AND_u1_u1_6051_wire(0) /=  '0') else MUX_6064_wire;
    -- flow-through select operator MUX_6066_inst
    MUX_6066_wire <= R_TERMINATES_THREAD_6048_wire_constant when (AND_u1_u1_6047_wire(0) /=  '0') else MUX_6065_wire;
    -- flow-through select operator MUX_6068_inst
    MUX_6068_wire <= MUX_6066_wire when (EQ_u2_u1_6044_wire(0) /=  '0') else konst_6067_wire_constant;
    -- flow-through select operator MUX_6089_inst
    MUX_6089_wire <= R_IN_LIVE_STREAM_ANNULLED_6087_wire_constant when (annul_instr_5232(0) /=  '0') else R_IN_LIVE_STREAM_NOT_ANNULLED_6088_wire_constant;
    -- flow-through select operator MUX_6091_inst
    MUX_6091_wire <= MUX_6089_wire when (thread_head_5209(0) /=  '0') else R_CONTINUES_TRAPPED_STREAM_6090_wire_constant;
    -- flow-through select operator MUX_6092_inst
    MUX_6092_wire <= R_TERMINATES_STREAM_6084_wire_constant when (AND_u1_u1_6083_wire(0) /=  '0') else MUX_6091_wire;
    -- flow-through select operator MUX_6093_inst
    MUX_6093_wire <= R_TERMINATES_STREAM_6080_wire_constant when (AND_u1_u1_6079_wire(0) /=  '0') else MUX_6092_wire;
    -- flow-through select operator MUX_6094_inst
    MUX_6094_wire <= R_TERMINATES_THREAD_6076_wire_constant when (AND_u1_u1_6075_wire(0) /=  '0') else MUX_6093_wire;
    -- flow-through select operator MUX_6096_inst
    MUX_6096_wire <= MUX_6094_wire when (EQ_u2_u1_6072_wire(0) /=  '0') else konst_6095_wire_constant;
    -- flow-through select operator MUX_6222_inst
    npc_to_retire_6223 <= last_computed_next_npc_5019 when (npc_mispredict_flag_5529(0) /=  '0') else npc_5177;
    -- flow-through select operator MUX_6352_inst
    next_last_pc_6353 <= pc_5173 when (computed_next_info_valid_6347(0) /=  '0') else last_pc_5027;
    -- flow-through select operator MUX_6358_inst
    next_last_was_cti_6359 <= is_cti_5209 when (computed_next_info_valid_6347(0) /=  '0') else last_was_cti_4987;
    -- flow-through select operator MUX_6364_inst
    next_last_was_rett_6365 <= is_rett_5213 when (computed_next_info_valid_6347(0) /=  '0') else last_was_rett_4983;
    -- flow-through select operator MUX_6370_inst
    next_last_computed_next_npc_6371 <= computed_next_npc_5599 when (computed_next_info_valid_6347(0) /=  '0') else last_computed_next_npc_5019;
    -- flow-through select operator MUX_6376_inst
    next_last_computed_annul_next_6377 <= computed_annul_next_5711 when (computed_next_info_valid_6347(0) /=  '0') else last_computed_annul_next_4999;
    -- flow-through select operator MUX_6385_inst
    next_last_seen_npc_6386 <= npc_5177 when (valid_from_dispatch_4959(0) /=  '0') else last_seen_npc_5023;
    -- flow-through select operator MUX_6391_inst
    next_last_nnpc_mispredict_flag_6392 <= nnpc_mispredict_flag_5630 when (valid_from_dispatch_4959(0) /=  '0') else last_nnpc_mispredict_flag_4995;
    -- flow-through slice operator slice_4958_inst
    valid_from_dispatch_4959 <= in_args_4947(359 downto 359);
    -- flow-through slice operator slice_4962_inst
    from_dispatch_4963 <= in_args_4947(358 downto 154);
    -- flow-through slice operator slice_4966_inst
    from_iu_rfile_cc_qualified_4967 <= in_args_4947(153 downto 137);
    -- flow-through slice operator slice_4970_inst
    from_iu_rfile_rs1_qualified_4971 <= in_args_4947(136 downto 105);
    -- flow-through slice operator slice_4974_inst
    from_iu_qualified_4975 <= in_args_4947(104 downto 15);
    -- flow-through slice operator slice_4978_inst
    from_fp_rfile_qualified_4979 <= in_args_4947(14 downto 0);
    -- flow-through slice operator slice_4982_inst
    last_was_rett_4983 <= CIRCULANT_4951(140 downto 140);
    -- flow-through slice operator slice_4986_inst
    last_was_cti_4987 <= CIRCULANT_4951(139 downto 139);
    -- flow-through slice operator slice_4990_inst
    last_computed_values_valid_4991 <= CIRCULANT_4951(138 downto 138);
    -- flow-through slice operator slice_4994_inst
    last_nnpc_mispredict_flag_4995 <= CIRCULANT_4951(137 downto 137);
    -- flow-through slice operator slice_4998_inst
    last_computed_annul_next_4999 <= CIRCULANT_4951(136 downto 136);
    -- flow-through slice operator slice_5002_inst
    sc_enable_interrupts_5003 <= CIRCULANT_4951(135 downto 135);
    -- flow-through slice operator slice_5006_inst
    sc_S_5007 <= CIRCULANT_4951(134 downto 134);
    -- flow-through slice operator slice_5010_inst
    sc_state_5011 <= CIRCULANT_4951(133 downto 132);
    -- flow-through slice operator slice_5014_inst
    sc_proc_ilvl_5015 <= CIRCULANT_4951(131 downto 128);
    -- flow-through slice operator slice_5018_inst
    last_computed_next_npc_5019 <= CIRCULANT_4951(127 downto 96);
    -- flow-through slice operator slice_5022_inst
    last_seen_npc_5023 <= CIRCULANT_4951(95 downto 64);
    -- flow-through slice operator slice_5026_inst
    last_pc_5027 <= CIRCULANT_4951(63 downto 32);
    -- flow-through slice operator slice_5030_inst
    sc_psr_5031 <= CIRCULANT_4951(31 downto 0);
    -- flow-through slice operator slice_5048_inst
    thread_id_5049 <= from_dispatch_4963(204 downto 201);
    -- flow-through slice operator slice_5052_inst
    stream_id_5053 <= from_dispatch_4963(200 downto 199);
    -- flow-through slice operator slice_5056_inst
    slot_id_5057 <= from_dispatch_4963(198 downto 193);
    -- flow-through slice operator slice_5060_inst
    sc_info_5061 <= from_dispatch_4963(192 downto 187);
    -- flow-through slice operator slice_5064_inst
    fetch_error_5065 <= from_dispatch_4963(186 downto 186);
    -- flow-through slice operator slice_5068_inst
    dispatch_annul_instr_5069 <= from_dispatch_4963(185 downto 185);
    -- flow-through slice operator slice_5072_inst
    dispatch_traps_5073 <= from_dispatch_4963(184 downto 181);
    -- flow-through slice operator slice_5076_inst
    thread_control_word_5077 <= from_dispatch_4963(180 downto 159);
    -- flow-through slice operator slice_5080_inst
    dbg_bp_id_5081 <= from_dispatch_4963(158 downto 157);
    -- flow-through slice operator slice_5084_inst
    dbg_bp_hit_5085 <= from_dispatch_4963(156 downto 156);
    -- flow-through slice operator slice_5088_inst
    dbg_intr_5089 <= from_dispatch_4963(155 downto 155);
    -- flow-through slice operator slice_5092_inst
    ilvl_5093 <= from_dispatch_4963(154 downto 151);
    -- flow-through slice operator slice_5096_inst
    is_call_5097 <= from_dispatch_4963(149 downto 149);
    -- flow-through slice operator slice_5100_inst
    is_bicc_5101 <= from_dispatch_4963(148 downto 148);
    -- flow-through slice operator slice_5104_inst
    is_fbfcc_5105 <= from_dispatch_4963(147 downto 147);
    -- flow-through slice operator slice_5108_inst
    bicc_fbfcc_annul_flag_5109 <= from_dispatch_4963(146 downto 146);
    -- flow-through slice operator slice_5112_inst
    bicc_fbfcc_cond_5113 <= from_dispatch_4963(145 downto 142);
    -- flow-through slice operator slice_5116_inst
    iu2_to_retire_5117 <= from_dispatch_4963(141 downto 141);
    -- flow-through slice operator slice_5120_inst
    fu2_to_retire_5121 <= from_dispatch_4963(140 downto 140);
    -- flow-through slice operator slice_5124_inst
    cu2_to_retire_5125 <= from_dispatch_4963(139 downto 139);
    -- flow-through slice operator slice_5128_inst
    ls_to_retire_5129 <= from_dispatch_4963(138 downto 138);
    -- flow-through slice operator slice_5132_inst
    uses_iu_cc_for_branching_5133 <= from_dispatch_4963(137 downto 137);
    -- flow-through slice operator slice_5136_inst
    uses_fp_cc_for_branching_5137 <= from_dispatch_4963(136 downto 136);
    -- flow-through slice operator slice_5140_inst
    is_ret_or_retl_5141 <= from_dispatch_4963(135 downto 135);
    -- flow-through slice operator slice_5144_inst
    iu1_to_sc_5145 <= from_dispatch_4963(134 downto 134);
    -- flow-through slice operator slice_5148_inst
    fu1_to_sc_5149 <= from_dispatch_4963(133 downto 133);
    -- flow-through slice operator slice_5152_inst
    cu1_to_sc_5153 <= from_dispatch_4963(132 downto 132);
    -- flow-through slice operator slice_5156_inst
    sc_to_iu2_5157 <= from_dispatch_4963(131 downto 131);
    -- flow-through slice operator slice_5160_inst
    sc_to_fu2_5161 <= from_dispatch_4963(130 downto 130);
    -- flow-through slice operator slice_5164_inst
    sc_to_cu2_5165 <= from_dispatch_4963(129 downto 129);
    -- flow-through slice operator slice_5168_inst
    sc_to_ls_5169 <= from_dispatch_4963(128 downto 128);
    -- flow-through slice operator slice_5172_inst
    pc_5173 <= from_dispatch_4963(127 downto 96);
    -- flow-through slice operator slice_5176_inst
    npc_5177 <= from_dispatch_4963(95 downto 64);
    -- flow-through slice operator slice_5180_inst
    nnpc_5181 <= from_dispatch_4963(63 downto 32);
    -- flow-through slice operator slice_5184_inst
    branch_target_npc_5185 <= from_dispatch_4963(31 downto 0);
    -- flow-through slice operator slice_5212_inst
    is_rett_5213 <= jmpl_rett_icache_5209(1 downto 1);
    -- flow-through slice operator slice_5216_inst
    icache_was_accessed_5217 <= jmpl_rett_icache_5209(0 downto 0);
    -- flow-through slice operator slice_5308_inst
    iu_rfile_valid_5309 <= from_iu_rfile_cc_qualified_4967(16 downto 16);
    -- flow-through slice operator slice_5312_inst
    iu_rfile_tid_5313 <= from_iu_rfile_cc_qualified_4967(15 downto 12);
    -- flow-through slice operator slice_5316_inst
    iu_rfile_stream_id_5317 <= from_iu_rfile_cc_qualified_4967(11 downto 10);
    -- flow-through slice operator slice_5320_inst
    iu_rfile_slot_id_5321 <= from_iu_rfile_cc_qualified_4967(9 downto 4);
    -- flow-through slice operator slice_5324_inst
    iu_rfile_cc_5325 <= from_iu_rfile_cc_qualified_4967(3 downto 0);
    -- flow-through slice operator slice_5369_inst
    fp_rfile_valid_5370 <= from_fp_rfile_qualified_4979(14 downto 14);
    -- flow-through slice operator slice_5373_inst
    fp_rfile_tid_5374 <= from_fp_rfile_qualified_4979(13 downto 10);
    -- flow-through slice operator slice_5377_inst
    fp_rfile_stream_id_5378 <= from_fp_rfile_qualified_4979(9 downto 8);
    -- flow-through slice operator slice_5381_inst
    fp_rfile_slot_id_5382 <= from_fp_rfile_qualified_4979(7 downto 2);
    -- flow-through slice operator slice_5385_inst
    fp_rfile_cc_5386 <= from_fp_rfile_qualified_4979(1 downto 0);
    -- flow-through slice operator slice_5410_inst
    iu_tid_5411 <= from_iu_qualified_4975(89 downto 86);
    -- flow-through slice operator slice_5414_inst
    iu_stream_id_5415 <= from_iu_qualified_4975(85 downto 84);
    -- flow-through slice operator slice_5418_inst
    iu_slot_id_5419 <= from_iu_qualified_4975(83 downto 78);
    -- flow-through slice operator slice_5422_inst
    iu_ignore_5423 <= from_iu_qualified_4975(77 downto 77);
    -- flow-through slice operator slice_5426_inst
    iu_enable_interrupts_5427 <= from_iu_qualified_4975(76 downto 76);
    -- flow-through slice operator slice_5430_inst
    iu_disable_interrupts_5431 <= from_iu_qualified_4975(75 downto 75);
    -- flow-through slice operator slice_5434_inst
    iu_set_proc_ilvl_5435 <= from_iu_qualified_4975(74 downto 74);
    -- flow-through slice operator slice_5438_inst
    iu_proc_ilvl_5439 <= from_iu_qualified_4975(73 downto 70);
    -- flow-through slice operator slice_5442_inst
    iu_set_S_5443 <= from_iu_qualified_4975(69 downto 69);
    -- flow-through slice operator slice_5446_inst
    iu_S_5447 <= from_iu_qualified_4975(68 downto 68);
    -- flow-through slice operator slice_5450_inst
    iu_br_taken_5451 <= from_iu_qualified_4975(67 downto 67);
    -- flow-through slice operator slice_5454_inst
    iu_computed_next_annul_5455 <= from_iu_qualified_4975(66 downto 66);
    -- flow-through slice operator slice_5458_inst
    iu_machine_error_5459 <= from_iu_qualified_4975(65 downto 65);
    -- flow-through slice operator slice_5462_inst
    iu_trap_5463 <= from_iu_qualified_4975(64 downto 64);
    -- flow-through slice operator slice_5466_inst
    iu_alu_result_5467 <= from_iu_qualified_4975(63 downto 32);
    -- flow-through slice operator slice_5470_inst
    iu_psr_val_5471 <= from_iu_qualified_4975(31 downto 0);
    -- flow-through slice operator slice_6280_inst
    slice_6280_wire <= pc_to_retire_6217(31 downto 2);
    -- flow-through slice operator slice_6282_inst
    slice_6282_wire <= nnpc_to_retire_6226(31 downto 2);
    -- flow-through slice operator slice_6312_inst
    slice_6312_wire <= pc_to_retire_6217(31 downto 2);
    -- interlock W_computed_next_info_valid_6345_inst
    process(instruction_can_execute_5805) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := instruction_can_execute_5805(0 downto 0);
      computed_next_info_valid_6347 <= tmp_var; -- 
    end process;
    -- interlock W_next_last_computed_values_valid_6378_inst
    process(computed_next_info_valid_6347) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := computed_next_info_valid_6347(0 downto 0);
      next_last_computed_values_valid_6380 <= tmp_var; -- 
    end process;
    -- interlock W_nnpc_to_retire_6224_inst
    process(computed_next_npc_5599) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := computed_next_npc_5599(31 downto 0);
      nnpc_to_retire_6226 <= tmp_var; -- 
    end process;
    -- interlock W_pc_to_retire_6215_inst
    process(pc_5173) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := pc_5173(31 downto 0);
      pc_to_retire_6217 <= tmp_var; -- 
    end process;
    -- interlock W_psr_val_to_ifetch_5819_inst
    process(next_sc_psr_5818) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := next_sc_psr_5818(31 downto 0);
      psr_val_to_ifetch_5821 <= tmp_var; -- 
    end process;
    W_s0_6553_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_s0_6553_inst_req_0;
      W_s0_6553_inst_ack_0<= wack(0);
      rreq(0) <= W_s0_6553_inst_req_1;
      W_s0_6553_inst_ack_1<= rack(0);
      W_s0_6553_inst : InterlockBuffer generic map ( -- 
        name => "W_s0_6553_inst",
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
        write_data => RPIPE_stream_corrector_ret_hit_log_6554_wire,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => s0_6555,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    W_s1_6556_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_s1_6556_inst_req_0;
      W_s1_6556_inst_ack_0<= wack(0);
      rreq(0) <= W_s1_6556_inst_req_1;
      W_s1_6556_inst_ack_1<= rack(0);
      W_s1_6556_inst : InterlockBuffer generic map ( -- 
        name => "W_s1_6556_inst",
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
        write_data => RPIPE_stream_corrector_ret_miss_log_6557_wire,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => s1_6558,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    -- interlock W_to_fu_6170_inst
    process(common_to_downstream_6140) -- 
      variable tmp_var : std_logic_vector(17 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 17 downto 0) := common_to_downstream_6140(17 downto 0);
      to_fu_6172 <= tmp_var; -- 
    end process;
    -- interlock W_to_iu_6155_inst
    process(common_to_downstream_6140) -- 
      variable tmp_var : std_logic_vector(17 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 17 downto 0) := common_to_downstream_6140(17 downto 0);
      to_iu_6157 <= tmp_var; -- 
    end process;
    -- interlock W_update_annul_status_6527_inst
    process(instruction_can_execute_5805) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := instruction_can_execute_5805(0 downto 0);
      update_annul_status_6529 <= tmp_var; -- 
    end process;
    next_CIRCULANT_6504_4954_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= next_CIRCULANT_6504_4954_buf_req_0;
      next_CIRCULANT_6504_4954_buf_ack_0<= wack(0);
      rreq(0) <= next_CIRCULANT_6504_4954_buf_req_1;
      next_CIRCULANT_6504_4954_buf_ack_1<= rack(0);
      next_CIRCULANT_6504_4954_buf : InterlockBuffer generic map ( -- 
        name => "next_CIRCULANT_6504_4954_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 141,
        out_data_width => 141,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => next_CIRCULANT_6504,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => next_CIRCULANT_6504_4954_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    do_while_stmt_4945_branch: Block -- 
      -- branch-block
      signal condition_sig : std_logic_vector(0 downto 0);
      begin 
      condition_sig <= konst_6551_wire_constant;
      branch_instance: BranchBase -- 
        generic map( name => "do_while_stmt_4945_branch", condition_width => 1,  bypass_flag => true)
        port map( -- 
          condition => condition_sig,
          req => do_while_stmt_4945_branch_req_0,
          ack0 => do_while_stmt_4945_branch_ack_0,
          ack1 => do_while_stmt_4945_branch_ack_1,
          clk => clk,
          reset => reset); -- 
      --
    end Block; -- branch-block
    -- flow through binary operator ADD_u30_u30_6314_inst
    ADD_u30_u30_6314_wire <= std_logic_vector(unsigned(slice_6312_wire) + unsigned(konst_6313_wire_constant));
    -- flow through binary operator ADD_u32_u32_5365_inst
    retl_branch_address_5366 <= std_logic_vector(unsigned(from_iu_rfile_rs1_qualified_4971) + unsigned(konst_5364_wire_constant));
    -- flow through binary operator ADD_u32_u32_5538_inst
    next_nonbranch_npc_5539 <= std_logic_vector(unsigned(MUX_5536_wire) + unsigned(konst_5537_wire_constant));
    -- flow through binary operator AND_u1_u1_5228_inst
    AND_u1_u1_5228_wire <= (last_computed_annul_next_4999 and NOT_u1_u1_5227_wire);
    -- flow through binary operator AND_u1_u1_5231_inst
    annul_instr_5232 <= (valid_from_dispatch_4959 and OR_u1_u1_5230_wire);
    -- flow through binary operator AND_u1_u1_5244_inst
    is_iu_rett_5245 <= (iu_cti_5240 and iu_can_modify_psr_S_5240);
    -- flow through binary operator AND_u1_u1_5256_inst
    is_write_psr_instr_5257 <= (NOT_u1_u1_5254_wire and iu_can_modify_psr_S_5240);
    -- flow through binary operator AND_u1_u1_5341_inst
    iu_br_taken_in_sc_5342 <= (iu_cti_5240 and OR_u1_u1_5340_wire);
    -- flow through binary operator AND_u1_u1_5356_inst
    retl_is_valid_5357 <= (valid_from_dispatch_4959 and is_ret_or_retl_5141);
    -- flow through binary operator AND_u1_u1_5506_inst
    bp_hit_5507 <= (valid_from_dispatch_4959 and dbg_bp_hit_5085);
    -- flow through binary operator AND_u1_u1_5514_inst
    AND_u1_u1_5514_wire <= (valid_from_dispatch_4959 and NOT_u1_u1_5513_wire);
    -- flow through binary operator AND_u1_u1_5522_inst
    AND_u1_u1_5522_wire <= (stream_head_5209 and EQ_u2_u1_5521_wire);
    -- flow through binary operator AND_u1_u1_5527_inst
    AND_u1_u1_5527_wire <= (OR_u1_u1_5523_wire and NEQ_u32_u1_5526_wire);
    -- flow through binary operator AND_u1_u1_5528_inst
    npc_mispredict_flag_5529 <= (AND_u1_u1_5514_wire and AND_u1_u1_5527_wire);
    -- flow through binary operator AND_u1_u1_5547_inst
    AND_u1_u1_5547_wire <= (iu1_to_sc_5145 and iu_cti_5240);
    -- flow through binary operator AND_u1_u1_5549_inst
    AND_u1_u1_5549_wire <= (AND_u1_u1_5547_wire and iu_br_taken_5451);
    -- flow through binary operator AND_u1_u1_5557_inst
    AND_u1_u1_5557_wire <= (NOT_u1_u1_5555_wire and iu_cti_5240);
    -- flow through binary operator AND_u1_u1_5559_inst
    AND_u1_u1_5559_wire <= (AND_u1_u1_5557_wire and iu_br_taken_in_sc_5342);
    -- flow through binary operator AND_u1_u1_5562_inst
    AND_u1_u1_5562_wire <= (fp_cti_5240 and fp_br_taken_in_sc_5396);
    -- flow through binary operator AND_u1_u1_5573_inst
    AND_u1_u1_5573_wire <= (valid_from_dispatch_4959 and NOT_u1_u1_5572_wire);
    -- flow through binary operator AND_u1_u1_5577_inst
    AND_u1_u1_5577_wire <= (iu1_to_sc_5145 and iu_cti_5240);
    -- flow through binary operator AND_u1_u1_5579_inst
    AND_u1_u1_5579_wire <= (AND_u1_u1_5577_wire and iu_br_taken_5451);
    -- flow through binary operator AND_u1_u1_5584_inst
    AND_u1_u1_5584_wire <= (NOT_u1_u1_5582_wire and iu_cti_5240);
    -- flow through binary operator AND_u1_u1_5586_inst
    AND_u1_u1_5586_wire <= (AND_u1_u1_5584_wire and iu_br_taken_in_sc_5342);
    -- flow through binary operator AND_u1_u1_5589_inst
    AND_u1_u1_5589_wire <= (fp_cti_5240 and fp_br_taken_in_sc_5396);
    -- flow through binary operator AND_u1_u1_5592_inst
    br_taken_5593 <= (AND_u1_u1_5573_wire and OR_u1_u1_5591_wire);
    -- flow through binary operator AND_u1_u1_5603_inst
    AND_u1_u1_5603_wire <= (valid_from_dispatch_4959 and is_cti_5209);
    -- flow through binary operator AND_u1_u1_5606_inst
    AND_u1_u1_5606_wire <= (AND_u1_u1_5603_wire and NOT_u1_u1_5605_wire);
    -- flow through binary operator AND_u1_u1_5612_inst
    AND_u1_u1_5612_wire <= (NOT_u1_u1_5608_wire and NEQ_u32_u1_5611_wire);
    -- flow through binary operator AND_u1_u1_5620_inst
    AND_u1_u1_5620_wire <= (stream_head_5209 and EQ_u2_u1_5619_wire);
    -- flow through binary operator AND_u1_u1_5626_inst
    AND_u1_u1_5626_wire <= (thread_head_5209 and EQ_u2_u1_5625_wire);
    -- flow through binary operator AND_u1_u1_5628_inst
    AND_u1_u1_5628_wire <= (AND_u1_u1_5612_wire and OR_u1_u1_5627_wire);
    -- flow through binary operator AND_u1_u1_5629_inst
    nnpc_mispredict_flag_5630 <= (AND_u1_u1_5606_wire and AND_u1_u1_5628_wire);
    -- flow through binary operator AND_u1_u1_5637_inst
    AND_u1_u1_5637_wire <= (valid_from_dispatch_4959 and NOT_u1_u1_5636_wire);
    -- flow through binary operator AND_u1_u1_5643_inst
    AND_u1_u1_5643_wire <= (NOT_u1_u1_5639_wire and NEQ_u32_u1_5642_wire);
    -- flow through binary operator AND_u1_u1_5644_inst
    pc_screwup_5645 <= (AND_u1_u1_5637_wire and AND_u1_u1_5643_wire);
    -- flow through binary operator AND_u1_u1_5654_inst
    AND_u1_u1_5654_wire <= (valid_from_dispatch_4959 and NEQ_u2_u1_5653_wire);
    -- flow through binary operator AND_u1_u1_5657_inst
    AND_u1_u1_5657_wire <= (last_was_cti_4987 and last_nnpc_mispredict_flag_4995);
    -- flow through binary operator AND_u1_u1_5658_inst
    AND_u1_u1_5658_wire <= (AND_u1_u1_5654_wire and AND_u1_u1_5657_wire);
    -- flow through binary operator AND_u1_u1_5663_inst
    AND_u1_u1_5663_wire <= (NOT_u1_u1_5660_wire and NOT_u1_u1_5662_wire);
    -- flow through binary operator AND_u1_u1_5666_inst
    AND_u1_u1_5666_wire <= (AND_u1_u1_5663_wire and NOT_u1_u1_5665_wire);
    -- flow through binary operator AND_u1_u1_5667_inst
    mispredict_screwup_5668 <= (AND_u1_u1_5658_wire and AND_u1_u1_5666_wire);
    -- flow through binary operator AND_u1_u1_5689_inst
    AND_u1_u1_5689_wire <= (NOT_u1_u1_5687_wire and is_bicc_5101);
    -- flow through binary operator AND_u1_u1_5696_inst
    AND_u1_u1_5696_wire <= (NOT_u1_u1_5694_wire and is_fbfcc_5105);
    -- flow through binary operator AND_u1_u1_5704_inst
    AND_u1_u1_5704_wire <= (NOT_u1_u1_5702_wire and iu1_to_sc_5145);
    -- flow through binary operator AND_u1_u1_5706_inst
    AND_u1_u1_5706_wire <= (AND_u1_u1_5704_wire and iu_cti_5240);
    -- flow through binary operator AND_u1_u1_5734_inst
    AND_u1_u1_5734_wire <= (valid_from_dispatch_4959 and NOT_u1_u1_5733_wire);
    -- flow through binary operator AND_u1_u1_5738_inst
    AND_u1_u1_5738_wire <= (iu1_to_sc_5145 and is_write_psr_instr_5257);
    -- flow through binary operator AND_u1_u1_5740_inst
    stream_terminating_instr_5741 <= (AND_u1_u1_5734_wire and OR_u1_u1_5739_wire);
    -- flow through binary operator AND_u1_u1_5764_inst
    AND_u1_u1_5764_wire <= (NOT_u1_u1_5762_wire and dispatch_trap_bit_5209);
    -- flow through binary operator AND_u1_u1_5771_inst
    AND_u1_u1_5771_wire <= (NOT_u1_u1_5768_wire and NOT_u1_u1_5770_wire);
    -- flow through binary operator AND_u1_u1_5776_inst
    AND_u1_u1_5776_wire <= (iu1_to_sc_5145 and OR_u1_u1_5775_wire);
    -- flow through binary operator AND_u1_u1_5777_inst
    AND_u1_u1_5777_wire <= (AND_u1_u1_5771_wire and AND_u1_u1_5776_wire);
    -- flow through binary operator AND_u1_u1_5779_inst
    exception_flag_5780 <= (valid_from_dispatch_4959 and OR_u1_u1_5778_wire);
    -- flow through binary operator AND_u1_u1_5785_inst
    AND_u1_u1_5785_wire <= (valid_from_dispatch_4959 and NOT_u1_u1_5784_wire);
    -- flow through binary operator AND_u1_u1_5795_inst
    AND_u1_u1_5795_wire <= (EQ_u2_u1_5793_wire and thread_head_5209);
    -- flow through binary operator AND_u1_u1_5801_inst
    AND_u1_u1_5801_wire <= (EQ_u2_u1_5799_wire and stream_head_5209);
    -- flow through binary operator AND_u1_u1_5803_inst
    AND_u1_u1_5803_wire <= (NOT_u1_u1_5787_wire and OR_u1_u1_5802_wire);
    -- flow through binary operator AND_u1_u1_5804_inst
    instruction_can_execute_5805 <= (AND_u1_u1_5785_wire and AND_u1_u1_5803_wire);
    -- flow through binary operator AND_u1_u1_5810_inst
    AND_u1_u1_5810_wire <= (instruction_can_execute_5805 and NOT_u1_u1_5809_wire);
    -- flow through binary operator AND_u1_u1_5813_inst
    AND_u1_u1_5813_wire <= (iu1_to_sc_5145 and iu_can_modify_psr_S_5240);
    -- flow through binary operator AND_u1_u1_5814_inst
    AND_u1_u1_5814_wire <= (AND_u1_u1_5810_wire and AND_u1_u1_5813_wire);
    -- flow through binary operator AND_u1_u1_5827_inst
    AND_u1_u1_5827_wire <= (NOT_u1_u1_5825_wire and iu1_to_sc_5145);
    -- flow through binary operator AND_u1_u1_5831_inst
    AND_u1_u1_5831_wire <= (iu_enable_interrupts_5427 and NOT_u1_u1_5830_wire);
    -- flow through binary operator AND_u1_u1_5832_inst
    AND_u1_u1_5832_wire <= (AND_u1_u1_5827_wire and AND_u1_u1_5831_wire);
    -- flow through binary operator AND_u1_u1_5837_inst
    AND_u1_u1_5837_wire <= (NOT_u1_u1_5835_wire and iu1_to_sc_5145);
    -- flow through binary operator AND_u1_u1_5841_inst
    AND_u1_u1_5841_wire <= (iu_disable_interrupts_5431 and NOT_u1_u1_5840_wire);
    -- flow through binary operator AND_u1_u1_5842_inst
    AND_u1_u1_5842_wire <= (AND_u1_u1_5837_wire and AND_u1_u1_5841_wire);
    -- flow through binary operator AND_u1_u1_5850_inst
    enable_interrupts_for_this_instruction_5851 <= (instruction_can_execute_5805 and MUX_5849_wire);
    -- flow through binary operator AND_u1_u1_5866_inst
    AND_u1_u1_5866_wire <= (NOT_u1_u1_5864_wire and iu1_to_sc_5145);
    -- flow through binary operator AND_u1_u1_5870_inst
    AND_u1_u1_5870_wire <= (iu_set_proc_ilvl_5435 and NOT_u1_u1_5869_wire);
    -- flow through binary operator AND_u1_u1_5871_inst
    AND_u1_u1_5871_wire <= (AND_u1_u1_5866_wire and AND_u1_u1_5870_wire);
    -- flow through binary operator AND_u1_u1_5895_inst
    AND_u1_u1_5895_wire <= (NOT_u1_u1_5893_wire and iu1_to_sc_5145);
    -- flow through binary operator AND_u1_u1_5899_inst
    AND_u1_u1_5899_wire <= (iu_set_S_5443 and NOT_u1_u1_5898_wire);
    -- flow through binary operator AND_u1_u1_5900_inst
    AND_u1_u1_5900_wire <= (AND_u1_u1_5895_wire and AND_u1_u1_5899_wire);
    -- flow through binary operator AND_u1_u1_5919_inst
    interrupt_flag_5920 <= (enable_interrupts_for_this_instruction_5851 and OR_u1_u1_5918_wire);
    -- flow through binary operator AND_u1_u1_5947_inst
    terminate_thread_5948 <= (valid_from_dispatch_4959 and OR_u1_u1_5946_wire);
    -- flow through binary operator AND_u1_u1_5974_inst
    AND_u1_u1_5974_wire <= (stream_head_5209 and terminate_thread_5948);
    -- flow through binary operator AND_u1_u1_5978_inst
    AND_u1_u1_5978_wire <= (stream_head_5209 and terminate_stream_5746);
    -- flow through binary operator AND_u1_u1_5998_inst
    AND_u1_u1_5998_wire <= (thread_head_5209 and terminate_thread_5948);
    -- flow through binary operator AND_u1_u1_6002_inst
    AND_u1_u1_6002_wire <= (thread_head_5209 and terminate_stream_5746);
    -- flow through binary operator AND_u1_u1_6047_inst
    AND_u1_u1_6047_wire <= (stream_head_5209 and terminate_thread_5948);
    -- flow through binary operator AND_u1_u1_6051_inst
    AND_u1_u1_6051_wire <= (stream_head_5209 and npc_mispredict_flag_5529);
    -- flow through binary operator AND_u1_u1_6055_inst
    AND_u1_u1_6055_wire <= (stream_head_5209 and stream_terminating_instr_5741);
    -- flow through binary operator AND_u1_u1_6075_inst
    AND_u1_u1_6075_wire <= (thread_head_5209 and terminate_thread_5948);
    -- flow through binary operator AND_u1_u1_6079_inst
    AND_u1_u1_6079_wire <= (thread_head_5209 and npc_mispredict_flag_5529);
    -- flow through binary operator AND_u1_u1_6083_inst
    AND_u1_u1_6083_wire <= (thread_head_5209 and stream_terminating_instr_5741);
    -- flow through binary operator AND_u1_u1_6153_inst
    send_to_iu2_6154 <= (valid_from_dispatch_4959 and sc_to_iu2_5157);
    -- flow through binary operator AND_u1_u1_6168_inst
    send_to_fu2_6169 <= (valid_from_dispatch_4959 and sc_to_fu2_5161);
    -- flow through binary operator AND_u1_u1_6231_inst
    AND_u1_u1_6231_wire <= (dbg_intr_5089 and NOT_u1_u1_6230_wire);
    -- flow through binary operator AND_u1_u1_6270_inst
    update_branch_predictor_6271 <= (instruction_can_execute_5805 and is_cti_5209);
    -- flow through binary operator AND_u1_u1_6304_inst
    update_ras_6305 <= (instruction_can_execute_5805 and OR_u1_u1_6303_wire);
    -- flow through binary operator AND_u1_u1_6325_inst
    AND_u1_u1_6325_wire <= (instruction_can_execute_5805 and is_ret_or_retl_5141);
    -- flow through binary operator AND_u1_u1_6328_inst
    log_retl_hit_6329 <= (AND_u1_u1_6325_wire and NOT_u1_u1_6327_wire);
    -- flow through binary operator AND_u1_u1_6337_inst
    AND_u1_u1_6337_wire <= (instruction_can_execute_5805 and is_ret_or_retl_5141);
    -- flow through binary operator AND_u1_u1_6339_inst
    log_retl_miss_6340 <= (AND_u1_u1_6337_wire and nnpc_mispredict_flag_5630);
    -- flow through binary operator AND_u1_u1_6508_inst
    annul_next_to_load_store_6509 <= (computed_annul_next_5711 and instruction_can_execute_5805);
    -- flow through binary operator AND_u1_u1_6518_inst
    send_to_ls_6519 <= (valid_from_dispatch_4959 and sc_to_ls_5169);
    -- flow through binary operator BITSEL_u4_u1_5189_inst
    process(dispatch_traps_5073) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(dispatch_traps_5073, konst_5188_wire_constant, tmp_var);
      mae_trap_5190 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u10_u14_6197_inst
    process(CONCAT_u5_u10_6189_wire, CONCAT_u2_u4_6196_wire) -- 
      variable tmp_var : std_logic_vector(13 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u5_u10_6189_wire, CONCAT_u2_u4_6196_wire, tmp_var);
      CONCAT_u10_u14_6197_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u13_u18_6139_inst
    process(CONCAT_u6_u13_6133_wire, CONCAT_u2_u5_6138_wire) -- 
      variable tmp_var : std_logic_vector(17 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u6_u13_6133_wire, CONCAT_u2_u5_6138_wire, tmp_var);
      common_to_downstream_6140 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u14_u22_6213_inst
    process(CONCAT_u10_u14_6197_wire, CONCAT_u4_u8_6212_wire) -- 
      variable tmp_var : std_logic_vector(21 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u10_u14_6197_wire, CONCAT_u4_u8_6212_wire, tmp_var);
      ctrl_word_to_iretire_6214 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u15_u23_6429_inst
    process(CONCAT_u7_u15_6419_wire, CONCAT_u3_u8_6428_wire) -- 
      variable tmp_var : std_logic_vector(22 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u7_u15_6419_wire, CONCAT_u3_u8_6428_wire, tmp_var);
      CONCAT_u15_u23_6429_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u18_u19_6513_inst
    process(common_to_downstream_6140, annul_next_to_load_store_6509) -- 
      variable tmp_var : std_logic_vector(18 downto 0); -- 
    begin -- 
      ApConcat_proc(common_to_downstream_6140, annul_next_to_load_store_6509, tmp_var);
      to_ls_6514 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_6136_inst
    process(stream_head_5209, thread_head_5209) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(stream_head_5209, thread_head_5209, tmp_var);
      CONCAT_u1_u2_6136_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_6192_inst
    process(single_step_mode_5209, ignore_break_points_5209) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(single_step_mode_5209, ignore_break_points_5209, tmp_var);
      CONCAT_u1_u2_6192_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_6195_inst
    process(sc_S_5007, imm_bit_5209) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(sc_S_5007, imm_bit_5209, tmp_var);
      CONCAT_u1_u2_6195_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_6200_inst
    process(is_write_psr_or_rett_5222, is_mmu_ctrl_write_5209) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_write_psr_or_rett_5222, is_mmu_ctrl_write_5209, tmp_var);
      CONCAT_u1_u2_6200_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_6203_inst
    process(is_flush_5209, is_cti_5209) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_flush_5209, is_cti_5209, tmp_var);
      CONCAT_u1_u2_6203_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_6207_inst
    process(flush_like_instruction_5729, exception_flag_5780) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(flush_like_instruction_5729, exception_flag_5780, tmp_var);
      CONCAT_u1_u2_6207_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_6210_inst
    process(stream_head_5209, thread_head_5209) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(stream_head_5209, thread_head_5209, tmp_var);
      CONCAT_u1_u2_6210_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_6276_inst
    process(type_cast_6274_wire_constant, br_taken_5593) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(type_cast_6274_wire_constant, br_taken_5593, tmp_var);
      CONCAT_u1_u2_6276_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_6309_inst
    process(is_call_5097, is_ret_or_retl_5141) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_call_5097, is_ret_or_retl_5141, tmp_var);
      CONCAT_u1_u2_6309_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_6422_inst
    process(ask_iretire_to_signal_idispatch_6260, fetch_error_5065) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(ask_iretire_to_signal_idispatch_6260, fetch_error_5065, tmp_var);
      CONCAT_u1_u2_6422_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_6437_inst
    process(iu2_to_retire_5117, fu2_to_retire_5121) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(iu2_to_retire_5117, fu2_to_retire_5121, tmp_var);
      CONCAT_u1_u2_6437_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_6481_inst
    process(next_last_was_rett_6365, next_last_was_cti_6359) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(next_last_was_rett_6365, next_last_was_cti_6359, tmp_var);
      CONCAT_u1_u2_6481_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_6484_inst
    process(next_last_computed_values_valid_6380, next_last_nnpc_mispredict_flag_6392) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(next_last_computed_values_valid_6380, next_last_nnpc_mispredict_flag_6392, tmp_var);
      CONCAT_u1_u2_6484_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_6488_inst
    process(next_last_computed_annul_next_6377, next_sc_enable_interrupts_5860) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(next_last_computed_annul_next_6377, next_sc_enable_interrupts_5860, tmp_var);
      CONCAT_u1_u2_6488_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_6533_inst
    process(terminate_stream_5746, last_was_cti_4987) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(terminate_stream_5746, last_was_cti_4987, tmp_var);
      CONCAT_u1_u2_6533_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_6536_inst
    process(is_cti_5209, computed_annul_next_5711) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_cti_5209, computed_annul_next_5711, tmp_var);
      CONCAT_u1_u2_6536_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u31_6315_inst
    process(flush_like_instruction_5729, ADD_u30_u30_6314_wire) -- 
      variable tmp_var : std_logic_vector(30 downto 0); -- 
    begin -- 
      ApConcat_proc(flush_like_instruction_5729, ADD_u30_u30_6314_wire, tmp_var);
      CONCAT_u1_u31_6315_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u3_6233_inst
    process(AND_u1_u1_6231_wire, dbg_bp_id_5081) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(AND_u1_u1_6231_wire, dbg_bp_id_5081, tmp_var);
      CONCAT_u1_u3_6233_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u5_6411_inst
    process(R_ONE_1_6409_wire_constant, thread_id_5049) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(R_ONE_1_6409_wire_constant, thread_id_5049, tmp_var);
      CONCAT_u1_u5_6411_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u5_6427_inst
    process(computed_annul_next_5711, dispatch_traps_5073) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(computed_annul_next_5711, dispatch_traps_5073, tmp_var);
      CONCAT_u1_u5_6427_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u5_6432_inst
    process(interrupt_flag_5920, ilvl_5093) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(interrupt_flag_5920, ilvl_5093, tmp_var);
      CONCAT_u1_u5_6432_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u5_6443_inst
    process(ls_to_retire_5129, dbg_info_6236) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(ls_to_retire_5129, dbg_info_6236, tmp_var);
      CONCAT_u1_u5_6443_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u23_u154_6451_inst
    process(CONCAT_u15_u23_6429_wire, CONCAT_u30_u131_6450_wire) -- 
      variable tmp_var : std_logic_vector(153 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u15_u23_6429_wire, CONCAT_u30_u131_6450_wire, tmp_var);
      to_iretire_6452 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u27_u30_6440_inst
    process(CONCAT_u5_u27_6434_wire, CONCAT_u2_u3_6439_wire) -- 
      variable tmp_var : std_logic_vector(29 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u5_u27_6434_wire, CONCAT_u2_u3_6439_wire, tmp_var);
      CONCAT_u27_u30_6440_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u33_6316_inst
    process(CONCAT_u1_u2_6309_wire, CONCAT_u1_u31_6315_wire) -- 
      variable tmp_var : std_logic_vector(32 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_6309_wire, CONCAT_u1_u31_6315_wire, tmp_var);
      to_ras_6317 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_6278_inst
    process(CONCAT_u1_u2_6276_wire, flush_like_instruction_5729) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_6276_wire, flush_like_instruction_5729, tmp_var);
      CONCAT_u2_u3_6278_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_6424_inst
    process(CONCAT_u1_u2_6422_wire, annul_instr_5232) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_6422_wire, annul_instr_5232, tmp_var);
      CONCAT_u2_u3_6424_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_6439_inst
    process(CONCAT_u1_u2_6437_wire, cu2_to_retire_5125) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_6437_wire, cu2_to_retire_5125, tmp_var);
      CONCAT_u2_u3_6439_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_6490_inst
    process(CONCAT_u1_u2_6488_wire, next_sc_S_5909) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_6488_wire, next_sc_S_5909, tmp_var);
      CONCAT_u2_u3_6490_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u4_6196_inst
    process(CONCAT_u1_u2_6192_wire, CONCAT_u1_u2_6195_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_6192_wire, CONCAT_u1_u2_6195_wire, tmp_var);
      CONCAT_u2_u4_6196_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u4_6204_inst
    process(CONCAT_u1_u2_6200_wire, CONCAT_u1_u2_6203_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_6200_wire, CONCAT_u1_u2_6203_wire, tmp_var);
      CONCAT_u2_u4_6204_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u4_6211_inst
    process(CONCAT_u1_u2_6207_wire, CONCAT_u1_u2_6210_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_6207_wire, CONCAT_u1_u2_6210_wire, tmp_var);
      CONCAT_u2_u4_6211_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u4_6485_inst
    process(CONCAT_u1_u2_6481_wire, CONCAT_u1_u2_6484_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_6481_wire, CONCAT_u1_u2_6484_wire, tmp_var);
      CONCAT_u2_u4_6485_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u4_6537_inst
    process(CONCAT_u1_u2_6533_wire, CONCAT_u1_u2_6536_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_6533_wire, CONCAT_u1_u2_6536_wire, tmp_var);
      CONCAT_u2_u4_6537_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u5_6138_inst
    process(CONCAT_u1_u2_6136_wire, sc_instr_class_6098) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_6136_wire, sc_instr_class_6098, tmp_var);
      CONCAT_u2_u5_6138_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u6_6494_inst
    process(next_sc_state_6014, next_sc_proc_ilvl_5889) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(next_sc_state_6014, next_sc_proc_ilvl_5889, tmp_var);
      CONCAT_u2_u6_6494_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u30_u131_6450_inst
    process(CONCAT_u27_u30_6440_wire, CONCAT_u37_u101_6449_wire) -- 
      variable tmp_var : std_logic_vector(130 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u27_u30_6440_wire, CONCAT_u37_u101_6449_wire, tmp_var);
      CONCAT_u30_u131_6450_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u30_u60_6283_inst
    process(slice_6280_wire, slice_6282_wire) -- 
      variable tmp_var : std_logic_vector(59 downto 0); -- 
    begin -- 
      ApConcat_proc(slice_6280_wire, slice_6282_wire, tmp_var);
      CONCAT_u30_u60_6283_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u64_6448_inst
    process(npc_to_retire_6223, nnpc_to_retire_6226) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(npc_to_retire_6223, nnpc_to_retire_6226, tmp_var);
      CONCAT_u32_u64_6448_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u64_6499_inst
    process(next_last_seen_npc_6386, next_last_pc_6353) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(next_last_seen_npc_6386, next_last_pc_6353, tmp_var);
      CONCAT_u32_u64_6499_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u37_u101_6449_inst
    process(CONCAT_u5_u37_6445_wire, CONCAT_u32_u64_6448_wire) -- 
      variable tmp_var : std_logic_vector(100 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u5_u37_6445_wire, CONCAT_u32_u64_6448_wire, tmp_var);
      CONCAT_u37_u101_6449_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u38_u134_6502_inst
    process(CONCAT_u6_u38_6496_wire, CONCAT_u64_u96_6501_wire) -- 
      variable tmp_var : std_logic_vector(133 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u6_u38_6496_wire, CONCAT_u64_u96_6501_wire, tmp_var);
      CONCAT_u38_u134_6502_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u4_6183_inst
    process(sc_instr_class_6098, debug_mode_5209) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(sc_instr_class_6098, debug_mode_5209, tmp_var);
      CONCAT_u3_u4_6183_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u4_6235_inst
    process(CONCAT_u1_u3_6233_wire, bp_hit_5507) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u3_6233_wire, bp_hit_5507, tmp_var);
      dbg_info_6236 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u63_6285_inst
    process(CONCAT_u2_u3_6278_wire, CONCAT_u30_u60_6283_wire) -- 
      variable tmp_var : std_logic_vector(62 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_6278_wire, CONCAT_u30_u60_6283_wire, tmp_var);
      to_branch_predictor_6286 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u8_6428_inst
    process(CONCAT_u2_u3_6424_wire, CONCAT_u1_u5_6427_wire) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_6424_wire, CONCAT_u1_u5_6427_wire, tmp_var);
      CONCAT_u3_u8_6428_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u16_6543_inst
    process(CONCAT_u2_u4_6537_wire, CONCAT_u6_u12_6542_wire) -- 
      variable tmp_var : std_logic_vector(15 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u4_6537_wire, CONCAT_u6_u12_6542_wire, tmp_var);
      annul_status_6544 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u5_6185_inst
    process(CONCAT_u3_u4_6183_wire, logger_active_5209) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u3_u4_6183_wire, logger_active_5209, tmp_var);
      CONCAT_u4_u5_6185_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u5_6188_inst
    process(proc_ilvl_for_this_instruction_5880, enable_interrupts_for_this_instruction_5851) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(proc_ilvl_for_this_instruction_5880, enable_interrupts_for_this_instruction_5851, tmp_var);
      CONCAT_u4_u5_6188_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u6_6129_inst
    process(thread_id_5049, stream_id_5053) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(thread_id_5049, stream_id_5053, tmp_var);
      CONCAT_u4_u6_6129_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u6_6540_inst
    process(thread_id_5049, stream_id_5053) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(thread_id_5049, stream_id_5053, tmp_var);
      CONCAT_u4_u6_6540_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u7_6491_inst
    process(CONCAT_u2_u4_6485_wire, CONCAT_u2_u3_6490_wire) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u4_6485_wire, CONCAT_u2_u3_6490_wire, tmp_var);
      CONCAT_u4_u7_6491_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u8_6212_inst
    process(CONCAT_u2_u4_6204_wire, CONCAT_u2_u4_6211_wire) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u4_6204_wire, CONCAT_u2_u4_6211_wire, tmp_var);
      CONCAT_u4_u8_6212_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u10_6189_inst
    process(CONCAT_u4_u5_6185_wire, CONCAT_u4_u5_6188_wire) -- 
      variable tmp_var : std_logic_vector(9 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u5_6185_wire, CONCAT_u4_u5_6188_wire, tmp_var);
      CONCAT_u5_u10_6189_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u27_6434_inst
    process(CONCAT_u1_u5_6432_wire, ctrl_word_to_iretire_6214) -- 
      variable tmp_var : std_logic_vector(26 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u5_6432_wire, ctrl_word_to_iretire_6214, tmp_var);
      CONCAT_u5_u27_6434_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u37_6445_inst
    process(CONCAT_u1_u5_6443_wire, pc_to_retire_6217) -- 
      variable tmp_var : std_logic_vector(36 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u5_6443_wire, pc_to_retire_6217, tmp_var);
      CONCAT_u5_u37_6445_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u7_6413_inst
    process(CONCAT_u1_u5_6411_wire, stream_id_5053) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u5_6411_wire, stream_id_5053, tmp_var);
      CONCAT_u5_u7_6413_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u64_u96_6501_inst
    process(CONCAT_u32_u64_6499_wire, next_sc_psr_5818) -- 
      variable tmp_var : std_logic_vector(95 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u32_u64_6499_wire, next_sc_psr_5818, tmp_var);
      CONCAT_u64_u96_6501_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u12_6542_inst
    process(CONCAT_u4_u6_6540_wire, slot_id_5057) -- 
      variable tmp_var : std_logic_vector(11 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u6_6540_wire, slot_id_5057, tmp_var);
      CONCAT_u6_u12_6542_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u13_6133_inst
    process(CONCAT_u4_u6_6129_wire, CONCAT_u6_u7_6132_wire) -- 
      variable tmp_var : std_logic_vector(12 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u6_6129_wire, CONCAT_u6_u7_6132_wire, tmp_var);
      CONCAT_u6_u13_6133_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u38_6496_inst
    process(CONCAT_u2_u6_6494_wire, next_last_computed_next_npc_6371) -- 
      variable tmp_var : std_logic_vector(37 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u6_6494_wire, next_last_computed_next_npc_6371, tmp_var);
      CONCAT_u6_u38_6496_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u7_6132_inst
    process(slot_id_5057, annul_instr_5232) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(slot_id_5057, annul_instr_5232, tmp_var);
      CONCAT_u6_u7_6132_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u7_6416_inst
    process(slot_id_5057, icache_was_accessed_5217) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(slot_id_5057, icache_was_accessed_5217, tmp_var);
      CONCAT_u6_u7_6416_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u7_u141_6503_inst
    process(CONCAT_u4_u7_6491_wire, CONCAT_u38_u134_6502_wire) -- 
      variable tmp_var : std_logic_vector(140 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u7_6491_wire, CONCAT_u38_u134_6502_wire, tmp_var);
      next_CIRCULANT_6504 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u7_u15_6419_inst
    process(CONCAT_u5_u7_6413_wire, CONCAT_u7_u8_6418_wire) -- 
      variable tmp_var : std_logic_vector(14 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u5_u7_6413_wire, CONCAT_u7_u8_6418_wire, tmp_var);
      CONCAT_u7_u15_6419_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u7_u8_6418_inst
    process(CONCAT_u6_u7_6416_wire, icache_hit_5209) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u6_u7_6416_wire, icache_hit_5209, tmp_var);
      CONCAT_u7_u8_6418_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_5517_inst
    process(sc_state_5011) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(sc_state_5011, R_SC_NORMAL_5516_wire_constant, tmp_var);
      EQ_u2_u1_5517_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_5521_inst
    process(sc_state_5011) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(sc_state_5011, R_SC_STREAM_DEAD_5520_wire_constant, tmp_var);
      EQ_u2_u1_5521_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_5615_inst
    process(sc_state_5011) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(sc_state_5011, R_SC_NORMAL_5614_wire_constant, tmp_var);
      EQ_u2_u1_5615_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_5619_inst
    process(sc_state_5011) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(sc_state_5011, R_SC_STREAM_DEAD_5618_wire_constant, tmp_var);
      EQ_u2_u1_5619_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_5625_inst
    process(sc_state_5011) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(sc_state_5011, R_SC_THREAD_DEAD_5624_wire_constant, tmp_var);
      EQ_u2_u1_5625_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_5790_inst
    process(sc_state_5011) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(sc_state_5011, R_SC_NORMAL_5789_wire_constant, tmp_var);
      EQ_u2_u1_5790_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_5793_inst
    process(sc_state_5011) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(sc_state_5011, R_SC_THREAD_DEAD_5792_wire_constant, tmp_var);
      EQ_u2_u1_5793_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_5799_inst
    process(sc_state_5011) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(sc_state_5011, R_SC_STREAM_DEAD_5798_wire_constant, tmp_var);
      EQ_u2_u1_5799_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_5952_inst
    process(sc_state_5011) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(sc_state_5011, R_SC_NORMAL_5951_wire_constant, tmp_var);
      EQ_u2_u1_5952_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_5968_inst
    process(sc_state_5011) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(sc_state_5011, R_SC_STREAM_DEAD_5967_wire_constant, tmp_var);
      EQ_u2_u1_5968_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_5992_inst
    process(sc_state_5011) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(sc_state_5011, R_SC_THREAD_DEAD_5991_wire_constant, tmp_var);
      EQ_u2_u1_5992_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_6026_inst
    process(sc_state_5011) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(sc_state_5011, R_SC_NORMAL_6025_wire_constant, tmp_var);
      EQ_u2_u1_6026_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_6044_inst
    process(sc_state_5011) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(sc_state_5011, R_SC_STREAM_DEAD_6043_wire_constant, tmp_var);
      EQ_u2_u1_6044_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_6072_inst
    process(sc_state_5011) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(sc_state_5011, R_SC_THREAD_DEAD_6071_wire_constant, tmp_var);
      EQ_u2_u1_6072_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_5914_inst
    process(ilvl_5093) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(ilvl_5093, konst_5913_wire_constant, tmp_var);
      EQ_u4_u1_5914_wire <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u2_u1_5653_inst
    process(sc_state_5011) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(sc_state_5011, R_SC_THREAD_DEAD_5652_wire_constant, tmp_var);
      NEQ_u2_u1_5653_wire <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u32_u1_5526_inst
    process(npc_5177, last_computed_next_npc_5019) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(npc_5177, last_computed_next_npc_5019, tmp_var);
      NEQ_u32_u1_5526_wire <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u32_u1_5611_inst
    process(nnpc_5181, computed_next_npc_5599) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(nnpc_5181, computed_next_npc_5599, tmp_var);
      NEQ_u32_u1_5611_wire <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u32_u1_5642_inst
    process(pc_5173, last_seen_npc_5023) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(pc_5173, last_seen_npc_5023, tmp_var);
      NEQ_u32_u1_5642_wire <= tmp_var; --
    end process;
    -- unary operator NOT_u1_u1_5227_inst
    process(thread_head_5209) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", thread_head_5209, tmp_var);
      NOT_u1_u1_5227_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5254_inst
    process(iu_cti_5240) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", iu_cti_5240, tmp_var);
      NOT_u1_u1_5254_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5513_inst
    process(thread_head_5209) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", thread_head_5209, tmp_var);
      NOT_u1_u1_5513_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5555_inst
    process(iu1_to_sc_5145) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", iu1_to_sc_5145, tmp_var);
      NOT_u1_u1_5555_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5572_inst
    process(annul_instr_5232) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", annul_instr_5232, tmp_var);
      NOT_u1_u1_5572_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5582_inst
    process(iu1_to_sc_5145) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", iu1_to_sc_5145, tmp_var);
      NOT_u1_u1_5582_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5605_inst
    process(npc_mispredict_flag_5529) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", npc_mispredict_flag_5529, tmp_var);
      NOT_u1_u1_5605_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5608_inst
    process(annul_instr_5232) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", annul_instr_5232, tmp_var);
      NOT_u1_u1_5608_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5636_inst
    process(stream_head_5209) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", stream_head_5209, tmp_var);
      NOT_u1_u1_5636_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5639_inst
    process(thread_head_5209) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", thread_head_5209, tmp_var);
      NOT_u1_u1_5639_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5660_inst
    process(npc_mispredict_flag_5529) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", npc_mispredict_flag_5529, tmp_var);
      NOT_u1_u1_5660_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5662_inst
    process(stream_head_5209) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", stream_head_5209, tmp_var);
      NOT_u1_u1_5662_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5665_inst
    process(thread_head_5209) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", thread_head_5209, tmp_var);
      NOT_u1_u1_5665_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5687_inst
    process(annul_instr_5232) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", annul_instr_5232, tmp_var);
      NOT_u1_u1_5687_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5694_inst
    process(annul_instr_5232) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", annul_instr_5232, tmp_var);
      NOT_u1_u1_5694_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5702_inst
    process(annul_instr_5232) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", annul_instr_5232, tmp_var);
      NOT_u1_u1_5702_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5733_inst
    process(annul_instr_5232) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", annul_instr_5232, tmp_var);
      NOT_u1_u1_5733_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5762_inst
    process(annul_instr_5232) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", annul_instr_5232, tmp_var);
      NOT_u1_u1_5762_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5768_inst
    process(annul_instr_5232) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", annul_instr_5232, tmp_var);
      NOT_u1_u1_5768_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5770_inst
    process(iu_ignore_5423) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", iu_ignore_5423, tmp_var);
      NOT_u1_u1_5770_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5784_inst
    process(exception_flag_5780) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", exception_flag_5780, tmp_var);
      NOT_u1_u1_5784_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5787_inst
    process(bp_hit_5507) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", bp_hit_5507, tmp_var);
      NOT_u1_u1_5787_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5809_inst
    process(annul_instr_5232) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", annul_instr_5232, tmp_var);
      NOT_u1_u1_5809_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5825_inst
    process(annul_instr_5232) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", annul_instr_5232, tmp_var);
      NOT_u1_u1_5825_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5830_inst
    process(iu_ignore_5423) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", iu_ignore_5423, tmp_var);
      NOT_u1_u1_5830_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5835_inst
    process(annul_instr_5232) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", annul_instr_5232, tmp_var);
      NOT_u1_u1_5835_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5840_inst
    process(iu_ignore_5423) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", iu_ignore_5423, tmp_var);
      NOT_u1_u1_5840_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5864_inst
    process(annul_instr_5232) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", annul_instr_5232, tmp_var);
      NOT_u1_u1_5864_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5869_inst
    process(iu_ignore_5423) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", iu_ignore_5423, tmp_var);
      NOT_u1_u1_5869_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5893_inst
    process(annul_instr_5232) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", annul_instr_5232, tmp_var);
      NOT_u1_u1_5893_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5898_inst
    process(iu_ignore_5423) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", iu_ignore_5423, tmp_var);
      NOT_u1_u1_5898_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5954_inst
    process(valid_from_dispatch_4959) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", valid_from_dispatch_4959, tmp_var);
      NOT_u1_u1_5954_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5970_inst
    process(valid_from_dispatch_4959) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", valid_from_dispatch_4959, tmp_var);
      NOT_u1_u1_5970_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5994_inst
    process(valid_from_dispatch_4959) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", valid_from_dispatch_4959, tmp_var);
      NOT_u1_u1_5994_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_6230_inst
    process(bp_hit_5507) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", bp_hit_5507, tmp_var);
      NOT_u1_u1_6230_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_6327_inst
    process(nnpc_mispredict_flag_5630) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", nnpc_mispredict_flag_5630, tmp_var);
      NOT_u1_u1_6327_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator OR_u1_u1_5221_inst
    is_write_psr_or_rett_5222 <= (is_write_psr_5209 or is_rett_5213);
    -- flow through binary operator OR_u1_u1_5230_inst
    OR_u1_u1_5230_wire <= (AND_u1_u1_5228_wire or dispatch_annul_instr_5069);
    -- flow through binary operator OR_u1_u1_5340_inst
    OR_u1_u1_5340_wire <= (iu_bicc_br_taken_in_sc_5335 or is_call_5097);
    -- flow through binary operator OR_u1_u1_5523_inst
    OR_u1_u1_5523_wire <= (EQ_u2_u1_5517_wire or AND_u1_u1_5522_wire);
    -- flow through binary operator OR_u1_u1_5563_inst
    OR_u1_u1_5563_wire <= (AND_u1_u1_5559_wire or AND_u1_u1_5562_wire);
    -- flow through binary operator OR_u1_u1_5580_inst
    OR_u1_u1_5580_wire <= (retl_is_valid_5357 or AND_u1_u1_5579_wire);
    -- flow through binary operator OR_u1_u1_5590_inst
    OR_u1_u1_5590_wire <= (AND_u1_u1_5586_wire or AND_u1_u1_5589_wire);
    -- flow through binary operator OR_u1_u1_5591_inst
    OR_u1_u1_5591_wire <= (OR_u1_u1_5580_wire or OR_u1_u1_5590_wire);
    -- flow through binary operator OR_u1_u1_5621_inst
    OR_u1_u1_5621_wire <= (EQ_u2_u1_5615_wire or AND_u1_u1_5620_wire);
    -- flow through binary operator OR_u1_u1_5627_inst
    OR_u1_u1_5627_wire <= (OR_u1_u1_5621_wire or AND_u1_u1_5626_wire);
    -- flow through binary operator OR_u1_u1_5700_inst
    OR_u1_u1_5700_wire <= (MUX_5692_wire or MUX_5699_wire);
    -- flow through binary operator OR_u1_u1_5710_inst
    computed_annul_next_5711 <= (OR_u1_u1_5700_wire or MUX_5709_wire);
    -- flow through binary operator OR_u1_u1_5728_inst
    flush_like_instruction_5729 <= (iu_flush_5240 or iu_mmu_ctrl_write_5240);
    -- flow through binary operator OR_u1_u1_5739_inst
    OR_u1_u1_5739_wire <= (flush_like_instruction_5729 or AND_u1_u1_5738_wire);
    -- flow through binary operator OR_u1_u1_5745_inst
    terminate_stream_5746 <= (npc_mispredict_flag_5529 or stream_terminating_instr_5741);
    -- flow through binary operator OR_u1_u1_5765_inst
    OR_u1_u1_5765_wire <= (mae_trap_5190 or AND_u1_u1_5764_wire);
    -- flow through binary operator OR_u1_u1_5766_inst
    OR_u1_u1_5766_wire <= (fetch_error_5065 or OR_u1_u1_5765_wire);
    -- flow through binary operator OR_u1_u1_5775_inst
    OR_u1_u1_5775_wire <= (iu_trap_5463 or iu_machine_error_5459);
    -- flow through binary operator OR_u1_u1_5778_inst
    OR_u1_u1_5778_wire <= (OR_u1_u1_5766_wire or AND_u1_u1_5777_wire);
    -- flow through binary operator OR_u1_u1_5796_inst
    OR_u1_u1_5796_wire <= (EQ_u2_u1_5790_wire or AND_u1_u1_5795_wire);
    -- flow through binary operator OR_u1_u1_5802_inst
    OR_u1_u1_5802_wire <= (OR_u1_u1_5796_wire or AND_u1_u1_5801_wire);
    -- flow through binary operator OR_u1_u1_5918_inst
    OR_u1_u1_5918_wire <= (EQ_u4_u1_5914_wire or UGT_u4_u1_5917_wire);
    -- flow through binary operator OR_u1_u1_5942_inst
    OR_u1_u1_5942_wire <= (exception_flag_5780 or single_step_mode_5209);
    -- flow through binary operator OR_u1_u1_5945_inst
    OR_u1_u1_5945_wire <= (bp_hit_5507 or interrupt_flag_5920);
    -- flow through binary operator OR_u1_u1_5946_inst
    OR_u1_u1_5946_wire <= (OR_u1_u1_5942_wire or OR_u1_u1_5945_wire);
    -- flow through binary operator OR_u1_u1_6301_inst
    OR_u1_u1_6301_wire <= (is_ret_or_retl_5141 or is_call_5097);
    -- flow through binary operator OR_u1_u1_6303_inst
    OR_u1_u1_6303_wire <= (OR_u1_u1_6301_wire or flush_like_instruction_5729);
    -- flow through binary operator OR_u2_u2_5989_inst
    OR_u2_u2_5989_wire <= (MUX_5965_wire or MUX_5988_wire);
    -- flow through binary operator OR_u2_u2_6013_inst
    next_sc_state_6014 <= (OR_u2_u2_5989_wire or MUX_6012_wire);
    -- flow through binary operator OR_u32_u32_5553_inst
    OR_u32_u32_5553_wire <= (MUX_5544_wire or MUX_5552_wire);
    -- flow through binary operator OR_u32_u32_5567_inst
    next_branch_npc_5568 <= (OR_u32_u32_5553_wire or MUX_5566_wire);
    -- flow through binary operator OR_u3_u3_6069_inst
    OR_u3_u3_6069_wire <= (MUX_6041_wire or MUX_6068_wire);
    -- flow through binary operator OR_u3_u3_6097_inst
    sc_instr_class_6098 <= (OR_u3_u3_6069_wire or MUX_6096_wire);
    -- flow through binary operator UGT_u4_u1_5917_inst
    process(ilvl_5093, proc_ilvl_for_this_instruction_5880) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUgt_proc(ilvl_5093, proc_ilvl_for_this_instruction_5880, tmp_var);
      UGT_u4_u1_5917_wire <= tmp_var; --
    end process;
    -- shared inport operator group (0) : RPIPE_noblock_stream_corrector_in_args_4950_inst 
    InportGroup_0: Block -- 
      signal data_out: std_logic_vector(359 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_noblock_stream_corrector_in_args_4950_inst_req_0;
      RPIPE_noblock_stream_corrector_in_args_4950_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_noblock_stream_corrector_in_args_4950_inst_req_1;
      RPIPE_noblock_stream_corrector_in_args_4950_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      RPIPE_noblock_stream_corrector_in_args_4950_wire <= data_out(359 downto 0);
      noblock_stream_corrector_in_args_read_0_gI: SplitGuardInterface generic map(name => "noblock_stream_corrector_in_args_read_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      noblock_stream_corrector_in_args_read_0: InputPort_P2P -- 
        generic map ( name => "noblock_stream_corrector_in_args_read_0", data_width => 360,    bypass_flag => false,   	nonblocking_read_flag => true,  barrier_flag => false,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => noblock_stream_corrector_in_args_pipe_read_req(0),
          oack => noblock_stream_corrector_in_args_pipe_read_ack(0),
          odata => noblock_stream_corrector_in_args_pipe_read_data(359 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 0
    -- read from input-signal stream_corrector_ret_hit_log
    RPIPE_stream_corrector_ret_hit_log_6554_wire <= stream_corrector_ret_hit_log;
    -- read from input-signal stream_corrector_ret_miss_log
    RPIPE_stream_corrector_ret_miss_log_6557_wire <= stream_corrector_ret_miss_log;
    -- shared outport operator group (0) : WPIPE_noblock_teu_ifetch_branch_predictor_update_6288_inst 
    OutportGroup_0: Block -- 
      signal data_in: std_logic_vector(62 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_noblock_teu_ifetch_branch_predictor_update_6288_inst_req_0;
      WPIPE_noblock_teu_ifetch_branch_predictor_update_6288_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_noblock_teu_ifetch_branch_predictor_update_6288_inst_req_1;
      WPIPE_noblock_teu_ifetch_branch_predictor_update_6288_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= update_branch_predictor_6271(0);
      data_in <= to_branch_predictor_6286;
      noblock_teu_ifetch_branch_predictor_update_write_0_gI: SplitGuardInterface generic map(name => "noblock_teu_ifetch_branch_predictor_update_write_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      noblock_teu_ifetch_branch_predictor_update_write_0: OutputPortRevised -- 
        generic map ( name => "noblock_teu_ifetch_branch_predictor_update", data_width => 63, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => noblock_teu_ifetch_branch_predictor_update_pipe_write_req(0),
          oack => noblock_teu_ifetch_branch_predictor_update_pipe_write_ack(0),
          odata => noblock_teu_ifetch_branch_predictor_update_pipe_write_data(62 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    -- shared outport operator group (1) : WPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_5388_inst 
    OutportGroup_1: Block -- 
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
      sample_req_unguarded(0) <= WPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_5388_inst_req_0;
      WPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_5388_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_5388_inst_req_1;
      WPIPE_noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_5388_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= fp_rfile_valid_5370(0);
      data_in <= R_ONE_1_5389_wire_constant;
      noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_write_1_gI: SplitGuardInterface generic map(name => "noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_write_1_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_write_1: OutputPortRevised -- 
        generic map ( name => "noblock_teu_stream_corrector_to_fpunit_regfile_credit_return", data_width => 1, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_req(0),
          oack => noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_ack(0),
          odata => noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_data(0 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 1
    -- shared outport operator group (2) : WPIPE_noblock_teu_stream_corrector_to_idispatch_6262_inst 
    OutportGroup_2: Block -- 
      signal data_in: std_logic_vector(147 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_noblock_teu_stream_corrector_to_idispatch_6262_inst_req_0;
      WPIPE_noblock_teu_stream_corrector_to_idispatch_6262_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_noblock_teu_stream_corrector_to_idispatch_6262_inst_req_1;
      WPIPE_noblock_teu_stream_corrector_to_idispatch_6262_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= send_to_ifetch_6260(0);
      data_in <= to_ifetch_6260;
      noblock_teu_stream_corrector_to_idispatch_write_2_gI: SplitGuardInterface generic map(name => "noblock_teu_stream_corrector_to_idispatch_write_2_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      noblock_teu_stream_corrector_to_idispatch_write_2: OutputPortRevised -- 
        generic map ( name => "noblock_teu_stream_corrector_to_idispatch", data_width => 148, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => noblock_teu_stream_corrector_to_idispatch_pipe_write_req(0),
          oack => noblock_teu_stream_corrector_to_idispatch_pipe_write_ack(0),
          odata => noblock_teu_stream_corrector_to_idispatch_pipe_write_data(147 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 2
    -- shared outport operator group (3) : WPIPE_noblock_teu_stream_corrector_to_iretire_6454_inst 
    OutportGroup_3: Block -- 
      signal data_in: std_logic_vector(153 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_noblock_teu_stream_corrector_to_iretire_6454_inst_req_0;
      WPIPE_noblock_teu_stream_corrector_to_iretire_6454_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_noblock_teu_stream_corrector_to_iretire_6454_inst_req_1;
      WPIPE_noblock_teu_stream_corrector_to_iretire_6454_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= valid_from_dispatch_4959(0);
      data_in <= to_iretire_6452;
      noblock_teu_stream_corrector_to_iretire_write_3_gI: SplitGuardInterface generic map(name => "noblock_teu_stream_corrector_to_iretire_write_3_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      noblock_teu_stream_corrector_to_iretire_write_3: OutputPortRevised -- 
        generic map ( name => "noblock_teu_stream_corrector_to_iretire", data_width => 154, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => noblock_teu_stream_corrector_to_iretire_pipe_write_req(0),
          oack => noblock_teu_stream_corrector_to_iretire_pipe_write_ack(0),
          odata => noblock_teu_stream_corrector_to_iretire_pipe_write_data(153 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 3
    -- shared outport operator group (4) : WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_5327_inst 
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
      sample_req_unguarded(0) <= WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_5327_inst_req_0;
      WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_5327_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_5327_inst_req_1;
      WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_5327_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= iu_rfile_valid_5309(0);
      data_in <= R_ONE_1_5328_wire_constant;
      noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_write_4_gI: SplitGuardInterface generic map(name => "noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_write_4_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_write_4: OutputPortRevised -- 
        generic map ( name => "noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return", data_width => 1, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_req(0),
          oack => noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_ack(0),
          odata => noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_data(0 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 4
    -- shared outport operator group (5) : WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_5359_inst 
    OutportGroup_5: Block -- 
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
      sample_req_unguarded(0) <= WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_5359_inst_req_0;
      WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_5359_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_5359_inst_req_1;
      WPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_5359_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= retl_is_valid_5357(0);
      data_in <= R_ONE_1_5360_wire_constant;
      noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_write_5_gI: SplitGuardInterface generic map(name => "noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_write_5_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_write_5: OutputPortRevised -- 
        generic map ( name => "noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return", data_width => 1, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_req(0),
          oack => noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_ack(0),
          odata => noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_data(0 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 5
    -- shared outport operator group (6) : WPIPE_stream_corrector_ret_hit_log_6331_inst 
    OutportGroup_6: Block -- 
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
      sample_req_unguarded(0) <= WPIPE_stream_corrector_ret_hit_log_6331_inst_req_0;
      WPIPE_stream_corrector_ret_hit_log_6331_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_stream_corrector_ret_hit_log_6331_inst_req_1;
      WPIPE_stream_corrector_ret_hit_log_6331_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= log_retl_hit_6329(0);
      data_in <= pc_to_retire_6217;
      stream_corrector_ret_hit_log_write_6_gI: SplitGuardInterface generic map(name => "stream_corrector_ret_hit_log_write_6_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      stream_corrector_ret_hit_log_write_6: OutputPortRevised -- 
        generic map ( name => "stream_corrector_ret_hit_log", data_width => 32, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => stream_corrector_ret_hit_log_pipe_write_req(0),
          oack => stream_corrector_ret_hit_log_pipe_write_ack(0),
          odata => stream_corrector_ret_hit_log_pipe_write_data(31 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 6
    -- shared outport operator group (7) : WPIPE_stream_corrector_ret_miss_log_6342_inst 
    OutportGroup_7: Block -- 
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
      sample_req_unguarded(0) <= WPIPE_stream_corrector_ret_miss_log_6342_inst_req_0;
      WPIPE_stream_corrector_ret_miss_log_6342_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_stream_corrector_ret_miss_log_6342_inst_req_1;
      WPIPE_stream_corrector_ret_miss_log_6342_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= log_retl_miss_6340(0);
      data_in <= pc_to_retire_6217;
      stream_corrector_ret_miss_log_write_7_gI: SplitGuardInterface generic map(name => "stream_corrector_ret_miss_log_write_7_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      stream_corrector_ret_miss_log_write_7: OutputPortRevised -- 
        generic map ( name => "stream_corrector_ret_miss_log", data_width => 32, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => stream_corrector_ret_miss_log_pipe_write_req(0),
          oack => stream_corrector_ret_miss_log_pipe_write_ack(0),
          odata => stream_corrector_ret_miss_log_pipe_write_data(31 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 7
    -- shared outport operator group (8) : WPIPE_teu_ras_access_pipe_6319_inst 
    OutportGroup_8: Block -- 
      signal data_in: std_logic_vector(32 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_teu_ras_access_pipe_6319_inst_req_0;
      WPIPE_teu_ras_access_pipe_6319_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_teu_ras_access_pipe_6319_inst_req_1;
      WPIPE_teu_ras_access_pipe_6319_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= update_ras_6305(0);
      data_in <= to_ras_6317;
      teu_ras_access_pipe_write_8_gI: SplitGuardInterface generic map(name => "teu_ras_access_pipe_write_8_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      teu_ras_access_pipe_write_8: OutputPortRevised -- 
        generic map ( name => "teu_ras_access_pipe", data_width => 33, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => teu_ras_access_pipe_pipe_write_req(0),
          oack => teu_ras_access_pipe_pipe_write_ack(0),
          odata => teu_ras_access_pipe_pipe_write_data(32 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 8
    -- shared outport operator group (9) : WPIPE_teu_stream_corrector_annul_status_6546_inst 
    OutportGroup_9: Block -- 
      signal data_in: std_logic_vector(15 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_teu_stream_corrector_annul_status_6546_inst_req_0;
      WPIPE_teu_stream_corrector_annul_status_6546_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_teu_stream_corrector_annul_status_6546_inst_req_1;
      WPIPE_teu_stream_corrector_annul_status_6546_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= update_annul_status_6529(0);
      data_in <= annul_status_6544;
      teu_stream_corrector_annul_status_write_9_gI: SplitGuardInterface generic map(name => "teu_stream_corrector_annul_status_write_9_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      teu_stream_corrector_annul_status_write_9: OutputPortRevised -- 
        generic map ( name => "teu_stream_corrector_annul_status", data_width => 16, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => teu_stream_corrector_annul_status_pipe_write_req(0),
          oack => teu_stream_corrector_annul_status_pipe_write_ack(0),
          odata => teu_stream_corrector_annul_status_pipe_write_data(15 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 9
    -- shared outport operator group (10) : WPIPE_teu_stream_corrector_to_fpunit_6174_inst 
    OutportGroup_10: Block -- 
      signal data_in: std_logic_vector(17 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_teu_stream_corrector_to_fpunit_6174_inst_req_0;
      WPIPE_teu_stream_corrector_to_fpunit_6174_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_teu_stream_corrector_to_fpunit_6174_inst_req_1;
      WPIPE_teu_stream_corrector_to_fpunit_6174_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= send_to_fu2_6169(0);
      data_in <= to_fu_6172;
      teu_stream_corrector_to_fpunit_write_10_gI: SplitGuardInterface generic map(name => "teu_stream_corrector_to_fpunit_write_10_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      teu_stream_corrector_to_fpunit_write_10: OutputPortRevised -- 
        generic map ( name => "teu_stream_corrector_to_fpunit", data_width => 18, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => teu_stream_corrector_to_fpunit_pipe_write_req(0),
          oack => teu_stream_corrector_to_fpunit_pipe_write_ack(0),
          odata => teu_stream_corrector_to_fpunit_pipe_write_data(17 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 10
    -- shared outport operator group (11) : WPIPE_teu_stream_corrector_to_iunit_6159_inst 
    OutportGroup_11: Block -- 
      signal data_in: std_logic_vector(17 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_teu_stream_corrector_to_iunit_6159_inst_req_0;
      WPIPE_teu_stream_corrector_to_iunit_6159_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_teu_stream_corrector_to_iunit_6159_inst_req_1;
      WPIPE_teu_stream_corrector_to_iunit_6159_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= send_to_iu2_6154(0);
      data_in <= to_iu_6157;
      teu_stream_corrector_to_iunit_write_11_gI: SplitGuardInterface generic map(name => "teu_stream_corrector_to_iunit_write_11_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      teu_stream_corrector_to_iunit_write_11: OutputPortRevised -- 
        generic map ( name => "teu_stream_corrector_to_iunit", data_width => 18, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => teu_stream_corrector_to_iunit_pipe_write_req(0),
          oack => teu_stream_corrector_to_iunit_pipe_write_ack(0),
          odata => teu_stream_corrector_to_iunit_pipe_write_data(17 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 11
    -- shared outport operator group (12) : WPIPE_teu_stream_corrector_to_loadstore_6521_inst 
    OutportGroup_12: Block -- 
      signal data_in: std_logic_vector(18 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_teu_stream_corrector_to_loadstore_6521_inst_req_0;
      WPIPE_teu_stream_corrector_to_loadstore_6521_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_teu_stream_corrector_to_loadstore_6521_inst_req_1;
      WPIPE_teu_stream_corrector_to_loadstore_6521_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= send_to_ls_6519(0);
      data_in <= to_ls_6514;
      teu_stream_corrector_to_loadstore_write_12_gI: SplitGuardInterface generic map(name => "teu_stream_corrector_to_loadstore_write_12_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      teu_stream_corrector_to_loadstore_write_12: OutputPortRevised -- 
        generic map ( name => "teu_stream_corrector_to_loadstore", data_width => 19, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => teu_stream_corrector_to_loadstore_pipe_write_req(0),
          oack => teu_stream_corrector_to_loadstore_pipe_write_ack(0),
          odata => teu_stream_corrector_to_loadstore_pipe_write_data(18 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 12
    volatile_operator_decode_thread_control_word_6286: decode_thread_control_word_Volatile port map(ctrl_word => thread_control_word_5077, sc_instr_class => jmpl_rett_icache_5209, debug_mode => debug_mode_5209, logger_active => logger_active_5209, proc_ilvl => proc_ilvl_from_dispatch_5209, enable_traps => enable_interrupts_from_dispatch_5209, single_step_mode => single_step_mode_5209, ignore_break_points => ignore_break_points_5209, S => S_from_dispatch_5209, imm_bit => imm_bit_5209, is_write_psr => is_write_psr_5209, is_mmu_ctrl_write => is_mmu_ctrl_write_5209, is_flush => is_flush_5209, is_cti => is_cti_5209, mis_predict => icache_hit_5209, trap_bit => dispatch_trap_bit_5209, stream_head => stream_head_5209, thread_head => thread_head_5209); 
    volatile_operator_decode_stream_corrector_info_6294: decode_stream_corrector_info_Volatile port map(sc_info => sc_info_5061, iu_cti => iu_cti_5240, fp_cti => fp_cti_5240, cp_cti => cp_cti_5240, iu_flush => iu_flush_5240, iu_write_psr => iu_can_modify_psr_S_5240, iu_mmu_ctrl_write => iu_mmu_ctrl_write_5240); 
    volatile_operator_exec_bicc_generic_6304: exec_bicc_generic_Volatile port map(br_annul_flag => bicc_fbfcc_annul_flag_5109, br_cond => bicc_fbfcc_cond_5113, ccodes => iu_rfile_cc_5325, br_taken => iu_bicc_br_taken_in_sc_5335, annul_next => iu_annul_next_in_sc_5335); 
    volatile_operator_exec_fbfcc_generic_6316: exec_fbfcc_generic_Volatile port map(br_cond => bicc_fbfcc_cond_5113, fcc => fp_rfile_cc_5386, annul_flag => bicc_fbfcc_annul_flag_5109, br_taken => fp_br_taken_in_sc_5396, annul_next => fp_annul_next_in_sc_5396); 
    volatile_operator_calculate_ifetch_related_stuff_6581: calculate_ifetch_related_stuff_Volatile port map(valid_from_sc => valid_from_dispatch_4959, npc_mispredict => npc_mispredict_flag_5529, nnpc_mispredict => nnpc_mispredict_flag_5630, last_nnpc_mispredict => last_nnpc_mispredict_flag_4995, flush_like_instruction => flush_like_instruction_5729, thread_id => thread_id_5049, stream_id => stream_id_5053, slot_id => slot_id_5057, sc_instr_class => sc_instr_class_6098, last_pc => last_pc_5027, pc => pc_to_retire_6217, corrected_npc => npc_to_retire_6223, nnpc => nnpc_to_retire_6226, psr_val => psr_val_to_ifetch_5821, is_cti => is_cti_5209, last_was_cti => last_was_cti_4987, annul_next => computed_annul_next_5711, annul_instr => annul_instr_5232, write_psr => is_write_psr_or_rett_5222, is_flush => is_flush_5209, send_to_ifetch => send_to_ifetch_6260, to_ifetch => to_ifetch_6260, ask_iretire_to_signal_idispatch => ask_iretire_to_signal_idispatch_6260); 
    -- 
  end Block; -- data_path
  -- 
end stream_corrector_daemon_arch;
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
library teu_stream_corrector;
use teu_stream_corrector.stream_corrector_global_package.all;
entity stream_corrector is  -- system 
  port (-- 
    clk : in std_logic;
    reset : in std_logic;
    ccu_to_teu_debug_command_pipe_write_data: in std_logic_vector(7 downto 0);
    ccu_to_teu_debug_command_pipe_write_req : in std_logic_vector(0 downto 0);
    ccu_to_teu_debug_command_pipe_write_ack : out std_logic_vector(0 downto 0);
    debug_bp_0: out std_logic_vector(31 downto 0);
    debug_bp_1: out std_logic_vector(31 downto 0);
    debug_bp_2: out std_logic_vector(31 downto 0);
    debug_bp_3: out std_logic_vector(31 downto 0);
    debug_dbg_interrupt: out std_logic_vector(0 downto 0);
    debug_wp_0: out std_logic_vector(31 downto 0);
    debug_wp_1: out std_logic_vector(31 downto 0);
    debug_wp_2: out std_logic_vector(31 downto 0);
    debug_wp_3: out std_logic_vector(31 downto 0);
    noblock_teu_ifetch_branch_predictor_update_pipe_read_data: out std_logic_vector(62 downto 0);
    noblock_teu_ifetch_branch_predictor_update_pipe_read_req : in std_logic_vector(0 downto 0);
    noblock_teu_ifetch_branch_predictor_update_pipe_read_ack : out std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_data: out std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_req : in std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_ack : out std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_idispatch_pipe_read_data: out std_logic_vector(147 downto 0);
    noblock_teu_stream_corrector_to_idispatch_pipe_read_req : in std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_idispatch_pipe_read_ack : out std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_iretire_pipe_read_data: out std_logic_vector(153 downto 0);
    noblock_teu_stream_corrector_to_iretire_pipe_read_req : in std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_iretire_pipe_read_ack : out std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_data: out std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_req : in std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_ack : out std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_data: out std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_req : in std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_ack : out std_logic_vector(0 downto 0);
    teu_debug_to_ccu_response_pipe_read_data: out std_logic_vector(0 downto 0);
    teu_debug_to_ccu_response_pipe_read_req : in std_logic_vector(0 downto 0);
    teu_debug_to_ccu_response_pipe_read_ack : out std_logic_vector(0 downto 0);
    teu_fpunit_cc_to_stream_corrector_pipe_write_data: in std_logic_vector(14 downto 0);
    teu_fpunit_cc_to_stream_corrector_pipe_write_req : in std_logic_vector(0 downto 0);
    teu_fpunit_cc_to_stream_corrector_pipe_write_ack : out std_logic_vector(0 downto 0);
    teu_idispatch_to_stream_corrector_pipe_write_data: in std_logic_vector(204 downto 0);
    teu_idispatch_to_stream_corrector_pipe_write_req : in std_logic_vector(0 downto 0);
    teu_idispatch_to_stream_corrector_pipe_write_ack : out std_logic_vector(0 downto 0);
    teu_iunit_cc_to_stream_corrector_pipe_write_data: in std_logic_vector(16 downto 0);
    teu_iunit_cc_to_stream_corrector_pipe_write_req : in std_logic_vector(0 downto 0);
    teu_iunit_cc_to_stream_corrector_pipe_write_ack : out std_logic_vector(0 downto 0);
    teu_iunit_rs1_to_stream_corrector_pipe_write_data: in std_logic_vector(31 downto 0);
    teu_iunit_rs1_to_stream_corrector_pipe_write_req : in std_logic_vector(0 downto 0);
    teu_iunit_rs1_to_stream_corrector_pipe_write_ack : out std_logic_vector(0 downto 0);
    teu_iunit_to_stream_corrector_pipe_write_data: in std_logic_vector(89 downto 0);
    teu_iunit_to_stream_corrector_pipe_write_req : in std_logic_vector(0 downto 0);
    teu_iunit_to_stream_corrector_pipe_write_ack : out std_logic_vector(0 downto 0);
    teu_ras_access_pipe_pipe_read_data: out std_logic_vector(32 downto 0);
    teu_ras_access_pipe_pipe_read_req : in std_logic_vector(0 downto 0);
    teu_ras_access_pipe_pipe_read_ack : out std_logic_vector(0 downto 0);
    teu_stream_corrector_annul_status: out std_logic_vector(15 downto 0);
    teu_stream_corrector_to_fpunit_pipe_read_data: out std_logic_vector(17 downto 0);
    teu_stream_corrector_to_fpunit_pipe_read_req : in std_logic_vector(0 downto 0);
    teu_stream_corrector_to_fpunit_pipe_read_ack : out std_logic_vector(0 downto 0);
    teu_stream_corrector_to_iunit_pipe_read_data: out std_logic_vector(17 downto 0);
    teu_stream_corrector_to_iunit_pipe_read_req : in std_logic_vector(0 downto 0);
    teu_stream_corrector_to_iunit_pipe_read_ack : out std_logic_vector(0 downto 0);
    teu_stream_corrector_to_loadstore_pipe_read_data: out std_logic_vector(18 downto 0);
    teu_stream_corrector_to_loadstore_pipe_read_req : in std_logic_vector(0 downto 0);
    teu_stream_corrector_to_loadstore_pipe_read_ack : out std_logic_vector(0 downto 0)); -- 
  -- 
end entity; 
architecture stream_corrector_arch  of stream_corrector is -- system-architecture 
  -- interface signals to connect to memory space memory_space_1
  -- declarations related to module calculate_ifetch_related_stuff
  -- declarations related to module debug_unit_ccu_daemon
  component debug_unit_ccu_daemon is -- 
    generic (tag_length : integer); 
    port ( -- 
      debug_bp_0_pipe_write_req : out  std_logic_vector(0 downto 0);
      debug_bp_0_pipe_write_ack : in   std_logic_vector(0 downto 0);
      debug_bp_0_pipe_write_data : out  std_logic_vector(31 downto 0);
      debug_bp_1_pipe_write_req : out  std_logic_vector(0 downto 0);
      debug_bp_1_pipe_write_ack : in   std_logic_vector(0 downto 0);
      debug_bp_1_pipe_write_data : out  std_logic_vector(31 downto 0);
      debug_bp_2_pipe_write_req : out  std_logic_vector(0 downto 0);
      debug_bp_2_pipe_write_ack : in   std_logic_vector(0 downto 0);
      debug_bp_2_pipe_write_data : out  std_logic_vector(31 downto 0);
      debug_bp_3_pipe_write_req : out  std_logic_vector(0 downto 0);
      debug_bp_3_pipe_write_ack : in   std_logic_vector(0 downto 0);
      debug_bp_3_pipe_write_data : out  std_logic_vector(31 downto 0);
      debug_dbg_interrupt_pipe_write_req : out  std_logic_vector(0 downto 0);
      debug_dbg_interrupt_pipe_write_ack : in   std_logic_vector(0 downto 0);
      debug_dbg_interrupt_pipe_write_data : out  std_logic_vector(0 downto 0);
      debug_wp_0_pipe_write_req : out  std_logic_vector(0 downto 0);
      debug_wp_0_pipe_write_ack : in   std_logic_vector(0 downto 0);
      debug_wp_0_pipe_write_data : out  std_logic_vector(31 downto 0);
      debug_wp_1_pipe_write_req : out  std_logic_vector(0 downto 0);
      debug_wp_1_pipe_write_ack : in   std_logic_vector(0 downto 0);
      debug_wp_1_pipe_write_data : out  std_logic_vector(31 downto 0);
      debug_wp_2_pipe_write_req : out  std_logic_vector(0 downto 0);
      debug_wp_2_pipe_write_ack : in   std_logic_vector(0 downto 0);
      debug_wp_2_pipe_write_data : out  std_logic_vector(31 downto 0);
      debug_wp_3_pipe_write_req : out  std_logic_vector(0 downto 0);
      debug_wp_3_pipe_write_ack : in   std_logic_vector(0 downto 0);
      debug_wp_3_pipe_write_data : out  std_logic_vector(31 downto 0);
      teu_debug_to_ccu_response_pipe_write_req : out  std_logic_vector(0 downto 0);
      teu_debug_to_ccu_response_pipe_write_ack : in   std_logic_vector(0 downto 0);
      teu_debug_to_ccu_response_pipe_write_data : out  std_logic_vector(0 downto 0);
      get_debug_command_from_ccu_call_reqs : out  std_logic_vector(0 downto 0);
      get_debug_command_from_ccu_call_acks : in   std_logic_vector(0 downto 0);
      get_debug_command_from_ccu_call_tag  :  out  std_logic_vector(0 downto 0);
      get_debug_command_from_ccu_return_reqs : out  std_logic_vector(0 downto 0);
      get_debug_command_from_ccu_return_acks : in   std_logic_vector(0 downto 0);
      get_debug_command_from_ccu_return_data : in   std_logic_vector(39 downto 0);
      get_debug_command_from_ccu_return_tag :  in   std_logic_vector(0 downto 0);
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
  -- argument signals for module debug_unit_ccu_daemon
  signal debug_unit_ccu_daemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal debug_unit_ccu_daemon_tag_out   : std_logic_vector(1 downto 0);
  signal debug_unit_ccu_daemon_start_req : std_logic;
  signal debug_unit_ccu_daemon_start_ack : std_logic;
  signal debug_unit_ccu_daemon_fin_req   : std_logic;
  signal debug_unit_ccu_daemon_fin_ack : std_logic;
  -- declarations related to module decode_stream_corrector_info
  -- declarations related to module decode_thread_control_word
  -- declarations related to module exec_bicc_generic
  -- declarations related to module exec_fbfcc_generic
  -- declarations related to module get_debug_command_from_ccu
  component get_debug_command_from_ccu is -- 
    generic (tag_length : integer); 
    port ( -- 
      debug_cmd : out  std_logic_vector(7 downto 0);
      debug_data : out  std_logic_vector(31 downto 0);
      ccu_to_teu_debug_command_pipe_read_req : out  std_logic_vector(0 downto 0);
      ccu_to_teu_debug_command_pipe_read_ack : in   std_logic_vector(0 downto 0);
      ccu_to_teu_debug_command_pipe_read_data : in   std_logic_vector(7 downto 0);
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
  -- argument signals for module get_debug_command_from_ccu
  signal get_debug_command_from_ccu_debug_cmd :  std_logic_vector(7 downto 0);
  signal get_debug_command_from_ccu_debug_data :  std_logic_vector(31 downto 0);
  signal get_debug_command_from_ccu_out_args   : std_logic_vector(39 downto 0);
  signal get_debug_command_from_ccu_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal get_debug_command_from_ccu_tag_out   : std_logic_vector(1 downto 0);
  signal get_debug_command_from_ccu_start_req : std_logic;
  signal get_debug_command_from_ccu_start_ack : std_logic;
  signal get_debug_command_from_ccu_fin_req   : std_logic;
  signal get_debug_command_from_ccu_fin_ack : std_logic;
  -- caller side aggregated signals for module get_debug_command_from_ccu
  signal get_debug_command_from_ccu_call_reqs: std_logic_vector(0 downto 0);
  signal get_debug_command_from_ccu_call_acks: std_logic_vector(0 downto 0);
  signal get_debug_command_from_ccu_return_reqs: std_logic_vector(0 downto 0);
  signal get_debug_command_from_ccu_return_acks: std_logic_vector(0 downto 0);
  signal get_debug_command_from_ccu_call_tag: std_logic_vector(0 downto 0);
  signal get_debug_command_from_ccu_return_data: std_logic_vector(39 downto 0);
  signal get_debug_command_from_ccu_return_tag: std_logic_vector(0 downto 0);
  -- declarations related to module stream_corrector_daemon
  component stream_corrector_daemon is -- 
    generic (tag_length : integer); 
    port ( -- 
      noblock_stream_corrector_in_args_pipe_read_req : out  std_logic_vector(0 downto 0);
      noblock_stream_corrector_in_args_pipe_read_ack : in   std_logic_vector(0 downto 0);
      noblock_stream_corrector_in_args_pipe_read_data : in   std_logic_vector(359 downto 0);
      stream_corrector_ret_hit_log : in std_logic_vector(31 downto 0);
      stream_corrector_ret_miss_log : in std_logic_vector(31 downto 0);
      teu_ras_access_pipe_pipe_write_req : out  std_logic_vector(0 downto 0);
      teu_ras_access_pipe_pipe_write_ack : in   std_logic_vector(0 downto 0);
      teu_ras_access_pipe_pipe_write_data : out  std_logic_vector(32 downto 0);
      teu_stream_corrector_annul_status_pipe_write_req : out  std_logic_vector(0 downto 0);
      teu_stream_corrector_annul_status_pipe_write_ack : in   std_logic_vector(0 downto 0);
      teu_stream_corrector_annul_status_pipe_write_data : out  std_logic_vector(15 downto 0);
      teu_stream_corrector_to_fpunit_pipe_write_req : out  std_logic_vector(0 downto 0);
      teu_stream_corrector_to_fpunit_pipe_write_ack : in   std_logic_vector(0 downto 0);
      teu_stream_corrector_to_fpunit_pipe_write_data : out  std_logic_vector(17 downto 0);
      noblock_teu_ifetch_branch_predictor_update_pipe_write_req : out  std_logic_vector(0 downto 0);
      noblock_teu_ifetch_branch_predictor_update_pipe_write_ack : in   std_logic_vector(0 downto 0);
      noblock_teu_ifetch_branch_predictor_update_pipe_write_data : out  std_logic_vector(62 downto 0);
      noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_req : out  std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_ack : in   std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_data : out  std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_idispatch_pipe_write_req : out  std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_idispatch_pipe_write_ack : in   std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_idispatch_pipe_write_data : out  std_logic_vector(147 downto 0);
      noblock_teu_stream_corrector_to_iretire_pipe_write_req : out  std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_iretire_pipe_write_ack : in   std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_iretire_pipe_write_data : out  std_logic_vector(153 downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_req : out  std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_ack : in   std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_data : out  std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_req : out  std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_ack : in   std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_data : out  std_logic_vector(0 downto 0);
      stream_corrector_ret_hit_log_pipe_write_req : out  std_logic_vector(0 downto 0);
      stream_corrector_ret_hit_log_pipe_write_ack : in   std_logic_vector(0 downto 0);
      stream_corrector_ret_hit_log_pipe_write_data : out  std_logic_vector(31 downto 0);
      stream_corrector_ret_miss_log_pipe_write_req : out  std_logic_vector(0 downto 0);
      stream_corrector_ret_miss_log_pipe_write_ack : in   std_logic_vector(0 downto 0);
      stream_corrector_ret_miss_log_pipe_write_data : out  std_logic_vector(31 downto 0);
      teu_stream_corrector_to_iunit_pipe_write_req : out  std_logic_vector(0 downto 0);
      teu_stream_corrector_to_iunit_pipe_write_ack : in   std_logic_vector(0 downto 0);
      teu_stream_corrector_to_iunit_pipe_write_data : out  std_logic_vector(17 downto 0);
      teu_stream_corrector_to_loadstore_pipe_write_req : out  std_logic_vector(0 downto 0);
      teu_stream_corrector_to_loadstore_pipe_write_ack : in   std_logic_vector(0 downto 0);
      teu_stream_corrector_to_loadstore_pipe_write_data : out  std_logic_vector(18 downto 0);
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
  -- argument signals for module stream_corrector_daemon
  signal stream_corrector_daemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal stream_corrector_daemon_tag_out   : std_logic_vector(1 downto 0);
  signal stream_corrector_daemon_start_req : std_logic;
  signal stream_corrector_daemon_start_ack : std_logic;
  signal stream_corrector_daemon_fin_req   : std_logic;
  signal stream_corrector_daemon_fin_ack : std_logic;
  -- declarations related to module stream_corrector_in_mux_daemon_v2
  -- argument signals for module stream_corrector_in_mux_daemon_v2
  signal stream_corrector_in_mux_daemon_v2_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal stream_corrector_in_mux_daemon_v2_tag_out   : std_logic_vector(1 downto 0);
  signal stream_corrector_in_mux_daemon_v2_start_req : std_logic;
  signal stream_corrector_in_mux_daemon_v2_start_ack : std_logic;
  signal stream_corrector_in_mux_daemon_v2_fin_req   : std_logic;
  signal stream_corrector_in_mux_daemon_v2_fin_ack : std_logic;
  -- aggregate signals for read from pipe ccu_to_teu_debug_command
  signal ccu_to_teu_debug_command_pipe_read_data: std_logic_vector(7 downto 0);
  signal ccu_to_teu_debug_command_pipe_read_req: std_logic_vector(0 downto 0);
  signal ccu_to_teu_debug_command_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe debug_bp_0
  signal debug_bp_0_pipe_write_data: std_logic_vector(31 downto 0);
  signal debug_bp_0_pipe_write_req: std_logic_vector(0 downto 0);
  signal debug_bp_0_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe debug_bp_1
  signal debug_bp_1_pipe_write_data: std_logic_vector(31 downto 0);
  signal debug_bp_1_pipe_write_req: std_logic_vector(0 downto 0);
  signal debug_bp_1_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe debug_bp_2
  signal debug_bp_2_pipe_write_data: std_logic_vector(31 downto 0);
  signal debug_bp_2_pipe_write_req: std_logic_vector(0 downto 0);
  signal debug_bp_2_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe debug_bp_3
  signal debug_bp_3_pipe_write_data: std_logic_vector(31 downto 0);
  signal debug_bp_3_pipe_write_req: std_logic_vector(0 downto 0);
  signal debug_bp_3_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe debug_dbg_interrupt
  signal debug_dbg_interrupt_pipe_write_data: std_logic_vector(0 downto 0);
  signal debug_dbg_interrupt_pipe_write_req: std_logic_vector(0 downto 0);
  signal debug_dbg_interrupt_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe debug_wp_0
  signal debug_wp_0_pipe_write_data: std_logic_vector(31 downto 0);
  signal debug_wp_0_pipe_write_req: std_logic_vector(0 downto 0);
  signal debug_wp_0_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe debug_wp_1
  signal debug_wp_1_pipe_write_data: std_logic_vector(31 downto 0);
  signal debug_wp_1_pipe_write_req: std_logic_vector(0 downto 0);
  signal debug_wp_1_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe debug_wp_2
  signal debug_wp_2_pipe_write_data: std_logic_vector(31 downto 0);
  signal debug_wp_2_pipe_write_req: std_logic_vector(0 downto 0);
  signal debug_wp_2_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe debug_wp_3
  signal debug_wp_3_pipe_write_data: std_logic_vector(31 downto 0);
  signal debug_wp_3_pipe_write_req: std_logic_vector(0 downto 0);
  signal debug_wp_3_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe noblock_stream_corrector_in_args
  signal noblock_stream_corrector_in_args_pipe_write_data: std_logic_vector(359 downto 0);
  signal noblock_stream_corrector_in_args_pipe_write_req: std_logic_vector(0 downto 0);
  signal noblock_stream_corrector_in_args_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe noblock_stream_corrector_in_args
  signal noblock_stream_corrector_in_args_pipe_read_data: std_logic_vector(359 downto 0);
  signal noblock_stream_corrector_in_args_pipe_read_req: std_logic_vector(0 downto 0);
  signal noblock_stream_corrector_in_args_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe noblock_teu_ifetch_branch_predictor_update
  signal noblock_teu_ifetch_branch_predictor_update_pipe_write_data: std_logic_vector(62 downto 0);
  signal noblock_teu_ifetch_branch_predictor_update_pipe_write_req: std_logic_vector(0 downto 0);
  signal noblock_teu_ifetch_branch_predictor_update_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe noblock_teu_stream_corrector_to_fpunit_regfile_credit_return
  signal noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_data: std_logic_vector(0 downto 0);
  signal noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_req: std_logic_vector(0 downto 0);
  signal noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe noblock_teu_stream_corrector_to_idispatch
  signal noblock_teu_stream_corrector_to_idispatch_pipe_write_data: std_logic_vector(147 downto 0);
  signal noblock_teu_stream_corrector_to_idispatch_pipe_write_req: std_logic_vector(0 downto 0);
  signal noblock_teu_stream_corrector_to_idispatch_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe noblock_teu_stream_corrector_to_iretire
  signal noblock_teu_stream_corrector_to_iretire_pipe_write_data: std_logic_vector(153 downto 0);
  signal noblock_teu_stream_corrector_to_iretire_pipe_write_req: std_logic_vector(0 downto 0);
  signal noblock_teu_stream_corrector_to_iretire_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return
  signal noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_data: std_logic_vector(0 downto 0);
  signal noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_req: std_logic_vector(0 downto 0);
  signal noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return
  signal noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_data: std_logic_vector(0 downto 0);
  signal noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_req: std_logic_vector(0 downto 0);
  signal noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe stream_corrector_ret_hit_log
  signal stream_corrector_ret_hit_log_pipe_write_data: std_logic_vector(31 downto 0);
  signal stream_corrector_ret_hit_log_pipe_write_req: std_logic_vector(0 downto 0);
  signal stream_corrector_ret_hit_log_pipe_write_ack: std_logic_vector(0 downto 0);
  -- signal decl. for read from internal signal pipe stream_corrector_ret_hit_log
  signal stream_corrector_ret_hit_log: std_logic_vector(31 downto 0);
  -- aggregate signals for write to pipe stream_corrector_ret_miss_log
  signal stream_corrector_ret_miss_log_pipe_write_data: std_logic_vector(31 downto 0);
  signal stream_corrector_ret_miss_log_pipe_write_req: std_logic_vector(0 downto 0);
  signal stream_corrector_ret_miss_log_pipe_write_ack: std_logic_vector(0 downto 0);
  -- signal decl. for read from internal signal pipe stream_corrector_ret_miss_log
  signal stream_corrector_ret_miss_log: std_logic_vector(31 downto 0);
  -- aggregate signals for write to pipe teu_debug_to_ccu_response
  signal teu_debug_to_ccu_response_pipe_write_data: std_logic_vector(0 downto 0);
  signal teu_debug_to_ccu_response_pipe_write_req: std_logic_vector(0 downto 0);
  signal teu_debug_to_ccu_response_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe teu_fpunit_cc_to_stream_corrector
  signal teu_fpunit_cc_to_stream_corrector_pipe_read_data: std_logic_vector(14 downto 0);
  signal teu_fpunit_cc_to_stream_corrector_pipe_read_req: std_logic_vector(0 downto 0);
  signal teu_fpunit_cc_to_stream_corrector_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe teu_idispatch_to_stream_corrector
  signal teu_idispatch_to_stream_corrector_pipe_read_data: std_logic_vector(204 downto 0);
  signal teu_idispatch_to_stream_corrector_pipe_read_req: std_logic_vector(0 downto 0);
  signal teu_idispatch_to_stream_corrector_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe teu_iunit_cc_to_stream_corrector
  signal teu_iunit_cc_to_stream_corrector_pipe_read_data: std_logic_vector(16 downto 0);
  signal teu_iunit_cc_to_stream_corrector_pipe_read_req: std_logic_vector(0 downto 0);
  signal teu_iunit_cc_to_stream_corrector_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe teu_iunit_rs1_to_stream_corrector
  signal teu_iunit_rs1_to_stream_corrector_pipe_read_data: std_logic_vector(31 downto 0);
  signal teu_iunit_rs1_to_stream_corrector_pipe_read_req: std_logic_vector(0 downto 0);
  signal teu_iunit_rs1_to_stream_corrector_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe teu_iunit_to_stream_corrector
  signal teu_iunit_to_stream_corrector_pipe_read_data: std_logic_vector(89 downto 0);
  signal teu_iunit_to_stream_corrector_pipe_read_req: std_logic_vector(0 downto 0);
  signal teu_iunit_to_stream_corrector_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe teu_ras_access_pipe
  signal teu_ras_access_pipe_pipe_write_data: std_logic_vector(32 downto 0);
  signal teu_ras_access_pipe_pipe_write_req: std_logic_vector(0 downto 0);
  signal teu_ras_access_pipe_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe teu_stream_corrector_annul_status
  signal teu_stream_corrector_annul_status_pipe_write_data: std_logic_vector(15 downto 0);
  signal teu_stream_corrector_annul_status_pipe_write_req: std_logic_vector(0 downto 0);
  signal teu_stream_corrector_annul_status_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe teu_stream_corrector_to_fpunit
  signal teu_stream_corrector_to_fpunit_pipe_write_data: std_logic_vector(17 downto 0);
  signal teu_stream_corrector_to_fpunit_pipe_write_req: std_logic_vector(0 downto 0);
  signal teu_stream_corrector_to_fpunit_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe teu_stream_corrector_to_iunit
  signal teu_stream_corrector_to_iunit_pipe_write_data: std_logic_vector(17 downto 0);
  signal teu_stream_corrector_to_iunit_pipe_write_req: std_logic_vector(0 downto 0);
  signal teu_stream_corrector_to_iunit_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe teu_stream_corrector_to_loadstore
  signal teu_stream_corrector_to_loadstore_pipe_write_data: std_logic_vector(18 downto 0);
  signal teu_stream_corrector_to_loadstore_pipe_write_req: std_logic_vector(0 downto 0);
  signal teu_stream_corrector_to_loadstore_pipe_write_ack: std_logic_vector(0 downto 0);
  -- gated clock signal declarations.
  -- 
begin -- 
  -- module debug_unit_ccu_daemon
  debug_unit_ccu_daemon_instance:debug_unit_ccu_daemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => debug_unit_ccu_daemon_start_req,
      start_ack => debug_unit_ccu_daemon_start_ack,
      fin_req => debug_unit_ccu_daemon_fin_req,
      fin_ack => debug_unit_ccu_daemon_fin_ack,
      clk => clk,
      reset => reset,
      debug_bp_0_pipe_write_req => debug_bp_0_pipe_write_req(0 downto 0),
      debug_bp_0_pipe_write_ack => debug_bp_0_pipe_write_ack(0 downto 0),
      debug_bp_0_pipe_write_data => debug_bp_0_pipe_write_data(31 downto 0),
      debug_bp_1_pipe_write_req => debug_bp_1_pipe_write_req(0 downto 0),
      debug_bp_1_pipe_write_ack => debug_bp_1_pipe_write_ack(0 downto 0),
      debug_bp_1_pipe_write_data => debug_bp_1_pipe_write_data(31 downto 0),
      debug_bp_2_pipe_write_req => debug_bp_2_pipe_write_req(0 downto 0),
      debug_bp_2_pipe_write_ack => debug_bp_2_pipe_write_ack(0 downto 0),
      debug_bp_2_pipe_write_data => debug_bp_2_pipe_write_data(31 downto 0),
      debug_bp_3_pipe_write_req => debug_bp_3_pipe_write_req(0 downto 0),
      debug_bp_3_pipe_write_ack => debug_bp_3_pipe_write_ack(0 downto 0),
      debug_bp_3_pipe_write_data => debug_bp_3_pipe_write_data(31 downto 0),
      debug_dbg_interrupt_pipe_write_req => debug_dbg_interrupt_pipe_write_req(0 downto 0),
      debug_dbg_interrupt_pipe_write_ack => debug_dbg_interrupt_pipe_write_ack(0 downto 0),
      debug_dbg_interrupt_pipe_write_data => debug_dbg_interrupt_pipe_write_data(0 downto 0),
      debug_wp_0_pipe_write_req => debug_wp_0_pipe_write_req(0 downto 0),
      debug_wp_0_pipe_write_ack => debug_wp_0_pipe_write_ack(0 downto 0),
      debug_wp_0_pipe_write_data => debug_wp_0_pipe_write_data(31 downto 0),
      debug_wp_1_pipe_write_req => debug_wp_1_pipe_write_req(0 downto 0),
      debug_wp_1_pipe_write_ack => debug_wp_1_pipe_write_ack(0 downto 0),
      debug_wp_1_pipe_write_data => debug_wp_1_pipe_write_data(31 downto 0),
      debug_wp_2_pipe_write_req => debug_wp_2_pipe_write_req(0 downto 0),
      debug_wp_2_pipe_write_ack => debug_wp_2_pipe_write_ack(0 downto 0),
      debug_wp_2_pipe_write_data => debug_wp_2_pipe_write_data(31 downto 0),
      debug_wp_3_pipe_write_req => debug_wp_3_pipe_write_req(0 downto 0),
      debug_wp_3_pipe_write_ack => debug_wp_3_pipe_write_ack(0 downto 0),
      debug_wp_3_pipe_write_data => debug_wp_3_pipe_write_data(31 downto 0),
      teu_debug_to_ccu_response_pipe_write_req => teu_debug_to_ccu_response_pipe_write_req(0 downto 0),
      teu_debug_to_ccu_response_pipe_write_ack => teu_debug_to_ccu_response_pipe_write_ack(0 downto 0),
      teu_debug_to_ccu_response_pipe_write_data => teu_debug_to_ccu_response_pipe_write_data(0 downto 0),
      get_debug_command_from_ccu_call_reqs => get_debug_command_from_ccu_call_reqs(0 downto 0),
      get_debug_command_from_ccu_call_acks => get_debug_command_from_ccu_call_acks(0 downto 0),
      get_debug_command_from_ccu_call_tag => get_debug_command_from_ccu_call_tag(0 downto 0),
      get_debug_command_from_ccu_return_reqs => get_debug_command_from_ccu_return_reqs(0 downto 0),
      get_debug_command_from_ccu_return_acks => get_debug_command_from_ccu_return_acks(0 downto 0),
      get_debug_command_from_ccu_return_data => get_debug_command_from_ccu_return_data(39 downto 0),
      get_debug_command_from_ccu_return_tag => get_debug_command_from_ccu_return_tag(0 downto 0),
      tag_in => debug_unit_ccu_daemon_tag_in,
      tag_out => debug_unit_ccu_daemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  debug_unit_ccu_daemon_tag_in <= (others => '0');
  debug_unit_ccu_daemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => debug_unit_ccu_daemon_start_req, start_ack => debug_unit_ccu_daemon_start_ack,  fin_req => debug_unit_ccu_daemon_fin_req,  fin_ack => debug_unit_ccu_daemon_fin_ack);
  -- module get_debug_command_from_ccu
  get_debug_command_from_ccu_out_args <= get_debug_command_from_ccu_debug_cmd & get_debug_command_from_ccu_debug_data ;
  -- call arbiter for module get_debug_command_from_ccu
  get_debug_command_from_ccu_arbiter: SplitCallArbiterNoInargs -- 
    generic map( --
      name => "SplitCallArbiterNoInargs", num_reqs => 1,
      return_data_width => 40,
      callee_tag_length => 1,
      caller_tag_length => 1--
    )
    port map(-- 
      call_reqs => get_debug_command_from_ccu_call_reqs,
      call_acks => get_debug_command_from_ccu_call_acks,
      return_reqs => get_debug_command_from_ccu_return_reqs,
      return_acks => get_debug_command_from_ccu_return_acks,
      call_tag  => get_debug_command_from_ccu_call_tag,
      return_tag  => get_debug_command_from_ccu_return_tag,
      call_mtag => get_debug_command_from_ccu_tag_in,
      return_mtag => get_debug_command_from_ccu_tag_out,
      return_data =>get_debug_command_from_ccu_return_data,
      call_mreq => get_debug_command_from_ccu_start_req,
      call_mack => get_debug_command_from_ccu_start_ack,
      return_mreq => get_debug_command_from_ccu_fin_req,
      return_mack => get_debug_command_from_ccu_fin_ack,
      return_mdata => get_debug_command_from_ccu_out_args,
      clk => clk, 
      reset => reset --
    ); --
  get_debug_command_from_ccu_instance:get_debug_command_from_ccu-- 
    generic map(tag_length => 2)
    port map(-- 
      debug_cmd => get_debug_command_from_ccu_debug_cmd,
      debug_data => get_debug_command_from_ccu_debug_data,
      start_req => get_debug_command_from_ccu_start_req,
      start_ack => get_debug_command_from_ccu_start_ack,
      fin_req => get_debug_command_from_ccu_fin_req,
      fin_ack => get_debug_command_from_ccu_fin_ack,
      clk => clk,
      reset => reset,
      ccu_to_teu_debug_command_pipe_read_req => ccu_to_teu_debug_command_pipe_read_req(0 downto 0),
      ccu_to_teu_debug_command_pipe_read_ack => ccu_to_teu_debug_command_pipe_read_ack(0 downto 0),
      ccu_to_teu_debug_command_pipe_read_data => ccu_to_teu_debug_command_pipe_read_data(7 downto 0),
      tag_in => get_debug_command_from_ccu_tag_in,
      tag_out => get_debug_command_from_ccu_tag_out-- 
    ); -- 
  -- module stream_corrector_daemon
  stream_corrector_daemon_instance:stream_corrector_daemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => stream_corrector_daemon_start_req,
      start_ack => stream_corrector_daemon_start_ack,
      fin_req => stream_corrector_daemon_fin_req,
      fin_ack => stream_corrector_daemon_fin_ack,
      clk => clk,
      reset => reset,
      noblock_stream_corrector_in_args_pipe_read_req => noblock_stream_corrector_in_args_pipe_read_req(0 downto 0),
      noblock_stream_corrector_in_args_pipe_read_ack => noblock_stream_corrector_in_args_pipe_read_ack(0 downto 0),
      noblock_stream_corrector_in_args_pipe_read_data => noblock_stream_corrector_in_args_pipe_read_data(359 downto 0),
      stream_corrector_ret_hit_log => stream_corrector_ret_hit_log,
      stream_corrector_ret_miss_log => stream_corrector_ret_miss_log,
      teu_ras_access_pipe_pipe_write_req => teu_ras_access_pipe_pipe_write_req(0 downto 0),
      teu_ras_access_pipe_pipe_write_ack => teu_ras_access_pipe_pipe_write_ack(0 downto 0),
      teu_ras_access_pipe_pipe_write_data => teu_ras_access_pipe_pipe_write_data(32 downto 0),
      teu_stream_corrector_annul_status_pipe_write_req => teu_stream_corrector_annul_status_pipe_write_req(0 downto 0),
      teu_stream_corrector_annul_status_pipe_write_ack => teu_stream_corrector_annul_status_pipe_write_ack(0 downto 0),
      teu_stream_corrector_annul_status_pipe_write_data => teu_stream_corrector_annul_status_pipe_write_data(15 downto 0),
      teu_stream_corrector_to_fpunit_pipe_write_req => teu_stream_corrector_to_fpunit_pipe_write_req(0 downto 0),
      teu_stream_corrector_to_fpunit_pipe_write_ack => teu_stream_corrector_to_fpunit_pipe_write_ack(0 downto 0),
      teu_stream_corrector_to_fpunit_pipe_write_data => teu_stream_corrector_to_fpunit_pipe_write_data(17 downto 0),
      noblock_teu_ifetch_branch_predictor_update_pipe_write_req => noblock_teu_ifetch_branch_predictor_update_pipe_write_req(0 downto 0),
      noblock_teu_ifetch_branch_predictor_update_pipe_write_ack => noblock_teu_ifetch_branch_predictor_update_pipe_write_ack(0 downto 0),
      noblock_teu_ifetch_branch_predictor_update_pipe_write_data => noblock_teu_ifetch_branch_predictor_update_pipe_write_data(62 downto 0),
      noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_req => noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_req(0 downto 0),
      noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_ack => noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_ack(0 downto 0),
      noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_data => noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_data(0 downto 0),
      noblock_teu_stream_corrector_to_idispatch_pipe_write_req => noblock_teu_stream_corrector_to_idispatch_pipe_write_req(0 downto 0),
      noblock_teu_stream_corrector_to_idispatch_pipe_write_ack => noblock_teu_stream_corrector_to_idispatch_pipe_write_ack(0 downto 0),
      noblock_teu_stream_corrector_to_idispatch_pipe_write_data => noblock_teu_stream_corrector_to_idispatch_pipe_write_data(147 downto 0),
      noblock_teu_stream_corrector_to_iretire_pipe_write_req => noblock_teu_stream_corrector_to_iretire_pipe_write_req(0 downto 0),
      noblock_teu_stream_corrector_to_iretire_pipe_write_ack => noblock_teu_stream_corrector_to_iretire_pipe_write_ack(0 downto 0),
      noblock_teu_stream_corrector_to_iretire_pipe_write_data => noblock_teu_stream_corrector_to_iretire_pipe_write_data(153 downto 0),
      noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_req => noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_req(0 downto 0),
      noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_ack => noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_ack(0 downto 0),
      noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_data => noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_data(0 downto 0),
      noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_req => noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_req(0 downto 0),
      noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_ack => noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_ack(0 downto 0),
      noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_data => noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_data(0 downto 0),
      stream_corrector_ret_hit_log_pipe_write_req => stream_corrector_ret_hit_log_pipe_write_req(0 downto 0),
      stream_corrector_ret_hit_log_pipe_write_ack => stream_corrector_ret_hit_log_pipe_write_ack(0 downto 0),
      stream_corrector_ret_hit_log_pipe_write_data => stream_corrector_ret_hit_log_pipe_write_data(31 downto 0),
      stream_corrector_ret_miss_log_pipe_write_req => stream_corrector_ret_miss_log_pipe_write_req(0 downto 0),
      stream_corrector_ret_miss_log_pipe_write_ack => stream_corrector_ret_miss_log_pipe_write_ack(0 downto 0),
      stream_corrector_ret_miss_log_pipe_write_data => stream_corrector_ret_miss_log_pipe_write_data(31 downto 0),
      teu_stream_corrector_to_iunit_pipe_write_req => teu_stream_corrector_to_iunit_pipe_write_req(0 downto 0),
      teu_stream_corrector_to_iunit_pipe_write_ack => teu_stream_corrector_to_iunit_pipe_write_ack(0 downto 0),
      teu_stream_corrector_to_iunit_pipe_write_data => teu_stream_corrector_to_iunit_pipe_write_data(17 downto 0),
      teu_stream_corrector_to_loadstore_pipe_write_req => teu_stream_corrector_to_loadstore_pipe_write_req(0 downto 0),
      teu_stream_corrector_to_loadstore_pipe_write_ack => teu_stream_corrector_to_loadstore_pipe_write_ack(0 downto 0),
      teu_stream_corrector_to_loadstore_pipe_write_data => teu_stream_corrector_to_loadstore_pipe_write_data(18 downto 0),
      tag_in => stream_corrector_daemon_tag_in,
      tag_out => stream_corrector_daemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  stream_corrector_daemon_tag_in <= (others => '0');
  stream_corrector_daemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => stream_corrector_daemon_start_req, start_ack => stream_corrector_daemon_start_ack,  fin_req => stream_corrector_daemon_fin_req,  fin_ack => stream_corrector_daemon_fin_ack);
  -- module stream_corrector_in_mux_daemon_v2
  stream_corrector_in_mux_daemon_v2_instance:stream_corrector_in_mux_daemon_v2-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => stream_corrector_in_mux_daemon_v2_start_req,
      start_ack => stream_corrector_in_mux_daemon_v2_start_ack,
      fin_req => stream_corrector_in_mux_daemon_v2_fin_req,
      fin_ack => stream_corrector_in_mux_daemon_v2_fin_ack,
      clk => clk,
      reset => reset,
      teu_iunit_rs1_to_stream_corrector_pipe_read_req => teu_iunit_rs1_to_stream_corrector_pipe_read_req(0 downto 0),
      teu_iunit_rs1_to_stream_corrector_pipe_read_ack => teu_iunit_rs1_to_stream_corrector_pipe_read_ack(0 downto 0),
      teu_iunit_rs1_to_stream_corrector_pipe_read_data => teu_iunit_rs1_to_stream_corrector_pipe_read_data(31 downto 0),
      teu_iunit_to_stream_corrector_pipe_read_req => teu_iunit_to_stream_corrector_pipe_read_req(0 downto 0),
      teu_iunit_to_stream_corrector_pipe_read_ack => teu_iunit_to_stream_corrector_pipe_read_ack(0 downto 0),
      teu_iunit_to_stream_corrector_pipe_read_data => teu_iunit_to_stream_corrector_pipe_read_data(89 downto 0),
      teu_fpunit_cc_to_stream_corrector_pipe_read_req => teu_fpunit_cc_to_stream_corrector_pipe_read_req(0 downto 0),
      teu_fpunit_cc_to_stream_corrector_pipe_read_ack => teu_fpunit_cc_to_stream_corrector_pipe_read_ack(0 downto 0),
      teu_fpunit_cc_to_stream_corrector_pipe_read_data => teu_fpunit_cc_to_stream_corrector_pipe_read_data(14 downto 0),
      teu_idispatch_to_stream_corrector_pipe_read_req => teu_idispatch_to_stream_corrector_pipe_read_req(0 downto 0),
      teu_idispatch_to_stream_corrector_pipe_read_ack => teu_idispatch_to_stream_corrector_pipe_read_ack(0 downto 0),
      teu_idispatch_to_stream_corrector_pipe_read_data => teu_idispatch_to_stream_corrector_pipe_read_data(204 downto 0),
      teu_iunit_cc_to_stream_corrector_pipe_read_req => teu_iunit_cc_to_stream_corrector_pipe_read_req(0 downto 0),
      teu_iunit_cc_to_stream_corrector_pipe_read_ack => teu_iunit_cc_to_stream_corrector_pipe_read_ack(0 downto 0),
      teu_iunit_cc_to_stream_corrector_pipe_read_data => teu_iunit_cc_to_stream_corrector_pipe_read_data(16 downto 0),
      noblock_stream_corrector_in_args_pipe_write_req => noblock_stream_corrector_in_args_pipe_write_req(0 downto 0),
      noblock_stream_corrector_in_args_pipe_write_ack => noblock_stream_corrector_in_args_pipe_write_ack(0 downto 0),
      noblock_stream_corrector_in_args_pipe_write_data => noblock_stream_corrector_in_args_pipe_write_data(359 downto 0),
      tag_in => stream_corrector_in_mux_daemon_v2_tag_in,
      tag_out => stream_corrector_in_mux_daemon_v2_tag_out-- 
    ); -- 
  -- module will be run forever 
  stream_corrector_in_mux_daemon_v2_tag_in <= (others => '0');
  stream_corrector_in_mux_daemon_v2_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => stream_corrector_in_mux_daemon_v2_start_req, start_ack => stream_corrector_in_mux_daemon_v2_start_ack,  fin_req => stream_corrector_in_mux_daemon_v2_fin_req,  fin_ack => stream_corrector_in_mux_daemon_v2_fin_ack);
  ccu_to_teu_debug_command_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe ccu_to_teu_debug_command",
      num_reads => 1,
      num_writes => 1,
      data_width => 8,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => ccu_to_teu_debug_command_pipe_read_req,
      read_ack => ccu_to_teu_debug_command_pipe_read_ack,
      read_data => ccu_to_teu_debug_command_pipe_read_data,
      write_req => ccu_to_teu_debug_command_pipe_write_req,
      write_ack => ccu_to_teu_debug_command_pipe_write_ack,
      write_data => ccu_to_teu_debug_command_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  debug_bp_0_Signal: SignalBase -- 
    generic map( -- 
      name => "pipe debug_bp_0",
      volatile_flag => false,
      num_writes => 1,
      data_width => 32 --
    ) 
    port map( -- 
      read_data => debug_bp_0,
      write_req => debug_bp_0_pipe_write_req,
      write_ack => debug_bp_0_pipe_write_ack,
      write_data => debug_bp_0_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  debug_bp_1_Signal: SignalBase -- 
    generic map( -- 
      name => "pipe debug_bp_1",
      volatile_flag => false,
      num_writes => 1,
      data_width => 32 --
    ) 
    port map( -- 
      read_data => debug_bp_1,
      write_req => debug_bp_1_pipe_write_req,
      write_ack => debug_bp_1_pipe_write_ack,
      write_data => debug_bp_1_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  debug_bp_2_Signal: SignalBase -- 
    generic map( -- 
      name => "pipe debug_bp_2",
      volatile_flag => false,
      num_writes => 1,
      data_width => 32 --
    ) 
    port map( -- 
      read_data => debug_bp_2,
      write_req => debug_bp_2_pipe_write_req,
      write_ack => debug_bp_2_pipe_write_ack,
      write_data => debug_bp_2_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  debug_bp_3_Signal: SignalBase -- 
    generic map( -- 
      name => "pipe debug_bp_3",
      volatile_flag => false,
      num_writes => 1,
      data_width => 32 --
    ) 
    port map( -- 
      read_data => debug_bp_3,
      write_req => debug_bp_3_pipe_write_req,
      write_ack => debug_bp_3_pipe_write_ack,
      write_data => debug_bp_3_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  debug_dbg_interrupt_Signal: SignalBase -- 
    generic map( -- 
      name => "pipe debug_dbg_interrupt",
      volatile_flag => false,
      num_writes => 1,
      data_width => 1 --
    ) 
    port map( -- 
      read_data => debug_dbg_interrupt,
      write_req => debug_dbg_interrupt_pipe_write_req,
      write_ack => debug_dbg_interrupt_pipe_write_ack,
      write_data => debug_dbg_interrupt_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  debug_wp_0_Signal: SignalBase -- 
    generic map( -- 
      name => "pipe debug_wp_0",
      volatile_flag => false,
      num_writes => 1,
      data_width => 32 --
    ) 
    port map( -- 
      read_data => debug_wp_0,
      write_req => debug_wp_0_pipe_write_req,
      write_ack => debug_wp_0_pipe_write_ack,
      write_data => debug_wp_0_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  debug_wp_1_Signal: SignalBase -- 
    generic map( -- 
      name => "pipe debug_wp_1",
      volatile_flag => false,
      num_writes => 1,
      data_width => 32 --
    ) 
    port map( -- 
      read_data => debug_wp_1,
      write_req => debug_wp_1_pipe_write_req,
      write_ack => debug_wp_1_pipe_write_ack,
      write_data => debug_wp_1_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  debug_wp_2_Signal: SignalBase -- 
    generic map( -- 
      name => "pipe debug_wp_2",
      volatile_flag => false,
      num_writes => 1,
      data_width => 32 --
    ) 
    port map( -- 
      read_data => debug_wp_2,
      write_req => debug_wp_2_pipe_write_req,
      write_ack => debug_wp_2_pipe_write_ack,
      write_data => debug_wp_2_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  debug_wp_3_Signal: SignalBase -- 
    generic map( -- 
      name => "pipe debug_wp_3",
      volatile_flag => false,
      num_writes => 1,
      data_width => 32 --
    ) 
    port map( -- 
      read_data => debug_wp_3,
      write_req => debug_wp_3_pipe_write_req,
      write_ack => debug_wp_3_pipe_write_ack,
      write_data => debug_wp_3_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  noblock_stream_corrector_in_args_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe noblock_stream_corrector_in_args",
      num_reads => 1,
      num_writes => 1,
      data_width => 360,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => noblock_stream_corrector_in_args_pipe_read_req,
      read_ack => noblock_stream_corrector_in_args_pipe_read_ack,
      read_data => noblock_stream_corrector_in_args_pipe_read_data,
      write_req => noblock_stream_corrector_in_args_pipe_write_req,
      write_ack => noblock_stream_corrector_in_args_pipe_write_ack,
      write_data => noblock_stream_corrector_in_args_pipe_write_data,
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
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe noblock_teu_stream_corrector_to_fpunit_regfile_credit_return",
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
      read_req => noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_req,
      read_ack => noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_ack,
      read_data => noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_read_data,
      write_req => noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_req,
      write_ack => noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_ack,
      write_data => noblock_teu_stream_corrector_to_fpunit_regfile_credit_return_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  noblock_teu_stream_corrector_to_idispatch_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe noblock_teu_stream_corrector_to_idispatch",
      num_reads => 1,
      num_writes => 1,
      data_width => 148,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => noblock_teu_stream_corrector_to_idispatch_pipe_read_req,
      read_ack => noblock_teu_stream_corrector_to_idispatch_pipe_read_ack,
      read_data => noblock_teu_stream_corrector_to_idispatch_pipe_read_data,
      write_req => noblock_teu_stream_corrector_to_idispatch_pipe_write_req,
      write_ack => noblock_teu_stream_corrector_to_idispatch_pipe_write_ack,
      write_data => noblock_teu_stream_corrector_to_idispatch_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  noblock_teu_stream_corrector_to_iretire_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe noblock_teu_stream_corrector_to_iretire",
      num_reads => 1,
      num_writes => 1,
      data_width => 154,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => noblock_teu_stream_corrector_to_iretire_pipe_read_req,
      read_ack => noblock_teu_stream_corrector_to_iretire_pipe_read_ack,
      read_data => noblock_teu_stream_corrector_to_iretire_pipe_read_data,
      write_req => noblock_teu_stream_corrector_to_iretire_pipe_write_req,
      write_ack => noblock_teu_stream_corrector_to_iretire_pipe_write_ack,
      write_data => noblock_teu_stream_corrector_to_iretire_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return",
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
      read_req => noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_req,
      read_ack => noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_ack,
      read_data => noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_data,
      write_req => noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_req,
      write_ack => noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_ack,
      write_data => noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return",
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
      read_req => noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_req,
      read_ack => noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_ack,
      read_data => noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_data,
      write_req => noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_req,
      write_ack => noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_ack,
      write_data => noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  stream_corrector_ret_hit_log_Signal: SignalBase -- 
    generic map( -- 
      name => "pipe stream_corrector_ret_hit_log",
      volatile_flag => false,
      num_writes => 1,
      data_width => 32 --
    ) 
    port map( -- 
      read_data => stream_corrector_ret_hit_log,
      write_req => stream_corrector_ret_hit_log_pipe_write_req,
      write_ack => stream_corrector_ret_hit_log_pipe_write_ack,
      write_data => stream_corrector_ret_hit_log_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  stream_corrector_ret_miss_log_Signal: SignalBase -- 
    generic map( -- 
      name => "pipe stream_corrector_ret_miss_log",
      volatile_flag => false,
      num_writes => 1,
      data_width => 32 --
    ) 
    port map( -- 
      read_data => stream_corrector_ret_miss_log,
      write_req => stream_corrector_ret_miss_log_pipe_write_req,
      write_ack => stream_corrector_ret_miss_log_pipe_write_ack,
      write_data => stream_corrector_ret_miss_log_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  teu_debug_to_ccu_response_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe teu_debug_to_ccu_response",
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
      read_req => teu_debug_to_ccu_response_pipe_read_req,
      read_ack => teu_debug_to_ccu_response_pipe_read_ack,
      read_data => teu_debug_to_ccu_response_pipe_read_data,
      write_req => teu_debug_to_ccu_response_pipe_write_req,
      write_ack => teu_debug_to_ccu_response_pipe_write_ack,
      write_data => teu_debug_to_ccu_response_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  teu_fpunit_cc_to_stream_corrector_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe teu_fpunit_cc_to_stream_corrector",
      num_reads => 1,
      num_writes => 1,
      data_width => 15,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_fpunit_cc_to_stream_corrector_pipe_read_req,
      read_ack => teu_fpunit_cc_to_stream_corrector_pipe_read_ack,
      read_data => teu_fpunit_cc_to_stream_corrector_pipe_read_data,
      write_req => teu_fpunit_cc_to_stream_corrector_pipe_write_req,
      write_ack => teu_fpunit_cc_to_stream_corrector_pipe_write_ack,
      write_data => teu_fpunit_cc_to_stream_corrector_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  teu_idispatch_to_stream_corrector_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe teu_idispatch_to_stream_corrector",
      num_reads => 1,
      num_writes => 1,
      data_width => 205,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_idispatch_to_stream_corrector_pipe_read_req,
      read_ack => teu_idispatch_to_stream_corrector_pipe_read_ack,
      read_data => teu_idispatch_to_stream_corrector_pipe_read_data,
      write_req => teu_idispatch_to_stream_corrector_pipe_write_req,
      write_ack => teu_idispatch_to_stream_corrector_pipe_write_ack,
      write_data => teu_idispatch_to_stream_corrector_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  teu_iunit_cc_to_stream_corrector_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe teu_iunit_cc_to_stream_corrector",
      num_reads => 1,
      num_writes => 1,
      data_width => 17,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_iunit_cc_to_stream_corrector_pipe_read_req,
      read_ack => teu_iunit_cc_to_stream_corrector_pipe_read_ack,
      read_data => teu_iunit_cc_to_stream_corrector_pipe_read_data,
      write_req => teu_iunit_cc_to_stream_corrector_pipe_write_req,
      write_ack => teu_iunit_cc_to_stream_corrector_pipe_write_ack,
      write_data => teu_iunit_cc_to_stream_corrector_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  teu_iunit_rs1_to_stream_corrector_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe teu_iunit_rs1_to_stream_corrector",
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
      read_req => teu_iunit_rs1_to_stream_corrector_pipe_read_req,
      read_ack => teu_iunit_rs1_to_stream_corrector_pipe_read_ack,
      read_data => teu_iunit_rs1_to_stream_corrector_pipe_read_data,
      write_req => teu_iunit_rs1_to_stream_corrector_pipe_write_req,
      write_ack => teu_iunit_rs1_to_stream_corrector_pipe_write_ack,
      write_data => teu_iunit_rs1_to_stream_corrector_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  teu_iunit_to_stream_corrector_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe teu_iunit_to_stream_corrector",
      num_reads => 1,
      num_writes => 1,
      data_width => 90,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_iunit_to_stream_corrector_pipe_read_req,
      read_ack => teu_iunit_to_stream_corrector_pipe_read_ack,
      read_data => teu_iunit_to_stream_corrector_pipe_read_data,
      write_req => teu_iunit_to_stream_corrector_pipe_write_req,
      write_ack => teu_iunit_to_stream_corrector_pipe_write_ack,
      write_data => teu_iunit_to_stream_corrector_pipe_write_data,
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
  teu_stream_corrector_annul_status_Signal: SignalBase -- 
    generic map( -- 
      name => "pipe teu_stream_corrector_annul_status",
      volatile_flag => false,
      num_writes => 1,
      data_width => 16 --
    ) 
    port map( -- 
      read_data => teu_stream_corrector_annul_status,
      write_req => teu_stream_corrector_annul_status_pipe_write_req,
      write_ack => teu_stream_corrector_annul_status_pipe_write_ack,
      write_data => teu_stream_corrector_annul_status_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  teu_stream_corrector_to_fpunit_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe teu_stream_corrector_to_fpunit",
      num_reads => 1,
      num_writes => 1,
      data_width => 18,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_stream_corrector_to_fpunit_pipe_read_req,
      read_ack => teu_stream_corrector_to_fpunit_pipe_read_ack,
      read_data => teu_stream_corrector_to_fpunit_pipe_read_data,
      write_req => teu_stream_corrector_to_fpunit_pipe_write_req,
      write_ack => teu_stream_corrector_to_fpunit_pipe_write_ack,
      write_data => teu_stream_corrector_to_fpunit_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  teu_stream_corrector_to_iunit_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe teu_stream_corrector_to_iunit",
      num_reads => 1,
      num_writes => 1,
      data_width => 18,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => true,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_stream_corrector_to_iunit_pipe_read_req,
      read_ack => teu_stream_corrector_to_iunit_pipe_read_ack,
      read_data => teu_stream_corrector_to_iunit_pipe_read_data,
      write_req => teu_stream_corrector_to_iunit_pipe_write_req,
      write_ack => teu_stream_corrector_to_iunit_pipe_write_ack,
      write_data => teu_stream_corrector_to_iunit_pipe_write_data,
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
  -- gated clock generators 
  -- 
end stream_corrector_arch;
